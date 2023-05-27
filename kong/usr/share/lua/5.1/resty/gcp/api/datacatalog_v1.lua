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
  baseUrl = "https://datacatalog.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Data Catalog",
  description = "A fully managed and highly scalable data discovery and metadata management service. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/data-catalog/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datacatalog:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datacatalog.mtls.googleapis.com/",
  name = "datacatalog",
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
    catalog = {
      methods = {
        search = {
          description = "Searches Data Catalog for multiple resources like entries and tags that match a query. This is a [Custom Method] (https://cloud.google.com/apis/design/custom_methods) that doesn't return all information on a resource, only its ID and high level fields. To get more information, you can subsequently call specific get methods. Note: Data Catalog search queries don't guarantee full recall. Results that match your query might not be returned, even in subsequent result pages. Additionally, returned (and not returned) results can vary if you repeat search queries. For more information, see [Data Catalog search syntax] (https://cloud.google.com/data-catalog/docs/how-to/search-reference).",
          flatPath = "v1/catalog:search",
          httpMethod = "POST",
          id = "datacatalog.catalog.search",
          parameterOrder = {},
          parameters = {},
          path = "v1/catalog:search",
          request = {
            ["$ref"] = "GoogleCloudDatacatalogV1SearchCatalogRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudDatacatalogV1SearchCatalogResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    entries = {
      methods = {
        lookup = {
          description = "Gets an entry by its target resource name. The resource name comes from the source Google Cloud Platform service.",
          flatPath = "v1/entries:lookup",
          httpMethod = "GET",
          id = "datacatalog.entries.lookup",
          parameterOrder = {},
          parameters = {
            fullyQualifiedName = {
              description = "Fully qualified name (FQN) of the resource. FQNs take two forms: * For non-regionalized resources: `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For regionalized resources: `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` Example for a DPMS table: `dataproc_metastore:{PROJECT_ID}.{LOCATION_ID}.{INSTANCE_ID}.{DATABASE_ID}.{TABLE_ID}`",
              location = "query",
              type = "string",
            },
            linkedResource = {
              description = "The full name of the Google Cloud Platform resource the Data Catalog entry represents. For more information, see [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). Full names are case-sensitive. For example: * `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` * `//pubsub.googleapis.com/projects/{PROJECT_ID}/topics/{TOPIC_ID}`",
              location = "query",
              type = "string",
            },
            sqlResource = {
              description = "The SQL name of the entry. SQL names are case-sensitive. Examples: * `pubsub.topic.{PROJECT_ID}.{TOPIC_ID}` * `pubsub.topic.{PROJECT_ID}.`\\``{TOPIC.ID.SEPARATED.WITH.DOTS}`\\` * `bigquery.table.{PROJECT_ID}.{DATASET_ID}.{TABLE_ID}` * `bigquery.dataset.{PROJECT_ID}.{DATASET_ID}` * `datacatalog.entry.{PROJECT_ID}.{LOCATION_ID}.{ENTRY_GROUP_ID}.{ENTRY_ID}` Identifiers (`*_ID`) should comply with the [Lexical structure in Standard SQL] (https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical).",
              location = "query",
              type = "string",
            },
          },
          path = "v1/entries:lookup",
          response = {
            ["$ref"] = "GoogleCloudDatacatalogV1Entry",
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
          resources = {
            entryGroups = {
              methods = {
                create = {
                  description = "Creates an entry group. An entry group contains logically related entries together with [Cloud Identity and Access Management](/data-catalog/docs/concepts/iam) policies. These policies specify users who can create, edit, and view entries within entry groups. Data Catalog automatically creates entry groups with names that start with the `@` symbol for the following resources: * BigQuery entries (`@bigquery`) * Pub/Sub topics (`@pubsub`) * Dataproc Metastore services (`@dataproc_metastore_{SERVICE_NAME_HASH}`) You can create your own entry groups for Cloud Storage fileset entries and custom entries together with the corresponding IAM policies. User-created entry groups can't contain the `@` symbol, it is reserved for automatically created groups. Entry groups, like entries, can be searched. A maximum of 10,000 entry groups may be created per organization across all locations. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.entryGroups.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    entryGroupId = {
                      description = "Required. The ID of the entry group to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The names of the project and location that the new entry group belongs to. Note: The entry group itself and its child resources might not be stored in the location specified in its name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entryGroups",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an entry group. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}",
                  httpMethod = "DELETE",
                  id = "datacatalog.projects.locations.entryGroups.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Optional. If true, deletes all entries in the entry group.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the entry group to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
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
                  description = "Gets an entry group.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.entryGroups.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the entry group to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    readMask = {
                      description = "The fields to return. If empty or omitted, all fields are returned.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.entryGroups.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
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
                  description = "Lists entry groups.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.entryGroups.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of items to return. Default is 10. Maximum limit is 1000. Throws an invalid argument if `page_size` is greater than 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Pagination token that specifies the next page to return. If empty, returns the first page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the location that contains the entry groups to list. Can be provided as a URL.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entryGroups",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ListEntryGroupsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an entry group. You must enable the Data Catalog API in the project identified by the `entry_group.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}",
                  httpMethod = "PATCH",
                  id = "datacatalog.projects.locations.entryGroups.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Names of fields whose values to overwrite on an entry group. If this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Tag templates - Entry groups Note: This method sets policies only within Data Catalog and can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources synced with the Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on entry groups.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.entryGroups.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
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
                  description = "Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.entryGroups.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
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
                entries = {
                  methods = {
                    create = {
                      description = "Creates an entry. You can create entries only with 'FILESET', 'CLUSTER', 'DATA_STREAM', or custom types. Data Catalog automatically creates entries with other types during metadata ingestion from integrated systems. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project). An entry group can have a maximum of 100,000 entries.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        entryId = {
                          description = "Required. The ID of the entry to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores (_). The maximum size is 64 bytes when encoded in UTF-8.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the entry group this entry belongs to. Note: The entry itself and its child resources might not be stored in the location specified in its name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Entry",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Entry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an existing entry. You can delete only the entries created by the CreateEntry method. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}",
                      httpMethod = "DELETE",
                      id = "datacatalog.projects.locations.entryGroups.entries.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the entry to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
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
                      description = "Gets an entry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}",
                      httpMethod = "GET",
                      id = "datacatalog.projects.locations.entryGroups.entries.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the entry to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Entry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
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
                    import = {
                      description = "Imports entries from some source (e.g. dump in a Cloud Storage bucket) to the Data Catalog. Dump here is a snapshot of the third-party system state, that needs to be ingested in the Data Catalog. Import of entries is a sync operation that reconciles state of the third-party system and Data Catalog. ImportEntries is a long-running operation done in the background, so this method returns long-running operation resource. The resource can be queried with Operations.GetOperation which contains metadata and response.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries:import",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Target entry group for ingested entries.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries:import",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ImportEntriesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists entries. Note: Currently, this method can list only custom entries. To get a list of both custom and automatically created entries, use SearchCatalog.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries",
                      httpMethod = "GET",
                      id = "datacatalog.projects.locations.entryGroups.entries.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return. Default is 10. Maximum limit is 1000. Throws an invalid argument if `page_size` is more than 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token that specifies the next page to return. If empty, the first page is returned.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the entry group that contains the entries to list. Can be provided in URL format.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        readMask = {
                          description = "The fields to return for each entry. If empty or omitted, all fields are returned. For example, to return a list of entries with only the `name` field, set `read_mask` to only one path with the `name` value.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ListEntriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    modifyEntryContacts = {
                      description = "Modifies contacts, part of the business context of an Entry. To call this method, you must have the `datacatalog.entries.updateContacts` IAM permission on the corresponding project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:modifyEntryContacts",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.modifyEntryContacts",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the entry.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:modifyEntryContacts",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ModifyEntryContactsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Contacts",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    modifyEntryOverview = {
                      description = "Modifies entry overview, part of the business context of an Entry. To call this method, you must have the `datacatalog.entries.updateOverview` IAM permission on the corresponding project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:modifyEntryOverview",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.modifyEntryOverview",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The full resource name of the entry.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:modifyEntryOverview",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ModifyEntryOverviewRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1EntryOverview",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an existing entry. You must enable the Data Catalog API in the project identified by the `entry.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}",
                      httpMethod = "PATCH",
                      id = "datacatalog.projects.locations.entryGroups.entries.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Names of fields whose values to overwrite on an entry. If this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied. You can modify only the fields listed below. For entries with type `DATA_STREAM`: * `schema` For entries with type `FILESET`: * `schema` * `display_name` * `description` * `gcs_fileset_spec` * `gcs_fileset_spec.file_patterns` For entries with `user_specified_type`: * `schema` * `display_name` * `description` * `user_specified_type` * `user_specified_system` * `linked_resource` * `source_system_timestamps`",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Entry",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Entry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    star = {
                      description = "Marks an Entry as starred by the current user. Starring information is private to each user.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:star",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.star",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the entry to mark as starred.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:star",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1StarEntryRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1StarEntryResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
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
                    unstar = {
                      description = "Marks an Entry as NOT starred by the current user. Starring information is private to each user.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}:unstar",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.entries.unstar",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the entry to mark as **not** starred.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:unstar",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1UnstarEntryRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1UnstarEntryResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    tags = {
                      methods = {
                        create = {
                          description = "Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name is `projects.locations.entryGroups.tags.create`. Note: The project identified by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used to create the tag must be in the same organization.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}/tags",
                          httpMethod = "POST",
                          id = "datacatalog.projects.locations.entryGroups.entries.tags.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The name of the resource to attach this tag to. Tags can be attached to entries or entry groups. An entry can have up to 1000 attached tags. Note: The tag and its child resources might not be stored in the location specified in its name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/tags",
                          request = {
                            ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes a tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}/tags/{tagsId}",
                          httpMethod = "DELETE",
                          id = "datacatalog.projects.locations.entryGroups.entries.tags.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the tag to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+/tags/[^/]+$",
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
                        list = {
                          description = "Lists tags assigned to an Entry. The columns in the response are lowercased.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}/tags",
                          httpMethod = "GET",
                          id = "datacatalog.projects.locations.entryGroups.entries.tags.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of tags to return. Default is 10. Maximum limit is 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Pagination token that specifies the next page to return. If empty, the first page is returned.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The name of the Data Catalog resource to list the tags of. The resource can be an Entry or an EntryGroup (without `/entries/{entries}` at the end).",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/tags",
                          response = {
                            ["$ref"] = "GoogleCloudDatacatalogV1ListTagsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates an existing tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/entries/{entriesId}/tags/{tagsId}",
                          httpMethod = "PATCH",
                          id = "datacatalog.projects.locations.entryGroups.entries.tags.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag itself might not be stored in the location specified in its name.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/entries/[^/]+/tags/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Names of fields whose values to overwrite on a tag. Currently, a tag has the only modifiable field with the name `fields`. In general, if this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                tags = {
                  methods = {
                    create = {
                      description = "Creates a tag and assigns it to: * An Entry if the method name is `projects.locations.entryGroups.entries.tags.create`. * Or EntryGroupif the method name is `projects.locations.entryGroups.tags.create`. Note: The project identified by the `parent` parameter for the [tag] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries.tags/create#path-parameters) and the [tag template] (https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.tagTemplates/create#path-parameters) used to create the tag must be in the same organization.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/tags",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.entryGroups.tags.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the resource to attach this tag to. Tags can be attached to entries or entry groups. An entry can have up to 1000 attached tags. Note: The tag and its child resources might not be stored in the location specified in its name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/tags",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a tag.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/tags/{tagsId}",
                      httpMethod = "DELETE",
                      id = "datacatalog.projects.locations.entryGroups.tags.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the tag to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/tags/[^/]+$",
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
                    list = {
                      description = "Lists tags assigned to an Entry. The columns in the response are lowercased.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/tags",
                      httpMethod = "GET",
                      id = "datacatalog.projects.locations.entryGroups.tags.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of tags to return. Default is 10. Maximum limit is 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token that specifies the next page to return. If empty, the first page is returned.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the Data Catalog resource to list the tags of. The resource can be an Entry or an EntryGroup (without `/entries/{entries}` at the end).",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/tags",
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ListTagsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an existing tag.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/entryGroups/{entryGroupsId}/tags/{tagsId}",
                      httpMethod = "PATCH",
                      id = "datacatalog.projects.locations.entryGroups.tags.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag itself might not be stored in the location specified in its name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/entryGroups/[^/]+/tags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Names of fields whose values to overwrite on a tag. Currently, a tag has the only modifiable field with the name `fields`. In general, if this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1Tag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.operations.cancel",
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
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "datacatalog.projects.locations.operations.delete",
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
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.operations.get",
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
                  id = "datacatalog.projects.locations.operations.list",
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
            tagTemplates = {
              methods = {
                create = {
                  description = "Creates a tag template. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.tagTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the project and the template location [region](https://cloud.google.com/data-catalog/docs/concepts/regions).",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tagTemplateId = {
                      description = "Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tagTemplates",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1TagTemplate",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1TagTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a tag template and all tags that use it. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}",
                  httpMethod = "DELETE",
                  id = "datacatalog.projects.locations.tagTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Required. If true, deletes all tags that use this template. Currently, `true` is the only supported value.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the tag template to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
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
                  description = "Gets a tag template.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.tagTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the tag template to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1TagTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. May return: * A`NOT_FOUND` error if the resource doesn't exist or you don't have the permission to view it. * An empty policy if the resource exists but doesn't have a set policy. Supported resources are: - Tag templates - Entry groups Note: This method doesn't get policies from Google Cloud Platform resources ingested into Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.getIamPolicy` to get policies on tag templates. - `datacatalog.entryGroups.getIamPolicy` to get policies on entry groups.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.tagTemplates.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
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
                patch = {
                  description = "Updates a tag template. You can't update template fields with this method. These fields are separate resources with their own create, update, and delete methods. You must enable the Data Catalog API in the project identified by the `tag_template.name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}",
                  httpMethod = "PATCH",
                  id = "datacatalog.projects.locations.tagTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Names of fields whose values to overwrite on a tag template. Currently, only `display_name` and `is_publicly_readable` can be overwritten. If this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied. Note: Updating the `is_publicly_readable` field may require up to 12 hours to take effect in search results.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1TagTemplate",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1TagTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets an access control policy for a resource. Replaces any existing policy. Supported resources are: - Tag templates - Entry groups Note: This method sets policies only within Data Catalog and can't be used to manage policies in BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources synced with the Data Catalog. To call this method, you must have the following Google IAM permissions: - `datacatalog.tagTemplates.setIamPolicy` to set policies on tag templates. - `datacatalog.entryGroups.setIamPolicy` to set policies on entry groups.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.tagTemplates.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
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
                  description = "Gets your permissions on a resource. Returns an empty set of permissions if the resource doesn't exist. Supported resources are: - Tag templates - Entry groups Note: This method gets policies only within Data Catalog and can't be used to get policies from BigQuery, Pub/Sub, Dataproc Metastore, and any external Google Cloud Platform resources ingested into Data Catalog. No Google IAM permissions are required to call this method.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.tagTemplates.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
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
                fields = {
                  methods = {
                    create = {
                      description = "Creates a field in a tag template. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}/fields",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.tagTemplates.fields.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the project and the template location [region](https://cloud.google.com/data-catalog/docs/concepts/regions).",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        tagTemplateFieldId = {
                          description = "Required. The ID of the tag template field to create. Note: Adding a required field to an existing template is *not* allowed. Field IDs can contain letters (both uppercase and lowercase), numbers (0-9), underscores (_) and dashes (-). Field IDs must be at least 1 character long and at most 128 characters long. Field IDs must also be unique within their template.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/fields",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a field in a tag template and all uses of this field from the tags based on this template. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}/fields/{fieldsId}",
                      httpMethod = "DELETE",
                      id = "datacatalog.projects.locations.tagTemplates.fields.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "Required. If true, deletes this field from any tags that use it. Currently, `true` is the only supported value.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the tag template field to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+/fields/[^/]+$",
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
                    patch = {
                      description = "Updates a field in a tag template. You can't update the field type with this method. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}/fields/{fieldsId}",
                      httpMethod = "PATCH",
                      id = "datacatalog.projects.locations.tagTemplates.fields.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the tag template field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+/fields/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Optional. Names of fields whose values to overwrite on an individual field of a tag template. The following fields are modifiable: * `display_name` * `type.enum_type` * `is_required` If this parameter is absent or empty, all modifiable fields are overwritten. If such fields are non-required and omitted in the request body, their values are emptied with one exception: when updating an enum type, the provided values are merged with the existing values. Therefore, enum values can only be added, existing enum values cannot be deleted or renamed. Additionally, updating a template field from optional to required is *not* allowed.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    rename = {
                      description = "Renames a field in a tag template. You must enable the Data Catalog API in the project identified by the `name` parameter. For more information, see [Data Catalog resource project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}/fields/{fieldsId}:rename",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.tagTemplates.fields.rename",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the tag template field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+/fields/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:rename",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    enumValues = {
                      methods = {
                        rename = {
                          description = "Renames an enum value in a tag template. Within a single enum field, enum values must be unique.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tagTemplates/{tagTemplatesId}/fields/{fieldsId}/enumValues/{enumValuesId}:rename",
                          httpMethod = "POST",
                          id = "datacatalog.projects.locations.tagTemplates.fields.enumValues.rename",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the enum field value.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/tagTemplates/[^/]+/fields/[^/]+/enumValues/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:rename",
                          request = {
                            ["$ref"] = "GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
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
            taxonomies = {
              methods = {
                create = {
                  description = "Creates a taxonomy in a specified project. The taxonomy is initially empty, that is, it doesn't contain policy tags.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Resource name of the project that the taxonomy will belong to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/taxonomies",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a taxonomy, including all policy tags in this taxonomy, their associated policies, and the policy tags references from BigQuery columns.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}",
                  httpMethod = "DELETE",
                  id = "datacatalog.projects.locations.taxonomies.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the taxonomy to delete. Note: All policy tags in this taxonomy are also deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
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
                export = {
                  description = "Exports taxonomies in the requested type and returns them, including their policy tags. The requested taxonomies must belong to the same project. This method generates `SerializedTaxonomy` protocol buffers with nested policy tags that can be used as input for `ImportTaxonomies` calls.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies:export",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.taxonomies.export",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Resource name of the project that the exported taxonomies belong to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    serializedTaxonomies = {
                      description = "Serialized export taxonomies that contain all the policy tags as nested protocol buffers.",
                      location = "query",
                      type = "boolean",
                    },
                    taxonomies = {
                      description = "Required. Resource names of the taxonomies to export.",
                      location = "query",
                      repeated = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/taxonomies:export",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ExportTaxonomiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a taxonomy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.taxonomies.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the taxonomy to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM policy for a policy tag or a taxonomy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
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
                import = {
                  description = "Creates new taxonomies (including their policy tags) in a given project by importing from inlined or cross-regional sources. For a cross-regional source, new taxonomies are created by copying from a source in another region. For an inlined source, taxonomies and policy tags are created in bulk using nested protocol buffer structures.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies:import",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.import",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Resource name of project that the imported taxonomies will belong to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/taxonomies:import",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ImportTaxonomiesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ImportTaxonomiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all taxonomies in a project in a particular location that you have a permission to view.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies",
                  httpMethod = "GET",
                  id = "datacatalog.projects.locations.taxonomies.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return. Must be a value between 1 and 1000 inclusively. If not set, defaults to 50.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The pagination token of the next results page. If not set, the first page is returned. The token is returned in the response to a previous list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Resource name of the project to list the taxonomies of.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/taxonomies",
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ListTaxonomiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a taxonomy, including its display name, description, and activated policy types.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}",
                  httpMethod = "PATCH",
                  id = "datacatalog.projects.locations.taxonomies.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Specifies fields to update. If not set, defaults to all fields you can update. For more information, see [FieldMask] (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                replace = {
                  description = "Replaces (updates) a taxonomy and all its policy tags. The taxonomy and its entire hierarchy of policy tags must be represented literally by `SerializedTaxonomy` and the nested `SerializedPolicyTag` messages. This operation automatically does the following: - Deletes the existing policy tags that are missing from the `SerializedPolicyTag`. - Creates policy tags that don't have resource names. They are considered new. - Updates policy tags with valid resources names accordingly.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}:replace",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.replace",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the taxonomy to update.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:replace",
                  request = {
                    ["$ref"] = "GoogleCloudDatacatalogV1ReplaceTaxonomyRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM policy for a policy tag or a taxonomy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
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
                  description = "Returns your permissions on a specified policy tag or taxonomy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datacatalog.projects.locations.taxonomies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
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
                policyTags = {
                  methods = {
                    create = {
                      description = "Creates a policy tag in a taxonomy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Resource name of the taxonomy that the policy tag will belong to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/policyTags",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a policy tag together with the following: * All of its descendant policy tags, if any * Policies associated with the policy tag and its descendants * References from BigQuery table schema of the policy tag and its descendants",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}",
                      httpMethod = "DELETE",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the policy tag to delete. Note: All of its descendant policy tags are also deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
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
                      description = "Gets a policy tag.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}",
                      httpMethod = "GET",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the policy tag.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the IAM policy for a policy tag or a taxonomy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
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
                      description = "Lists all policy tags in a taxonomy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags",
                      httpMethod = "GET",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return. Must be a value between 1 and 1000 inclusively. If not set, defaults to 50.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The pagination token of the next results page. If not set, returns the first page. The token is returned in the response to a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Resource name of the taxonomy to list the policy tags of.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/policyTags",
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1ListPolicyTagsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a policy tag, including its display name, description, and parent policy tag.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}",
                      httpMethod = "PATCH",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs and policy tag IDs.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Specifies the fields to update. You can update only display name, description, and parent policy tag. If not set, defaults to all updatable fields. For more information, see [FieldMask] (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask).",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the IAM policy for a policy tag or a taxonomy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
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
                      description = "Returns your permissions on a specified policy tag or taxonomy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/taxonomies/{taxonomiesId}/policyTags/{policyTagsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "datacatalog.projects.locations.taxonomies.policyTags.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/taxonomies/[^/]+/policyTags/[^/]+$",
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
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://datacatalog.googleapis.com/",
  schemas = {
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
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
    GoogleCloudDatacatalogV1BigQueryConnectionSpec = {
      description = "Specification for the BigQuery connection.",
      id = "GoogleCloudDatacatalogV1BigQueryConnectionSpec",
      properties = {
        cloudSql = {
          ["$ref"] = "GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec",
          description = "Specification for the BigQuery connection to a Cloud SQL instance.",
        },
        connectionType = {
          description = "The type of the BigQuery connection.",
          enum = {
            "CONNECTION_TYPE_UNSPECIFIED",
            "CLOUD_SQL",
          },
          enumDescriptions = {
            "Unspecified type.",
            "Cloud SQL connection.",
          },
          type = "string",
        },
        hasCredential = {
          description = "True if there are credentials attached to the BigQuery connection; false otherwise.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1BigQueryDateShardedSpec = {
      description = "Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).",
      id = "GoogleCloudDatacatalogV1BigQueryDateShardedSpec",
      properties = {
        dataset = {
          description = "Output only. The Data Catalog resource name of the dataset entry the current table belongs to. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.",
          readOnly = true,
          type = "string",
        },
        latestShardResource = {
          description = "Output only. BigQuery resource name of the latest shard.",
          readOnly = true,
          type = "string",
        },
        shardCount = {
          description = "Output only. Total number of shards.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        tablePrefix = {
          description = "Output only. The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`. For example, for the `MyTable20180101` shard, the `table_prefix` is `MyTable`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1BigQueryRoutineSpec = {
      description = "Fields specific for BigQuery routines.",
      id = "GoogleCloudDatacatalogV1BigQueryRoutineSpec",
      properties = {
        importedLibraries = {
          description = "Paths of the imported libraries.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1BigQueryTableSpec = {
      description = "Describes a BigQuery table.",
      id = "GoogleCloudDatacatalogV1BigQueryTableSpec",
      properties = {
        tableSourceType = {
          description = "Output only. The table source type.",
          enum = {
            "TABLE_SOURCE_TYPE_UNSPECIFIED",
            "BIGQUERY_VIEW",
            "BIGQUERY_TABLE",
            "BIGQUERY_MATERIALIZED_VIEW",
          },
          enumDescriptions = {
            "Default unknown type.",
            "Table view.",
            "BigQuery native table.",
            "BigQuery materialized view.",
          },
          readOnly = true,
          type = "string",
        },
        tableSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1TableSpec",
          description = "Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.",
        },
        viewSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1ViewSpec",
          description = "Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1BusinessContext = {
      description = "Business Context of the entry.",
      id = "GoogleCloudDatacatalogV1BusinessContext",
      properties = {
        contacts = {
          ["$ref"] = "GoogleCloudDatacatalogV1Contacts",
          description = "Contact people for the entry.",
        },
        entryOverview = {
          ["$ref"] = "GoogleCloudDatacatalogV1EntryOverview",
          description = "Entry overview fields for rich text descriptions of entries.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec = {
      description = "Specification for the BigQuery connection to a Cloud SQL instance.",
      id = "GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec",
      properties = {
        database = {
          description = "Database name.",
          type = "string",
        },
        instanceId = {
          description = "Cloud SQL instance ID in the format of `project:location:instance`.",
          type = "string",
        },
        type = {
          description = "Type of the Cloud SQL database.",
          enum = {
            "DATABASE_TYPE_UNSPECIFIED",
            "POSTGRES",
            "MYSQL",
          },
          enumDescriptions = {
            "Unspecified database type.",
            "Cloud SQL for PostgreSQL.",
            "Cloud SQL for MySQL.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ColumnSchema = {
      description = "A column within a schema. Columns can be nested inside other columns.",
      id = "GoogleCloudDatacatalogV1ColumnSchema",
      properties = {
        column = {
          description = "Required. Name of the column. Must be a UTF-8 string without dots (.). The maximum size is 64 bytes.",
          type = "string",
        },
        defaultValue = {
          description = "Optional. Default value for the column.",
          type = "string",
        },
        description = {
          description = "Optional. Description of the column. Default value is an empty string. The description must be a UTF-8 string with the maximum size of 2000 bytes.",
          type = "string",
        },
        gcRule = {
          description = "Optional. Garbage collection policy for the column or column family. Applies to systems like Cloud Bigtable.",
          type = "string",
        },
        highestIndexingType = {
          description = "Optional. Most important inclusion of this column.",
          enum = {
            "INDEXING_TYPE_UNSPECIFIED",
            "INDEXING_TYPE_NONE",
            "INDEXING_TYPE_NON_UNIQUE",
            "INDEXING_TYPE_UNIQUE",
            "INDEXING_TYPE_PRIMARY_KEY",
          },
          enumDescriptions = {
            "Unspecified.",
            "Column not a part of an index.",
            "Column Part of non unique index.",
            "Column part of unique index.",
            "Column part of the primary key.",
          },
          type = "string",
        },
        lookerColumnSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec",
          description = "Looker specific column info of this column.",
        },
        mode = {
          description = "Optional. A column's mode indicates whether values in this column are required, nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are supported. Default mode is `NULLABLE`.",
          type = "string",
        },
        ordinalPosition = {
          description = "Optional. Ordinal position",
          format = "int32",
          type = "integer",
        },
        subcolumns = {
          description = "Optional. Schema of sub-columns. A column can have zero or more sub-columns.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1ColumnSchema",
          },
          type = "array",
        },
        type = {
          description = "Required. Type of the column. Must be a UTF-8 string with the maximum size of 128 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec = {
      description = "Column info specific to Looker System.",
      id = "GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec",
      properties = {
        type = {
          description = "Looker specific column type of this column.",
          enum = {
            "LOOKER_COLUMN_TYPE_UNSPECIFIED",
            "DIMENSION",
            "DIMENSION_GROUP",
            "FILTER",
            "MEASURE",
            "PAREMETER",
          },
          enumDescriptions = {
            "Unspecified.",
            "Dimension.",
            "Dimension group - parent for Dimension.",
            "Filter.",
            "Measure.",
            "Parameter.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1CommonUsageStats = {
      description = "Common statistics on the entry's usage. They can be set on any system.",
      id = "GoogleCloudDatacatalogV1CommonUsageStats",
      properties = {
        viewCount = {
          description = "View count in source system.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1Contacts = {
      description = "Contact people for the entry.",
      id = "GoogleCloudDatacatalogV1Contacts",
      properties = {
        people = {
          description = "The list of contact people for the entry.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1ContactsPerson",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ContactsPerson = {
      description = "A contact person for the entry.",
      id = "GoogleCloudDatacatalogV1ContactsPerson",
      properties = {
        designation = {
          description = "Designation of the person, for example, Data Steward.",
          type = "string",
        },
        email = {
          description = "Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1CrossRegionalSource = {
      description = "Cross-regional source used to import an existing taxonomy into a different region.",
      id = "GoogleCloudDatacatalogV1CrossRegionalSource",
      properties = {
        taxonomy = {
          description = "Required. The resource name of the source taxonomy to import.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataSource = {
      description = "Physical location of an entry.",
      id = "GoogleCloudDatacatalogV1DataSource",
      properties = {
        resource = {
          description = "Full name of a resource as defined by the service. For example: `//bigquery.googleapis.com/projects/{PROJECT_ID}/locations/{LOCATION}/datasets/{DATASET_ID}/tables/{TABLE_ID}`",
          type = "string",
        },
        service = {
          description = "Service that physically stores the data.",
          enum = {
            "SERVICE_UNSPECIFIED",
            "CLOUD_STORAGE",
            "BIGQUERY",
          },
          enumDescriptions = {
            "Default unknown service.",
            "Google Cloud Storage service.",
            "BigQuery service.",
          },
          type = "string",
        },
        sourceEntry = {
          description = "Output only. Data Catalog entry name, if applicable.",
          readOnly = true,
          type = "string",
        },
        storageProperties = {
          ["$ref"] = "GoogleCloudDatacatalogV1StorageProperties",
          description = "Detailed properties of the underlying storage.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataSourceConnectionSpec = {
      description = "Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set at the time, and cannot be changed later.",
      id = "GoogleCloudDatacatalogV1DataSourceConnectionSpec",
      properties = {
        bigqueryConnectionSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1BigQueryConnectionSpec",
          description = "Output only. Fields specific to BigQuery connections.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DatabaseTableSpec = {
      description = "Specification that applies to a table resource. Valid only for entries with the `TABLE` type.",
      id = "GoogleCloudDatacatalogV1DatabaseTableSpec",
      properties = {
        databaseViewSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec",
          description = "Spec what aplies to tables that are actually views. Not set for \"real\" tables.",
        },
        dataplexTable = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataplexTableSpec",
          description = "Output only. Fields specific to a Dataplex table and present only in the Dataplex table entries.",
          readOnly = true,
        },
        type = {
          description = "Type of this table.",
          enum = {
            "TABLE_TYPE_UNSPECIFIED",
            "NATIVE",
            "EXTERNAL",
          },
          enumDescriptions = {
            "Default unknown table type.",
            "Native table.",
            "External table.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec = {
      description = "Specification that applies to database view.",
      id = "GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec",
      properties = {
        baseTable = {
          description = "Name of a singular table this view reflects one to one.",
          type = "string",
        },
        sqlQuery = {
          description = "SQL query used to generate this view.",
          type = "string",
        },
        viewType = {
          description = "Type of this view.",
          enum = {
            "VIEW_TYPE_UNSPECIFIED",
            "STANDARD_VIEW",
            "MATERIALIZED_VIEW",
          },
          enumDescriptions = {
            "Default unknown view type.",
            "Standard view.",
            "Materialized view.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataplexExternalTable = {
      description = "External table registered by Dataplex. Dataplex publishes data discovered from an asset into multiple other systems (BigQuery, DPMS) in form of tables. We call them \"external tables\". External tables are also synced into the Data Catalog. This message contains pointers to those external tables (fully qualified name, resource name et cetera) within the Data Catalog.",
      id = "GoogleCloudDatacatalogV1DataplexExternalTable",
      properties = {
        dataCatalogEntry = {
          description = "Name of the Data Catalog entry representing the external table.",
          type = "string",
        },
        fullyQualifiedName = {
          description = "Fully qualified name (FQN) of the external table.",
          type = "string",
        },
        googleCloudResource = {
          description = "Google Cloud resource name of the external table.",
          type = "string",
        },
        system = {
          description = "Service in which the external table is registered.",
          enum = {
            "INTEGRATED_SYSTEM_UNSPECIFIED",
            "BIGQUERY",
            "CLOUD_PUBSUB",
            "DATAPROC_METASTORE",
            "DATAPLEX",
            "CLOUD_SQL",
            "LOOKER",
          },
          enumDescriptions = {
            "Default unknown system.",
            "BigQuery.",
            "Cloud Pub/Sub.",
            "Dataproc Metastore.",
            "Dataplex.",
            "Cloud Sql",
            "Looker",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataplexFilesetSpec = {
      description = "Entry specyfication for a Dataplex fileset.",
      id = "GoogleCloudDatacatalogV1DataplexFilesetSpec",
      properties = {
        dataplexSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataplexSpec",
          description = "Common Dataplex fields.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataplexSpec = {
      description = "Common Dataplex fields.",
      id = "GoogleCloudDatacatalogV1DataplexSpec",
      properties = {
        asset = {
          description = "Fully qualified resource name of an asset in Dataplex, to which the underlying data source (Cloud Storage bucket or BigQuery dataset) of the entity is attached.",
          type = "string",
        },
        compressionFormat = {
          description = "Compression format of the data, e.g., zip, gzip etc.",
          type = "string",
        },
        dataFormat = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchema",
          description = "Format of the data.",
        },
        projectId = {
          description = "Project ID of the underlying Cloud Storage or BigQuery data. Note that this may not be the same project as the correspondingly Dataplex lake / zone / asset.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1DataplexTableSpec = {
      description = "Entry specification for a Dataplex table.",
      id = "GoogleCloudDatacatalogV1DataplexTableSpec",
      properties = {
        dataplexSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataplexSpec",
          description = "Common Dataplex fields.",
        },
        externalTables = {
          description = "List of external tables registered by Dataplex in other systems based on the same underlying data. External tables allow to query this data in those systems.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1DataplexExternalTable",
          },
          type = "array",
        },
        userManaged = {
          description = "Indicates if the table schema is managed by the user or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1Entry = {
      description = "Entry metadata. A Data Catalog entry represents another resource in Google Cloud Platform (such as a BigQuery dataset or a Pub/Sub topic) or outside of it. You can use the `linked_resource` field in the entry resource to refer to the original resource ID of the source system. An entry resource contains resource details, for example, its schema. Additionally, you can attach flexible metadata to an entry in the form of a Tag.",
      id = "GoogleCloudDatacatalogV1Entry",
      properties = {
        bigqueryDateShardedSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1BigQueryDateShardedSpec",
          description = "Output only. Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).",
          readOnly = true,
        },
        bigqueryTableSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1BigQueryTableSpec",
          description = "Output only. Specification that applies to a BigQuery table. Valid only for entries with the `TABLE` type.",
          readOnly = true,
        },
        businessContext = {
          ["$ref"] = "GoogleCloudDatacatalogV1BusinessContext",
          description = "Business Context of the entry. Not supported for BigQuery datasets",
        },
        dataSource = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataSource",
          description = "Output only. Physical location of the entry.",
          readOnly = true,
        },
        dataSourceConnectionSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataSourceConnectionSpec",
          description = "Specification that applies to a data source connection. Valid only for entries with the `DATA_SOURCE_CONNECTION` type.",
        },
        databaseTableSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1DatabaseTableSpec",
          description = "Specification that applies to a table resource. Valid only for entries with the `TABLE` or `EXPLORE` type.",
        },
        description = {
          description = "Entry description that can consist of several sentences or paragraphs that describe entry contents. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes when encoded in UTF-8. Default value is an empty string.",
          type = "string",
        },
        displayName = {
          description = "Display name of an entry. The maximum size is 500 bytes when encoded in UTF-8. Default value is an empty string.",
          type = "string",
        },
        filesetSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1FilesetSpec",
          description = "Specification that applies to a fileset resource. Valid only for entries with the `FILESET` type.",
        },
        fullyQualifiedName = {
          description = "Fully qualified name (FQN) of the resource. Set automatically for entries representing resources from synced systems. Settable only during creation and read-only afterwards. Can be used for search and lookup of the entries. FQNs take two forms: * For non-regionalized resources: `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For regionalized resources: `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` Example for a DPMS table: `dataproc_metastore:{PROJECT_ID}.{LOCATION_ID}.{INSTANCE_ID}.{DATABASE_ID}.{TABLE_ID}`",
          type = "string",
        },
        gcsFilesetSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1GcsFilesetSpec",
          description = "Specification that applies to a Cloud Storage fileset. Valid only for entries with the `FILESET` type.",
        },
        integratedSystem = {
          description = "Output only. Indicates the entry's source system that Data Catalog integrates with, such as BigQuery, Pub/Sub, or Dataproc Metastore.",
          enum = {
            "INTEGRATED_SYSTEM_UNSPECIFIED",
            "BIGQUERY",
            "CLOUD_PUBSUB",
            "DATAPROC_METASTORE",
            "DATAPLEX",
            "CLOUD_SQL",
            "LOOKER",
          },
          enumDescriptions = {
            "Default unknown system.",
            "BigQuery.",
            "Cloud Pub/Sub.",
            "Dataproc Metastore.",
            "Dataplex.",
            "Cloud Sql",
            "Looker",
          },
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cloud labels attached to the entry. In Data Catalog, you can create and modify labels attached only to custom entries. Synced entries have unmodifiable labels that come from the source system.",
          type = "object",
        },
        linkedResource = {
          description = "The resource this metadata entry refers to. For Google Cloud Platform resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.com/apis/design/resource_names#full_resource_name). For example, the `linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.com/projects/{PROJECT_ID}/datasets/{DATASET_ID}/tables/{TABLE_ID}` Output only when the entry is one of the types in the `EntryType` enum. For entries with a `user_specified_type`, this field is optional and defaults to an empty string. The resource string must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (#). The maximum size is 200 bytes when encoded in UTF-8.",
          type = "string",
        },
        lookerSystemSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1LookerSystemSpec",
          description = "Specification that applies to Looker sysstem. Only settable when `user_specified_system` is equal to `LOOKER`",
        },
        name = {
          description = "Output only. The resource name of an entry in URL format. Note: The entry itself and its child resources might not be stored in the location specified in its name.",
          readOnly = true,
          type = "string",
        },
        personalDetails = {
          ["$ref"] = "GoogleCloudDatacatalogV1PersonalDetails",
          description = "Output only. Additional information related to the entry. Private to the current user.",
          readOnly = true,
        },
        routineSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1RoutineSpec",
          description = "Specification that applies to a user-defined function or procedure. Valid only for entries with the `ROUTINE` type.",
        },
        schema = {
          ["$ref"] = "GoogleCloudDatacatalogV1Schema",
          description = "Schema of the entry. An entry might not have any schema attached to it.",
        },
        sourceSystemTimestamps = {
          ["$ref"] = "GoogleCloudDatacatalogV1SystemTimestamps",
          description = "Timestamps from the underlying resource, not from the Data Catalog entry. Output only when the entry has a system listed in the `IntegratedSystem` enum. For entries with `user_specified_system`, this field is optional and defaults to an empty timestamp.",
        },
        sqlDatabaseSystemSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1SqlDatabaseSystemSpec",
          description = "Specification that applies to a relational database system. Only settable when `user_specified_system` is equal to `SQL_DATABASE`",
        },
        type = {
          description = "The type of the entry. Only used for entries with types listed in the `EntryType` enum. Currently, only `FILESET` enum value is allowed. All other entries created in Data Catalog must use the `user_specified_type`.",
          enum = {
            "ENTRY_TYPE_UNSPECIFIED",
            "TABLE",
            "MODEL",
            "DATA_STREAM",
            "FILESET",
            "CLUSTER",
            "DATABASE",
            "DATA_SOURCE_CONNECTION",
            "ROUTINE",
            "LAKE",
            "ZONE",
            "SERVICE",
            "DATABASE_SCHEMA",
            "DASHBOARD",
            "EXPLORE",
            "LOOK",
          },
          enumDescriptions = {
            "Default unknown type.",
            "The entry type that has a GoogleSQL schema, including logical views.",
            "Output only. The type of models. For more information, see [Supported models in BigQuery ML] (https://cloud.google.com/bigquery-ml/docs/introduction#supported_models_in).",
            "An entry type for streaming entries. For example, a Pub/Sub topic.",
            "An entry type for a set of files or objects. For example, a Cloud Storage fileset.",
            "A group of servers that work together. For example, a Kafka cluster.",
            "A database.",
            "Output only. Connection to a data source. For example, a BigQuery connection.",
            "Output only. Routine, for example, a BigQuery routine.",
            "A Dataplex lake.",
            "A Dataplex zone.",
            "A service, for example, a Dataproc Metastore service.",
            "Schema within a relational database.",
            "A Dashboard, for example from Looker.",
            "A Looker Explore. For more information, see [Looker Explore API] (https://developers.looker.com/api/explorer/4.0/methods/LookmlModel/lookml_model_explore).",
            "A Looker Look. For more information, see [Looker Look API] (https://developers.looker.com/api/explorer/4.0/methods/Look).",
          },
          type = "string",
        },
        usageSignal = {
          ["$ref"] = "GoogleCloudDatacatalogV1UsageSignal",
          description = "Resource usage statistics.",
        },
        userSpecifiedSystem = {
          description = "Indicates the entry's source system that Data Catalog doesn't automatically integrate with. The `user_specified_system` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.",
          type = "string",
        },
        userSpecifiedType = {
          description = "Custom entry type that doesn't match any of the values allowed for input and listed in the `EntryType` enum. When creating an entry, first check the type values in the enum. If there are no appropriate types for the new entry, provide a custom value, for example, `my_special_type`. The `user_specified_type` string has the following limitations: * Is case insensitive. * Must begin with a letter or underscore. * Can only contain letters, numbers, and underscores. * Must be at least 1 character and at most 64 characters long.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1EntryGroup = {
      description = "Entry group metadata. An `EntryGroup` resource represents a logical grouping of zero or more Data Catalog Entry resources.",
      id = "GoogleCloudDatacatalogV1EntryGroup",
      properties = {
        dataCatalogTimestamps = {
          ["$ref"] = "GoogleCloudDatacatalogV1SystemTimestamps",
          description = "Output only. Timestamps of the entry group. Default value is empty.",
          readOnly = true,
        },
        description = {
          description = "Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.",
          type = "string",
        },
        displayName = {
          description = "A short name to identify the entry group, for example, \"analytics data - jan 2011\". Default value is an empty string.",
          type = "string",
        },
        name = {
          description = "The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1EntryOverview = {
      description = "Entry overview fields for rich text descriptions of entries.",
      id = "GoogleCloudDatacatalogV1EntryOverview",
      properties = {
        overview = {
          description = "Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ExportTaxonomiesResponse = {
      description = "Response message for ExportTaxonomies.",
      id = "GoogleCloudDatacatalogV1ExportTaxonomiesResponse",
      properties = {
        taxonomies = {
          description = "List of taxonomies and policy tags as nested protocol buffers.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1SerializedTaxonomy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1FieldType = {
      id = "GoogleCloudDatacatalogV1FieldType",
      properties = {
        enumType = {
          ["$ref"] = "GoogleCloudDatacatalogV1FieldTypeEnumType",
          description = "An enum type.",
        },
        primitiveType = {
          description = "Primitive types, such as string, boolean, etc.",
          enum = {
            "PRIMITIVE_TYPE_UNSPECIFIED",
            "DOUBLE",
            "STRING",
            "BOOL",
            "TIMESTAMP",
            "RICHTEXT",
          },
          enumDescriptions = {
            "The default invalid value for a type.",
            "A double precision number.",
            "An UTF-8 string.",
            "A boolean value.",
            "A timestamp.",
            "A Richtext description.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1FieldTypeEnumType = {
      id = "GoogleCloudDatacatalogV1FieldTypeEnumType",
      properties = {
        allowedValues = {
          description = "The set of allowed values for this enum. This set must not be empty and can include up to 100 allowed values. The display names of the values in this set must not be empty and must be case-insensitively unique within this set. The order of items in this set is preserved. This field can be used to create, remove, and reorder enum values. To rename enum values, use the `RenameTagTemplateFieldEnumValue` method.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue = {
      id = "GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue",
      properties = {
        displayName = {
          description = "Required. The display name of the enum value. Must not be an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1FilesetSpec = {
      description = "Specification that applies to a fileset. Valid only for entries with the 'FILESET' type.",
      id = "GoogleCloudDatacatalogV1FilesetSpec",
      properties = {
        dataplexFileset = {
          ["$ref"] = "GoogleCloudDatacatalogV1DataplexFilesetSpec",
          description = "Fields specific to a Dataplex fileset and present only in the Dataplex fileset entries.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1GcsFileSpec = {
      description = "Specification of a single file in Cloud Storage.",
      id = "GoogleCloudDatacatalogV1GcsFileSpec",
      properties = {
        filePath = {
          description = "Required. Full file path. Example: `gs://bucket_name/a/b.txt`.",
          type = "string",
        },
        gcsTimestamps = {
          ["$ref"] = "GoogleCloudDatacatalogV1SystemTimestamps",
          description = "Output only. Creation, modification, and expiration timestamps of a Cloud Storage file.",
          readOnly = true,
        },
        sizeBytes = {
          description = "Output only. File size in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1GcsFilesetSpec = {
      description = "Describes a Cloud Storage fileset entry.",
      id = "GoogleCloudDatacatalogV1GcsFilesetSpec",
      properties = {
        filePatterns = {
          description = "Required. Patterns to identify a set of files in Google Cloud Storage. For more information, see [Wildcard Names] (https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames). Note: Currently, bucket wildcards are not supported. Examples of valid `file_patterns`: * `gs://bucket_name/dir/*`: matches all files in `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir` and all subdirectories * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt` You can combine wildcards to match complex sets of files, for example: `gs://bucket_name/[a-m]??.j*g`",
          items = {
            type = "string",
          },
          type = "array",
        },
        sampleGcsFileSpecs = {
          description = "Output only. Sample files contained in this fileset, not all files contained in this fileset are represented here.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1GcsFileSpec",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ImportEntriesMetadata = {
      description = "Metadata message for long-running operation returned by the ImportEntries.",
      id = "GoogleCloudDatacatalogV1ImportEntriesMetadata",
      properties = {
        errors = {
          description = "Partial errors that are encountered during the ImportEntries operation. There is no guarantee that all the encountered errors are reported. However, if no errors are reported, it means that no errors were encountered.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        state = {
          description = "State of the import operation.",
          enum = {
            "IMPORT_STATE_UNSPECIFIED",
            "IMPORT_QUEUED",
            "IMPORT_IN_PROGRESS",
            "IMPORT_DONE",
            "IMPORT_OBSOLETE",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The dump with entries has been queued for import.",
            "The import of entries is in progress.",
            "The import of entries has been finished.",
            "The import of entries has been abandoned in favor of a newer request.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ImportEntriesRequest = {
      description = "Request message for ImportEntries method.",
      id = "GoogleCloudDatacatalogV1ImportEntriesRequest",
      properties = {
        gcsBucketPath = {
          description = "Path to a Cloud Storage bucket that contains a dump ready for ingestion.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ImportEntriesResponse = {
      description = "Response message for long-running operation returned by the ImportEntries.",
      id = "GoogleCloudDatacatalogV1ImportEntriesResponse",
      properties = {
        deletedEntriesCount = {
          description = "Number of entries deleted as a result of import operation.",
          format = "int64",
          type = "string",
        },
        upsertedEntriesCount = {
          description = "Cumulative number of entries created and entries updated as a result of import operation.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ImportTaxonomiesRequest = {
      description = "Request message for ImportTaxonomies.",
      id = "GoogleCloudDatacatalogV1ImportTaxonomiesRequest",
      properties = {
        crossRegionalSource = {
          ["$ref"] = "GoogleCloudDatacatalogV1CrossRegionalSource",
          description = "Cross-regional source taxonomy to import.",
        },
        inlineSource = {
          ["$ref"] = "GoogleCloudDatacatalogV1InlineSource",
          description = "Inline source taxonomy to import.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ImportTaxonomiesResponse = {
      description = "Response message for ImportTaxonomies.",
      id = "GoogleCloudDatacatalogV1ImportTaxonomiesResponse",
      properties = {
        taxonomies = {
          description = "Imported taxonomies.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1InlineSource = {
      description = "Inline source containing taxonomies to import.",
      id = "GoogleCloudDatacatalogV1InlineSource",
      properties = {
        taxonomies = {
          description = "Required. Taxonomies to import.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1SerializedTaxonomy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ListEntriesResponse = {
      description = "Response message for ListEntries.",
      id = "GoogleCloudDatacatalogV1ListEntriesResponse",
      properties = {
        entries = {
          description = "Entry details.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1Entry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token of the next results page. Empty if there are no more items in results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ListEntryGroupsResponse = {
      description = "Response message for ListEntryGroups.",
      id = "GoogleCloudDatacatalogV1ListEntryGroupsResponse",
      properties = {
        entryGroups = {
          description = "Entry group details.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1EntryGroup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token to specify in the next call to retrieve the next page of results. Empty if there are no more items.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ListPolicyTagsResponse = {
      description = "Response message for ListPolicyTags.",
      id = "GoogleCloudDatacatalogV1ListPolicyTagsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token of the next results page. Empty if there are no more results in the list.",
          type = "string",
        },
        policyTags = {
          description = "The policy tags that belong to the taxonomy.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1PolicyTag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ListTagsResponse = {
      description = "Response message for ListTags.",
      id = "GoogleCloudDatacatalogV1ListTagsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token of the next results page. Empty if there are no more items in results.",
          type = "string",
        },
        tags = {
          description = "Tag details.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1Tag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ListTaxonomiesResponse = {
      description = "Response message for ListTaxonomies.",
      id = "GoogleCloudDatacatalogV1ListTaxonomiesResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token of the next results page. Empty if there are no more results in the list.",
          type = "string",
        },
        taxonomies = {
          description = "Taxonomies that the project contains.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1Taxonomy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1LookerSystemSpec = {
      description = "Specification that applies to entries that are part `LOOKER` system (user_specified_type)",
      id = "GoogleCloudDatacatalogV1LookerSystemSpec",
      properties = {
        parentInstanceDisplayName = {
          description = "Name of the parent Looker Instance. Empty if it does not exist.",
          type = "string",
        },
        parentInstanceId = {
          description = "ID of the parent Looker Instance. Empty if it does not exist. Example value: `someinstance.looker.com`",
          type = "string",
        },
        parentModelDisplayName = {
          description = "Name of the parent Model. Empty if it does not exist.",
          type = "string",
        },
        parentModelId = {
          description = "ID of the parent Model. Empty if it does not exist.",
          type = "string",
        },
        parentViewDisplayName = {
          description = "Name of the parent View. Empty if it does not exist.",
          type = "string",
        },
        parentViewId = {
          description = "ID of the parent View. Empty if it does not exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ModifyEntryContactsRequest = {
      description = "Request message for ModifyEntryContacts.",
      id = "GoogleCloudDatacatalogV1ModifyEntryContactsRequest",
      properties = {
        contacts = {
          ["$ref"] = "GoogleCloudDatacatalogV1Contacts",
          description = "Required. The new value for the Contacts.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ModifyEntryOverviewRequest = {
      description = "Request message for ModifyEntryOverview.",
      id = "GoogleCloudDatacatalogV1ModifyEntryOverviewRequest",
      properties = {
        entryOverview = {
          ["$ref"] = "GoogleCloudDatacatalogV1EntryOverview",
          description = "Required. The new value for the Entry Overview.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PersonalDetails = {
      description = "Entry metadata relevant only to the user and private to them.",
      id = "GoogleCloudDatacatalogV1PersonalDetails",
      properties = {
        starTime = {
          description = "Set if the entry is starred; unset otherwise.",
          format = "google-datetime",
          type = "string",
        },
        starred = {
          description = "True if the entry is starred by the user; false otherwise.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchema = {
      description = "Native schema used by a resource represented as an entry. Used by query engines for deserializing and parsing source data.",
      id = "GoogleCloudDatacatalogV1PhysicalSchema",
      properties = {
        avro = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema",
          description = "Schema in Avro JSON format.",
        },
        csv = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema",
          description = "Marks a CSV-encoded data source.",
        },
        orc = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema",
          description = "Marks an ORC-encoded data source.",
        },
        parquet = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema",
          description = "Marks a Parquet-encoded data source.",
        },
        protobuf = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema",
          description = "Schema in protocol buffer format.",
        },
        thrift = {
          ["$ref"] = "GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema",
          description = "Schema in Thrift format.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema = {
      description = "Schema in Avro JSON format.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema",
      properties = {
        text = {
          description = "JSON source of the Avro schema.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema = {
      description = "Marks a CSV-encoded data source.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema = {
      description = "Marks an ORC-encoded data source.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema = {
      description = "Marks a Parquet-encoded data source.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema = {
      description = "Schema in protocol buffer format.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema",
      properties = {
        text = {
          description = "Protocol buffer source of the schema.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema = {
      description = "Schema in Thrift format.",
      id = "GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema",
      properties = {
        text = {
          description = "Thrift IDL source of the schema.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1PolicyTag = {
      description = "Denotes one policy tag in a taxonomy, for example, SSN. Policy tags can be defined in a hierarchy. For example: ``` + Geolocation + LatLong + City + ZipCode ``` Where the \"Geolocation\" policy tag contains three children.",
      id = "GoogleCloudDatacatalogV1PolicyTag",
      properties = {
        childPolicyTags = {
          description = "Output only. Resource names of child policy tags of this policy tag.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        description = {
          description = "Description of this policy tag. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns and page breaks, and be at most 2000 bytes long when encoded in UTF-8.",
          type = "string",
        },
        displayName = {
          description = "Required. User-defined name of this policy tag. The name can't start or end with spaces and must be unique within the parent taxonomy, contain only Unicode letters, numbers, underscores, dashes and spaces, and be at most 200 bytes long when encoded in UTF-8.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of this policy tag in the URL format. The policy tag manager generates unique taxonomy IDs and policy tag IDs.",
          readOnly = true,
          type = "string",
        },
        parentPolicyTag = {
          description = "Resource name of this policy tag's parent policy tag. If empty, this is a top level tag. If not set, defaults to an empty string. For example, for the \"LatLong\" policy tag in the example above, this field contains the resource name of the \"Geolocation\" policy tag, and, for \"Geolocation\", this field is empty.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest = {
      description = "Request message for RenameTagTemplateFieldEnumValue.",
      id = "GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest",
      properties = {
        newEnumValueDisplayName = {
          description = "Required. The new display name of the enum value. For example, `my_new_enum_value`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest = {
      description = "Request message for RenameTagTemplateField.",
      id = "GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest",
      properties = {
        newTagTemplateFieldId = {
          description = "Required. The new ID of this tag template field. For example, `my_new_field`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ReplaceTaxonomyRequest = {
      description = "Request message for ReplaceTaxonomy.",
      id = "GoogleCloudDatacatalogV1ReplaceTaxonomyRequest",
      properties = {
        serializedTaxonomy = {
          ["$ref"] = "GoogleCloudDatacatalogV1SerializedTaxonomy",
          description = "Required. Taxonomy to update along with its child policy tags.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1RoutineSpec = {
      description = "Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.",
      id = "GoogleCloudDatacatalogV1RoutineSpec",
      properties = {
        bigqueryRoutineSpec = {
          ["$ref"] = "GoogleCloudDatacatalogV1BigQueryRoutineSpec",
          description = "Fields specific for BigQuery routines.",
        },
        definitionBody = {
          description = "The body of the routine.",
          type = "string",
        },
        language = {
          description = "The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`",
          type = "string",
        },
        returnType = {
          description = "Return type of the argument. The exact value depends on the source system and the language.",
          type = "string",
        },
        routineArguments = {
          description = "Arguments of the routine.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1RoutineSpecArgument",
          },
          type = "array",
        },
        routineType = {
          description = "The type of the routine.",
          enum = {
            "ROUTINE_TYPE_UNSPECIFIED",
            "SCALAR_FUNCTION",
            "PROCEDURE",
          },
          enumDescriptions = {
            "Unspecified type.",
            "Non-builtin permanent scalar function.",
            "Stored procedure.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1RoutineSpecArgument = {
      description = "Input or output argument of a function or stored procedure.",
      id = "GoogleCloudDatacatalogV1RoutineSpecArgument",
      properties = {
        mode = {
          description = "Specifies whether the argument is input or output.",
          enum = {
            "MODE_UNSPECIFIED",
            "IN",
            "OUT",
            "INOUT",
          },
          enumDescriptions = {
            "Unspecified mode.",
            "The argument is input-only.",
            "The argument is output-only.",
            "The argument is both an input and an output.",
          },
          type = "string",
        },
        name = {
          description = "The name of the argument. A return argument of a function might not have a name.",
          type = "string",
        },
        type = {
          description = "Type of the argument. The exact value depends on the source system and the language.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1Schema = {
      description = "Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.",
      id = "GoogleCloudDatacatalogV1Schema",
      properties = {
        columns = {
          description = "The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested columns is 10,000. The maximum nested depth is 15 levels.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1ColumnSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SearchCatalogRequest = {
      description = "Request message for SearchCatalog.",
      id = "GoogleCloudDatacatalogV1SearchCatalogRequest",
      properties = {
        orderBy = {
          description = "Specifies the order of results. Currently supported case-sensitive values are: * `relevance` that can only be descending * `last_modified_timestamp [asc|desc]` with descending (`desc`) as default * `default` that can only be descending If this parameter is omitted, it defaults to the descending `relevance`.",
          type = "string",
        },
        pageSize = {
          description = "Number of results to return in a single search page. Can't be negative or 0, defaults to 10 in this case. The maximum number is 1000. If exceeded, throws an \"invalid argument\" exception.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. Pagination token that, if specified, returns the next page of search results. If empty, returns the first page. This token is returned in the SearchCatalogResponse.next_page_token field of the response to a previous SearchCatalogRequest call.",
          type = "string",
        },
        query = {
          description = "Optional. The query string with a minimum of 3 characters and specific syntax. For more information, see [Data Catalog search syntax](https://cloud.google.com/data-catalog/docs/how-to/search-reference). An empty query string returns all data assets (in the specified scope) that you have access to. A query string can be a simple `xyz` or qualified by predicates: * `name:x` * `column:y` * `description:z`",
          type = "string",
        },
        scope = {
          ["$ref"] = "GoogleCloudDatacatalogV1SearchCatalogRequestScope",
          description = "Required. The scope of this search request. The `scope` is invalid if `include_org_ids`, `include_project_ids` are empty AND `include_gcp_public_datasets` is set to `false`. In this case, the request returns an error.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SearchCatalogRequestScope = {
      description = "The criteria that select the subspace used for query matching.",
      id = "GoogleCloudDatacatalogV1SearchCatalogRequestScope",
      properties = {
        includeGcpPublicDatasets = {
          description = "If `true`, include Google Cloud Platform (GCP) public datasets in search results. By default, they are excluded. See [Google Cloud Public Datasets](/public-datasets) for more information.",
          type = "boolean",
        },
        includeOrgIds = {
          description = "The list of organization IDs to search within. To find your organization ID, follow the steps from [Creating and managing organizations] (/resource-manager/docs/creating-managing-organization).",
          items = {
            type = "string",
          },
          type = "array",
        },
        includeProjectIds = {
          description = "The list of project IDs to search within. For more information on the distinction between project names, IDs, and numbers, see [Projects](/docs/overview/#projects).",
          items = {
            type = "string",
          },
          type = "array",
        },
        includePublicTagTemplates = {
          description = "Optional. This field is deprecated. The search mechanism for public and private tag templates is the same.",
          type = "boolean",
        },
        restrictedLocations = {
          description = "Optional. The list of locations to search within. If empty, all locations are searched. Returns an error if any location in the list isn't one of the [Supported regions](https://cloud.google.com/data-catalog/docs/concepts/regions#supported_regions). If a location is unreachable, its name is returned in the `SearchCatalogResponse.unreachable` field. To get additional information on the error, repeat the search request and set the location name as the value of this parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        starredOnly = {
          description = "Optional. If `true`, search only among starred entries. By default, all results are returned, starred or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SearchCatalogResponse = {
      description = "Response message for SearchCatalog.",
      id = "GoogleCloudDatacatalogV1SearchCatalogResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token that can be used in subsequent calls to retrieve the next page of results.",
          type = "string",
        },
        results = {
          description = "Search results.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1SearchCatalogResult",
          },
          type = "array",
        },
        unreachable = {
          description = "Unreachable locations. Search results don't include data from those locations. To get additional information on an error, repeat the search request and restrict it to specific locations by setting the `SearchCatalogRequest.scope.restricted_locations` parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SearchCatalogResult = {
      description = "Result in the response to a search request. Each result captures details of one entry that matches the search.",
      id = "GoogleCloudDatacatalogV1SearchCatalogResult",
      properties = {
        description = {
          description = "Entry description that can consist of several sentences or paragraphs that describe entry contents.",
          type = "string",
        },
        displayName = {
          description = "The display name of the result.",
          type = "string",
        },
        fullyQualifiedName = {
          description = "Fully qualified name (FQN) of the resource. FQNs take two forms: * For non-regionalized resources: `{SYSTEM}:{PROJECT}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` * For regionalized resources: `{SYSTEM}:{PROJECT}.{LOCATION_ID}.{PATH_TO_RESOURCE_SEPARATED_WITH_DOTS}` Example for a DPMS table: `dataproc_metastore:PROJECT_ID.LOCATION_ID.INSTANCE_ID.DATABASE_ID.TABLE_ID`",
          type = "string",
        },
        integratedSystem = {
          description = "Output only. The source system that Data Catalog automatically integrates with, such as BigQuery, Cloud Pub/Sub, or Dataproc Metastore.",
          enum = {
            "INTEGRATED_SYSTEM_UNSPECIFIED",
            "BIGQUERY",
            "CLOUD_PUBSUB",
            "DATAPROC_METASTORE",
            "DATAPLEX",
            "CLOUD_SQL",
            "LOOKER",
          },
          enumDescriptions = {
            "Default unknown system.",
            "BigQuery.",
            "Cloud Pub/Sub.",
            "Dataproc Metastore.",
            "Dataplex.",
            "Cloud Sql",
            "Looker",
          },
          readOnly = true,
          type = "string",
        },
        linkedResource = {
          description = "The full name of the Google Cloud resource the entry belongs to. For more information, see [Full Resource Name] (/apis/design/resource_names#full_resource_name). Example: `//bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID`",
          type = "string",
        },
        modifyTime = {
          description = "The last modification timestamp of the entry in the source system.",
          format = "google-datetime",
          type = "string",
        },
        relativeResourceName = {
          description = "The relative name of the resource in URL format. Examples: * `projects/{PROJECT_ID}/locations/{LOCATION_ID}/entryGroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}` * `projects/{PROJECT_ID}/tagTemplates/{TAG_TEMPLATE_ID}`",
          type = "string",
        },
        searchResultSubtype = {
          description = "Sub-type of the search result. A dot-delimited full type of the resource. The same type you specify in the `type` search predicate. Examples: `entry.table`, `entry.dataStream`, `tagTemplate`.",
          type = "string",
        },
        searchResultType = {
          description = "Type of the search result. You can use this field to determine which get method to call to fetch the full resource.",
          enum = {
            "SEARCH_RESULT_TYPE_UNSPECIFIED",
            "ENTRY",
            "TAG_TEMPLATE",
            "ENTRY_GROUP",
          },
          enumDescriptions = {
            "Default unknown type.",
            "An Entry.",
            "A TagTemplate.",
            "An EntryGroup.",
          },
          type = "string",
        },
        userSpecifiedSystem = {
          description = "Custom source system that you can manually integrate Data Catalog with.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SerializedPolicyTag = {
      description = "A nested protocol buffer that represents a policy tag and all its descendants.",
      id = "GoogleCloudDatacatalogV1SerializedPolicyTag",
      properties = {
        childPolicyTags = {
          description = "Children of the policy tag, if any.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1SerializedPolicyTag",
          },
          type = "array",
        },
        description = {
          description = "Description of the serialized policy tag. At most 2000 bytes when encoded in UTF-8. If not set, defaults to an empty description.",
          type = "string",
        },
        displayName = {
          description = "Required. Display name of the policy tag. At most 200 bytes when encoded in UTF-8.",
          type = "string",
        },
        policyTag = {
          description = "Resource name of the policy tag. This field is ignored when calling `ImportTaxonomies`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SerializedTaxonomy = {
      description = "A nested protocol buffer that represents a taxonomy and the hierarchy of its policy tags. Used for taxonomy replacement, import, and export.",
      id = "GoogleCloudDatacatalogV1SerializedTaxonomy",
      properties = {
        activatedPolicyTypes = {
          description = "A list of policy types that are activated per taxonomy.",
          items = {
            enum = {
              "POLICY_TYPE_UNSPECIFIED",
              "FINE_GRAINED_ACCESS_CONTROL",
            },
            enumDescriptions = {
              "Unspecified policy type.",
              "Fine-grained access control policy that enables access control on tagged sub-resources.",
            },
            type = "string",
          },
          type = "array",
        },
        description = {
          description = "Description of the serialized taxonomy. At most 2000 bytes when encoded in UTF-8. If not set, defaults to an empty description.",
          type = "string",
        },
        displayName = {
          description = "Required. Display name of the taxonomy. At most 200 bytes when encoded in UTF-8.",
          type = "string",
        },
        policyTags = {
          description = "Top level policy tags associated with the taxonomy, if any.",
          items = {
            ["$ref"] = "GoogleCloudDatacatalogV1SerializedPolicyTag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SqlDatabaseSystemSpec = {
      description = "Specification that applies to entries that are part `SQL_DATABASE` system (user_specified_type)",
      id = "GoogleCloudDatacatalogV1SqlDatabaseSystemSpec",
      properties = {
        databaseVersion = {
          description = "Version of the database engine.",
          type = "string",
        },
        instanceHost = {
          description = "Host of the SQL database enum InstanceHost { UNDEFINED = 0; SELF_HOSTED = 1; CLOUD_SQL = 2; AMAZON_RDS = 3; AZURE_SQL = 4; } Host of the enclousing database instance.",
          type = "string",
        },
        sqlEngine = {
          description = "SQL Database Engine. enum SqlEngine { UNDEFINED = 0; MY_SQL = 1; POSTGRE_SQL = 2; SQL_SERVER = 3; } Engine of the enclosing database instance.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1StarEntryRequest = {
      description = "Request message for StarEntry.",
      id = "GoogleCloudDatacatalogV1StarEntryRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1StarEntryResponse = {
      description = "Response message for StarEntry. Empty for now",
      id = "GoogleCloudDatacatalogV1StarEntryResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1StorageProperties = {
      description = "Details the properties of the underlying storage.",
      id = "GoogleCloudDatacatalogV1StorageProperties",
      properties = {
        filePattern = {
          description = "Patterns to identify a set of files for this fileset. Examples of a valid `file_pattern`: * `gs://bucket_name/dir/*`: matches all files in the `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in the `bucket_name/dir` and all subdirectories recursively * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileType = {
          description = "File type in MIME format, for example, `text/plain`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1SystemTimestamps = {
      description = "Timestamps associated with this resource in a particular system.",
      id = "GoogleCloudDatacatalogV1SystemTimestamps",
      properties = {
        createTime = {
          description = "Creation timestamp of the resource within the given system.",
          format = "google-datetime",
          type = "string",
        },
        expireTime = {
          description = "Output only. Expiration timestamp of the resource within the given system. Currently only applicable to BigQuery resources.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Timestamp of the last modification of the resource or its metadata within a given system. Note: Depending on the source system, not every modification updates this timestamp. For example, BigQuery timestamps every metadata modification but not data or permission changes.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1TableSpec = {
      description = "Normal BigQuery table specification.",
      id = "GoogleCloudDatacatalogV1TableSpec",
      properties = {
        groupedEntry = {
          description = "Output only. If the table is date-sharded, that is, it matches the `[prefix]YYYYMMDD` name pattern, this field is the Data Catalog resource name of the date-sharded grouped entry. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`. Otherwise, `grouped_entry` is empty.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1Tag = {
      description = "Tags contain custom metadata and are attached to Data Catalog resources. Tags conform with the specification of their tag template. See [Data Catalog IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for information on the permissions needed to create or view tags.",
      id = "GoogleCloudDatacatalogV1Tag",
      properties = {
        column = {
          description = "Resources like entry can have schemas associated with them. This scope allows you to attach tags to an individual column based on that schema. To attach a tag to a nested column, separate column names with a dot (`.`). Example: `column.nested_column`.",
          type = "string",
        },
        fields = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDatacatalogV1TagField",
          },
          description = "Required. Maps the ID of a tag field to its value and additional information about that field. Tag template defines valid field IDs. A tag must have at least 1 field and at most 500 fields.",
          type = "object",
        },
        name = {
          description = "The resource name of the tag in URL format where tag ID is a system-generated identifier. Note: The tag itself might not be stored in the location specified in its name.",
          type = "string",
        },
        template = {
          description = "Required. The resource name of the tag template this tag uses. Example: `projects/{PROJECT_ID}/locations/{LOCATION}/tagTemplates/{TAG_TEMPLATE_ID}` This field cannot be modified after creation.",
          type = "string",
        },
        templateDisplayName = {
          description = "Output only. The display name of the tag template.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1TagField = {
      description = "Contains the value and additional information on a field within a Tag.",
      id = "GoogleCloudDatacatalogV1TagField",
      properties = {
        boolValue = {
          description = "The value of a tag field with a boolean type.",
          type = "boolean",
        },
        displayName = {
          description = "Output only. The display name of this field.",
          readOnly = true,
          type = "string",
        },
        doubleValue = {
          description = "The value of a tag field with a double type.",
          format = "double",
          type = "number",
        },
        enumValue = {
          ["$ref"] = "GoogleCloudDatacatalogV1TagFieldEnumValue",
          description = "The value of a tag field with an enum type. This value must be one of the allowed values listed in this enum.",
        },
        order = {
          description = "Output only. The order of this field with respect to other fields in this tag. Can be set by Tag. For example, a higher value can indicate a more important field. The value can be negative. Multiple fields can have the same order, and field orders within a tag don't have to be sequential.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        richtextValue = {
          description = "The value of a tag field with a rich text type. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.",
          type = "string",
        },
        stringValue = {
          description = "The value of a tag field with a string type. The maximum length is 2000 UTF-8 characters.",
          type = "string",
        },
        timestampValue = {
          description = "The value of a tag field with a timestamp type.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1TagFieldEnumValue = {
      description = "An enum value.",
      id = "GoogleCloudDatacatalogV1TagFieldEnumValue",
      properties = {
        displayName = {
          description = "The display name of the enum value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1TagTemplate = {
      description = "A tag template defines a tag that can have one or more typed fields. The template is used to create tags that are attached to GCP resources. [Tag template roles] (https://cloud.google.com/iam/docs/understanding-roles#data-catalog-roles) provide permissions to create, edit, and use the template. For example, see the [TagTemplate User] (https://cloud.google.com/data-catalog/docs/how-to/template-user) role that includes a permission to use the tag template to tag resources.",
      id = "GoogleCloudDatacatalogV1TagTemplate",
      properties = {
        displayName = {
          description = "Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.",
          type = "string",
        },
        fields = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDatacatalogV1TagTemplateField",
          },
          description = "Required. Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.",
          type = "object",
        },
        isPubliclyReadable = {
          description = "Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.",
          type = "boolean",
        },
        name = {
          description = "The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1TagTemplateField = {
      description = "The template for an individual field within a tag template.",
      id = "GoogleCloudDatacatalogV1TagTemplateField",
      properties = {
        description = {
          description = "The description for this field. Defaults to an empty string.",
          type = "string",
        },
        displayName = {
          description = "The display name for this field. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.",
          type = "string",
        },
        isRequired = {
          description = "If true, this field is required. Defaults to false.",
          type = "boolean",
        },
        name = {
          description = "Output only. The resource name of the tag template field in URL format. Example: `projects/{PROJECT_ID}/locations/{LOCATION}/tagTemplates/{TAG_TEMPLATE}/fields/{FIELD}` Note: The tag template field itself might not be stored in the location specified in its name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 64 characters.",
          readOnly = true,
          type = "string",
        },
        order = {
          description = "The order of this field with respect to other fields in this tag template. For example, a higher value can indicate a more important field. The value can be negative. Multiple fields can have the same order and field orders within a tag don't have to be sequential.",
          format = "int32",
          type = "integer",
        },
        type = {
          ["$ref"] = "GoogleCloudDatacatalogV1FieldType",
          description = "Required. The type of value this tag field can contain.",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1Taxonomy = {
      description = "A taxonomy is a collection of hierarchical policy tags that classify data along a common axis. For example, a \"data sensitivity\" taxonomy might contain the following policy tags: ``` + PII + Account number + Age + SSN + Zipcode + Financials + Revenue ``` A \"data origin\" taxonomy might contain the following policy tags: ``` + User data + Employee data + Partner data + Public data ```",
      id = "GoogleCloudDatacatalogV1Taxonomy",
      properties = {
        activatedPolicyTypes = {
          description = "Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.",
          items = {
            enum = {
              "POLICY_TYPE_UNSPECIFIED",
              "FINE_GRAINED_ACCESS_CONTROL",
            },
            enumDescriptions = {
              "Unspecified policy type.",
              "Fine-grained access control policy that enables access control on tagged sub-resources.",
            },
            type = "string",
          },
          type = "array",
        },
        description = {
          description = "Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.",
          type = "string",
        },
        displayName = {
          description = "Required. User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs.",
          readOnly = true,
          type = "string",
        },
        policyTagCount = {
          description = "Output only. Number of policy tags in this taxonomy.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        taxonomyTimestamps = {
          ["$ref"] = "GoogleCloudDatacatalogV1SystemTimestamps",
          description = "Output only. Creation and modification timestamps of this taxonomy.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1UnstarEntryRequest = {
      description = "Request message for UnstarEntry.",
      id = "GoogleCloudDatacatalogV1UnstarEntryRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1UnstarEntryResponse = {
      description = "Response message for UnstarEntry. Empty for now",
      id = "GoogleCloudDatacatalogV1UnstarEntryResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDatacatalogV1UsageSignal = {
      description = "The set of all usage signals that Data Catalog stores. Note: Usually, these signals are updated daily. In rare cases, an update may fail but will be performed again on the next day.",
      id = "GoogleCloudDatacatalogV1UsageSignal",
      properties = {
        commonUsageWithinTimeRange = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDatacatalogV1CommonUsageStats",
          },
          description = "Common usage statistics over each of the predefined time ranges. Supported time ranges are `{\"24H\", \"7D\", \"30D\", \"Lifetime\"}`.",
          type = "object",
        },
        favoriteCount = {
          description = "Favorite count in the source system.",
          format = "int64",
          type = "string",
        },
        updateTime = {
          description = "The end timestamp of the duration of usage statistics.",
          format = "google-datetime",
          type = "string",
        },
        usageWithinTimeRange = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDatacatalogV1UsageStats",
          },
          description = "Output only. BigQuery usage statistics over each of the predefined time ranges. Supported time ranges are `{\"24H\", \"7D\", \"30D\"}`.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1UsageStats = {
      description = "Detailed statistics on the entry's usage. Usage statistics have the following limitations: - Only BigQuery tables have them. - They only include BigQuery query jobs. - They might be underestimated because wildcard table references are not yet counted. For more information, see [Querying multiple tables using a wildcard table] (https://cloud.google.com/bigquery/docs/querying-wildcard-tables)",
      id = "GoogleCloudDatacatalogV1UsageStats",
      properties = {
        totalCancellations = {
          description = "The number of cancelled attempts to use the underlying entry.",
          format = "float",
          type = "number",
        },
        totalCompletions = {
          description = "The number of successful uses of the underlying entry.",
          format = "float",
          type = "number",
        },
        totalExecutionTimeForCompletionsMillis = {
          description = "Total time spent only on successful uses, in milliseconds.",
          format = "float",
          type = "number",
        },
        totalFailures = {
          description = "The number of failed attempts to use the underlying entry.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDatacatalogV1ViewSpec = {
      description = "Table view specification.",
      id = "GoogleCloudDatacatalogV1ViewSpec",
      properties = {
        viewQuery = {
          description = "Output only. The query that defines the table view.",
          readOnly = true,
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
  },
  servicePath = "",
  title = "Google Cloud Data Catalog API",
  version = "v1",
  version_module = true,
}