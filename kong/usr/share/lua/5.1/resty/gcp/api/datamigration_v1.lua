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
  baseUrl = "https://datamigration.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Database Migration Service",
  description = "Manage Cloud Database Migration Service resources on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/database-migration/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datamigration:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datamigration.mtls.googleapis.com/",
  name = "datamigration",
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
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "datamigration.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "datamigration.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            connectionProfiles = {
              methods = {
                create = {
                  description = "Creates a new connection profile in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.connectionProfiles.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    connectionProfileId = {
                      description = "Required. The connection profile identifier.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of connection profiles.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    skipValidation = {
                      description = "Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.",
                      location = "query",
                      type = "boolean",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the connection profile, but don't create any resources. The default is false. Only supported for Oracle connection profiles.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/connectionProfiles",
                  request = {
                    ["$ref"] = "ConnectionProfile",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Database Migration Service connection profile. A connection profile can only be deleted if it is not in use by any active migration jobs.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "DELETE",
                  id = "datamigration.projects.locations.connectionProfiles.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "In case of force delete, the CloudSQL replica database is also deleted (only for CloudSQL connection profile).",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Name of the connection profile resource to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
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
                get = {
                  description = "Gets details of a single connection profile.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.connectionProfiles.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the connection profile resource to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ConnectionProfile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.connectionProfiles.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Retrieves a list of all connection profiles in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.connectionProfiles.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters connection profiles listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <. For example, list connection profiles created this year by specifying **createTime %gt; 2020-01-01T00:00:00.000000000Z**. You can also filter nested fields. For example, you could specify **mySql.username = %lt;my_username%gt;** to list all connection profiles configured to connect with a specific username.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A comma-separated list of fields to order results according to.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of connection profiles to return. The service may return fewer than this value. If unspecified, at most 50 connection profiles will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListConnectionProfiles` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListConnectionProfiles` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of connection profiles.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/connectionProfiles",
                  response = {
                    ["$ref"] = "ListConnectionProfilesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update the configuration of a single connection profile.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "PATCH",
                  id = "datamigration.projects.locations.connectionProfiles.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    skipValidation = {
                      description = "Optional. Update the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.",
                      location = "query",
                      type = "boolean",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the connection profile resource by the update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the connection profile, but don't update any resources. The default is false. Only supported for Oracle connection profiles.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "ConnectionProfile",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.connectionProfiles.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.connectionProfiles.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
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
            conversionWorkspaces = {
              methods = {
                apply = {
                  description = "Apply draft tree onto a specific destination database",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:apply",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.apply",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the conversion workspace resource to apply draft to destination for. in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:apply",
                  request = {
                    ["$ref"] = "ApplyConversionWorkspaceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                commit = {
                  description = "Marks all the data in the conversion workspace as committed.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:commit",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.commit",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the conversion workspace resource to commit.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:commit",
                  request = {
                    ["$ref"] = "CommitConversionWorkspaceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                convert = {
                  description = "Creates a draft tree schema for the destination database.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:convert",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.convert",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the conversion workspace resource to convert in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:convert",
                  request = {
                    ["$ref"] = "ConvertConversionWorkspaceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new conversion workspace in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    conversionWorkspaceId = {
                      description = "Required. The ID of the conversion workspace to create.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of conversion workspaces.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversionWorkspaces",
                  request = {
                    ["$ref"] = "ConversionWorkspace",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single conversion workspace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}",
                  httpMethod = "DELETE",
                  id = "datamigration.projects.locations.conversionWorkspaces.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the conversion workspace resource to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
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
                describeConversionWorkspaceRevisions = {
                  description = "Retrieves a list of committed revisions of a specific conversion workspace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:describeConversionWorkspaceRevisions",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.conversionWorkspaces.describeConversionWorkspaceRevisions",
                  parameterOrder = {
                    "conversionWorkspace",
                  },
                  parameters = {
                    commitId = {
                      description = "Optional. Optional filter to request a specific commit id",
                      location = "query",
                      type = "string",
                    },
                    conversionWorkspace = {
                      description = "Required. Name of the conversion workspace resource whose revisions are listed. in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+conversionWorkspace}:describeConversionWorkspaceRevisions",
                  response = {
                    ["$ref"] = "DescribeConversionWorkspaceRevisionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                describeDatabaseEntities = {
                  description = "Use this method to describe the database entities tree for a specific conversion workspace and a specific tree type. The DB Entities are not a resource like conversion workspace or mapping rule, and they can not be created, updated or deleted like one. Instead they are simple data objects describing the structure of the client database.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:describeDatabaseEntities",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.conversionWorkspaces.describeDatabaseEntities",
                  parameterOrder = {
                    "conversionWorkspace",
                  },
                  parameters = {
                    commitId = {
                      description = "Request a specific commit id. If not specified, the entities from the latest commit are returned.",
                      location = "query",
                      type = "string",
                    },
                    conversionWorkspace = {
                      description = "Required. Name of the conversion workspace resource whose DB entities are described in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    filter = {
                      description = "Filter the returned entities based on AIP-160 standard",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of entities to return. The service may return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The nextPageToken value received in the previous call to conversionWorkspace.describeDatabaseEntities, used in the subsequent request to retrieve the next page of results. On first call this should be left blank. When paginating, all other parameters provided to conversionWorkspace.describeDatabaseEntities must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    tree = {
                      description = "The tree to fetch",
                      enum = {
                        "DB_TREE_TYPE_UNSPECIFIED",
                        "SOURCE_TREE",
                        "DRAFT_TREE",
                        "DESTINATION_TREE",
                      },
                      enumDescriptions = {
                        "Unspecified tree type",
                        "The source database tree",
                        "The draft database tree",
                        "The destination database tree",
                      },
                      location = "query",
                      type = "string",
                    },
                    uncommitted = {
                      description = "Whether to retrieve the latest committed version of the entities or the latest version. This field is ignored if a specific commit_id is specified.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+conversionWorkspace}:describeDatabaseEntities",
                  response = {
                    ["$ref"] = "DescribeDatabaseEntitiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single conversion workspace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.conversionWorkspaces.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the conversion workspace resource to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ConversionWorkspace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists conversion workspaces in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.conversionWorkspaces.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters conversion workspaces listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <. For example, list conversion workspaces created this year by specifying **createTime %gt; 2020-01-01T00:00:00.000000000Z.** You can also filter nested fields. For example, you could specify **source.version = \"12.c.1\"** to select all conversion workspaces with source database version equal to 12.c.1",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of conversion workspaces to return. The service may return fewer than this value. If unspecified, at most 50 sets will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The nextPageToken value received in the previous call to conversionWorkspaces.list, used in the subsequent request to retrieve the next page of results. On first call this should be left blank. When paginating, all other parameters provided to conversionWorkspaces.list must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of conversion workspaces.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/conversionWorkspaces",
                  response = {
                    ["$ref"] = "ListConversionWorkspacesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single conversion workspace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}",
                  httpMethod = "PATCH",
                  id = "datamigration.projects.locations.conversionWorkspaces.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the conversion workspace resource by the update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "ConversionWorkspace",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                rollback = {
                  description = "Rollbacks a conversion workspace to the last committed spanshot.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:rollback",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.rollback",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the conversion workspace resource to rollback to.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:rollback",
                  request = {
                    ["$ref"] = "RollbackConversionWorkspaceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                searchBackgroundJobs = {
                  description = "Use this method to search/list the background jobs for a specific conversion workspace. The background jobs are not a resource like conversion workspace or mapping rule, and they can not be created, updated or deleted like one. Instead they are a way to expose the data plane jobs log.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:searchBackgroundJobs",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.conversionWorkspaces.searchBackgroundJobs",
                  parameterOrder = {
                    "conversionWorkspace",
                  },
                  parameters = {
                    completedUntilTime = {
                      description = "Optional. If supplied, will only return jobs that completed until (not including) the given timestamp.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    conversionWorkspace = {
                      description = "Required. Name of the conversion workspace resource whos jobs are listed. in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    maxSize = {
                      description = "Optional. The maximum number of jobs to return. The service may return fewer than this value. If unspecified, at most 100 jobs will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    returnMostRecentPerJobType = {
                      description = "Optional. Whether or not to return just the most recent job per job type",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+conversionWorkspace}:searchBackgroundJobs",
                  response = {
                    ["$ref"] = "SearchBackgroundJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                seed = {
                  description = "Imports a snapshot of the source database into the conversion workspace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}:seed",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.conversionWorkspaces.seed",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the conversion workspace resource to seed with new database structure. in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:seed",
                  request = {
                    ["$ref"] = "SeedConversionWorkspaceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                mappingRules = {
                  methods = {
                    import = {
                      description = "Imports the mapping rules for a given conversion workspace. Supports various formats of external rules files.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/conversionWorkspaces/{conversionWorkspacesId}/mappingRules:import",
                      httpMethod = "POST",
                      id = "datamigration.projects.locations.conversionWorkspaces.mappingRules.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name of the conversion workspace resource to import the rules to in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/conversionWorkspaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/mappingRules:import",
                      request = {
                        ["$ref"] = "ImportMappingRulesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            migrationJobs = {
              methods = {
                create = {
                  description = "Creates a new migration job in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    migrationJobId = {
                      description = "Required. The ID of the instance to create.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of migration jobs.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/migrationJobs",
                  request = {
                    ["$ref"] = "MigrationJob",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single migration job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}",
                  httpMethod = "DELETE",
                  id = "datamigration.projects.locations.migrationJobs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "The destination CloudSQL connection profile is always deleted with the migration job. In case of force delete, the destination CloudSQL replica database is also deleted.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Name of the migration job resource to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
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
                generateSshScript = {
                  description = "Generate a SSH configuration script to configure the reverse SSH connectivity.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:generateSshScript",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.generateSshScript",
                  parameterOrder = {
                    "migrationJob",
                  },
                  parameters = {
                    migrationJob = {
                      description = "Name of the migration job resource to generate the SSH script.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+migrationJob}:generateSshScript",
                  request = {
                    ["$ref"] = "GenerateSshScriptRequest",
                  },
                  response = {
                    ["$ref"] = "SshScript",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single migration job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.migrationJobs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the migration job resource to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "MigrationJob",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.migrationJobs.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists migration jobs in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.migrationJobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters migration jobs listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <. For example, list migration jobs created this year by specifying **createTime %gt; 2020-01-01T00:00:00.000000000Z.** You can also filter nested fields. For example, you could specify **reverseSshConnectivity.vmIp = \"1.2.3.4\"** to select all migration jobs connecting through the specific SSH tunnel bastion.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort the results based on the migration job name. Valid values are: \"name\", \"name asc\", and \"name desc\".",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of migration jobs to return. The service may return fewer than this value. If unspecified, at most 50 migration jobs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The nextPageToken value received in the previous call to migrationJobs.list, used in the subsequent request to retrieve the next page of results. On first call this should be left blank. When paginating, all other parameters provided to migrationJobs.list must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of migrationJobs.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/migrationJobs",
                  response = {
                    ["$ref"] = "ListMigrationJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single migration job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}",
                  httpMethod = "PATCH",
                  id = "datamigration.projects.locations.migrationJobs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the migration job resource by the update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "MigrationJob",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                promote = {
                  description = "Promote a migration job, stopping replication to the destination and promoting the destination to be a standalone database.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:promote",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.promote",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to promote.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:promote",
                  request = {
                    ["$ref"] = "PromoteMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                restart = {
                  description = "Restart a stopped or failed migration job, resetting the destination instance to its original state and starting the migration process from scratch.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:restart",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.restart",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to restart.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:restart",
                  request = {
                    ["$ref"] = "RestartMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resume = {
                  description = "Resume a migration job that is currently stopped and is resumable (was stopped during CDC phase).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:resume",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.resume",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to resume.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:resume",
                  request = {
                    ["$ref"] = "ResumeMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
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
                start = {
                  description = "Start an already created migration job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:start",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.start",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to start.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:start",
                  request = {
                    ["$ref"] = "StartMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stops a running migration job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:stop",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to stop.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
                  request = {
                    ["$ref"] = "StopMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
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
                verify = {
                  description = "Verify a migration job, making sure the destination can reach the source and that all configuration and prerequisites are met.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/migrationJobs/{migrationJobsId}:verify",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.migrationJobs.verify",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the migration job resource to verify.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/migrationJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:verify",
                  request = {
                    ["$ref"] = "VerifyMigrationJobRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
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
                  id = "datamigration.projects.locations.operations.cancel",
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
                    ["$ref"] = "CancelOperationRequest",
                  },
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
                  id = "datamigration.projects.locations.operations.delete",
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
                  id = "datamigration.projects.locations.operations.get",
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
                  id = "datamigration.projects.locations.operations.list",
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
            privateConnections = {
              methods = {
                create = {
                  description = "Creates a new private connection in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections",
                  httpMethod = "POST",
                  id = "datamigration.projects.locations.privateConnections.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent that owns the collection of PrivateConnections.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    privateConnectionId = {
                      description = "Required. The private connection identifier.",
                      location = "query",
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
                      type = "string",
                    },
                    skipValidation = {
                      description = "Optional. If set to true, will skip validations.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/privateConnections",
                  request = {
                    ["$ref"] = "PrivateConnection",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Database Migration Service private connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}",
                  httpMethod = "DELETE",
                  id = "datamigration.projects.locations.privateConnections.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the private connection to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.",
                      location = "query",
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
                get = {
                  description = "Gets details of a single private connection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.privateConnections.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the private connection to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "PrivateConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Retrieves a list of private connections in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections",
                  httpMethod = "GET",
                  id = "datamigration.projects.locations.privateConnections.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters private connections listed in the response. The expression must specify the field name, a comparison operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The comparison operator must be either =, !=, >, or <. For example, list private connections created this year by specifying **createTime %gt; 2021-01-01T00:00:00.000000000Z**.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of private connections to return. If unspecified, at most 50 private connections that will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token received from a previous `ListPrivateConnections` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPrivateConnections` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of private connections.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/privateConnections",
                  response = {
                    ["$ref"] = "ListPrivateConnectionsResponse",
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
  rootUrl = "https://datamigration.googleapis.com/",
  schemas = {
    AlloyDbConnectionProfile = {
      description = "Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.",
      id = "AlloyDbConnectionProfile",
      properties = {
        clusterId = {
          description = "Required. The AlloyDB cluster ID that this connection profile is associated with.",
          type = "string",
        },
        settings = {
          ["$ref"] = "AlloyDbSettings",
          description = "Immutable. Metadata used to create the destination AlloyDB cluster.",
        },
      },
      type = "object",
    },
    AlloyDbSettings = {
      description = "Settings for creating an AlloyDB cluster.",
      id = "AlloyDbSettings",
      properties = {
        initialUser = {
          ["$ref"] = "UserPassword",
          description = "Required. Input only. Initial user to setup during cluster creation. Required.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs.",
          type = "object",
        },
        primaryInstanceSettings = {
          ["$ref"] = "PrimaryInstanceSettings",
        },
        vpcNetwork = {
          description = "Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: \"projects/{project_number}/global/networks/{network_id}\". This is required to create a cluster.",
          type = "string",
        },
      },
      type = "object",
    },
    ApplyConversionWorkspaceRequest = {
      description = "Request message for 'ApplyConversionWorkspace' request.",
      id = "ApplyConversionWorkspaceRequest",
      properties = {
        connectionProfile = {
          description = "Fully qualified (Uri) name of the destination connection profile.",
          type = "string",
        },
        filter = {
          description = "Filter which entities to apply. Leaving this field empty will apply all of the entities. Supports Google AIP 160 based filtering.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BackgroundJobLogEntry = {
      description = "Execution log of a background job.",
      id = "BackgroundJobLogEntry",
      properties = {
        completionComment = {
          description = "Job completion comment, such as how many entities were seeded, how many warnings were found during conversion and similar information.",
          type = "string",
        },
        completionState = {
          description = "Job completion state, i.e. the final state after the job completed.",
          enum = {
            "JOB_COMPLETION_STATE_UNSPECIFIED",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The status is not specified. This state will be used when job is not yet finished.",
            "Success.",
            "Error.",
          },
          type = "string",
        },
        finishTime = {
          description = "The timestamp when the background job was finished.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "The background job log entry id",
          type = "string",
        },
        importRulesJobDetails = {
          ["$ref"] = "ImportRulesJobDetails",
          description = "Import rules job details",
        },
        jobType = {
          description = "The type of job that was executed.",
          enum = {
            "BACKGROUND_JOB_TYPE_UNSPECIFIED",
            "BACKGROUND_JOB_TYPE_SOURCE_SEED",
            "BACKGROUND_JOB_TYPE_CONVERT",
            "BACKGROUND_JOB_TYPE_APPLY_DESTINATION",
            "BACKGROUND_JOB_TYPE_IMPORT_RULES_FILE",
          },
          enumDescriptions = {
            "Unspecified background job type",
            "Job to seed from the source database",
            "Job to convert the source database into a draft of the destination database",
            "Job to apply the draft tree onto the destination",
            "Job to import and convert mapping rules from an external source such as an ora2pg config file",
          },
          type = "string",
        },
        requestAutocommit = {
          description = "Whether the client requested the conversion workspace to be committed after a successful completion of the job.",
          type = "boolean",
        },
        seedJobDetails = {
          ["$ref"] = "SeedJobDetails",
          description = "Seed job details",
        },
        startTime = {
          description = "The timestamp when the background job was started.",
          format = "google-datetime",
          type = "string",
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
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CloudSqlConnectionProfile = {
      description = "Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.",
      id = "CloudSqlConnectionProfile",
      properties = {
        additionalPublicIp = {
          description = "Output only. The Cloud SQL database instance's additional (outgoing) public IP. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).",
          readOnly = true,
          type = "string",
        },
        cloudSqlId = {
          description = "Output only. The Cloud SQL instance ID that this connection profile is associated with.",
          readOnly = true,
          type = "string",
        },
        privateIp = {
          description = "Output only. The Cloud SQL database instance's private IP.",
          readOnly = true,
          type = "string",
        },
        publicIp = {
          description = "Output only. The Cloud SQL database instance's public IP.",
          readOnly = true,
          type = "string",
        },
        settings = {
          ["$ref"] = "CloudSqlSettings",
          description = "Immutable. Metadata used to create the destination Cloud SQL database.",
        },
      },
      type = "object",
    },
    CloudSqlSettings = {
      description = "Settings for creating a Cloud SQL database instance.",
      id = "CloudSqlSettings",
      properties = {
        activationPolicy = {
          description = "The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.",
          enum = {
            "SQL_ACTIVATION_POLICY_UNSPECIFIED",
            "ALWAYS",
            "NEVER",
          },
          enumDescriptions = {
            "unspecified policy.",
            "The instance is always up and running.",
            "The instance should never spin up.",
          },
          type = "string",
        },
        autoStorageIncrease = {
          description = "[default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.",
          type = "boolean",
        },
        availabilityType = {
          description = "Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).",
          enum = {
            "SQL_AVAILABILITY_TYPE_UNSPECIFIED",
            "ZONAL",
            "REGIONAL",
          },
          enumDescriptions = {
            "This is an unknown Availability type.",
            "Zonal availablility instance.",
            "Regional availability instance.",
          },
          type = "string",
        },
        cmekKeyName = {
          description = "The KMS key name used for the csql instance.",
          type = "string",
        },
        collation = {
          description = "The Cloud SQL default instance level collation.",
          type = "string",
        },
        dataDiskSizeGb = {
          description = "The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.",
          format = "int64",
          type = "string",
        },
        dataDiskType = {
          description = "The type of storage: `PD_SSD` (default) or `PD_HDD`.",
          enum = {
            "SQL_DATA_DISK_TYPE_UNSPECIFIED",
            "PD_SSD",
            "PD_HDD",
          },
          enumDescriptions = {
            "Unspecified.",
            "SSD disk.",
            "HDD disk.",
          },
          type = "string",
        },
        databaseFlags = {
          additionalProperties = {
            type = "string",
          },
          description = "The database flags passed to the Cloud SQL instance at startup. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }.",
          type = "object",
        },
        databaseVersion = {
          description = "The database engine type and version.",
          enum = {
            "SQL_DATABASE_VERSION_UNSPECIFIED",
            "MYSQL_5_6",
            "MYSQL_5_7",
            "POSTGRES_9_6",
            "POSTGRES_11",
            "POSTGRES_10",
            "MYSQL_8_0",
            "POSTGRES_12",
            "POSTGRES_13",
            "POSTGRES_14",
          },
          enumDescriptions = {
            "Unspecified version.",
            "MySQL 5.6.",
            "MySQL 5.7.",
            "PostgreSQL 9.6.",
            "PostgreSQL 11.",
            "PostgreSQL 10.",
            "MySQL 8.0.",
            "PostgreSQL 12.",
            "PostgreSQL 13.",
            "PostgreSQL 14.",
          },
          type = "string",
        },
        ipConfig = {
          ["$ref"] = "SqlIpConfig",
          description = "The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.",
        },
        rootPassword = {
          description = "Input only. Initial root password.",
          type = "string",
        },
        rootPasswordSet = {
          description = "Output only. Indicates If this connection profile root password is stored.",
          readOnly = true,
          type = "boolean",
        },
        secondaryZone = {
          description = "Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).",
          type = "string",
        },
        sourceId = {
          description = "The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`",
          type = "string",
        },
        storageAutoResizeLimit = {
          description = "The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.",
          format = "int64",
          type = "string",
        },
        tier = {
          description = "The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).",
          type = "string",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of \"key\": \"value\" pairs. Example: `{ \"name\": \"wrench\", \"mass\": \"18kg\", \"count\": \"3\" }`.",
          type = "object",
        },
        zone = {
          description = "The Google Cloud Platform zone where your Cloud SQL database instance is located.",
          type = "string",
        },
      },
      type = "object",
    },
    ColumnEntity = {
      description = "Column is not used as an independent entity, it is retrieved as part of a Table entity.",
      id = "ColumnEntity",
      properties = {
        array = {
          description = "Is the column of array type",
          type = "boolean",
        },
        arrayLength = {
          description = "If the column is array, of which length",
          format = "int32",
          type = "integer",
        },
        autoGenerated = {
          description = "Is the column auto-generated/identity",
          type = "boolean",
        },
        charset = {
          description = "Charset override - instead of table level charset",
          type = "string",
        },
        collation = {
          description = "Collation override - instead of table level collation",
          type = "string",
        },
        comment = {
          description = "Comment associated with the column",
          type = "string",
        },
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        dataType = {
          description = "Column data type",
          type = "string",
        },
        defaultValue = {
          description = "Default value of the column",
          type = "string",
        },
        fractionalSecondsPrecision = {
          description = "Column fractional second precision - used for timestamp based datatypes",
          format = "int32",
          type = "integer",
        },
        length = {
          description = "Column length - e.g. varchar (50)",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Column name",
          type = "string",
        },
        nullable = {
          description = "Is the column nullable",
          type = "boolean",
        },
        ordinalPosition = {
          description = "Column order in the table",
          format = "int32",
          type = "integer",
        },
        precision = {
          description = "Column precision - when relevant",
          format = "int32",
          type = "integer",
        },
        scale = {
          description = "Column scale - when relevant",
          format = "int32",
          type = "integer",
        },
        setValues = {
          description = "Specifies the list of values allowed in the column. List is empty if set values is not required",
          items = {
            type = "string",
          },
          type = "array",
        },
        udt = {
          description = "Is the column a UDT",
          type = "boolean",
        },
      },
      type = "object",
    },
    CommitConversionWorkspaceRequest = {
      description = "Request message for 'CommitConversionWorkspace' request.",
      id = "CommitConversionWorkspaceRequest",
      properties = {
        commitName = {
          description = "Optional. Optional name of the commit.",
          type = "string",
        },
      },
      type = "object",
    },
    ConnectionProfile = {
      description = "A connection profile definition.",
      id = "ConnectionProfile",
      properties = {
        alloydb = {
          ["$ref"] = "AlloyDbConnectionProfile",
          description = "An AlloyDB cluster connection profile.",
        },
        cloudsql = {
          ["$ref"] = "CloudSqlConnectionProfile",
          description = "A CloudSQL database connection profile.",
        },
        createTime = {
          description = "Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: \"2014-10-02T15:01:23.045123456Z\".",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The connection profile display name.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. The error details in case of state FAILED.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of \"key\": \"value\" pairs. Example: `{ \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }`.",
          type = "object",
        },
        mysql = {
          ["$ref"] = "MySqlConnectionProfile",
          description = "A MySQL database connection profile.",
        },
        name = {
          description = "The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.",
          type = "string",
        },
        oracle = {
          ["$ref"] = "OracleConnectionProfile",
          description = "An Oracle database connection profile.",
        },
        postgresql = {
          ["$ref"] = "PostgreSqlConnectionProfile",
          description = "A PostgreSQL database connection profile.",
        },
        provider = {
          description = "The database provider.",
          enum = {
            "DATABASE_PROVIDER_UNSPECIFIED",
            "CLOUDSQL",
            "RDS",
            "AURORA",
            "ALLOYDB",
          },
          enumDescriptions = {
            "The database provider is unknown.",
            "CloudSQL runs the database.",
            "RDS runs the database.",
            "Amazon Aurora.",
            "AlloyDB.",
          },
          type = "string",
        },
        state = {
          description = "The current connection profile state (e.g. DRAFT, READY, or FAILED).",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "CREATING",
            "READY",
            "UPDATING",
            "DELETING",
            "DELETED",
            "FAILED",
          },
          enumDescriptions = {
            "The state of the connection profile is unknown.",
            "The connection profile is in draft mode and fully editable.",
            "The connection profile is being created.",
            "The connection profile is ready.",
            "The connection profile is being updated.",
            "The connection profile is being deleted.",
            "The connection profile has been deleted.",
            "The last action on the connection profile failed.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was last updated. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: \"2014-10-02T15:01:23.045123456Z\".",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConstraintEntity = {
      description = "Constraint is not used as an independent entity, it is retrieved as part of another entity such as Table or View.",
      id = "ConstraintEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        name = {
          description = "The name of the table constraint",
          type = "string",
        },
        referenceColumns = {
          description = "Reference Columns which may be associated with the constraint. eg: if the constraint is a FOREIGN_KEY, this represents the list of full names of referenced columns by the foreign key.",
          items = {
            type = "string",
          },
          type = "array",
        },
        referenceTable = {
          description = "Reference table which may be associated with the constraint. eg: if the constraint is a FOREIGN_KEY, this represents the list of full name of the referenced table by the foreign key.",
          type = "string",
        },
        tableColumns = {
          description = "Table columns used as part of the Constraint for e.g. primary key constraint should list the columns which constitutes the key",
          items = {
            type = "string",
          },
          type = "array",
        },
        tableName = {
          description = "Table which is associated with the constraint. In case the constraint is defined on a table, this field is left empty as this information is stored in parent_name. However, if constraint is defined on a view, this field stores the table name on which the view is defined.",
          type = "string",
        },
        type = {
          description = "Type of constraint - e.g. unique, primary key, foreign key (currently only primary key is supported)",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionWorkspace = {
      description = "The main conversion workspace resource entity.",
      id = "ConversionWorkspace",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the workspace resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destination = {
          ["$ref"] = "DatabaseEngineInfo",
          description = "Required. The destination engine details.",
        },
        displayName = {
          description = "The display name for the workspace",
          type = "string",
        },
        globalSettings = {
          additionalProperties = {
            type = "string",
          },
          description = "A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true",
          type = "object",
        },
        hasUncommittedChanges = {
          description = "Output only. Whether the workspace has uncommitted changes (changes which were made after the workspace was committed)",
          readOnly = true,
          type = "boolean",
        },
        latestCommitId = {
          description = "Output only. The latest commit id",
          readOnly = true,
          type = "string",
        },
        latestCommitTime = {
          description = "Output only. The timestamp when the workspace was committed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.",
          type = "string",
        },
        source = {
          ["$ref"] = "DatabaseEngineInfo",
          description = "Required. The source engine details.",
        },
        updateTime = {
          description = "Output only. The timestamp when the workspace resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ConversionWorkspaceInfo = {
      description = "A conversion workspace's version.",
      id = "ConversionWorkspaceInfo",
      properties = {
        commitId = {
          description = "The commit ID of the conversion workspace.",
          type = "string",
        },
        name = {
          description = "The resource name (URI) of the conversion workspace.",
          type = "string",
        },
      },
      type = "object",
    },
    ConvertConversionWorkspaceRequest = {
      description = "Request message for 'ConvertConversionWorkspace' request.",
      id = "ConvertConversionWorkspaceRequest",
      properties = {
        autoCommit = {
          description = "Should the conversion workspace be committed automatically after the conversion.",
          type = "boolean",
        },
        filter = {
          description = "Filter the entities to convert. Leaving this field empty will convert all of the entities. Supports Google AIP-160 style filtering.",
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseEngineInfo = {
      description = "The type and version of a source or destination DB.",
      id = "DatabaseEngineInfo",
      properties = {
        engine = {
          description = "Required. Engine Type.",
          enum = {
            "DATABASE_ENGINE_UNSPECIFIED",
            "MYSQL",
            "POSTGRESQL",
            "ORACLE",
          },
          enumDescriptions = {
            "The source database engine of the migration job is unknown.",
            "The source engine is MySQL.",
            "The source engine is PostgreSQL.",
            "The source engine is Oracle",
          },
          type = "string",
        },
        version = {
          description = "Required. Engine named version, for e.g. 12.c.1",
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseEntity = {
      description = "The base entity type for all the database related entities The message contains the entity name, the name of its parent, its type and the specific details per its type",
      id = "DatabaseEntity",
      properties = {
        databaseFunction = {
          ["$ref"] = "FunctionEntity",
          description = "Function",
        },
        databasePackage = {
          ["$ref"] = "PackageEntity",
          description = "Package",
        },
        entityType = {
          description = "The type of the database entity (table, view, index, ...).",
          enum = {
            "DATABASE_ENTITY_TYPE_UNSPECIFIED",
            "DATABASE_ENTITY_TYPE_SCHEMA",
            "DATABASE_ENTITY_TYPE_TABLE",
            "DATABASE_ENTITY_TYPE_COLUMN",
            "DATABASE_ENTITY_TYPE_CONSTRAINT",
            "DATABASE_ENTITY_TYPE_INDEX",
            "DATABASE_ENTITY_TYPE_TRIGGER",
            "DATABASE_ENTITY_TYPE_VIEW",
            "DATABASE_ENTITY_TYPE_SEQUENCE",
            "DATABASE_ENTITY_TYPE_STORED_PROCEDURE",
            "DATABASE_ENTITY_TYPE_FUNCTION",
            "DATABASE_ENTITY_TYPE_SYNONYM",
            "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE",
            "DATABASE_ENTITY_TYPE_UDT",
          },
          enumDescriptions = {
            "Unspecified database entity type",
            "Schema",
            "Table",
            "Column",
            "Constraint",
            "Index",
            "Trigger",
            "View",
            "Sequence",
            "Stored Procedure",
            "Function",
            "Synonym",
            "Package",
            "UDT",
          },
          type = "string",
        },
        mappings = {
          description = "Details about entity mappings. For source tree entities, this holds the draft entities which were generated by the mapping rules. For draft tree entities, this holds the source entities which were converted to form the draft entity. Destination entities will have no mapping details.",
          items = {
            ["$ref"] = "EntityMapping",
          },
          type = "array",
        },
        parentEntity = {
          description = "The full name of the parent entity (e.g. schema name).",
          type = "string",
        },
        schema = {
          ["$ref"] = "SchemaEntity",
          description = "Schema.",
        },
        sequence = {
          ["$ref"] = "SequenceEntity",
          description = "Sequence",
        },
        shortName = {
          description = "The short name (e.g. table name) of the entity.",
          type = "string",
        },
        storedProcedure = {
          ["$ref"] = "StoredProcedureEntity",
          description = "Stored Procedure",
        },
        synonym = {
          ["$ref"] = "SynonymEntity",
          description = "Synonym",
        },
        table = {
          ["$ref"] = "TableEntity",
          description = "Table.",
        },
        tree = {
          description = "The type of tree the entity belongs to.",
          enum = {
            "TREE_TYPE_UNSPECIFIED",
            "SOURCE",
            "DRAFT",
            "DESTINATION",
          },
          enumDescriptions = {
            "Tree Type Unspecified.",
            "Tree of entities loaded from a source database.",
            "Tree of entities converted from the source tree using the mapping rules.",
            "Tree of entities observed on the destination database.",
          },
          type = "string",
        },
        view = {
          ["$ref"] = "ViewEntity",
          description = "View",
        },
      },
      type = "object",
    },
    DatabaseType = {
      description = "A message defining the database engine and provider.",
      id = "DatabaseType",
      properties = {
        engine = {
          description = "The database engine.",
          enum = {
            "DATABASE_ENGINE_UNSPECIFIED",
            "MYSQL",
            "POSTGRESQL",
            "ORACLE",
          },
          enumDescriptions = {
            "The source database engine of the migration job is unknown.",
            "The source engine is MySQL.",
            "The source engine is PostgreSQL.",
            "The source engine is Oracle",
          },
          type = "string",
        },
        provider = {
          description = "The database provider.",
          enum = {
            "DATABASE_PROVIDER_UNSPECIFIED",
            "CLOUDSQL",
            "RDS",
            "AURORA",
            "ALLOYDB",
          },
          enumDescriptions = {
            "The database provider is unknown.",
            "CloudSQL runs the database.",
            "RDS runs the database.",
            "Amazon Aurora.",
            "AlloyDB.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DescribeConversionWorkspaceRevisionsResponse = {
      description = "Response message for 'DescribeConversionWorkspaceRevisions' request.",
      id = "DescribeConversionWorkspaceRevisionsResponse",
      properties = {
        revisions = {
          description = "The list of conversion workspace revisions.",
          items = {
            ["$ref"] = "ConversionWorkspace",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DescribeDatabaseEntitiesResponse = {
      description = "Response message for 'DescribeDatabaseEntities' request.",
      id = "DescribeDatabaseEntitiesResponse",
      properties = {
        databaseEntities = {
          description = "The list of database entities for the conversion workspace.",
          items = {
            ["$ref"] = "DatabaseEntity",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    DumpFlag = {
      description = "Dump flag definition.",
      id = "DumpFlag",
      properties = {
        name = {
          description = "The name of the flag",
          type = "string",
        },
        value = {
          description = "The value of the flag.",
          type = "string",
        },
      },
      type = "object",
    },
    DumpFlags = {
      description = "Dump flags definition.",
      id = "DumpFlags",
      properties = {
        dumpFlags = {
          description = "The flags for the initial dump.",
          items = {
            ["$ref"] = "DumpFlag",
          },
          type = "array",
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
    EntityMapping = {
      description = "Details of the mappings of a database entity.",
      id = "EntityMapping",
      properties = {
        draftEntity = {
          description = "Target entity full name. The draft entity can also include a column, index or constraint using the same naming notation schema.table.column",
          type = "string",
        },
        mappingLog = {
          description = "Entity mapping log entries. Multiple rules can be effective and contribute changes to a converted entity such as, a rule can handle the entity name, another rule can handle an entity type. In addition, rules which did not change the entity are also logged along the with the reason preventing them to do so.",
          items = {
            ["$ref"] = "EntityMappingLogEntry",
          },
          type = "array",
        },
        sourceEntity = {
          description = "Source entity full name. The source entity can also be a column, index or constraint using the same naming notation schema.table.column",
          type = "string",
        },
      },
      type = "object",
    },
    EntityMappingLogEntry = {
      description = "A single record of a rule which was used for a mapping.",
      id = "EntityMappingLogEntry",
      properties = {
        mappingComment = {
          description = "Comment.",
          type = "string",
        },
        ruleId = {
          description = "Which rule caused it.",
          type = "string",
        },
        ruleRevisionId = {
          description = "Rule revision id",
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
    ForwardSshTunnelConnectivity = {
      description = "Forward SSH Tunnel connectivity.",
      id = "ForwardSshTunnelConnectivity",
      properties = {
        hostname = {
          description = "Required. Hostname for the SSH tunnel.",
          type = "string",
        },
        password = {
          description = "Input only. SSH password.",
          type = "string",
        },
        port = {
          description = "Port for the SSH tunnel, default value is 22.",
          format = "int32",
          type = "integer",
        },
        privateKey = {
          description = "Input only. SSH private key.",
          type = "string",
        },
        username = {
          description = "Required. Username for the SSH tunnel.",
          type = "string",
        },
      },
      type = "object",
    },
    FunctionEntity = {
      description = "Function's parent is a schema.",
      id = "FunctionEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        sqlCode = {
          description = "The SQL code which creates the function",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateSshScriptRequest = {
      description = "Request message for 'GenerateSshScript' request.",
      id = "GenerateSshScriptRequest",
      properties = {
        vm = {
          description = "Required. Bastion VM Instance name to use or to create.",
          type = "string",
        },
        vmCreationConfig = {
          ["$ref"] = "VmCreationConfig",
          description = "The VM creation configuration",
        },
        vmPort = {
          description = "The port that will be open on the bastion host",
          format = "int32",
          type = "integer",
        },
        vmSelectionConfig = {
          ["$ref"] = "VmSelectionConfig",
          description = "The VM selection configuration",
        },
      },
      type = "object",
    },
    GoogleCloudClouddmsV1OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudClouddmsV1OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ImportMappingRulesRequest = {
      description = "Request message for 'ImportMappingRules' request.",
      id = "ImportMappingRulesRequest",
      properties = {
        autoCommit = {
          description = "Should the conversion workspace be committed automatically after the import operation.",
          type = "boolean",
        },
        rulesFiles = {
          description = "One or more rules files",
          items = {
            ["$ref"] = "RulesFile",
          },
          type = "array",
        },
        rulesFormat = {
          description = "The format of the rules content file.",
          enum = {
            "IMPORT_RULES_FILE_FORMAT_UNSPECIFIED",
            "IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE",
            "IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE",
          },
          enumDescriptions = {
            "Unspecified Rules Format",
            "Harbour Bridge Session file",
            "ORA2PG config file",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ImportRulesJobDetails = {
      description = "Details regarding an Import Rules background job",
      id = "ImportRulesJobDetails",
      properties = {
        fileFormat = {
          description = "The requested file format",
          enum = {
            "IMPORT_RULES_FILE_FORMAT_UNSPECIFIED",
            "IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE",
            "IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE",
          },
          enumDescriptions = {
            "Unspecified Rules Format",
            "Harbour Bridge Session file",
            "ORA2PG config file",
          },
          type = "string",
        },
        files = {
          description = "File names used for the import rules job",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IndexEntity = {
      description = "Index is not used as an independent entity, it is retrieved as part of a Table entity.",
      id = "IndexEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        name = {
          description = "The name of the index",
          type = "string",
        },
        tableColumns = {
          description = "Table columns used as part of the Index for e.g. B-TREE index should list the columns which constitutes the index.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "Type of index - e.g. B-TREE",
          type = "string",
        },
        unique = {
          description = "boolean value indicating whether the index is unique",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListConnectionProfilesResponse = {
      description = "Response message for 'ListConnectionProfiles' request.",
      id = "ListConnectionProfilesResponse",
      properties = {
        connectionProfiles = {
          description = "The response list of connection profiles.",
          items = {
            ["$ref"] = "ConnectionProfile",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListConversionWorkspacesResponse = {
      description = "Response message for 'ListConversionWorkspaces' request.",
      id = "ListConversionWorkspacesResponse",
      properties = {
        conversionWorkspaces = {
          description = "The list of conversion workspace objects.",
          items = {
            ["$ref"] = "ConversionWorkspace",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMigrationJobsResponse = {
      description = "Response message for 'ListMigrationJobs' request.",
      id = "ListMigrationJobsResponse",
      properties = {
        migrationJobs = {
          description = "The list of migration jobs objects.",
          items = {
            ["$ref"] = "MigrationJob",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
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
    ListPrivateConnectionsResponse = {
      description = "Response message for 'ListPrivateConnections' request.",
      id = "ListPrivateConnectionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        privateConnections = {
          description = "List of private connections.",
          items = {
            ["$ref"] = "PrivateConnection",
          },
          type = "array",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    MachineConfig = {
      description = "MachineConfig describes the configuration of a machine.",
      id = "MachineConfig",
      properties = {
        cpuCount = {
          description = "The number of CPU's in the VM instance.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MigrationJob = {
      description = "Represents a Database Migration Service migration job object.",
      id = "MigrationJob",
      properties = {
        conversionWorkspace = {
          ["$ref"] = "ConversionWorkspaceInfo",
          description = "The conversion workspace used by the migration.",
        },
        createTime = {
          description = "Output only. The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: \"2014-10-02T15:01:23.045123456Z\".",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destination = {
          description = "Required. The resource name (URI) of the destination connection profile.",
          type = "string",
        },
        destinationDatabase = {
          ["$ref"] = "DatabaseType",
          description = "The database engine type and provider of the destination.",
        },
        displayName = {
          description = "The migration job display name.",
          type = "string",
        },
        dumpFlags = {
          ["$ref"] = "DumpFlags",
          description = "The initial dump flags. This field and the \"dump_path\" field are mutually exclusive.",
        },
        dumpPath = {
          description = "The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the \"dump_flags\" field are mutually exclusive.",
          type = "string",
        },
        duration = {
          description = "Output only. The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: \"3.5s\".",
          format = "google-duration",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. If the migration job is completed, the time when it was completed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. The error details in case of state FAILED.",
          readOnly = true,
        },
        filter = {
          description = "This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of \"key\": \"value\" pairs. Example: `{ \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }`.",
          type = "object",
        },
        name = {
          description = "The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.",
          type = "string",
        },
        phase = {
          description = "Output only. The current migration job phase.",
          enum = {
            "PHASE_UNSPECIFIED",
            "FULL_DUMP",
            "CDC",
            "PROMOTE_IN_PROGRESS",
            "WAITING_FOR_SOURCE_WRITES_TO_STOP",
            "PREPARING_THE_DUMP",
          },
          enumDescriptions = {
            "The phase of the migration job is unknown.",
            "The migration job is in the full dump phase.",
            "The migration job is CDC phase.",
            "The migration job is running the promote phase.",
            "Only RDS flow - waiting for source writes to stop",
            "Only RDS flow - the sources writes stopped, waiting for dump to begin",
          },
          readOnly = true,
          type = "string",
        },
        reverseSshConnectivity = {
          ["$ref"] = "ReverseSshConnectivity",
          description = "The details needed to communicate to the source over Reverse SSH tunnel connectivity.",
        },
        source = {
          description = "Required. The resource name (URI) of the source connection profile.",
          type = "string",
        },
        sourceDatabase = {
          ["$ref"] = "DatabaseType",
          description = "The database engine type and provider of the source.",
        },
        state = {
          description = "The current migration job state.",
          enum = {
            "STATE_UNSPECIFIED",
            "MAINTENANCE",
            "DRAFT",
            "CREATING",
            "NOT_STARTED",
            "RUNNING",
            "FAILED",
            "COMPLETED",
            "DELETING",
            "STOPPING",
            "STOPPED",
            "DELETED",
            "UPDATING",
            "STARTING",
            "RESTARTING",
            "RESUMING",
          },
          enumDescriptions = {
            "The state of the migration job is unknown.",
            "The migration job is down for maintenance.",
            "The migration job is in draft mode and no resources are created.",
            "The migration job is being created.",
            "The migration job is created and not started.",
            "The migration job is running.",
            "The migration job failed.",
            "The migration job has been completed.",
            "The migration job is being deleted.",
            "The migration job is being stopped.",
            "The migration job is currently stopped.",
            "The migration job has been deleted.",
            "The migration job is being updated.",
            "The migration job is starting.",
            "The migration job is restarting.",
            "The migration job is resuming.",
          },
          type = "string",
        },
        staticIpConnectivity = {
          ["$ref"] = "StaticIpConnectivity",
          description = "static ip connectivity data (default, no additional details needed).",
        },
        type = {
          description = "Required. The migration job type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ONE_TIME",
            "CONTINUOUS",
          },
          enumDescriptions = {
            "The type of the migration job is unknown.",
            "The migration job is a one time migration.",
            "The migration job is a continuous migration.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds. Example: \"2014-10-02T15:01:23.045123456Z\".",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vpcPeeringConnectivity = {
          ["$ref"] = "VpcPeeringConnectivity",
          description = "The details of the VPC network that the source database is located in.",
        },
      },
      type = "object",
    },
    MigrationJobVerificationError = {
      description = "Error message of a verification Migration job.",
      id = "MigrationJobVerificationError",
      properties = {
        errorCode = {
          description = "Output only. An instance of ErrorCode specifying the error that occurred.",
          enum = {
            "ERROR_CODE_UNSPECIFIED",
            "CONNECTION_FAILURE",
            "AUTHENTICATION_FAILURE",
            "INVALID_CONNECTION_PROFILE_CONFIG",
            "VERSION_INCOMPATIBILITY",
            "CONNECTION_PROFILE_TYPES_INCOMPATIBILITY",
            "NO_PGLOGICAL_INSTALLED",
            "PGLOGICAL_NODE_ALREADY_EXISTS",
            "INVALID_WAL_LEVEL",
            "INVALID_SHARED_PRELOAD_LIBRARY",
            "INSUFFICIENT_MAX_REPLICATION_SLOTS",
            "INSUFFICIENT_MAX_WAL_SENDERS",
            "INSUFFICIENT_MAX_WORKER_PROCESSES",
            "UNSUPPORTED_EXTENSIONS",
            "UNSUPPORTED_MIGRATION_TYPE",
            "INVALID_RDS_LOGICAL_REPLICATION",
            "UNSUPPORTED_GTID_MODE",
            "UNSUPPORTED_TABLE_DEFINITION",
            "UNSUPPORTED_DEFINER",
            "CANT_RESTART_RUNNING_MIGRATION",
            "TABLES_WITH_LIMITED_SUPPORT",
          },
          enumDescriptions = {
            "An unknown error occurred",
            "We failed to connect to one of the connection profile.",
            "We failed to authenticate to one of the connection profile.",
            "One of the involved connection profiles has an invalid configuration.",
            "The versions of the source and the destination are incompatible.",
            "The types of the source and the destination are incompatible.",
            "No pglogical extension installed on databases, applicable for postgres.",
            "pglogical node already exists on databases, applicable for postgres.",
            "The value of parameter wal_level is not set to logical.",
            "The value of parameter shared_preload_libraries does not include pglogical.",
            "The value of parameter max_replication_slots is not sufficient.",
            "The value of parameter max_wal_senders is not sufficient.",
            "The value of parameter max_worker_processes is not sufficient.",
            "Extensions installed are either not supported or having unsupported versions.",
            "Unsupported migration type.",
            "Invalid RDS logical replication.",
            "The gtid_mode is not supported, applicable for MySQL.",
            "The table definition is not support due to missing primary key or replica identity.",
            "The definer is not supported.",
            "Migration is already running at the time of restart request.",
            "The source has tables with limited support. E.g. PostgreSQL tables without primary keys.",
          },
          readOnly = true,
          type = "string",
        },
        errorDetailMessage = {
          description = "Output only. A specific detailed error message, if supplied by the engine.",
          readOnly = true,
          type = "string",
        },
        errorMessage = {
          description = "Output only. A formatted message with further details about the error and a CTA.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MySqlConnectionProfile = {
      description = "Specifies connection parameters required specifically for MySQL databases.",
      id = "MySqlConnectionProfile",
      properties = {
        cloudSqlId = {
          description = "If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.",
          type = "string",
        },
        host = {
          description = "Required. The IP or hostname of the source MySQL database.",
          type = "string",
        },
        password = {
          description = "Required. Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.",
          type = "string",
        },
        passwordSet = {
          description = "Output only. Indicates If this connection profile password is stored.",
          readOnly = true,
          type = "boolean",
        },
        port = {
          description = "Required. The network port of the source MySQL database.",
          format = "int32",
          type = "integer",
        },
        ssl = {
          ["$ref"] = "SslConfig",
          description = "SSL configuration for the destination to connect to the source database.",
        },
        username = {
          description = "Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.",
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
    OracleConnectionProfile = {
      description = "Specifies connection parameters required specifically for Oracle databases.",
      id = "OracleConnectionProfile",
      properties = {
        databaseService = {
          description = "Required. Database service for the Oracle connection.",
          type = "string",
        },
        forwardSshConnectivity = {
          ["$ref"] = "ForwardSshTunnelConnectivity",
          description = "Forward SSH tunnel connectivity.",
        },
        host = {
          description = "Required. The IP or hostname of the source Oracle database.",
          type = "string",
        },
        password = {
          description = "Required. Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.",
          type = "string",
        },
        passwordSet = {
          description = "Output only. Indicates whether a new password is included in the request.",
          readOnly = true,
          type = "boolean",
        },
        port = {
          description = "Required. The network port of the source Oracle database.",
          format = "int32",
          type = "integer",
        },
        privateConnectivity = {
          ["$ref"] = "PrivateConnectivity",
          description = "Private connectivity.",
        },
        staticServiceIpConnectivity = {
          ["$ref"] = "StaticServiceIpConnectivity",
          description = "Static Service IP connectivity.",
        },
        username = {
          description = "Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.",
          type = "string",
        },
      },
      type = "object",
    },
    PackageEntity = {
      description = "Package's parent is a schema.",
      id = "PackageEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        packageBody = {
          description = "The SQL code which creates the package body. If the package specification has cursors or subprograms, then the package body is mandatory.",
          type = "string",
        },
        packageSqlCode = {
          description = "The SQL code which creates the package",
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
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
    PostgreSqlConnectionProfile = {
      description = "Specifies connection parameters required specifically for PostgreSQL databases.",
      id = "PostgreSqlConnectionProfile",
      properties = {
        cloudSqlId = {
          description = "If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.",
          type = "string",
        },
        host = {
          description = "Required. The IP or hostname of the source PostgreSQL database.",
          type = "string",
        },
        networkArchitecture = {
          description = "Output only. If the source is a Cloud SQL database, this field indicates the network architecture it's associated with.",
          enum = {
            "NETWORK_ARCHITECTURE_UNSPECIFIED",
            "NETWORK_ARCHITECTURE_OLD_CSQL_PRODUCER",
            "NETWORK_ARCHITECTURE_NEW_CSQL_PRODUCER",
          },
          enumDescriptions = {
            "",
            "Instance is in Cloud SQL's old producer network architecture.",
            "Instance is in Cloud SQL's new producer network architecture.",
          },
          readOnly = true,
          type = "string",
        },
        password = {
          description = "Required. Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.",
          type = "string",
        },
        passwordSet = {
          description = "Output only. Indicates If this connection profile password is stored.",
          readOnly = true,
          type = "boolean",
        },
        port = {
          description = "Required. The network port of the source PostgreSQL database.",
          format = "int32",
          type = "integer",
        },
        privateServiceConnectConnectivity = {
          ["$ref"] = "PrivateServiceConnectConnectivity",
          description = "Private service connect connectivity.",
        },
        ssl = {
          ["$ref"] = "SslConfig",
          description = "SSL configuration for the destination to connect to the source database.",
        },
        staticIpConnectivity = {
          ["$ref"] = "StaticIpConnectivity",
          description = "Static ip connectivity data (default, no additional details needed).",
        },
        username = {
          description = "Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.",
          type = "string",
        },
      },
      type = "object",
    },
    PrimaryInstanceSettings = {
      description = "Settings for the cluster's primary instance",
      id = "PrimaryInstanceSettings",
      properties = {
        databaseFlags = {
          additionalProperties = {
            type = "string",
          },
          description = "Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.",
          type = "object",
        },
        id = {
          description = "Required. The ID of the AlloyDB primary instance. The ID must satisfy the regex expression \"[a-z0-9-]+\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.",
          type = "object",
        },
        machineConfig = {
          ["$ref"] = "MachineConfig",
          description = "Configuration for the machines that host the underlying database engine.",
        },
        privateIp = {
          description = "Output only. The private IP address for the Instance. This is the connection endpoint for an end-user application.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PrivateConnection = {
      description = "The PrivateConnection resource is used to establish private connectivity with the customer's network.",
      id = "PrivateConnection",
      properties = {
        createTime = {
          description = "Output only. The create time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The private connection display name.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. The error details in case of state FAILED.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of \"key\": \"value\" pairs. Example: `{ \"name\": \"wrench\", \"mass\": \"1.3kg\", \"count\": \"3\" }`.",
          type = "object",
        },
        name = {
          description = "The resource's name.",
          type = "string",
        },
        state = {
          description = "Output only. The state of the Private Connection.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "FAILED",
            "DELETING",
            "FAILED_TO_DELETE",
            "DELETED",
          },
          enumDescriptions = {
            "",
            "The private connection is in creation state - creating resources.",
            "The private connection has been created with all of its resources.",
            "The private connection creation has failed.",
            "The private connection is being deleted.",
            "Delete request has failed, resource is in invalid state.",
            "The private connection has been deleted.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vpcPeeringConfig = {
          ["$ref"] = "VpcPeeringConfig",
          description = "VPC Peering Config.",
        },
      },
      type = "object",
    },
    PrivateConnectivity = {
      description = "Private Connectivity.",
      id = "PrivateConnectivity",
      properties = {
        privateConnection = {
          description = "Required. The resource name (URI) of the private connection.",
          type = "string",
        },
      },
      type = "object",
    },
    PrivateServiceConnectConnectivity = {
      description = "Private Service Connect connectivity (https://cloud.google.com/vpc/docs/private-service-connect#benefits-services)",
      id = "PrivateServiceConnectConnectivity",
      properties = {
        serviceAttachment = {
          description = "Required. A service attachment that exposes a database, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}",
          type = "string",
        },
      },
      type = "object",
    },
    PromoteMigrationJobRequest = {
      description = "Request message for 'PromoteMigrationJob' request.",
      id = "PromoteMigrationJobRequest",
      properties = {},
      type = "object",
    },
    RestartMigrationJobRequest = {
      description = "Request message for 'RestartMigrationJob' request.",
      id = "RestartMigrationJobRequest",
      properties = {},
      type = "object",
    },
    ResumeMigrationJobRequest = {
      description = "Request message for 'ResumeMigrationJob' request.",
      id = "ResumeMigrationJobRequest",
      properties = {},
      type = "object",
    },
    ReverseSshConnectivity = {
      description = "The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.",
      id = "ReverseSshConnectivity",
      properties = {
        vm = {
          description = "The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.",
          type = "string",
        },
        vmIp = {
          description = "Required. The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.",
          type = "string",
        },
        vmPort = {
          description = "Required. The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.",
          format = "int32",
          type = "integer",
        },
        vpc = {
          description = "The name of the VPC to peer with the Cloud SQL private network.",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackConversionWorkspaceRequest = {
      description = "Request message for 'RollbackConversionWorkspace' request.",
      id = "RollbackConversionWorkspaceRequest",
      properties = {},
      type = "object",
    },
    RulesFile = {
      description = "Details of a single rules file",
      id = "RulesFile",
      properties = {
        rulesContent = {
          description = "The text content of the rules that needs to be converted",
          type = "string",
        },
        rulesSourceFilename = {
          description = "The filename of the rules that needs to be converted. This is used mainly so future logs of the import rules job will contain this detail and can therefore be searched by it later",
          type = "string",
        },
      },
      type = "object",
    },
    SchemaEntity = {
      description = "Schema typically has no parent entity, but can have a parent entity DatabaseInstance (for database engines which supports it). For some database engines the term schema and user can be used interchangeably when they refer to a namespace or a collection of other database entities. Can store additional information which is schema specific.",
      id = "SchemaEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
      },
      type = "object",
    },
    SearchBackgroundJobsResponse = {
      description = "Response message for 'SearchBackgroundJobs' request.",
      id = "SearchBackgroundJobsResponse",
      properties = {
        jobs = {
          description = "The list of conversion workspace mapping rules.",
          items = {
            ["$ref"] = "BackgroundJobLogEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SeedConversionWorkspaceRequest = {
      description = "Request message for 'SeedConversionWorkspace' request.",
      id = "SeedConversionWorkspaceRequest",
      properties = {
        autoCommit = {
          description = "Should the conversion workspace be committed automatically after the seed operation.",
          type = "boolean",
        },
        destinationConnectionProfile = {
          description = "Fully qualified (Uri) name of the destination connection profile.",
          type = "string",
        },
        sourceConnectionProfile = {
          description = "Fully qualified (Uri) name of the source connection profile.",
          type = "string",
        },
      },
      type = "object",
    },
    SeedJobDetails = {
      description = "Details regarding a Seed background job",
      id = "SeedJobDetails",
      properties = {
        connectionProfile = {
          description = "The connection profile which was used for the seed job",
          type = "string",
        },
      },
      type = "object",
    },
    SequenceEntity = {
      description = "Sequence's parent is a schema.",
      id = "SequenceEntity",
      properties = {
        cache = {
          description = "Indicates number of entries to cache / precreate",
          format = "int64",
          type = "string",
        },
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        cycle = {
          description = "Indicates whether the sequence value should cycle through",
          type = "boolean",
        },
        increment = {
          description = "Increment value for the sequence",
          format = "int64",
          type = "string",
        },
        maxValue = {
          description = "Maximum number for the sequence represented as bytes to accommodate large numbers",
          format = "byte",
          type = "string",
        },
        minValue = {
          description = "Minimum number for the sequence represented as bytes to accommodate large numbers",
          format = "byte",
          type = "string",
        },
        startValue = {
          description = "Start number for the sequence represented as bytes to accommodate large numbers",
          format = "byte",
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
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    SqlAclEntry = {
      description = "An entry for an Access Control list.",
      id = "SqlAclEntry",
      properties = {
        expireTime = {
          description = "The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        label = {
          description = "A label to identify this entry.",
          type = "string",
        },
        ttl = {
          description = "Input only. The time-to-leave of this access control entry.",
          format = "google-duration",
          type = "string",
        },
        value = {
          description = "The allowlisted value for the access control list.",
          type = "string",
        },
      },
      type = "object",
    },
    SqlIpConfig = {
      description = "IP Management configuration.",
      id = "SqlIpConfig",
      properties = {
        authorizedNetworks = {
          description = "The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).",
          items = {
            ["$ref"] = "SqlAclEntry",
          },
          type = "array",
        },
        enableIpv4 = {
          description = "Whether the instance should be assigned an IPv4 address or not.",
          type = "boolean",
        },
        privateNetwork = {
          description = "The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.",
          type = "string",
        },
        requireSsl = {
          description = "Whether SSL connections over IP should be enforced or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SshScript = {
      description = "Response message for 'GenerateSshScript' request.",
      id = "SshScript",
      properties = {
        script = {
          description = "The ssh configuration script.",
          type = "string",
        },
      },
      type = "object",
    },
    SslConfig = {
      description = "SSL configuration information.",
      id = "SslConfig",
      properties = {
        caCertificate = {
          description = "Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database server's certificate. The replica will use this certificate to verify it's connecting to the right host.",
          type = "string",
        },
        clientCertificate = {
          description = "Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate against the source database server.If this field is used then the 'client_key' field is mandatory.",
          type = "string",
        },
        clientKey = {
          description = "Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' field is mandatory.",
          type = "string",
        },
        type = {
          description = "Output only. The ssl config type according to 'client_key', 'client_certificate' and 'ca_certificate'.",
          enum = {
            "SSL_TYPE_UNSPECIFIED",
            "SERVER_ONLY",
            "SERVER_CLIENT",
          },
          enumDescriptions = {
            "Unspecified.",
            "Only 'ca_certificate' specified.",
            "Both server ('ca_certificate'), and client ('client_key', 'client_certificate') specified.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    StartMigrationJobRequest = {
      description = "Request message for 'StartMigrationJob' request.",
      id = "StartMigrationJobRequest",
      properties = {},
      type = "object",
    },
    StaticIpConnectivity = {
      description = "The source database will allow incoming connections from the destination database's public IP. You can retrieve the Cloud SQL instance's public IP from the Cloud SQL console or using Cloud SQL APIs. No additional configuration is required.",
      id = "StaticIpConnectivity",
      properties = {},
      type = "object",
    },
    StaticServiceIpConnectivity = {
      description = "Static IP address connectivity configured on service project.",
      id = "StaticServiceIpConnectivity",
      properties = {},
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
    StopMigrationJobRequest = {
      description = "Request message for 'StopMigrationJob' request.",
      id = "StopMigrationJobRequest",
      properties = {},
      type = "object",
    },
    StoredProcedureEntity = {
      description = "Stored procedure's parent is a schema.",
      id = "StoredProcedureEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        sqlCode = {
          description = "The SQL code which creates the stored procedure",
          type = "string",
        },
      },
      type = "object",
    },
    SynonymEntity = {
      description = "Synonym's parent is a schema.",
      id = "SynonymEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        sourceEntity = {
          description = "The name of the entity for which the synonym is being created (the source)",
          type = "string",
        },
        sourceType = {
          description = "The type of the entity for which the synonym is being created (usually a table or a sequence)",
          enum = {
            "DATABASE_ENTITY_TYPE_UNSPECIFIED",
            "DATABASE_ENTITY_TYPE_SCHEMA",
            "DATABASE_ENTITY_TYPE_TABLE",
            "DATABASE_ENTITY_TYPE_COLUMN",
            "DATABASE_ENTITY_TYPE_CONSTRAINT",
            "DATABASE_ENTITY_TYPE_INDEX",
            "DATABASE_ENTITY_TYPE_TRIGGER",
            "DATABASE_ENTITY_TYPE_VIEW",
            "DATABASE_ENTITY_TYPE_SEQUENCE",
            "DATABASE_ENTITY_TYPE_STORED_PROCEDURE",
            "DATABASE_ENTITY_TYPE_FUNCTION",
            "DATABASE_ENTITY_TYPE_SYNONYM",
            "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE",
            "DATABASE_ENTITY_TYPE_UDT",
          },
          enumDescriptions = {
            "Unspecified database entity type",
            "Schema",
            "Table",
            "Column",
            "Constraint",
            "Index",
            "Trigger",
            "View",
            "Sequence",
            "Stored Procedure",
            "Function",
            "Synonym",
            "Package",
            "UDT",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TableEntity = {
      description = "Table's parent is a schema.",
      id = "TableEntity",
      properties = {
        columns = {
          description = "Table Columns.",
          items = {
            ["$ref"] = "ColumnEntity",
          },
          type = "array",
        },
        comment = {
          description = "Comment associated with the table",
          type = "string",
        },
        constraints = {
          description = "Table Constraints.",
          items = {
            ["$ref"] = "ConstraintEntity",
          },
          type = "array",
        },
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        indices = {
          description = "Table Indices.",
          items = {
            ["$ref"] = "IndexEntity",
          },
          type = "array",
        },
        triggers = {
          description = "Table triggers.",
          items = {
            ["$ref"] = "TriggerEntity",
          },
          type = "array",
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
    TriggerEntity = {
      description = "Trigger is not used as an independent entity, it is retrieved as part of a Table entity.",
      id = "TriggerEntity",
      properties = {
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        name = {
          description = "The name of the trigger",
          type = "string",
        },
        sqlCode = {
          description = "The SQL code which creates the trigger",
          type = "string",
        },
        triggerType = {
          description = "Indicates when the trigger fires, e.g. BEFORE STATEMENT, AFTER EACH ROW",
          type = "string",
        },
        triggeringEvents = {
          description = "The DML, DDL, or database events that fires the trigger, e.g. INSERT, UPDATE",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UserPassword = {
      description = "The username/password for a database user. Used for specifying initial users at cluster creation time.",
      id = "UserPassword",
      properties = {
        password = {
          description = "The initial password for the user.",
          type = "string",
        },
        passwordSet = {
          description = "Output only. Indicates if the initial_user.password field has been set.",
          readOnly = true,
          type = "boolean",
        },
        user = {
          description = "The database username.",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyMigrationJobRequest = {
      description = "Request message for 'VerifyMigrationJob' request.",
      id = "VerifyMigrationJobRequest",
      properties = {},
      type = "object",
    },
    ViewEntity = {
      description = "View's parent is a schema.",
      id = "ViewEntity",
      properties = {
        constraints = {
          description = "View Constraints.",
          items = {
            ["$ref"] = "ConstraintEntity",
          },
          type = "array",
        },
        customFeatures = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom engine specific features",
          type = "object",
        },
        sqlCode = {
          description = "The SQL code which creates the view.",
          type = "string",
        },
      },
      type = "object",
    },
    VmCreationConfig = {
      description = "VM creation configuration message",
      id = "VmCreationConfig",
      properties = {
        subnet = {
          description = "The subnet name the vm needs to be created in.",
          type = "string",
        },
        vmMachineType = {
          description = "Required. VM instance machine type to create.",
          type = "string",
        },
        vmZone = {
          description = "The Google Cloud Platform zone to create the VM in.",
          type = "string",
        },
      },
      type = "object",
    },
    VmSelectionConfig = {
      description = "VM selection configuration message",
      id = "VmSelectionConfig",
      properties = {
        vmZone = {
          description = "Required. The Google Cloud Platform zone the VM is located.",
          type = "string",
        },
      },
      type = "object",
    },
    VpcPeeringConfig = {
      description = "The VPC Peering configuration is used to create VPC peering with the consumer's VPC.",
      id = "VpcPeeringConfig",
      properties = {
        subnet = {
          description = "Required. A free subnet for peering. (CIDR of /29)",
          type = "string",
        },
        vpcName = {
          description = "Required. Fully qualified name of the VPC DMS will peer to.",
          type = "string",
        },
      },
      type = "object",
    },
    VpcPeeringConnectivity = {
      description = "The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.",
      id = "VpcPeeringConnectivity",
      properties = {
        vpc = {
          description = "The name of the VPC network to peer with the Cloud SQL private network.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Database Migration API",
  version = "v1",
  version_module = true,
}