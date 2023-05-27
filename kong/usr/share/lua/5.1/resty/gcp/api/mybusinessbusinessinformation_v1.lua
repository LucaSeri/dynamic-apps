return {
  basePath = "",
  baseUrl = "https://mybusinessbusinessinformation.googleapis.com/",
  batchPath = "batch",
  canonicalName = "My Business Business Information",
  description = "The My Business Business Information API provides an interface for managing business information. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/my-business/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "mybusinessbusinessinformation:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://mybusinessbusinessinformation.mtls.googleapis.com/",
  name = "mybusinessbusinessinformation",
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
    accounts = {
      resources = {
        locations = {
          methods = {
            create = {
              description = "Creates a new Location that will be owned by the logged in user.",
              flatPath = "v1/accounts/{accountsId}/locations",
              httpMethod = "POST",
              id = "mybusinessbusinessinformation.accounts.locations.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the account in which to create this location.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                requestId = {
                  description = "Optional. A unique request ID for the server to detect duplicated requests. We recommend using UUIDs. Max length is 50 characters.",
                  location = "query",
                  type = "string",
                },
                validateOnly = {
                  description = "Optional. If true, the request is validated without actually creating the location.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+parent}/locations",
              request = {
                ["$ref"] = "Location",
              },
              response = {
                ["$ref"] = "Location",
              },
            },
            list = {
              description = "Lists the locations for the specified account.",
              flatPath = "v1/accounts/{accountsId}/locations",
              httpMethod = "GET",
              id = "mybusinessbusinessinformation.accounts.locations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. A filter constraining the locations to return. The response includes only entries that match the filter. If `filter` is empty, then constraints are applied and all locations (paginated) are retrieved for the requested account. For more information about valid fields and example usage, see [Work with Location Data Guide](https://developers.google.com/my-business/content/location-data#filter_results_when_you_list_locations).",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Optional. Sorting order for the request. Multiple fields should be comma-separated, following SQL syntax. The default sorting order is ascending. To specify descending order, a suffix \" desc\" should be added. Valid fields to order_by are title and store_code. For example: \"title, store_code desc\" or \"title\" or \"store_code desc\"",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. How many locations to fetch per page. Default value is 10 if not set. Minimum is 1, and maximum page size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If specified, it fetches the next `page` of locations. The page token is returned by previous calls to `ListLocations` when there were more locations than could fit in the requested page size.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the account to fetch locations from. If the parent Account is of AccountType PERSONAL, only Locations that are directly owned by the Account are returned, otherwise it will return all accessible locations from the Account, either directly or indirectly.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                readMask = {
                  description = "Required. Read mask to specify what fields will be returned in the response.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
            },
          },
        },
      },
    },
    attributes = {
      methods = {
        list = {
          description = "Returns the list of attributes that would be available for a location with the given primary category and country.",
          flatPath = "v1/attributes",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.attributes.list",
          parameterOrder = {},
          parameters = {
            categoryName = {
              description = "The primary category stable ID to find available attributes. Must be of the format categories/{category_id}.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "The BCP 47 code of language to get attribute display names in. If this language is not available, they will be provided in English.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "How many attributes to include per page. Default is 200, minimum is 1.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "If specified, the next page of attribute metadata is retrieved.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Resource name of the location to look up available attributes. If this field is set, category_name, region_code, language_code and show_all are not required and must not be set.",
              location = "query",
              type = "string",
            },
            regionCode = {
              description = "The ISO 3166-1 alpha-2 country code to find available attributes.",
              location = "query",
              type = "string",
            },
            showAll = {
              description = "Metadata for all available attributes are returned when this field is set to true, disregarding parent and category_name fields. language_code and region_code are required when show_all is set to true.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v1/attributes",
          response = {
            ["$ref"] = "ListAttributeMetadataResponse",
          },
        },
      },
    },
    categories = {
      methods = {
        batchGet = {
          description = "Returns a list of business categories for the provided language and GConcept ids.",
          flatPath = "v1/categories:batchGet",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.categories.batchGet",
          parameterOrder = {},
          parameters = {
            languageCode = {
              description = "Required. The BCP 47 code of language that the category names should be returned in.",
              location = "query",
              type = "string",
            },
            names = {
              description = "Required. At least one name must be set. The GConcept ids the localized category names should be returned for. To return details for more than one category, repeat this parameter in the request.",
              location = "query",
              repeated = true,
              type = "string",
            },
            regionCode = {
              description = "Optional. The ISO 3166-1 alpha-2 country code used to infer non-standard language.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Required. Specifies which parts to the Category resource should be returned in the response.",
              enum = {
                "CATEGORY_VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Not specified, equivalent to CATEGORY_METADATA_ONLY.",
                "The server response will only include Category fields display_name, category_id and language_code. It omits any service type metadata related fields.",
                "Returns all the fields in the response.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/categories:batchGet",
          response = {
            ["$ref"] = "BatchGetCategoriesResponse",
          },
        },
        list = {
          description = "Returns a list of business categories. Search will match the category name but not the category ID. Search only matches the front of a category name (that is, 'food' may return 'Food Court' but not 'Fast Food Restaurant').",
          flatPath = "v1/categories",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.categories.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Optional. Filter string from user. The only field that supported is `displayName`. Eg: `filter=displayName=foo`.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "Required. The BCP 47 code of language.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. How many categories to fetch per page. Default is 100, minimum is 1, and maximum page size is 100.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If specified, the next page of categories will be fetched.",
              location = "query",
              type = "string",
            },
            regionCode = {
              description = "Required. The ISO 3166-1 alpha-2 country code.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Required. Specifies which parts to the Category resource should be returned in the response.",
              enum = {
                "CATEGORY_VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Not specified, equivalent to CATEGORY_METADATA_ONLY.",
                "The server response will only include Category fields display_name, category_id and language_code. It omits any service type metadata related fields.",
                "Returns all the fields in the response.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/categories",
          response = {
            ["$ref"] = "ListCategoriesResponse",
          },
        },
      },
    },
    chains = {
      methods = {
        get = {
          description = "Gets the specified chain. Returns `NOT_FOUND` if the chain does not exist.",
          flatPath = "v1/chains/{chainsId}",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.chains.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The chain's resource name, in the format `chains/{chain_place_id}`.",
              location = "path",
              pattern = "^chains/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Chain",
          },
        },
        search = {
          description = "Searches the chain based on chain name.",
          flatPath = "v1/chains:search",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.chains.search",
          parameterOrder = {},
          parameters = {
            chainName = {
              description = "Required. Search for a chain by its name. Exact/partial/fuzzy/related queries are supported. Examples: \"walmart\", \"wal-mart\", \"walmmmart\", \"沃尔玛\"",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of matched chains to return from this query. The default is 10. The maximum possible value is 500.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/chains:search",
          response = {
            ["$ref"] = "SearchChainsResponse",
          },
        },
      },
    },
    googleLocations = {
      methods = {
        search = {
          description = "Search all of the possible locations that are a match to the specified request.",
          flatPath = "v1/googleLocations:search",
          httpMethod = "POST",
          id = "mybusinessbusinessinformation.googleLocations.search",
          parameterOrder = {},
          parameters = {},
          path = "v1/googleLocations:search",
          request = {
            ["$ref"] = "SearchGoogleLocationsRequest",
          },
          response = {
            ["$ref"] = "SearchGoogleLocationsResponse",
          },
        },
      },
    },
    locations = {
      methods = {
        associate = {
          description = "Associates a location to a place ID. Any previous association is overwritten. This operation is only valid if the location is unverified. The association must be valid, that is, it appears in the list of `SearchGoogleLocations`.",
          flatPath = "v1/locations/{locationsId}:associate",
          httpMethod = "POST",
          id = "mybusinessbusinessinformation.locations.associate",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the location to associate.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:associate",
          request = {
            ["$ref"] = "AssociateLocationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
        clearLocationAssociation = {
          description = "Clears an association between a location and its place ID. This operation is only valid if the location is unverified.",
          flatPath = "v1/locations/{locationsId}:clearLocationAssociation",
          httpMethod = "POST",
          id = "mybusinessbusinessinformation.locations.clearLocationAssociation",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the location to disassociate.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:clearLocationAssociation",
          request = {
            ["$ref"] = "ClearLocationAssociationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
        delete = {
          description = "Deletes a location. If this location cannot be deleted using the API and it is marked so in the `google.mybusiness.businessinformation.v1.LocationState`, use the [Google Business Profile](https://business.google.com/manage/) website.",
          flatPath = "v1/locations/{locationsId}",
          httpMethod = "DELETE",
          id = "mybusinessbusinessinformation.locations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the location to delete.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
        },
        get = {
          description = "Returns the specified location.",
          flatPath = "v1/locations/{locationsId}",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.locations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the location to fetch.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "Required. Read mask to specify what fields will be returned in the response.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Location",
          },
        },
        getAttributes = {
          description = "Looks up all the attributes set for a given location.",
          flatPath = "v1/locations/{locationsId}/attributes",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.locations.getAttributes",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Google identifier for this location in the form of `locations/{location_id}/attributes`.",
              location = "path",
              pattern = "^locations/[^/]+/attributes$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Attributes",
          },
        },
        getGoogleUpdated = {
          description = "Gets the Google-updated version of the specified location.",
          flatPath = "v1/locations/{locationsId}:getGoogleUpdated",
          httpMethod = "GET",
          id = "mybusinessbusinessinformation.locations.getGoogleUpdated",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the location to fetch.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "Required. Read mask to specify what fields will be returned in the response.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}:getGoogleUpdated",
          response = {
            ["$ref"] = "GoogleUpdatedLocation",
          },
        },
        patch = {
          description = "Updates the specified location.",
          flatPath = "v1/locations/{locationsId}",
          httpMethod = "PATCH",
          id = "mybusinessbusinessinformation.locations.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Google identifier for this location in the form: `locations/{location_id}`.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The specific fields to update.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            validateOnly = {
              description = "Optional. If true, the request is validated without actually updating the location. When this field is set, we will only return validation errors if there were any. The response will be empty if no errors were found.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Location",
          },
          response = {
            ["$ref"] = "Location",
          },
        },
        updateAttributes = {
          description = "Update attributes for a given location.",
          flatPath = "v1/locations/{locationsId}/attributes",
          httpMethod = "PATCH",
          id = "mybusinessbusinessinformation.locations.updateAttributes",
          parameterOrder = {
            "name",
          },
          parameters = {
            attributeMask = {
              description = "Required. Attribute name of attributes that you'd like to update. Represented by `attributes/{attribute}`. Updates: All attributes provided in the attributes field that you would like to update must be set in the `attribute_mask`. Attributes set in the above list but not in the `attribute_mask` will be ignored. Deletes: If you'd like to delete certain attributes, they must be specified in the `attribute_mask` with no matching entry in the attributes list. If you'd like to delete all attributes set on a location, you should look up all the applicable attributes for the location and then add them to the `attribute_mask` with an empty attributes field.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. Google identifier for this location in the form of `locations/{location_id}/attributes`.",
              location = "path",
              pattern = "^locations/[^/]+/attributes$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Attributes",
          },
          response = {
            ["$ref"] = "Attributes",
          },
        },
      },
      resources = {
        attributes = {
          methods = {
            getGoogleUpdated = {
              description = "Gets the Google-updated version of the specified location.",
              flatPath = "v1/locations/{locationsId}/attributes:getGoogleUpdated",
              httpMethod = "GET",
              id = "mybusinessbusinessinformation.locations.attributes.getGoogleUpdated",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Google identifier for this location in the form of `locations/{location_id}/attributes`.",
                  location = "path",
                  pattern = "^locations/[^/]+/attributes$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:getGoogleUpdated",
              response = {
                ["$ref"] = "Attributes",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://mybusinessbusinessinformation.googleapis.com/",
  schemas = {
    AdWordsLocationExtensions = {
      description = "Additional information that is surfaced in AdWords.",
      id = "AdWordsLocationExtensions",
      properties = {
        adPhone = {
          description = "Required. An alternate phone number to display on AdWords location extensions instead of the location's primary phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    AssociateLocationRequest = {
      description = "Request message for Locations.AssociateLocationRequest.",
      id = "AssociateLocationRequest",
      properties = {
        placeId = {
          description = "The association to establish. If not set, it indicates no match.",
          type = "string",
        },
      },
      type = "object",
    },
    Attribute = {
      description = "A location attribute. Attributes provide additional information about a location. The attributes that can be set on a location may vary based on the properties of that location (for example, category). Available attributes are determined by Google and may be added and removed without API changes.",
      id = "Attribute",
      properties = {
        name = {
          description = "Required. The resource name for this attribute.",
          type = "string",
        },
        repeatedEnumValue = {
          ["$ref"] = "RepeatedEnumAttributeValue",
          description = "When the attribute value type is REPEATED_ENUM, this contains the attribute value, and the other values fields must be empty.",
        },
        uriValues = {
          description = "When the attribute value type is URL, this field contains the value(s) for this attribute, and the other values fields must be empty.",
          items = {
            ["$ref"] = "UriAttributeValue",
          },
          type = "array",
        },
        valueType = {
          description = "Output only. The type of value that this attribute contains. This should be used to determine how to interpret the value.",
          enum = {
            "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "ENUM",
            "URL",
            "REPEATED_ENUM",
          },
          enumDescriptions = {
            "Not specified.",
            "The values for this attribute are boolean values.",
            "The attribute has a predetermined list of available values that can be used. Metadata for this attribute will list these values.",
            "The values for this attribute are URLs.",
            "The attribute value is an enum with multiple possible values that can be explicitly set or unset.",
          },
          readOnly = true,
          type = "string",
        },
        values = {
          description = "The values for this attribute. The type of the values supplied must match that expected for that attribute. This is a repeated field where multiple attribute values may be provided. Attribute types only support one value.",
          items = {
            type = "any",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AttributeMetadata = {
      description = "Metadata for an attribute. Contains display information for the attribute, including a localized name and a heading for grouping related attributes together.",
      id = "AttributeMetadata",
      properties = {
        deprecated = {
          description = "If true, the attribute is deprecated and should no longer be used. If deprecated, updating this attribute will not result in an error, but updates will not be saved. At some point after being deprecated, the attribute will be removed entirely and it will become an error.",
          type = "boolean",
        },
        displayName = {
          description = "The localized display name for the attribute, if available; otherwise, the English display name.",
          type = "string",
        },
        groupDisplayName = {
          description = "The localized display name of the group that contains this attribute, if available; otherwise, the English group name. Related attributes are collected into a group and should be displayed together under the heading given here.",
          type = "string",
        },
        parent = {
          description = "The unique identifier for the attribute.",
          type = "string",
        },
        repeatable = {
          description = "If true, the attribute supports multiple values. If false, only a single value should be provided.",
          type = "boolean",
        },
        valueMetadata = {
          description = "For some types of attributes (for example, enums), a list of supported values and corresponding display names for those values is provided.",
          items = {
            ["$ref"] = "AttributeValueMetadata",
          },
          type = "array",
        },
        valueType = {
          description = "The value type for the attribute. Values set and retrieved should be expected to be of this type.",
          enum = {
            "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED",
            "BOOL",
            "ENUM",
            "URL",
            "REPEATED_ENUM",
          },
          enumDescriptions = {
            "Not specified.",
            "The values for this attribute are boolean values.",
            "The attribute has a predetermined list of available values that can be used. Metadata for this attribute will list these values.",
            "The values for this attribute are URLs.",
            "The attribute value is an enum with multiple possible values that can be explicitly set or unset.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AttributeValueMetadata = {
      description = "Metadata for supported attribute values.",
      id = "AttributeValueMetadata",
      properties = {
        displayName = {
          description = "The display name for this value, localized where available; otherwise, in English. The value display name is intended to be used in context with the attribute display name. For example, for a \"WiFi\" enum attribute, this could contain \"Paid\" to represent paid Wi-Fi.",
          type = "string",
        },
        value = {
          description = "The attribute value.",
          type = "any",
        },
      },
      type = "object",
    },
    Attributes = {
      description = "A container for all the attributes for a given location.",
      id = "Attributes",
      properties = {
        attributes = {
          description = "A collection of attributes that need to be updated.",
          items = {
            ["$ref"] = "Attribute",
          },
          type = "array",
        },
        name = {
          description = "Required. Google identifier for this location in the form of `locations/{location_id}/attributes`.",
          type = "string",
        },
      },
      type = "object",
    },
    BatchGetCategoriesResponse = {
      description = "Response message for BusinessCategories.BatchGetBusinessCategories.",
      id = "BatchGetCategoriesResponse",
      properties = {
        categories = {
          description = "Categories that match the GConcept ids provided in the request. They will not come in the same order as category ids in the request.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BusinessHours = {
      description = "Represents the time periods that this location is open for business. Holds a collection of TimePeriod instances.",
      id = "BusinessHours",
      properties = {
        periods = {
          description = "Required. A collection of times that this location is open for business. Each period represents a range of hours when the location is open during the week.",
          items = {
            ["$ref"] = "TimePeriod",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Categories = {
      description = "A collection of categories that describes the business. During updates, both fields must be set. Clients are prohibited from individually updating the primary or additional categories using the update mask.",
      id = "Categories",
      properties = {
        additionalCategories = {
          description = "Optional. Additional categories to describe your business. Categories help your customers find accurate, specific results for services they're interested in. To keep your business information accurate and live, make sure that you use as few categories as possible to describe your overall core business. Choose categories that are as specific as possible, but representative of your main business.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
        primaryCategory = {
          ["$ref"] = "Category",
          description = "Required. Category that best describes the core business this location engages in.",
        },
      },
      type = "object",
    },
    Category = {
      description = "A category describing what this business is (not what it does). For a list of valid category IDs, and the mappings to their human-readable names, see `categories.list`.",
      id = "Category",
      properties = {
        displayName = {
          description = "Output only. The human-readable name of the category. This is set when reading the location. When modifying the location, `category_id` must be set.",
          readOnly = true,
          type = "string",
        },
        moreHoursTypes = {
          description = "Output only. More hours types that are available for this business category.",
          items = {
            ["$ref"] = "MoreHoursType",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Required. A stable ID (provided by Google) for this category. The value must be specified when modifying the category (when creating or updating a location).",
          type = "string",
        },
        serviceTypes = {
          description = "Output only. A list of all the service types that are available for this business category.",
          items = {
            ["$ref"] = "ServiceType",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    Chain = {
      description = "A chain is a brand that your business's locations can be affiliated with.",
      id = "Chain",
      properties = {
        chainNames = {
          description = "Names of the chain.",
          items = {
            ["$ref"] = "ChainName",
          },
          type = "array",
        },
        locationCount = {
          description = "Number of locations that are part of this chain.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Required. The chain's resource name, in the format `chains/{chain_id}`.",
          type = "string",
        },
        websites = {
          description = "Websites of the chain.",
          items = {
            ["$ref"] = "ChainUri",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChainName = {
      description = "Name to be used when displaying the chain.",
      id = "ChainName",
      properties = {
        displayName = {
          description = "The display name for this chain.",
          type = "string",
        },
        languageCode = {
          description = "The BCP 47 code of language of the name.",
          type = "string",
        },
      },
      type = "object",
    },
    ChainUri = {
      description = "Url to be used when displaying the chain.",
      id = "ChainUri",
      properties = {
        uri = {
          description = "The uri for this chain.",
          type = "string",
        },
      },
      type = "object",
    },
    ClearLocationAssociationRequest = {
      description = "Request message for Locations.ClearLocationAssociationRequest.",
      id = "ClearLocationAssociationRequest",
      properties = {},
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    FreeFormServiceItem = {
      description = "Represents a free-form service offered by the merchant. These are services that are not exposed as part of our structure service data. The merchant manually enters the names for of such services via a geomerchant surface.",
      id = "FreeFormServiceItem",
      properties = {
        category = {
          description = "Required. This field represents the category name (i.e. the category's stable ID). The `category` and `service_type_id` should match the possible combinations provided in the `Category` message.",
          type = "string",
        },
        label = {
          ["$ref"] = "Label",
          description = "Required. Language-tagged labels for the item. We recommend that item names be 140 characters or less, and descriptions 250 characters or less. This field should only be set if the input is a custom service item. Standardized service types should be updated via service_type_id.",
        },
      },
      type = "object",
    },
    GoogleLocation = {
      description = "Represents a Location that is present on Google. This can be a location that has been claimed by the user, someone else, or could be unclaimed.",
      id = "GoogleLocation",
      properties = {
        location = {
          ["$ref"] = "Location",
          description = "The sparsely populated Location information. This field can be re-used in CreateLocation if it is not currently claimed by a user.",
        },
        name = {
          description = "Resource name of this GoogleLocation, in the format `googleLocations/{googleLocationId}`.",
          type = "string",
        },
        requestAdminRightsUri = {
          description = "A URL that will redirect the user to the request admin rights UI. This field is only present if the location has already been claimed by any user, including the current user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleUpdatedLocation = {
      description = "Represents a location that was modified by Google.",
      id = "GoogleUpdatedLocation",
      properties = {
        diffMask = {
          description = "The fields that Google updated.",
          format = "google-fieldmask",
          type = "string",
        },
        location = {
          ["$ref"] = "Location",
          description = "The Google-updated version of this location.",
        },
        pendingMask = {
          description = "The fields that have pending edits that haven't yet been pushed to Maps and Search.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Label = {
      description = "Label to be used when displaying the price list, section, or item.",
      id = "Label",
      properties = {
        description = {
          description = "Optional. Description of the price list, section, or item.",
          type = "string",
        },
        displayName = {
          description = "Required. Display name for the price list, section, or item.",
          type = "string",
        },
        languageCode = {
          description = "Optional. The BCP-47 language code that these strings apply for. Only one set of labels may be set per language.",
          type = "string",
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
    ListAttributeMetadataResponse = {
      description = "Response for AttributesService.ListAttributeMetadata.",
      id = "ListAttributeMetadataResponse",
      properties = {
        attributeMetadata = {
          description = "A collection of attribute metadata for the available attributes.",
          items = {
            ["$ref"] = "AttributeMetadata",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the number of attributes exceeded the requested page size, this field will be populated with a token to fetch the next page of attributes on a subsequent call to `attributes.list`. If there are no more attributes, this field will not be present in the response.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCategoriesResponse = {
      description = "Response message for BusinessCategories.ListCategories.",
      id = "ListCategoriesResponse",
      properties = {
        categories = {
          description = "The matching categories based on the requested parameters.",
          items = {
            ["$ref"] = "Category",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the number of categories exceeded the requested page size, this field will be populated with a token to fetch the next page of categories on a subsequent call to `ListCategories`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "Response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "The locations.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the number of locations exceeded the requested page size, this field is populated with a token to fetch the next page of locations on a subsequent call to `ListLocations`. If there are no more locations, this field is not present in the response.",
          type = "string",
        },
        totalSize = {
          description = "The approximate number of Locations in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Location = {
      description = "A location. See the [help center article] (https://support.google.com/business/answer/3038177) for a detailed description of these fields, or the [category endpoint](/my-business/reference/rest/v4/categories) for a list of valid business categories.",
      id = "Location",
      properties = {
        adWordsLocationExtensions = {
          ["$ref"] = "AdWordsLocationExtensions",
          description = "Optional. Additional information that is surfaced in AdWords.",
        },
        categories = {
          ["$ref"] = "Categories",
          description = "Optional. The different categories that describe the business.",
        },
        labels = {
          description = "Optional. A collection of free-form strings to allow you to tag your business. These labels are NOT user facing; only you can see them. Must be between 1-255 characters per label.",
          items = {
            type = "string",
          },
          type = "array",
        },
        languageCode = {
          description = "Immutable. The language of the location. Set during creation and not updateable.",
          type = "string",
        },
        latlng = {
          ["$ref"] = "LatLng",
          description = "Optional. User-provided latitude and longitude. When creating a location, this field is ignored if the provided address geocodes successfully. This field is only returned on get requests if the user-provided `latlng` value was accepted during create, or the `latlng` value was updated through the Google Business Profile website. This field can only be updated by approved clients.",
        },
        metadata = {
          ["$ref"] = "Metadata",
          description = "Output only. Additional non-user-editable information.",
          readOnly = true,
        },
        moreHours = {
          description = "Optional. More hours for a business's different departments or specific customers.",
          items = {
            ["$ref"] = "MoreHours",
          },
          type = "array",
        },
        name = {
          description = "Google identifier for this location in the form: `locations/{location_id}`.",
          type = "string",
        },
        openInfo = {
          ["$ref"] = "OpenInfo",
          description = "Optional. A flag that indicates whether the location is currently open for business.",
        },
        phoneNumbers = {
          ["$ref"] = "PhoneNumbers",
          description = "Optional. The different phone numbers that customers can use to get in touch with the business.",
        },
        profile = {
          ["$ref"] = "Profile",
          description = "Optional. Describes your business in your own voice and shares with users the unique story of your business and offerings. This field is required for all categories except lodging categories (e.g. hotels, motels, inns).",
        },
        regularHours = {
          ["$ref"] = "BusinessHours",
          description = "Optional. Operating hours for the business.",
        },
        relationshipData = {
          ["$ref"] = "RelationshipData",
          description = "Optional. All locations and chain related to this one.",
        },
        serviceArea = {
          ["$ref"] = "ServiceAreaBusiness",
          description = "Optional. Service area businesses provide their service at the customer's location. If this business is a service area business, this field describes the area(s) serviced by the business.",
        },
        serviceItems = {
          description = "Optional. List of services supported by merchants. A service can be haircut, install water heater, etc. Duplicated service items will be removed automatically.",
          items = {
            ["$ref"] = "ServiceItem",
          },
          type = "array",
        },
        specialHours = {
          ["$ref"] = "SpecialHours",
          description = "Optional. Special hours for the business. This typically includes holiday hours, and other times outside of regular operating hours. These override regular business hours. This field cannot be set without regular hours.",
        },
        storeCode = {
          description = "Optional. External identifier for this location, which must be unique within a given account. This is a means of associating the location with your own records.",
          type = "string",
        },
        storefrontAddress = {
          ["$ref"] = "PostalAddress",
          description = "Optional. A precise, accurate address to describe your business location. PO boxes or mailboxes located at remote locations are not acceptable. At this time, you can specify a maximum of five `address_lines` values in the address. This field should only be set for businesses that have a storefront. This field should not be set for locations of type `CUSTOMER_LOCATION_ONLY`.",
        },
        title = {
          description = "Required. Location name should reflect your business's real-world name, as used consistently on your storefront, website, and stationery, and as known to customers. Any additional information, when relevant, can be included in other fields of the resource (for example, `Address`, `Categories`). Don't add unnecessary information to your name (for example, prefer \"Google\" over \"Google Inc. - Mountain View Corporate Headquarters\"). Don't include marketing taglines, store codes, special characters, hours or closed/open status, phone numbers, website URLs, service/product information, location/address or directions, or containment information (for example, \"Chase ATM in Duane Reade\").",
          type = "string",
        },
        websiteUri = {
          description = "Optional. A URL for this business. If possible, use a URL that represents this individual business location instead of a generic website/URL that represents all locations, or the brand.",
          type = "string",
        },
      },
      type = "object",
    },
    Metadata = {
      description = "Additional non-user-editable information about the location.",
      id = "Metadata",
      properties = {
        canDelete = {
          description = "Output only. Indicates whether the location can be deleted using the API.",
          readOnly = true,
          type = "boolean",
        },
        canHaveBusinessCalls = {
          description = "Output only. Indicates if the listing is eligible for business calls.",
          readOnly = true,
          type = "boolean",
        },
        canHaveFoodMenus = {
          description = "Output only. Indicates if the listing is eligible for food menu.",
          readOnly = true,
          type = "boolean",
        },
        canModifyServiceList = {
          description = "Output only. Indicates if the listing can modify the service list.",
          readOnly = true,
          type = "boolean",
        },
        canOperateHealthData = {
          description = "Output only. Indicates whether the location can operate on Health data.",
          readOnly = true,
          type = "boolean",
        },
        canOperateLocalPost = {
          description = "Output only. Indicates if the listing can manage local posts.",
          readOnly = true,
          type = "boolean",
        },
        canOperateLodgingData = {
          description = "Output only. Indicates whether the location can operate on Lodging data.",
          readOnly = true,
          type = "boolean",
        },
        duplicateLocation = {
          description = "Output only. The location resource that this location duplicates.",
          readOnly = true,
          type = "string",
        },
        hasGoogleUpdated = {
          description = "Output only. Indicates whether the place ID associated with this location has updates that need to be updated or rejected by the client. If this boolean is set, you should call the `getGoogleUpdated` method to lookup information that's needs to be verified.",
          readOnly = true,
          type = "boolean",
        },
        hasPendingEdits = {
          description = "Output only. Indicates whether any of this Location's properties are in the edit pending state.",
          readOnly = true,
          type = "boolean",
        },
        hasVoiceOfMerchant = {
          description = "Output only. Indicates if the listing has Voice of Merchant. If this boolean is false, you should call the locations.getVoiceOfMerchantState API to get details as to why they do not have Voice of Merchant.",
          readOnly = true,
          type = "boolean",
        },
        mapsUri = {
          description = "Output only. A link to the location on Maps.",
          readOnly = true,
          type = "string",
        },
        newReviewUri = {
          description = "Output only. A link to the page on Google Search where a customer can leave a review for the location.",
          readOnly = true,
          type = "string",
        },
        placeId = {
          description = "Output only. If this locationappears on Google Maps, this field is populated with the place ID for the location. This ID can be used in various Places APIs. This field can be set during Create calls, but not for Update.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MoreHours = {
      description = "The time periods during which a location is open for certain types of business.",
      id = "MoreHours",
      properties = {
        hoursTypeId = {
          description = "Required. Type of hours. Clients should call {#link businessCategories:BatchGet} to get supported hours types for categories of their locations.",
          type = "string",
        },
        periods = {
          description = "Required. A collection of times that this location is open. Each period represents a range of hours when the location is open during the week.",
          items = {
            ["$ref"] = "TimePeriod",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoreHoursType = {
      description = "More hours types that a business can offers, in addition to its regular hours.",
      id = "MoreHoursType",
      properties = {
        displayName = {
          description = "Output only. The human-readable English display name for the hours type.",
          readOnly = true,
          type = "string",
        },
        hoursTypeId = {
          description = "Output only. A stable ID provided by Google for this hours type.",
          readOnly = true,
          type = "string",
        },
        localizedDisplayName = {
          description = "Output only. The human-readable localized display name for the hours type.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    OpenInfo = {
      description = "Information related to the opening state of the business.",
      id = "OpenInfo",
      properties = {
        canReopen = {
          description = "Output only. Indicates whether this business is eligible for re-open.",
          readOnly = true,
          type = "boolean",
        },
        openingDate = {
          ["$ref"] = "Date",
          description = "Optional. The date on which the location first opened. If the exact day is not known, month and year only can be provided. The date must be in the past or be no more than one year in the future.",
        },
        status = {
          description = "Required. Indicates whether or not the Location is currently open for business. All locations are open by default, unless updated to be closed.",
          enum = {
            "OPEN_FOR_BUSINESS_UNSPECIFIED",
            "OPEN",
            "CLOSED_PERMANENTLY",
            "CLOSED_TEMPORARILY",
          },
          enumDescriptions = {
            "Not specified.",
            "Indicates that the location is open.",
            "Indicates that the location has been permanently closed.",
            "Indicates that the location has been temporarily closed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PhoneNumbers = {
      description = "A collection of phone numbers for the business. During updates, both fields must be set. Clients may not update just the primary or additional phone numbers using the update mask. International phone format is preferred, such as \"+1 415 555 0132\", see more in (https://developers.google.com/style/phone-numbers#international-phone-numbers).",
      id = "PhoneNumbers",
      properties = {
        additionalPhones = {
          description = "Optional. Up to two phone numbers (mobile or landline, no fax) at which your business can be called, in addition to your primary phone number.",
          items = {
            type = "string",
          },
          type = "array",
        },
        primaryPhone = {
          description = "Required. A phone number that connects to your individual business location as directly as possible. Use a local phone number instead of a central, call center helpline number whenever possible.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaceInfo = {
      description = "Defines an area that's represented by a place ID.",
      id = "PlaceInfo",
      properties = {
        placeId = {
          description = "Required. The ID of the place. Must correspond to a region. (https://developers.google.com/places/web-service/supported_types#table3)",
          type = "string",
        },
        placeName = {
          description = "Required. The localized name of the place. For example, `Scottsdale, AZ`.",
          type = "string",
        },
      },
      type = "object",
    },
    Places = {
      description = "Defines the union of areas represented by a set of places.",
      id = "Places",
      properties = {
        placeInfos = {
          description = "The areas represented by place IDs. Limited to a maximum of 20 places.",
          items = {
            ["$ref"] = "PlaceInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "PostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    Profile = {
      description = "All information pertaining to the location's profile.",
      id = "Profile",
      properties = {
        description = {
          description = "Required. Description of the location in your own voice, not editable by anyone else.",
          type = "string",
        },
      },
      type = "object",
    },
    RelationshipData = {
      description = "Information of all parent and children locations related to this one.",
      id = "RelationshipData",
      properties = {
        childrenLocations = {
          description = "The list of children locations that this location has relations with.",
          items = {
            ["$ref"] = "RelevantLocation",
          },
          type = "array",
        },
        parentChain = {
          description = "The resource name of the Chain that this location is member of. How to find Chain ID",
          type = "string",
        },
        parentLocation = {
          ["$ref"] = "RelevantLocation",
          description = "The parent location that this location has relations with.",
        },
      },
      type = "object",
    },
    RelevantLocation = {
      description = "Information about another location that is related to current one. The relation can be any one of DEPARTMENT_OF or INDEPENDENT_ESTABLISHMENT_OF, and the location specified here can be on either side (parent/child) of the location.",
      id = "RelevantLocation",
      properties = {
        placeId = {
          description = "Required. Specify the location that is on the other side of the relation by its placeID.",
          type = "string",
        },
        relationType = {
          description = "Required. The type of the relationship.",
          enum = {
            "RELATION_TYPE_UNSPECIFIED",
            "DEPARTMENT_OF",
            "INDEPENDENT_ESTABLISHMENT_IN",
          },
          enumDescriptions = {
            "Type unspecified.",
            "This represents a relation between 2 locations which share one physical area, same brand/upper management/organization, but with different key attributes like store hours or phone numbers. For example, Costco Pharmacy is a department in Costco Wholesale.",
            "This represents the cases where 2 locations are co-located in the same physical location, but from different companies (e.g. Starbucks in a Safeway, shops in a mall).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RepeatedEnumAttributeValue = {
      description = "Values for an attribute with a `value_type` of REPEATED_ENUM. This consists of two lists of value IDs: those that are set (true) and those that are unset (false). Values absent are considered unknown. At least one value must be specified.",
      id = "RepeatedEnumAttributeValue",
      properties = {
        setValues = {
          description = "Enum values that are set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        unsetValues = {
          description = "Enum values that are unset.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchChainsResponse = {
      description = "Response message for Locations.SearchChains.",
      id = "SearchChainsResponse",
      properties = {
        chains = {
          description = "Chains that match the queried chain_display_name in SearchChainsRequest. If there are no matches, this field will be empty. Results are listed in order of relevance.",
          items = {
            ["$ref"] = "Chain",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchGoogleLocationsRequest = {
      description = "Request message for GoogleLocations.SearchGoogleLocations.",
      id = "SearchGoogleLocationsRequest",
      properties = {
        location = {
          ["$ref"] = "Location",
          description = "Location to search for. If provided, will find locations which match the provided location details.",
        },
        pageSize = {
          description = "The number of matches to return. The default value is 3, with a maximum of 10. Note that latency may increase if more are requested. There is no pagination.",
          format = "int32",
          type = "integer",
        },
        query = {
          description = "Text query to search for. The search results from a query string will be less accurate than if providing an exact location, but can provide more inexact matches.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchGoogleLocationsResponse = {
      description = "Response message for GoogleLocations.SearchGoogleLocations.",
      id = "SearchGoogleLocationsResponse",
      properties = {
        googleLocations = {
          description = "A collection of GoogleLocations that are potential matches to the specified request, listed in order from most to least accuracy.",
          items = {
            ["$ref"] = "GoogleLocation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServiceAreaBusiness = {
      description = "Service area businesses provide their service at the customer's location (for example, a locksmith or plumber).",
      id = "ServiceAreaBusiness",
      properties = {
        businessType = {
          description = "Required. Indicates the type of the service area business.",
          enum = {
            "BUSINESS_TYPE_UNSPECIFIED",
            "CUSTOMER_LOCATION_ONLY",
            "CUSTOMER_AND_BUSINESS_LOCATION",
          },
          enumDescriptions = {
            "Output only. Not specified.",
            "Offers service only in the surrounding area (not at the business address). If a business is being updated from a CUSTOMER_AND_BUSINESS_LOCATION to a CUSTOMER_LOCATION_ONLY, the location update must include field mask `storefront_address` and set the field to empty.",
            "Offers service at the business address and the surrounding area.",
          },
          type = "string",
        },
        places = {
          ["$ref"] = "Places",
          description = "The area that this business serves defined through a set of places.",
        },
        regionCode = {
          description = "Immutable. CLDR region code of the country/region that this service area business is based in. See http://cldr.unicode.org/ and http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland. This field is required for CUSTOMER_LOCATION_ONLY businesses, and is ignored otherwise. The region specified here can be different from regions for the areas that this business serves (e.g. service area businesses that provide services in regions other than the one that they are based in). If this location requires verification after creation, the address provided for verification purposes *must* be located within this region, and the business owner or their authorized representative *must* be able to receive postal mail at the provided verification address.",
          type = "string",
        },
      },
      type = "object",
    },
    ServiceItem = {
      description = "A message that describes a single service item. It is used to describe the type of service that the merchant provides. For example, haircut can be a service.",
      id = "ServiceItem",
      properties = {
        freeFormServiceItem = {
          ["$ref"] = "FreeFormServiceItem",
          description = "Optional. This field will be set case of free-form services data.",
        },
        price = {
          ["$ref"] = "Money",
          description = "Optional. Represents the monetary price of the service item. We recommend that currency_code and units should be set when including a price. This will be treated as a fixed price for the service item.",
        },
        structuredServiceItem = {
          ["$ref"] = "StructuredServiceItem",
          description = "Optional. This field will be set case of structured services data.",
        },
      },
      type = "object",
    },
    ServiceType = {
      description = "A message describing a service type that the business offers.",
      id = "ServiceType",
      properties = {
        displayName = {
          description = "Output only. The human-readable display name for the service type.",
          readOnly = true,
          type = "string",
        },
        serviceTypeId = {
          description = "Output only. A stable ID (provided by Google) for this service type.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SpecialHourPeriod = {
      description = "Represents a single time period when a location's operational hours differ from its normal business hours. A special hour period must represent a range of less than 24 hours. The `open_time` and `start_date` must predate the `close_time` and `end_date`. The `close_time` and `end_date` can extend to 11:59 a.m. on the day after the specified `start_date`. For example, the following inputs are valid: start_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-23, open_time=08:00, close_time=18:00 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=11:59 The following inputs are not valid: start_date=2015-11-23, open_time=13:00, close_time=11:59 start_date=2015-11-23, end_date=2015-11-24, open_time=13:00, close_time=12:00 start_date=2015-11-23, end_date=2015-11-25, open_time=08:00, close_time=18:00",
      id = "SpecialHourPeriod",
      properties = {
        closeTime = {
          ["$ref"] = "TimeOfDay",
          description = "Optional. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field. Must be specified if `closed` is false.",
        },
        closed = {
          description = "Optional. If true, `end_date`, `open_time`, and `close_time` are ignored, and the date specified in `start_date` is treated as the location being closed for the entire day.",
          type = "boolean",
        },
        endDate = {
          ["$ref"] = "Date",
          description = "Optional. The calendar date this special hour period ends on. If `end_date` field is not set, default to the date specified in `start_date`. If set, this field must be equal to or at most 1 day after `start_date`.",
        },
        openTime = {
          ["$ref"] = "TimeOfDay",
          description = "Optional. Valid values are 00:00-24:00 where 24:00 represents midnight at the end of the specified day field. Must be specified if `closed` is false.",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Required. The calendar date this special hour period starts on.",
        },
      },
      type = "object",
    },
    SpecialHours = {
      description = "Represents a set of time periods when a location's operational hours differ from its normal business hours.",
      id = "SpecialHours",
      properties = {
        specialHourPeriods = {
          description = "Required. A list of exceptions to the business's regular hours.",
          items = {
            ["$ref"] = "SpecialHourPeriod",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StructuredServiceItem = {
      description = "Represents a structured service offered by the merchant. For eg: toilet_installation.",
      id = "StructuredServiceItem",
      properties = {
        description = {
          description = "Optional. Description of structured service item. The character limit is 300.",
          type = "string",
        },
        serviceTypeId = {
          description = "Required. The `service_type_id` field is a Google provided unique ID that can be found in `ServiceType`. This information is provided by `BatchGetCategories` rpc service.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TimePeriod = {
      description = "Represents a span of time that the business is open, starting on the specified open day/time and closing on the specified close day/time. The closing time must occur after the opening time, for example later in the same day, or on a subsequent day.",
      id = "TimePeriod",
      properties = {
        closeDay = {
          description = "Required. Indicates the day of the week this period ends on.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        closeTime = {
          ["$ref"] = "TimeOfDay",
          description = "Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field.",
        },
        openDay = {
          description = "Required. Indicates the day of the week this period starts on.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        openTime = {
          ["$ref"] = "TimeOfDay",
          description = "Required. Valid values are 00:00-24:00, where 24:00 represents midnight at the end of the specified day field.",
        },
      },
      type = "object",
    },
    UriAttributeValue = {
      description = "Values for an attribute with a `value_type` of URL.",
      id = "UriAttributeValue",
      properties = {
        uri = {
          description = "Required. The proposed URI value for this attribute.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "My Business Business Information API",
  version = "v1",
  version_module = true,
}