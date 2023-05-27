return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/contacts"] = {
          description = "See, edit, download, and permanently delete your contacts",
        },
        ["https://www.googleapis.com/auth/contacts.other.readonly"] = {
          description = "See and download contact info automatically saved in your \"Other contacts\"",
        },
        ["https://www.googleapis.com/auth/contacts.readonly"] = {
          description = "See and download your contacts",
        },
        ["https://www.googleapis.com/auth/directory.readonly"] = {
          description = "See and download your organization's GSuite directory",
        },
        ["https://www.googleapis.com/auth/user.addresses.read"] = {
          description = "View your street addresses",
        },
        ["https://www.googleapis.com/auth/user.birthday.read"] = {
          description = "See and download your exact date of birth",
        },
        ["https://www.googleapis.com/auth/user.emails.read"] = {
          description = "See and download all of your Google Account email addresses",
        },
        ["https://www.googleapis.com/auth/user.gender.read"] = {
          description = "See your gender",
        },
        ["https://www.googleapis.com/auth/user.organization.read"] = {
          description = "See your education, work history and org info",
        },
        ["https://www.googleapis.com/auth/user.phonenumbers.read"] = {
          description = "See and download your personal phone numbers",
        },
        ["https://www.googleapis.com/auth/userinfo.email"] = {
          description = "See your primary Google Account email address",
        },
        ["https://www.googleapis.com/auth/userinfo.profile"] = {
          description = "See your personal info, including any personal info you've made publicly available",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://people.googleapis.com/",
  batchPath = "batch",
  canonicalName = "People Service",
  description = "Provides access to information about profiles and contacts.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/people/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "people:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://people.mtls.googleapis.com/",
  name = "people",
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
    contactGroups = {
      methods = {
        batchGet = {
          description = "Get a list of contact groups owned by the authenticated user by specifying a list of contact group resource names.",
          flatPath = "v1/contactGroups:batchGet",
          httpMethod = "GET",
          id = "people.contactGroups.batchGet",
          parameterOrder = {},
          parameters = {
            groupFields = {
              description = "Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            maxMembers = {
              description = "Optional. Specifies the maximum number of members to return for each group. Defaults to 0 if not set, which will return zero members.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            resourceNames = {
              description = "Required. The resource names of the contact groups to get. There is a maximum of 200 resource names.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/contactGroups:batchGet",
          response = {
            ["$ref"] = "BatchGetContactGroupsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
          },
        },
        create = {
          description = "Create a new contact group owned by the authenticated user. Created contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/contactGroups",
          httpMethod = "POST",
          id = "people.contactGroups.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/contactGroups",
          request = {
            ["$ref"] = "CreateContactGroupRequest",
          },
          response = {
            ["$ref"] = "ContactGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        delete = {
          description = "Delete an existing contact group owned by the authenticated user by specifying a contact group resource name. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/contactGroups/{contactGroupsId}",
          httpMethod = "DELETE",
          id = "people.contactGroups.delete",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            deleteContacts = {
              description = "Optional. Set to true to also delete the contacts in the specified group.",
              location = "query",
              type = "boolean",
            },
            resourceName = {
              description = "Required. The resource name of the contact group to delete.",
              location = "path",
              pattern = "^contactGroups/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        get = {
          description = "Get a specific contact group owned by the authenticated user by specifying a contact group resource name.",
          flatPath = "v1/contactGroups/{contactGroupsId}",
          httpMethod = "GET",
          id = "people.contactGroups.get",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            groupFields = {
              description = "Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            maxMembers = {
              description = "Optional. Specifies the maximum number of members to return. Defaults to 0 if not set, which will return zero members.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            resourceName = {
              description = "Required. The resource name of the contact group to get.",
              location = "path",
              pattern = "^contactGroups/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}",
          response = {
            ["$ref"] = "ContactGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
          },
        },
        list = {
          description = "List all contact groups owned by the authenticated user. Members of the contact groups are not populated.",
          flatPath = "v1/contactGroups",
          httpMethod = "GET",
          id = "people.contactGroups.list",
          parameterOrder = {},
          parameters = {
            groupFields = {
              description = "Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, `memberCount`, and `name` if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of resources to return. Valid values are between 1 and 1000, inclusive. Defaults to 30 if not set or set to 0.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. The next_page_token value returned from a previous call to [ListContactGroups](/people/api/rest/v1/contactgroups/list). Requests the next page of resources.",
              location = "query",
              type = "string",
            },
            syncToken = {
              description = "Optional. A sync token, returned by a previous call to `contactgroups.list`. Only resources changed since the sync token was created will be returned.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/contactGroups",
          response = {
            ["$ref"] = "ListContactGroupsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
          },
        },
        update = {
          description = "Update the name of an existing contact group owned by the authenticated user. Updated contact group names must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/contactGroups/{contactGroupsId}",
          httpMethod = "PUT",
          id = "people.contactGroups.update",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "The resource name for the contact group, assigned by the server. An ASCII string, in the form of `contactGroups/{contact_group_id}`.",
              location = "path",
              pattern = "^contactGroups/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}",
          request = {
            ["$ref"] = "UpdateContactGroupRequest",
          },
          response = {
            ["$ref"] = "ContactGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
      },
      resources = {
        members = {
          methods = {
            modify = {
              description = "Modify the members of a contact group owned by the authenticated user. The only system contact groups that can have members added are `contactGroups/myContacts` and `contactGroups/starred`. Other system contact groups are deprecated and can only have contacts removed.",
              flatPath = "v1/contactGroups/{contactGroupsId}/members:modify",
              httpMethod = "POST",
              id = "people.contactGroups.members.modify",
              parameterOrder = {
                "resourceName",
              },
              parameters = {
                resourceName = {
                  description = "Required. The resource name of the contact group to modify.",
                  location = "path",
                  pattern = "^contactGroups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resourceName}/members:modify",
              request = {
                ["$ref"] = "ModifyContactGroupMembersRequest",
              },
              response = {
                ["$ref"] = "ModifyContactGroupMembersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/contacts",
              },
            },
          },
        },
      },
    },
    otherContacts = {
      methods = {
        copyOtherContactToMyContactsGroup = {
          description = "Copies an \"Other contact\" to a new contact in the user's \"myContacts\" group Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/otherContacts/{otherContactsId}:copyOtherContactToMyContactsGroup",
          httpMethod = "POST",
          id = "people.otherContacts.copyOtherContactToMyContactsGroup",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Required. The resource name of the \"Other contact\" to copy.",
              location = "path",
              pattern = "^otherContacts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}:copyOtherContactToMyContactsGroup",
          request = {
            ["$ref"] = "CopyOtherContactToMyContactsGroupRequest",
          },
          response = {
            ["$ref"] = "Person",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.other.readonly",
          },
        },
        list = {
          description = "List all \"Other contacts\", that is contacts that are not in a contact group. \"Other contacts\" are typically auto created contacts from interactions. Sync tokens expire 7 days after the full sync. A request with an expired sync token will get an error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info) with reason \"EXPIRED_SYNC_TOKEN\". In the case of such an error clients should make a full sync request without a `sync_token`. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the user's other contacts that have changed](/people/v1/other-contacts#list_the_users_other_contacts_that_have_changed).",
          flatPath = "v1/otherContacts",
          httpMethod = "GET",
          id = "people.otherContacts.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The number of \"Other contacts\" to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `otherContacts.list` must match the first call that provided the page token.",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. What values are valid depend on what ReadSourceType is used. If READ_SOURCE_TYPE_CONTACT is used, valid values are: * emailAddresses * metadata * names * phoneNumbers * photos If READ_SOURCE_TYPE_PROFILE is used, valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            requestSyncToken = {
              description = "Optional. Whether the response should return `next_sync_token` on the last page of results. It can be used to get incremental changes since the last request by setting it on the request `sync_token`. More details about sync behavior at `otherContacts.list`.",
              location = "query",
              type = "boolean",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT if not set. Possible values for this field are: * READ_SOURCE_TYPE_CONTACT * READ_SOURCE_TYPE_CONTACT,READ_SOURCE_TYPE_PROFILE Specifying READ_SOURCE_TYPE_PROFILE without specifying READ_SOURCE_TYPE_CONTACT is not permitted.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            syncToken = {
              description = "Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to `otherContacts.list` must match the first call that provided the sync token. More details about sync behavior at `otherContacts.list`.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/otherContacts",
          response = {
            ["$ref"] = "ListOtherContactsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts.other.readonly",
          },
        },
        search = {
          description = "Provides a list of contacts in the authenticated user's other contacts that matches the search query. The query matches on a contact's `names`, `emailAddresses`, and `phoneNumbers` fields that are from the OTHER_CONTACT source. **IMPORTANT**: Before searching, clients should send a warmup request with an empty query to update the cache. See https://developers.google.com/people/v1/other-contacts#search_the_users_other_contacts",
          flatPath = "v1/otherContacts:search",
          httpMethod = "GET",
          id = "people.otherContacts.search",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The number of results to return. Defaults to 10 if field is not set, or set to 0. Values greater than 30 will be capped to 30.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            query = {
              description = "Required. The plain-text query for the request. The query is used to match prefix phrases of the fields on a person. For example, a person with name \"foo name\" matches queries such as \"f\", \"fo\", \"foo\", \"foo n\", \"nam\", etc., but not \"oo n\".",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * emailAddresses * metadata * names * phoneNumbers",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/otherContacts:search",
          response = {
            ["$ref"] = "SearchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts.other.readonly",
          },
        },
      },
    },
    people = {
      methods = {
        batchCreateContacts = {
          description = "Create a batch of new contacts and return the PersonResponses for the newly Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people:batchCreateContacts",
          httpMethod = "POST",
          id = "people.people.batchCreateContacts",
          parameterOrder = {},
          parameters = {},
          path = "v1/people:batchCreateContacts",
          request = {
            ["$ref"] = "BatchCreateContactsRequest",
          },
          response = {
            ["$ref"] = "BatchCreateContactsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        batchDeleteContacts = {
          description = "Delete a batch of contacts. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people:batchDeleteContacts",
          httpMethod = "POST",
          id = "people.people.batchDeleteContacts",
          parameterOrder = {},
          parameters = {},
          path = "v1/people:batchDeleteContacts",
          request = {
            ["$ref"] = "BatchDeleteContactsRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        batchUpdateContacts = {
          description = "Update a batch of contacts and return a map of resource names to PersonResponses for the updated contacts. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people:batchUpdateContacts",
          httpMethod = "POST",
          id = "people.people.batchUpdateContacts",
          parameterOrder = {},
          parameters = {},
          path = "v1/people:batchUpdateContacts",
          request = {
            ["$ref"] = "BatchUpdateContactsRequest",
          },
          response = {
            ["$ref"] = "BatchUpdateContactsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        createContact = {
          description = "Create a new contact and return the person resource for that contact. The request returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people:createContact",
          httpMethod = "POST",
          id = "people.people.createContact",
          parameterOrder = {},
          parameters = {
            personFields = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Defaults to all fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/people:createContact",
          request = {
            ["$ref"] = "Person",
          },
          response = {
            ["$ref"] = "Person",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        deleteContact = {
          description = "Delete a contact person. Any non-contact data will not be deleted. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people/{peopleId}:deleteContact",
          httpMethod = "DELETE",
          id = "people.people.deleteContact",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Required. The resource name of the contact to delete.",
              location = "path",
              pattern = "^people/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}:deleteContact",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        deleteContactPhoto = {
          description = "Delete a contact's photo. Mutate requests for the same user should be done sequentially to avoid // lock contention.",
          flatPath = "v1/people/{peopleId}:deleteContactPhoto",
          httpMethod = "DELETE",
          id = "people.people.deleteContactPhoto",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            personFields = {
              description = "Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to empty if not set, which will skip the post mutate get. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            resourceName = {
              description = "Required. The resource name of the contact whose photo will be deleted.",
              location = "path",
              pattern = "^people/[^/]+$",
              required = true,
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}:deleteContactPhoto",
          response = {
            ["$ref"] = "DeleteContactPhotoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        get = {
          description = "Provides information about a person by specifying a resource name. Use `people/me` to indicate the authenticated user. The request returns a 400 error if 'personFields' is not specified.",
          flatPath = "v1/people/{peopleId}",
          httpMethod = "GET",
          id = "people.people.get",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            personFields = {
              description = "Required. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            ["requestMask.includeField"] = {
              description = "Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`: for example, `person.names` or `person.photos`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            resourceName = {
              description = "Required. The resource name of the person to provide information about. - To get information about the authenticated user, specify `people/me`. - To get information about a google account, specify `people/{account_id}`. - To get information about a contact, specify the resource name that identifies the contact as returned by `people.connections.list`.",
              location = "path",
              pattern = "^people/[^/]+$",
              required = true,
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}",
          response = {
            ["$ref"] = "Person",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
            "https://www.googleapis.com/auth/directory.readonly",
            "https://www.googleapis.com/auth/user.addresses.read",
            "https://www.googleapis.com/auth/user.birthday.read",
            "https://www.googleapis.com/auth/user.emails.read",
            "https://www.googleapis.com/auth/user.gender.read",
            "https://www.googleapis.com/auth/user.organization.read",
            "https://www.googleapis.com/auth/user.phonenumbers.read",
            "https://www.googleapis.com/auth/userinfo.email",
            "https://www.googleapis.com/auth/userinfo.profile",
          },
        },
        getBatchGet = {
          description = "Provides information about a list of specific people by specifying a list of requested resource names. Use `people/me` to indicate the authenticated user. The request returns a 400 error if 'personFields' is not specified.",
          flatPath = "v1/people:batchGet",
          httpMethod = "GET",
          id = "people.people.getBatchGet",
          parameterOrder = {},
          parameters = {
            personFields = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            ["requestMask.includeField"] = {
              description = "Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`: for example, `person.names` or `person.photos`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            resourceNames = {
              description = "Required. The resource names of the people to provide information about. It's repeatable. The URL query parameter should be resourceNames=<name1>&resourceNames=<name2>&... - To get information about the authenticated user, specify `people/me`. - To get information about a google account, specify `people/{account_id}`. - To get information about a contact, specify the resource name that identifies the contact as returned by `people.connections.list`. There is a maximum of 200 resource names.",
              location = "query",
              repeated = true,
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/people:batchGet",
          response = {
            ["$ref"] = "GetPeopleResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
            "https://www.googleapis.com/auth/directory.readonly",
            "https://www.googleapis.com/auth/user.addresses.read",
            "https://www.googleapis.com/auth/user.birthday.read",
            "https://www.googleapis.com/auth/user.emails.read",
            "https://www.googleapis.com/auth/user.gender.read",
            "https://www.googleapis.com/auth/user.organization.read",
            "https://www.googleapis.com/auth/user.phonenumbers.read",
            "https://www.googleapis.com/auth/userinfo.email",
            "https://www.googleapis.com/auth/userinfo.profile",
          },
        },
        listDirectoryPeople = {
          description = "Provides a list of domain profiles and domain contacts in the authenticated user's domain directory. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the directory people that have changed](/people/v1/directory#list_the_directory_people_that_have_changed).",
          flatPath = "v1/people:listDirectoryPeople",
          httpMethod = "GET",
          id = "people.people.listDirectoryPeople",
          parameterOrder = {},
          parameters = {
            mergeSources = {
              description = "Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.",
              enum = {
                "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED",
                "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "User owned contact.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            pageSize = {
              description = "Optional. The number of people to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `people.listDirectoryPeople` must match the first call that provided the page token.",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            requestSyncToken = {
              description = "Optional. Whether the response should return `next_sync_token`. It can be used to get incremental changes since the last request by setting it on the request `sync_token`. More details about sync behavior at `people.listDirectoryPeople`.",
              location = "query",
              type = "boolean",
            },
            sources = {
              description = "Required. Directory sources to return.",
              enum = {
                "DIRECTORY_SOURCE_TYPE_UNSPECIFIED",
                "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT",
                "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE",
              },
              enumDescriptions = {
                "Unspecified.",
                "Google Workspace domain shared contact.",
                "Google Workspace domain profile.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            syncToken = {
              description = "Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to `people.listDirectoryPeople` must match the first call that provided the sync token. More details about sync behavior at `people.listDirectoryPeople`.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/people:listDirectoryPeople",
          response = {
            ["$ref"] = "ListDirectoryPeopleResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/directory.readonly",
          },
        },
        searchContacts = {
          description = "Provides a list of contacts in the authenticated user's grouped contacts that matches the search query. The query matches on a contact's `names`, `nickNames`, `emailAddresses`, `phoneNumbers`, and `organizations` fields that are from the CONTACT source. **IMPORTANT**: Before searching, clients should send a warmup request with an empty query to update the cache. See https://developers.google.com/people/v1/contacts#search_the_users_contacts",
          flatPath = "v1/people:searchContacts",
          httpMethod = "GET",
          id = "people.people.searchContacts",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The number of results to return. Defaults to 10 if field is not set, or set to 0. Values greater than 30 will be capped to 30.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            query = {
              description = "Required. The plain-text query for the request. The query is used to match prefix phrases of the fields on a person. For example, a person with name \"foo name\" matches queries such as \"f\", \"fo\", \"foo\", \"foo n\", \"nam\", etc., but not \"oo n\".",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/people:searchContacts",
          response = {
            ["$ref"] = "SearchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
            "https://www.googleapis.com/auth/contacts.readonly",
          },
        },
        searchDirectoryPeople = {
          description = "Provides a list of domain profiles and domain contacts in the authenticated user's domain directory that match the search query.",
          flatPath = "v1/people:searchDirectoryPeople",
          httpMethod = "GET",
          id = "people.people.searchDirectoryPeople",
          parameterOrder = {},
          parameters = {
            mergeSources = {
              description = "Optional. Additional data to merge into the directory sources if they are connected through verified join keys such as email addresses or phone numbers.",
              enum = {
                "DIRECTORY_MERGE_SOURCE_TYPE_UNSPECIFIED",
                "DIRECTORY_MERGE_SOURCE_TYPE_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "User owned contact.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            pageSize = {
              description = "Optional. The number of people to include in the response. Valid values are between 1 and 500, inclusive. Defaults to 100 if not set or set to 0.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `SearchDirectoryPeople` must match the first call that provided the page token.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Required. Prefix query that matches fields in the person. Does NOT use the read_mask for determining what fields to match.",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            sources = {
              description = "Required. Directory sources to return.",
              enum = {
                "DIRECTORY_SOURCE_TYPE_UNSPECIFIED",
                "DIRECTORY_SOURCE_TYPE_DOMAIN_CONTACT",
                "DIRECTORY_SOURCE_TYPE_DOMAIN_PROFILE",
              },
              enumDescriptions = {
                "Unspecified.",
                "Google Workspace domain shared contact.",
                "Google Workspace domain profile.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/people:searchDirectoryPeople",
          response = {
            ["$ref"] = "SearchDirectoryPeopleResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/directory.readonly",
          },
        },
        updateContact = {
          description = "Update contact data for an existing contact person. Any non-contact data will not be modified. Any non-contact data in the person to update will be ignored. All fields specified in the `update_mask` will be replaced. The server returns a 400 error if `person.metadata.sources` is not specified for the contact to be updated or if there is no contact source. The server returns a 400 error with reason `\"failedPrecondition\"` if `person.metadata.sources.etag` is different than the contact's etag, which indicates the contact has changed since its data was read. Clients should get the latest person and merge their updates into the latest person. The server returns a 400 error if `memberships` are being updated and there are no contact group memberships specified on the person. The server returns a 400 error if more than one field is specified on a field that is a singleton for contact sources: * biographies * birthdays * genders * names Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people/{peopleId}:updateContact",
          httpMethod = "PATCH",
          id = "people.people.updateContact",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            personFields = {
              description = "Optional. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Defaults to all fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            resourceName = {
              description = "The resource name for the person, assigned by the server. An ASCII string in the form of `people/{person_id}`.",
              location = "path",
              pattern = "^people/[^/]+$",
              required = true,
              type = "string",
            },
            sources = {
              description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
              enum = {
                "READ_SOURCE_TYPE_UNSPECIFIED",
                "READ_SOURCE_TYPE_PROFILE",
                "READ_SOURCE_TYPE_CONTACT",
                "READ_SOURCE_TYPE_DOMAIN_CONTACT",
              },
              enumDescriptions = {
                "Unspecified.",
                "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                "Returns SourceType.CONTACT.",
                "Returns SourceType.DOMAIN_CONTACT.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            updatePersonFields = {
              description = "Required. A field mask to restrict which fields on the person are updated. Multiple fields can be specified by separating them with commas. All updated fields will be replaced. Valid values are: * addresses * biographies * birthdays * calendarUrls * clientData * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * relations * sipAddresses * urls * userDefined",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+resourceName}:updateContact",
          request = {
            ["$ref"] = "Person",
          },
          response = {
            ["$ref"] = "Person",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
        updateContactPhoto = {
          description = "Update a contact's photo. Mutate requests for the same user should be sent sequentially to avoid increased latency and failures.",
          flatPath = "v1/people/{peopleId}:updateContactPhoto",
          httpMethod = "PATCH",
          id = "people.people.updateContactPhoto",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Required. Person resource name",
              location = "path",
              pattern = "^people/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resourceName}:updateContactPhoto",
          request = {
            ["$ref"] = "UpdateContactPhotoRequest",
          },
          response = {
            ["$ref"] = "UpdateContactPhotoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/contacts",
          },
        },
      },
      resources = {
        connections = {
          methods = {
            list = {
              description = "Provides a list of the authenticated user's contacts. Sync tokens expire 7 days after the full sync. A request with an expired sync token will get an error with an [google.rpc.ErrorInfo](https://cloud.google.com/apis/design/errors#error_info) with reason \"EXPIRED_SYNC_TOKEN\". In the case of such an error clients should make a full sync request without a `sync_token`. The first page of a full sync request has an additional quota. If the quota is exceeded, a 429 error will be returned. This quota is fixed and can not be increased. When the `sync_token` is specified, resources deleted since the last sync will be returned as a person with `PersonMetadata.deleted` set to true. When the `page_token` or `sync_token` is specified, all other request parameters must match the first call. Writes may have a propagation delay of several minutes for sync requests. Incremental syncs are not intended for read-after-write use cases. See example usage at [List the user's contacts that have changed](/people/v1/contacts#list_the_users_contacts_that_have_changed).",
              flatPath = "v1/people/{peopleId}/connections",
              httpMethod = "GET",
              id = "people.people.connections.list",
              parameterOrder = {
                "resourceName",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The number of connections to include in the response. Valid values are between 1 and 1000, inclusive. Defaults to 100 if not set or set to 0.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous response `next_page_token`. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `people.connections.list` must match the first call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                personFields = {
                  description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                ["requestMask.includeField"] = {
                  description = "Required. Comma-separated list of person fields to be included in the response. Each path should start with `person.`: for example, `person.names` or `person.photos`.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                requestSyncToken = {
                  description = "Optional. Whether the response should return `next_sync_token` on the last page of results. It can be used to get incremental changes since the last request by setting it on the request `sync_token`. More details about sync behavior at `people.connections.list`.",
                  location = "query",
                  type = "boolean",
                },
                resourceName = {
                  description = "Required. The resource name to return connections for. Only `people/me` is valid.",
                  location = "path",
                  pattern = "^people/[^/]+$",
                  required = true,
                  type = "string",
                },
                sortOrder = {
                  description = "Optional. The order in which the connections should be sorted. Defaults to `LAST_MODIFIED_ASCENDING`.",
                  enum = {
                    "LAST_MODIFIED_ASCENDING",
                    "LAST_MODIFIED_DESCENDING",
                    "FIRST_NAME_ASCENDING",
                    "LAST_NAME_ASCENDING",
                  },
                  enumDescriptions = {
                    "Sort people by when they were changed; older entries first.",
                    "Sort people by when they were changed; newer entries first.",
                    "Sort people by first name.",
                    "Sort people by last name.",
                  },
                  location = "query",
                  type = "string",
                },
                sources = {
                  description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
                  enum = {
                    "READ_SOURCE_TYPE_UNSPECIFIED",
                    "READ_SOURCE_TYPE_PROFILE",
                    "READ_SOURCE_TYPE_CONTACT",
                    "READ_SOURCE_TYPE_DOMAIN_CONTACT",
                  },
                  enumDescriptions = {
                    "Unspecified.",
                    "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
                    "Returns SourceType.CONTACT.",
                    "Returns SourceType.DOMAIN_CONTACT.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                syncToken = {
                  description = "Optional. A sync token, received from a previous response `next_sync_token` Provide this to retrieve only the resources changed since the last request. When syncing, all other parameters provided to `people.connections.list` must match the first call that provided the sync token. More details about sync behavior at `people.connections.list`.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+resourceName}/connections",
              response = {
                ["$ref"] = "ListConnectionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/contacts",
                "https://www.googleapis.com/auth/contacts.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://people.googleapis.com/",
  schemas = {
    Address = {
      description = "A person's physical address. May be a P.O. box or street address. All fields are optional.",
      id = "Address",
      properties = {
        city = {
          description = "The city of the address.",
          type = "string",
        },
        country = {
          description = "The country of the address.",
          type = "string",
        },
        countryCode = {
          description = "The [ISO 3166-1 alpha-2](http://www.iso.org/iso/country_codes.htm) country code of the address.",
          type = "string",
        },
        extendedAddress = {
          description = "The extended address of the address; for example, the apartment number.",
          type = "string",
        },
        formattedType = {
          description = "Output only. The type of the address translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        formattedValue = {
          description = "The unstructured value of the address. If this is not set by the user it will be automatically constructed from structured values.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the address.",
        },
        poBox = {
          description = "The P.O. box of the address.",
          type = "string",
        },
        postalCode = {
          description = "The postal code of the address.",
          type = "string",
        },
        region = {
          description = "The region of the address; for example, the state or province.",
          type = "string",
        },
        streetAddress = {
          description = "The street address.",
          type = "string",
        },
        type = {
          description = "The type of the address. The type can be custom or one of these predefined values: * `home` * `work` * `other`",
          type = "string",
        },
      },
      type = "object",
    },
    AgeRangeType = {
      description = "A person's age range.",
      id = "AgeRangeType",
      properties = {
        ageRange = {
          description = "The age range.",
          enum = {
            "AGE_RANGE_UNSPECIFIED",
            "LESS_THAN_EIGHTEEN",
            "EIGHTEEN_TO_TWENTY",
            "TWENTY_ONE_OR_OLDER",
          },
          enumDescriptions = {
            "Unspecified.",
            "Younger than eighteen.",
            "Between eighteen and twenty.",
            "Twenty-one and older.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the age range.",
        },
      },
      type = "object",
    },
    BatchCreateContactsRequest = {
      description = "A request to create a batch of contacts.",
      id = "BatchCreateContactsRequest",
      properties = {
        contacts = {
          description = "Required. The contact to create. Allows up to 200 contacts in a single request.",
          items = {
            ["$ref"] = "ContactToCreate",
          },
          type = "array",
        },
        readMask = {
          description = "Required. A field mask to restrict which fields on each person are returned in the response. Multiple fields can be specified by separating them with commas. If read mask is left empty, the post-mutate-get is skipped and no data will be returned in the response. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
          format = "google-fieldmask",
          type = "string",
        },
        sources = {
          description = "Optional. A mask of what source types to return in the post mutate read. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
          items = {
            enum = {
              "READ_SOURCE_TYPE_UNSPECIFIED",
              "READ_SOURCE_TYPE_PROFILE",
              "READ_SOURCE_TYPE_CONTACT",
              "READ_SOURCE_TYPE_DOMAIN_CONTACT",
            },
            enumDescriptions = {
              "Unspecified.",
              "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
              "Returns SourceType.CONTACT.",
              "Returns SourceType.DOMAIN_CONTACT.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateContactsResponse = {
      description = "If not successful, returns BatchCreateContactsErrorDetails which contains a list of errors for each invalid contact. The response to a request to create a batch of contacts.",
      id = "BatchCreateContactsResponse",
      properties = {
        createdPeople = {
          description = "The contacts that were created, unless the request `read_mask` is empty.",
          items = {
            ["$ref"] = "PersonResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeleteContactsRequest = {
      description = "A request to delete a batch of existing contacts.",
      id = "BatchDeleteContactsRequest",
      properties = {
        resourceNames = {
          description = "Required. The resource names of the contact to delete. It's repeatable. Allows up to 500 resource names in a single request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchGetContactGroupsResponse = {
      description = "The response to a batch get contact groups request.",
      id = "BatchGetContactGroupsResponse",
      properties = {
        responses = {
          description = "The list of responses for each requested contact group resource.",
          items = {
            ["$ref"] = "ContactGroupResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdateContactsRequest = {
      description = "A request to update a batch of contacts.",
      id = "BatchUpdateContactsRequest",
      properties = {
        contacts = {
          additionalProperties = {
            ["$ref"] = "Person",
          },
          description = "Required. A map of resource names to the person data to be updated. Allows up to 200 contacts in a single request.",
          type = "object",
        },
        readMask = {
          description = "Required. A field mask to restrict which fields on each person are returned. Multiple fields can be specified by separating them with commas. If read mask is left empty, the post-mutate-get is skipped and no data will be returned in the response. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
          format = "google-fieldmask",
          type = "string",
        },
        sources = {
          description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
          items = {
            enum = {
              "READ_SOURCE_TYPE_UNSPECIFIED",
              "READ_SOURCE_TYPE_PROFILE",
              "READ_SOURCE_TYPE_CONTACT",
              "READ_SOURCE_TYPE_DOMAIN_CONTACT",
            },
            enumDescriptions = {
              "Unspecified.",
              "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
              "Returns SourceType.CONTACT.",
              "Returns SourceType.DOMAIN_CONTACT.",
            },
            type = "string",
          },
          type = "array",
        },
        updateMask = {
          description = "Required. A field mask to restrict which fields on the person are updated. Multiple fields can be specified by separating them with commas. All specified fields will be replaced, or cleared if left empty for each person. Valid values are: * addresses * biographies * birthdays * calendarUrls * clientData * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * relations * sipAddresses * urls * userDefined",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    BatchUpdateContactsResponse = {
      description = "If not successful, returns BatchUpdateContactsErrorDetails, a list of errors corresponding to each contact. The response to a request to update a batch of contacts.",
      id = "BatchUpdateContactsResponse",
      properties = {
        updateResult = {
          additionalProperties = {
            ["$ref"] = "PersonResponse",
          },
          description = "A map of resource names to the contacts that were updated, unless the request `read_mask` is empty.",
          type = "object",
        },
      },
      type = "object",
    },
    Biography = {
      description = "A person's short biography.",
      id = "Biography",
      properties = {
        contentType = {
          description = "The content type of the biography.",
          enum = {
            "CONTENT_TYPE_UNSPECIFIED",
            "TEXT_PLAIN",
            "TEXT_HTML",
          },
          enumDescriptions = {
            "Unspecified.",
            "Plain text.",
            "HTML text.",
          },
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the biography.",
        },
        value = {
          description = "The short biography.",
          type = "string",
        },
      },
      type = "object",
    },
    Birthday = {
      description = "A person's birthday. At least one of the `date` and `text` fields are specified. The `date` and `text` fields typically represent the same date, but are not guaranteed to. Clients should always set the `date` field when mutating birthdays.",
      id = "Birthday",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The structured date of the birthday.",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the birthday.",
        },
        text = {
          description = "Prefer to use the `date` field if set. A free-form string representing the user's birthday. This value is not validated.",
          type = "string",
        },
      },
      type = "object",
    },
    BraggingRights = {
      description = "**DEPRECATED**: No data will be returned A person's bragging rights.",
      id = "BraggingRights",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the bragging rights.",
        },
        value = {
          description = "The bragging rights; for example, `climbed mount everest`.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarUrl = {
      description = "A person's calendar URL.",
      id = "CalendarUrl",
      properties = {
        formattedType = {
          description = "Output only. The type of the calendar URL translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the calendar URL.",
        },
        type = {
          description = "The type of the calendar URL. The type can be custom or one of these predefined values: * `home` * `freeBusy` * `work`",
          type = "string",
        },
        url = {
          description = "The calendar URL.",
          type = "string",
        },
      },
      type = "object",
    },
    ClientData = {
      description = "Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.",
      id = "ClientData",
      properties = {
        key = {
          description = "The client specified key of the client data.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the client data.",
        },
        value = {
          description = "The client specified value of the client data.",
          type = "string",
        },
      },
      type = "object",
    },
    ContactGroup = {
      description = "A contact group.",
      id = "ContactGroup",
      properties = {
        clientData = {
          description = "The group's client data.",
          items = {
            ["$ref"] = "GroupClientData",
          },
          type = "array",
        },
        etag = {
          description = "The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cache validation.",
          type = "string",
        },
        formattedName = {
          description = "Output only. The name translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale for system groups names. Group names set by the owner are the same as name.",
          readOnly = true,
          type = "string",
        },
        groupType = {
          description = "Output only. The contact group type.",
          enum = {
            "GROUP_TYPE_UNSPECIFIED",
            "USER_CONTACT_GROUP",
            "SYSTEM_CONTACT_GROUP",
          },
          enumDescriptions = {
            "Unspecified.",
            "User defined contact group.",
            "System defined contact group.",
          },
          readOnly = true,
          type = "string",
        },
        memberCount = {
          description = "Output only. The total number of contacts in the group irrespective of max members in specified in the request.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        memberResourceNames = {
          description = "Output only. The list of contact person resource names that are members of the contact group. The field is only populated for GET requests and will only return as many members as `maxMembers` in the get request.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        metadata = {
          ["$ref"] = "ContactGroupMetadata",
          description = "Output only. Metadata about the contact group.",
          readOnly = true,
        },
        name = {
          description = "The contact group name set by the group owner or a system provided name for system groups. For [`contactGroups.create`](/people/api/rest/v1/contactGroups/create) or [`contactGroups.update`](/people/api/rest/v1/contactGroups/update) the name must be unique to the users contact groups. Attempting to create a group with a duplicate name will return a HTTP 409 error.",
          type = "string",
        },
        resourceName = {
          description = "The resource name for the contact group, assigned by the server. An ASCII string, in the form of `contactGroups/{contact_group_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    ContactGroupMembership = {
      description = "A Google contact group membership.",
      id = "ContactGroupMembership",
      properties = {
        contactGroupId = {
          description = "Output only. The contact group ID for the contact group membership.",
          readOnly = true,
          type = "string",
        },
        contactGroupResourceName = {
          description = "The resource name for the contact group, assigned by the server. An ASCII string, in the form of `contactGroups/{contact_group_id}`. Only contact_group_resource_name can be used for modifying memberships. Any contact group membership can be removed, but only user group or \"myContacts\" or \"starred\" system groups memberships can be added. A contact must always have at least one contact group membership.",
          type = "string",
        },
      },
      type = "object",
    },
    ContactGroupMetadata = {
      description = "The metadata about a contact group.",
      id = "ContactGroupMetadata",
      properties = {
        deleted = {
          description = "Output only. True if the contact group resource has been deleted. Populated only for [`ListContactGroups`](/people/api/rest/v1/contactgroups/list) requests that include a sync token.",
          readOnly = true,
          type = "boolean",
        },
        updateTime = {
          description = "Output only. The time the group was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ContactGroupResponse = {
      description = "The response for a specific contact group.",
      id = "ContactGroupResponse",
      properties = {
        contactGroup = {
          ["$ref"] = "ContactGroup",
          description = "The contact group.",
        },
        requestedResourceName = {
          description = "The original requested resource name.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status of the response.",
        },
      },
      type = "object",
    },
    ContactToCreate = {
      description = "A wrapper that contains the person data to populate a newly created source.",
      id = "ContactToCreate",
      properties = {
        contactPerson = {
          ["$ref"] = "Person",
          description = "Required. The person data to populate a newly created source.",
        },
      },
      type = "object",
    },
    CopyOtherContactToMyContactsGroupRequest = {
      description = "A request to copy an \"Other contact\" to my contacts group.",
      id = "CopyOtherContactToMyContactsGroupRequest",
      properties = {
        copyMask = {
          description = "Required. A field mask to restrict which fields are copied into the new contact. Valid values are: * emailAddresses * names * phoneNumbers",
          format = "google-fieldmask",
          type = "string",
        },
        readMask = {
          description = "Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to the copy mask with metadata and membership fields if not set. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
          format = "google-fieldmask",
          type = "string",
        },
        sources = {
          description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
          items = {
            enum = {
              "READ_SOURCE_TYPE_UNSPECIFIED",
              "READ_SOURCE_TYPE_PROFILE",
              "READ_SOURCE_TYPE_CONTACT",
              "READ_SOURCE_TYPE_DOMAIN_CONTACT",
            },
            enumDescriptions = {
              "Unspecified.",
              "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
              "Returns SourceType.CONTACT.",
              "Returns SourceType.DOMAIN_CONTACT.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CoverPhoto = {
      description = "A person's cover photo. A large image shown on the person's profile page that represents who they are or what they care about.",
      id = "CoverPhoto",
      properties = {
        default = {
          description = "True if the cover photo is the default cover photo; false if the cover photo is a user-provided cover photo.",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the cover photo.",
        },
        url = {
          description = "The URL of the cover photo.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateContactGroupRequest = {
      description = "A request to create a new contact group.",
      id = "CreateContactGroupRequest",
      properties = {
        contactGroup = {
          ["$ref"] = "ContactGroup",
          description = "Required. The contact group to create.",
        },
        readGroupFields = {
          description = "Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, and `name` if not set or set to empty. Valid fields are: * clientData * groupType * metadata * name",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteContactPhotoResponse = {
      description = "The response for deleting a contact's photo.",
      id = "DeleteContactPhotoResponse",
      properties = {
        person = {
          ["$ref"] = "Person",
          description = "The updated person, if person_fields is set in the DeleteContactPhotoRequest; otherwise this will be unset.",
        },
      },
      type = "object",
    },
    DomainMembership = {
      description = "A Google Workspace Domain membership.",
      id = "DomainMembership",
      properties = {
        inViewerDomain = {
          description = "True if the person is in the viewer's Google Workspace domain.",
          type = "boolean",
        },
      },
      type = "object",
    },
    EmailAddress = {
      description = "A person's email address.",
      id = "EmailAddress",
      properties = {
        displayName = {
          description = "The display name of the email.",
          type = "string",
        },
        formattedType = {
          description = "Output only. The type of the email address translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the email address.",
        },
        type = {
          description = "The type of the email address. The type can be custom or one of these predefined values: * `home` * `work` * `other`",
          type = "string",
        },
        value = {
          description = "The email address.",
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
    Event = {
      description = "An event related to the person.",
      id = "Event",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date of the event.",
        },
        formattedType = {
          description = "Output only. The type of the event translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the event.",
        },
        type = {
          description = "The type of the event. The type can be custom or one of these predefined values: * `anniversary` * `other`",
          type = "string",
        },
      },
      type = "object",
    },
    ExternalId = {
      description = "An identifier from an external entity related to the person.",
      id = "ExternalId",
      properties = {
        formattedType = {
          description = "Output only. The type of the event translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the external ID.",
        },
        type = {
          description = "The type of the external ID. The type can be custom or one of these predefined values: * `account` * `customer` * `loginId` * `network` * `organization`",
          type = "string",
        },
        value = {
          description = "The value of the external ID.",
          type = "string",
        },
      },
      type = "object",
    },
    FieldMetadata = {
      description = "Metadata about a field.",
      id = "FieldMetadata",
      properties = {
        primary = {
          description = "Output only. True if the field is the primary field for all sources in the person. Each person will have at most one field with `primary` set to true.",
          readOnly = true,
          type = "boolean",
        },
        source = {
          ["$ref"] = "Source",
          description = "The source of the field.",
        },
        sourcePrimary = {
          description = "True if the field is the primary field for the source. Each source must have at most one field with `source_primary` set to true.",
          type = "boolean",
        },
        verified = {
          description = "Output only. True if the field is verified; false if the field is unverified. A verified field is typically a name, email address, phone number, or website that has been confirmed to be owned by the person.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    FileAs = {
      description = "The name that should be used to sort the person in a list.",
      id = "FileAs",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the file-as.",
        },
        value = {
          description = "The file-as value",
          type = "string",
        },
      },
      type = "object",
    },
    Gender = {
      description = "A person's gender.",
      id = "Gender",
      properties = {
        addressMeAs = {
          description = "Free form text field for pronouns that should be used to address the person. Common values are: * `he`/`him` * `she`/`her` * `they`/`them`",
          type = "string",
        },
        formattedValue = {
          description = "Output only. The value of the gender translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale. Unspecified or custom value are not localized.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the gender.",
        },
        value = {
          description = "The gender for the person. The gender can be custom or one of these predefined values: * `male` * `female` * `unspecified`",
          type = "string",
        },
      },
      type = "object",
    },
    GetPeopleResponse = {
      description = "The response to a get request for a list of people by resource name.",
      id = "GetPeopleResponse",
      properties = {
        responses = {
          description = "The response for each requested resource name.",
          items = {
            ["$ref"] = "PersonResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GroupClientData = {
      description = "Arbitrary client data that is populated by clients. Duplicate keys and values are allowed.",
      id = "GroupClientData",
      properties = {
        key = {
          description = "The client specified key of the client data.",
          type = "string",
        },
        value = {
          description = "The client specified value of the client data.",
          type = "string",
        },
      },
      type = "object",
    },
    ImClient = {
      description = "A person's instant messaging client.",
      id = "ImClient",
      properties = {
        formattedProtocol = {
          description = "Output only. The protocol of the IM client formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        formattedType = {
          description = "Output only. The type of the IM client translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the IM client.",
        },
        protocol = {
          description = "The protocol of the IM client. The protocol can be custom or one of these predefined values: * `aim` * `msn` * `yahoo` * `skype` * `qq` * `googleTalk` * `icq` * `jabber` * `netMeeting`",
          type = "string",
        },
        type = {
          description = "The type of the IM client. The type can be custom or one of these predefined values: * `home` * `work` * `other`",
          type = "string",
        },
        username = {
          description = "The user name used in the IM client.",
          type = "string",
        },
      },
      type = "object",
    },
    Interest = {
      description = "One of the person's interests.",
      id = "Interest",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the interest.",
        },
        value = {
          description = "The interest; for example, `stargazing`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConnectionsResponse = {
      description = "The response to a request for the authenticated user's connections.",
      id = "ListConnectionsResponse",
      properties = {
        connections = {
          description = "The list of people that the requestor is connected to.",
          items = {
            ["$ref"] = "Person",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        nextSyncToken = {
          description = "A token, which can be sent as `sync_token` to retrieve changes since the last request. Request must set `request_sync_token` to return the sync token. When the response is paginated, only the last page will contain `nextSyncToken`.",
          type = "string",
        },
        totalItems = {
          description = "The total number of items in the list without pagination.",
          format = "int32",
          type = "integer",
        },
        totalPeople = {
          description = "**DEPRECATED** (Please use totalItems) The total number of people in the list without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListContactGroupsResponse = {
      description = "The response to a list contact groups request.",
      id = "ListContactGroupsResponse",
      properties = {
        contactGroups = {
          description = "The list of contact groups. Members of the contact groups are not populated.",
          items = {
            ["$ref"] = "ContactGroup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token that can be used to retrieve the next page of results.",
          type = "string",
        },
        nextSyncToken = {
          description = "The token that can be used to retrieve changes since the last request.",
          type = "string",
        },
        totalItems = {
          description = "The total number of items in the list without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListDirectoryPeopleResponse = {
      description = "The response to a request for the authenticated user's domain directory.",
      id = "ListDirectoryPeopleResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        nextSyncToken = {
          description = "A token, which can be sent as `sync_token` to retrieve changes since the last request. Request must set `request_sync_token` to return the sync token.",
          type = "string",
        },
        people = {
          description = "The list of people in the domain directory.",
          items = {
            ["$ref"] = "Person",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOtherContactsResponse = {
      description = "The response to a request for the authenticated user's \"Other contacts\".",
      id = "ListOtherContactsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        nextSyncToken = {
          description = "A token, which can be sent as `sync_token` to retrieve changes since the last request. Request must set `request_sync_token` to return the sync token.",
          type = "string",
        },
        otherContacts = {
          description = "The list of \"Other contacts\" returned as Person resources. \"Other contacts\" support a limited subset of fields. See ListOtherContactsRequest.request_mask for more detailed information.",
          items = {
            ["$ref"] = "Person",
          },
          type = "array",
        },
        totalSize = {
          description = "The total number of other contacts in the list without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Locale = {
      description = "A person's locale preference.",
      id = "Locale",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the locale.",
        },
        value = {
          description = "The well-formed [IETF BCP 47](https://tools.ietf.org/html/bcp47) language tag representing the locale.",
          type = "string",
        },
      },
      type = "object",
    },
    Location = {
      description = "A person's location.",
      id = "Location",
      properties = {
        buildingId = {
          description = "The building identifier.",
          type = "string",
        },
        current = {
          description = "Whether the location is the current location.",
          type = "boolean",
        },
        deskCode = {
          description = "The individual desk location.",
          type = "string",
        },
        floor = {
          description = "The floor name or number.",
          type = "string",
        },
        floorSection = {
          description = "The floor section in `floor_name`.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the location.",
        },
        type = {
          description = "The type of the location. The type can be custom or one of these predefined values: * `desk` * `grewUp`",
          type = "string",
        },
        value = {
          description = "The free-form value of the location.",
          type = "string",
        },
      },
      type = "object",
    },
    Membership = {
      description = "A person's membership in a group. Only contact group memberships can be modified.",
      id = "Membership",
      properties = {
        contactGroupMembership = {
          ["$ref"] = "ContactGroupMembership",
          description = "The contact group membership.",
        },
        domainMembership = {
          ["$ref"] = "DomainMembership",
          description = "Output only. The domain membership.",
          readOnly = true,
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the membership.",
        },
      },
      type = "object",
    },
    MiscKeyword = {
      description = "A person's miscellaneous keyword.",
      id = "MiscKeyword",
      properties = {
        formattedType = {
          description = "Output only. The type of the miscellaneous keyword translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the miscellaneous keyword.",
        },
        type = {
          description = "The miscellaneous keyword type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "OUTLOOK_BILLING_INFORMATION",
            "OUTLOOK_DIRECTORY_SERVER",
            "OUTLOOK_KEYWORD",
            "OUTLOOK_MILEAGE",
            "OUTLOOK_PRIORITY",
            "OUTLOOK_SENSITIVITY",
            "OUTLOOK_SUBJECT",
            "OUTLOOK_USER",
            "HOME",
            "WORK",
            "OTHER",
          },
          enumDescriptions = {
            "Unspecified.",
            "Outlook field for billing information.",
            "Outlook field for directory server.",
            "Outlook field for keyword.",
            "Outlook field for mileage.",
            "Outlook field for priority.",
            "Outlook field for sensitivity.",
            "Outlook field for subject.",
            "Outlook field for user.",
            "Home.",
            "Work.",
            "Other.",
          },
          type = "string",
        },
        value = {
          description = "The value of the miscellaneous keyword.",
          type = "string",
        },
      },
      type = "object",
    },
    ModifyContactGroupMembersRequest = {
      description = "A request to modify an existing contact group's members. Contacts can be removed from any group but they can only be added to a user group or \"myContacts\" or \"starred\" system groups.",
      id = "ModifyContactGroupMembersRequest",
      properties = {
        resourceNamesToAdd = {
          description = "Optional. The resource names of the contact people to add in the form of `people/{person_id}`. The total number of resource names in `resource_names_to_add` and `resource_names_to_remove` must be less than or equal to 1000.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceNamesToRemove = {
          description = "Optional. The resource names of the contact people to remove in the form of `people/{person_id}`. The total number of resource names in `resource_names_to_add` and `resource_names_to_remove` must be less than or equal to 1000.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyContactGroupMembersResponse = {
      description = "The response to a modify contact group members request.",
      id = "ModifyContactGroupMembersResponse",
      properties = {
        canNotRemoveLastContactGroupResourceNames = {
          description = "The contact people resource names that cannot be removed from their last contact group.",
          items = {
            type = "string",
          },
          type = "array",
        },
        notFoundResourceNames = {
          description = "The contact people resource names that were not found.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Name = {
      description = "A person's name. If the name is a mononym, the family name is empty.",
      id = "Name",
      properties = {
        displayName = {
          description = "Output only. The display name formatted according to the locale specified by the viewer's account or the `Accept-Language` HTTP header.",
          readOnly = true,
          type = "string",
        },
        displayNameLastFirst = {
          description = "Output only. The display name with the last name first formatted according to the locale specified by the viewer's account or the `Accept-Language` HTTP header.",
          readOnly = true,
          type = "string",
        },
        familyName = {
          description = "The family name.",
          type = "string",
        },
        givenName = {
          description = "The given name.",
          type = "string",
        },
        honorificPrefix = {
          description = "The honorific prefixes, such as `Mrs.` or `Dr.`",
          type = "string",
        },
        honorificSuffix = {
          description = "The honorific suffixes, such as `Jr.`",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the name.",
        },
        middleName = {
          description = "The middle name(s).",
          type = "string",
        },
        phoneticFamilyName = {
          description = "The family name spelled as it sounds.",
          type = "string",
        },
        phoneticFullName = {
          description = "The full name spelled as it sounds.",
          type = "string",
        },
        phoneticGivenName = {
          description = "The given name spelled as it sounds.",
          type = "string",
        },
        phoneticHonorificPrefix = {
          description = "The honorific prefixes spelled as they sound.",
          type = "string",
        },
        phoneticHonorificSuffix = {
          description = "The honorific suffixes spelled as they sound.",
          type = "string",
        },
        phoneticMiddleName = {
          description = "The middle name(s) spelled as they sound.",
          type = "string",
        },
        unstructuredName = {
          description = "The free form name value.",
          type = "string",
        },
      },
      type = "object",
    },
    Nickname = {
      description = "A person's nickname.",
      id = "Nickname",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the nickname.",
        },
        type = {
          description = "The type of the nickname.",
          enum = {
            "DEFAULT",
            "MAIDEN_NAME",
            "INITIALS",
            "GPLUS",
            "OTHER_NAME",
            "ALTERNATE_NAME",
            "SHORT_NAME",
          },
          enumDescriptions = {
            "Generic nickname.",
            "Maiden name or birth family name. Used when the person's family name has changed as a result of marriage.",
            "Initials.",
            "Google+ profile nickname.",
            "A professional affiliation or other name; for example, `Dr. Smith.`",
            "Alternate name person is known by.",
            "A shorter version of the person's name.",
          },
          type = "string",
        },
        value = {
          description = "The nickname.",
          type = "string",
        },
      },
      type = "object",
    },
    Occupation = {
      description = "A person's occupation.",
      id = "Occupation",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the occupation.",
        },
        value = {
          description = "The occupation; for example, `carpenter`.",
          type = "string",
        },
      },
      type = "object",
    },
    Organization = {
      description = "A person's past or current organization. Overlapping date ranges are permitted.",
      id = "Organization",
      properties = {
        costCenter = {
          description = "The person's cost center at the organization.",
          type = "string",
        },
        current = {
          description = "True if the organization is the person's current organization; false if the organization is a past organization.",
          type = "boolean",
        },
        department = {
          description = "The person's department at the organization.",
          type = "string",
        },
        domain = {
          description = "The domain name associated with the organization; for example, `google.com`.",
          type = "string",
        },
        endDate = {
          ["$ref"] = "Date",
          description = "The end date when the person left the organization.",
        },
        formattedType = {
          description = "Output only. The type of the organization translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        fullTimeEquivalentMillipercent = {
          description = "The person's full-time equivalent millipercent within the organization (100000 = 100%).",
          format = "int32",
          type = "integer",
        },
        jobDescription = {
          description = "The person's job description at the organization.",
          type = "string",
        },
        location = {
          description = "The location of the organization office the person works at.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the organization.",
        },
        name = {
          description = "The name of the organization.",
          type = "string",
        },
        phoneticName = {
          description = "The phonetic name of the organization.",
          type = "string",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "The start date when the person joined the organization.",
        },
        symbol = {
          description = "The symbol associated with the organization; for example, a stock ticker symbol, abbreviation, or acronym.",
          type = "string",
        },
        title = {
          description = "The person's job title at the organization.",
          type = "string",
        },
        type = {
          description = "The type of the organization. The type can be custom or one of these predefined values: * `work` * `school`",
          type = "string",
        },
      },
      type = "object",
    },
    Person = {
      description = "Information about a person merged from various data sources such as the authenticated user's contacts and profile data. Most fields can have multiple items. The items in a field have no guaranteed order, but each non-empty field is guaranteed to have exactly one field with `metadata.primary` set to true.",
      id = "Person",
      properties = {
        addresses = {
          description = "The person's street addresses.",
          items = {
            ["$ref"] = "Address",
          },
          type = "array",
        },
        ageRange = {
          description = "Output only. **DEPRECATED** (Please use `person.ageRanges` instead) The person's age range.",
          enum = {
            "AGE_RANGE_UNSPECIFIED",
            "LESS_THAN_EIGHTEEN",
            "EIGHTEEN_TO_TWENTY",
            "TWENTY_ONE_OR_OLDER",
          },
          enumDescriptions = {
            "Unspecified.",
            "Younger than eighteen.",
            "Between eighteen and twenty.",
            "Twenty-one and older.",
          },
          readOnly = true,
          type = "string",
        },
        ageRanges = {
          description = "Output only. The person's age ranges.",
          items = {
            ["$ref"] = "AgeRangeType",
          },
          readOnly = true,
          type = "array",
        },
        biographies = {
          description = "The person's biographies. This field is a singleton for contact sources.",
          items = {
            ["$ref"] = "Biography",
          },
          type = "array",
        },
        birthdays = {
          description = "The person's birthdays. This field is a singleton for contact sources.",
          items = {
            ["$ref"] = "Birthday",
          },
          type = "array",
        },
        braggingRights = {
          description = "**DEPRECATED**: No data will be returned The person's bragging rights.",
          items = {
            ["$ref"] = "BraggingRights",
          },
          type = "array",
        },
        calendarUrls = {
          description = "The person's calendar URLs.",
          items = {
            ["$ref"] = "CalendarUrl",
          },
          type = "array",
        },
        clientData = {
          description = "The person's client data.",
          items = {
            ["$ref"] = "ClientData",
          },
          type = "array",
        },
        coverPhotos = {
          description = "Output only. The person's cover photos.",
          items = {
            ["$ref"] = "CoverPhoto",
          },
          readOnly = true,
          type = "array",
        },
        emailAddresses = {
          description = "The person's email addresses. For `people.connections.list` and `otherContacts.list` the number of email addresses is limited to 100. If a Person has more email addresses the entire set can be obtained by calling GetPeople.",
          items = {
            ["$ref"] = "EmailAddress",
          },
          type = "array",
        },
        etag = {
          description = "The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the resource. Used for web cache validation.",
          type = "string",
        },
        events = {
          description = "The person's events.",
          items = {
            ["$ref"] = "Event",
          },
          type = "array",
        },
        externalIds = {
          description = "The person's external IDs.",
          items = {
            ["$ref"] = "ExternalId",
          },
          type = "array",
        },
        fileAses = {
          description = "The person's file-ases.",
          items = {
            ["$ref"] = "FileAs",
          },
          type = "array",
        },
        genders = {
          description = "The person's genders. This field is a singleton for contact sources.",
          items = {
            ["$ref"] = "Gender",
          },
          type = "array",
        },
        imClients = {
          description = "The person's instant messaging clients.",
          items = {
            ["$ref"] = "ImClient",
          },
          type = "array",
        },
        interests = {
          description = "The person's interests.",
          items = {
            ["$ref"] = "Interest",
          },
          type = "array",
        },
        locales = {
          description = "The person's locale preferences.",
          items = {
            ["$ref"] = "Locale",
          },
          type = "array",
        },
        locations = {
          description = "The person's locations.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        memberships = {
          description = "The person's group memberships.",
          items = {
            ["$ref"] = "Membership",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "PersonMetadata",
          description = "Output only. Metadata about the person.",
          readOnly = true,
        },
        miscKeywords = {
          description = "The person's miscellaneous keywords.",
          items = {
            ["$ref"] = "MiscKeyword",
          },
          type = "array",
        },
        names = {
          description = "The person's names. This field is a singleton for contact sources.",
          items = {
            ["$ref"] = "Name",
          },
          type = "array",
        },
        nicknames = {
          description = "The person's nicknames.",
          items = {
            ["$ref"] = "Nickname",
          },
          type = "array",
        },
        occupations = {
          description = "The person's occupations.",
          items = {
            ["$ref"] = "Occupation",
          },
          type = "array",
        },
        organizations = {
          description = "The person's past or current organizations.",
          items = {
            ["$ref"] = "Organization",
          },
          type = "array",
        },
        phoneNumbers = {
          description = "The person's phone numbers. For `people.connections.list` and `otherContacts.list` the number of phone numbers is limited to 100. If a Person has more phone numbers the entire set can be obtained by calling GetPeople.",
          items = {
            ["$ref"] = "PhoneNumber",
          },
          type = "array",
        },
        photos = {
          description = "Output only. The person's photos.",
          items = {
            ["$ref"] = "Photo",
          },
          readOnly = true,
          type = "array",
        },
        relations = {
          description = "The person's relations.",
          items = {
            ["$ref"] = "Relation",
          },
          type = "array",
        },
        relationshipInterests = {
          description = "Output only. **DEPRECATED**: No data will be returned The person's relationship interests.",
          items = {
            ["$ref"] = "RelationshipInterest",
          },
          readOnly = true,
          type = "array",
        },
        relationshipStatuses = {
          description = "Output only. **DEPRECATED**: No data will be returned The person's relationship statuses.",
          items = {
            ["$ref"] = "RelationshipStatus",
          },
          readOnly = true,
          type = "array",
        },
        residences = {
          description = "**DEPRECATED**: (Please use `person.locations` instead) The person's residences.",
          items = {
            ["$ref"] = "Residence",
          },
          type = "array",
        },
        resourceName = {
          description = "The resource name for the person, assigned by the server. An ASCII string in the form of `people/{person_id}`.",
          type = "string",
        },
        sipAddresses = {
          description = "The person's SIP addresses.",
          items = {
            ["$ref"] = "SipAddress",
          },
          type = "array",
        },
        skills = {
          description = "The person's skills.",
          items = {
            ["$ref"] = "Skill",
          },
          type = "array",
        },
        taglines = {
          description = "Output only. **DEPRECATED**: No data will be returned The person's taglines.",
          items = {
            ["$ref"] = "Tagline",
          },
          readOnly = true,
          type = "array",
        },
        urls = {
          description = "The person's associated URLs.",
          items = {
            ["$ref"] = "Url",
          },
          type = "array",
        },
        userDefined = {
          description = "The person's user defined data.",
          items = {
            ["$ref"] = "UserDefined",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PersonMetadata = {
      description = "The metadata about a person.",
      id = "PersonMetadata",
      properties = {
        deleted = {
          description = "Output only. True if the person resource has been deleted. Populated only for `people.connections.list` and `otherContacts.list` sync requests.",
          readOnly = true,
          type = "boolean",
        },
        linkedPeopleResourceNames = {
          description = "Output only. Resource names of people linked to this resource.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        objectType = {
          description = "Output only. **DEPRECATED** (Please use `person.metadata.sources.profileMetadata.objectType` instead) The type of the person object.",
          enum = {
            "OBJECT_TYPE_UNSPECIFIED",
            "PERSON",
            "PAGE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Person.",
            "[Currents Page.](https://workspace.google.com/products/currents/)",
          },
          readOnly = true,
          type = "string",
        },
        previousResourceNames = {
          description = "Output only. Any former resource names this person has had. Populated only for `people.connections.list` requests that include a sync token. The resource name may change when adding or removing fields that link a contact and profile such as a verified email, verified phone number, or profile URL.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        sources = {
          description = "The sources of data for the person.",
          items = {
            ["$ref"] = "Source",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PersonResponse = {
      description = "The response for a single person",
      id = "PersonResponse",
      properties = {
        httpStatusCode = {
          description = "**DEPRECATED** (Please use status instead) [HTTP 1.1 status code] (http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html).",
          format = "int32",
          type = "integer",
        },
        person = {
          ["$ref"] = "Person",
          description = "The person.",
        },
        requestedResourceName = {
          description = "The original requested resource name. May be different than the resource name on the returned person. The resource name can change when adding or removing fields that link a contact and profile such as a verified email, verified phone number, or a profile URL.",
          type = "string",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status of the response.",
        },
      },
      type = "object",
    },
    PhoneNumber = {
      description = "A person's phone number.",
      id = "PhoneNumber",
      properties = {
        canonicalForm = {
          description = "Output only. The canonicalized [ITU-T E.164](https://law.resource.org/pub/us/cfr/ibr/004/itu-t.E.164.1.2008.pdf) form of the phone number.",
          readOnly = true,
          type = "string",
        },
        formattedType = {
          description = "Output only. The type of the phone number translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the phone number.",
        },
        type = {
          description = "The type of the phone number. The type can be custom or one of these predefined values: * `home` * `work` * `mobile` * `homeFax` * `workFax` * `otherFax` * `pager` * `workMobile` * `workPager` * `main` * `googleVoice` * `other`",
          type = "string",
        },
        value = {
          description = "The phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    Photo = {
      description = "A person's photo. A picture shown next to the person's name to help others recognize the person.",
      id = "Photo",
      properties = {
        default = {
          description = "True if the photo is a default photo; false if the photo is a user-provided photo.",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the photo.",
        },
        url = {
          description = "The URL of the photo. You can change the desired size by appending a query parameter `sz={size}` at the end of the url, where {size} is the size in pixels. Example: https://lh3.googleusercontent.com/-T_wVWLlmg7w/AAAAAAAAAAI/AAAAAAAABa8/00gzXvDBYqw/s100/photo.jpg?sz=50",
          type = "string",
        },
      },
      type = "object",
    },
    ProfileMetadata = {
      description = "The metadata about a profile.",
      id = "ProfileMetadata",
      properties = {
        objectType = {
          description = "Output only. The profile object type.",
          enum = {
            "OBJECT_TYPE_UNSPECIFIED",
            "PERSON",
            "PAGE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Person.",
            "[Currents Page.](https://workspace.google.com/products/currents/)",
          },
          readOnly = true,
          type = "string",
        },
        userTypes = {
          description = "Output only. The user types.",
          items = {
            enum = {
              "USER_TYPE_UNKNOWN",
              "GOOGLE_USER",
              "GPLUS_USER",
              "GOOGLE_APPS_USER",
            },
            enumDescriptions = {
              "The user type is not known.",
              "The user is a Google user.",
              "The user is a Currents user.",
              "The user is a Google Workspace user.",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    Relation = {
      description = "A person's relation to another person.",
      id = "Relation",
      properties = {
        formattedType = {
          description = "Output only. The type of the relation translated and formatted in the viewer's account locale or the locale specified in the Accept-Language HTTP header.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the relation.",
        },
        person = {
          description = "The name of the other person this relation refers to.",
          type = "string",
        },
        type = {
          description = "The person's relation to the other person. The type can be custom or one of these predefined values: * `spouse` * `child` * `mother` * `father` * `parent` * `brother` * `sister` * `friend` * `relative` * `domesticPartner` * `manager` * `assistant` * `referredBy` * `partner`",
          type = "string",
        },
      },
      type = "object",
    },
    RelationshipInterest = {
      description = "**DEPRECATED**: No data will be returned A person's relationship interest .",
      id = "RelationshipInterest",
      properties = {
        formattedValue = {
          description = "Output only. The value of the relationship interest translated and formatted in the viewer's account locale or the locale specified in the Accept-Language HTTP header.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the relationship interest.",
        },
        value = {
          description = "The kind of relationship the person is looking for. The value can be custom or one of these predefined values: * `friend` * `date` * `relationship` * `networking`",
          type = "string",
        },
      },
      type = "object",
    },
    RelationshipStatus = {
      description = "**DEPRECATED**: No data will be returned A person's relationship status.",
      id = "RelationshipStatus",
      properties = {
        formattedValue = {
          description = "Output only. The value of the relationship status translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the relationship status.",
        },
        value = {
          description = "The relationship status. The value can be custom or one of these predefined values: * `single` * `inARelationship` * `engaged` * `married` * `itsComplicated` * `openRelationship` * `widowed` * `inDomesticPartnership` * `inCivilUnion`",
          type = "string",
        },
      },
      type = "object",
    },
    Residence = {
      description = "**DEPRECATED**: Please use `person.locations` instead. A person's past or current residence.",
      id = "Residence",
      properties = {
        current = {
          description = "True if the residence is the person's current residence; false if the residence is a past residence.",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the residence.",
        },
        value = {
          description = "The address of the residence.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchDirectoryPeopleResponse = {
      description = "The response to a request for people in the authenticated user's domain directory that match the specified query.",
      id = "SearchDirectoryPeopleResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        people = {
          description = "The list of people in the domain directory that match the query.",
          items = {
            ["$ref"] = "Person",
          },
          type = "array",
        },
        totalSize = {
          description = "The total number of items in the list without pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SearchResponse = {
      description = "The response to a search request for the authenticated user, given a query.",
      id = "SearchResponse",
      properties = {
        results = {
          description = "The results of the request.",
          items = {
            ["$ref"] = "SearchResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchResult = {
      description = "A result of a search query.",
      id = "SearchResult",
      properties = {
        person = {
          ["$ref"] = "Person",
          description = "The matched Person.",
        },
      },
      type = "object",
    },
    SipAddress = {
      description = "A person's SIP address. Session Initial Protocol addresses are used for VoIP communications to make voice or video calls over the internet.",
      id = "SipAddress",
      properties = {
        formattedType = {
          description = "Output only. The type of the SIP address translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the SIP address.",
        },
        type = {
          description = "The type of the SIP address. The type can be custom or or one of these predefined values: * `home` * `work` * `mobile` * `other`",
          type = "string",
        },
        value = {
          description = "The SIP address in the [RFC 3261 19.1](https://tools.ietf.org/html/rfc3261#section-19.1) SIP URI format.",
          type = "string",
        },
      },
      type = "object",
    },
    Skill = {
      description = "A skill that the person has.",
      id = "Skill",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the skill.",
        },
        value = {
          description = "The skill; for example, `underwater basket weaving`.",
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "The source of a field.",
      id = "Source",
      properties = {
        etag = {
          description = "**Only populated in `person.metadata.sources`.** The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the source. Used for web cache validation.",
          type = "string",
        },
        id = {
          description = "The unique identifier within the source type generated by the server.",
          type = "string",
        },
        profileMetadata = {
          ["$ref"] = "ProfileMetadata",
          description = "Output only. **Only populated in `person.metadata.sources`.** Metadata about a source of type PROFILE.",
          readOnly = true,
        },
        type = {
          description = "The source type.",
          enum = {
            "SOURCE_TYPE_UNSPECIFIED",
            "ACCOUNT",
            "PROFILE",
            "DOMAIN_PROFILE",
            "CONTACT",
            "OTHER_CONTACT",
            "DOMAIN_CONTACT",
          },
          enumDescriptions = {
            "Unspecified.",
            "[Google Account](https://accounts.google.com).",
            "[Google profile](https://profiles.google.com). You can view the profile at [https://profiles.google.com/](https://profiles.google.com/){id}, where {id} is the source id.",
            "[Google Workspace domain profile](https://support.google.com/a/answer/1628008).",
            "[Google contact](https://contacts.google.com). You can view the contact at [https://contact.google.com/](https://contact.google.com/){id}, where {id} is the source id.",
            "[Google \"Other contact\"](https://contacts.google.com/other).",
            "[Google Workspace domain shared contact](https://support.google.com/a/answer/9281635).",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. **Only populated in `person.metadata.sources`.** Last update timestamp of this source.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
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
    Tagline = {
      description = "**DEPRECATED**: No data will be returned A brief one-line description of the person.",
      id = "Tagline",
      properties = {
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the tagline.",
        },
        value = {
          description = "The tagline.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateContactGroupRequest = {
      description = "A request to update an existing user contact group. All updated fields will be replaced.",
      id = "UpdateContactGroupRequest",
      properties = {
        contactGroup = {
          ["$ref"] = "ContactGroup",
          description = "Required. The contact group to update.",
        },
        readGroupFields = {
          description = "Optional. A field mask to restrict which fields on the group are returned. Defaults to `metadata`, `groupType`, and `name` if not set or set to empty. Valid fields are: * clientData * groupType * memberCount * metadata * name",
          format = "google-fieldmask",
          type = "string",
        },
        updateGroupFields = {
          description = "Optional. A field mask to restrict which fields on the group are updated. Multiple fields can be specified by separating them with commas. Defaults to `name` if not set or set to empty. Updated fields are replaced. Valid values are: * clientData * name",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateContactPhotoRequest = {
      description = "A request to update an existing contact's photo. All requests must have a valid photo format: JPEG or PNG.",
      id = "UpdateContactPhotoRequest",
      properties = {
        personFields = {
          description = "Optional. A field mask to restrict which fields on the person are returned. Multiple fields can be specified by separating them with commas. Defaults to empty if not set, which will skip the post mutate get. Valid values are: * addresses * ageRanges * biographies * birthdays * calendarUrls * clientData * coverPhotos * emailAddresses * events * externalIds * genders * imClients * interests * locales * locations * memberships * metadata * miscKeywords * names * nicknames * occupations * organizations * phoneNumbers * photos * relations * sipAddresses * skills * urls * userDefined",
          format = "google-fieldmask",
          type = "string",
        },
        photoBytes = {
          description = "Required. Raw photo bytes",
          format = "byte",
          type = "string",
        },
        sources = {
          description = "Optional. A mask of what source types to return. Defaults to READ_SOURCE_TYPE_CONTACT and READ_SOURCE_TYPE_PROFILE if not set.",
          items = {
            enum = {
              "READ_SOURCE_TYPE_UNSPECIFIED",
              "READ_SOURCE_TYPE_PROFILE",
              "READ_SOURCE_TYPE_CONTACT",
              "READ_SOURCE_TYPE_DOMAIN_CONTACT",
            },
            enumDescriptions = {
              "Unspecified.",
              "Returns SourceType.ACCOUNT, SourceType.DOMAIN_PROFILE, and SourceType.PROFILE.",
              "Returns SourceType.CONTACT.",
              "Returns SourceType.DOMAIN_CONTACT.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateContactPhotoResponse = {
      description = "The response for updating a contact's photo.",
      id = "UpdateContactPhotoResponse",
      properties = {
        person = {
          ["$ref"] = "Person",
          description = "The updated person, if person_fields is set in the UpdateContactPhotoRequest; otherwise this will be unset.",
        },
      },
      type = "object",
    },
    Url = {
      description = "A person's associated URLs.",
      id = "Url",
      properties = {
        formattedType = {
          description = "Output only. The type of the URL translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the URL.",
        },
        type = {
          description = "The type of the URL. The type can be custom or one of these predefined values: * `home` * `work` * `blog` * `profile` * `homePage` * `ftp` * `reservations` * `appInstallPage`: website for a Currents application. * `other`",
          type = "string",
        },
        value = {
          description = "The URL.",
          type = "string",
        },
      },
      type = "object",
    },
    UserDefined = {
      description = "Arbitrary user data that is populated by the end users.",
      id = "UserDefined",
      properties = {
        key = {
          description = "The end user specified key of the user defined data.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "FieldMetadata",
          description = "Metadata about the user defined data.",
        },
        value = {
          description = "The end user specified value of the user defined data.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "People API",
  version = "v1",
  version_module = true,
}