return {
  basePath = "",
  baseUrl = "https://mybusinesslodging.googleapis.com/",
  batchPath = "batch",
  canonicalName = "My Business Lodging",
  description = "The My Business Lodging API enables managing lodging business information on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/my-business/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "mybusinesslodging:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://mybusinesslodging.mtls.googleapis.com/",
  name = "mybusinesslodging",
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
      methods = {
        getLodging = {
          description = "Returns the Lodging of a specific location.",
          flatPath = "v1/locations/{locationsId}/lodging",
          httpMethod = "GET",
          id = "mybusinesslodging.locations.getLodging",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Google identifier for this location in the form: `locations/{location_id}/lodging`",
              location = "path",
              pattern = "^locations/[^/]+/lodging$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "Required. The specific fields to return. Use \"*\" to include all fields. Repeated field items cannot be individually specified.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Lodging",
          },
        },
        updateLodging = {
          description = "Updates the Lodging of a specific location.",
          flatPath = "v1/locations/{locationsId}/lodging",
          httpMethod = "PATCH",
          id = "mybusinesslodging.locations.updateLodging",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Google identifier for this location in the form: `locations/{location_id}/lodging`",
              location = "path",
              pattern = "^locations/[^/]+/lodging$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The specific fields to update. Use \"*\" to update all fields, which may include unsetting empty fields in the request. Repeated field items cannot be individually updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Lodging",
          },
          response = {
            ["$ref"] = "Lodging",
          },
        },
      },
      resources = {
        lodging = {
          methods = {
            getGoogleUpdated = {
              description = "Returns the Google updated Lodging of a specific location.",
              flatPath = "v1/locations/{locationsId}/lodging:getGoogleUpdated",
              httpMethod = "GET",
              id = "mybusinesslodging.locations.lodging.getGoogleUpdated",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Google identifier for this location in the form: `accounts/{account_id}/locations/{location_id}/lodging`",
                  location = "path",
                  pattern = "^locations/[^/]+/lodging$",
                  required = true,
                  type = "string",
                },
                readMask = {
                  description = "Required. The specific fields to return. Use \"*\" to include all fields. Repeated field items cannot be individually specified.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}:getGoogleUpdated",
              response = {
                ["$ref"] = "GetGoogleUpdatedLodgingResponse",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://mybusinesslodging.googleapis.com/",
  schemas = {
    Accessibility = {
      description = "Physical adaptations made to the property in consideration of varying levels of human physical ability.",
      id = "Accessibility",
      properties = {
        mobilityAccessible = {
          description = "Mobility accessible. Throughout the property there are physical adaptations to ease the stay of a person in a wheelchair, such as auto-opening doors, wide elevators, wide bathrooms or ramps.",
          type = "boolean",
        },
        mobilityAccessibleElevator = {
          description = "Mobility accessible elevator. A lift that transports people from one level to another and is built to accommodate a wheelchair-using passenger owing to the width of its doors and placement of call buttons.",
          type = "boolean",
        },
        mobilityAccessibleElevatorException = {
          description = "Mobility accessible elevator exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleException = {
          description = "Mobility accessible exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleParking = {
          description = "Mobility accessible parking. The presence of a marked, designated area of prescribed size in which only registered, labeled vehicles transporting a person with physical challenges may park.",
          type = "boolean",
        },
        mobilityAccessibleParkingException = {
          description = "Mobility accessible parking exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessiblePool = {
          description = "Mobility accessible pool. A swimming pool equipped with a mechanical chair that can be lowered and raised for the purpose of moving physically challenged guests into and out of the pool. May be powered by electricity or water. Also known as pool lift.",
          type = "boolean",
        },
        mobilityAccessiblePoolException = {
          description = "Mobility accessible pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Activities = {
      description = "Amenities and features related to leisure and play.",
      id = "Activities",
      properties = {
        beachAccess = {
          description = "Beach access. The hotel property is in close proximity to a beach and offers a way to get to that beach. This can include a route to the beach such as stairs down if hotel is on a bluff, or a short trail. Not the same as beachfront (with beach access, the hotel's proximity is close to but not right on the beach).",
          type = "boolean",
        },
        beachAccessException = {
          description = "Beach access exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        beachFront = {
          description = "Breach front. The hotel property is physically located on the beach alongside an ocean, sea, gulf, or bay. It is not on a lake, river, stream, or pond. The hotel is not separated from the beach by a public road allowing vehicular, pedestrian, or bicycle traffic.",
          type = "boolean",
        },
        beachFrontException = {
          description = "Beach front exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        bicycleRental = {
          description = "Bicycle rental. The hotel owns bicycles that it permits guests to borrow and use. Can be free or for a fee.",
          type = "boolean",
        },
        bicycleRentalException = {
          description = "Bicycle rental exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        boutiqueStores = {
          description = "Boutique stores. There are stores selling clothing, jewelry, art and decor either on hotel premises or very close by. Does not refer to the hotel gift shop or convenience store.",
          type = "boolean",
        },
        boutiqueStoresException = {
          description = "Boutique stores exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        casino = {
          description = "Casino. A space designated for gambling and gaming featuring croupier-run table and card games, as well as electronic slot machines. May be on hotel premises or located nearby.",
          type = "boolean",
        },
        casinoException = {
          description = "Casino exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeBicycleRental = {
          description = "Free bicycle rental. The hotel owns bicycles that it permits guests to borrow and use for free.",
          type = "boolean",
        },
        freeBicycleRentalException = {
          description = "Free bicycle rental exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeWatercraftRental = {
          description = "Free watercraft rental. The hotel owns watercraft that it permits guests to borrow and use for free.",
          type = "boolean",
        },
        freeWatercraftRentalException = {
          description = "Free Watercraft rental exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        gameRoom = {
          description = "Game room. There is a room at the hotel containing electronic machines for play such as pinball, prize machines, driving simulators, and other items commonly found at a family fun center or arcade. May also include non-electronic games like pool, foosball, darts, and more. May or may not be designed for children. Also known as arcade, fun room, or family fun center.",
          type = "boolean",
        },
        gameRoomException = {
          description = "Game room exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        golf = {
          description = "Golf. There is a golf course on hotel grounds or there is a nearby, independently run golf course that allows use by hotel guests. Can be free or for a fee.",
          type = "boolean",
        },
        golfException = {
          description = "Golf exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        horsebackRiding = {
          description = "Horseback riding. The hotel has a horse barn onsite or an affiliation with a nearby barn to allow for guests to sit astride a horse and direct it to walk, trot, cantor, gallop and/or jump. Can be in a riding ring, on designated paths, or in the wilderness. May or may not involve instruction.",
          type = "boolean",
        },
        horsebackRidingException = {
          description = "Horseback riding exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        nightclub = {
          description = "Nightclub. There is a room at the hotel with a bar, a dance floor, and seating where designated staffers play dance music. There may also be a designated area for the performance of live music, singing and comedy acts.",
          type = "boolean",
        },
        nightclubException = {
          description = "Nightclub exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        privateBeach = {
          description = "Private beach. The beach which is in close proximity to the hotel is open only to guests.",
          type = "boolean",
        },
        privateBeachException = {
          description = "Private beach exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        scuba = {
          description = "Scuba. The provision for guests to dive under naturally occurring water fitted with a self-contained underwater breathing apparatus (SCUBA) for the purpose of exploring underwater life. Apparatus consists of a tank providing oxygen to the diver through a mask. Requires certification of the diver and supervision. The hotel may have the activity at its own waterfront or have an affiliation with a nearby facility. Required equipment is most often supplied to guests. Can be free or for a fee. Not snorkeling. Not done in a swimming pool.",
          type = "boolean",
        },
        scubaException = {
          description = "Scuba exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        snorkeling = {
          description = "Snorkeling. The provision for guests to participate in a recreational water activity in which swimmers wear a diving mask, a simple, shaped breathing tube and flippers/swim fins for the purpose of exploring below the surface of an ocean, gulf or lake. Does not usually require user certification or professional supervision. Equipment may or may not be available for rent or purchase. Not scuba diving.",
          type = "boolean",
        },
        snorkelingException = {
          description = "Snorkeling exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tennis = {
          description = "Tennis. The hotel has the requisite court(s) on site or has an affiliation with a nearby facility for the purpose of providing guests with the opportunity to play a two-sided court-based game in which players use a stringed racquet to hit a ball across a net to the side of the opposing player. The court can be indoors or outdoors. Instructors, racquets and balls may or may not be provided.",
          type = "boolean",
        },
        tennisException = {
          description = "Tennis exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterSkiing = {
          description = "Water skiing. The provision of giving guests the opportunity to be pulled across naturally occurring water while standing on skis and holding a tow rope attached to a motorboat. Can occur on hotel premises or at a nearby waterfront. Most often performed in a lake or ocean.",
          type = "boolean",
        },
        waterSkiingException = {
          description = "Water skiing exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        watercraftRental = {
          description = "Watercraft rental. The hotel owns water vessels that it permits guests to borrow and use. Can be free or for a fee. Watercraft may include boats, pedal boats, rowboats, sailboats, powerboats, canoes, kayaks, or personal watercraft (such as a Jet Ski).",
          type = "boolean",
        },
        watercraftRentalException = {
          description = "Watercraft rental exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Business = {
      description = "Features of the property of specific interest to the business traveler.",
      id = "Business",
      properties = {
        businessCenter = {
          description = "Business center. A designated room at the hotel with one or more desks and equipped with guest-use computers, printers, fax machines and/or photocopiers. May or may not be open 24/7. May or may not require a key to access. Not a meeting room or conference room.",
          type = "boolean",
        },
        businessCenterException = {
          description = "Business center exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        meetingRooms = {
          description = "Meeting rooms. Rooms at the hotel designated for business-related gatherings. Rooms are usually equipped with tables or desks, office chairs and audio/visual facilities to allow for presentations and conference calls. Also known as conference rooms.",
          type = "boolean",
        },
        meetingRoomsCount = {
          description = "Meeting rooms count. The number of meeting rooms at the property.",
          format = "int32",
          type = "integer",
        },
        meetingRoomsCountException = {
          description = "Meeting rooms count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        meetingRoomsException = {
          description = "Meeting rooms exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Connectivity = {
      description = "The ways in which the property provides guests with the ability to access the internet.",
      id = "Connectivity",
      properties = {
        freeWifi = {
          description = "Free wifi. The hotel offers guests wifi for free.",
          type = "boolean",
        },
        freeWifiException = {
          description = "Free wifi exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        publicAreaWifiAvailable = {
          description = "Public area wifi available. Guests have the ability to wirelessly connect to the internet in the areas of the hotel accessible to anyone. Can be free or for a fee.",
          type = "boolean",
        },
        publicAreaWifiAvailableException = {
          description = "Public area wifi available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        publicInternetTerminal = {
          description = "Public internet terminal. An area of the hotel supplied with computers and designated for the purpose of providing guests with the ability to access the internet.",
          type = "boolean",
        },
        publicInternetTerminalException = {
          description = "Public internet terminal exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        wifiAvailable = {
          description = "Wifi available. The hotel provides the ability for guests to wirelessly connect to the internet. Can be in the public areas of the hotel and/or in the guest rooms. Can be free or for a fee.",
          type = "boolean",
        },
        wifiAvailableException = {
          description = "Wifi available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EcoCertification = {
      description = "An eco certificate awarded to the hotel.",
      id = "EcoCertification",
      properties = {
        awarded = {
          description = "Whether the eco certificate was awarded or not.",
          type = "boolean",
        },
        awardedException = {
          description = "Awarded exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        ecoCertificate = {
          description = "Required. The eco certificate.",
          enum = {
            "ECO_CERTIFICATE_UNSPECIFIED",
            "ISO14001",
            "ISO50001",
            "ASIAN_ECOTOURISM",
            "BIOSPHERE_RESPOSNIBLE_TOURISM",
            "BUREAU_VERITAS",
            "CONTROL_UNION",
            "EARTHCHECK",
            "ECO_CERTIFICATION_MALTA",
            "ECOTOURISM_AUSTRALIAS_ECO",
            "GREAT_GREEN_DEAL",
            "GREEN_GLOBE",
            "GREEN_GROWTH2050",
            "GREEN_KEY",
            "GREEN_KEY_ECO_RATING",
            "GREEN_SEAL",
            "GREEN_STAR",
            "GREEN_TOURISM_ACTIVE",
            "HILTON_LIGHTSTAY",
            "HOSTELLING_INTERNATIONALS_QUALITY_AND_SUSTAINABILITY",
            "HOTELES_MAS_VERDES",
            "NORDIC_SWAN_ECOLABEL",
            "PREFERRED_BY_NATURE_SUSTAINABLE_TOURISM",
            "SUSTAINABLE_TRAVEL_IRELAND",
            "TOF_TIGERS_INITITIVES_PUG",
            "TRAVELIFE",
            "UNITED_CERTIFICATION_SYSTEMS_LIMITED",
            "VIREO_SRL",
          },
          enumDescriptions = {
            "Default EcoCertificate. Do not use.",
            "ISO14001.",
            "ISO50001.",
            "Asian Ecotourism Standard for Accommodations (AESA).",
            "Biosphere Responsible Tourism Standard.",
            "Bureau Veritas.",
            "Control Union.",
            "EarthCheck.",
            "Eco-Certification Malta Standard.",
            "Ecotourism Australia's ECO Certification Standard.",
            "GREAT Green Deal Certification.",
            "Green Globe.",
            "Green Growth 2050 Standard.",
            "Green Key.",
            "Geen Key Eco Rating.",
            "Green Seal.",
            "Green Star Hotel Standard.",
            "Green Tourism Active Standard.",
            "Hilton LightStay.",
            "Hostelling International's Quality and Sustainability Standard.",
            "Hoteles más Verdes (AHT) Standard.",
            "Nordic Swan Ecolabel.",
            "Preferred by Nature Sustainable Tourism Standard for Accommodation.",
            "Sustainable Travel Ireland – GSTC Industry Criteria.",
            "TOFTigers Initiative's Pug Standard.",
            "Travelife Standard for Hotels & Accommodations.",
            "United Certification Systems Limited.",
            "Vireo Srl.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnergyEfficiency = {
      description = "Energy efficiency practices implemented at the hotel.",
      id = "EnergyEfficiency",
      properties = {
        carbonFreeEnergySources = {
          description = "Carbon free energy sources. Property sources carbon-free electricity via at least one of the following methods: on-site clean energy generation, power purchase agreement(s) with clean energy generators, green power provided by electricity supplier, or purchases of Energy Attribute Certificates (such as Renewable Energy Certificates or Guarantees of Origin).",
          type = "boolean",
        },
        carbonFreeEnergySourcesException = {
          description = "Carbon free energy sources exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        energyConservationProgram = {
          description = "Energy conservation program. The property tracks corporate-level Scope 1 and 2 GHG emissions, and Scope 3 emissions if available. The property has a commitment to implement initiatives that reduce GHG emissions year over year. The property has shown an absolute reduction in emissions for at least 2 years. Emissions are either verfied by a third-party and/or published in external communications.",
          type = "boolean",
        },
        energyConservationProgramException = {
          description = "Energy conservation program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        energyEfficientHeatingAndCoolingSystems = {
          description = "Energy efficient heating and cooling systems. The property doesn't use chlorofluorocarbon (CFC)-based refrigerants in heating, ventilating, and air-conditioning systems unless a third-party audit shows it's not economically feasible. The CFC-based refrigerants which are used should have a Global Warming Potential (GWP) ≤ 10. The property uses occupancy sensors on HVAC systems in back-of-house spaces, meeting rooms, and other low-traffic areas.",
          type = "boolean",
        },
        energyEfficientHeatingAndCoolingSystemsException = {
          description = "Energy efficient heating and cooling systems exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        energyEfficientLighting = {
          description = "Energy efficient lighting. At least 75% of the property's lighting is energy efficient, using lighting that is more than 45 lumens per watt – typically LED or CFL lightbulbs.",
          type = "boolean",
        },
        energyEfficientLightingException = {
          description = "Energy efficient lighting exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        energySavingThermostats = {
          description = "Energy saving thermostats. The property installed energy-saving thermostats throughout the building to conserve energy when rooms or areas are not in use. Energy-saving thermostats are devices that control heating/cooling in the building by learning temperature preferences and automatically adjusting to energy-saving temperatures as the default. The thermostats are automatically set to a temperature between 68-78 degrees F (20-26 °C), depending on seasonality. In the winter, set the thermostat to 68°F (20°C) when the room is occupied, lowering room temperature when unoccupied. In the summer, set the thermostat to 78°F (26°C) when the room is occupied.",
          type = "boolean",
        },
        energySavingThermostatsException = {
          description = "Energy saving thermostats exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        greenBuildingDesign = {
          description = "Output only. Green building design. True if BREEAM-* or LEED-* certified.",
          readOnly = true,
          type = "boolean",
        },
        greenBuildingDesignException = {
          description = "Output only. Green building design exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          readOnly = true,
          type = "string",
        },
        independentOrganizationAuditsEnergyUse = {
          description = "Independent organization audits energy use. The property conducts an energy audit at least every 5 years, the results of which are either verified by a third-party and/or published in external communications. An energy audit is a detailed assessment of the facility which provides recommendations to existing operations and procedures to improve energy efficiency, available incentives or rebates,and opportunities for improvements through renovations or upgrades. Examples of organizations that conduct credible third party audits include: Engie Impact, DNV GL (EU), Dexma, and local utility providers (they often provide energy and water audits).",
          type = "boolean",
        },
        independentOrganizationAuditsEnergyUseException = {
          description = "Independent organization audits energy use exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EnhancedCleaning = {
      description = "Enhanced cleaning measures implemented by the hotel during COVID-19.",
      id = "EnhancedCleaning",
      properties = {
        commercialGradeDisinfectantCleaning = {
          description = "Commercial-grade disinfectant used to clean the property.",
          type = "boolean",
        },
        commercialGradeDisinfectantCleaningException = {
          description = "Commercial grade disinfectant cleaning exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        commonAreasEnhancedCleaning = {
          description = "Enhanced cleaning of common areas.",
          type = "boolean",
        },
        commonAreasEnhancedCleaningException = {
          description = "Common areas enhanced cleaning exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        employeesTrainedCleaningProcedures = {
          description = "Employees trained in COVID-19 cleaning procedures.",
          type = "boolean",
        },
        employeesTrainedCleaningProceduresException = {
          description = "Employees trained cleaning procedures exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        employeesTrainedThoroughHandWashing = {
          description = "Employees trained in thorough hand-washing.",
          type = "boolean",
        },
        employeesTrainedThoroughHandWashingException = {
          description = "Employees trained thorough hand washing exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        employeesWearProtectiveEquipment = {
          description = "Employees wear masks, face shields, and/or gloves.",
          type = "boolean",
        },
        employeesWearProtectiveEquipmentException = {
          description = "Employees wear protective equipment exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        guestRoomsEnhancedCleaning = {
          description = "Enhanced cleaning of guest rooms.",
          type = "boolean",
        },
        guestRoomsEnhancedCleaningException = {
          description = "Guest rooms enhanced cleaning exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Families = {
      description = "Services and amenities for families and young guests.",
      id = "Families",
      properties = {
        babysitting = {
          description = "Babysitting. Child care that is offered by hotel staffers or coordinated by hotel staffers with local child care professionals. Can be free or for a fee.",
          type = "boolean",
        },
        babysittingException = {
          description = "Babysitting exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kidsActivities = {
          description = "Kids activities. Recreational options such as sports, films, crafts and games designed for the enjoyment of children and offered at the hotel. May or may not be supervised. May or may not be at a designated time or place. Cab be free or for a fee.",
          type = "boolean",
        },
        kidsActivitiesException = {
          description = "Kids activities exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kidsClub = {
          description = "Kids club. An organized program of group activities held at the hotel and designed for the enjoyment of children. Facilitated by hotel staff (or staff procured by the hotel) in an area(s) designated for the purpose of entertaining children without their parents. May include games, outings, water sports, team sports, arts and crafts, and films. Usually has set hours. Can be free or for a fee. Also known as Kids Camp or Kids program.",
          type = "boolean",
        },
        kidsClubException = {
          description = "Kids club exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kidsFriendly = {
          description = "Kids friendly. The hotel has one or more special features for families with children, such as reduced rates, child-sized beds, kids' club, babysitting service, or suitable place to play on premises.",
          type = "boolean",
        },
        kidsFriendlyException = {
          description = "Kids friendly exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FoodAndDrink = {
      description = "Meals, snacks, and beverages available at the property.",
      id = "FoodAndDrink",
      properties = {
        bar = {
          description = "Bar. A designated room, lounge or area of an on-site restaurant with seating at a counter behind which a hotel staffer takes the guest's order and provides the requested alcoholic drink. Can be indoors or outdoors. Also known as Pub.",
          type = "boolean",
        },
        barException = {
          description = "Bar exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        breakfastAvailable = {
          description = "Breakfast available. The morning meal is offered to all guests. Can be free or for a fee.",
          type = "boolean",
        },
        breakfastAvailableException = {
          description = "Breakfast available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        breakfastBuffet = {
          description = "Breakfast buffet. Breakfast meal service where guests serve themselves from a variety of dishes/foods that are put out on a table.",
          type = "boolean",
        },
        breakfastBuffetException = {
          description = "Breakfast buffet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        buffet = {
          description = "Buffet. A type of meal where guests serve themselves from a variety of dishes/foods that are put out on a table. Includes lunch and/or dinner meals. A breakfast-only buffet is not sufficient.",
          type = "boolean",
        },
        buffetException = {
          description = "Buffet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        dinnerBuffet = {
          description = "Dinner buffet. Dinner meal service where guests serve themselves from a variety of dishes/foods that are put out on a table.",
          type = "boolean",
        },
        dinnerBuffetException = {
          description = "Dinner buffet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeBreakfast = {
          description = "Free breakfast. Breakfast is offered for free to all guests. Does not apply if limited to certain room packages.",
          type = "boolean",
        },
        freeBreakfastException = {
          description = "Free breakfast exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        restaurant = {
          description = "Restaurant. A business onsite at the hotel that is open to the public as well as guests, and offers meals and beverages to consume at tables or counters. May or may not include table service. Also known as cafe, buffet, eatery. A \"breakfast room\" where the hotel serves breakfast only to guests (not the general public) does not count as a restaurant.",
          type = "boolean",
        },
        restaurantException = {
          description = "Restaurant exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        restaurantsCount = {
          description = "Restaurants count. The number of restaurants at the hotel.",
          format = "int32",
          type = "integer",
        },
        restaurantsCountException = {
          description = "Restaurants count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        roomService = {
          description = "Room service. A hotel staffer delivers meals prepared onsite to a guest's room as per their request. May or may not be available during specific hours. Services should be available to all guests (not based on rate/room booked/reward program, etc).",
          type = "boolean",
        },
        roomServiceException = {
          description = "Room service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tableService = {
          description = "Table service. A restaurant in which a staff member is assigned to a guest's table to take their order, deliver and clear away food, and deliver the bill, if applicable. Also known as sit-down restaurant.",
          type = "boolean",
        },
        tableServiceException = {
          description = "Table service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        twentyFourHourRoomService = {
          description = "24hr room service. Room service is available 24 hours a day.",
          type = "boolean",
        },
        twentyFourHourRoomServiceException = {
          description = "24hr room service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        vendingMachine = {
          description = "Vending machine. A glass-fronted mechanized cabinet displaying and dispensing snacks and beverages for purchase by coins, paper money and/or credit cards.",
          type = "boolean",
        },
        vendingMachineException = {
          description = "Vending machine exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GetGoogleUpdatedLodgingResponse = {
      description = "Response message for LodgingService.GetGoogleUpdatedLodging",
      id = "GetGoogleUpdatedLodgingResponse",
      properties = {
        diffMask = {
          description = "Required. The fields in the Lodging that have been updated by Google. Repeated field items are not individually specified.",
          format = "google-fieldmask",
          type = "string",
        },
        lodging = {
          ["$ref"] = "Lodging",
          description = "Required. The Google updated Lodging.",
        },
      },
      type = "object",
    },
    GuestUnitFeatures = {
      description = "Features and available amenities in the guest unit.",
      id = "GuestUnitFeatures",
      properties = {
        bungalowOrVilla = {
          description = "Bungalow or villa. An independent structure that is part of a hotel or resort that is rented to one party for a vacation stay. The hotel or resort may be completely comprised of bungalows or villas, or they may be one of several guestroom options. Guests in the bungalows or villas most often have the same, if not more, amenities and services offered to guests in other guestroom types.",
          type = "boolean",
        },
        bungalowOrVillaException = {
          description = "Bungalow or villa exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        connectingUnitAvailable = {
          description = "Connecting unit available. A guestroom type that features access to an adjacent guestroom for the purpose of booking both rooms. Most often used by families who need more than one room to accommodate the number of people in their group.",
          type = "boolean",
        },
        connectingUnitAvailableException = {
          description = "Connecting unit available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        executiveFloor = {
          description = "Executive floor. A floor of the hotel where the guestrooms are only bookable by members of the hotel's frequent guest membership program. Benefits of this room class include access to a designated lounge which may or may not feature free breakfast, cocktails or other perks specific to members of the program.",
          type = "boolean",
        },
        executiveFloorException = {
          description = "Executive floor exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        maxAdultOccupantsCount = {
          description = "Max adult occupants count. The total number of adult guests allowed to stay overnight in the guestroom.",
          format = "int32",
          type = "integer",
        },
        maxAdultOccupantsCountException = {
          description = "Max adult occupants count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        maxChildOccupantsCount = {
          description = "Max child occupants count. The total number of children allowed to stay overnight in the room.",
          format = "int32",
          type = "integer",
        },
        maxChildOccupantsCountException = {
          description = "Max child occupants count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        maxOccupantsCount = {
          description = "Max occupants count. The total number of guests allowed to stay overnight in the guestroom.",
          format = "int32",
          type = "integer",
        },
        maxOccupantsCountException = {
          description = "Max occupants count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        privateHome = {
          description = "Private home. A privately owned home (house, townhouse, apartment, cabin, bungalow etc) that may or not serve as the owner's residence, but is rented out in its entirety or by the room(s) to paying guest(s) for vacation stays. Not for lease-based, long-term residency.",
          type = "boolean",
        },
        privateHomeException = {
          description = "Private home exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        suite = {
          description = "Suite. A guestroom category that implies both a bedroom area and a separate living area. There may or may not be full walls and doors separating the two areas, but regardless, they are very distinct. Does not mean a couch or chair in a bedroom.",
          type = "boolean",
        },
        suiteException = {
          description = "Suite exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tier = {
          description = "Tier. Classification of the unit based on available features/amenities. A non-standard tier is only permitted if at least one other unit type falls under the standard tier.",
          enum = {
            "UNIT_TIER_UNSPECIFIED",
            "STANDARD_UNIT",
            "DELUXE_UNIT",
          },
          enumDescriptions = {
            "Default tier. Equivalent to STANDARD. Prefer using STANDARD directly.",
            "Standard unit. The predominant and most basic guestroom type available at the hotel. All other guestroom types include the features/amenities of this room, as well as additional features/amenities.",
            "Deluxe unit. A guestroom type that builds on the features of the standard guestroom by offering additional amenities and/or more space, and/or views. The room rate is higher than that of the standard room type. Also known as Superior. Only allowed if another unit type is a standard tier.",
          },
          type = "string",
        },
        tierException = {
          description = "Tier exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        totalLivingAreas = {
          ["$ref"] = "LivingArea",
          description = "Features available in the living areas in the guest unit.",
        },
        views = {
          ["$ref"] = "ViewsFromUnit",
          description = "Views available from the guest unit itself.",
        },
      },
      type = "object",
    },
    GuestUnitType = {
      description = "A specific type of unit primarily defined by its features.",
      id = "GuestUnitType",
      properties = {
        codes = {
          description = "Required. Unit or room code identifiers for a single GuestUnitType. Each code must be unique within a Lodging instance.",
          items = {
            type = "string",
          },
          type = "array",
        },
        features = {
          ["$ref"] = "GuestUnitFeatures",
          description = "Features and available amenities of the GuestUnitType.",
        },
        label = {
          description = "Required. Short, English label or name of the GuestUnitType. Target <50 chars.",
          type = "string",
        },
      },
      type = "object",
    },
    HealthAndSafety = {
      description = "Health and safety measures implemented by the hotel during COVID-19.",
      id = "HealthAndSafety",
      properties = {
        enhancedCleaning = {
          ["$ref"] = "EnhancedCleaning",
          description = "Enhanced cleaning measures implemented by the hotel during COVID-19.",
        },
        increasedFoodSafety = {
          ["$ref"] = "IncreasedFoodSafety",
          description = "Increased food safety measures implemented by the hotel during COVID-19.",
        },
        minimizedContact = {
          ["$ref"] = "MinimizedContact",
          description = "Minimized contact measures implemented by the hotel during COVID-19.",
        },
        personalProtection = {
          ["$ref"] = "PersonalProtection",
          description = "Personal protection measures implemented by the hotel during COVID-19.",
        },
        physicalDistancing = {
          ["$ref"] = "PhysicalDistancing",
          description = "Physical distancing measures implemented by the hotel during COVID-19.",
        },
      },
      type = "object",
    },
    Housekeeping = {
      description = "Conveniences provided in guest units to facilitate an easier, more comfortable stay.",
      id = "Housekeeping",
      properties = {
        dailyHousekeeping = {
          description = "Daily housekeeping. Guest units are cleaned by hotel staff daily during guest's stay.",
          type = "boolean",
        },
        dailyHousekeepingException = {
          description = "Daily housekeeping exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        housekeepingAvailable = {
          description = "Housekeeping available. Guest units are cleaned by hotel staff during guest's stay. Schedule may vary from daily, weekly, or specific days of the week.",
          type = "boolean",
        },
        housekeepingAvailableException = {
          description = "Housekeeping available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        turndownService = {
          description = "Turndown service. Hotel staff enters guest units to prepare the bed for sleep use. May or may not include some light housekeeping. May or may not include an evening snack or candy. Also known as evening service.",
          type = "boolean",
        },
        turndownServiceException = {
          description = "Turndown service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IncreasedFoodSafety = {
      description = "Increased food safety measures implemented by the hotel during COVID-19.",
      id = "IncreasedFoodSafety",
      properties = {
        diningAreasAdditionalSanitation = {
          description = "Additional sanitation in dining areas.",
          type = "boolean",
        },
        diningAreasAdditionalSanitationException = {
          description = "Dining areas additional sanitation exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        disposableFlatware = {
          description = "Disposable flatware.",
          type = "boolean",
        },
        disposableFlatwareException = {
          description = "Disposable flatware exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        foodPreparationAndServingAdditionalSafety = {
          description = "Additional safety measures during food prep and serving.",
          type = "boolean",
        },
        foodPreparationAndServingAdditionalSafetyException = {
          description = "Food preparation and serving additional safety exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        individualPackagedMeals = {
          description = "Individually-packaged meals.",
          type = "boolean",
        },
        individualPackagedMealsException = {
          description = "Individual packaged meals exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        singleUseFoodMenus = {
          description = "Single-use menus.",
          type = "boolean",
        },
        singleUseFoodMenusException = {
          description = "Single use food menus exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LanguageSpoken = {
      description = "Language spoken by at least one staff member.",
      id = "LanguageSpoken",
      properties = {
        languageCode = {
          description = "Required. The BCP-47 language code for the spoken language. Currently accepted codes: ar, de, en, es, fil, fr, hi, id, it, ja, ko, nl, pt, ru, vi, yue, zh.",
          type = "string",
        },
        spoken = {
          description = "At least one member of the staff can speak the language.",
          type = "boolean",
        },
        spokenException = {
          description = "Spoken exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LivingArea = {
      description = "An individual room, such as kitchen, bathroom, bedroom, within a bookable guest unit.",
      id = "LivingArea",
      properties = {
        accessibility = {
          ["$ref"] = "LivingAreaAccessibility",
          description = "Accessibility features of the living area.",
        },
        eating = {
          ["$ref"] = "LivingAreaEating",
          description = "Information about eating features in the living area.",
        },
        features = {
          ["$ref"] = "LivingAreaFeatures",
          description = "Features in the living area.",
        },
        layout = {
          ["$ref"] = "LivingAreaLayout",
          description = "Information about the layout of the living area.",
        },
        sleeping = {
          ["$ref"] = "LivingAreaSleeping",
          description = "Information about sleeping features in the living area.",
        },
      },
      type = "object",
    },
    LivingAreaAccessibility = {
      description = "Accessibility features of the living area.",
      id = "LivingAreaAccessibility",
      properties = {
        adaCompliantUnit = {
          description = "ADA compliant unit. A guestroom designed to accommodate the physical challenges of a guest with mobility and/or auditory and/or visual issues, as determined by legislative policy. Usually features enlarged doorways, roll-in showers with seats, bathroom grab bars, and communication equipment for the hearing and sight challenged.",
          type = "boolean",
        },
        adaCompliantUnitException = {
          description = "ADA compliant unit exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hearingAccessibleDoorbell = {
          description = "Hearing-accessible doorbell. A visual indicator(s) of a knock or ring at the door.",
          type = "boolean",
        },
        hearingAccessibleDoorbellException = {
          description = "Hearing-accessible doorbell exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hearingAccessibleFireAlarm = {
          description = "Hearing-accessible fire alarm. A device that gives warning of a fire through flashing lights.",
          type = "boolean",
        },
        hearingAccessibleFireAlarmException = {
          description = "Hearing-accessible fire alarm exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hearingAccessibleUnit = {
          description = "Hearing-accessible unit. A guestroom designed to accommodate the physical challenges of a guest with auditory issues.",
          type = "boolean",
        },
        hearingAccessibleUnitException = {
          description = "Hearing-accessible unit exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleBathtub = {
          description = "Mobility-accessible bathtub. A bathtub that accomodates the physically challenged with additional railings or hand grips, a transfer seat or lift, and/or a door to enable walking into the tub.",
          type = "boolean",
        },
        mobilityAccessibleBathtubException = {
          description = "Mobility-accessible bathtub exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleShower = {
          description = "Mobility-accessible shower. A shower with an enlarged door or access point to accommodate a wheelchair or a waterproof seat for the physically challenged.",
          type = "boolean",
        },
        mobilityAccessibleShowerException = {
          description = "Mobility-accessible shower exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleToilet = {
          description = "Mobility-accessible toilet. A toilet with a higher seat, grab bars, and/or a larger area around it to accommodate the physically challenged.",
          type = "boolean",
        },
        mobilityAccessibleToiletException = {
          description = "Mobility-accessible toilet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobilityAccessibleUnit = {
          description = "Mobility-accessible unit. A guestroom designed to accommodate the physical challenges of a guest with mobility and/or auditory and/or visual issues. Usually features enlarged doorways, roll-in showers with seats, bathroom grab bars, and communication equipment for the hearing and sight challenged.",
          type = "boolean",
        },
        mobilityAccessibleUnitException = {
          description = "Mobility-accessible unit exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LivingAreaEating = {
      description = "Information about eating features in the living area.",
      id = "LivingAreaEating",
      properties = {
        coffeeMaker = {
          description = "Coffee maker. An electric appliance that brews coffee by heating and forcing water through ground coffee.",
          type = "boolean",
        },
        coffeeMakerException = {
          description = "Coffee maker exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        cookware = {
          description = "Cookware. Kitchen pots, pans and utensils used in connection with the preparation of food.",
          type = "boolean",
        },
        cookwareException = {
          description = "Cookware exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        dishwasher = {
          description = "Dishwasher. A counter-height electrical cabinet containing racks for dirty dishware, cookware and cutlery, and a dispenser for soap built into the pull-down door. The cabinet is attached to the plumbing system to facilitate the automatic cleaning of its contents.",
          type = "boolean",
        },
        dishwasherException = {
          description = "Dishwasher exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        indoorGrill = {
          description = "Indoor grill. Metal grates built into an indoor cooktop on which food is cooked over an open flame or electric heat source.",
          type = "boolean",
        },
        indoorGrillException = {
          description = "Indoor grill exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kettle = {
          description = "Kettle. A covered container with a handle and a spout used for boiling water.",
          type = "boolean",
        },
        kettleException = {
          description = "Kettle exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kitchenAvailable = {
          description = "Kitchen available. An area of the guestroom designated for the preparation and storage of food via the presence of a refrigerator, cook top, oven and sink, as well as cutlery, dishes and cookware. Usually includes small appliances such a coffee maker and a microwave. May or may not include an automatic dishwasher.",
          type = "boolean",
        },
        kitchenAvailableException = {
          description = "Kitchen available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        microwave = {
          description = "Microwave. An electric oven that quickly cooks and heats food by microwave energy. Smaller than a standing or wall mounted oven. Usually placed on a kitchen counter, a shelf or tabletop or mounted above a cooktop.",
          type = "boolean",
        },
        microwaveException = {
          description = "Microwave exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        minibar = {
          description = "Minibar. A small refrigerated cabinet in the guestroom containing bottles/cans of soft drinks, mini bottles of alcohol, and snacks. The items are most commonly available for a fee.",
          type = "boolean",
        },
        minibarException = {
          description = "Minibar exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        outdoorGrill = {
          description = "Outdoor grill. Metal grates on which food is cooked over an open flame or electric heat source. Part of an outdoor apparatus that supports the grates. Also known as barbecue grill or barbecue.",
          type = "boolean",
        },
        outdoorGrillException = {
          description = "Outdoor grill exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        oven = {
          description = "Oven. A temperature controlled, heated metal cabinet powered by gas or electricity in which food is placed for the purpose of cooking or reheating.",
          type = "boolean",
        },
        ovenException = {
          description = "Oven exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        refrigerator = {
          description = "Refrigerator. A large, climate-controlled electrical cabinet with vertical doors. Built for the purpose of chilling and storing perishable foods.",
          type = "boolean",
        },
        refrigeratorException = {
          description = "Refrigerator exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        sink = {
          description = "Sink. A basin with a faucet attached to a water source and used for the purpose of washing and rinsing.",
          type = "boolean",
        },
        sinkException = {
          description = "Sink exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        snackbar = {
          description = "Snackbar. A small cabinet in the guestroom containing snacks. The items are most commonly available for a fee.",
          type = "boolean",
        },
        snackbarException = {
          description = "Snackbar exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        stove = {
          description = "Stove. A kitchen appliance powered by gas or electricity for the purpose of creating a flame or hot surface on which pots of food can be cooked. Also known as cooktop or hob.",
          type = "boolean",
        },
        stoveException = {
          description = "Stove exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        teaStation = {
          description = "Tea station. A small area with the supplies needed to heat water and make tea.",
          type = "boolean",
        },
        teaStationException = {
          description = "Tea station exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        toaster = {
          description = "Toaster. A small, temperature controlled electric appliance with rectangular slots at the top that are lined with heated coils for the purpose of browning slices of bread products.",
          type = "boolean",
        },
        toasterException = {
          description = "Toaster exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LivingAreaFeatures = {
      description = "Features in the living area.",
      id = "LivingAreaFeatures",
      properties = {
        airConditioning = {
          description = "Air conditioning. An electrical machine used to cool the temperature of the guestroom.",
          type = "boolean",
        },
        airConditioningException = {
          description = "Air conditioning exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        bathtub = {
          description = "Bathtub. A fixed plumbing feature set on the floor and consisting of a large container that accommodates the body of an adult for the purpose of seated bathing. Includes knobs or fixtures to control the temperature of the water, a faucet through which the water flows, and a drain that can be closed for filling and opened for draining.",
          type = "boolean",
        },
        bathtubException = {
          description = "Bathtub exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        bidet = {
          description = "Bidet. A plumbing fixture attached to a toilet or a low, fixed sink designed for the purpose of washing after toilet use.",
          type = "boolean",
        },
        bidetException = {
          description = "Bidet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        dryer = {
          description = "Dryer. An electrical machine designed to dry clothing.",
          type = "boolean",
        },
        dryerException = {
          description = "Dryer exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        electronicRoomKey = {
          description = "Electronic room key. A card coded by the check-in computer that is read by the lock on the hotel guestroom door to allow for entry.",
          type = "boolean",
        },
        electronicRoomKeyException = {
          description = "Electronic room key exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        fireplace = {
          description = "Fireplace. A framed opening (aka hearth) at the base of a chimney in which logs or an electrical fire feature are burned to provide a relaxing ambiance or to heat the room. Often made of bricks or stone.",
          type = "boolean",
        },
        fireplaceException = {
          description = "Fireplace exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hairdryer = {
          description = "Hairdryer. A handheld electric appliance that blows temperature-controlled air for the purpose of drying wet hair. Can be mounted to a bathroom wall or a freestanding device stored in the guestroom's bathroom or closet.",
          type = "boolean",
        },
        hairdryerException = {
          description = "Hairdryer exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        heating = {
          description = "Heating. An electrical machine used to warm the temperature of the guestroom.",
          type = "boolean",
        },
        heatingException = {
          description = "Heating exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        inunitSafe = {
          description = "In-unit safe. A strong fireproof cabinet with a programmable lock, used for the protected storage of valuables in a guestroom. Often built into a closet.",
          type = "boolean",
        },
        inunitSafeException = {
          description = "In-unit safe exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        inunitWifiAvailable = {
          description = "In-unit Wifi available. Guests can wirelessly connect to the Internet in the guestroom. Can be free or for a fee.",
          type = "boolean",
        },
        inunitWifiAvailableException = {
          description = "In-unit Wifi available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        ironingEquipment = {
          description = "Ironing equipment. A device, usually with a flat metal base, that is heated to smooth, finish, or press clothes and a flat, padded, cloth-covered surface on which the clothes are worked.",
          type = "boolean",
        },
        ironingEquipmentException = {
          description = "Ironing equipment exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        payPerViewMovies = {
          description = "Pay per view movies. Televisions with channels that offer films that can be viewed for a fee, and have an interface to allow the viewer to accept the terms and approve payment.",
          type = "boolean",
        },
        payPerViewMoviesException = {
          description = "Pay per view movies exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        privateBathroom = {
          description = "Private bathroom. A bathroom designated for the express use of the guests staying in a specific guestroom.",
          type = "boolean",
        },
        privateBathroomException = {
          description = "Private bathroom exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        shower = {
          description = "Shower. A fixed plumbing fixture for standing bathing that features a tall spray spout or faucet through which water flows, a knob or knobs that control the water's temperature, and a drain in the floor.",
          type = "boolean",
        },
        showerException = {
          description = "Shower exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        toilet = {
          description = "Toilet. A fixed bathroom feature connected to a sewer or septic system and consisting of a water-flushed bowl with a seat, as well as a device that elicites the water-flushing action. Used for the process and disposal of human waste.",
          type = "boolean",
        },
        toiletException = {
          description = "Toilet exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tv = {
          description = "TV. A television is available in the guestroom.",
          type = "boolean",
        },
        tvCasting = {
          description = "TV casting. A television equipped with a device through which the video entertainment accessed on a personal computer, phone or tablet can be wirelessly delivered to and viewed on the guestroom's television.",
          type = "boolean",
        },
        tvCastingException = {
          description = "TV exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tvException = {
          description = "TV exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        tvStreaming = {
          description = "TV streaming. Televisions that embed a range of web-based apps to allow for watching media from those apps.",
          type = "boolean",
        },
        tvStreamingException = {
          description = "TV streaming exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        universalPowerAdapters = {
          description = "Universal power adapters. A power supply for electronic devices which plugs into a wall for the purpose of converting AC to a single DC voltage. Also know as AC adapter or charger.",
          type = "boolean",
        },
        universalPowerAdaptersException = {
          description = "Universal power adapters exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        washer = {
          description = "Washer. An electrical machine connected to a running water source designed to launder clothing.",
          type = "boolean",
        },
        washerException = {
          description = "Washer exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LivingAreaLayout = {
      description = "Information about the layout of the living area.",
      id = "LivingAreaLayout",
      properties = {
        balcony = {
          description = "Balcony. An outdoor platform attached to a building and surrounded by a short wall, fence or other safety railing. The balcony is accessed through a door in a guestroom or suite and is for use by the guest staying in that room. May or may not include seating or outdoor furniture. Is not located on the ground floor. Also lanai.",
          type = "boolean",
        },
        balconyException = {
          description = "Balcony exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        livingAreaSqMeters = {
          description = "Living area sq meters. The measurement in meters of the area of a guestroom's living space.",
          format = "float",
          type = "number",
        },
        livingAreaSqMetersException = {
          description = "Living area sq meters exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        loft = {
          description = "Loft. A three-walled upper area accessed by stairs or a ladder that overlooks the lower area of a room.",
          type = "boolean",
        },
        loftException = {
          description = "Loft exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        nonSmoking = {
          description = "Non smoking. A guestroom in which the smoking of cigarettes, cigars and pipes is prohibited.",
          type = "boolean",
        },
        nonSmokingException = {
          description = "Non smoking exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        patio = {
          description = "Patio. A paved, outdoor area with seating attached to and accessed through a ground-floor guestroom for use by the occupants of the guestroom.",
          type = "boolean",
        },
        patioException = {
          description = "Patio exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        stairs = {
          description = "Stairs. There are steps leading from one level or story to another in the unit.",
          type = "boolean",
        },
        stairsException = {
          description = "Stairs exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LivingAreaSleeping = {
      description = "Information about sleeping features in the living area.",
      id = "LivingAreaSleeping",
      properties = {
        bedsCount = {
          description = "Beds count. The number of permanent beds present in a guestroom. Does not include rollaway beds, cribs or sofabeds.",
          format = "int32",
          type = "integer",
        },
        bedsCountException = {
          description = "Beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        bunkBedsCount = {
          description = "Bunk beds count. The number of furniture pieces in which one framed mattress is fixed directly above another by means of a physical frame. This allows one person(s) to sleep in the bottom bunk and one person(s) to sleep in the top bunk. Also known as double decker bed.",
          format = "int32",
          type = "integer",
        },
        bunkBedsCountException = {
          description = "Bunk beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        cribsCount = {
          description = "Cribs count. The number of small beds for an infant or toddler that the guestroom can obtain. The bed is surrounded by a high railing to prevent the child from falling or climbing out of the bed",
          format = "int32",
          type = "integer",
        },
        cribsCountException = {
          description = "Cribs count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        doubleBedsCount = {
          description = "Double beds count. The number of medium beds measuring 53\"W x 75\"L (135cm x 191cm). Also known as full size bed.",
          format = "int32",
          type = "integer",
        },
        doubleBedsCountException = {
          description = "Double beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        featherPillows = {
          description = "Feather pillows. The option for guests to obtain bed pillows that are stuffed with the feathers and down of ducks or geese.",
          type = "boolean",
        },
        featherPillowsException = {
          description = "Feather pillows exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hypoallergenicBedding = {
          description = "Hypoallergenic bedding. Bedding such as linens, pillows, mattress covers and/or mattresses that are made of materials known to be resistant to allergens such as mold, dust and dander.",
          type = "boolean",
        },
        hypoallergenicBeddingException = {
          description = "Hypoallergenic bedding exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kingBedsCount = {
          description = "King beds count. The number of large beds measuring 76\"W x 80\"L (193cm x 102cm). Most often meant to accompany two people. Includes California king and super king.",
          format = "int32",
          type = "integer",
        },
        kingBedsCountException = {
          description = "King beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        memoryFoamPillows = {
          description = "Memory foam pillows. The option for guests to obtain bed pillows that are stuffed with a man-made foam that responds to body heat by conforming to the body closely, and then recovers its shape when the pillow cools down.",
          type = "boolean",
        },
        memoryFoamPillowsException = {
          description = "Memory foam pillows exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        otherBedsCount = {
          description = "Other beds count. The number of beds that are not standard mattress and boxspring setups such as Japanese tatami mats, trundle beds, air mattresses and cots.",
          format = "int32",
          type = "integer",
        },
        otherBedsCountException = {
          description = "Other beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        queenBedsCount = {
          description = "Queen beds count. The number of medium-large beds measuring 60\"W x 80\"L (152cm x 102cm).",
          format = "int32",
          type = "integer",
        },
        queenBedsCountException = {
          description = "Queen beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        rollAwayBedsCount = {
          description = "Roll away beds count. The number of mattresses on wheeled frames that can be folded in half and rolled away for easy storage that the guestroom can obtain upon request.",
          format = "int32",
          type = "integer",
        },
        rollAwayBedsCountException = {
          description = "Roll away beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        singleOrTwinBedsCount = {
          description = "Single or twin count beds. The number of smaller beds measuring 38\"W x 75\"L (97cm x 191cm) that can accommodate one adult.",
          format = "int32",
          type = "integer",
        },
        singleOrTwinBedsCountException = {
          description = "Single or twin beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        sofaBedsCount = {
          description = "Sofa beds count. The number of specially designed sofas that can be made to serve as a bed by lowering its hinged upholstered back to horizontal position or by pulling out a concealed mattress.",
          format = "int32",
          type = "integer",
        },
        sofaBedsCountException = {
          description = "Sofa beds count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        syntheticPillows = {
          description = "Synthetic pillows. The option for guests to obtain bed pillows stuffed with polyester material crafted to reproduce the feel of a pillow stuffed with down and feathers.",
          type = "boolean",
        },
        syntheticPillowsException = {
          description = "Synthetic pillows exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Lodging = {
      description = "Lodging of a location that provides accomodations.",
      id = "Lodging",
      properties = {
        accessibility = {
          ["$ref"] = "Accessibility",
          description = "Physical adaptations made to the property in consideration of varying levels of human physical ability.",
        },
        activities = {
          ["$ref"] = "Activities",
          description = "Amenities and features related to leisure and play.",
        },
        allUnits = {
          ["$ref"] = "GuestUnitFeatures",
          description = "Output only. All units on the property have at least these attributes.",
          readOnly = true,
        },
        business = {
          ["$ref"] = "Business",
          description = "Features of the property of specific interest to the business traveler.",
        },
        commonLivingArea = {
          ["$ref"] = "LivingArea",
          description = "Features of the shared living areas available in this Lodging.",
        },
        connectivity = {
          ["$ref"] = "Connectivity",
          description = "The ways in which the property provides guests with the ability to access the internet.",
        },
        families = {
          ["$ref"] = "Families",
          description = "Services and amenities for families and young guests.",
        },
        foodAndDrink = {
          ["$ref"] = "FoodAndDrink",
          description = "Meals, snacks, and beverages available at the property.",
        },
        guestUnits = {
          description = "Individual GuestUnitTypes that are available in this Lodging.",
          items = {
            ["$ref"] = "GuestUnitType",
          },
          type = "array",
        },
        healthAndSafety = {
          ["$ref"] = "HealthAndSafety",
          description = "Health and safety measures implemented by the hotel during COVID-19.",
        },
        housekeeping = {
          ["$ref"] = "Housekeeping",
          description = "Conveniences provided in guest units to facilitate an easier, more comfortable stay.",
        },
        metadata = {
          ["$ref"] = "LodgingMetadata",
          description = "Required. Metadata for the lodging.",
        },
        name = {
          description = "Required. Google identifier for this location in the form: `locations/{location_id}/lodging`",
          type = "string",
        },
        parking = {
          ["$ref"] = "Parking",
          description = "Parking options at the property.",
        },
        pets = {
          ["$ref"] = "Pets",
          description = "Policies regarding guest-owned animals.",
        },
        policies = {
          ["$ref"] = "Policies",
          description = "Property rules that impact guests.",
        },
        pools = {
          ["$ref"] = "Pools",
          description = "Swimming pool or recreational water facilities available at the hotel.",
        },
        property = {
          ["$ref"] = "Property",
          description = "General factual information about the property's physical structure and important dates.",
        },
        services = {
          ["$ref"] = "Services",
          description = "Conveniences or help provided by the property to facilitate an easier, more comfortable stay.",
        },
        someUnits = {
          ["$ref"] = "GuestUnitFeatures",
          description = "Output only. Some units on the property have as much as these attributes.",
          readOnly = true,
        },
        sustainability = {
          ["$ref"] = "Sustainability",
          description = "Sustainability practices implemented at the hotel.",
        },
        transportation = {
          ["$ref"] = "Transportation",
          description = "Vehicles or vehicular services facilitated or owned by the property.",
        },
        wellness = {
          ["$ref"] = "Wellness",
          description = "Guest facilities at the property to promote or maintain health, beauty, and fitness.",
        },
      },
      type = "object",
    },
    LodgingMetadata = {
      description = "Metadata for the Lodging.",
      id = "LodgingMetadata",
      properties = {
        updateTime = {
          description = "Required. The latest time at which the Lodging data is asserted to be true in the real world. This is not necessarily the time at which the request is made.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    MinimizedContact = {
      description = "Minimized contact measures implemented by the hotel during COVID-19.",
      id = "MinimizedContact",
      properties = {
        contactlessCheckinCheckout = {
          description = "No-contact check-in and check-out.",
          type = "boolean",
        },
        contactlessCheckinCheckoutException = {
          description = "Contactless check-in check-out exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        digitalGuestRoomKeys = {
          description = "Keyless mobile entry to guest rooms.",
          type = "boolean",
        },
        digitalGuestRoomKeysException = {
          description = "Digital guest room keys exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        housekeepingScheduledRequestOnly = {
          description = "Housekeeping scheduled by request only.",
          type = "boolean",
        },
        housekeepingScheduledRequestOnlyException = {
          description = "Housekeeping scheduled request only exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        noHighTouchItemsCommonAreas = {
          description = "High-touch items, such as magazines, removed from common areas.",
          type = "boolean",
        },
        noHighTouchItemsCommonAreasException = {
          description = "No high touch items common areas exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        noHighTouchItemsGuestRooms = {
          description = "High-touch items, such as decorative pillows, removed from guest rooms.",
          type = "boolean",
        },
        noHighTouchItemsGuestRoomsException = {
          description = "No high touch items guest rooms exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        plasticKeycardsDisinfected = {
          description = "Plastic key cards are disinfected or discarded.",
          type = "boolean",
        },
        plasticKeycardsDisinfectedException = {
          description = "Plastic keycards disinfected exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        roomBookingsBuffer = {
          description = "Buffer maintained between room bookings.",
          type = "boolean",
        },
        roomBookingsBufferException = {
          description = "Room bookings buffer exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Parking = {
      description = "Parking options at the property.",
      id = "Parking",
      properties = {
        electricCarChargingStations = {
          description = "Electric car charging stations. Electric power stations, usually located outdoors, into which guests plug their electric cars to receive a charge.",
          type = "boolean",
        },
        electricCarChargingStationsException = {
          description = "Electric car charging stations exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeParking = {
          description = "Free parking. The hotel allows the cars of guests to be parked for free. Parking facility may be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does not apply. Parking may be performed by the guest or by hotel staff. Free parking must be available to all guests (limited conditions does not apply).",
          type = "boolean",
        },
        freeParkingException = {
          description = "Free parking exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeSelfParking = {
          description = "Free self parking. Guests park their own cars for free. Parking facility may be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does not apply.",
          type = "boolean",
        },
        freeSelfParkingException = {
          description = "Free self parking exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeValetParking = {
          description = "Free valet parking. Hotel staff member parks the cars of guests. Parking with this service is free.",
          type = "boolean",
        },
        freeValetParkingException = {
          description = "Free valet parking exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        parkingAvailable = {
          description = "Parking available. The hotel allows the cars of guests to be parked. Can be free or for a fee. Parking facility may be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does not apply. Parking may be performed by the guest or by hotel staff.",
          type = "boolean",
        },
        parkingAvailableException = {
          description = "Parking available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        selfParkingAvailable = {
          description = "Self parking available. Guests park their own cars. Parking facility may be an outdoor lot or an indoor garage, but must be onsite. Nearby parking does not apply. Can be free or for a fee.",
          type = "boolean",
        },
        selfParkingAvailableException = {
          description = "Self parking available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        valetParkingAvailable = {
          description = "Valet parking available. Hotel staff member parks the cars of guests. Parking with this service can be free or for a fee.",
          type = "boolean",
        },
        valetParkingAvailableException = {
          description = "Valet parking available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PaymentOptions = {
      description = "Forms of payment accepted at the property.",
      id = "PaymentOptions",
      properties = {
        cash = {
          description = "Cash. The hotel accepts payment by paper/coin currency.",
          type = "boolean",
        },
        cashException = {
          description = "Cash exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        cheque = {
          description = "Cheque. The hotel accepts a printed document issued by the guest's bank in the guest's name as a form of payment.",
          type = "boolean",
        },
        chequeException = {
          description = "Cheque exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        creditCard = {
          description = "Credit card. The hotel accepts payment by a card issued by a bank or credit card company. Also known as charge card, debit card, bank card, or charge plate.",
          type = "boolean",
        },
        creditCardException = {
          description = "Credit card exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        debitCard = {
          description = "Debit card. The hotel accepts a bank-issued card that immediately deducts the charged funds from the guest's bank account upon processing.",
          type = "boolean",
        },
        debitCardException = {
          description = "Debit card exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        mobileNfc = {
          description = "Mobile nfc. The hotel has the compatible computer hardware terminal that reads and charges a payment app on the guest's smartphone without requiring the two devices to make physical contact. Also known as Apple Pay, Google Pay, Samsung Pay.",
          type = "boolean",
        },
        mobileNfcException = {
          description = "Mobile nfc exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PersonalProtection = {
      description = "Personal protection measures implemented by the hotel during COVID-19.",
      id = "PersonalProtection",
      properties = {
        commonAreasOfferSanitizingItems = {
          description = "Hand-sanitizer and/or sanitizing wipes are offered in common areas.",
          type = "boolean",
        },
        commonAreasOfferSanitizingItemsException = {
          description = "Common areas offer sanitizing items exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        faceMaskRequired = {
          description = "Masks required on the property.",
          type = "boolean",
        },
        faceMaskRequiredException = {
          description = "Face mask required exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        guestRoomHygieneKitsAvailable = {
          description = "In-room hygiene kits with masks, hand sanitizer, and/or antibacterial wipes.",
          type = "boolean",
        },
        guestRoomHygieneKitsAvailableException = {
          description = "Guest room hygiene kits available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        protectiveEquipmentAvailable = {
          description = "Masks and/or gloves available for guests.",
          type = "boolean",
        },
        protectiveEquipmentAvailableException = {
          description = "Protective equipment available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Pets = {
      description = "Policies regarding guest-owned animals.",
      id = "Pets",
      properties = {
        catsAllowed = {
          description = "Cats allowed. Domesticated felines are permitted at the property and allowed to stay in the guest room of their owner. May or may not require a fee.",
          type = "boolean",
        },
        catsAllowedException = {
          description = "Cats allowed exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        dogsAllowed = {
          description = "Dogs allowed. Domesticated canines are permitted at the property and allowed to stay in the guest room of their owner. May or may not require a fee.",
          type = "boolean",
        },
        dogsAllowedException = {
          description = "Dogs allowed exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        petsAllowed = {
          description = "Pets allowed. Household animals are allowed at the property and in the specific guest room of their owner. May or may not include dogs, cats, reptiles and/or fish. May or may not require a fee. Service animals are not considered to be pets, so not governed by this policy.",
          type = "boolean",
        },
        petsAllowedException = {
          description = "Pets allowed exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        petsAllowedFree = {
          description = "Pets allowed free. Household animals are allowed at the property and in the specific guest room of their owner for free. May or may not include dogs, cats, reptiles, and/or fish.",
          type = "boolean",
        },
        petsAllowedFreeException = {
          description = "Pets allowed free exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PhysicalDistancing = {
      description = "Physical distancing measures implemented by the hotel during COVID-19.",
      id = "PhysicalDistancing",
      properties = {
        commonAreasPhysicalDistancingArranged = {
          description = "Common areas arranged to maintain physical distancing.",
          type = "boolean",
        },
        commonAreasPhysicalDistancingArrangedException = {
          description = "Common areas physical distancing arranged exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        physicalDistancingRequired = {
          description = "Physical distancing required.",
          type = "boolean",
        },
        physicalDistancingRequiredException = {
          description = "Physical distancing required exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        safetyDividers = {
          description = "Safety dividers at front desk and other locations.",
          type = "boolean",
        },
        safetyDividersException = {
          description = "Safety dividers exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        sharedAreasLimitedOccupancy = {
          description = "Guest occupancy limited within shared facilities.",
          type = "boolean",
        },
        sharedAreasLimitedOccupancyException = {
          description = "Shared areas limited occupancy exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        wellnessAreasHavePrivateSpaces = {
          description = "Private spaces designated in spa and wellness areas.",
          type = "boolean",
        },
        wellnessAreasHavePrivateSpacesException = {
          description = "Wellness areas have private spaces exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Policies = {
      description = "Property rules that impact guests.",
      id = "Policies",
      properties = {
        allInclusiveAvailable = {
          description = "All inclusive available. The hotel offers a rate option that includes the cost of the room, meals, activities, and other amenities that might otherwise be charged separately.",
          type = "boolean",
        },
        allInclusiveAvailableException = {
          description = "All inclusive available exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        allInclusiveOnly = {
          description = "All inclusive only. The only rate option offered by the hotel is a rate that includes the cost of the room, meals, activities and other amenities that might otherwise be charged separately.",
          type = "boolean",
        },
        allInclusiveOnlyException = {
          description = "All inclusive only exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        checkinTime = {
          ["$ref"] = "TimeOfDay",
          description = "Check-in time. The time of the day at which the hotel begins providing guests access to their unit at the beginning of their stay.",
        },
        checkinTimeException = {
          description = "Check-in time exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        checkoutTime = {
          ["$ref"] = "TimeOfDay",
          description = "Check-out time. The time of the day on the last day of a guest's reserved stay at which the guest must vacate their room and settle their bill. Some hotels may offer late or early check out for a fee.",
        },
        checkoutTimeException = {
          description = "Check-out time exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        kidsStayFree = {
          description = "Kids stay free. The children of guests are allowed to stay in the room/suite of a parent or adult without an additional fee. The policy may or may not stipulate a limit of the child's age or the overall number of children allowed.",
          type = "boolean",
        },
        kidsStayFreeException = {
          description = "Kids stay free exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        maxChildAge = {
          description = "Max child age. The hotel allows children up to a certain age to stay in the room/suite of a parent or adult without an additional fee.",
          format = "int32",
          type = "integer",
        },
        maxChildAgeException = {
          description = "Max child age exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        maxKidsStayFreeCount = {
          description = "Max kids stay free count. The hotel allows a specific, defined number of children to stay in the room/suite of a parent or adult without an additional fee.",
          format = "int32",
          type = "integer",
        },
        maxKidsStayFreeCountException = {
          description = "Max kids stay free count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        paymentOptions = {
          ["$ref"] = "PaymentOptions",
          description = "Forms of payment accepted at the property.",
        },
        smokeFreeProperty = {
          description = "Smoke free property. Smoking is not allowed inside the building, on balconies, or in outside spaces. Hotels that offer a designated area for guests to smoke are not considered smoke-free properties.",
          type = "boolean",
        },
        smokeFreePropertyException = {
          description = "Smoke free property exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Pools = {
      description = "Swimming pool or recreational water facilities available at the hotel.",
      id = "Pools",
      properties = {
        adultPool = {
          description = "Adult pool. A pool restricted for use by adults only. Can be indoors or outdoors.",
          type = "boolean",
        },
        adultPoolException = {
          description = "Adult pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        hotTub = {
          description = "Hot tub. A man-made pool containing bubbling water maintained at a higher temperature and circulated by aerating jets for the purpose of soaking, relaxation and hydrotherapy. Can be indoors or outdoors. Not used for active swimming. Also known as Jacuzzi. Hot tub must be in a common area where all guests can access it. Does not apply to room-specific hot tubs that are only accessible to guest occupying that room.",
          type = "boolean",
        },
        hotTubException = {
          description = "Hot tub exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        indoorPool = {
          description = "Indoor pool. A pool located inside the hotel and available for guests to use for swimming and/or soaking. Use may or may not be restricted to adults and/or children.",
          type = "boolean",
        },
        indoorPoolException = {
          description = "Indoor pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        indoorPoolsCount = {
          description = "Indoor pools count. The sum of all indoor pools at the hotel.",
          format = "int32",
          type = "integer",
        },
        indoorPoolsCountException = {
          description = "Indoor pools count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        lazyRiver = {
          description = "Lazy river. A man-made pool or several interconnected recreational pools built to mimic the shape and current of a winding river where guests float in the water on inflated rubber tubes. Can be indoors or outdoors.",
          type = "boolean",
        },
        lazyRiverException = {
          description = "Lazy river exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        lifeguard = {
          description = "Lifeguard. A trained member of the hotel staff stationed by the hotel's indoor or outdoor swimming area and responsible for the safety of swimming guests.",
          type = "boolean",
        },
        lifeguardException = {
          description = "Lifeguard exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        outdoorPool = {
          description = "Outdoor pool. A pool located outside on the grounds of the hotel and available for guests to use for swimming, soaking or recreation. Use may or may not be restricted to adults and/or children.",
          type = "boolean",
        },
        outdoorPoolException = {
          description = "Outdoor pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        outdoorPoolsCount = {
          description = "Outdoor pools count. The sum of all outdoor pools at the hotel.",
          format = "int32",
          type = "integer",
        },
        outdoorPoolsCountException = {
          description = "Outdoor pools count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        pool = {
          description = "Pool. The presence of a pool, either indoors or outdoors, for guests to use for swimming and/or soaking. Use may or may not be restricted to adults and/or children.",
          type = "boolean",
        },
        poolException = {
          description = "Pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        poolsCount = {
          description = "Pools count. The sum of all pools at the hotel.",
          format = "int32",
          type = "integer",
        },
        poolsCountException = {
          description = "Pools count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        wadingPool = {
          description = "Wading pool. A shallow pool designed for small children to play in. Can be indoors or outdoors. Also known as kiddie pool.",
          type = "boolean",
        },
        wadingPoolException = {
          description = "Wading pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterPark = {
          description = "Water park. An aquatic recreation area with a large pool or series of pools that has features such as a water slide or tube, wavepool, fountains, rope swings, and/or obstacle course. Can be indoors or outdoors. Also known as adventure pool.",
          type = "boolean",
        },
        waterParkException = {
          description = "Water park exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterslide = {
          description = "Waterslide. A continuously wetted chute positioned by an indoor or outdoor pool which people slide down into the water.",
          type = "boolean",
        },
        waterslideException = {
          description = "Waterslide exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        wavePool = {
          description = "Wave pool. A large indoor or outdoor pool with a machine that produces water currents to mimic the ocean's crests.",
          type = "boolean",
        },
        wavePoolException = {
          description = "Wave pool exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Property = {
      description = "General factual information about the property's physical structure and important dates.",
      id = "Property",
      properties = {
        builtYear = {
          description = "Built year. The year that construction of the property was completed.",
          format = "int32",
          type = "integer",
        },
        builtYearException = {
          description = "Built year exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        floorsCount = {
          description = "Floors count. The number of stories the building has from the ground floor to the top floor that are accessible to guests.",
          format = "int32",
          type = "integer",
        },
        floorsCountException = {
          description = "Floors count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        lastRenovatedYear = {
          description = "Last renovated year. The year when the most recent renovation of the property was completed. Renovation may include all or any combination of the following: the units, the public spaces, the exterior, or the interior.",
          format = "int32",
          type = "integer",
        },
        lastRenovatedYearException = {
          description = "Last renovated year exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        roomsCount = {
          description = "Rooms count. The total number of rooms and suites bookable by guests for an overnight stay. Does not include event space, public spaces, conference rooms, fitness rooms, business centers, spa, salon, restaurants/bars, or shops.",
          format = "int32",
          type = "integer",
        },
        roomsCountException = {
          description = "Rooms count exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Services = {
      description = "Conveniences or help provided by the property to facilitate an easier, more comfortable stay.",
      id = "Services",
      properties = {
        baggageStorage = {
          description = "Baggage storage. A provision for guests to leave their bags at the hotel when they arrive for their stay before the official check-in time. May or may not apply for guests who wish to leave their bags after check-out and before departing the locale. Also known as bag dropoff.",
          type = "boolean",
        },
        baggageStorageException = {
          description = "Baggage storage exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        concierge = {
          description = "Concierge. Hotel staff member(s) responsible for facilitating an easy, comfortable stay through making reservations for meals, sourcing theater tickets, arranging tours, finding a doctor, making recommendations, and answering questions.",
          type = "boolean",
        },
        conciergeException = {
          description = "Concierge exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        convenienceStore = {
          description = "Convenience store. A shop at the hotel primarily selling snacks, drinks, non-prescription medicines, health and beauty aids, magazines and newspapers.",
          type = "boolean",
        },
        convenienceStoreException = {
          description = "Convenience store exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        currencyExchange = {
          description = "Currency exchange. A staff member or automated machine tasked with the transaction of providing the native currency of the hotel's locale in exchange for the foreign currency provided by a guest.",
          type = "boolean",
        },
        currencyExchangeException = {
          description = "Currency exchange exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        elevator = {
          description = "Elevator. A passenger elevator that transports guests from one story to another. Also known as lift.",
          type = "boolean",
        },
        elevatorException = {
          description = "Elevator exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        frontDesk = {
          description = "Front desk. A counter or desk in the lobby or the immediate interior of the hotel where a member of the staff greets guests and processes the information related to their stay (including check-in and check-out). May or may not be manned and open 24/7.",
          type = "boolean",
        },
        frontDeskException = {
          description = "Front desk exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        fullServiceLaundry = {
          description = "Full service laundry. Laundry and dry cleaning facilitated and handled by the hotel on behalf of the guest. Does not include the provision for guests to do their own laundry in on-site machines.",
          type = "boolean",
        },
        fullServiceLaundryException = {
          description = "Full service laundry exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        giftShop = {
          description = "Gift shop. An on-site store primarily selling souvenirs, mementos and other gift items. May or may not also sell sundries, magazines and newspapers, clothing, or snacks.",
          type = "boolean",
        },
        giftShopException = {
          description = "Gift shop exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        languagesSpoken = {
          description = "Languages spoken by at least one staff member.",
          items = {
            ["$ref"] = "LanguageSpoken",
          },
          type = "array",
        },
        selfServiceLaundry = {
          description = "Self service laundry. On-site clothes washers and dryers accessible to guests for the purpose of washing and drying their own clothes. May or may not require payment to use the machines.",
          type = "boolean",
        },
        selfServiceLaundryException = {
          description = "Self service laundry exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        socialHour = {
          description = "Social hour. A reception with complimentary soft drinks, tea, coffee, wine and/or cocktails in the afternoon or evening. Can be hosted by hotel staff or guests may serve themselves. Also known as wine hour. The availability of coffee/tea in the lobby throughout the day does not constitute a social or wine hour.",
          type = "boolean",
        },
        socialHourException = {
          description = "Social hour exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        twentyFourHourFrontDesk = {
          description = "24hr front desk. Front desk is staffed 24 hours a day.",
          type = "boolean",
        },
        twentyFourHourFrontDeskException = {
          description = "24hr front desk exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        wakeUpCalls = {
          description = "Wake up calls. By direction of the guest, a hotel staff member will phone the guest unit at the requested hour. Also known as morning call.",
          type = "boolean",
        },
        wakeUpCallsException = {
          description = "Wake up calls exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Sustainability = {
      description = "Sustainability practices implemented at the hotel.",
      id = "Sustainability",
      properties = {
        energyEfficiency = {
          ["$ref"] = "EnergyEfficiency",
          description = "Energy efficiency practices implemented at the hotel.",
        },
        sustainabilityCertifications = {
          ["$ref"] = "SustainabilityCertifications",
          description = "Sustainability certifications the hotel has been awarded.",
        },
        sustainableSourcing = {
          ["$ref"] = "SustainableSourcing",
          description = "Sustainable sourcing practices implemented at the hotel.",
        },
        wasteReduction = {
          ["$ref"] = "WasteReduction",
          description = "Waste reduction practices implemented at the hotel.",
        },
        waterConservation = {
          ["$ref"] = "WaterConservation",
          description = "Water conservation practices implemented at the hotel.",
        },
      },
      type = "object",
    },
    SustainabilityCertifications = {
      description = "Sustainability certifications the hotel has been awarded.",
      id = "SustainabilityCertifications",
      properties = {
        breeamCertification = {
          description = "BREEAM certification.",
          enum = {
            "BREEAM_CERTIFICATION_UNSPECIFIED",
            "NO_BREEAM_CERTIFICATION",
            "BREEAM_PASS",
            "BREEAM_GOOD",
            "BREEAM_VERY_GOOD",
            "BREEAM_EXCELLENT",
            "BREEAM_OUTSTANDING",
          },
          enumDescriptions = {
            "Default BreeamCertification. Do not use.",
            "Not certified.",
            "BREEAM Pass.",
            "BREEAM Good.",
            "BREEAM Very Good.",
            "BREEAM Excellent.",
            "BREEAM Outstanding.",
          },
          type = "string",
        },
        breeamCertificationException = {
          description = "BREEAM certification exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        ecoCertifications = {
          description = "The eco certificates awarded to the hotel.",
          items = {
            ["$ref"] = "EcoCertification",
          },
          type = "array",
        },
        leedCertification = {
          description = "LEED certification. Deprecated: this field is no longer populated. LEED certification status is now provided directly by USGBC.",
          enum = {
            "LEED_CERTIFICATION_UNSPECIFIED",
            "NO_LEED_CERTIFICATION",
            "LEED_CERTIFIED",
            "LEED_SILVER",
            "LEED_GOLD",
            "LEED_PLATINUM",
          },
          enumDescriptions = {
            "Default LeedCertification. Do not use.",
            "Not certified.",
            "LEED Certified.",
            "LEED Silver.",
            "LEED Gold.",
            "LEED Platinum.",
          },
          type = "string",
        },
        leedCertificationException = {
          description = "LEED certification exception. Deprecated: this field is no longer populated. LEED certification status is now provided directly by USGBC.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SustainableSourcing = {
      description = "Sustainable sourcing practices implemented at the hotel.",
      id = "SustainableSourcing",
      properties = {
        ecoFriendlyToiletries = {
          description = "Eco friendly toiletries. Soap, shampoo, lotion, and other toiletries provided for guests have a nationally or internationally recognized sustainability certification, such as USDA Organic, EU Organic, or cruelty-free.",
          type = "boolean",
        },
        ecoFriendlyToiletriesException = {
          description = "Eco friendly toiletries exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        locallySourcedFoodAndBeverages = {
          description = "Locally sourced food and beverages. Property sources locally in order to lower the environmental footprint from reduced transportation and to stimulate the local economy. Products produced less than 62 miles from the establishment are normally considered as locally produced.",
          type = "boolean",
        },
        locallySourcedFoodAndBeveragesException = {
          description = "Locally sourced food and beverages exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        organicCageFreeEggs = {
          description = "Organic cage free eggs. The property sources 100% certified organic and cage-free eggs (shell, liquid, and egg products). Cage-free means hens are able to walk, spread their wings and lay their eggs in nests).",
          type = "boolean",
        },
        organicCageFreeEggsException = {
          description = "Organic cage free eggs exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        organicFoodAndBeverages = {
          description = "Organic food and beverages. At least 25% of food and beverages, by spend, are certified organic. Organic means products that are certified to one of the organic standard listed in the IFOAM family of standards. Qualifying certifications include USDA Organic and EU Organic, among others.",
          type = "boolean",
        },
        organicFoodAndBeveragesException = {
          description = "Organic food and beverages exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        responsiblePurchasingPolicy = {
          description = "Responsible purchasing policy. The property has a responsible procurement policy in place. Responsible means integration of social, ethical, and/or environmental performance factors into the procurement process when selecting suppliers.",
          type = "boolean",
        },
        responsiblePurchasingPolicyException = {
          description = "Responsible purchasing policy exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        responsiblySourcesSeafood = {
          description = "Responsibly sources seafood. The property does not source seafood from the Monterey Bay Aquarium Seafood Watch \"avoid\" list, and must sustainably source seafood listed as \"good alternative,\" \"eco-certified,\" and \"best choice\". The property has a policy outlining a commitment to source Marine Stewardship Council (MSC) and/or Aquaculture Stewardship Council (ASC) Chain of Custody certified seafood.",
          type = "boolean",
        },
        responsiblySourcesSeafoodException = {
          description = "Responsibly sources seafood exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        veganMeals = {
          description = "Vegan meals. The property provides vegan menu options for guests. Vegan food does not contain animal products or byproducts.",
          type = "boolean",
        },
        veganMealsException = {
          description = "Vegan meals exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        vegetarianMeals = {
          description = "Vegetarian meals. The property provides vegetarian menu options for guests. Vegetarian food does not contain meat, poultry, fish, or seafood.",
          type = "boolean",
        },
        vegetarianMealsException = {
          description = "Vegetarian meals exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
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
    Transportation = {
      description = "Vehicles or vehicular services facilitated or owned by the property.",
      id = "Transportation",
      properties = {
        airportShuttle = {
          description = "Airport shuttle. The hotel provides guests with a chauffeured van or bus to and from the airport. Can be free or for a fee. Guests may share the vehicle with other guests unknown to them. Applies if the hotel has a third-party shuttle service (office/desk etc.) within the hotel. As long as hotel provides this service, it doesn't matter if it's directly with them or a third party they work with. Does not apply if guest has to coordinate with an entity outside/other than the hotel.",
          type = "boolean",
        },
        airportShuttleException = {
          description = "Airport shuttle exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        carRentalOnProperty = {
          description = "Car rental on property. A branch of a rental car company with a processing desk in the hotel. Available cars for rent may be awaiting at the hotel or in a nearby lot.",
          type = "boolean",
        },
        carRentalOnPropertyException = {
          description = "Car rental on property exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeAirportShuttle = {
          description = "Free airport shuttle. Airport shuttle is free to guests. Must be free to all guests without any conditions.",
          type = "boolean",
        },
        freeAirportShuttleException = {
          description = "Free airport shuttle exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freePrivateCarService = {
          description = "Free private car service. Private chauffeured car service is free to guests.",
          type = "boolean",
        },
        freePrivateCarServiceException = {
          description = "Free private car service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        localShuttle = {
          description = "Local shuttle. A car, van or bus provided by the hotel to transport guests to destinations within a specified range of distance around the hotel. Usually shopping and/or convention centers, downtown districts, or beaches. Can be free or for a fee.",
          type = "boolean",
        },
        localShuttleException = {
          description = "Local shuttle exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        privateCarService = {
          description = "Private car service. Hotel provides a private chauffeured car to transport guests to destinations. Passengers in the car are either alone or are known to one another and have requested the car together. Service can be free or for a fee and travel distance is usually limited to a specific range. Not a taxi.",
          type = "boolean",
        },
        privateCarServiceException = {
          description = "Private car service exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        transfer = {
          description = "Transfer. Hotel provides a shuttle service or car service to take guests to and from the nearest airport or train station. Can be free or for a fee. Guests may share the vehicle with other guests unknown to them.",
          type = "boolean",
        },
        transferException = {
          description = "Transfer exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ViewsFromUnit = {
      description = "Views available from the guest unit itself.",
      id = "ViewsFromUnit",
      properties = {
        beachView = {
          description = "Beach view. A guestroom that features a window through which guests can see the beach.",
          type = "boolean",
        },
        beachViewException = {
          description = "Beach view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        cityView = {
          description = "City view. A guestroom that features a window through which guests can see the buildings, parks and/or streets of the city.",
          type = "boolean",
        },
        cityViewException = {
          description = "City view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        gardenView = {
          description = "Garden view. A guestroom that features a window through which guests can see a garden.",
          type = "boolean",
        },
        gardenViewException = {
          description = "Garden view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        lakeView = {
          description = "Lake view.",
          type = "boolean",
        },
        lakeViewException = {
          description = "Lake view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        landmarkView = {
          description = "Landmark view. A guestroom that features a window through which guests can see a landmark such as the countryside, a golf course, the forest, a park, a rain forst, a mountain or a slope.",
          type = "boolean",
        },
        landmarkViewException = {
          description = "Landmark view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        oceanView = {
          description = "Ocean view. A guestroom that features a window through which guests can see the ocean.",
          type = "boolean",
        },
        oceanViewException = {
          description = "Ocean view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        poolView = {
          description = "Pool view. A guestroom that features a window through which guests can see the hotel's swimming pool.",
          type = "boolean",
        },
        poolViewException = {
          description = "Pool view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        valleyView = {
          description = "Valley view. A guestroom that features a window through which guests can see over a valley.",
          type = "boolean",
        },
        valleyViewException = {
          description = "Valley view exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    WasteReduction = {
      description = "Waste reduction practices implemented at the hotel.",
      id = "WasteReduction",
      properties = {
        compostableFoodContainersAndCutlery = {
          description = "Compostable food containers and cutlery. 100% of food service containers and to-go cutlery are compostable, and reusable utensils are offered wherever possible. Compostable materials are capable of undergoing biological decomposition in a compost site, such that material is not visually distinguishable and breaks down into carbon dioxide, water, inorganic compounds, and biomass.",
          type = "boolean",
        },
        compostableFoodContainersAndCutleryException = {
          description = "Compostable food containers and cutlery exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        compostsExcessFood = {
          description = "Composts excess food. The property has a program and/or policy for diverting waste from landfill by composting food and yard waste, either through compost collection and off-site processing or on-site compost processing.",
          type = "boolean",
        },
        compostsExcessFoodException = {
          description = "Composts excess food exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        donatesExcessFood = {
          description = "Donates excess food. The property has a program and/or policy for diverting waste from landfill that may include efforts to donate for human consumption or divert food for animal feed.",
          type = "boolean",
        },
        donatesExcessFoodException = {
          description = "Donates excess food exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        foodWasteReductionProgram = {
          description = "Food waste reduction program. The property has established a food waste reduction and donation program, aiming to reduce food waste by half. These programs typically use tools such as the Hotel Kitchen Toolkit and others to track waste and measure progress.",
          type = "boolean",
        },
        foodWasteReductionProgramException = {
          description = "Food waste reduction program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        noSingleUsePlasticStraws = {
          description = "No single use plastic straws. The property bans single-use plastic straws.",
          type = "boolean",
        },
        noSingleUsePlasticStrawsException = {
          description = "No single use plastic straws exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        noSingleUsePlasticWaterBottles = {
          description = "No single use plastic water bottles. The property bans single-use plastic water bottles.",
          type = "boolean",
        },
        noSingleUsePlasticWaterBottlesException = {
          description = "No single use plastic water bottles exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        noStyrofoamFoodContainers = {
          description = "No styrofoam food containers. The property eliminates the use of Styrofoam in disposable food service items.",
          type = "boolean",
        },
        noStyrofoamFoodContainersException = {
          description = "No styrofoam food containers exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        recyclingProgram = {
          description = "Recycling program. The property has a recycling program, aligned with LEED waste requirements, and a policy outlining efforts to send less than 50% of waste to landfill. The recycling program includes storage locations for recyclable materials, including mixed paper, corrugated cardboard, glass, plastics, and metals.",
          type = "boolean",
        },
        recyclingProgramException = {
          description = "Recycling program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        refillableToiletryContainers = {
          description = "Refillable toiletry containers. The property has replaced miniature individual containers with refillable amenity dispensers for shampoo, conditioner, soap, and lotion.",
          type = "boolean",
        },
        refillableToiletryContainersException = {
          description = "Refillable toiletry containers exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        safelyDisposesBatteries = {
          description = "Safely disposes batteries. The property safely stores and disposes batteries.",
          type = "boolean",
        },
        safelyDisposesBatteriesException = {
          description = "Safely disposes batteries exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        safelyDisposesElectronics = {
          description = "Safely disposes electronics. The property has a reputable recycling program that keeps hazardous electronic parts and chemical compounds out of landfills, dumps and other unauthorized abandonment sites, and recycles/reuses applicable materials. (e.g. certified electronics recyclers).",
          type = "boolean",
        },
        safelyDisposesElectronicsException = {
          description = "Safely disposes electronics exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        safelyDisposesLightbulbs = {
          description = "Safely disposes lightbulbs. The property safely stores and disposes lightbulbs.",
          type = "boolean",
        },
        safelyDisposesLightbulbsException = {
          description = "Safely disposes lightbulbs exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        safelyHandlesHazardousSubstances = {
          description = "Safely handles hazardous substances. The property has a hazardous waste management program aligned wit GreenSeal and LEED requirements, and meets all regulatory requirements for hazardous waste disposal and recycling. Hazardous means substances that are classified as \"hazardous\" by an authoritative body (such as OSHA or DOT), are labeled with signal words such as \"Danger,\" \"Caution,\" \"Warning,\" or are flammable, corrosive, or ignitable. Requirements include: - The property shall maintain records of the efforts it has made to replace the hazardous substances it uses with less hazardous alternatives. - An inventory of the hazardous materials stored on-site. - Products intended for cleaning, dishwashing, laundry, and pool maintenance shall be stored in clearly labeled containers. These containers shall be checked regularly for leaks, and replaced a necessary. - Spill containment devices shall be installed to collect spills, drips, or leaching of chemicals.",
          type = "boolean",
        },
        safelyHandlesHazardousSubstancesException = {
          description = "Safely handles hazardous substances exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        soapDonationProgram = {
          description = "Soap donation program. The property participates in a soap donation program such as Clean the World or something similar.",
          type = "boolean",
        },
        soapDonationProgramException = {
          description = "Soap donation program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        toiletryDonationProgram = {
          description = "Toiletry donation program. The property participates in a toiletry donation program such as Clean the World or something similar.",
          type = "boolean",
        },
        toiletryDonationProgramException = {
          description = "Toiletry donation program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterBottleFillingStations = {
          description = "Water bottle filling stations. The property offers water stations throughout the building for guest use.",
          type = "boolean",
        },
        waterBottleFillingStationsException = {
          description = "Water bottle filling stations exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    WaterConservation = {
      description = "Water conservation practices implemented at the hotel.",
      id = "WaterConservation",
      properties = {
        independentOrganizationAuditsWaterUse = {
          description = "Independent organization audits water use. The property conducts a water conservation audit every 5 years, the results of which are either verified by a third-party and/or published in external communications. A water conservation audit is a detailed assessment of the facility, providing recommendations to existing operations and procedures to improve water efficiency, available incentives or rebates, and opportunities for improvements through renovations or upgrades. Examples of organizations who conduct credible third party audits include: Engie Impact, and local utility providers (they often provide energy and water audits).",
          type = "boolean",
        },
        independentOrganizationAuditsWaterUseException = {
          description = "Independent organization audits water use exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        linenReuseProgram = {
          description = "Linen reuse program. The property offers a linen reuse program.",
          type = "boolean",
        },
        linenReuseProgramException = {
          description = "Linen reuse program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        towelReuseProgram = {
          description = "Towel reuse program. The property offers a towel reuse program.",
          type = "boolean",
        },
        towelReuseProgramException = {
          description = "Towel reuse program exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterSavingShowers = {
          description = "Water saving showers. All of the property's guest rooms have shower heads that use no more than 2.0 gallons per minute (gpm).",
          type = "boolean",
        },
        waterSavingShowersException = {
          description = "Water saving showers exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterSavingSinks = {
          description = "Water saving sinks. All of the property's guest rooms have bathroom faucets that use a maximum of 1.5 gallons per minute (gpm), public restroom faucets do not exceed 0.5 gpm, and kitchen faucets (excluding faucets used exclusively for filling operations) do not exceed 2.2 gpm.",
          type = "boolean",
        },
        waterSavingSinksException = {
          description = "Water saving sinks exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        waterSavingToilets = {
          description = "Water saving toilets. All of the property's toilets use 1.6 gallons per flush, or less.",
          type = "boolean",
        },
        waterSavingToiletsException = {
          description = "Water saving toilets exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Wellness = {
      description = "Guest facilities at the property to promote or maintain health, beauty, and fitness.",
      id = "Wellness",
      properties = {
        doctorOnCall = {
          description = "Doctor on call. The hotel has a contract with a medical professional who provides services to hotel guests should they fall ill during their stay. The doctor may or may not have an on-site office or be at the hotel at all times.",
          type = "boolean",
        },
        doctorOnCallException = {
          description = "Doctor on call exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        ellipticalMachine = {
          description = "Elliptical machine. An electric, stationary fitness machine with pedals that simulates climbing, walking or running and provides a user-controlled range of speeds and tensions. May not have arm-controlled levers to work out the upper body as well. Commonly found in a gym, fitness room, health center, or health club.",
          type = "boolean",
        },
        ellipticalMachineException = {
          description = "Elliptical machine exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        fitnessCenter = {
          description = "Fitness center. A room or building at the hotel containing equipment to promote physical activity, such as treadmills, elliptical machines, stationary bikes, weight machines, free weights, and/or stretching mats. Use of the fitness center can be free or for a fee. May or may not be staffed. May or may not offer instructor-led classes in various styles of physical conditioning. May or may not be open 24/7. May or may not include locker rooms and showers. Also known as health club, gym, fitness room, health center.",
          type = "boolean",
        },
        fitnessCenterException = {
          description = "Fitness center exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeFitnessCenter = {
          description = "Free fitness center. Guests may use the fitness center for free.",
          type = "boolean",
        },
        freeFitnessCenterException = {
          description = "Free fitness center exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        freeWeights = {
          description = "Free weights. Individual handheld fitness equipment of varied weights used for upper body strength training or bodybuilding. Also known as barbells, dumbbells, or kettlebells. Often stored on a rack with the weights arranged from light to heavy. Commonly found in a gym, fitness room, health center, or health club.",
          type = "boolean",
        },
        freeWeightsException = {
          description = "Free weights exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        massage = {
          description = "Massage. A service provided by a trained massage therapist involving the physical manipulation of a guest's muscles in order to achieve relaxation or pain relief.",
          type = "boolean",
        },
        massageException = {
          description = "Massage exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        salon = {
          description = "Salon. A room at the hotel where professionals provide hair styling services such as shampooing, blow drying, hair dos, hair cutting and hair coloring. Also known as hairdresser or beauty salon.",
          type = "boolean",
        },
        salonException = {
          description = "Salon exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        sauna = {
          description = "Sauna. A wood-paneled room heated to a high temperature where guests sit on built-in wood benches for the purpose of perspiring and relaxing their muscles. Can be dry or slightly wet heat. Not a steam room.",
          type = "boolean",
        },
        saunaException = {
          description = "Sauna exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        spa = {
          description = "Spa. A designated area, room or building at the hotel offering health and beauty treatment through such means as steam baths, exercise equipment, and massage. May also offer facials, nail care, and hair care. Services are usually available by appointment and for an additional fee. Does not apply if hotel only offers a steam room; must offer other beauty and/or health treatments as well.",
          type = "boolean",
        },
        spaException = {
          description = "Spa exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        treadmill = {
          description = "Treadmill. An electric stationary fitness machine that simulates a moving path to promote walking or running within a range of user-controlled speeds and inclines. Also known as running machine. Commonly found in a gym, fitness room, health center, or health club.",
          type = "boolean",
        },
        treadmillException = {
          description = "Treadmill exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
        weightMachine = {
          description = "Weight machine. Non-electronic fitness equipment designed for the user to target the exertion of different muscles. Usually incorporates a padded seat, a stack of flat weights and various bars and pulleys. May be designed for toning a specific part of the body or may involve different user-controlled settings, hardware and pulleys so as to provide an overall workout in one machine. Commonly found in a gym, fitness center, fitness room, or health club.",
          type = "boolean",
        },
        weightMachineException = {
          description = "Weight machine exception.",
          enum = {
            "EXCEPTION_UNSPECIFIED",
            "UNDER_CONSTRUCTION",
            "DEPENDENT_ON_SEASON",
            "DEPENDENT_ON_DAY_OF_WEEK",
          },
          enumDescriptions = {
            "Default unspecified exception. Use this only if a more specific exception does not match.",
            "Amenity or service is unavailable due to ongoing work orders.",
            "Amenity or service availability is seasonal.",
            "Amenity or service availability depends on the day of the week.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "My Business Lodging API",
  version = "v1",
  version_module = true,
}
