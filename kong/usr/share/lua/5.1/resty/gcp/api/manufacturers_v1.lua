return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/manufacturercenter"] = {
          description = "Manage your product listings for Google Manufacturer Center",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://manufacturers.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Manufacturer Center",
  description = "Public API for managing Manufacturer Center related data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/manufacturers/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "manufacturers:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://manufacturers.mtls.googleapis.com/",
  name = "manufacturers",
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
        products = {
          methods = {
            delete = {
              description = "Deletes the product from a Manufacturer Center account.",
              flatPath = "v1/accounts/{accountsId}/products/{productsId}",
              httpMethod = "DELETE",
              id = "manufacturers.accounts.products.delete",
              parameterOrder = {
                "parent",
                "name",
              },
              parameters = {
                name = {
                  description = "Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                parent = {
                  description = "Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/products/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/manufacturercenter",
              },
            },
            get = {
              description = "Gets the product from a Manufacturer Center account, including product issues. A recently updated product takes around 15 minutes to process. Changes are only visible after it has been processed. While some issues may be available once the product has been processed, other issues may take days to appear.",
              flatPath = "v1/accounts/{accountsId}/products/{productsId}",
              httpMethod = "GET",
              id = "manufacturers.accounts.products.get",
              parameterOrder = {
                "parent",
                "name",
              },
              parameters = {
                include = {
                  description = "The information to be included in the response. Only sections listed here will be returned.",
                  enum = {
                    "UNKNOWN",
                    "ATTRIBUTES",
                    "ISSUES",
                    "DESTINATION_STATUSES",
                  },
                  enumDescriptions = {
                    "Unknown, never used.",
                    "Include the attributes of the product.",
                    "Include the issues of the product.",
                    "Include the destination statuses of the product.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                name = {
                  description = "Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                parent = {
                  description = "Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/products/{+name}",
              response = {
                ["$ref"] = "Product",
              },
              scopes = {
                "https://www.googleapis.com/auth/manufacturercenter",
              },
            },
            list = {
              description = "Lists all the products in a Manufacturer Center account.",
              flatPath = "v1/accounts/{accountsId}/products",
              httpMethod = "GET",
              id = "manufacturers.accounts.products.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                include = {
                  description = "The information to be included in the response. Only sections listed here will be returned.",
                  enum = {
                    "UNKNOWN",
                    "ATTRIBUTES",
                    "ISSUES",
                    "DESTINATION_STATUSES",
                  },
                  enumDescriptions = {
                    "Unknown, never used.",
                    "Include the attributes of the product.",
                    "Include the issues of the product.",
                    "Include the destination statuses of the product.",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of product statuses to return in the response, used for paging.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The token returned by the previous request.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/products",
              response = {
                ["$ref"] = "ListProductsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/manufacturercenter",
              },
            },
            update = {
              description = "Inserts or updates the attributes of the product in a Manufacturer Center account. Creates a product with the provided attributes. If the product already exists, then all attributes are replaced with the new ones. The checks at upload time are minimal. All required attributes need to be present for a product to be valid. Issues may show up later after the API has accepted a new upload for a product and it is possible to overwrite an existing valid product with an invalid product. To detect this, you should retrieve the product and check it for issues once the new version is available. Uploaded attributes first need to be processed before they can be retrieved. Until then, new products will be unavailable, and retrieval of previously uploaded products will return the original state of the product.",
              flatPath = "v1/accounts/{accountsId}/products/{productsId}",
              httpMethod = "PUT",
              id = "manufacturers.accounts.products.update",
              parameterOrder = {
                "parent",
                "name",
              },
              parameters = {
                name = {
                  description = "Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                parent = {
                  description = "Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/products/{+name}",
              request = {
                ["$ref"] = "Attributes",
              },
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/manufacturercenter",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://manufacturers.googleapis.com/",
  schemas = {
    Attributes = {
      description = "Attributes of the product. For more information, see https://support.google.com/manufacturers/answer/6124116.",
      id = "Attributes",
      properties = {
        additionalImageLink = {
          description = "The additional images of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#addlimage.",
          items = {
            ["$ref"] = "Image",
          },
          type = "array",
        },
        ageGroup = {
          description = "The target age group of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#agegroup.",
          type = "string",
        },
        brand = {
          description = "The brand name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#brand.",
          type = "string",
        },
        capacity = {
          ["$ref"] = "Capacity",
          description = "The capacity of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity.",
        },
        color = {
          description = "The color of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#color.",
          type = "string",
        },
        count = {
          ["$ref"] = "Count",
          description = "The count of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#count.",
        },
        description = {
          description = "The description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#description.",
          type = "string",
        },
        disclosureDate = {
          description = "The disclosure date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#disclosure.",
          type = "string",
        },
        excludedDestination = {
          description = "A list of excluded destinations such as \"ClientExport\", \"ClientShoppingCatalog\" or \"PartnerShoppingCatalog\". For more information, see https://support.google.com/manufacturers/answer/7443550",
          items = {
            type = "string",
          },
          type = "array",
        },
        featureDescription = {
          description = "The rich format description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.",
          items = {
            ["$ref"] = "FeatureDescription",
          },
          type = "array",
        },
        flavor = {
          description = "The flavor of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#flavor.",
          type = "string",
        },
        format = {
          description = "The format of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#format.",
          type = "string",
        },
        gender = {
          description = "The target gender of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gender.",
          type = "string",
        },
        grocery = {
          ["$ref"] = "Grocery",
          description = "Grocery Attributes. See more at https://support.google.com/manufacturers/answer/12098458#grocery.",
        },
        gtin = {
          description = "The Global Trade Item Number (GTIN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#gtin.",
          items = {
            type = "string",
          },
          type = "array",
        },
        imageLink = {
          ["$ref"] = "Image",
          description = "The image of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#image.",
        },
        includedDestination = {
          description = "A list of included destinations such as \"ClientExport\", \"ClientShoppingCatalog\" or \"PartnerShoppingCatalog\". For more information, see https://support.google.com/manufacturers/answer/7443550",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemGroupId = {
          description = "The item group id of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#itemgroupid.",
          type = "string",
        },
        material = {
          description = "The material of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#material.",
          type = "string",
        },
        mpn = {
          description = "The Manufacturer Part Number (MPN) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#mpn.",
          type = "string",
        },
        nutrition = {
          ["$ref"] = "Nutrition",
          description = "Nutrition Attributes. See more at https://support.google.com/manufacturers/answer/12098458#food-servings.",
        },
        pattern = {
          description = "The pattern of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#pattern.",
          type = "string",
        },
        productDetail = {
          description = "The details of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.",
          items = {
            ["$ref"] = "ProductDetail",
          },
          type = "array",
        },
        productHighlight = {
          description = "The product highlights. For more information, see https://support.google.com/manufacturers/answer/10066942",
          items = {
            type = "string",
          },
          type = "array",
        },
        productLine = {
          description = "The name of the group of products related to the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productline.",
          type = "string",
        },
        productName = {
          description = "The canonical name of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productname.",
          type = "string",
        },
        productPageUrl = {
          description = "The URL of the detail page of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productpage.",
          type = "string",
        },
        productType = {
          description = "The type or category of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#producttype.",
          items = {
            type = "string",
          },
          type = "array",
        },
        releaseDate = {
          description = "The release date of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#release.",
          type = "string",
        },
        richProductContent = {
          description = "Rich product content. For more information, see https://support.google.com/manufacturers/answer/9389865",
          items = {
            type = "string",
          },
          type = "array",
        },
        scent = {
          description = "The scent of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#scent.",
          type = "string",
        },
        size = {
          description = "The size of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#size.",
          type = "string",
        },
        sizeSystem = {
          description = "The size system of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizesystem.",
          type = "string",
        },
        sizeType = {
          description = "The size type of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#sizetype.",
          items = {
            type = "string",
          },
          type = "array",
        },
        suggestedRetailPrice = {
          ["$ref"] = "Price",
          description = "The suggested retail price (MSRP) of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#price.",
        },
        targetClientId = {
          description = "The target client id. Should only be used in the accounts of the data partners. For more information, see https://support.google.com/manufacturers/answer/10857344",
          type = "string",
        },
        theme = {
          description = "The theme of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#theme.",
          type = "string",
        },
        title = {
          description = "The title of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#title.",
          type = "string",
        },
        videoLink = {
          description = "The videos of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#video.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Capacity = {
      description = "The capacity of a product. For more information, see https://support.google.com/manufacturers/answer/6124116#capacity.",
      id = "Capacity",
      properties = {
        unit = {
          description = "The unit of the capacity, i.e., MB, GB, or TB.",
          type = "string",
        },
        value = {
          description = "The numeric value of the capacity.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Count = {
      description = "The number of products in a single package. For more information, see https://support.google.com/manufacturers/answer/6124116#count.",
      id = "Count",
      properties = {
        unit = {
          description = "The unit in which these products are counted.",
          type = "string",
        },
        value = {
          description = "The numeric value of the number of products in a package.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationStatus = {
      description = "The destination status.",
      id = "DestinationStatus",
      properties = {
        destination = {
          description = "The name of the destination.",
          type = "string",
        },
        status = {
          description = "The status of the destination.",
          enum = {
            "UNKNOWN",
            "ACTIVE",
            "PENDING",
            "DISAPPROVED",
          },
          enumDescriptions = {
            "Unspecified status, never used.",
            "The product is used for this destination.",
            "The decision is still pending.",
            "The product is disapproved. Please look at the issues.",
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
    FeatureDescription = {
      description = "A feature description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.",
      id = "FeatureDescription",
      properties = {
        headline = {
          description = "A short description of the feature.",
          type = "string",
        },
        image = {
          ["$ref"] = "Image",
          description = "An optional image describing the feature.",
        },
        text = {
          description = "A detailed description of the feature.",
          type = "string",
        },
      },
      type = "object",
    },
    FloatUnit = {
      description = "Combination of float amount and unit.",
      id = "FloatUnit",
      properties = {
        amount = {
          description = "amount.",
          format = "double",
          type = "number",
        },
        unit = {
          description = "unit.",
          type = "string",
        },
      },
      type = "object",
    },
    Grocery = {
      id = "Grocery",
      properties = {
        activeIngredients = {
          description = "Active ingredients.",
          type = "string",
        },
        alcoholByVolume = {
          description = "Alcohol by volume.",
          format = "double",
          type = "number",
        },
        allergens = {
          description = "Allergens.",
          type = "string",
        },
        derivedNutritionClaim = {
          description = "Derived nutrition claim.",
          items = {
            type = "string",
          },
          type = "array",
        },
        directions = {
          description = "Directions.",
          type = "string",
        },
        indications = {
          description = "Indications.",
          type = "string",
        },
        ingredients = {
          description = "Ingredients.",
          type = "string",
        },
        nutritionClaim = {
          description = "Nutrition claim.",
          items = {
            type = "string",
          },
          type = "array",
        },
        storageInstructions = {
          description = "Storage instructions.",
          type = "string",
        },
      },
      type = "object",
    },
    Image = {
      description = "An image.",
      id = "Image",
      properties = {
        imageUrl = {
          description = "The URL of the image. For crawled images, this is the provided URL. For uploaded images, this is a serving URL from Google if the image has been processed successfully.",
          type = "string",
        },
        status = {
          description = "The status of the image. @OutputOnly",
          enum = {
            "STATUS_UNSPECIFIED",
            "PENDING_PROCESSING",
            "PENDING_CRAWL",
            "OK",
            "ROBOTED",
            "XROBOTED",
            "CRAWL_ERROR",
            "PROCESSING_ERROR",
            "DECODING_ERROR",
            "TOO_BIG",
            "CRAWL_SKIPPED",
            "HOSTLOADED",
            "HTTP_404",
          },
          enumDescriptions = {
            "The image status is unspecified. Should not be used.",
            "The image was uploaded and is being processed.",
            "The image crawl is still pending.",
            "The image was processed and it meets the requirements.",
            "The image URL is protected by robots.txt file and cannot be crawled.",
            "The image URL is protected by X-Robots-Tag and cannot be crawled.",
            "There was an error while crawling the image.",
            "The image cannot be processed.",
            "The image cannot be decoded.",
            "The image is too big.",
            "The image was manually overridden and will not be crawled.",
            "The image crawl was postponed to avoid overloading the host.",
            "The image URL returned a \"404 Not Found\" error.",
          },
          type = "string",
        },
        type = {
          description = "The type of the image, i.e., crawled or uploaded. @OutputOnly",
          enum = {
            "TYPE_UNSPECIFIED",
            "CRAWLED",
            "UPLOADED",
          },
          enumDescriptions = {
            "Type is unspecified. Should not be used.",
            "The image was crawled from a provided URL.",
            "The image was uploaded.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Issue = {
      description = "Product issue.",
      id = "Issue",
      properties = {
        attribute = {
          description = "If present, the attribute that triggered the issue. For more information about attributes, see https://support.google.com/manufacturers/answer/6124116.",
          type = "string",
        },
        description = {
          description = "Longer description of the issue focused on how to resolve it.",
          type = "string",
        },
        destination = {
          description = "The destination this issue applies to.",
          type = "string",
        },
        resolution = {
          description = "What needs to happen to resolve the issue.",
          enum = {
            "RESOLUTION_UNSPECIFIED",
            "USER_ACTION",
            "PENDING_PROCESSING",
          },
          enumDescriptions = {
            "Unspecified resolution, never used.",
            "The user who provided the data must act in order to resolve the issue (for example by correcting some data).",
            "The issue will be resolved automatically (for example image crawl or Google review). No action is required now. Resolution might lead to another issue (for example if crawl fails).",
          },
          type = "string",
        },
        severity = {
          description = "The severity of the issue.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARNING",
            "INFO",
          },
          enumDescriptions = {
            "Unspecified severity, never used.",
            "Error severity. The issue prevents the usage of the whole item.",
            "Warning severity. The issue is either one that prevents the usage of the attribute that triggered it or one that will soon prevent the usage of the whole item.",
            "Info severity. The issue is one that doesn't require immediate attention. It is, for example, used to communicate which attributes are still pending review.",
          },
          type = "string",
        },
        timestamp = {
          description = "The timestamp when this issue appeared.",
          format = "google-datetime",
          type = "string",
        },
        title = {
          description = "Short title describing the nature of the issue.",
          type = "string",
        },
        type = {
          description = "The server-generated type of the issue, for example, “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.",
          type = "string",
        },
      },
      type = "object",
    },
    ListProductsResponse = {
      id = "ListProductsResponse",
      properties = {
        nextPageToken = {
          description = "The token for the retrieval of the next page of product statuses.",
          type = "string",
        },
        products = {
          description = "List of the products.",
          items = {
            ["$ref"] = "Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Nutrition = {
      id = "Nutrition",
      properties = {
        addedSugars = {
          ["$ref"] = "FloatUnit",
          description = "Added sugars.",
        },
        addedSugarsDailyPercentage = {
          description = "Added sugars daily percentage.",
          format = "double",
          type = "number",
        },
        calcium = {
          ["$ref"] = "FloatUnit",
          description = "Calcium.",
        },
        calciumDailyPercentage = {
          description = "Calcium daily percentage.",
          format = "double",
          type = "number",
        },
        cholesterol = {
          ["$ref"] = "FloatUnit",
          description = "Cholesterol.",
        },
        cholesterolDailyPercentage = {
          description = "Cholesterol daily percentage.",
          format = "double",
          type = "number",
        },
        dietaryFiber = {
          ["$ref"] = "FloatUnit",
          description = "Dietary fiber.",
        },
        dietaryFiberDailyPercentage = {
          description = "Dietary fiber daily percentage.",
          format = "double",
          type = "number",
        },
        energy = {
          ["$ref"] = "FloatUnit",
          description = "Mandatory Nutrition Facts. Energy.",
        },
        energyFromFat = {
          ["$ref"] = "FloatUnit",
          description = "Energy from fat.",
        },
        folateDailyPercentage = {
          description = "Folate daily percentage.",
          format = "double",
          type = "number",
        },
        folateFolicAcid = {
          ["$ref"] = "FloatUnit",
          description = "Folate folic acid.",
        },
        folateMcgDfe = {
          description = "Folate mcg DFE.",
          format = "double",
          type = "number",
        },
        iron = {
          ["$ref"] = "FloatUnit",
          description = "Iron.",
        },
        ironDailyPercentage = {
          description = "Iron daily percentage.",
          format = "double",
          type = "number",
        },
        monounsaturatedFat = {
          ["$ref"] = "FloatUnit",
          description = "Monounsaturated fat.",
        },
        nutritionFactMeasure = {
          description = "Nutrition fact measure.",
          type = "string",
        },
        polyols = {
          ["$ref"] = "FloatUnit",
          description = "Polyols.",
        },
        polyunsaturatedFat = {
          ["$ref"] = "FloatUnit",
          description = "Polyunsaturated fat.",
        },
        potassium = {
          ["$ref"] = "FloatUnit",
          description = "Potassium.",
        },
        potassiumDailyPercentage = {
          description = "Potassium daily percentage.",
          format = "double",
          type = "number",
        },
        preparedSizeDescription = {
          description = "Prepared size description.",
          type = "string",
        },
        protein = {
          ["$ref"] = "FloatUnit",
          description = "Protein.",
        },
        proteinDailyPercentage = {
          description = "Protein daily percentage.",
          format = "double",
          type = "number",
        },
        saturatedFat = {
          ["$ref"] = "FloatUnit",
          description = "Saturated fat.",
        },
        saturatedFatDailyPercentage = {
          description = "Saturated fat daily percentage.",
          format = "double",
          type = "number",
        },
        servingSizeDescription = {
          description = "Food Serving Size. Serving size description.",
          type = "string",
        },
        servingSizeMeasure = {
          ["$ref"] = "FloatUnit",
          description = "Serving size measure.",
        },
        servingsPerContainer = {
          description = "Servings per container.",
          type = "string",
        },
        sodium = {
          ["$ref"] = "FloatUnit",
          description = "Sodium.",
        },
        sodiumDailyPercentage = {
          description = "Sodium daily percentage.",
          format = "double",
          type = "number",
        },
        starch = {
          ["$ref"] = "FloatUnit",
          description = "Starch.",
        },
        totalCarbohydrate = {
          ["$ref"] = "FloatUnit",
          description = "Total carbohydrate.",
        },
        totalCarbohydrateDailyPercentage = {
          description = "Total carbohydrate daily percentage.",
          format = "double",
          type = "number",
        },
        totalFat = {
          ["$ref"] = "FloatUnit",
          description = "Total fat.",
        },
        totalFatDailyPercentage = {
          description = "Total fat daily percentage.",
          format = "double",
          type = "number",
        },
        totalSugars = {
          ["$ref"] = "FloatUnit",
          description = "Total sugars.",
        },
        totalSugarsDailyPercentage = {
          description = "Total sugars daily percentage.",
          format = "double",
          type = "number",
        },
        transFat = {
          ["$ref"] = "FloatUnit",
          description = "Trans fat.",
        },
        transFatDailyPercentage = {
          description = "Trans fat daily percentage.",
          format = "double",
          type = "number",
        },
        vitaminD = {
          ["$ref"] = "FloatUnit",
          description = "Vitamin D.",
        },
        vitaminDDailyPercentage = {
          description = "Vitamin D daily percentage.",
          format = "double",
          type = "number",
        },
        voluntaryNutritionFact = {
          description = "Voluntary nutrition fact.",
          items = {
            ["$ref"] = "VoluntaryNutritionFact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Price = {
      description = "A price.",
      id = "Price",
      properties = {
        amount = {
          description = "The numeric value of the price.",
          type = "string",
        },
        currency = {
          description = "The currency in which the price is denoted.",
          type = "string",
        },
      },
      type = "object",
    },
    Product = {
      description = "Product data.",
      id = "Product",
      properties = {
        attributes = {
          ["$ref"] = "Attributes",
          description = "Attributes of the product uploaded to the Manufacturer Center. Manually edited attributes are taken into account.",
        },
        contentLanguage = {
          description = "The content language of the product as a two-letter ISO 639-1 language code (for example, en).",
          type = "string",
        },
        destinationStatuses = {
          description = "The status of the destinations.",
          items = {
            ["$ref"] = "DestinationStatus",
          },
          type = "array",
        },
        issues = {
          description = "A server-generated list of issues associated with the product.",
          items = {
            ["$ref"] = "Issue",
          },
          type = "array",
        },
        name = {
          description = "Name in the format `{target_country}:{content_language}:{product_id}`. `target_country` - The target country of the product as a CLDR territory code (for example, US). `content_language` - The content language of the product as a two-letter ISO 639-1 language code (for example, en). `product_id` - The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.",
          type = "string",
        },
        parent = {
          description = "Parent ID in the format `accounts/{account_id}`. `account_id` - The ID of the Manufacturer Center account.",
          type = "string",
        },
        productId = {
          description = "The ID of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#id.",
          type = "string",
        },
        targetCountry = {
          description = "The target country of the product as a CLDR territory code (for example, US).",
          type = "string",
        },
      },
      type = "object",
    },
    ProductDetail = {
      description = "A product detail of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#productdetail.",
      id = "ProductDetail",
      properties = {
        attributeName = {
          description = "The name of the attribute.",
          type = "string",
        },
        attributeValue = {
          description = "The value of the attribute.",
          type = "string",
        },
        sectionName = {
          description = "A short section name that can be reused between multiple product details.",
          type = "string",
        },
      },
      type = "object",
    },
    VoluntaryNutritionFact = {
      description = "Voluntary Nutrition Facts.",
      id = "VoluntaryNutritionFact",
      properties = {
        dailyPercentage = {
          description = "Daily percentage.",
          format = "double",
          type = "number",
        },
        name = {
          description = "Name.",
          type = "string",
        },
        value = {
          ["$ref"] = "FloatUnit",
          description = "Value.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Manufacturer Center API",
  version = "v1",
  version_module = true,
}
