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
  baseUrl = "https://containeranalysis.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Container Analysis",
  description = "An implementation of the Grafeas API, which stores, and enables querying and retrieval of critical metadata about all of your software artifacts.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/container-analysis/api/reference/rest/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "containeranalysis:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://containeranalysis.mtls.googleapis.com/",
  name = "containeranalysis",
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
        notes = {
          methods = {
            batchCreate = {
              description = "Creates new notes in batch.",
              flatPath = "v1/projects/{projectsId}/notes:batchCreate",
              httpMethod = "POST",
              id = "containeranalysis.projects.notes.batchCreate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the notes are to be created.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notes:batchCreate",
              request = {
                ["$ref"] = "BatchCreateNotesRequest",
              },
              response = {
                ["$ref"] = "BatchCreateNotesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a new note.",
              flatPath = "v1/projects/{projectsId}/notes",
              httpMethod = "POST",
              id = "containeranalysis.projects.notes.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                noteId = {
                  description = "Required. The ID to use for this note.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the note is to be created.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notes",
              request = {
                ["$ref"] = "Note",
              },
              response = {
                ["$ref"] = "Note",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the specified note.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}",
              httpMethod = "DELETE",
              id = "containeranalysis.projects.notes.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
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
              description = "Gets the specified note.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}",
              httpMethod = "GET",
              id = "containeranalysis.projects.notes.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Note",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}:getIamPolicy",
              httpMethod = "POST",
              id = "containeranalysis.projects.notes.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              request = {
                ["$ref"] = "GetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists notes for the specified project.",
              flatPath = "v1/projects/{projectsId}/notes",
              httpMethod = "GET",
              id = "containeranalysis.projects.notes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "The filter expression.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of notes to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page size defaults to 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to provide to skip to a particular spot in the list.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project to list notes for in the form of `projects/[PROJECT_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/notes",
              response = {
                ["$ref"] = "ListNotesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the specified note.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}",
              httpMethod = "PATCH",
              id = "containeranalysis.projects.notes.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The fields to update.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Note",
              },
              response = {
                ["$ref"] = "Note",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}:setIamPolicy",
              httpMethod = "POST",
              id = "containeranalysis.projects.notes.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/notes/{notesId}:testIamPermissions",
              httpMethod = "POST",
              id = "containeranalysis.projects.notes.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/notes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            occurrences = {
              methods = {
                list = {
                  description = "Lists occurrences referencing the specified note. Provider projects can use this method to get all occurrences across consumer projects referencing the specified note.",
                  flatPath = "v1/projects/{projectsId}/notes/{notesId}/occurrences",
                  httpMethod = "GET",
                  id = "containeranalysis.projects.notes.occurrences.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The filter expression.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The name of the note to list occurrences for in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.",
                      location = "path",
                      pattern = "^projects/[^/]+/notes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "Number of occurrences to return in the list.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token to provide to skip to a particular spot in the list.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/occurrences",
                  response = {
                    ["$ref"] = "ListNoteOccurrencesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        occurrences = {
          methods = {
            batchCreate = {
              description = "Creates new occurrences in batch.",
              flatPath = "v1/projects/{projectsId}/occurrences:batchCreate",
              httpMethod = "POST",
              id = "containeranalysis.projects.occurrences.batchCreate",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrences are to be created.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/occurrences:batchCreate",
              request = {
                ["$ref"] = "BatchCreateOccurrencesRequest",
              },
              response = {
                ["$ref"] = "BatchCreateOccurrencesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a new occurrence.",
              flatPath = "v1/projects/{projectsId}/occurrences",
              httpMethod = "POST",
              id = "containeranalysis.projects.occurrences.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in the form of `projects/[PROJECT_ID]`, under which the occurrence is to be created.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/occurrences",
              request = {
                ["$ref"] = "Occurrence",
              },
              response = {
                ["$ref"] = "Occurrence",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the specified occurrence. For example, use this method to delete an occurrence when the occurrence is no longer applicable for the given resource.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}",
              httpMethod = "DELETE",
              id = "containeranalysis.projects.occurrences.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
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
              description = "Gets the specified occurrence.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}",
              httpMethod = "GET",
              id = "containeranalysis.projects.occurrences.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Occurrence",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}:getIamPolicy",
              httpMethod = "POST",
              id = "containeranalysis.projects.occurrences.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              request = {
                ["$ref"] = "GetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getNotes = {
              description = "Gets the note attached to the specified occurrence. Consumer projects can use this method to get a note that belongs to a provider project.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}/notes",
              httpMethod = "GET",
              id = "containeranalysis.projects.occurrences.getNotes",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}/notes",
              response = {
                ["$ref"] = "Note",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getVulnerabilitySummary = {
              description = "Gets a summary of the number and severity of occurrences.",
              flatPath = "v1/projects/{projectsId}/occurrences:vulnerabilitySummary",
              httpMethod = "GET",
              id = "containeranalysis.projects.occurrences.getVulnerabilitySummary",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "The filter expression.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project to get a vulnerability summary for in the form of `projects/[PROJECT_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/occurrences:vulnerabilitySummary",
              response = {
                ["$ref"] = "VulnerabilityOccurrencesSummary",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists occurrences for the specified project.",
              flatPath = "v1/projects/{projectsId}/occurrences",
              httpMethod = "GET",
              id = "containeranalysis.projects.occurrences.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "The filter expression.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of occurrences to return in the list. Must be positive. Max allowed page size is 1000. If not specified, page size defaults to 20.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to provide to skip to a particular spot in the list.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project to list occurrences for in the form of `projects/[PROJECT_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/occurrences",
              response = {
                ["$ref"] = "ListOccurrencesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the specified occurrence.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}",
              httpMethod = "PATCH",
              id = "containeranalysis.projects.occurrences.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The fields to update.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Occurrence",
              },
              response = {
                ["$ref"] = "Occurrence",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified note or occurrence. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or an occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}:setIamPolicy",
              httpMethod = "POST",
              id = "containeranalysis.projects.occurrences.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns the permissions that a caller has on the specified note or occurrence. Requires list permission on the project (for example, `containeranalysis.notes.list`). The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.",
              flatPath = "v1/projects/{projectsId}/occurrences/{occurrencesId}:testIamPermissions",
              httpMethod = "POST",
              id = "containeranalysis.projects.occurrences.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/occurrences/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "TestIamPermissionsResponse",
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
  revision = "20230106",
  rootUrl = "https://containeranalysis.googleapis.com/",
  schemas = {
    AliasContext = {
      description = "An alias to a repo revision.",
      id = "AliasContext",
      properties = {
        kind = {
          description = "The alias kind.",
          enum = {
            "KIND_UNSPECIFIED",
            "FIXED",
            "MOVABLE",
            "OTHER",
          },
          enumDescriptions = {
            "Unknown.",
            "Git tag.",
            "Git branch.",
            "Used to specify non-standard aliases. For example, if a Git repo has a ref named \"refs/foo/bar\".",
          },
          type = "string",
        },
        name = {
          description = "The alias name.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalysisCompleted = {
      description = "Indicates which analysis completed successfully. Multiple types of analysis can be performed on a single resource.",
      id = "AnalysisCompleted",
      properties = {
        analysisType = {
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Artifact = {
      description = "Artifact describes a build product.",
      id = "Artifact",
      properties = {
        checksum = {
          description = "Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.",
          type = "string",
        },
        id = {
          description = "Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.",
          type = "string",
        },
        names = {
          description = "Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AttestationNote = {
      description = "Note kind that represents a logical attestation \"role\" or \"authority\". For example, an organization might have one `Authority` for \"QA\" and one for \"build\". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don't all live in the same project.",
      id = "AttestationNote",
      properties = {
        hint = {
          ["$ref"] = "Hint",
          description = "Hint hints at the purpose of the attestation authority.",
        },
      },
      type = "object",
    },
    AttestationOccurrence = {
      description = "Occurrence that represents a single \"attestation\". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.",
      id = "AttestationOccurrence",
      properties = {
        jwts = {
          description = "One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.",
          items = {
            ["$ref"] = "Jwt",
          },
          type = "array",
        },
        serializedPayload = {
          description = "Required. The serialized payload that is verified by one or more `signatures`.",
          format = "byte",
          type = "string",
        },
        signatures = {
          description = "One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.",
          items = {
            ["$ref"] = "Signature",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateNotesRequest = {
      description = "Request to create notes in batch.",
      id = "BatchCreateNotesRequest",
      properties = {
        notes = {
          additionalProperties = {
            ["$ref"] = "Note",
          },
          description = "Required. The notes to create. Max allowed length is 1000.",
          type = "object",
        },
      },
      type = "object",
    },
    BatchCreateNotesResponse = {
      description = "Response for creating notes in batch.",
      id = "BatchCreateNotesResponse",
      properties = {
        notes = {
          description = "The notes that were created.",
          items = {
            ["$ref"] = "Note",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateOccurrencesRequest = {
      description = "Request to create occurrences in batch.",
      id = "BatchCreateOccurrencesRequest",
      properties = {
        occurrences = {
          description = "Required. The occurrences to create. Max allowed length is 1000.",
          items = {
            ["$ref"] = "Occurrence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateOccurrencesResponse = {
      description = "Response for creating occurrences in batch.",
      id = "BatchCreateOccurrencesResponse",
      properties = {
        occurrences = {
          description = "The occurrences that were created.",
          items = {
            ["$ref"] = "Occurrence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildNote = {
      description = "Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.",
      id = "BuildNote",
      properties = {
        builderVersion = {
          description = "Required. Immutable. Version of the builder which produced this build.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildOccurrence = {
      description = "Details of a build occurrence.",
      id = "BuildOccurrence",
      properties = {
        intotoProvenance = {
          ["$ref"] = "InTotoProvenance",
          description = "Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.",
        },
        intotoStatement = {
          ["$ref"] = "InTotoStatement",
          description = "In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.",
        },
        provenance = {
          ["$ref"] = "BuildProvenance",
          description = "The actual provenance for the build.",
        },
        provenanceBytes = {
          description = "Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildProvenance = {
      description = "Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.",
      id = "BuildProvenance",
      properties = {
        buildOptions = {
          additionalProperties = {
            type = "string",
          },
          description = "Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.",
          type = "object",
        },
        builderVersion = {
          description = "Version string of the builder at the time this build was executed.",
          type = "string",
        },
        builtArtifacts = {
          description = "Output of the build.",
          items = {
            ["$ref"] = "Artifact",
          },
          type = "array",
        },
        commands = {
          description = "Commands requested by the build.",
          items = {
            ["$ref"] = "Command",
          },
          type = "array",
        },
        createTime = {
          description = "Time at which the build was created.",
          format = "google-datetime",
          type = "string",
        },
        creator = {
          description = "E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.",
          type = "string",
        },
        endTime = {
          description = "Time at which execution of the build was finished.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Required. Unique identifier of the build.",
          type = "string",
        },
        logsUri = {
          description = "URI where any logs for this provenance were written.",
          type = "string",
        },
        projectId = {
          description = "ID of the project.",
          type = "string",
        },
        sourceProvenance = {
          ["$ref"] = "Source",
          description = "Details of the Source input to the build.",
        },
        startTime = {
          description = "Time at which execution of the build was started.",
          format = "google-datetime",
          type = "string",
        },
        triggerId = {
          description = "Trigger identifier if the build was triggered automatically; empty if not.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildStep = {
      description = "A step in the build pipeline. Next ID: 20",
      id = "BuildStep",
      properties = {
        allowExitCodes = {
          description = "Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        allowFailure = {
          description = "Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.",
          type = "boolean",
        },
        args = {
          description = "A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dir = {
          description = "Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution.",
          type = "string",
        },
        entrypoint = {
          description = "Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used.",
          type = "string",
        },
        env = {
          description = "A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        exitCode = {
          description = "Output only. Return code from running the step.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "Unique identifier for this build step, used in `wait_for` to reference this build step as a dependency.",
          type = "string",
        },
        name = {
          description = "Required. The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step.",
          type = "string",
        },
        pullTiming = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pulling this build step's builder image only.",
        },
        script = {
          description = "A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.",
          type = "string",
        },
        secretEnv = {
          description = "A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.",
          enum = {
            "STATUS_UNKNOWN",
            "PENDING",
            "QUEUING",
            "QUEUED",
            "WORKING",
            "SUCCESS",
            "FAILURE",
            "INTERNAL_ERROR",
            "TIMEOUT",
            "CANCELLED",
            "EXPIRED",
          },
          enumDescriptions = {
            "Status of the build is unknown.",
            "Build has been created and is pending execution and queuing. It has not been queued.",
            "Build has been received and is being queued.",
            "Build or step is queued; work has not yet begun.",
            "Build or step is being executed.",
            "Build or step finished successfully.",
            "Build or step failed to complete successfully.",
            "Build or step failed due to an internal cause.",
            "Build or step took longer than was allowed.",
            "Build or step was canceled by a user.",
            "Build was enqueued for longer than the value of `queue_ttl`.",
          },
          type = "string",
        },
        timeout = {
          description = "Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.",
          format = "google-duration",
          type = "string",
        },
        timing = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for executing this build step.",
        },
        volumes = {
          description = "List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        waitFor = {
          description = "The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BuilderConfig = {
      id = "BuilderConfig",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    CVSS = {
      description = "Common Vulnerability Scoring System. For details, see https://www.first.org/cvss/specification-document This is a message we will try to use for storing various versions of CVSS rather than making a separate proto for storing a specific version.",
      id = "CVSS",
      properties = {
        attackComplexity = {
          enum = {
            "ATTACK_COMPLEXITY_UNSPECIFIED",
            "ATTACK_COMPLEXITY_LOW",
            "ATTACK_COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        attackVector = {
          description = "Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "ATTACK_VECTOR_NETWORK",
            "ATTACK_VECTOR_ADJACENT",
            "ATTACK_VECTOR_LOCAL",
            "ATTACK_VECTOR_PHYSICAL",
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
        authentication = {
          enum = {
            "AUTHENTICATION_UNSPECIFIED",
            "AUTHENTICATION_MULTIPLE",
            "AUTHENTICATION_SINGLE",
            "AUTHENTICATION_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        availabilityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        baseScore = {
          description = "The base score is a function of the base metric scores.",
          format = "float",
          type = "number",
        },
        confidentialityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        exploitabilityScore = {
          format = "float",
          type = "number",
        },
        impactScore = {
          format = "float",
          type = "number",
        },
        integrityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        privilegesRequired = {
          enum = {
            "PRIVILEGES_REQUIRED_UNSPECIFIED",
            "PRIVILEGES_REQUIRED_NONE",
            "PRIVILEGES_REQUIRED_LOW",
            "PRIVILEGES_REQUIRED_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        scope = {
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_UNCHANGED",
            "SCOPE_CHANGED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        userInteraction = {
          enum = {
            "USER_INTERACTION_UNSPECIFIED",
            "USER_INTERACTION_NONE",
            "USER_INTERACTION_REQUIRED",
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
    CVSSv3 = {
      description = "Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document",
      id = "CVSSv3",
      properties = {
        attackComplexity = {
          enum = {
            "ATTACK_COMPLEXITY_UNSPECIFIED",
            "ATTACK_COMPLEXITY_LOW",
            "ATTACK_COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        attackVector = {
          description = "Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "ATTACK_VECTOR_NETWORK",
            "ATTACK_VECTOR_ADJACENT",
            "ATTACK_VECTOR_LOCAL",
            "ATTACK_VECTOR_PHYSICAL",
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
        availabilityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        baseScore = {
          description = "The base score is a function of the base metric scores.",
          format = "float",
          type = "number",
        },
        confidentialityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        exploitabilityScore = {
          format = "float",
          type = "number",
        },
        impactScore = {
          format = "float",
          type = "number",
        },
        integrityImpact = {
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        privilegesRequired = {
          enum = {
            "PRIVILEGES_REQUIRED_UNSPECIFIED",
            "PRIVILEGES_REQUIRED_NONE",
            "PRIVILEGES_REQUIRED_LOW",
            "PRIVILEGES_REQUIRED_HIGH",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        scope = {
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_UNCHANGED",
            "SCOPE_CHANGED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        userInteraction = {
          enum = {
            "USER_INTERACTION_UNSPECIFIED",
            "USER_INTERACTION_NONE",
            "USER_INTERACTION_REQUIRED",
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
    Category = {
      description = "The category to which the update belongs.",
      id = "Category",
      properties = {
        categoryId = {
          description = "The identifier of the category.",
          type = "string",
        },
        name = {
          description = "The localized name of the category.",
          type = "string",
        },
      },
      type = "object",
    },
    CisBenchmark = {
      description = "A compliance check that is a CIS benchmark.",
      id = "CisBenchmark",
      properties = {
        profileLevel = {
          format = "int32",
          type = "integer",
        },
        severity = {
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CloudRepoSourceContext = {
      description = "A CloudRepoSourceContext denotes a particular revision in a Google Cloud Source Repo.",
      id = "CloudRepoSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        repoId = {
          ["$ref"] = "RepoId",
          description = "The ID of the repo.",
        },
        revisionId = {
          description = "A revision ID.",
          type = "string",
        },
      },
      type = "object",
    },
    Command = {
      description = "Command describes a step performed as part of the build pipeline.",
      id = "Command",
      properties = {
        args = {
          description = "Command-line arguments used when executing this command.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dir = {
          description = "Working directory (relative to project source root) used when running this command.",
          type = "string",
        },
        env = {
          description = "Environment variables set before running this command.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "Optional unique identifier for this command, used in wait_for to reference this command as a dependency.",
          type = "string",
        },
        name = {
          description = "Required. Name of the command, as presented on the command line, or if the command is packaged as a Docker container, as presented to `docker pull`.",
          type = "string",
        },
        waitFor = {
          description = "The ID(s) of the command(s) that this command depends on.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Completeness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "Completeness",
      properties = {
        arguments = {
          description = "If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.",
          type = "boolean",
        },
        environment = {
          description = "If true, the builder claims that recipe.environment is claimed to be complete.",
          type = "boolean",
        },
        materials = {
          description = "If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".",
          type = "boolean",
        },
      },
      type = "object",
    },
    ComplianceNote = {
      id = "ComplianceNote",
      properties = {
        cisBenchmark = {
          ["$ref"] = "CisBenchmark",
        },
        description = {
          description = "A description about this compliance check.",
          type = "string",
        },
        rationale = {
          description = "A rationale for the existence of this compliance check.",
          type = "string",
        },
        remediation = {
          description = "A description of remediation steps if the compliance check fails.",
          type = "string",
        },
        scanInstructions = {
          description = "Serialized scan instructions with a predefined format.",
          format = "byte",
          type = "string",
        },
        title = {
          description = "The title that identifies this compliance check.",
          type = "string",
        },
        version = {
          description = "The OS and config versions the benchmark applies to.",
          items = {
            ["$ref"] = "ComplianceVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ComplianceOccurrence = {
      description = "An indication that the compliance checks in the associated ComplianceNote were not satisfied for particular resources or a specified reason.",
      id = "ComplianceOccurrence",
      properties = {
        nonComplianceReason = {
          type = "string",
        },
        nonCompliantFiles = {
          items = {
            ["$ref"] = "NonCompliantFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ComplianceVersion = {
      description = "Describes the CIS benchmark version that is applicable to a given OS and os version.",
      id = "ComplianceVersion",
      properties = {
        benchmarkDocument = {
          description = "The name of the document that defines this benchmark, e.g. \"CIS Container-Optimized OS\".",
          type = "string",
        },
        cpeUri = {
          description = "The CPE URI (https://cpe.mitre.org/specification/) this benchmark is applicable to.",
          type = "string",
        },
        version = {
          description = "The version of the benchmark. This is set to the version of the OS-specific CIS document the benchmark is defined in.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig = {
      description = "ApprovalConfig describes configuration for manual approval of a build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig",
      properties = {
        approvalRequired = {
          description = "Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult = {
      description = "ApprovalResult describes the decision and associated metadata of a manual approval of a build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult",
      properties = {
        approvalTime = {
          description = "Output only. The time when the approval decision was made.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        approverAccount = {
          description = "Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.",
          readOnly = true,
          type = "string",
        },
        comment = {
          description = "Optional. An optional comment for this manual approval result.",
          type = "string",
        },
        decision = {
          description = "Required. The decision of this manual approval.",
          enum = {
            "DECISION_UNSPECIFIED",
            "APPROVED",
            "REJECTED",
          },
          enumDescriptions = {
            "Default enum type. This should not be used.",
            "Build is approved.",
            "Build is rejected.",
          },
          type = "string",
        },
        url = {
          description = "Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts = {
      description = "Artifacts produced by a build that should be uploaded upon successful completion of all build steps.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts",
      properties = {
        images = {
          description = "A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mavenArtifacts = {
          description = "A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact",
          },
          type = "array",
        },
        objects = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects",
          description = "A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.",
        },
        pythonPackages = {
          description = "A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects = {
      description = "Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects",
      properties = {
        location = {
          description = "Cloud Storage bucket and optional object path, in the form \"gs://bucket/path/to/somewhere/\". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.",
          type = "string",
        },
        paths = {
          description = "Path globs used to match files in the build's workspace.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timing = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for pushing all artifact objects.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact = {
      description = "A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact",
      properties = {
        artifactId = {
          description = "Maven `artifactId` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
        groupId = {
          description = "Maven `groupId` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
        path = {
          description = "Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.",
          type = "string",
        },
        repository = {
          description = "Artifact Registry repository, in the form \"https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY\" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.",
          type = "string",
        },
        version = {
          description = "Maven `version` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage = {
      description = "Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage",
      properties = {
        paths = {
          description = "Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist/*`, and sometimes additionally an `.asc` file.",
          items = {
            type = "string",
          },
          type = "array",
        },
        repository = {
          description = "Artifact Registry repository, in the form \"https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY\" Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Build = {
      description = "A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Build",
      properties = {
        approval = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval",
          description = "Output only. Describes this build's approval configuration, status, and result.",
          readOnly = true,
        },
        artifacts = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts",
          description = "Artifacts produced by the build that should be uploaded upon successful completion of all build steps.",
        },
        availableSecrets = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets",
          description = "Secrets and secret environment variables.",
        },
        buildTriggerId = {
          description = "Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automatically.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. Time at which the request to create the build was received.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        failureInfo = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo",
          description = "Output only. Contains information about the build when status=FAILURE.",
          readOnly = true,
        },
        finishTime = {
          description = "Output only. Time at which execution of the build was finished. The difference between finish_time and start_time is the duration of the build's execution.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. Unique identifier of the build.",
          readOnly = true,
          type = "string",
        },
        images = {
          description = "A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logUrl = {
          description = "Output only. URL to logs for this build in Google Cloud Console.",
          readOnly = true,
          type = "string",
        },
        logsBucket = {
          description = "Google Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.",
          type = "string",
        },
        name = {
          description = "Output only. The 'Build' name with format: `projects/{project}/locations/{location}/builds/{build}`, where {build} is a unique identifier generated by the service.",
          readOnly = true,
          type = "string",
        },
        options = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions",
          description = "Special options for this build.",
        },
        projectId = {
          description = "Output only. ID of the project.",
          readOnly = true,
          type = "string",
        },
        queueTtl = {
          description = "TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.",
          format = "google-duration",
          type = "string",
        },
        results = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Results",
          description = "Output only. Results of the build.",
          readOnly = true,
        },
        secrets = {
          description = "Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Secret",
          },
          type = "array",
        },
        serviceAccount = {
          description = "IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account. ",
          type = "string",
        },
        source = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Source",
          description = "The location of the source files to build.",
        },
        sourceProvenance = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance",
          description = "Output only. A permanent fixed identifier for source.",
          readOnly = true,
        },
        startTime = {
          description = "Output only. Time at which execution of the build was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. Status of the build.",
          enum = {
            "STATUS_UNKNOWN",
            "PENDING",
            "QUEUED",
            "WORKING",
            "SUCCESS",
            "FAILURE",
            "INTERNAL_ERROR",
            "TIMEOUT",
            "CANCELLED",
            "EXPIRED",
          },
          enumDescriptions = {
            "Status of the build is unknown.",
            "Build has been created and is pending execution and queuing. It has not been queued.",
            "Build or step is queued; work has not yet begun.",
            "Build or step is being executed.",
            "Build or step finished successfully.",
            "Build or step failed to complete successfully.",
            "Build or step failed due to an internal cause.",
            "Build or step took longer than was allowed.",
            "Build or step was canceled by a user.",
            "Build was enqueued for longer than the value of `queue_ttl`.",
          },
          readOnly = true,
          type = "string",
        },
        statusDetail = {
          description = "Output only. Customer-readable message about the current status.",
          readOnly = true,
          type = "string",
        },
        steps = {
          description = "Required. The operations to be performed on the workspace.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep",
          },
          type = "array",
        },
        substitutions = {
          additionalProperties = {
            type = "string",
          },
          description = "Substitutions data for `Build` resource.",
          type = "object",
        },
        tags = {
          description = "Tags for annotation of a `Build`. These are not docker tags.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timeout = {
          description = "Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is ten minutes.",
          format = "google-duration",
          type = "string",
        },
        timing = {
          additionalProperties = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          },
          description = "Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.",
          readOnly = true,
          type = "object",
        },
        warnings = {
          description = "Output only. Non-fatal problems encountered during the execution of the build.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval = {
      description = "BuildApproval describes a build's approval configuration, state, and result.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval",
      properties = {
        config = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig",
          description = "Output only. Configuration for manual approval of this build.",
          readOnly = true,
        },
        result = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult",
          description = "Output only. Result of manual approval for this Build.",
          readOnly = true,
        },
        state = {
          description = "Output only. The state of this build's approval.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "APPROVED",
            "REJECTED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Default enum type. This should not be used.",
            "Build approval is pending.",
            "Build approval has been approved.",
            "Build approval has been rejected.",
            "Build was cancelled while it was still pending approval.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo = {
      description = "A fatal problem encountered during the execution of the build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo",
      properties = {
        detail = {
          description = "Explains the failure issue in more detail using hard-coded text.",
          type = "string",
        },
        type = {
          description = "The name of the failure.",
          enum = {
            "FAILURE_TYPE_UNSPECIFIED",
            "PUSH_FAILED",
            "PUSH_IMAGE_NOT_FOUND",
            "PUSH_NOT_AUTHORIZED",
            "LOGGING_FAILURE",
            "USER_BUILD_STEP",
            "FETCH_SOURCE_FAILED",
          },
          enumDescriptions = {
            "Type unspecified",
            "Unable to push the image to the repository.",
            "Final image not found.",
            "Unauthorized push of the final image.",
            "Backend logging failures. Should retry.",
            "A build step has failed.",
            "The source fetching has failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions = {
      description = "Optional arguments to enable specific features of builds.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions",
      properties = {
        diskSizeGb = {
          description = "Requested disk size for the VM that runs the build. Note that this is *NOT* \"disk free\"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.",
          format = "int64",
          type = "string",
        },
        dynamicSubstitutions = {
          description = "Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.",
          type = "boolean",
        },
        env = {
          description = "A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        logStreamingOption = {
          description = "Option to define build log streaming behavior to Google Cloud Storage.",
          enum = {
            "STREAM_DEFAULT",
            "STREAM_ON",
            "STREAM_OFF",
          },
          enumDescriptions = {
            "Service may automatically determine build log streaming behavior.",
            "Build logs should be streamed to Google Cloud Storage.",
            "Build logs should not be streamed to Google Cloud Storage; they will be written when the build is completed.",
          },
          type = "string",
        },
        logging = {
          description = "Option to specify the logging mode, which determines if and where build logs are stored.",
          enum = {
            "LOGGING_UNSPECIFIED",
            "LEGACY",
            "GCS_ONLY",
            "STACKDRIVER_ONLY",
            "CLOUD_LOGGING_ONLY",
            "NONE",
          },
          enumDescriptions = {
            "The service determines the logging mode. The default is `LEGACY`. Do not rely on the default logging behavior as it may change in the future.",
            "Build logs are stored in Cloud Logging and Cloud Storage.",
            "Build logs are stored in Cloud Storage.",
            "This option is the same as CLOUD_LOGGING_ONLY.",
            "Build logs are stored in Cloud Logging. Selecting this option will not allow [logs streaming](https://cloud.google.com/sdk/gcloud/reference/builds/log).",
            "Turn off all logging. No build logs will be captured.",
          },
          type = "string",
        },
        machineType = {
          description = "Compute Engine machine type on which to run the build.",
          enum = {
            "UNSPECIFIED",
            "N1_HIGHCPU_8",
            "N1_HIGHCPU_32",
            "E2_HIGHCPU_8",
            "E2_HIGHCPU_32",
          },
          enumDescriptions = {
            "Standard machine type.",
            "Highcpu machine with 8 CPUs.",
            "Highcpu machine with 32 CPUs.",
            "Highcpu e2 machine with 8 CPUs.",
            "Highcpu e2 machine with 32 CPUs.",
          },
          type = "string",
        },
        pool = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption",
          description = "Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.",
        },
        requestedVerifyOption = {
          description = "Requested verifiability options.",
          enum = {
            "NOT_VERIFIED",
            "VERIFIED",
          },
          enumDescriptions = {
            "Not a verifiable build (the default).",
            "Build must be verified.",
          },
          type = "string",
        },
        secretEnv = {
          description = "A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sourceProvenanceHash = {
          description = "Requested hash for SourceProvenance.",
          items = {
            enum = {
              "NONE",
              "SHA256",
              "MD5",
            },
            enumDescriptions = {
              "No hash requested.",
              "Use a sha256 hash.",
              "Use a md5 hash.",
            },
            type = "string",
          },
          type = "array",
        },
        substitutionOption = {
          description = "Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.",
          enum = {
            "MUST_MATCH",
            "ALLOW_LOOSE",
          },
          enumDescriptions = {
            "Fails the build if error in substitutions checks, like missing a substitution in the template or in the map.",
            "Do not fail the build if error in substitutions checks.",
          },
          type = "string",
        },
        volumes = {
          description = "Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Volume",
          },
          type = "array",
        },
        workerPool = {
          description = "This field deprecated; please use `pool.name` instead.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption = {
      description = "Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption",
      properties = {
        name = {
          description = "The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/{project}/locations/{location}/workerPools/{workerPoolId}",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep = {
      description = "A step in the build pipeline.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep",
      properties = {
        allowExitCodes = {
          description = "Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        allowFailure = {
          description = "Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.",
          type = "boolean",
        },
        args = {
          description = "A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dir = {
          description = "Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution.",
          type = "string",
        },
        entrypoint = {
          description = "Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used.",
          type = "string",
        },
        env = {
          description = "A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        exitCode = {
          description = "Output only. Return code from running the step.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        id = {
          description = "Unique identifier for this build step, used in `wait_for` to reference this build step as a dependency.",
          type = "string",
        },
        name = {
          description = "Required. The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step.",
          type = "string",
        },
        pullTiming = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for pulling this build step's builder image only.",
          readOnly = true,
        },
        script = {
          description = "A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.",
          type = "string",
        },
        secretEnv = {
          description = "A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.",
          enum = {
            "STATUS_UNKNOWN",
            "PENDING",
            "QUEUED",
            "WORKING",
            "SUCCESS",
            "FAILURE",
            "INTERNAL_ERROR",
            "TIMEOUT",
            "CANCELLED",
            "EXPIRED",
          },
          enumDescriptions = {
            "Status of the build is unknown.",
            "Build has been created and is pending execution and queuing. It has not been queued.",
            "Build or step is queued; work has not yet begun.",
            "Build or step is being executed.",
            "Build or step finished successfully.",
            "Build or step failed to complete successfully.",
            "Build or step failed due to an internal cause.",
            "Build or step took longer than was allowed.",
            "Build or step was canceled by a user.",
            "Build was enqueued for longer than the value of `queue_ttl`.",
          },
          readOnly = true,
          type = "string",
        },
        timeout = {
          description = "Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.",
          format = "google-duration",
          type = "string",
        },
        timing = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for executing this build step.",
          readOnly = true,
        },
        volumes = {
          description = "List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Volume",
          },
          type = "array",
        },
        waitFor = {
          description = "The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning = {
      description = "A non-fatal problem encountered during the execution of the build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning",
      properties = {
        priority = {
          description = "The priority for this warning.",
          enum = {
            "PRIORITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ALERT",
          },
          enumDescriptions = {
            "Should not be used.",
            "e.g. deprecation warnings and alternative feature highlights.",
            "e.g. automated detection of possible issues with the build.",
            "e.g. alerts that a feature used in the build is pending removal",
          },
          type = "string",
        },
        text = {
          description = "Explanation of the warning generated.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage = {
      description = "An image built by the pipeline.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage",
      properties = {
        digest = {
          description = "Docker Registry 2.0 digest.",
          type = "string",
        },
        name = {
          description = "Name used to push the container image to Google Container Registry, as presented to `docker push`.",
          type = "string",
        },
        pushTiming = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for pushing the specified image.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes = {
      description = "Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes",
      properties = {
        fileHash = {
          description = "Collection of file hashes.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1Hash",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Hash = {
      description = "Container message for hash values.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Hash",
      properties = {
        type = {
          description = "The type of hash that was performed.",
          enum = {
            "NONE",
            "SHA256",
            "MD5",
          },
          enumDescriptions = {
            "No hash requested.",
            "Use a sha256 hash.",
            "Use a md5 hash.",
          },
          type = "string",
        },
        value = {
          description = "The hash value.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret = {
      description = "Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret",
      properties = {
        envMap = {
          additionalProperties = {
            format = "byte",
            type = "string",
          },
          description = "Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.",
          type = "object",
        },
        kmsKeyName = {
          description = "Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource = {
      description = "Location of the source in a Google Cloud Source Repository.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource",
      properties = {
        branchName = {
          description = "Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
        commitSha = {
          description = "Explicit commit SHA to build.",
          type = "string",
        },
        dir = {
          description = "Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.",
          type = "string",
        },
        invertRegex = {
          description = "Only trigger a build if the revision regex does NOT match the revision regex.",
          type = "boolean",
        },
        projectId = {
          description = "ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.",
          type = "string",
        },
        repoName = {
          description = "Name of the Cloud Source Repository.",
          type = "string",
        },
        substitutions = {
          additionalProperties = {
            type = "string",
          },
          description = "Substitutions to use in a triggered build. Should only be used with RunBuildTrigger",
          type = "object",
        },
        tagName = {
          description = "Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Results = {
      description = "Artifacts created by the build pipeline.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Results",
      properties = {
        artifactManifest = {
          description = "Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.",
          type = "string",
        },
        artifactTiming = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Time to push all non-container artifacts to Cloud Storage.",
        },
        buildStepImages = {
          description = "List of build step digests, in the order corresponding to build step indices.",
          items = {
            type = "string",
          },
          type = "array",
        },
        buildStepOutputs = {
          description = "List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 4KB of data is stored.",
          items = {
            format = "byte",
            type = "string",
          },
          type = "array",
        },
        images = {
          description = "Container images that were built as a part of the build.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage",
          },
          type = "array",
        },
        mavenArtifacts = {
          description = "Maven artifacts uploaded to Artifact Registry at the end of the build.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact",
          },
          type = "array",
        },
        numArtifacts = {
          description = "Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.",
          format = "int64",
          type = "string",
        },
        pythonPackages = {
          description = "Python artifacts uploaded to Artifact Registry at the end of the build.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secret = {
      description = "Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Secret",
      properties = {
        kmsKeyName = {
          description = "Cloud KMS key name to use to decrypt these envs.",
          type = "string",
        },
        secretEnv = {
          additionalProperties = {
            format = "byte",
            type = "string",
          },
          description = "Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.",
          type = "object",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret = {
      description = "Pairs a secret environment variable with a SecretVersion in Secret Manager.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret",
      properties = {
        env = {
          description = "Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.",
          type = "string",
        },
        versionName = {
          description = "Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets = {
      description = "Secrets and secret environment variables.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets",
      properties = {
        inline = {
          description = "Secrets encrypted with KMS key and the associated secret environment variable.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret",
          },
          type = "array",
        },
        secretManager = {
          description = "Secrets in Secret Manager and associated secret environment variable.",
          items = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Source = {
      description = "Location of the source in a supported storage service.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Source",
      properties = {
        repoSource = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource",
          description = "If provided, get the source from this location in a Cloud Source Repository.",
        },
        storageSource = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource",
          description = "If provided, get the source from this location in Google Cloud Storage.",
        },
        storageSourceManifest = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest",
          description = "If provided, get the source from this manifest in Google Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance = {
      description = "Provenance of the source. Ways to find the original source, or verify that some source was used for this build.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance",
      properties = {
        fileHashes = {
          additionalProperties = {
            ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes",
          },
          description = "Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file.",
          readOnly = true,
          type = "object",
        },
        resolvedRepoSource = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource",
          description = "A copy of the build's `source.repo_source`, if exists, with any revisions resolved.",
        },
        resolvedStorageSource = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource",
          description = "A copy of the build's `source.storage_source`, if exists, with any generations resolved.",
        },
        resolvedStorageSourceManifest = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest",
          description = "A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview.",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource = {
      description = "Location of the source in an archive file in Google Cloud Storage.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource",
      properties = {
        bucket = {
          description = "Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).",
          type = "string",
        },
        generation = {
          description = "Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Google Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest = {
      description = "Location of the source manifest in Google Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest",
      properties = {
        bucket = {
          description = "Google Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).",
          type = "string",
        },
        generation = {
          description = "Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Google Cloud Storage object containing the source manifest. This object must be a JSON file.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan = {
      description = "Start and end times for a build execution phase.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
      properties = {
        endTime = {
          description = "End of time span.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start of time span.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact = {
      description = "A Maven artifact uploaded using the MavenArtifact directive.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact",
      properties = {
        fileHashes = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes",
          description = "Hash types and values of the Maven Artifact.",
        },
        pushTiming = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for pushing the specified artifact.",
          readOnly = true,
        },
        uri = {
          description = "URI of the uploaded artifact.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage = {
      description = "Artifact uploaded using the PythonPackage directive.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage",
      properties = {
        fileHashes = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes",
          description = "Hash types and values of the Python Artifact.",
        },
        pushTiming = {
          ["$ref"] = "ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan",
          description = "Output only. Stores timing information for pushing the specified artifact.",
          readOnly = true,
        },
        uri = {
          description = "URI of the uploaded artifact.",
          type = "string",
        },
      },
      type = "object",
    },
    ContaineranalysisGoogleDevtoolsCloudbuildV1Volume = {
      description = "Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.",
      id = "ContaineranalysisGoogleDevtoolsCloudbuildV1Volume",
      properties = {
        name = {
          description = "Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.",
          type = "string",
        },
        path = {
          description = "Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.",
          type = "string",
        },
      },
      type = "object",
    },
    DSSEAttestationNote = {
      id = "DSSEAttestationNote",
      properties = {
        hint = {
          ["$ref"] = "DSSEHint",
          description = "DSSEHint hints at the purpose of the attestation authority.",
        },
      },
      type = "object",
    },
    DSSEAttestationOccurrence = {
      description = "Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.",
      id = "DSSEAttestationOccurrence",
      properties = {
        envelope = {
          ["$ref"] = "Envelope",
          description = "If doing something security critical, make sure to verify the signatures in this metadata.",
        },
        statement = {
          ["$ref"] = "InTotoStatement",
        },
      },
      type = "object",
    },
    DSSEHint = {
      description = "This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from \"readable\" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.",
      id = "DSSEHint",
      properties = {
        humanReadableName = {
          description = "Required. The human readable name of this attestation authority, for example \"cloudbuild-prod\".",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentNote = {
      description = "An artifact that can be deployed in some runtime.",
      id = "DeploymentNote",
      properties = {
        resourceUri = {
          description = "Required. Resource URI for the artifact being deployed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeploymentOccurrence = {
      description = "The period during which some deployable was active in a runtime.",
      id = "DeploymentOccurrence",
      properties = {
        address = {
          description = "Address of the runtime element hosting this deployment.",
          type = "string",
        },
        config = {
          description = "Configuration used to create this deployment.",
          type = "string",
        },
        deployTime = {
          description = "Required. Beginning of the lifetime of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        platform = {
          description = "Platform hosting this deployment.",
          enum = {
            "PLATFORM_UNSPECIFIED",
            "GKE",
            "FLEX",
            "CUSTOM",
          },
          enumDescriptions = {
            "Unknown.",
            "Google Container Engine.",
            "Google App Engine: Flexible Environment.",
            "Custom user-defined platform.",
          },
          type = "string",
        },
        resourceUri = {
          description = "Output only. Resource URI for the artifact being deployed taken from the deployable field with the same name.",
          items = {
            type = "string",
          },
          type = "array",
        },
        undeployTime = {
          description = "End of the lifetime of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        userEmail = {
          description = "Identity of the user that triggered this deployment.",
          type = "string",
        },
      },
      type = "object",
    },
    Detail = {
      description = "A detail for a distro and package affected by this vulnerability and its associated fix (if one is available).",
      id = "Detail",
      properties = {
        affectedCpeUri = {
          description = "Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.",
          type = "string",
        },
        affectedPackage = {
          description = "Required. The package this vulnerability affects.",
          type = "string",
        },
        affectedVersionEnd = {
          ["$ref"] = "Version",
          description = "The version number at the end of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.",
        },
        affectedVersionStart = {
          ["$ref"] = "Version",
          description = "The version number at the start of an interval in which this vulnerability exists. A vulnerability can affect a package between version numbers that are disjoint sets of intervals (example: [1.0.0-1.1.0], [2.4.6-2.4.8] and [4.5.6-4.6.8]) each of which will be represented in its own Detail. If a specific affected version is provided by a vulnerability database, affected_version_start and affected_version_end will be the same in that Detail.",
        },
        description = {
          description = "A vendor-specific description of this vulnerability.",
          type = "string",
        },
        fixedCpeUri = {
          description = "The distro recommended [CPE URI](https://cpe.mitre.org/specification/) to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_cpe_uri.",
          type = "string",
        },
        fixedPackage = {
          description = "The distro recommended package to update to that contains a fix for this vulnerability. It is possible for this to be different from the affected_package.",
          type = "string",
        },
        fixedVersion = {
          ["$ref"] = "Version",
          description = "The distro recommended version to update to that contains a fix for this vulnerability. Setting this to VersionKind.MAXIMUM means no such version is yet available.",
        },
        isObsolete = {
          description = "Whether this detail is obsolete. Occurrences are expected not to point to obsolete details.",
          type = "boolean",
        },
        packageType = {
          description = "The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          type = "string",
        },
        severityName = {
          description = "The distro assigned severity of this vulnerability.",
          type = "string",
        },
        source = {
          description = "The source from which the information in this Detail was obtained.",
          type = "string",
        },
        sourceUpdateTime = {
          description = "The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.",
          format = "google-datetime",
          type = "string",
        },
        vendor = {
          description = "The name of the vendor of the product.",
          type = "string",
        },
      },
      type = "object",
    },
    Digest = {
      description = "Digest information.",
      id = "Digest",
      properties = {
        algo = {
          description = "`SHA1`, `SHA512` etc.",
          type = "string",
        },
        digestBytes = {
          description = "Value of the digest.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    DiscoveryNote = {
      description = "A note that indicates a type of analysis a provider would perform. This note exists in a provider's project. A `Discovery` occurrence is created in a consumer's project at the start of analysis.",
      id = "DiscoveryNote",
      properties = {
        analysisKind = {
          description = "Required. Immutable. The kind of analysis that is handled by this discovery.",
          enum = {
            "NOTE_KIND_UNSPECIFIED",
            "VULNERABILITY",
            "BUILD",
            "IMAGE",
            "PACKAGE",
            "DEPLOYMENT",
            "DISCOVERY",
            "ATTESTATION",
            "UPGRADE",
            "COMPLIANCE",
            "DSSE_ATTESTATION",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The note and occurrence represent a package vulnerability.",
            "The note and occurrence assert build provenance.",
            "This represents an image basis relationship.",
            "This represents a package installed via a package manager.",
            "The note and occurrence track deployment events.",
            "The note and occurrence track the initial discovery status of a resource.",
            "This represents a logical \"role\" that can attest to artifacts.",
            "This represents an available package upgrade.",
            "This represents a Compliance Note",
            "This represents a DSSE attestation Note",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DiscoveryOccurrence = {
      description = "Provides information about the analysis status of a discovered resource.",
      id = "DiscoveryOccurrence",
      properties = {
        analysisCompleted = {
          ["$ref"] = "AnalysisCompleted",
        },
        analysisError = {
          description = "Indicates any errors encountered during analysis of a resource. There could be 0 or more of these errors.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        analysisStatus = {
          description = "The status of discovery for the resource.",
          enum = {
            "ANALYSIS_STATUS_UNSPECIFIED",
            "PENDING",
            "SCANNING",
            "FINISHED_SUCCESS",
            "COMPLETE",
            "FINISHED_FAILED",
            "FINISHED_UNSUPPORTED",
          },
          enumDescriptions = {
            "Unknown.",
            "Resource is known but no action has been taken yet.",
            "Resource is being analyzed.",
            "Analysis has finished successfully.",
            "Analysis has completed.",
            "Analysis has finished unsuccessfully, the analysis itself is in a bad state.",
            "The resource is known not to be supported.",
          },
          type = "string",
        },
        analysisStatusError = {
          ["$ref"] = "Status",
          description = "When an error is encountered this will contain a LocalizedMessage under details to show to the user. The LocalizedMessage is output only and populated by the API.",
        },
        archiveTime = {
          description = "Output only. The time occurrences related to this discovery occurrence were archived.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        continuousAnalysis = {
          description = "Whether the resource is continuously analyzed.",
          enum = {
            "CONTINUOUS_ANALYSIS_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unknown.",
            "The resource is continuously analyzed.",
            "The resource is ignored for continuous analysis.",
          },
          type = "string",
        },
        cpe = {
          description = "The CPE of the resource being scanned.",
          type = "string",
        },
        lastScanTime = {
          description = "The last time this resource was scanned.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Distribution = {
      description = "This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.",
      id = "Distribution",
      properties = {
        architecture = {
          description = "The CPU architecture for which packages in this distribution channel were built.",
          enum = {
            "ARCHITECTURE_UNSPECIFIED",
            "X86",
            "X64",
          },
          enumDescriptions = {
            "Unknown architecture.",
            "X86 architecture.",
            "X64 architecture.",
          },
          type = "string",
        },
        cpeUri = {
          description = "Required. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.",
          type = "string",
        },
        description = {
          description = "The distribution channel-specific description of this package.",
          type = "string",
        },
        latestVersion = {
          ["$ref"] = "Version",
          description = "The latest available version of this package in this distribution channel.",
        },
        maintainer = {
          description = "A freeform string denoting the maintainer of this package.",
          type = "string",
        },
        url = {
          description = "The distribution channel-specific homepage for this package.",
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
    Envelope = {
      description = "MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.",
      id = "Envelope",
      properties = {
        payload = {
          format = "byte",
          type = "string",
        },
        payloadType = {
          type = "string",
        },
        signatures = {
          items = {
            ["$ref"] = "EnvelopeSignature",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnvelopeSignature = {
      id = "EnvelopeSignature",
      properties = {
        keyid = {
          type = "string",
        },
        sig = {
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    FileHashes = {
      description = "Container message for hashes of byte content of files, used in source messages to verify integrity of source input to the build.",
      id = "FileHashes",
      properties = {
        fileHash = {
          description = "Required. Collection of file hashes.",
          items = {
            ["$ref"] = "Hash",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Fingerprint = {
      description = "A set of properties that uniquely identify a given Docker image.",
      id = "Fingerprint",
      properties = {
        v1Name = {
          description = "Required. The layer ID of the final layer in the Docker image's v1 representation.",
          type = "string",
        },
        v2Blob = {
          description = "Required. The ordered list of v2 blobs that represent a given image.",
          items = {
            type = "string",
          },
          type = "array",
        },
        v2Name = {
          description = "Output only. The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v2_blob[N] + \" \" + v2_name[N+1]) Only the name of the final blob is kept.",
          type = "string",
        },
      },
      type = "object",
    },
    FixableTotalByDigest = {
      description = "Per resource and severity counts of fixable and total vulnerabilities.",
      id = "FixableTotalByDigest",
      properties = {
        fixableCount = {
          description = "The number of fixable vulnerabilities associated with this resource.",
          format = "int64",
          type = "string",
        },
        resourceUri = {
          description = "The affected resource.",
          type = "string",
        },
        severity = {
          description = "The severity for this count. SEVERITY_UNSPECIFIED indicates total across all severities.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        totalCount = {
          description = "The total number of vulnerabilities associated with this resource.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GerritSourceContext = {
      description = "A SourceContext referring to a Gerrit project.",
      id = "GerritSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        gerritProject = {
          description = "The full project name within the host. Projects may be nested, so \"project/subproject\" is a valid project name. The \"repo name\" is the hostURI/project.",
          type = "string",
        },
        hostUri = {
          description = "The URI of a running Gerrit instance.",
          type = "string",
        },
        revisionId = {
          description = "A revision (commit) ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GitSourceContext = {
      description = "A GitSourceContext denotes a particular revision in a third party Git repository (e.g., GitHub).",
      id = "GitSourceContext",
      properties = {
        revisionId = {
          description = "Git commit hash.",
          type = "string",
        },
        url = {
          description = "Git repository URL.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata = {
      description = "Metadata for all operations used and required for all operations that created by Container Analysis Providers",
      id = "GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata",
      properties = {
        createTime = {
          description = "Output only. The time this operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "Output only. The time that this operation was marked completed or failed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1FileLocation = {
      description = "Indicates the location at which a package was found.",
      id = "GrafeasV1FileLocation",
      properties = {
        filePath = {
          description = "For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.",
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = {
      description = "Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness",
      properties = {
        environment = {
          type = "boolean",
        },
        materials = {
          type = "boolean",
        },
        parameters = {
          type = "boolean",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource = {
      description = "Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        entryPoint = {
          type = "string",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation = {
      description = "Identifies the event that kicked off the build.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation",
      properties = {
        configSource = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource",
        },
        environment = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = {
      description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata = {
      description = "Other properties of the build.",
      id = "GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata",
      properties = {
        buildFinishedOn = {
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          type = "string",
        },
        buildStartedOn = {
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness",
        },
        reproducible = {
          type = "boolean",
        },
      },
      type = "object",
    },
    Hash = {
      description = "Container message for hash values.",
      id = "Hash",
      properties = {
        type = {
          description = "Required. The type of hash that was performed, e.g. \"SHA-256\".",
          type = "string",
        },
        value = {
          description = "Required. The hash value.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Hint = {
      description = "This submessage provides human-readable hints about the purpose of the authority. Because the name of a note acts as its resource reference, it is important to disambiguate the canonical name of the Note (which might be a UUID for security purposes) from \"readable\" names more suitable for debug output. Note that these hints should not be used to look up authorities in security sensitive contexts, such as when looking up attestations to verify.",
      id = "Hint",
      properties = {
        humanReadableName = {
          description = "Required. The human readable name of this attestation authority, for example \"qa\".",
          type = "string",
        },
      },
      type = "object",
    },
    Identity = {
      description = "The unique identifier of the update.",
      id = "Identity",
      properties = {
        revision = {
          description = "The revision number of the update.",
          format = "int32",
          type = "integer",
        },
        updateId = {
          description = "The revision independent identifier of the update.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageNote = {
      description = "Basis describes the base image portion (Note) of the DockerImage relationship. Linked occurrences are derived from this or an equivalent image via: FROM Or an equivalent reference, e.g., a tag of the resource_url.",
      id = "ImageNote",
      properties = {
        fingerprint = {
          ["$ref"] = "Fingerprint",
          description = "Required. Immutable. The fingerprint of the base image.",
        },
        resourceUrl = {
          description = "Required. Immutable. The resource_url for the resource representing the basis of associated occurrence images.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageOccurrence = {
      description = "Details of the derived image portion of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .",
      id = "ImageOccurrence",
      properties = {
        baseResourceUrl = {
          description = "Output only. This contains the base image URL for the derived image occurrence.",
          type = "string",
        },
        distance = {
          description = "Output only. The number of layers by which this image differs from the associated image basis.",
          format = "int32",
          type = "integer",
        },
        fingerprint = {
          ["$ref"] = "Fingerprint",
          description = "Required. The fingerprint of the derived image.",
        },
        layerInfo = {
          description = "This contains layer-specific metadata, if populated it has length \"distance\" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.",
          items = {
            ["$ref"] = "Layer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InTotoProvenance = {
      id = "InTotoProvenance",
      properties = {
        builderConfig = {
          ["$ref"] = "BuilderConfig",
          description = "required",
        },
        materials = {
          description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "Metadata",
        },
        recipe = {
          ["$ref"] = "Recipe",
          description = "Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required",
        },
      },
      type = "object",
    },
    InTotoStatement = {
      description = "Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always \"application/vnd.in-toto+json\".",
      id = "InTotoStatement",
      properties = {
        _type = {
          description = "Always `https://in-toto.io/Statement/v0.1`.",
          type = "string",
        },
        predicateType = {
          description = "`https://slsa.dev/provenance/v0.1` for SlsaProvenance.",
          type = "string",
        },
        provenance = {
          ["$ref"] = "InTotoProvenance",
        },
        slsaProvenance = {
          ["$ref"] = "SlsaProvenance",
        },
        slsaProvenanceZeroTwo = {
          ["$ref"] = "SlsaProvenanceZeroTwo",
        },
        subject = {
          items = {
            ["$ref"] = "Subject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Jwt = {
      id = "Jwt",
      properties = {
        compactJwt = {
          description = "The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1",
          type = "string",
        },
      },
      type = "object",
    },
    KnowledgeBase = {
      id = "KnowledgeBase",
      properties = {
        name = {
          description = "The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).",
          type = "string",
        },
        url = {
          description = "A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).",
          type = "string",
        },
      },
      type = "object",
    },
    Layer = {
      description = "Layer holds metadata specific to a layer of a Docker image.",
      id = "Layer",
      properties = {
        arguments = {
          description = "The recovered arguments to the Dockerfile directive.",
          type = "string",
        },
        directive = {
          description = "Required. The recovered Dockerfile directive used to construct this layer. See https://docs.docker.com/engine/reference/builder/ for more information.",
          type = "string",
        },
      },
      type = "object",
    },
    License = {
      description = "License information.",
      id = "License",
      properties = {
        comments = {
          description = "Comments",
          type = "string",
        },
        expression = {
          description = "Often a single license can be used to represent the licensing terms. Sometimes it is necessary to include a choice of one or more licenses or some combination of license identifiers. Examples: \"LGPL-2.1-only OR MIT\", \"LGPL-2.1-only AND MIT\", \"GPL-2.0-or-later WITH Bison-exception-2.2\".",
          type = "string",
        },
      },
      type = "object",
    },
    ListNoteOccurrencesResponse = {
      description = "Response for listing occurrences for a note.",
      id = "ListNoteOccurrencesResponse",
      properties = {
        nextPageToken = {
          description = "Token to provide to skip to a particular spot in the list.",
          type = "string",
        },
        occurrences = {
          description = "The occurrences attached to the specified note.",
          items = {
            ["$ref"] = "Occurrence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListNotesResponse = {
      description = "Response for listing notes.",
      id = "ListNotesResponse",
      properties = {
        nextPageToken = {
          description = "The next pagination token in the list response. It should be used as `page_token` for the following request. An empty value means no more results.",
          type = "string",
        },
        notes = {
          description = "The notes requested.",
          items = {
            ["$ref"] = "Note",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOccurrencesResponse = {
      description = "Response for listing occurrences.",
      id = "ListOccurrencesResponse",
      properties = {
        nextPageToken = {
          description = "The next pagination token in the list response. It should be used as `page_token` for the following request. An empty value means no more results.",
          type = "string",
        },
        occurrences = {
          description = "The occurrences requested.",
          items = {
            ["$ref"] = "Occurrence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "An occurrence of a particular package installation found within a system's filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.",
      id = "Location",
      properties = {
        cpeUri = {
          description = "Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)",
          type = "string",
        },
        path = {
          description = "The path from which we gathered that this package/version is installed.",
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "Deprecated. The version installed at this location.",
        },
      },
      type = "object",
    },
    Material = {
      id = "Material",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    Metadata = {
      description = "Other properties of the build.",
      id = "Metadata",
      properties = {
        buildFinishedOn = {
          description = "The timestamp of when the build completed.",
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          description = "Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.",
          type = "string",
        },
        buildStartedOn = {
          description = "The timestamp of when the build started.",
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "Completeness",
          description = "Indicates that the builder claims certain fields in this message to be complete.",
        },
        reproducible = {
          description = "If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.",
          type = "boolean",
        },
      },
      type = "object",
    },
    NonCompliantFile = {
      description = "Details about files that caused a compliance check to fail. display_command is a single command that can be used to display a list of non compliant files. When there is no such command, we can also iterate a list of non compliant file using 'path'.",
      id = "NonCompliantFile",
      properties = {
        displayCommand = {
          description = "Command to display the non-compliant files.",
          type = "string",
        },
        path = {
          description = "Empty if `display_command` is set.",
          type = "string",
        },
        reason = {
          description = "Explains why a file is non compliant for a CIS check.",
          type = "string",
        },
      },
      type = "object",
    },
    Note = {
      description = "A type of analysis that can be done for a resource.",
      id = "Note",
      properties = {
        attestation = {
          ["$ref"] = "AttestationNote",
          description = "A note describing an attestation role.",
        },
        build = {
          ["$ref"] = "BuildNote",
          description = "A note describing build provenance for a verifiable build.",
        },
        compliance = {
          ["$ref"] = "ComplianceNote",
          description = "A note describing a compliance check.",
        },
        createTime = {
          description = "Output only. The time this note was created. This field can be used as a filter in list requests.",
          format = "google-datetime",
          type = "string",
        },
        deployment = {
          ["$ref"] = "DeploymentNote",
          description = "A note describing something that can be deployed.",
        },
        discovery = {
          ["$ref"] = "DiscoveryNote",
          description = "A note describing the initial analysis of a resource.",
        },
        dsseAttestation = {
          ["$ref"] = "DSSEAttestationNote",
          description = "A note describing a dsse attestation note.",
        },
        expirationTime = {
          description = "Time of expiration for this note. Empty if note does not expire.",
          format = "google-datetime",
          type = "string",
        },
        image = {
          ["$ref"] = "ImageNote",
          description = "A note describing a base image.",
        },
        kind = {
          description = "Output only. The type of analysis. This field can be used as a filter in list requests.",
          enum = {
            "NOTE_KIND_UNSPECIFIED",
            "VULNERABILITY",
            "BUILD",
            "IMAGE",
            "PACKAGE",
            "DEPLOYMENT",
            "DISCOVERY",
            "ATTESTATION",
            "UPGRADE",
            "COMPLIANCE",
            "DSSE_ATTESTATION",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The note and occurrence represent a package vulnerability.",
            "The note and occurrence assert build provenance.",
            "This represents an image basis relationship.",
            "This represents a package installed via a package manager.",
            "The note and occurrence track deployment events.",
            "The note and occurrence track the initial discovery status of a resource.",
            "This represents a logical \"role\" that can attest to artifacts.",
            "This represents an available package upgrade.",
            "This represents a Compliance Note",
            "This represents a DSSE attestation Note",
          },
          type = "string",
        },
        longDescription = {
          description = "A detailed description of this note.",
          type = "string",
        },
        name = {
          description = "Output only. The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.",
          type = "string",
        },
        package = {
          ["$ref"] = "PackageNote",
          description = "A note describing a package hosted by various package managers.",
        },
        relatedNoteNames = {
          description = "Other notes related to this note.",
          items = {
            type = "string",
          },
          type = "array",
        },
        relatedUrl = {
          description = "URLs associated with this note.",
          items = {
            ["$ref"] = "RelatedUrl",
          },
          type = "array",
        },
        shortDescription = {
          description = "A one sentence description of this note.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time this note was last updated. This field can be used as a filter in list requests.",
          format = "google-datetime",
          type = "string",
        },
        upgrade = {
          ["$ref"] = "UpgradeNote",
          description = "A note describing available package upgrades.",
        },
        vulnerability = {
          ["$ref"] = "VulnerabilityNote",
          description = "A note describing a package vulnerability.",
        },
      },
      type = "object",
    },
    Occurrence = {
      description = "An instance of an analysis type that has been found on a resource.",
      id = "Occurrence",
      properties = {
        attestation = {
          ["$ref"] = "AttestationOccurrence",
          description = "Describes an attestation of an artifact.",
        },
        build = {
          ["$ref"] = "BuildOccurrence",
          description = "Describes a verifiable build.",
        },
        compliance = {
          ["$ref"] = "ComplianceOccurrence",
          description = "Describes a compliance violation on a linked resource.",
        },
        createTime = {
          description = "Output only. The time this occurrence was created.",
          format = "google-datetime",
          type = "string",
        },
        deployment = {
          ["$ref"] = "DeploymentOccurrence",
          description = "Describes the deployment of an artifact on a runtime.",
        },
        discovery = {
          ["$ref"] = "DiscoveryOccurrence",
          description = "Describes when a resource was discovered.",
        },
        dsseAttestation = {
          ["$ref"] = "DSSEAttestationOccurrence",
          description = "Describes an attestation of an artifact using dsse.",
        },
        envelope = {
          ["$ref"] = "Envelope",
          description = "https://github.com/secure-systems-lab/dsse",
        },
        image = {
          ["$ref"] = "ImageOccurrence",
          description = "Describes how this resource derives from the basis in the associated note.",
        },
        kind = {
          description = "Output only. This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.",
          enum = {
            "NOTE_KIND_UNSPECIFIED",
            "VULNERABILITY",
            "BUILD",
            "IMAGE",
            "PACKAGE",
            "DEPLOYMENT",
            "DISCOVERY",
            "ATTESTATION",
            "UPGRADE",
            "COMPLIANCE",
            "DSSE_ATTESTATION",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The note and occurrence represent a package vulnerability.",
            "The note and occurrence assert build provenance.",
            "This represents an image basis relationship.",
            "This represents a package installed via a package manager.",
            "The note and occurrence track deployment events.",
            "The note and occurrence track the initial discovery status of a resource.",
            "This represents a logical \"role\" that can attest to artifacts.",
            "This represents an available package upgrade.",
            "This represents a Compliance Note",
            "This represents a DSSE attestation Note",
          },
          type = "string",
        },
        name = {
          description = "Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.",
          type = "string",
        },
        noteName = {
          description = "Required. Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.",
          type = "string",
        },
        package = {
          ["$ref"] = "PackageOccurrence",
          description = "Describes the installation of a package on the linked resource.",
        },
        remediation = {
          description = "A description of actions that can be taken to remedy the note.",
          type = "string",
        },
        resourceUri = {
          description = "Required. Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time this occurrence was last updated.",
          format = "google-datetime",
          type = "string",
        },
        upgrade = {
          ["$ref"] = "UpgradeOccurrence",
          description = "Describes an available package upgrade on the linked resource.",
        },
        vulnerability = {
          ["$ref"] = "VulnerabilityOccurrence",
          description = "Describes a security vulnerability.",
        },
      },
      type = "object",
    },
    PackageIssue = {
      description = "A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).",
      id = "PackageIssue",
      properties = {
        affectedCpeUri = {
          description = "Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.",
          type = "string",
        },
        affectedPackage = {
          description = "Required. The package this vulnerability was found in.",
          type = "string",
        },
        affectedVersion = {
          ["$ref"] = "Version",
          description = "Required. The version of the package that is installed on the resource affected by this vulnerability.",
        },
        effectiveSeverity = {
          description = "Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          readOnly = true,
          type = "string",
        },
        fileLocation = {
          description = "The location at which this package was found.",
          items = {
            ["$ref"] = "GrafeasV1FileLocation",
          },
          type = "array",
        },
        fixAvailable = {
          description = "Output only. Whether a fix is available for this package.",
          type = "boolean",
        },
        fixedCpeUri = {
          description = "The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.",
          type = "string",
        },
        fixedPackage = {
          description = "The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.",
          type = "string",
        },
        fixedVersion = {
          ["$ref"] = "Version",
          description = "Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.",
        },
        packageType = {
          description = "The type of package (e.g. OS, MAVEN, GO).",
          type = "string",
        },
      },
      type = "object",
    },
    PackageNote = {
      description = "PackageNote represents a particular package version.",
      id = "PackageNote",
      properties = {
        architecture = {
          description = "The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.",
          enum = {
            "ARCHITECTURE_UNSPECIFIED",
            "X86",
            "X64",
          },
          enumDescriptions = {
            "Unknown architecture.",
            "X86 architecture.",
            "X64 architecture.",
          },
          type = "string",
        },
        cpeUri = {
          description = "The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.",
          type = "string",
        },
        description = {
          description = "The description of this package.",
          type = "string",
        },
        digest = {
          description = "Hash value, typically a file digest, that allows unique identification a specific package.",
          items = {
            ["$ref"] = "Digest",
          },
          type = "array",
        },
        distribution = {
          description = "Deprecated. The various channels by which a package is distributed.",
          items = {
            ["$ref"] = "Distribution",
          },
          type = "array",
        },
        license = {
          ["$ref"] = "License",
          description = "Licenses that have been declared by the authors of the package.",
        },
        maintainer = {
          description = "A freeform text denoting the maintainer of this package.",
          type = "string",
        },
        name = {
          description = "Required. Immutable. The name of the package.",
          type = "string",
        },
        packageType = {
          description = "The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          type = "string",
        },
        url = {
          description = "The homepage for this package.",
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "The version of the package.",
        },
      },
      type = "object",
    },
    PackageOccurrence = {
      description = "Details on how a particular software package was installed on a system.",
      id = "PackageOccurrence",
      properties = {
        architecture = {
          description = "Output only. The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.",
          enum = {
            "ARCHITECTURE_UNSPECIFIED",
            "X86",
            "X64",
          },
          enumDescriptions = {
            "Unknown architecture.",
            "X86 architecture.",
            "X64 architecture.",
          },
          readOnly = true,
          type = "string",
        },
        cpeUri = {
          description = "Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.",
          readOnly = true,
          type = "string",
        },
        license = {
          ["$ref"] = "License",
          description = "Licenses that have been declared by the authors of the package.",
        },
        location = {
          description = "All of the places within the filesystem versions of this package have been found.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        name = {
          description = "Required. Output only. The name of the installed package.",
          readOnly = true,
          type = "string",
        },
        packageType = {
          description = "Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          readOnly = true,
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "Output only. The version of the package.",
          readOnly = true,
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ProjectRepoId = {
      description = "Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31) and a repo name within that project.",
      id = "ProjectRepoId",
      properties = {
        projectId = {
          description = "The ID of the project.",
          type = "string",
        },
        repoName = {
          description = "The name of the repo. Leave empty for the default repo.",
          type = "string",
        },
      },
      type = "object",
    },
    Recipe = {
      description = "Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.",
      id = "Recipe",
      properties = {
        arguments = {
          description = "Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Since the arguments field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        definedInMaterial = {
          description = "Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.",
          format = "int64",
          type = "string",
        },
        entryPoint = {
          description = "String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.",
          type = "string",
        },
        environment = {
          description = "Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Since the environment field can greatly vary in structure, depending on the builder and recipe type, this is of form \"Any\".",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        type = {
          description = "URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedUrl = {
      description = "Metadata for any related URL information.",
      id = "RelatedUrl",
      properties = {
        label = {
          description = "Label to describe usage of the URL.",
          type = "string",
        },
        url = {
          description = "Specific URL associated with the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    RepoId = {
      description = "A unique identifier for a Cloud Repo.",
      id = "RepoId",
      properties = {
        projectRepoId = {
          ["$ref"] = "ProjectRepoId",
          description = "A combination of a project ID and a repo name.",
        },
        uid = {
          description = "A server-assigned, globally unique identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
      },
      type = "object",
    },
    Signature = {
      description = "Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to the trust anchors defined in policy (e.g. a Kritis policy). Typically this means that the verifier has been configured with a map from `public_key_id` to public key material (and any required parameters, e.g. signing algorithm). In particular, verification implementations MUST NOT treat the signature `public_key_id` as anything more than a key lookup hint. The `public_key_id` DOES NOT validate or authenticate a public key; it only provides a mechanism for quickly selecting a public key ALREADY CONFIGURED on the verifier through a trusted channel. Verification implementations MUST reject signatures in any of the following circumstances: * The `public_key_id` is not recognized by the verifier. * The public key that `public_key_id` refers to does not verify the signature with respect to the payload. The `signature` contents SHOULD NOT be \"attached\" (where the payload is included with the serialized `signature` bytes). Verifiers MUST ignore any \"attached\" payload and only verify signatures with respect to explicitly provided payload (e.g. a `payload` field on the proto message that holds this Signature, or the canonical serialization of the proto message that holds this signature).",
      id = "Signature",
      properties = {
        publicKeyId = {
          description = "The identifier for the public key that verifies this signature. * The `public_key_id` is required. * The `public_key_id` SHOULD be an RFC3986 conformant URI. * When possible, the `public_key_id` SHOULD be an immutable reference, such as a cryptographic digest. Examples of valid `public_key_id`s: OpenPGP V4 public key fingerprint: * \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr for more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization): * \"ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU\" * \"nih:///sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"",
          type = "string",
        },
        signature = {
          description = "The content of the signature, an opaque bytestring. The payload that this signature verifies MUST be unambiguously provided with the Signature during verification. A wrapper message might provide the payload explicitly. Alternatively, a message might have a canonical serialization that can always be unambiguously computed to derive the payload.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    SlsaBuilder = {
      id = "SlsaBuilder",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    SlsaCompleteness = {
      description = "Indicates that the builder claims certain fields in this message to be complete.",
      id = "SlsaCompleteness",
      properties = {
        arguments = {
          description = "If true, the builder claims that recipe.arguments is complete, meaning that all external inputs are properly captured in the recipe.",
          type = "boolean",
        },
        environment = {
          description = "If true, the builder claims that recipe.environment is claimed to be complete.",
          type = "boolean",
        },
        materials = {
          description = "If true, the builder claims that materials are complete, usually through some controls to prevent network access. Sometimes called \"hermetic\".",
          type = "boolean",
        },
      },
      type = "object",
    },
    SlsaMetadata = {
      description = "Other properties of the build.",
      id = "SlsaMetadata",
      properties = {
        buildFinishedOn = {
          description = "The timestamp of when the build completed.",
          format = "google-datetime",
          type = "string",
        },
        buildInvocationId = {
          description = "Identifies the particular build invocation, which can be useful for finding associated logs or other ad-hoc analysis. The value SHOULD be globally unique, per in-toto Provenance spec.",
          type = "string",
        },
        buildStartedOn = {
          description = "The timestamp of when the build started.",
          format = "google-datetime",
          type = "string",
        },
        completeness = {
          ["$ref"] = "SlsaCompleteness",
          description = "Indicates that the builder claims certain fields in this message to be complete.",
        },
        reproducible = {
          description = "If true, the builder claims that running the recipe on materials will produce bit-for-bit identical output.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SlsaProvenance = {
      id = "SlsaProvenance",
      properties = {
        builder = {
          ["$ref"] = "SlsaBuilder",
          description = "required",
        },
        materials = {
          description = "The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.",
          items = {
            ["$ref"] = "Material",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "SlsaMetadata",
        },
        recipe = {
          ["$ref"] = "SlsaRecipe",
          description = "Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required",
        },
      },
      type = "object",
    },
    SlsaProvenanceZeroTwo = {
      description = "See full explanation of fields at slsa.dev/provenance/v0.2.",
      id = "SlsaProvenanceZeroTwo",
      properties = {
        buildConfig = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          type = "object",
        },
        buildType = {
          type = "string",
        },
        builder = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder",
        },
        invocation = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation",
        },
        materials = {
          items = {
            ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata",
        },
      },
      type = "object",
    },
    SlsaRecipe = {
      description = "Steps taken to build the artifact. For a TaskRun, typically each container corresponds to one step in the recipe.",
      id = "SlsaRecipe",
      properties = {
        arguments = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Collection of all external inputs that influenced the build on top of recipe.definedInMaterial and recipe.entryPoint. For example, if the recipe type were \"make\", then this might be the flags passed to make aside from the target, which is captured in recipe.entryPoint. Depending on the recipe Type, the structure may be different.",
          type = "object",
        },
        definedInMaterial = {
          description = "Index in materials containing the recipe steps that are not implied by recipe.type. For example, if the recipe type were \"make\", then this would point to the source containing the Makefile, not the make program itself. Set to -1 if the recipe doesn't come from a material, as zero is default unset value for int64.",
          format = "int64",
          type = "string",
        },
        entryPoint = {
          description = "String identifying the entry point into the build. This is often a path to a configuration file and/or a target label within that file. The syntax and meaning are defined by recipe.type. For example, if the recipe type were \"make\", then this would reference the directory in which to run make as well as which target to use.",
          type = "string",
        },
        environment = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Any other builder-controlled inputs necessary for correctly evaluating the recipe. Usually only needed for reproducing the build but not evaluated as part of policy. Depending on the recipe Type, the structure may be different.",
          type = "object",
        },
        type = {
          description = "URI indicating what type of recipe was performed. It determines the meaning of recipe.entryPoint, recipe.arguments, recipe.environment, and materials.",
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "Source describes the location of the source used for the build.",
      id = "Source",
      properties = {
        additionalContexts = {
          description = "If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.",
          items = {
            ["$ref"] = "SourceContext",
          },
          type = "array",
        },
        artifactStorageSourceUri = {
          description = "If provided, the input binary artifacts for the build came from this location.",
          type = "string",
        },
        context = {
          ["$ref"] = "SourceContext",
          description = "If provided, the source code used for the build came from this location.",
        },
        fileHashes = {
          additionalProperties = {
            ["$ref"] = "FileHashes",
          },
          description = "Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.",
          type = "object",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.",
      id = "SourceContext",
      properties = {
        cloudRepo = {
          ["$ref"] = "CloudRepoSourceContext",
          description = "A SourceContext referring to a revision in a Google Cloud Source Repo.",
        },
        gerrit = {
          ["$ref"] = "GerritSourceContext",
          description = "A SourceContext referring to a Gerrit project.",
        },
        git = {
          ["$ref"] = "GitSourceContext",
          description = "A SourceContext referring to any third party Git repo (e.g., GitHub).",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels with user defined metadata.",
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
    Subject = {
      id = "Subject",
      properties = {
        digest = {
          additionalProperties = {
            type = "string",
          },
          description = "`\"\": \"\"` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet",
          type = "object",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TimeSpan = {
      description = "Start and end times for a build execution phase. Next ID: 3",
      id = "TimeSpan",
      properties = {
        endTime = {
          description = "End of time span.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start of time span.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeDistribution = {
      description = "The Upgrade Distribution represents metadata about the Upgrade for each operating system (CPE). Some distributions have additional metadata around updates, classifying them into various categories and severities.",
      id = "UpgradeDistribution",
      properties = {
        classification = {
          description = "The operating system classification of this Upgrade, as specified by the upstream operating system upgrade feed. For Windows the classification is one of the category_ids listed at https://docs.microsoft.com/en-us/previous-versions/windows/desktop/ff357803(v=vs.85)",
          type = "string",
        },
        cpeUri = {
          description = "Required - The specific operating system this metadata applies to. See https://cpe.mitre.org/specification/.",
          type = "string",
        },
        cve = {
          description = "The cve tied to this Upgrade.",
          items = {
            type = "string",
          },
          type = "array",
        },
        severity = {
          description = "The severity as specified by the upstream operating system.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeNote = {
      description = "An Upgrade Note represents a potential upgrade of a package to a given version. For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2), there will be an Upgrade Note. For Windows, windows_update field represents the information related to the update.",
      id = "UpgradeNote",
      properties = {
        distributions = {
          description = "Metadata about the upgrade for each specific operating system.",
          items = {
            ["$ref"] = "UpgradeDistribution",
          },
          type = "array",
        },
        package = {
          description = "Required for non-Windows OS. The package this Upgrade is for.",
          type = "string",
        },
        version = {
          ["$ref"] = "Version",
          description = "Required for non-Windows OS. The version of the package in machine + human readable form.",
        },
        windowsUpdate = {
          ["$ref"] = "WindowsUpdate",
          description = "Required for Windows OS. Represents the metadata about the Windows update.",
        },
      },
      type = "object",
    },
    UpgradeOccurrence = {
      description = "An Upgrade Occurrence represents that a specific resource_url could install a specific upgrade. This presence is supplied via local sources (i.e. it is present in the mirror and the running system has noticed its availability). For Windows, both distribution and windows_update contain information for the Windows update.",
      id = "UpgradeOccurrence",
      properties = {
        distribution = {
          ["$ref"] = "UpgradeDistribution",
          description = "Metadata about the upgrade for available for the specific operating system for the resource_url. This allows efficient filtering, as well as making it easier to use the occurrence.",
        },
        package = {
          description = "Required for non-Windows OS. The package this Upgrade is for.",
          type = "string",
        },
        parsedVersion = {
          ["$ref"] = "Version",
          description = "Required for non-Windows OS. The version of the package in a machine + human readable form.",
        },
        windowsUpdate = {
          ["$ref"] = "WindowsUpdate",
          description = "Required for Windows OS. Represents the metadata about the Windows update.",
        },
      },
      type = "object",
    },
    Version = {
      description = "Version contains structured information about the version of a package.",
      id = "Version",
      properties = {
        epoch = {
          description = "Used to correct mistakes in the version numbering scheme.",
          format = "int32",
          type = "integer",
        },
        fullName = {
          description = "Human readable version string. This string is of the form :- and is only set when kind is NORMAL.",
          type = "string",
        },
        inclusive = {
          description = "Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.",
          type = "boolean",
        },
        kind = {
          description = "Required. Distinguishes between sentinel MIN/MAX versions and normal versions.",
          enum = {
            "VERSION_KIND_UNSPECIFIED",
            "NORMAL",
            "MINIMUM",
            "MAXIMUM",
          },
          enumDescriptions = {
            "Unknown.",
            "A standard package version.",
            "A special version representing negative infinity.",
            "A special version representing positive infinity.",
          },
          type = "string",
        },
        name = {
          description = "Required only when version kind is NORMAL. The main part of the version name.",
          type = "string",
        },
        revision = {
          description = "The iteration of the package build from the above version.",
          type = "string",
        },
      },
      type = "object",
    },
    Volume = {
      description = "Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution. Next ID: 3",
      id = "Volume",
      properties = {
        name = {
          description = "Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.",
          type = "string",
        },
        path = {
          description = "Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityNote = {
      description = "A security vulnerability that can be found in resources.",
      id = "VulnerabilityNote",
      properties = {
        cvssScore = {
          description = "The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.",
          format = "float",
          type = "number",
        },
        cvssV3 = {
          ["$ref"] = "CVSSv3",
          description = "The full description of the CVSSv3 for this vulnerability.",
        },
        cvssVersion = {
          description = "CVSS version used to populate cvss_score and severity.",
          enum = {
            "CVSS_VERSION_UNSPECIFIED",
            "CVSS_VERSION_2",
            "CVSS_VERSION_3",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        details = {
          description = "Details of all known distros and packages affected by this vulnerability.",
          items = {
            ["$ref"] = "Detail",
          },
          type = "array",
        },
        severity = {
          description = "The note provider assigned severity of this vulnerability.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        sourceUpdateTime = {
          description = "The time this information was last changed at the source. This is an upstream timestamp from the underlying information source - e.g. Ubuntu security tracker.",
          format = "google-datetime",
          type = "string",
        },
        windowsDetails = {
          description = "Windows details get their own format because the information format and model don't match a normal detail. Specifically Windows updates are done as patches, thus Windows vulnerabilities really are a missing package, rather than a package being at an incorrect version.",
          items = {
            ["$ref"] = "WindowsDetail",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VulnerabilityOccurrence = {
      description = "An occurrence of a severity vulnerability on a resource.",
      id = "VulnerabilityOccurrence",
      properties = {
        cvssScore = {
          description = "Output only. The CVSS score of this vulnerability. CVSS score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.",
          format = "float",
          type = "number",
        },
        cvssVersion = {
          description = "Output only. CVSS version used to populate cvss_score and severity.",
          enum = {
            "CVSS_VERSION_UNSPECIFIED",
            "CVSS_VERSION_2",
            "CVSS_VERSION_3",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        cvssv3 = {
          ["$ref"] = "CVSS",
          description = "The cvss v3 score for the vulnerability.",
        },
        effectiveSeverity = {
          description = "The distro assigned severity for this vulnerability when it is available, otherwise this is the note provider assigned severity. When there are multiple PackageIssues for this vulnerability, they can have different effective severities because some might be provided by the distro while others are provided by the language ecosystem for a language pack. For this reason, it is advised to use the effective severity on the PackageIssue level. In the case where multiple PackageIssues have differing effective severities, this field should be the highest severity for any of the PackageIssues.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        fixAvailable = {
          description = "Output only. Whether at least one of the affected packages has a fix available.",
          type = "boolean",
        },
        longDescription = {
          description = "Output only. A detailed description of this vulnerability.",
          type = "string",
        },
        packageIssue = {
          description = "Required. The set of affected locations and their fixes (if available) within the associated resource.",
          items = {
            ["$ref"] = "PackageIssue",
          },
          type = "array",
        },
        relatedUrls = {
          description = "Output only. URLs related to this vulnerability.",
          items = {
            ["$ref"] = "RelatedUrl",
          },
          type = "array",
        },
        severity = {
          description = "Output only. The note provider assigned severity of this vulnerability.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "MINIMAL",
            "LOW",
            "MEDIUM",
            "HIGH",
            "CRITICAL",
          },
          enumDescriptions = {
            "Unknown.",
            "Minimal severity.",
            "Low severity.",
            "Medium severity.",
            "High severity.",
            "Critical severity.",
          },
          type = "string",
        },
        shortDescription = {
          description = "Output only. A one sentence description of this vulnerability.",
          type = "string",
        },
        type = {
          description = "The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityOccurrencesSummary = {
      description = "A summary of how many vulnerability occurrences there are per resource and severity type.",
      id = "VulnerabilityOccurrencesSummary",
      properties = {
        counts = {
          description = "A listing by resource of the number of fixable and total vulnerabilities.",
          items = {
            ["$ref"] = "FixableTotalByDigest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WindowsDetail = {
      id = "WindowsDetail",
      properties = {
        cpeUri = {
          description = "Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.",
          type = "string",
        },
        description = {
          description = "The description of this vulnerability.",
          type = "string",
        },
        fixingKbs = {
          description = "Required. The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.",
          items = {
            ["$ref"] = "KnowledgeBase",
          },
          type = "array",
        },
        name = {
          description = "Required. The name of this vulnerability.",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsUpdate = {
      description = "Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.",
      id = "WindowsUpdate",
      properties = {
        categories = {
          description = "The list of categories to which the update belongs.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
        description = {
          description = "The localized description of the update.",
          type = "string",
        },
        identity = {
          ["$ref"] = "Identity",
          description = "Required - The unique identifier for the update.",
        },
        kbArticleIds = {
          description = "The Microsoft Knowledge Base article IDs that are associated with the update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastPublishedTimestamp = {
          description = "The last published timestamp of the update.",
          format = "google-datetime",
          type = "string",
        },
        supportUrl = {
          description = "The hyperlink to the support information for the update.",
          type = "string",
        },
        title = {
          description = "The localized title of the update.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Container Analysis API",
  version = "v1",
  version_module = true,
}