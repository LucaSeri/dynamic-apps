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
        ["https://www.googleapis.com/auth/spreadsheets"] = {
          description = "See, edit, create, and delete all your Google Sheets spreadsheets",
        },
        ["https://www.googleapis.com/auth/spreadsheets.readonly"] = {
          description = "See all your Google Sheets spreadsheets",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://sheets.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Sheets",
  description = "Reads and writes Google Sheets.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/sheets/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "sheets:v4",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://sheets.mtls.googleapis.com/",
  name = "sheets",
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
    spreadsheets = {
      methods = {
        batchUpdate = {
          description = "Applies one or more updates to the spreadsheet. Each request is validated before being applied. If any request is not valid then the entire request will fail and nothing will be applied. Some requests have replies to give you some information about how they are applied. The replies will mirror the requests. For example, if you applied 4 updates and the 3rd one had a reply, then the response will have 2 empty replies, the actual reply, and another empty reply, in that order. Due to the collaborative nature of spreadsheets, it is not guaranteed that the spreadsheet will reflect exactly your changes after this completes, however it is guaranteed that the updates in the request will be applied together atomically. Your changes may be altered with respect to collaborator changes. If there are no collaborators, the spreadsheet should reflect your changes.",
          flatPath = "v4/spreadsheets/{spreadsheetId}:batchUpdate",
          httpMethod = "POST",
          id = "sheets.spreadsheets.batchUpdate",
          parameterOrder = {
            "spreadsheetId",
          },
          parameters = {
            spreadsheetId = {
              description = "The spreadsheet to apply the updates to.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v4/spreadsheets/{spreadsheetId}:batchUpdate",
          request = {
            ["$ref"] = "BatchUpdateSpreadsheetRequest",
          },
          response = {
            ["$ref"] = "BatchUpdateSpreadsheetResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/spreadsheets",
          },
        },
        create = {
          description = "Creates a spreadsheet, returning the newly created spreadsheet.",
          flatPath = "v4/spreadsheets",
          httpMethod = "POST",
          id = "sheets.spreadsheets.create",
          parameterOrder = {},
          parameters = {},
          path = "v4/spreadsheets",
          request = {
            ["$ref"] = "Spreadsheet",
          },
          response = {
            ["$ref"] = "Spreadsheet",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/spreadsheets",
          },
        },
        get = {
          description = "Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. By default, data within grids is not returned. You can include grid data in one of 2 ways: * Specify a [field mask](https://developers.google.com/sheets/api/guides/field-masks) listing your desired fields using the `fields` URL parameter in HTTP * Set the includeGridData URL parameter to true. If a field mask is set, the `includeGridData` parameter is ignored For large spreadsheets, as a best practice, retrieve only the specific spreadsheet fields that you want. To retrieve only subsets of spreadsheet data, use the ranges URL parameter. Ranges are specified using [A1 notation](/sheets/api/guides/concepts#cell). You can define a single cell (for example, `A1`) or multiple cells (for example, `A1:D5`). You can also get cells from other sheets within the same spreadsheet (for example, `Sheet2!A1:C4`) or retrieve multiple ranges at once (for example, `?ranges=A1:D5&ranges=Sheet2!A1:C4`). Limiting the range returns only the portions of the spreadsheet that intersect the requested ranges.",
          flatPath = "v4/spreadsheets/{spreadsheetId}",
          httpMethod = "GET",
          id = "sheets.spreadsheets.get",
          parameterOrder = {
            "spreadsheetId",
          },
          parameters = {
            includeGridData = {
              description = "True if grid data should be returned. This parameter is ignored if a field mask was set in the request.",
              location = "query",
              type = "boolean",
            },
            ranges = {
              description = "The ranges to retrieve from the spreadsheet.",
              location = "query",
              repeated = true,
              type = "string",
            },
            spreadsheetId = {
              description = "The spreadsheet to request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v4/spreadsheets/{spreadsheetId}",
          response = {
            ["$ref"] = "Spreadsheet",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
            "https://www.googleapis.com/auth/spreadsheets",
            "https://www.googleapis.com/auth/spreadsheets.readonly",
          },
        },
        getByDataFilter = {
          description = "Returns the spreadsheet at the given ID. The caller must specify the spreadsheet ID. This method differs from GetSpreadsheet in that it allows selecting which subsets of spreadsheet data to return by specifying a dataFilters parameter. Multiple DataFilters can be specified. Specifying one or more data filters returns the portions of the spreadsheet that intersect ranges matched by any of the filters. By default, data within grids is not returned. You can include grid data one of 2 ways: * Specify a [field mask](https://developers.google.com/sheets/api/guides/field-masks) listing your desired fields using the `fields` URL parameter in HTTP * Set the includeGridData parameter to true. If a field mask is set, the `includeGridData` parameter is ignored For large spreadsheets, as a best practice, retrieve only the specific spreadsheet fields that you want.",
          flatPath = "v4/spreadsheets/{spreadsheetId}:getByDataFilter",
          httpMethod = "POST",
          id = "sheets.spreadsheets.getByDataFilter",
          parameterOrder = {
            "spreadsheetId",
          },
          parameters = {
            spreadsheetId = {
              description = "The spreadsheet to request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v4/spreadsheets/{spreadsheetId}:getByDataFilter",
          request = {
            ["$ref"] = "GetSpreadsheetByDataFilterRequest",
          },
          response = {
            ["$ref"] = "Spreadsheet",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/spreadsheets",
          },
        },
      },
      resources = {
        developerMetadata = {
          methods = {
            get = {
              description = "Returns the developer metadata with the specified ID. The caller must specify the spreadsheet ID and the developer metadata's unique metadataId.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/developerMetadata/{metadataId}",
              httpMethod = "GET",
              id = "sheets.spreadsheets.developerMetadata.get",
              parameterOrder = {
                "spreadsheetId",
                "metadataId",
              },
              parameters = {
                metadataId = {
                  description = "The ID of the developer metadata to retrieve.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to retrieve metadata from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/developerMetadata/{metadataId}",
              response = {
                ["$ref"] = "DeveloperMetadata",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            search = {
              description = "Returns all developer metadata matching the specified DataFilter. If the provided DataFilter represents a DeveloperMetadataLookup object, this will return all DeveloperMetadata entries selected by it. If the DataFilter represents a location in a spreadsheet, this will return all developer metadata associated with locations intersecting that region.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/developerMetadata:search",
              httpMethod = "POST",
              id = "sheets.spreadsheets.developerMetadata.search",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to retrieve metadata from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/developerMetadata:search",
              request = {
                ["$ref"] = "SearchDeveloperMetadataRequest",
              },
              response = {
                ["$ref"] = "SearchDeveloperMetadataResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
          },
        },
        sheets = {
          methods = {
            copyTo = {
              description = "Copies a single sheet from a spreadsheet to another spreadsheet. Returns the properties of the newly created sheet.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/sheets/{sheetId}:copyTo",
              httpMethod = "POST",
              id = "sheets.spreadsheets.sheets.copyTo",
              parameterOrder = {
                "spreadsheetId",
                "sheetId",
              },
              parameters = {
                sheetId = {
                  description = "The ID of the sheet to copy.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet containing the sheet to copy.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/sheets/{sheetId}:copyTo",
              request = {
                ["$ref"] = "CopySheetToAnotherSpreadsheetRequest",
              },
              response = {
                ["$ref"] = "SheetProperties",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
          },
        },
        values = {
          methods = {
            append = {
              description = "Appends values to a spreadsheet. The input range is used to search for existing data and find a \"table\" within that range. Values will be appended to the next row of the table, starting with the first column of the table. See the [guide](/sheets/api/guides/values#appending_values) and [sample code](/sheets/api/samples/writing#append_values) for specific details of how tables are detected and data is appended. The caller must specify the spreadsheet ID, range, and a valueInputOption. The `valueInputOption` only controls how the input data will be added to the sheet (column-wise or row-wise), it does not influence what cell the data starts being written to.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values/{range}:append",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.append",
              parameterOrder = {
                "spreadsheetId",
                "range",
              },
              parameters = {
                includeValuesInResponse = {
                  description = "Determines if the update response should include the values of the cells that were appended. By default, responses do not include the updated values.",
                  location = "query",
                  type = "boolean",
                },
                insertDataOption = {
                  description = "How the input data should be inserted.",
                  enum = {
                    "OVERWRITE",
                    "INSERT_ROWS",
                  },
                  enumDescriptions = {
                    "The new data overwrites existing data in the areas it is written. (Note: adding data to the end of the sheet will still insert new rows or columns so the data can be written.)",
                    "Rows are inserted for the new data.",
                  },
                  location = "query",
                  type = "string",
                },
                range = {
                  description = "The [A1 notation](/sheets/api/guides/concepts#cell) of a range to search for a logical table of data. Values are appended after the last row of the table.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                responseDateTimeRenderOption = {
                  description = "Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
                  enum = {
                    "SERIAL_NUMBER",
                    "FORMATTED_STRING",
                  },
                  enumDescriptions = {
                    "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
                    "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
                  },
                  location = "query",
                  type = "string",
                },
                responseValueRenderOption = {
                  description = "Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.",
                  enum = {
                    "FORMATTED_VALUE",
                    "UNFORMATTED_VALUE",
                    "FORMULA",
                  },
                  enumDescriptions = {
                    "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
                    "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
                    "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
                  },
                  location = "query",
                  type = "string",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                valueInputOption = {
                  description = "How the input data should be interpreted.",
                  enum = {
                    "INPUT_VALUE_OPTION_UNSPECIFIED",
                    "RAW",
                    "USER_ENTERED",
                  },
                  enumDescriptions = {
                    "Default input value. This value must not be used.",
                    "The values the user has entered will not be parsed and will be stored as-is.",
                    "The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values/{range}:append",
              request = {
                ["$ref"] = "ValueRange",
              },
              response = {
                ["$ref"] = "AppendValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            batchClear = {
              description = "Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges. Only values are cleared -- all other properties of the cell (such as formatting and data validation) are kept.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchClear",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.batchClear",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchClear",
              request = {
                ["$ref"] = "BatchClearValuesRequest",
              },
              response = {
                ["$ref"] = "BatchClearValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            batchClearByDataFilter = {
              description = "Clears one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges matching any of the specified data filters will be cleared. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchClearByDataFilter",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.batchClearByDataFilter",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchClearByDataFilter",
              request = {
                ["$ref"] = "BatchClearValuesByDataFilterRequest",
              },
              response = {
                ["$ref"] = "BatchClearValuesByDataFilterResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            batchGet = {
              description = "Returns one or more ranges of values from a spreadsheet. The caller must specify the spreadsheet ID and one or more ranges.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchGet",
              httpMethod = "GET",
              id = "sheets.spreadsheets.values.batchGet",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                dateTimeRenderOption = {
                  description = "How dates, times, and durations should be represented in the output. This is ignored if value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
                  enum = {
                    "SERIAL_NUMBER",
                    "FORMATTED_STRING",
                  },
                  enumDescriptions = {
                    "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
                    "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
                  },
                  location = "query",
                  type = "string",
                },
                majorDimension = {
                  description = "The major dimension that results should use. For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then requesting `ranges=[\"A1:B2\"],majorDimension=ROWS` returns `[[1,2],[3,4]]`, whereas requesting `ranges=[\"A1:B2\"],majorDimension=COLUMNS` returns `[[1,3],[2,4]]`.",
                  enum = {
                    "DIMENSION_UNSPECIFIED",
                    "ROWS",
                    "COLUMNS",
                  },
                  enumDescriptions = {
                    "The default value, do not use.",
                    "Operates on the rows of a sheet.",
                    "Operates on the columns of a sheet.",
                  },
                  location = "query",
                  type = "string",
                },
                ranges = {
                  description = "The [A1 notation or R1C1 notation](/sheets/api/guides/concepts#cell) of the range to retrieve values from.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to retrieve data from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                valueRenderOption = {
                  description = "How values should be represented in the output. The default render option is ValueRenderOption.FORMATTED_VALUE.",
                  enum = {
                    "FORMATTED_VALUE",
                    "UNFORMATTED_VALUE",
                    "FORMULA",
                  },
                  enumDescriptions = {
                    "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
                    "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
                    "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchGet",
              response = {
                ["$ref"] = "BatchGetValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/spreadsheets",
                "https://www.googleapis.com/auth/spreadsheets.readonly",
              },
            },
            batchGetByDataFilter = {
              description = "Returns one or more ranges of values that match the specified data filters. The caller must specify the spreadsheet ID and one or more DataFilters. Ranges that match any of the data filters in the request will be returned.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchGetByDataFilter",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.batchGetByDataFilter",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to retrieve data from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchGetByDataFilter",
              request = {
                ["$ref"] = "BatchGetValuesByDataFilterRequest",
              },
              response = {
                ["$ref"] = "BatchGetValuesByDataFilterResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            batchUpdate = {
              description = "Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more ValueRanges.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchUpdate",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.batchUpdate",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchUpdate",
              request = {
                ["$ref"] = "BatchUpdateValuesRequest",
              },
              response = {
                ["$ref"] = "BatchUpdateValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            batchUpdateByDataFilter = {
              description = "Sets values in one or more ranges of a spreadsheet. The caller must specify the spreadsheet ID, a valueInputOption, and one or more DataFilterValueRanges.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values:batchUpdateByDataFilter",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.batchUpdateByDataFilter",
              parameterOrder = {
                "spreadsheetId",
              },
              parameters = {
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values:batchUpdateByDataFilter",
              request = {
                ["$ref"] = "BatchUpdateValuesByDataFilterRequest",
              },
              response = {
                ["$ref"] = "BatchUpdateValuesByDataFilterResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            clear = {
              description = "Clears values from a spreadsheet. The caller must specify the spreadsheet ID and range. Only values are cleared -- all other properties of the cell (such as formatting, data validation, etc..) are kept.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values/{range}:clear",
              httpMethod = "POST",
              id = "sheets.spreadsheets.values.clear",
              parameterOrder = {
                "spreadsheetId",
                "range",
              },
              parameters = {
                range = {
                  description = "The [A1 notation or R1C1 notation](/sheets/api/guides/concepts#cell) of the values to clear.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values/{range}:clear",
              request = {
                ["$ref"] = "ClearValuesRequest",
              },
              response = {
                ["$ref"] = "ClearValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
            get = {
              description = "Returns a range of values from a spreadsheet. The caller must specify the spreadsheet ID and a range.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values/{range}",
              httpMethod = "GET",
              id = "sheets.spreadsheets.values.get",
              parameterOrder = {
                "spreadsheetId",
                "range",
              },
              parameters = {
                dateTimeRenderOption = {
                  description = "How dates, times, and durations should be represented in the output. This is ignored if value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
                  enum = {
                    "SERIAL_NUMBER",
                    "FORMATTED_STRING",
                  },
                  enumDescriptions = {
                    "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
                    "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
                  },
                  location = "query",
                  type = "string",
                },
                majorDimension = {
                  description = "The major dimension that results should use. For example, if the spreadsheet data in Sheet1 is: `A1=1,B1=2,A2=3,B2=4`, then requesting `range=Sheet1!A1:B2?majorDimension=ROWS` returns `[[1,2],[3,4]]`, whereas requesting `range=Sheet1!A1:B2?majorDimension=COLUMNS` returns `[[1,3],[2,4]]`.",
                  enum = {
                    "DIMENSION_UNSPECIFIED",
                    "ROWS",
                    "COLUMNS",
                  },
                  enumDescriptions = {
                    "The default value, do not use.",
                    "Operates on the rows of a sheet.",
                    "Operates on the columns of a sheet.",
                  },
                  location = "query",
                  type = "string",
                },
                range = {
                  description = "The [A1 notation or R1C1 notation](/sheets/api/guides/concepts#cell) of the range to retrieve values from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to retrieve data from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                valueRenderOption = {
                  description = "How values should be represented in the output. The default render option is FORMATTED_VALUE.",
                  enum = {
                    "FORMATTED_VALUE",
                    "UNFORMATTED_VALUE",
                    "FORMULA",
                  },
                  enumDescriptions = {
                    "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
                    "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
                    "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values/{range}",
              response = {
                ["$ref"] = "ValueRange",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/spreadsheets",
                "https://www.googleapis.com/auth/spreadsheets.readonly",
              },
            },
            update = {
              description = "Sets values in a range of a spreadsheet. The caller must specify the spreadsheet ID, range, and a valueInputOption.",
              flatPath = "v4/spreadsheets/{spreadsheetId}/values/{range}",
              httpMethod = "PUT",
              id = "sheets.spreadsheets.values.update",
              parameterOrder = {
                "spreadsheetId",
                "range",
              },
              parameters = {
                includeValuesInResponse = {
                  description = "Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).",
                  location = "query",
                  type = "boolean",
                },
                range = {
                  description = "The [A1 notation](/sheets/api/guides/concepts#cell) of the values to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                responseDateTimeRenderOption = {
                  description = "Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
                  enum = {
                    "SERIAL_NUMBER",
                    "FORMATTED_STRING",
                  },
                  enumDescriptions = {
                    "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
                    "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
                  },
                  location = "query",
                  type = "string",
                },
                responseValueRenderOption = {
                  description = "Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.",
                  enum = {
                    "FORMATTED_VALUE",
                    "UNFORMATTED_VALUE",
                    "FORMULA",
                  },
                  enumDescriptions = {
                    "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
                    "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
                    "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
                  },
                  location = "query",
                  type = "string",
                },
                spreadsheetId = {
                  description = "The ID of the spreadsheet to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                valueInputOption = {
                  description = "How the input data should be interpreted.",
                  enum = {
                    "INPUT_VALUE_OPTION_UNSPECIFIED",
                    "RAW",
                    "USER_ENTERED",
                  },
                  enumDescriptions = {
                    "Default input value. This value must not be used.",
                    "The values the user has entered will not be parsed and will be stored as-is.",
                    "The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v4/spreadsheets/{spreadsheetId}/values/{range}",
              request = {
                ["$ref"] = "ValueRange",
              },
              response = {
                ["$ref"] = "UpdateValuesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/spreadsheets",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://sheets.googleapis.com/",
  schemas = {
    AddBandingRequest = {
      description = "Adds a new banded range to the spreadsheet.",
      id = "AddBandingRequest",
      properties = {
        bandedRange = {
          ["$ref"] = "BandedRange",
          description = "The banded range to add. The bandedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)",
        },
      },
      type = "object",
    },
    AddBandingResponse = {
      description = "The result of adding a banded range.",
      id = "AddBandingResponse",
      properties = {
        bandedRange = {
          ["$ref"] = "BandedRange",
          description = "The banded range that was added.",
        },
      },
      type = "object",
    },
    AddChartRequest = {
      description = "Adds a chart to a sheet in the spreadsheet.",
      id = "AddChartRequest",
      properties = {
        chart = {
          ["$ref"] = "EmbeddedChart",
          description = "The chart that should be added to the spreadsheet, including the position where it should be placed. The chartId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of an embedded object that already exists.)",
        },
      },
      type = "object",
    },
    AddChartResponse = {
      description = "The result of adding a chart to a spreadsheet.",
      id = "AddChartResponse",
      properties = {
        chart = {
          ["$ref"] = "EmbeddedChart",
          description = "The newly added chart.",
        },
      },
      type = "object",
    },
    AddConditionalFormatRuleRequest = {
      description = "Adds a new conditional format rule at the given index. All subsequent rules' indexes are incremented.",
      id = "AddConditionalFormatRuleRequest",
      properties = {
        index = {
          description = "The zero-based index where the rule should be inserted.",
          format = "int32",
          type = "integer",
        },
        rule = {
          ["$ref"] = "ConditionalFormatRule",
          description = "The rule to add.",
        },
      },
      type = "object",
    },
    AddDataSourceRequest = {
      description = "Adds a data source. After the data source is added successfully, an associated DATA_SOURCE sheet is created and an execution is triggered to refresh the sheet to read data from the data source. The request requires an additional `bigquery.readonly` OAuth scope.",
      id = "AddDataSourceRequest",
      properties = {
        dataSource = {
          ["$ref"] = "DataSource",
          description = "The data source to add.",
        },
      },
      type = "object",
    },
    AddDataSourceResponse = {
      description = "The result of adding a data source.",
      id = "AddDataSourceResponse",
      properties = {
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "The data execution status.",
        },
        dataSource = {
          ["$ref"] = "DataSource",
          description = "The data source that was created.",
        },
      },
      type = "object",
    },
    AddDimensionGroupRequest = {
      description = "Creates a group over the specified range. If the requested range is a superset of the range of an existing group G, then the depth of G is incremented and this new group G' has the depth of that group. For example, a group [C:D, depth 1] + [B:E] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range is a subset of the range of an existing group G, then the depth of the new group G' becomes one greater than the depth of G. For example, a group [B:E, depth 1] + [C:D] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range starts before and ends within, or starts within and ends after, the range of an existing group G, then the range of the existing group G becomes the union of the ranges, and the new group G' has depth one greater than the depth of G and range as the intersection of the ranges. For example, a group [B:D, depth 1] + [C:E] results in groups [B:E, depth 1] and [C:D, depth 2].",
      id = "AddDimensionGroupRequest",
      properties = {
        range = {
          ["$ref"] = "DimensionRange",
          description = "The range over which to create a group.",
        },
      },
      type = "object",
    },
    AddDimensionGroupResponse = {
      description = "The result of adding a group.",
      id = "AddDimensionGroupResponse",
      properties = {
        dimensionGroups = {
          description = "All groups of a dimension after adding a group to that dimension.",
          items = {
            ["$ref"] = "DimensionGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddFilterViewRequest = {
      description = "Adds a filter view.",
      id = "AddFilterViewRequest",
      properties = {
        filter = {
          ["$ref"] = "FilterView",
          description = "The filter to add. The filterViewId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a filter that already exists.)",
        },
      },
      type = "object",
    },
    AddFilterViewResponse = {
      description = "The result of adding a filter view.",
      id = "AddFilterViewResponse",
      properties = {
        filter = {
          ["$ref"] = "FilterView",
          description = "The newly added filter view.",
        },
      },
      type = "object",
    },
    AddNamedRangeRequest = {
      description = "Adds a named range to the spreadsheet.",
      id = "AddNamedRangeRequest",
      properties = {
        namedRange = {
          ["$ref"] = "NamedRange",
          description = "The named range to add. The namedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)",
        },
      },
      type = "object",
    },
    AddNamedRangeResponse = {
      description = "The result of adding a named range.",
      id = "AddNamedRangeResponse",
      properties = {
        namedRange = {
          ["$ref"] = "NamedRange",
          description = "The named range to add.",
        },
      },
      type = "object",
    },
    AddProtectedRangeRequest = {
      description = "Adds a new protected range.",
      id = "AddProtectedRangeRequest",
      properties = {
        protectedRange = {
          ["$ref"] = "ProtectedRange",
          description = "The protected range to be added. The protectedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)",
        },
      },
      type = "object",
    },
    AddProtectedRangeResponse = {
      description = "The result of adding a new protected range.",
      id = "AddProtectedRangeResponse",
      properties = {
        protectedRange = {
          ["$ref"] = "ProtectedRange",
          description = "The newly added protected range.",
        },
      },
      type = "object",
    },
    AddSheetRequest = {
      description = "Adds a new sheet. When a sheet is added at a given index, all subsequent sheets' indexes are incremented. To add an object sheet, use AddChartRequest instead and specify EmbeddedObjectPosition.sheetId or EmbeddedObjectPosition.newSheet.",
      id = "AddSheetRequest",
      properties = {
        properties = {
          ["$ref"] = "SheetProperties",
          description = "The properties the new sheet should have. All properties are optional. The sheetId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a sheet that already exists.)",
        },
      },
      type = "object",
    },
    AddSheetResponse = {
      description = "The result of adding a sheet.",
      id = "AddSheetResponse",
      properties = {
        properties = {
          ["$ref"] = "SheetProperties",
          description = "The properties of the newly added sheet.",
        },
      },
      type = "object",
    },
    AddSlicerRequest = {
      description = "Adds a slicer to a sheet in the spreadsheet.",
      id = "AddSlicerRequest",
      properties = {
        slicer = {
          ["$ref"] = "Slicer",
          description = "The slicer that should be added to the spreadsheet, including the position where it should be placed. The slicerId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a slicer that already exists.)",
        },
      },
      type = "object",
    },
    AddSlicerResponse = {
      description = "The result of adding a slicer to a spreadsheet.",
      id = "AddSlicerResponse",
      properties = {
        slicer = {
          ["$ref"] = "Slicer",
          description = "The newly added slicer.",
        },
      },
      type = "object",
    },
    AppendCellsRequest = {
      description = "Adds new cells after the last row with data in a sheet, inserting new rows into the sheet if necessary.",
      id = "AppendCellsRequest",
      properties = {
        fields = {
          description = "The fields of CellData that should be updated. At least one field must be specified. The root is the CellData; 'row.values.' should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        rows = {
          description = "The data to append.",
          items = {
            ["$ref"] = "RowData",
          },
          type = "array",
        },
        sheetId = {
          description = "The sheet ID to append the data to.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppendDimensionRequest = {
      description = "Appends rows or columns to the end of a sheet.",
      id = "AppendDimensionRequest",
      properties = {
        dimension = {
          description = "Whether rows or columns should be appended.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        length = {
          description = "The number of rows or columns to append.",
          format = "int32",
          type = "integer",
        },
        sheetId = {
          description = "The sheet to append rows or columns to.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AppendValuesResponse = {
      description = "The response when updating a range of values in a spreadsheet.",
      id = "AppendValuesResponse",
      properties = {
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
        tableRange = {
          description = "The range (in A1 notation) of the table that values are being appended to (before the values were appended). Empty if no table was found.",
          type = "string",
        },
        updates = {
          ["$ref"] = "UpdateValuesResponse",
          description = "Information about the updates that were applied.",
        },
      },
      type = "object",
    },
    AutoFillRequest = {
      description = "Fills in more data based on existing data.",
      id = "AutoFillRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range to autofill. This will examine the range and detect the location that has data and automatically fill that data in to the rest of the range.",
        },
        sourceAndDestination = {
          ["$ref"] = "SourceAndDestination",
          description = "The source and destination areas to autofill. This explicitly lists the source of the autofill and where to extend that data.",
        },
        useAlternateSeries = {
          description = "True if we should generate data with the \"alternate\" series. This differs based on the type and amount of source data.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AutoResizeDimensionsRequest = {
      description = "Automatically resizes one or more dimensions based on the contents of the cells in that dimension.",
      id = "AutoResizeDimensionsRequest",
      properties = {
        dataSourceSheetDimensions = {
          ["$ref"] = "DataSourceSheetDimensionRange",
          description = "The dimensions on a data source sheet to automatically resize.",
        },
        dimensions = {
          ["$ref"] = "DimensionRange",
          description = "The dimensions to automatically resize.",
        },
      },
      type = "object",
    },
    BandedRange = {
      description = "A banded (alternating colors) range in a sheet.",
      id = "BandedRange",
      properties = {
        bandedRangeId = {
          description = "The id of the banded range.",
          format = "int32",
          type = "integer",
        },
        columnProperties = {
          ["$ref"] = "BandingProperties",
          description = "Properties for column bands. These properties are applied on a column- by-column basis throughout all the columns in the range. At least one of row_properties or column_properties must be specified.",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range over which these properties are applied.",
        },
        rowProperties = {
          ["$ref"] = "BandingProperties",
          description = "Properties for row bands. These properties are applied on a row-by-row basis throughout all the rows in the range. At least one of row_properties or column_properties must be specified.",
        },
      },
      type = "object",
    },
    BandingProperties = {
      description = "Properties referring a single dimension (either row or column). If both BandedRange.row_properties and BandedRange.column_properties are set, the fill colors are applied to cells according to the following rules: * header_color and footer_color take priority over band colors. * first_band_color takes priority over second_band_color. * row_properties takes priority over column_properties. For example, the first row color takes priority over the first column color, but the first column color takes priority over the second row color. Similarly, the row header takes priority over the column header in the top left cell, but the column header takes priority over the first row color if the row header is not set.",
      id = "BandingProperties",
      properties = {
        firstBandColor = {
          ["$ref"] = "Color",
          description = "The first color that is alternating. (Required) Deprecated: Use first_band_color_style.",
        },
        firstBandColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The first color that is alternating. (Required) If first_band_color is also set, this field takes precedence.",
        },
        footerColor = {
          ["$ref"] = "Color",
          description = "The color of the last row or column. If this field is not set, the last row or column is filled with either first_band_color or second_band_color, depending on the color of the previous row or column. Deprecated: Use footer_color_style.",
        },
        footerColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the last row or column. If this field is not set, the last row or column is filled with either first_band_color or second_band_color, depending on the color of the previous row or column. If footer_color is also set, this field takes precedence.",
        },
        headerColor = {
          ["$ref"] = "Color",
          description = "The color of the first row or column. If this field is set, the first row or column is filled with this color and the colors alternate between first_band_color and second_band_color starting from the second row or column. Otherwise, the first row or column is filled with first_band_color and the colors proceed to alternate as they normally would. Deprecated: Use header_color_style.",
        },
        headerColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the first row or column. If this field is set, the first row or column is filled with this color and the colors alternate between first_band_color and second_band_color starting from the second row or column. Otherwise, the first row or column is filled with first_band_color and the colors proceed to alternate as they normally would. If header_color is also set, this field takes precedence.",
        },
        secondBandColor = {
          ["$ref"] = "Color",
          description = "The second color that is alternating. (Required) Deprecated: Use second_band_color_style.",
        },
        secondBandColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The second color that is alternating. (Required) If second_band_color is also set, this field takes precedence.",
        },
      },
      type = "object",
    },
    BaselineValueFormat = {
      description = "Formatting options for baseline value.",
      id = "BaselineValueFormat",
      properties = {
        comparisonType = {
          description = "The comparison type of key value with baseline value.",
          enum = {
            "COMPARISON_TYPE_UNDEFINED",
            "ABSOLUTE_DIFFERENCE",
            "PERCENTAGE_DIFFERENCE",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Use absolute difference between key and baseline value.",
            "Use percentage difference between key and baseline value.",
          },
          type = "string",
        },
        description = {
          description = "Description which is appended after the baseline value. This field is optional.",
          type = "string",
        },
        negativeColor = {
          ["$ref"] = "Color",
          description = "Color to be used, in case baseline value represents a negative change for key value. This field is optional. Deprecated: Use negative_color_style.",
        },
        negativeColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "Color to be used, in case baseline value represents a negative change for key value. This field is optional. If negative_color is also set, this field takes precedence.",
        },
        position = {
          ["$ref"] = "TextPosition",
          description = "Specifies the horizontal text positioning of baseline value. This field is optional. If not specified, default positioning is used.",
        },
        positiveColor = {
          ["$ref"] = "Color",
          description = "Color to be used, in case baseline value represents a positive change for key value. This field is optional. Deprecated: Use positive_color_style.",
        },
        positiveColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "Color to be used, in case baseline value represents a positive change for key value. This field is optional. If positive_color is also set, this field takes precedence.",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "Text formatting options for baseline value. The link field is not supported.",
        },
      },
      type = "object",
    },
    BasicChartAxis = {
      description = "An axis of the chart. A chart may not have more than one axis per axis position.",
      id = "BasicChartAxis",
      properties = {
        format = {
          ["$ref"] = "TextFormat",
          description = "The format of the title. Only valid if the axis is not associated with the domain. The link field is not supported.",
        },
        position = {
          description = "The position of this axis.",
          enum = {
            "BASIC_CHART_AXIS_POSITION_UNSPECIFIED",
            "BOTTOM_AXIS",
            "LEFT_AXIS",
            "RIGHT_AXIS",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The axis rendered at the bottom of a chart. For most charts, this is the standard major axis. For bar charts, this is a minor axis.",
            "The axis rendered at the left of a chart. For most charts, this is a minor axis. For bar charts, this is the standard major axis.",
            "The axis rendered at the right of a chart. For most charts, this is a minor axis. For bar charts, this is an unusual major axis.",
          },
          type = "string",
        },
        title = {
          description = "The title of this axis. If set, this overrides any title inferred from headers of the data.",
          type = "string",
        },
        titleTextPosition = {
          ["$ref"] = "TextPosition",
          description = "The axis title text position.",
        },
        viewWindowOptions = {
          ["$ref"] = "ChartAxisViewWindowOptions",
          description = "The view window options for this axis.",
        },
      },
      type = "object",
    },
    BasicChartDomain = {
      description = "The domain of a chart. For example, if charting stock prices over time, this would be the date.",
      id = "BasicChartDomain",
      properties = {
        domain = {
          ["$ref"] = "ChartData",
          description = "The data of the domain. For example, if charting stock prices over time, this is the data representing the dates.",
        },
        reversed = {
          description = "True to reverse the order of the domain values (horizontal axis).",
          type = "boolean",
        },
      },
      type = "object",
    },
    BasicChartSeries = {
      description = "A single series of data in a chart. For example, if charting stock prices over time, multiple series may exist, one for the \"Open Price\", \"High Price\", \"Low Price\" and \"Close Price\".",
      id = "BasicChartSeries",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "The color for elements (such as bars, lines, and points) associated with this series. If empty, a default color is used. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color for elements (such as bars, lines, and points) associated with this series. If empty, a default color is used. If color is also set, this field takes precedence.",
        },
        dataLabel = {
          ["$ref"] = "DataLabel",
          description = "Information about the data labels for this series.",
        },
        lineStyle = {
          ["$ref"] = "LineStyle",
          description = "The line style of this series. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA or LINE.",
        },
        pointStyle = {
          ["$ref"] = "PointStyle",
          description = "The style for points associated with this series. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA, LINE, or SCATTER. If empty, a default point style is used.",
        },
        series = {
          ["$ref"] = "ChartData",
          description = "The data being visualized in this chart series.",
        },
        styleOverrides = {
          description = "Style override settings for series data points.",
          items = {
            ["$ref"] = "BasicSeriesDataPointStyleOverride",
          },
          type = "array",
        },
        targetAxis = {
          description = "The minor axis that will specify the range of values for this series. For example, if charting stocks over time, the \"Volume\" series may want to be pinned to the right with the prices pinned to the left, because the scale of trading volume is different than the scale of prices. It is an error to specify an axis that isn't a valid minor axis for the chart's type.",
          enum = {
            "BASIC_CHART_AXIS_POSITION_UNSPECIFIED",
            "BOTTOM_AXIS",
            "LEFT_AXIS",
            "RIGHT_AXIS",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The axis rendered at the bottom of a chart. For most charts, this is the standard major axis. For bar charts, this is a minor axis.",
            "The axis rendered at the left of a chart. For most charts, this is a minor axis. For bar charts, this is the standard major axis.",
            "The axis rendered at the right of a chart. For most charts, this is a minor axis. For bar charts, this is an unusual major axis.",
          },
          type = "string",
        },
        type = {
          description = "The type of this series. Valid only if the chartType is COMBO. Different types will change the way the series is visualized. Only LINE, AREA, and COLUMN are supported.",
          enum = {
            "BASIC_CHART_TYPE_UNSPECIFIED",
            "BAR",
            "LINE",
            "AREA",
            "COLUMN",
            "SCATTER",
            "COMBO",
            "STEPPED_AREA",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "A bar chart.",
            "A line chart.",
            "An area chart.",
            "A column chart.",
            "A scatter chart.",
            "A combo chart.",
            "A stepped area chart.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BasicChartSpec = {
      description = "The specification for a basic chart. See BasicChartType for the list of charts this supports.",
      id = "BasicChartSpec",
      properties = {
        axis = {
          description = "The axis on the chart.",
          items = {
            ["$ref"] = "BasicChartAxis",
          },
          type = "array",
        },
        chartType = {
          description = "The type of the chart.",
          enum = {
            "BASIC_CHART_TYPE_UNSPECIFIED",
            "BAR",
            "LINE",
            "AREA",
            "COLUMN",
            "SCATTER",
            "COMBO",
            "STEPPED_AREA",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "A bar chart.",
            "A line chart.",
            "An area chart.",
            "A column chart.",
            "A scatter chart.",
            "A combo chart.",
            "A stepped area chart.",
          },
          type = "string",
        },
        compareMode = {
          description = "The behavior of tooltips and data highlighting when hovering on data and chart area.",
          enum = {
            "BASIC_CHART_COMPARE_MODE_UNSPECIFIED",
            "DATUM",
            "CATEGORY",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Only the focused data element is highlighted and shown in the tooltip.",
            "All data elements with the same category (e.g., domain value) are highlighted and shown in the tooltip.",
          },
          type = "string",
        },
        domains = {
          description = "The domain of data this is charting. Only a single domain is supported.",
          items = {
            ["$ref"] = "BasicChartDomain",
          },
          type = "array",
        },
        headerCount = {
          description = "The number of rows or columns in the data that are \"headers\". If not set, Google Sheets will guess how many rows are headers based on the data. (Note that BasicChartAxis.title may override the axis title inferred from the header values.)",
          format = "int32",
          type = "integer",
        },
        interpolateNulls = {
          description = "If some values in a series are missing, gaps may appear in the chart (e.g, segments of lines in a line chart will be missing). To eliminate these gaps set this to true. Applies to Line, Area, and Combo charts.",
          type = "boolean",
        },
        legendPosition = {
          description = "The position of the chart legend.",
          enum = {
            "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED",
            "BOTTOM_LEGEND",
            "LEFT_LEGEND",
            "RIGHT_LEGEND",
            "TOP_LEGEND",
            "NO_LEGEND",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The legend is rendered on the bottom of the chart.",
            "The legend is rendered on the left of the chart.",
            "The legend is rendered on the right of the chart.",
            "The legend is rendered on the top of the chart.",
            "No legend is rendered.",
          },
          type = "string",
        },
        lineSmoothing = {
          description = "Gets whether all lines should be rendered smooth or straight by default. Applies to Line charts.",
          type = "boolean",
        },
        series = {
          description = "The data this chart is visualizing.",
          items = {
            ["$ref"] = "BasicChartSeries",
          },
          type = "array",
        },
        stackedType = {
          description = "The stacked type for charts that support vertical stacking. Applies to Area, Bar, Column, Combo, and Stepped Area charts.",
          enum = {
            "BASIC_CHART_STACKED_TYPE_UNSPECIFIED",
            "NOT_STACKED",
            "STACKED",
            "PERCENT_STACKED",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Series are not stacked.",
            "Series values are stacked, each value is rendered vertically beginning from the top of the value below it.",
            "Vertical stacks are stretched to reach the top of the chart, with values laid out as percentages of each other.",
          },
          type = "string",
        },
        threeDimensional = {
          description = "True to make the chart 3D. Applies to Bar and Column charts.",
          type = "boolean",
        },
        totalDataLabel = {
          ["$ref"] = "DataLabel",
          description = "Controls whether to display additional data labels on stacked charts which sum the total value of all stacked values at each value along the domain axis. These data labels can only be set when chart_type is one of AREA, BAR, COLUMN, COMBO or STEPPED_AREA and stacked_type is either STACKED or PERCENT_STACKED. In addition, for COMBO, this will only be supported if there is only one type of stackable series type or one type has more series than the others and each of the other types have no more than one series. For example, if a chart has two stacked bar series and one area series, the total data labels will be supported. If it has three bar series and two area series, total data labels are not allowed. Neither CUSTOM nor placement can be set on the total_data_label.",
        },
      },
      type = "object",
    },
    BasicFilter = {
      description = "The default filter associated with a sheet.",
      id = "BasicFilter",
      properties = {
        criteria = {
          additionalProperties = {
            ["$ref"] = "FilterCriteria",
          },
          description = "The criteria for showing/hiding values per column. The map's key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.",
          type = "object",
        },
        filterSpecs = {
          description = "The filter criteria per column. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.",
          items = {
            ["$ref"] = "FilterSpec",
          },
          type = "array",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range the filter covers.",
        },
        sortSpecs = {
          description = "The sort order per column. Later specifications are used when values are equal in the earlier specifications.",
          items = {
            ["$ref"] = "SortSpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BasicSeriesDataPointStyleOverride = {
      description = "Style override settings for a single series data point.",
      id = "BasicSeriesDataPointStyleOverride",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "Color of the series data point. If empty, the series default is used. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "Color of the series data point. If empty, the series default is used. If color is also set, this field takes precedence.",
        },
        index = {
          description = "Zero based index of the series data point.",
          format = "int32",
          type = "integer",
        },
        pointStyle = {
          ["$ref"] = "PointStyle",
          description = "Point style of the series data point. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA, LINE, or SCATTER. If empty, the series default is used.",
        },
      },
      type = "object",
    },
    BatchClearValuesByDataFilterRequest = {
      description = "The request for clearing more than one range selected by a DataFilter in a spreadsheet.",
      id = "BatchClearValuesByDataFilterRequest",
      properties = {
        dataFilters = {
          description = "The DataFilters used to determine which ranges to clear.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchClearValuesByDataFilterResponse = {
      description = "The response when clearing a range of values selected with DataFilters in a spreadsheet.",
      id = "BatchClearValuesByDataFilterResponse",
      properties = {
        clearedRanges = {
          description = "The ranges that were cleared, in [A1 notation](/sheets/api/guides/concepts#cell). If the requests are for an unbounded range or a ranger larger than the bounds of the sheet, this is the actual ranges that were cleared, bounded to the sheet's limits.",
          items = {
            type = "string",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
      },
      type = "object",
    },
    BatchClearValuesRequest = {
      description = "The request for clearing more than one range of values in a spreadsheet.",
      id = "BatchClearValuesRequest",
      properties = {
        ranges = {
          description = "The ranges to clear, in [A1 notation or R1C1 notation](/sheets/api/guides/concepts#cell).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchClearValuesResponse = {
      description = "The response when clearing a range of values in a spreadsheet.",
      id = "BatchClearValuesResponse",
      properties = {
        clearedRanges = {
          description = "The ranges that were cleared, in A1 notation. If the requests are for an unbounded range or a ranger larger than the bounds of the sheet, this is the actual ranges that were cleared, bounded to the sheet's limits.",
          items = {
            type = "string",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
      },
      type = "object",
    },
    BatchGetValuesByDataFilterRequest = {
      description = "The request for retrieving a range of values in a spreadsheet selected by a set of DataFilters.",
      id = "BatchGetValuesByDataFilterRequest",
      properties = {
        dataFilters = {
          description = "The data filters used to match the ranges of values to retrieve. Ranges that match any of the specified data filters are included in the response.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
        dateTimeRenderOption = {
          description = "How dates, times, and durations should be represented in the output. This is ignored if value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
          enum = {
            "SERIAL_NUMBER",
            "FORMATTED_STRING",
          },
          enumDescriptions = {
            "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
            "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
          },
          type = "string",
        },
        majorDimension = {
          description = "The major dimension that results should use. For example, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then a request that selects that range and sets `majorDimension=ROWS` returns `[[1,2],[3,4]]`, whereas a request that sets `majorDimension=COLUMNS` returns `[[1,3],[2,4]]`.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        valueRenderOption = {
          description = "How values should be represented in the output. The default render option is FORMATTED_VALUE.",
          enum = {
            "FORMATTED_VALUE",
            "UNFORMATTED_VALUE",
            "FORMULA",
          },
          enumDescriptions = {
            "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
            "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
            "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BatchGetValuesByDataFilterResponse = {
      description = "The response when retrieving more than one range of values in a spreadsheet selected by DataFilters.",
      id = "BatchGetValuesByDataFilterResponse",
      properties = {
        spreadsheetId = {
          description = "The ID of the spreadsheet the data was retrieved from.",
          type = "string",
        },
        valueRanges = {
          description = "The requested values with the list of data filters that matched them.",
          items = {
            ["$ref"] = "MatchedValueRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchGetValuesResponse = {
      description = "The response when retrieving more than one range of values in a spreadsheet.",
      id = "BatchGetValuesResponse",
      properties = {
        spreadsheetId = {
          description = "The ID of the spreadsheet the data was retrieved from.",
          type = "string",
        },
        valueRanges = {
          description = "The requested values. The order of the ValueRanges is the same as the order of the requested ranges.",
          items = {
            ["$ref"] = "ValueRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdateSpreadsheetRequest = {
      description = "The request for updating any aspect of a spreadsheet.",
      id = "BatchUpdateSpreadsheetRequest",
      properties = {
        includeSpreadsheetInResponse = {
          description = "Determines if the update response should include the spreadsheet resource.",
          type = "boolean",
        },
        requests = {
          description = "A list of updates to apply to the spreadsheet. Requests will be applied in the order they are specified. If any request is not valid, no requests will be applied.",
          items = {
            ["$ref"] = "Request",
          },
          type = "array",
        },
        responseIncludeGridData = {
          description = "True if grid data should be returned. Meaningful only if include_spreadsheet_in_response is 'true'. This parameter is ignored if a field mask was set in the request.",
          type = "boolean",
        },
        responseRanges = {
          description = "Limits the ranges included in the response spreadsheet. Meaningful only if include_spreadsheet_in_response is 'true'.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdateSpreadsheetResponse = {
      description = "The reply for batch updating a spreadsheet.",
      id = "BatchUpdateSpreadsheetResponse",
      properties = {
        replies = {
          description = "The reply of the updates. This maps 1:1 with the updates, although replies to some requests may be empty.",
          items = {
            ["$ref"] = "Response",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
        updatedSpreadsheet = {
          ["$ref"] = "Spreadsheet",
          description = "The spreadsheet after updates were applied. This is only set if BatchUpdateSpreadsheetRequest.include_spreadsheet_in_response is `true`.",
        },
      },
      type = "object",
    },
    BatchUpdateValuesByDataFilterRequest = {
      description = "The request for updating more than one range of values in a spreadsheet.",
      id = "BatchUpdateValuesByDataFilterRequest",
      properties = {
        data = {
          description = "The new values to apply to the spreadsheet. If more than one range is matched by the specified DataFilter the specified values are applied to all of those ranges.",
          items = {
            ["$ref"] = "DataFilterValueRange",
          },
          type = "array",
        },
        includeValuesInResponse = {
          description = "Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The `updatedData` field within each of the BatchUpdateValuesResponse.responses contains the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).",
          type = "boolean",
        },
        responseDateTimeRenderOption = {
          description = "Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
          enum = {
            "SERIAL_NUMBER",
            "FORMATTED_STRING",
          },
          enumDescriptions = {
            "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
            "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
          },
          type = "string",
        },
        responseValueRenderOption = {
          description = "Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.",
          enum = {
            "FORMATTED_VALUE",
            "UNFORMATTED_VALUE",
            "FORMULA",
          },
          enumDescriptions = {
            "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
            "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
            "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
          },
          type = "string",
        },
        valueInputOption = {
          description = "How the input data should be interpreted.",
          enum = {
            "INPUT_VALUE_OPTION_UNSPECIFIED",
            "RAW",
            "USER_ENTERED",
          },
          enumDescriptions = {
            "Default input value. This value must not be used.",
            "The values the user has entered will not be parsed and will be stored as-is.",
            "The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BatchUpdateValuesByDataFilterResponse = {
      description = "The response when updating a range of values in a spreadsheet.",
      id = "BatchUpdateValuesByDataFilterResponse",
      properties = {
        responses = {
          description = "The response for each range updated.",
          items = {
            ["$ref"] = "UpdateValuesByDataFilterResponse",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
        totalUpdatedCells = {
          description = "The total number of cells updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedColumns = {
          description = "The total number of columns where at least one cell in the column was updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedRows = {
          description = "The total number of rows where at least one cell in the row was updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedSheets = {
          description = "The total number of sheets where at least one cell in the sheet was updated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BatchUpdateValuesRequest = {
      description = "The request for updating more than one range of values in a spreadsheet.",
      id = "BatchUpdateValuesRequest",
      properties = {
        data = {
          description = "The new values to apply to the spreadsheet.",
          items = {
            ["$ref"] = "ValueRange",
          },
          type = "array",
        },
        includeValuesInResponse = {
          description = "Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The `updatedData` field within each of the BatchUpdateValuesResponse.responses contains the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).",
          type = "boolean",
        },
        responseDateTimeRenderOption = {
          description = "Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.",
          enum = {
            "SERIAL_NUMBER",
            "FORMATTED_STRING",
          },
          enumDescriptions = {
            "Instructs date, time, datetime, and duration fields to be output as doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The whole number portion of the value (left of the decimal) counts the days since December 30th 1899. The fractional portion (right of the decimal) counts the time as a fraction of the day. For example, January 1st 1900 at noon would be 2.5, 2 because it's 2 days after December 30th 1899, and .5 because noon is half a day. February 1st 1900 at 3pm would be 33.625. This correctly treats the year 1900 as not a leap year.",
            "Instructs date, time, datetime, and duration fields to be output as strings in their given number format (which depends on the spreadsheet locale).",
          },
          type = "string",
        },
        responseValueRenderOption = {
          description = "Determines how values in the response should be rendered. The default render option is FORMATTED_VALUE.",
          enum = {
            "FORMATTED_VALUE",
            "UNFORMATTED_VALUE",
            "FORMULA",
          },
          enumDescriptions = {
            "Values will be calculated & formatted in the reply according to the cell's formatting. Formatting is based on the spreadsheet's locale, not the requesting user's locale. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return `\"$1.23\"`.",
            "Values will be calculated, but not formatted in the reply. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then `A2` would return the number `1.23`.",
            "Values will not be calculated. The reply will include the formulas. For example, if `A1` is `1.23` and `A2` is `=A1` and formatted as currency, then A2 would return `\"=A1\"`.",
          },
          type = "string",
        },
        valueInputOption = {
          description = "How the input data should be interpreted.",
          enum = {
            "INPUT_VALUE_OPTION_UNSPECIFIED",
            "RAW",
            "USER_ENTERED",
          },
          enumDescriptions = {
            "Default input value. This value must not be used.",
            "The values the user has entered will not be parsed and will be stored as-is.",
            "The values will be parsed as if the user typed them into the UI. Numbers will stay as numbers, but strings may be converted to numbers, dates, etc. following the same rules that are applied when entering text into a cell via the Google Sheets UI.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BatchUpdateValuesResponse = {
      description = "The response when updating a range of values in a spreadsheet.",
      id = "BatchUpdateValuesResponse",
      properties = {
        responses = {
          description = "One UpdateValuesResponse per requested range, in the same order as the requests appeared.",
          items = {
            ["$ref"] = "UpdateValuesResponse",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
        totalUpdatedCells = {
          description = "The total number of cells updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedColumns = {
          description = "The total number of columns where at least one cell in the column was updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedRows = {
          description = "The total number of rows where at least one cell in the row was updated.",
          format = "int32",
          type = "integer",
        },
        totalUpdatedSheets = {
          description = "The total number of sheets where at least one cell in the sheet was updated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BigQueryDataSourceSpec = {
      description = "The specification of a BigQuery data source that's connected to a sheet.",
      id = "BigQueryDataSourceSpec",
      properties = {
        projectId = {
          description = "The ID of a BigQuery enabled GCP project with a billing account attached. For any queries executed against the data source, the project is charged.",
          type = "string",
        },
        querySpec = {
          ["$ref"] = "BigQueryQuerySpec",
          description = "A BigQueryQuerySpec.",
        },
        tableSpec = {
          ["$ref"] = "BigQueryTableSpec",
          description = "A BigQueryTableSpec.",
        },
      },
      type = "object",
    },
    BigQueryQuerySpec = {
      description = "Specifies a custom BigQuery query.",
      id = "BigQueryQuerySpec",
      properties = {
        rawQuery = {
          description = "The raw query string.",
          type = "string",
        },
      },
      type = "object",
    },
    BigQueryTableSpec = {
      description = "Specifies a BigQuery table definition. Only [native tables](https://cloud.google.com/bigquery/docs/tables-intro) is allowed.",
      id = "BigQueryTableSpec",
      properties = {
        datasetId = {
          description = "The BigQuery dataset id.",
          type = "string",
        },
        tableId = {
          description = "The BigQuery table id.",
          type = "string",
        },
        tableProjectId = {
          description = "The ID of a BigQuery project the table belongs to. If not specified, the project_id is assumed.",
          type = "string",
        },
      },
      type = "object",
    },
    BooleanCondition = {
      description = "A condition that can evaluate to true or false. BooleanConditions are used by conditional formatting, data validation, and the criteria in filters.",
      id = "BooleanCondition",
      properties = {
        type = {
          description = "The type of condition.",
          enum = {
            "CONDITION_TYPE_UNSPECIFIED",
            "NUMBER_GREATER",
            "NUMBER_GREATER_THAN_EQ",
            "NUMBER_LESS",
            "NUMBER_LESS_THAN_EQ",
            "NUMBER_EQ",
            "NUMBER_NOT_EQ",
            "NUMBER_BETWEEN",
            "NUMBER_NOT_BETWEEN",
            "TEXT_CONTAINS",
            "TEXT_NOT_CONTAINS",
            "TEXT_STARTS_WITH",
            "TEXT_ENDS_WITH",
            "TEXT_EQ",
            "TEXT_IS_EMAIL",
            "TEXT_IS_URL",
            "DATE_EQ",
            "DATE_BEFORE",
            "DATE_AFTER",
            "DATE_ON_OR_BEFORE",
            "DATE_ON_OR_AFTER",
            "DATE_BETWEEN",
            "DATE_NOT_BETWEEN",
            "DATE_IS_VALID",
            "ONE_OF_RANGE",
            "ONE_OF_LIST",
            "BLANK",
            "NOT_BLANK",
            "CUSTOM_FORMULA",
            "BOOLEAN",
            "TEXT_NOT_EQ",
            "DATE_NOT_EQ",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "The cell's value must be greater than the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must be greater than or equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must be less than the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must be less than or equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must be equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.",
            "The cell's value must be not equal to the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.",
            "The cell's value must be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues.",
            "The cell's value must not be between the two condition values. Supported by data validation, conditional formatting and filters. Requires exactly two ConditionValues.",
            "The cell's value must contain the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must not contain the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must start with the condition's value. Supported by conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must end with the condition's value. Supported by conditional formatting and filters. Requires a single ConditionValue.",
            "The cell's value must be exactly the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.",
            "The cell's value must be a valid email address. Supported by data validation. Requires no ConditionValues.",
            "The cell's value must be a valid URL. Supported by data validation. Requires no ConditionValues.",
            "The cell's value must be the same date as the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue for data validation, conditional formatting, and filters on non-data source objects and at least one ConditionValue for filters on data source objects.",
            "The cell's value must be before the date of the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date.",
            "The cell's value must be after the date of the condition's value. Supported by data validation, conditional formatting and filters. Requires a single ConditionValue that may be a relative date.",
            "The cell's value must be on or before the date of the condition's value. Supported by data validation. Requires a single ConditionValue that may be a relative date.",
            "The cell's value must be on or after the date of the condition's value. Supported by data validation. Requires a single ConditionValue that may be a relative date.",
            "The cell's value must be between the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues.",
            "The cell's value must be outside the dates of the two condition values. Supported by data validation. Requires exactly two ConditionValues.",
            "The cell's value must be a date. Supported by data validation. Requires no ConditionValues.",
            "The cell's value must be listed in the grid in condition value's range. Supported by data validation. Requires a single ConditionValue, and the value must be a valid range in A1 notation.",
            "The cell's value must be in the list of condition values. Supported by data validation. Supports any number of condition values, one per item in the list. Formulas are not supported in the values.",
            "The cell's value must be empty. Supported by conditional formatting and filters. Requires no ConditionValues.",
            "The cell's value must not be empty. Supported by conditional formatting and filters. Requires no ConditionValues.",
            "The condition's formula must evaluate to true. Supported by data validation, conditional formatting and filters. Not supported by data source sheet filters. Requires a single ConditionValue.",
            "The cell's value must be TRUE/FALSE or in the list of condition values. Supported by data validation. Renders as a cell checkbox. Supports zero, one or two ConditionValues. No values indicates the cell must be TRUE or FALSE, where TRUE renders as checked and FALSE renders as unchecked. One value indicates the cell will render as checked when it contains that value and unchecked when it is blank. Two values indicate that the cell will render as checked when it contains the first value and unchecked when it contains the second value. For example, [\"Yes\",\"No\"] indicates that the cell will render a checked box when it has the value \"Yes\" and an unchecked box when it has the value \"No\".",
            "The cell's value must be exactly not the condition's value. Supported by filters on data source objects. Requires at least one ConditionValue.",
            "The cell's value must be exactly not the condition's value. Supported by filters on data source objects. Requires at least one ConditionValue.",
          },
          type = "string",
        },
        values = {
          description = "The values of the condition. The number of supported values depends on the condition type. Some support zero values, others one or two values, and ConditionType.ONE_OF_LIST supports an arbitrary number of values.",
          items = {
            ["$ref"] = "ConditionValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BooleanRule = {
      description = "A rule that may or may not match, depending on the condition.",
      id = "BooleanRule",
      properties = {
        condition = {
          ["$ref"] = "BooleanCondition",
          description = "The condition of the rule. If the condition evaluates to true, the format is applied.",
        },
        format = {
          ["$ref"] = "CellFormat",
          description = "The format to apply. Conditional formatting can only apply a subset of formatting: bold, italic, strikethrough, foreground color & background color.",
        },
      },
      type = "object",
    },
    Border = {
      description = "A border along a cell.",
      id = "Border",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "The color of the border. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the border. If color is also set, this field takes precedence.",
        },
        style = {
          description = "The style of the border.",
          enum = {
            "STYLE_UNSPECIFIED",
            "DOTTED",
            "DASHED",
            "SOLID",
            "SOLID_MEDIUM",
            "SOLID_THICK",
            "NONE",
            "DOUBLE",
          },
          enumDescriptions = {
            "The style is not specified. Do not use this.",
            "The border is dotted.",
            "The border is dashed.",
            "The border is a thin solid line.",
            "The border is a medium solid line.",
            "The border is a thick solid line.",
            "No border. Used only when updating a border in order to erase it.",
            "The border is two solid lines.",
          },
          type = "string",
        },
        width = {
          description = "The width of the border, in pixels. Deprecated; the width is determined by the \"style\" field.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Borders = {
      description = "The borders of the cell.",
      id = "Borders",
      properties = {
        bottom = {
          ["$ref"] = "Border",
          description = "The bottom border of the cell.",
        },
        left = {
          ["$ref"] = "Border",
          description = "The left border of the cell.",
        },
        right = {
          ["$ref"] = "Border",
          description = "The right border of the cell.",
        },
        top = {
          ["$ref"] = "Border",
          description = "The top border of the cell.",
        },
      },
      type = "object",
    },
    BubbleChartSpec = {
      description = "A bubble chart.",
      id = "BubbleChartSpec",
      properties = {
        bubbleBorderColor = {
          ["$ref"] = "Color",
          description = "The bubble border color. Deprecated: Use bubble_border_color_style.",
        },
        bubbleBorderColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The bubble border color. If bubble_border_color is also set, this field takes precedence.",
        },
        bubbleLabels = {
          ["$ref"] = "ChartData",
          description = "The data containing the bubble labels. These do not need to be unique.",
        },
        bubbleMaxRadiusSize = {
          description = "The max radius size of the bubbles, in pixels. If specified, the field must be a positive value.",
          format = "int32",
          type = "integer",
        },
        bubbleMinRadiusSize = {
          description = "The minimum radius size of the bubbles, in pixels. If specific, the field must be a positive value.",
          format = "int32",
          type = "integer",
        },
        bubbleOpacity = {
          description = "The opacity of the bubbles between 0 and 1.0. 0 is fully transparent and 1 is fully opaque.",
          format = "float",
          type = "number",
        },
        bubbleSizes = {
          ["$ref"] = "ChartData",
          description = "The data containing the bubble sizes. Bubble sizes are used to draw the bubbles at different sizes relative to each other. If specified, group_ids must also be specified. This field is optional.",
        },
        bubbleTextStyle = {
          ["$ref"] = "TextFormat",
          description = "The format of the text inside the bubbles. Strikethrough, underline, and link are not supported.",
        },
        domain = {
          ["$ref"] = "ChartData",
          description = "The data containing the bubble x-values. These values locate the bubbles in the chart horizontally.",
        },
        groupIds = {
          ["$ref"] = "ChartData",
          description = "The data containing the bubble group IDs. All bubbles with the same group ID are drawn in the same color. If bubble_sizes is specified then this field must also be specified but may contain blank values. This field is optional.",
        },
        legendPosition = {
          description = "Where the legend of the chart should be drawn.",
          enum = {
            "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED",
            "BOTTOM_LEGEND",
            "LEFT_LEGEND",
            "RIGHT_LEGEND",
            "TOP_LEGEND",
            "NO_LEGEND",
            "INSIDE_LEGEND",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The legend is rendered on the bottom of the chart.",
            "The legend is rendered on the left of the chart.",
            "The legend is rendered on the right of the chart.",
            "The legend is rendered on the top of the chart.",
            "No legend is rendered.",
            "The legend is rendered inside the chart area.",
          },
          type = "string",
        },
        series = {
          ["$ref"] = "ChartData",
          description = "The data containing the bubble y-values. These values locate the bubbles in the chart vertically.",
        },
      },
      type = "object",
    },
    CandlestickChartSpec = {
      description = "A candlestick chart.",
      id = "CandlestickChartSpec",
      properties = {
        data = {
          description = "The Candlestick chart data. Only one CandlestickData is supported.",
          items = {
            ["$ref"] = "CandlestickData",
          },
          type = "array",
        },
        domain = {
          ["$ref"] = "CandlestickDomain",
          description = "The domain data (horizontal axis) for the candlestick chart. String data will be treated as discrete labels, other data will be treated as continuous values.",
        },
      },
      type = "object",
    },
    CandlestickData = {
      description = "The Candlestick chart data, each containing the low, open, close, and high values for a series.",
      id = "CandlestickData",
      properties = {
        closeSeries = {
          ["$ref"] = "CandlestickSeries",
          description = "The range data (vertical axis) for the close/final value for each candle. This is the top of the candle body. If greater than the open value the candle will be filled. Otherwise the candle will be hollow.",
        },
        highSeries = {
          ["$ref"] = "CandlestickSeries",
          description = "The range data (vertical axis) for the high/maximum value for each candle. This is the top of the candle's center line.",
        },
        lowSeries = {
          ["$ref"] = "CandlestickSeries",
          description = "The range data (vertical axis) for the low/minimum value for each candle. This is the bottom of the candle's center line.",
        },
        openSeries = {
          ["$ref"] = "CandlestickSeries",
          description = "The range data (vertical axis) for the open/initial value for each candle. This is the bottom of the candle body. If less than the close value the candle will be filled. Otherwise the candle will be hollow.",
        },
      },
      type = "object",
    },
    CandlestickDomain = {
      description = "The domain of a CandlestickChart.",
      id = "CandlestickDomain",
      properties = {
        data = {
          ["$ref"] = "ChartData",
          description = "The data of the CandlestickDomain.",
        },
        reversed = {
          description = "True to reverse the order of the domain values (horizontal axis).",
          type = "boolean",
        },
      },
      type = "object",
    },
    CandlestickSeries = {
      description = "The series of a CandlestickData.",
      id = "CandlestickSeries",
      properties = {
        data = {
          ["$ref"] = "ChartData",
          description = "The data of the CandlestickSeries.",
        },
      },
      type = "object",
    },
    CellData = {
      description = "Data about a specific cell.",
      id = "CellData",
      properties = {
        dataSourceFormula = {
          ["$ref"] = "DataSourceFormula",
          description = "Output only. Information about a data source formula on the cell. The field is set if user_entered_value is a formula referencing some DATA_SOURCE sheet, e.g. `=SUM(DataSheet!Column)`.",
          readOnly = true,
        },
        dataSourceTable = {
          ["$ref"] = "DataSourceTable",
          description = "A data source table anchored at this cell. The size of data source table itself is computed dynamically based on its configuration. Only the first cell of the data source table contains the data source table definition. The other cells will contain the display values of the data source table result in their effective_value fields.",
        },
        dataValidation = {
          ["$ref"] = "DataValidationRule",
          description = "A data validation rule on the cell, if any. When writing, the new data validation rule will overwrite any prior rule.",
        },
        effectiveFormat = {
          ["$ref"] = "CellFormat",
          description = "The effective format being used by the cell. This includes the results of applying any conditional formatting and, if the cell contains a formula, the computed number format. If the effective format is the default format, effective format will not be written. This field is read-only.",
        },
        effectiveValue = {
          ["$ref"] = "ExtendedValue",
          description = "The effective value of the cell. For cells with formulas, this is the calculated value. For cells with literals, this is the same as the user_entered_value. This field is read-only.",
        },
        formattedValue = {
          description = "The formatted value of the cell. This is the value as it's shown to the user. This field is read-only.",
          type = "string",
        },
        hyperlink = {
          description = "A hyperlink this cell points to, if any. If the cell contains multiple hyperlinks, this field will be empty. This field is read-only. To set it, use a `=HYPERLINK` formula in the userEnteredValue.formulaValue field. A cell-level link can also be set from the userEnteredFormat.textFormat field. Alternatively, set a hyperlink in the textFormatRun.format.link field that spans the entire cell.",
          type = "string",
        },
        note = {
          description = "Any note on the cell.",
          type = "string",
        },
        pivotTable = {
          ["$ref"] = "PivotTable",
          description = "A pivot table anchored at this cell. The size of pivot table itself is computed dynamically based on its data, grouping, filters, values, etc. Only the top-left cell of the pivot table contains the pivot table definition. The other cells will contain the calculated values of the results of the pivot in their effective_value fields.",
        },
        textFormatRuns = {
          description = "Runs of rich text applied to subsections of the cell. Runs are only valid on user entered strings, not formulas, bools, or numbers. Properties of a run start at a specific index in the text and continue until the next run. Runs will inherit the properties of the cell unless explicitly changed. When writing, the new runs will overwrite any prior runs. When writing a new user_entered_value, previous runs are erased.",
          items = {
            ["$ref"] = "TextFormatRun",
          },
          type = "array",
        },
        userEnteredFormat = {
          ["$ref"] = "CellFormat",
          description = "The format the user entered for the cell. When writing, the new format will be merged with the existing format.",
        },
        userEnteredValue = {
          ["$ref"] = "ExtendedValue",
          description = "The value the user entered in the cell. e.g, `1234`, `'Hello'`, or `=NOW()` Note: Dates, Times and DateTimes are represented as doubles in serial number format.",
        },
      },
      type = "object",
    },
    CellFormat = {
      description = "The format of a cell.",
      id = "CellFormat",
      properties = {
        backgroundColor = {
          ["$ref"] = "Color",
          description = "The background color of the cell. Deprecated: Use background_color_style.",
        },
        backgroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color of the cell. If background_color is also set, this field takes precedence.",
        },
        borders = {
          ["$ref"] = "Borders",
          description = "The borders of the cell.",
        },
        horizontalAlignment = {
          description = "The horizontal alignment of the value in the cell.",
          enum = {
            "HORIZONTAL_ALIGN_UNSPECIFIED",
            "LEFT",
            "CENTER",
            "RIGHT",
          },
          enumDescriptions = {
            "The horizontal alignment is not specified. Do not use this.",
            "The text is explicitly aligned to the left of the cell.",
            "The text is explicitly aligned to the center of the cell.",
            "The text is explicitly aligned to the right of the cell.",
          },
          type = "string",
        },
        hyperlinkDisplayType = {
          description = "If one exists, how a hyperlink should be displayed in the cell.",
          enum = {
            "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED",
            "LINKED",
            "PLAIN_TEXT",
          },
          enumDescriptions = {
            "The default value: the hyperlink is rendered. Do not use this.",
            "A hyperlink should be explicitly rendered.",
            "A hyperlink should not be rendered.",
          },
          type = "string",
        },
        numberFormat = {
          ["$ref"] = "NumberFormat",
          description = "A format describing how number values should be represented to the user.",
        },
        padding = {
          ["$ref"] = "Padding",
          description = "The padding of the cell.",
        },
        textDirection = {
          description = "The direction of the text in the cell.",
          enum = {
            "TEXT_DIRECTION_UNSPECIFIED",
            "LEFT_TO_RIGHT",
            "RIGHT_TO_LEFT",
          },
          enumDescriptions = {
            "The text direction is not specified. Do not use this.",
            "The text direction of left-to-right was set by the user.",
            "The text direction of right-to-left was set by the user.",
          },
          type = "string",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "The format of the text in the cell (unless overridden by a format run). Setting a cell-level link here clears the cell's existing links. Setting the link field in a TextFormatRun takes precedence over the cell-level link.",
        },
        textRotation = {
          ["$ref"] = "TextRotation",
          description = "The rotation applied to text in the cell.",
        },
        verticalAlignment = {
          description = "The vertical alignment of the value in the cell.",
          enum = {
            "VERTICAL_ALIGN_UNSPECIFIED",
            "TOP",
            "MIDDLE",
            "BOTTOM",
          },
          enumDescriptions = {
            "The vertical alignment is not specified. Do not use this.",
            "The text is explicitly aligned to the top of the cell.",
            "The text is explicitly aligned to the middle of the cell.",
            "The text is explicitly aligned to the bottom of the cell.",
          },
          type = "string",
        },
        wrapStrategy = {
          description = "The wrap strategy for the value in the cell.",
          enum = {
            "WRAP_STRATEGY_UNSPECIFIED",
            "OVERFLOW_CELL",
            "LEGACY_WRAP",
            "CLIP",
            "WRAP",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Lines that are longer than the cell width will be written in the next cell over, so long as that cell is empty. If the next cell over is non-empty, this behaves the same as `CLIP`. The text will never wrap to the next line unless the user manually inserts a new line. Example: | First sentence. | | Manual newline that is very long. <- Text continues into next cell | Next newline. |",
            "This wrap strategy represents the old Google Sheets wrap strategy where words that are longer than a line are clipped rather than broken. This strategy is not supported on all platforms and is being phased out. Example: | Cell has a | | loooooooooo| <- Word is clipped. | word. |",
            "Lines that are longer than the cell width will be clipped. The text will never wrap to the next line unless the user manually inserts a new line. Example: | First sentence. | | Manual newline t| <- Text is clipped | Next newline. |",
            "Words that are longer than a line are wrapped at the character level rather than clipped. Example: | Cell has a | | loooooooooo| <- Word is broken. | ong word. |",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChartAxisViewWindowOptions = {
      description = "The options that define a \"view window\" for a chart (such as the visible values in an axis).",
      id = "ChartAxisViewWindowOptions",
      properties = {
        viewWindowMax = {
          description = "The maximum numeric value to be shown in this view window. If unset, will automatically determine a maximum value that looks good for the data.",
          format = "double",
          type = "number",
        },
        viewWindowMin = {
          description = "The minimum numeric value to be shown in this view window. If unset, will automatically determine a minimum value that looks good for the data.",
          format = "double",
          type = "number",
        },
        viewWindowMode = {
          description = "The view window's mode.",
          enum = {
            "DEFAULT_VIEW_WINDOW_MODE",
            "VIEW_WINDOW_MODE_UNSUPPORTED",
            "EXPLICIT",
            "PRETTY",
          },
          enumDescriptions = {
            "The default view window mode used in the Sheets editor for this chart type. In most cases, if set, the default mode is equivalent to `PRETTY`.",
            "Do not use. Represents that the currently set mode is not supported by the API.",
            "Follows the min and max exactly if specified. If a value is unspecified, it will fall back to the `PRETTY` value.",
            "Chooses a min and max that make the chart look good. Both min and max are ignored in this mode.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChartCustomNumberFormatOptions = {
      description = "Custom number formatting options for chart attributes.",
      id = "ChartCustomNumberFormatOptions",
      properties = {
        prefix = {
          description = "Custom prefix to be prepended to the chart attribute. This field is optional.",
          type = "string",
        },
        suffix = {
          description = "Custom suffix to be appended to the chart attribute. This field is optional.",
          type = "string",
        },
      },
      type = "object",
    },
    ChartData = {
      description = "The data included in a domain or series.",
      id = "ChartData",
      properties = {
        aggregateType = {
          description = "The aggregation type for the series of a data source chart. Only supported for data source charts.",
          enum = {
            "CHART_AGGREGATE_TYPE_UNSPECIFIED",
            "AVERAGE",
            "COUNT",
            "MAX",
            "MEDIAN",
            "MIN",
            "SUM",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Average aggregate function.",
            "Count aggregate function.",
            "Maximum aggregate function.",
            "Median aggregate function.",
            "Minimum aggregate function.",
            "Sum aggregate function.",
          },
          type = "string",
        },
        columnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "The reference to the data source column that the data reads from.",
        },
        groupRule = {
          ["$ref"] = "ChartGroupRule",
          description = "The rule to group the data by if the ChartData backs the domain of a data source chart. Only supported for data source charts.",
        },
        sourceRange = {
          ["$ref"] = "ChartSourceRange",
          description = "The source ranges of the data.",
        },
      },
      type = "object",
    },
    ChartDateTimeRule = {
      description = "Allows you to organize the date-time values in a source data column into buckets based on selected parts of their date or time values.",
      id = "ChartDateTimeRule",
      properties = {
        type = {
          description = "The type of date-time grouping to apply.",
          enum = {
            "CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED",
            "SECOND",
            "MINUTE",
            "HOUR",
            "HOUR_MINUTE",
            "HOUR_MINUTE_AMPM",
            "DAY_OF_WEEK",
            "DAY_OF_YEAR",
            "DAY_OF_MONTH",
            "DAY_MONTH",
            "MONTH",
            "QUARTER",
            "YEAR",
            "YEAR_MONTH",
            "YEAR_QUARTER",
            "YEAR_MONTH_DAY",
          },
          enumDescriptions = {
            "The default type, do not use.",
            "Group dates by second, from 0 to 59.",
            "Group dates by minute, from 0 to 59.",
            "Group dates by hour using a 24-hour system, from 0 to 23.",
            "Group dates by hour and minute using a 24-hour system, for example 19:45.",
            "Group dates by hour and minute using a 12-hour system, for example 7:45 PM. The AM/PM designation is translated based on the spreadsheet locale.",
            "Group dates by day of week, for example Sunday. The days of the week will be translated based on the spreadsheet locale.",
            "Group dates by day of year, from 1 to 366. Note that dates after Feb. 29 fall in different buckets in leap years than in non-leap years.",
            "Group dates by day of month, from 1 to 31.",
            "Group dates by day and month, for example 22-Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by month, for example Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by quarter, for example Q1 (which represents Jan-Mar).",
            "Group dates by year, for example 2008.",
            "Group dates by year and month, for example 2008-Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by year and quarter, for example 2008 Q4.",
            "Group dates by year, month, and day, for example 2008-11-22.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChartGroupRule = {
      description = "An optional setting on the ChartData of the domain of a data source chart that defines buckets for the values in the domain rather than breaking out each individual value. For example, when plotting a data source chart, you can specify a histogram rule on the domain (it should only contain numeric values), grouping its values into buckets. Any values of a chart series that fall into the same bucket are aggregated based on the aggregate_type.",
      id = "ChartGroupRule",
      properties = {
        dateTimeRule = {
          ["$ref"] = "ChartDateTimeRule",
          description = "A ChartDateTimeRule.",
        },
        histogramRule = {
          ["$ref"] = "ChartHistogramRule",
          description = "A ChartHistogramRule",
        },
      },
      type = "object",
    },
    ChartHistogramRule = {
      description = "Allows you to organize numeric values in a source data column into buckets of constant size.",
      id = "ChartHistogramRule",
      properties = {
        intervalSize = {
          description = "The size of the buckets that are created. Must be positive.",
          format = "double",
          type = "number",
        },
        maxValue = {
          description = "The maximum value at which items are placed into buckets. Values greater than the maximum are grouped into a single bucket. If omitted, it is determined by the maximum item value.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "The minimum value at which items are placed into buckets. Values that are less than the minimum are grouped into a single bucket. If omitted, it is determined by the minimum item value.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ChartSourceRange = {
      description = "Source ranges for a chart.",
      id = "ChartSourceRange",
      properties = {
        sources = {
          description = "The ranges of data for a series or domain. Exactly one dimension must have a length of 1, and all sources in the list must have the same dimension with length 1. The domain (if it exists) & all series must have the same number of source ranges. If using more than one source range, then the source range at a given offset must be in order and contiguous across the domain and series. For example, these are valid configurations: domain sources: A1:A5 series1 sources: B1:B5 series2 sources: D6:D10 domain sources: A1:A5, C10:C12 series1 sources: B1:B5, D10:D12 series2 sources: C1:C5, E10:E12",
          items = {
            ["$ref"] = "GridRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChartSpec = {
      description = "The specifications of a chart.",
      id = "ChartSpec",
      properties = {
        altText = {
          description = "The alternative text that describes the chart. This is often used for accessibility.",
          type = "string",
        },
        backgroundColor = {
          ["$ref"] = "Color",
          description = "The background color of the entire chart. Not applicable to Org charts. Deprecated: Use background_color_style.",
        },
        backgroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color of the entire chart. Not applicable to Org charts. If background_color is also set, this field takes precedence.",
        },
        basicChart = {
          ["$ref"] = "BasicChartSpec",
          description = "A basic chart specification, can be one of many kinds of charts. See BasicChartType for the list of all charts this supports.",
        },
        bubbleChart = {
          ["$ref"] = "BubbleChartSpec",
          description = "A bubble chart specification.",
        },
        candlestickChart = {
          ["$ref"] = "CandlestickChartSpec",
          description = "A candlestick chart specification.",
        },
        dataSourceChartProperties = {
          ["$ref"] = "DataSourceChartProperties",
          description = "If present, the field contains data source chart specific properties.",
        },
        filterSpecs = {
          description = "The filters applied to the source data of the chart. Only supported for data source charts.",
          items = {
            ["$ref"] = "FilterSpec",
          },
          type = "array",
        },
        fontName = {
          description = "The name of the font to use by default for all chart text (e.g. title, axis labels, legend). If a font is specified for a specific part of the chart it will override this font name.",
          type = "string",
        },
        hiddenDimensionStrategy = {
          description = "Determines how the charts will use hidden rows or columns.",
          enum = {
            "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED",
            "SKIP_HIDDEN_ROWS_AND_COLUMNS",
            "SKIP_HIDDEN_ROWS",
            "SKIP_HIDDEN_COLUMNS",
            "SHOW_ALL",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Charts will skip hidden rows and columns.",
            "Charts will skip hidden rows only.",
            "Charts will skip hidden columns only.",
            "Charts will not skip any hidden rows or columns.",
          },
          type = "string",
        },
        histogramChart = {
          ["$ref"] = "HistogramChartSpec",
          description = "A histogram chart specification.",
        },
        maximized = {
          description = "True to make a chart fill the entire space in which it's rendered with minimum padding. False to use the default padding. (Not applicable to Geo and Org charts.)",
          type = "boolean",
        },
        orgChart = {
          ["$ref"] = "OrgChartSpec",
          description = "An org chart specification.",
        },
        pieChart = {
          ["$ref"] = "PieChartSpec",
          description = "A pie chart specification.",
        },
        scorecardChart = {
          ["$ref"] = "ScorecardChartSpec",
          description = "A scorecard chart specification.",
        },
        sortSpecs = {
          description = "The order to sort the chart data by. Only a single sort spec is supported. Only supported for data source charts.",
          items = {
            ["$ref"] = "SortSpec",
          },
          type = "array",
        },
        subtitle = {
          description = "The subtitle of the chart.",
          type = "string",
        },
        subtitleTextFormat = {
          ["$ref"] = "TextFormat",
          description = "The subtitle text format. Strikethrough, underline, and link are not supported.",
        },
        subtitleTextPosition = {
          ["$ref"] = "TextPosition",
          description = "The subtitle text position. This field is optional.",
        },
        title = {
          description = "The title of the chart.",
          type = "string",
        },
        titleTextFormat = {
          ["$ref"] = "TextFormat",
          description = "The title text format. Strikethrough, underline, and link are not supported.",
        },
        titleTextPosition = {
          ["$ref"] = "TextPosition",
          description = "The title text position. This field is optional.",
        },
        treemapChart = {
          ["$ref"] = "TreemapChartSpec",
          description = "A treemap chart specification.",
        },
        waterfallChart = {
          ["$ref"] = "WaterfallChartSpec",
          description = "A waterfall chart specification.",
        },
      },
      type = "object",
    },
    ClearBasicFilterRequest = {
      description = "Clears the basic filter, if any exists on the sheet.",
      id = "ClearBasicFilterRequest",
      properties = {
        sheetId = {
          description = "The sheet ID on which the basic filter should be cleared.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ClearValuesRequest = {
      description = "The request for clearing a range of values in a spreadsheet.",
      id = "ClearValuesRequest",
      properties = {},
      type = "object",
    },
    ClearValuesResponse = {
      description = "The response when clearing a range of values in a spreadsheet.",
      id = "ClearValuesResponse",
      properties = {
        clearedRange = {
          description = "The range (in A1 notation) that was cleared. (If the request was for an unbounded range or a ranger larger than the bounds of the sheet, this will be the actual range that was cleared, bounded to the sheet's limits.)",
          type = "string",
        },
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
      },
      type = "object",
    },
    Color = {
      description = "Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...",
      id = "Color",
      properties = {
        alpha = {
          description = "The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: `pixel color = alpha * (this color) + (1.0 - alpha) * (background color)` This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).",
          format = "float",
          type = "number",
        },
        blue = {
          description = "The amount of blue in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        green = {
          description = "The amount of green in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        red = {
          description = "The amount of red in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    ColorStyle = {
      description = "A color value.",
      id = "ColorStyle",
      properties = {
        rgbColor = {
          ["$ref"] = "Color",
          description = "RGB color. The [`alpha`](/sheets/api/reference/rest/v4/spreadsheets/other#Color.FIELDS.alpha) value in the [`Color`](/sheets/api/reference/rest/v4/spreadsheets/other#color) object isn't generally supported.",
        },
        themeColor = {
          description = "Theme color.",
          enum = {
            "THEME_COLOR_TYPE_UNSPECIFIED",
            "TEXT",
            "BACKGROUND",
            "ACCENT1",
            "ACCENT2",
            "ACCENT3",
            "ACCENT4",
            "ACCENT5",
            "ACCENT6",
            "LINK",
          },
          enumDescriptions = {
            "Unspecified theme color",
            "Represents the primary text color",
            "Represents the primary background color",
            "Represents the first accent color",
            "Represents the second accent color",
            "Represents the third accent color",
            "Represents the fourth accent color",
            "Represents the fifth accent color",
            "Represents the sixth accent color",
            "Represents the color to use for hyperlinks",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ConditionValue = {
      description = "The value of the condition.",
      id = "ConditionValue",
      properties = {
        relativeDate = {
          description = "A relative date (based on the current date). Valid only if the type is DATE_BEFORE, DATE_AFTER, DATE_ON_OR_BEFORE or DATE_ON_OR_AFTER. Relative dates are not supported in data validation. They are supported only in conditional formatting and conditional filters.",
          enum = {
            "RELATIVE_DATE_UNSPECIFIED",
            "PAST_YEAR",
            "PAST_MONTH",
            "PAST_WEEK",
            "YESTERDAY",
            "TODAY",
            "TOMORROW",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The value is one year before today.",
            "The value is one month before today.",
            "The value is one week before today.",
            "The value is yesterday.",
            "The value is today.",
            "The value is tomorrow.",
          },
          type = "string",
        },
        userEnteredValue = {
          description = "A value the condition is based on. The value is parsed as if the user typed into a cell. Formulas are supported (and must begin with an `=` or a '+').",
          type = "string",
        },
      },
      type = "object",
    },
    ConditionalFormatRule = {
      description = "A rule describing a conditional format.",
      id = "ConditionalFormatRule",
      properties = {
        booleanRule = {
          ["$ref"] = "BooleanRule",
          description = "The formatting is either \"on\" or \"off\" according to the rule.",
        },
        gradientRule = {
          ["$ref"] = "GradientRule",
          description = "The formatting will vary based on the gradients in the rule.",
        },
        ranges = {
          description = "The ranges that are formatted if the condition is true. All the ranges must be on the same grid.",
          items = {
            ["$ref"] = "GridRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CopyPasteRequest = {
      description = "Copies data from the source to the destination.",
      id = "CopyPasteRequest",
      properties = {
        destination = {
          ["$ref"] = "GridRange",
          description = "The location to paste to. If the range covers a span that's a multiple of the source's height or width, then the data will be repeated to fill in the destination range. If the range is smaller than the source range, the entire source data will still be copied (beyond the end of the destination range).",
        },
        pasteOrientation = {
          description = "How that data should be oriented when pasting.",
          enum = {
            "NORMAL",
            "TRANSPOSE",
          },
          enumDescriptions = {
            "Paste normally.",
            "Paste transposed, where all rows become columns and vice versa.",
          },
          type = "string",
        },
        pasteType = {
          description = "What kind of data to paste.",
          enum = {
            "PASTE_NORMAL",
            "PASTE_VALUES",
            "PASTE_FORMAT",
            "PASTE_NO_BORDERS",
            "PASTE_FORMULA",
            "PASTE_DATA_VALIDATION",
            "PASTE_CONDITIONAL_FORMATTING",
          },
          enumDescriptions = {
            "Paste values, formulas, formats, and merges.",
            "Paste the values ONLY without formats, formulas, or merges.",
            "Paste the format and data validation only.",
            "Like `PASTE_NORMAL` but without borders.",
            "Paste the formulas only.",
            "Paste the data validation only.",
            "Paste the conditional formatting rules only.",
          },
          type = "string",
        },
        source = {
          ["$ref"] = "GridRange",
          description = "The source range to copy.",
        },
      },
      type = "object",
    },
    CopySheetToAnotherSpreadsheetRequest = {
      description = "The request to copy a sheet across spreadsheets.",
      id = "CopySheetToAnotherSpreadsheetRequest",
      properties = {
        destinationSpreadsheetId = {
          description = "The ID of the spreadsheet to copy the sheet to.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateDeveloperMetadataRequest = {
      description = "A request to create developer metadata.",
      id = "CreateDeveloperMetadataRequest",
      properties = {
        developerMetadata = {
          ["$ref"] = "DeveloperMetadata",
          description = "The developer metadata to create.",
        },
      },
      type = "object",
    },
    CreateDeveloperMetadataResponse = {
      description = "The response from creating developer metadata.",
      id = "CreateDeveloperMetadataResponse",
      properties = {
        developerMetadata = {
          ["$ref"] = "DeveloperMetadata",
          description = "The developer metadata that was created.",
        },
      },
      type = "object",
    },
    CutPasteRequest = {
      description = "Moves data from the source to the destination.",
      id = "CutPasteRequest",
      properties = {
        destination = {
          ["$ref"] = "GridCoordinate",
          description = "The top-left coordinate where the data should be pasted.",
        },
        pasteType = {
          description = "What kind of data to paste. All the source data will be cut, regardless of what is pasted.",
          enum = {
            "PASTE_NORMAL",
            "PASTE_VALUES",
            "PASTE_FORMAT",
            "PASTE_NO_BORDERS",
            "PASTE_FORMULA",
            "PASTE_DATA_VALIDATION",
            "PASTE_CONDITIONAL_FORMATTING",
          },
          enumDescriptions = {
            "Paste values, formulas, formats, and merges.",
            "Paste the values ONLY without formats, formulas, or merges.",
            "Paste the format and data validation only.",
            "Like `PASTE_NORMAL` but without borders.",
            "Paste the formulas only.",
            "Paste the data validation only.",
            "Paste the conditional formatting rules only.",
          },
          type = "string",
        },
        source = {
          ["$ref"] = "GridRange",
          description = "The source data to cut.",
        },
      },
      type = "object",
    },
    DataExecutionStatus = {
      description = "The data execution status. A data execution is created to sync a data source object with the latest data from a DataSource. It is usually scheduled to run at background, you can check its state to tell if an execution completes There are several scenarios where a data execution is triggered to run: * Adding a data source creates an associated data source sheet as well as a data execution to sync the data from the data source to the sheet. * Updating a data source creates a data execution to refresh the associated data source sheet similarly. * You can send refresh request to explicitly refresh one or multiple data source objects.",
      id = "DataExecutionStatus",
      properties = {
        errorCode = {
          description = "The error code.",
          enum = {
            "DATA_EXECUTION_ERROR_CODE_UNSPECIFIED",
            "TIMED_OUT",
            "TOO_MANY_ROWS",
            "TOO_MANY_COLUMNS",
            "TOO_MANY_CELLS",
            "ENGINE",
            "PARAMETER_INVALID",
            "UNSUPPORTED_DATA_TYPE",
            "DUPLICATE_COLUMN_NAMES",
            "INTERRUPTED",
            "CONCURRENT_QUERY",
            "OTHER",
            "TOO_MANY_CHARS_PER_CELL",
            "DATA_NOT_FOUND",
            "PERMISSION_DENIED",
            "MISSING_COLUMN_ALIAS",
            "OBJECT_NOT_FOUND",
            "OBJECT_IN_ERROR_STATE",
            "OBJECT_SPEC_INVALID",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The data execution timed out.",
            "The data execution returns more rows than the limit.",
            "The data execution returns more columns than the limit.",
            "The data execution returns more cells than the limit.",
            "Error is received from the backend data execution engine (e.g. BigQuery). Check error_message for details.",
            "One or some of the provided data source parameters are invalid.",
            "The data execution returns an unsupported data type.",
            "The data execution returns duplicate column names or aliases.",
            "The data execution is interrupted. Please refresh later.",
            "The data execution is currently in progress, can not be refreshed until it completes.",
            "Other errors.",
            "The data execution returns values that exceed the maximum characters allowed in a single cell.",
            "The database referenced by the data source is not found. */",
            "The user does not have access to the database referenced by the data source.",
            "The data execution returns columns with missing aliases.",
            "The data source object does not exist.",
            "The data source object is currently in error state. To force refresh, set force in RefreshDataSourceRequest.",
            "The data source object specification is invalid.",
          },
          type = "string",
        },
        errorMessage = {
          description = "The error message, which may be empty.",
          type = "string",
        },
        lastRefreshTime = {
          description = "Gets the time the data last successfully refreshed.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the data execution.",
          enum = {
            "DATA_EXECUTION_STATE_UNSPECIFIED",
            "NOT_STARTED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The data execution has not started.",
            "The data execution has started and is running.",
            "The data execution has completed successfully.",
            "The data execution has completed with errors.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DataFilter = {
      description = "Filter that describes what data should be selected or returned from a request.",
      id = "DataFilter",
      properties = {
        a1Range = {
          description = "Selects data that matches the specified A1 range.",
          type = "string",
        },
        developerMetadataLookup = {
          ["$ref"] = "DeveloperMetadataLookup",
          description = "Selects data associated with the developer metadata matching the criteria described by this DeveloperMetadataLookup.",
        },
        gridRange = {
          ["$ref"] = "GridRange",
          description = "Selects data that matches the range described by the GridRange.",
        },
      },
      type = "object",
    },
    DataFilterValueRange = {
      description = "A range of values whose location is specified by a DataFilter.",
      id = "DataFilterValueRange",
      properties = {
        dataFilter = {
          ["$ref"] = "DataFilter",
          description = "The data filter describing the location of the values in the spreadsheet.",
        },
        majorDimension = {
          description = "The major dimension of the values.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        values = {
          description = "The data to be written. If the provided values exceed any of the ranges matched by the data filter then the request fails. If the provided values are less than the matched ranges only the specified values are written, existing values in the matched ranges remain unaffected.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataLabel = {
      description = "Settings for one set of data labels. Data labels are annotations that appear next to a set of data, such as the points on a line chart, and provide additional information about what the data represents, such as a text representation of the value behind that point on the graph.",
      id = "DataLabel",
      properties = {
        customLabelData = {
          ["$ref"] = "ChartData",
          description = "Data to use for custom labels. Only used if type is set to CUSTOM. This data must be the same length as the series or other element this data label is applied to. In addition, if the series is split into multiple source ranges, this source data must come from the next column in the source data. For example, if the series is B2:B4,E6:E8 then this data must come from C2:C4,F6:F8.",
        },
        placement = {
          description = "The placement of the data label relative to the labeled data.",
          enum = {
            "DATA_LABEL_PLACEMENT_UNSPECIFIED",
            "CENTER",
            "LEFT",
            "RIGHT",
            "ABOVE",
            "BELOW",
            "INSIDE_END",
            "INSIDE_BASE",
            "OUTSIDE_END",
          },
          enumDescriptions = {
            "The positioning is determined automatically by the renderer.",
            "Center within a bar or column, both horizontally and vertically.",
            "To the left of a data point.",
            "To the right of a data point.",
            "Above a data point.",
            "Below a data point.",
            "Inside a bar or column at the end (top if positive, bottom if negative).",
            "Inside a bar or column at the base.",
            "Outside a bar or column at the end.",
          },
          type = "string",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "The text format used for the data label. The link field is not supported.",
        },
        type = {
          description = "The type of the data label.",
          enum = {
            "DATA_LABEL_TYPE_UNSPECIFIED",
            "NONE",
            "DATA",
            "CUSTOM",
          },
          enumDescriptions = {
            "The data label type is not specified and will be interpreted depending on the context of the data label within the chart.",
            "The data label is not displayed.",
            "The data label is displayed using values from the series data.",
            "The data label is displayed using values from a custom data source indicated by customLabelData.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DataSource = {
      description = "Information about an external data source in the spreadsheet.",
      id = "DataSource",
      properties = {
        calculatedColumns = {
          description = "All calculated columns in the data source.",
          items = {
            ["$ref"] = "DataSourceColumn",
          },
          type = "array",
        },
        dataSourceId = {
          description = "The spreadsheet-scoped unique ID that identifies the data source. Example: 1080547365.",
          type = "string",
        },
        sheetId = {
          description = "The ID of the Sheet connected with the data source. The field cannot be changed once set. When creating a data source, an associated DATA_SOURCE sheet is also created, if the field is not specified, the ID of the created sheet will be randomly generated.",
          format = "int32",
          type = "integer",
        },
        spec = {
          ["$ref"] = "DataSourceSpec",
          description = "The DataSourceSpec for the data source connected with this spreadsheet.",
        },
      },
      type = "object",
    },
    DataSourceChartProperties = {
      description = "Properties of a data source chart.",
      id = "DataSourceChartProperties",
      properties = {
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "Output only. The data execution status.",
          readOnly = true,
        },
        dataSourceId = {
          description = "ID of the data source that the chart is associated with.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceColumn = {
      description = "A column in a data source.",
      id = "DataSourceColumn",
      properties = {
        formula = {
          description = "The formula of the calculated column.",
          type = "string",
        },
        reference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "The column reference.",
        },
      },
      type = "object",
    },
    DataSourceColumnReference = {
      description = "An unique identifier that references a data source column.",
      id = "DataSourceColumnReference",
      properties = {
        name = {
          description = "The display name of the column. It should be unique within a data source.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceFormula = {
      description = "A data source formula.",
      id = "DataSourceFormula",
      properties = {
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "Output only. The data execution status.",
          readOnly = true,
        },
        dataSourceId = {
          description = "The ID of the data source the formula is associated with.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceObjectReference = {
      description = "Reference to a data source object.",
      id = "DataSourceObjectReference",
      properties = {
        chartId = {
          description = "References to a data source chart.",
          format = "int32",
          type = "integer",
        },
        dataSourceFormulaCell = {
          ["$ref"] = "GridCoordinate",
          description = "References to a cell containing DataSourceFormula.",
        },
        dataSourcePivotTableAnchorCell = {
          ["$ref"] = "GridCoordinate",
          description = "References to a data source PivotTable anchored at the cell.",
        },
        dataSourceTableAnchorCell = {
          ["$ref"] = "GridCoordinate",
          description = "References to a DataSourceTable anchored at the cell.",
        },
        sheetId = {
          description = "References to a DATA_SOURCE sheet.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceObjectReferences = {
      description = "A list of references to data source objects.",
      id = "DataSourceObjectReferences",
      properties = {
        references = {
          description = "The references.",
          items = {
            ["$ref"] = "DataSourceObjectReference",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataSourceParameter = {
      description = "A parameter in a data source's query. The parameter allows the user to pass in values from the spreadsheet into a query.",
      id = "DataSourceParameter",
      properties = {
        name = {
          description = "Named parameter. Must be a legitimate identifier for the DataSource that supports it. For example, [BigQuery identifier](https://cloud.google.com/bigquery/docs/reference/standard-sql/lexical#identifiers).",
          type = "string",
        },
        namedRangeId = {
          description = "ID of a NamedRange. Its size must be 1x1.",
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "A range that contains the value of the parameter. Its size must be 1x1.",
        },
      },
      type = "object",
    },
    DataSourceRefreshDailySchedule = {
      description = "A schedule for data to refresh every day in a given time interval.",
      id = "DataSourceRefreshDailySchedule",
      properties = {
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "The start time of a time interval in which a data source refresh is scheduled. Only `hours` part is used. The time interval size defaults to that in the Sheets editor.",
        },
      },
      type = "object",
    },
    DataSourceRefreshMonthlySchedule = {
      description = "A monthly schedule for data to refresh on specific days in the month in a given time interval.",
      id = "DataSourceRefreshMonthlySchedule",
      properties = {
        daysOfMonth = {
          description = "Days of the month to refresh. Only 1-28 are supported, mapping to the 1st to the 28th day. At lesat one day must be specified.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "The start time of a time interval in which a data source refresh is scheduled. Only `hours` part is used. The time interval size defaults to that in the Sheets editor.",
        },
      },
      type = "object",
    },
    DataSourceRefreshSchedule = {
      description = "Schedule for refreshing the data source. Data sources in the spreadsheet are refreshed within a time interval. You can specify the start time by clicking the Scheduled Refresh button in the Sheets editor, but the interval is fixed at 4 hours. For example, if you specify a start time of 8am , the refresh will take place between 8am and 12pm every day.",
      id = "DataSourceRefreshSchedule",
      properties = {
        dailySchedule = {
          ["$ref"] = "DataSourceRefreshDailySchedule",
          description = "Daily refresh schedule.",
        },
        enabled = {
          description = "True if the refresh schedule is enabled, or false otherwise.",
          type = "boolean",
        },
        monthlySchedule = {
          ["$ref"] = "DataSourceRefreshMonthlySchedule",
          description = "Monthly refresh schedule.",
        },
        nextRun = {
          ["$ref"] = "Interval",
          description = "Output only. The time interval of the next run.",
          readOnly = true,
        },
        refreshScope = {
          description = "The scope of the refresh. Must be ALL_DATA_SOURCES.",
          enum = {
            "DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED",
            "ALL_DATA_SOURCES",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Refreshes all data sources and their associated data source objects in the spreadsheet.",
          },
          type = "string",
        },
        weeklySchedule = {
          ["$ref"] = "DataSourceRefreshWeeklySchedule",
          description = "Weekly refresh schedule.",
        },
      },
      type = "object",
    },
    DataSourceRefreshWeeklySchedule = {
      description = "A weekly schedule for data to refresh on specific days in a given time interval.",
      id = "DataSourceRefreshWeeklySchedule",
      properties = {
        daysOfWeek = {
          description = "Days of the week to refresh. At least one day must be specified.",
          items = {
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
          type = "array",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "The start time of a time interval in which a data source refresh is scheduled. Only `hours` part is used. The time interval size defaults to that in the Sheets editor.",
        },
      },
      type = "object",
    },
    DataSourceSheetDimensionRange = {
      description = "A range along a single dimension on a DATA_SOURCE sheet.",
      id = "DataSourceSheetDimensionRange",
      properties = {
        columnReferences = {
          description = "The columns on the data source sheet.",
          items = {
            ["$ref"] = "DataSourceColumnReference",
          },
          type = "array",
        },
        sheetId = {
          description = "The ID of the data source sheet the range is on.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DataSourceSheetProperties = {
      description = "Additional properties of a DATA_SOURCE sheet.",
      id = "DataSourceSheetProperties",
      properties = {
        columns = {
          description = "The columns displayed on the sheet, corresponding to the values in RowData.",
          items = {
            ["$ref"] = "DataSourceColumn",
          },
          type = "array",
        },
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "The data execution status.",
        },
        dataSourceId = {
          description = "ID of the DataSource the sheet is connected to.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSourceSpec = {
      description = "This specifies the details of the data source. For example, for BigQuery, this specifies information about the BigQuery source.",
      id = "DataSourceSpec",
      properties = {
        bigQuery = {
          ["$ref"] = "BigQueryDataSourceSpec",
          description = "A BigQueryDataSourceSpec.",
        },
        parameters = {
          description = "The parameters of the data source, used when querying the data source.",
          items = {
            ["$ref"] = "DataSourceParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataSourceTable = {
      description = "A data source table, which allows the user to import a static table of data from the DataSource into Sheets. This is also known as \"Extract\" in the Sheets editor.",
      id = "DataSourceTable",
      properties = {
        columnSelectionType = {
          description = "The type to select columns for the data source table. Defaults to SELECTED.",
          enum = {
            "DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED",
            "SELECTED",
            "SYNC_ALL",
          },
          enumDescriptions = {
            "The default column selection type, do not use.",
            "Select columns specified by columns field.",
            "Sync all current and future columns in the data source. If set, the data source table fetches all the columns in the data source at the time of refresh.",
          },
          type = "string",
        },
        columns = {
          description = "Columns selected for the data source table. The column_selection_type must be SELECTED.",
          items = {
            ["$ref"] = "DataSourceColumnReference",
          },
          type = "array",
        },
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "Output only. The data execution status.",
          readOnly = true,
        },
        dataSourceId = {
          description = "The ID of the data source the data source table is associated with.",
          type = "string",
        },
        filterSpecs = {
          description = "Filter specifications in the data source table.",
          items = {
            ["$ref"] = "FilterSpec",
          },
          type = "array",
        },
        rowLimit = {
          description = "The limit of rows to return. If not set, a default limit is applied. Please refer to the Sheets editor for the default and max limit.",
          format = "int32",
          type = "integer",
        },
        sortSpecs = {
          description = "Sort specifications in the data source table. The result of the data source table is sorted based on the sort specifications in order.",
          items = {
            ["$ref"] = "SortSpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataValidationRule = {
      description = "A data validation rule.",
      id = "DataValidationRule",
      properties = {
        condition = {
          ["$ref"] = "BooleanCondition",
          description = "The condition that data in the cell must match.",
        },
        inputMessage = {
          description = "A message to show the user when adding data to the cell.",
          type = "string",
        },
        showCustomUi = {
          description = "True if the UI should be customized based on the kind of condition. If true, \"List\" conditions will show a dropdown.",
          type = "boolean",
        },
        strict = {
          description = "True if invalid data should be rejected.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DateTimeRule = {
      description = "Allows you to organize the date-time values in a source data column into buckets based on selected parts of their date or time values. For example, consider a pivot table showing sales transactions by date: +----------+--------------+ | Date | SUM of Sales | +----------+--------------+ | 1/1/2017 | $621.14 | | 2/3/2017 | $708.84 | | 5/8/2017 | $326.84 | ... +----------+--------------+ Applying a date-time group rule with a DateTimeRuleType of YEAR_MONTH results in the following pivot table. +--------------+--------------+ | Grouped Date | SUM of Sales | +--------------+--------------+ | 2017-Jan | $53,731.78 | | 2017-Feb | $83,475.32 | | 2017-Mar | $94,385.05 | ... +--------------+--------------+",
      id = "DateTimeRule",
      properties = {
        type = {
          description = "The type of date-time grouping to apply.",
          enum = {
            "DATE_TIME_RULE_TYPE_UNSPECIFIED",
            "SECOND",
            "MINUTE",
            "HOUR",
            "HOUR_MINUTE",
            "HOUR_MINUTE_AMPM",
            "DAY_OF_WEEK",
            "DAY_OF_YEAR",
            "DAY_OF_MONTH",
            "DAY_MONTH",
            "MONTH",
            "QUARTER",
            "YEAR",
            "YEAR_MONTH",
            "YEAR_QUARTER",
            "YEAR_MONTH_DAY",
          },
          enumDescriptions = {
            "The default type, do not use.",
            "Group dates by second, from 0 to 59.",
            "Group dates by minute, from 0 to 59.",
            "Group dates by hour using a 24-hour system, from 0 to 23.",
            "Group dates by hour and minute using a 24-hour system, for example 19:45.",
            "Group dates by hour and minute using a 12-hour system, for example 7:45 PM. The AM/PM designation is translated based on the spreadsheet locale.",
            "Group dates by day of week, for example Sunday. The days of the week will be translated based on the spreadsheet locale.",
            "Group dates by day of year, from 1 to 366. Note that dates after Feb. 29 fall in different buckets in leap years than in non-leap years.",
            "Group dates by day of month, from 1 to 31.",
            "Group dates by day and month, for example 22-Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by month, for example Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by quarter, for example Q1 (which represents Jan-Mar).",
            "Group dates by year, for example 2008.",
            "Group dates by year and month, for example 2008-Nov. The month is translated based on the spreadsheet locale.",
            "Group dates by year and quarter, for example 2008 Q4.",
            "Group dates by year, month, and day, for example 2008-11-22.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeleteBandingRequest = {
      description = "Removes the banded range with the given ID from the spreadsheet.",
      id = "DeleteBandingRequest",
      properties = {
        bandedRangeId = {
          description = "The ID of the banded range to delete.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteConditionalFormatRuleRequest = {
      description = "Deletes a conditional format rule at the given index. All subsequent rules' indexes are decremented.",
      id = "DeleteConditionalFormatRuleRequest",
      properties = {
        index = {
          description = "The zero-based index of the rule to be deleted.",
          format = "int32",
          type = "integer",
        },
        sheetId = {
          description = "The sheet the rule is being deleted from.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteConditionalFormatRuleResponse = {
      description = "The result of deleting a conditional format rule.",
      id = "DeleteConditionalFormatRuleResponse",
      properties = {
        rule = {
          ["$ref"] = "ConditionalFormatRule",
          description = "The rule that was deleted.",
        },
      },
      type = "object",
    },
    DeleteDataSourceRequest = {
      description = "Deletes a data source. The request also deletes the associated data source sheet, and unlinks all associated data source objects.",
      id = "DeleteDataSourceRequest",
      properties = {
        dataSourceId = {
          description = "The ID of the data source to delete.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteDeveloperMetadataRequest = {
      description = "A request to delete developer metadata.",
      id = "DeleteDeveloperMetadataRequest",
      properties = {
        dataFilter = {
          ["$ref"] = "DataFilter",
          description = "The data filter describing the criteria used to select which developer metadata entry to delete.",
        },
      },
      type = "object",
    },
    DeleteDeveloperMetadataResponse = {
      description = "The response from deleting developer metadata.",
      id = "DeleteDeveloperMetadataResponse",
      properties = {
        deletedDeveloperMetadata = {
          description = "The metadata that was deleted.",
          items = {
            ["$ref"] = "DeveloperMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeleteDimensionGroupRequest = {
      description = "Deletes a group over the specified range by decrementing the depth of the dimensions in the range. For example, assume the sheet has a depth-1 group over B:E and a depth-2 group over C:D. Deleting a group over D:E leaves the sheet with a depth-1 group over B:D and a depth-2 group over C:C.",
      id = "DeleteDimensionGroupRequest",
      properties = {
        range = {
          ["$ref"] = "DimensionRange",
          description = "The range of the group to be deleted.",
        },
      },
      type = "object",
    },
    DeleteDimensionGroupResponse = {
      description = "The result of deleting a group.",
      id = "DeleteDimensionGroupResponse",
      properties = {
        dimensionGroups = {
          description = "All groups of a dimension after deleting a group from that dimension.",
          items = {
            ["$ref"] = "DimensionGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeleteDimensionRequest = {
      description = "Deletes the dimensions from the sheet.",
      id = "DeleteDimensionRequest",
      properties = {
        range = {
          ["$ref"] = "DimensionRange",
          description = "The dimensions to delete from the sheet.",
        },
      },
      type = "object",
    },
    DeleteDuplicatesRequest = {
      description = "Removes rows within this range that contain values in the specified columns that are duplicates of values in any previous row. Rows with identical values but different letter cases, formatting, or formulas are considered to be duplicates. This request also removes duplicate rows hidden from view (for example, due to a filter). When removing duplicates, the first instance of each duplicate row scanning from the top downwards is kept in the resulting range. Content outside of the specified range isn't removed, and rows considered duplicates do not have to be adjacent to each other in the range.",
      id = "DeleteDuplicatesRequest",
      properties = {
        comparisonColumns = {
          description = "The columns in the range to analyze for duplicate values. If no columns are selected then all columns are analyzed for duplicates.",
          items = {
            ["$ref"] = "DimensionRange",
          },
          type = "array",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range to remove duplicates rows from.",
        },
      },
      type = "object",
    },
    DeleteDuplicatesResponse = {
      description = "The result of removing duplicates in a range.",
      id = "DeleteDuplicatesResponse",
      properties = {
        duplicatesRemovedCount = {
          description = "The number of duplicate rows removed.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteEmbeddedObjectRequest = {
      description = "Deletes the embedded object with the given ID.",
      id = "DeleteEmbeddedObjectRequest",
      properties = {
        objectId = {
          description = "The ID of the embedded object to delete.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteFilterViewRequest = {
      description = "Deletes a particular filter view.",
      id = "DeleteFilterViewRequest",
      properties = {
        filterId = {
          description = "The ID of the filter to delete.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteNamedRangeRequest = {
      description = "Removes the named range with the given ID from the spreadsheet.",
      id = "DeleteNamedRangeRequest",
      properties = {
        namedRangeId = {
          description = "The ID of the named range to delete.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteProtectedRangeRequest = {
      description = "Deletes the protected range with the given ID.",
      id = "DeleteProtectedRangeRequest",
      properties = {
        protectedRangeId = {
          description = "The ID of the protected range to delete.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeleteRangeRequest = {
      description = "Deletes a range of cells, shifting other cells into the deleted area.",
      id = "DeleteRangeRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range of cells to delete.",
        },
        shiftDimension = {
          description = "The dimension from which deleted cells will be replaced with. If ROWS, existing cells will be shifted upward to replace the deleted cells. If COLUMNS, existing cells will be shifted left to replace the deleted cells.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeleteSheetRequest = {
      description = "Deletes the requested sheet.",
      id = "DeleteSheetRequest",
      properties = {
        sheetId = {
          description = "The ID of the sheet to delete. If the sheet is of DATA_SOURCE type, the associated DataSource is also deleted.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeveloperMetadata = {
      description = "Developer metadata associated with a location or object in a spreadsheet. Developer metadata may be used to associate arbitrary data with various parts of a spreadsheet and will remain associated at those locations as they move around and the spreadsheet is edited. For example, if developer metadata is associated with row 5 and another row is then subsequently inserted above row 5, that original metadata will still be associated with the row it was first associated with (what is now row 6). If the associated object is deleted its metadata is deleted too.",
      id = "DeveloperMetadata",
      properties = {
        location = {
          ["$ref"] = "DeveloperMetadataLocation",
          description = "The location where the metadata is associated.",
        },
        metadataId = {
          description = "The spreadsheet-scoped unique ID that identifies the metadata. IDs may be specified when metadata is created, otherwise one will be randomly generated and assigned. Must be positive.",
          format = "int32",
          type = "integer",
        },
        metadataKey = {
          description = "The metadata key. There may be multiple metadata in a spreadsheet with the same key. Developer metadata must always have a key specified.",
          type = "string",
        },
        metadataValue = {
          description = "Data associated with the metadata's key.",
          type = "string",
        },
        visibility = {
          description = "The metadata visibility. Developer metadata must always have a visibility specified.",
          enum = {
            "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED",
            "DOCUMENT",
            "PROJECT",
          },
          enumDescriptions = {
            "Default value.",
            "Document-visible metadata is accessible from any developer project with access to the document.",
            "Project-visible metadata is only visible to and accessible by the developer project that created the metadata.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeveloperMetadataLocation = {
      description = "A location where metadata may be associated in a spreadsheet.",
      id = "DeveloperMetadataLocation",
      properties = {
        dimensionRange = {
          ["$ref"] = "DimensionRange",
          description = "Represents the row or column when metadata is associated with a dimension. The specified DimensionRange must represent a single row or column; it cannot be unbounded or span multiple rows or columns.",
        },
        locationType = {
          description = "The type of location this object represents. This field is read-only.",
          enum = {
            "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED",
            "ROW",
            "COLUMN",
            "SHEET",
            "SPREADSHEET",
          },
          enumDescriptions = {
            "Default value.",
            "Developer metadata associated on an entire row dimension.",
            "Developer metadata associated on an entire column dimension.",
            "Developer metadata associated on an entire sheet.",
            "Developer metadata associated on the entire spreadsheet.",
          },
          type = "string",
        },
        sheetId = {
          description = "The ID of the sheet when metadata is associated with an entire sheet.",
          format = "int32",
          type = "integer",
        },
        spreadsheet = {
          description = "True when metadata is associated with an entire spreadsheet.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeveloperMetadataLookup = {
      description = "Selects DeveloperMetadata that matches all of the specified fields. For example, if only a metadata ID is specified this considers the DeveloperMetadata with that particular unique ID. If a metadata key is specified, this considers all developer metadata with that key. If a key, visibility, and location type are all specified, this considers all developer metadata with that key and visibility that are associated with a location of that type. In general, this selects all DeveloperMetadata that matches the intersection of all the specified fields; any field or combination of fields may be specified.",
      id = "DeveloperMetadataLookup",
      properties = {
        locationMatchingStrategy = {
          description = "Determines how this lookup matches the location. If this field is specified as EXACT, only developer metadata associated on the exact location specified is matched. If this field is specified to INTERSECTING, developer metadata associated on intersecting locations is also matched. If left unspecified, this field assumes a default value of INTERSECTING. If this field is specified, a metadataLocation must also be specified.",
          enum = {
            "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED",
            "EXACT_LOCATION",
            "INTERSECTING_LOCATION",
          },
          enumDescriptions = {
            "Default value. This value must not be used.",
            "Indicates that a specified location should be matched exactly. For example, if row three were specified as a location this matching strategy would only match developer metadata also associated on row three. Metadata associated on other locations would not be considered.",
            "Indicates that a specified location should match that exact location as well as any intersecting locations. For example, if row three were specified as a location this matching strategy would match developer metadata associated on row three as well as metadata associated on locations that intersect row three. If, for instance, there was developer metadata associated on column B, this matching strategy would also match that location because column B intersects row three.",
          },
          type = "string",
        },
        locationType = {
          description = "Limits the selected developer metadata to those entries which are associated with locations of the specified type. For example, when this field is specified as ROW this lookup only considers developer metadata associated on rows. If the field is left unspecified, all location types are considered. This field cannot be specified as SPREADSHEET when the locationMatchingStrategy is specified as INTERSECTING or when the metadataLocation is specified as a non-spreadsheet location: spreadsheet metadata cannot intersect any other developer metadata location. This field also must be left unspecified when the locationMatchingStrategy is specified as EXACT.",
          enum = {
            "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED",
            "ROW",
            "COLUMN",
            "SHEET",
            "SPREADSHEET",
          },
          enumDescriptions = {
            "Default value.",
            "Developer metadata associated on an entire row dimension.",
            "Developer metadata associated on an entire column dimension.",
            "Developer metadata associated on an entire sheet.",
            "Developer metadata associated on the entire spreadsheet.",
          },
          type = "string",
        },
        metadataId = {
          description = "Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_id.",
          format = "int32",
          type = "integer",
        },
        metadataKey = {
          description = "Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_key.",
          type = "string",
        },
        metadataLocation = {
          ["$ref"] = "DeveloperMetadataLocation",
          description = "Limits the selected developer metadata to those entries associated with the specified location. This field either matches exact locations or all intersecting locations according the specified locationMatchingStrategy.",
        },
        metadataValue = {
          description = "Limits the selected developer metadata to that which has a matching DeveloperMetadata.metadata_value.",
          type = "string",
        },
        visibility = {
          description = "Limits the selected developer metadata to that which has a matching DeveloperMetadata.visibility. If left unspecified, all developer metadata visibile to the requesting project is considered.",
          enum = {
            "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED",
            "DOCUMENT",
            "PROJECT",
          },
          enumDescriptions = {
            "Default value.",
            "Document-visible metadata is accessible from any developer project with access to the document.",
            "Project-visible metadata is only visible to and accessible by the developer project that created the metadata.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DimensionGroup = {
      description = "A group over an interval of rows or columns on a sheet, which can contain or be contained within other groups. A group can be collapsed or expanded as a unit on the sheet.",
      id = "DimensionGroup",
      properties = {
        collapsed = {
          description = "This field is true if this group is collapsed. A collapsed group remains collapsed if an overlapping group at a shallower depth is expanded. A true value does not imply that all dimensions within the group are hidden, since a dimension's visibility can change independently from this group property. However, when this property is updated, all dimensions within it are set to hidden if this field is true, or set to visible if this field is false.",
          type = "boolean",
        },
        depth = {
          description = "The depth of the group, representing how many groups have a range that wholly contains the range of this group.",
          format = "int32",
          type = "integer",
        },
        range = {
          ["$ref"] = "DimensionRange",
          description = "The range over which this group exists.",
        },
      },
      type = "object",
    },
    DimensionProperties = {
      description = "Properties about a dimension.",
      id = "DimensionProperties",
      properties = {
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "Output only. If set, this is a column in a data source sheet.",
          readOnly = true,
        },
        developerMetadata = {
          description = "The developer metadata associated with a single row or column.",
          items = {
            ["$ref"] = "DeveloperMetadata",
          },
          type = "array",
        },
        hiddenByFilter = {
          description = "True if this dimension is being filtered. This field is read-only.",
          type = "boolean",
        },
        hiddenByUser = {
          description = "True if this dimension is explicitly hidden.",
          type = "boolean",
        },
        pixelSize = {
          description = "The height (if a row) or width (if a column) of the dimension in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DimensionRange = {
      description = "A range along a single dimension on a sheet. All indexes are zero-based. Indexes are half open: the start index is inclusive and the end index is exclusive. Missing indexes indicate the range is unbounded on that side.",
      id = "DimensionRange",
      properties = {
        dimension = {
          description = "The dimension of the span.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        endIndex = {
          description = "The end (exclusive) of the span, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
        sheetId = {
          description = "The sheet this span is on.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "The start (inclusive) of the span, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DuplicateFilterViewRequest = {
      description = "Duplicates a particular filter view.",
      id = "DuplicateFilterViewRequest",
      properties = {
        filterId = {
          description = "The ID of the filter being duplicated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DuplicateFilterViewResponse = {
      description = "The result of a filter view being duplicated.",
      id = "DuplicateFilterViewResponse",
      properties = {
        filter = {
          ["$ref"] = "FilterView",
          description = "The newly created filter.",
        },
      },
      type = "object",
    },
    DuplicateSheetRequest = {
      description = "Duplicates the contents of a sheet.",
      id = "DuplicateSheetRequest",
      properties = {
        insertSheetIndex = {
          description = "The zero-based index where the new sheet should be inserted. The index of all sheets after this are incremented.",
          format = "int32",
          type = "integer",
        },
        newSheetId = {
          description = "If set, the ID of the new sheet. If not set, an ID is chosen. If set, the ID must not conflict with any existing sheet ID. If set, it must be non-negative.",
          format = "int32",
          type = "integer",
        },
        newSheetName = {
          description = "The name of the new sheet. If empty, a new name is chosen for you.",
          type = "string",
        },
        sourceSheetId = {
          description = "The sheet to duplicate. If the source sheet is of DATA_SOURCE type, its backing DataSource is also duplicated and associated with the new copy of the sheet. No data execution is triggered, the grid data of this sheet is also copied over but only available after the batch request completes.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DuplicateSheetResponse = {
      description = "The result of duplicating a sheet.",
      id = "DuplicateSheetResponse",
      properties = {
        properties = {
          ["$ref"] = "SheetProperties",
          description = "The properties of the duplicate sheet.",
        },
      },
      type = "object",
    },
    Editors = {
      description = "The editors of a protected range.",
      id = "Editors",
      properties = {
        domainUsersCanEdit = {
          description = "True if anyone in the document's domain has edit access to the protected range. Domain protection is only supported on documents within a domain.",
          type = "boolean",
        },
        groups = {
          description = "The email addresses of groups with edit access to the protected range.",
          items = {
            type = "string",
          },
          type = "array",
        },
        users = {
          description = "The email addresses of users with edit access to the protected range.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EmbeddedChart = {
      description = "A chart embedded in a sheet.",
      id = "EmbeddedChart",
      properties = {
        border = {
          ["$ref"] = "EmbeddedObjectBorder",
          description = "The border of the chart.",
        },
        chartId = {
          description = "The ID of the chart.",
          format = "int32",
          type = "integer",
        },
        position = {
          ["$ref"] = "EmbeddedObjectPosition",
          description = "The position of the chart.",
        },
        spec = {
          ["$ref"] = "ChartSpec",
          description = "The specification of the chart.",
        },
      },
      type = "object",
    },
    EmbeddedObjectBorder = {
      description = "A border along an embedded object.",
      id = "EmbeddedObjectBorder",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "The color of the border. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the border. If color is also set, this field takes precedence.",
        },
      },
      type = "object",
    },
    EmbeddedObjectPosition = {
      description = "The position of an embedded object such as a chart.",
      id = "EmbeddedObjectPosition",
      properties = {
        newSheet = {
          description = "If true, the embedded object is put on a new sheet whose ID is chosen for you. Used only when writing.",
          type = "boolean",
        },
        overlayPosition = {
          ["$ref"] = "OverlayPosition",
          description = "The position at which the object is overlaid on top of a grid.",
        },
        sheetId = {
          description = "The sheet this is on. Set only if the embedded object is on its own sheet. Must be non-negative.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ErrorValue = {
      description = "An error in a cell.",
      id = "ErrorValue",
      properties = {
        message = {
          description = "A message with more information about the error (in the spreadsheet's locale).",
          type = "string",
        },
        type = {
          description = "The type of error.",
          enum = {
            "ERROR_TYPE_UNSPECIFIED",
            "ERROR",
            "NULL_VALUE",
            "DIVIDE_BY_ZERO",
            "VALUE",
            "REF",
            "NAME",
            "NUM",
            "N_A",
            "LOADING",
          },
          enumDescriptions = {
            "The default error type, do not use this.",
            "Corresponds to the `#ERROR!` error.",
            "Corresponds to the `#NULL!` error.",
            "Corresponds to the `#DIV/0` error.",
            "Corresponds to the `#VALUE!` error.",
            "Corresponds to the `#REF!` error.",
            "Corresponds to the `#NAME?` error.",
            "Corresponds to the `#NUM!` error.",
            "Corresponds to the `#N/A` error.",
            "Corresponds to the `Loading...` state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ExtendedValue = {
      description = "The kinds of value that a cell in a spreadsheet can have.",
      id = "ExtendedValue",
      properties = {
        boolValue = {
          description = "Represents a boolean value.",
          type = "boolean",
        },
        errorValue = {
          ["$ref"] = "ErrorValue",
          description = "Represents an error. This field is read-only.",
        },
        formulaValue = {
          description = "Represents a formula.",
          type = "string",
        },
        numberValue = {
          description = "Represents a double value. Note: Dates, Times and DateTimes are represented as doubles in SERIAL_NUMBER format.",
          format = "double",
          type = "number",
        },
        stringValue = {
          description = "Represents a string value. Leading single quotes are not included. For example, if the user typed `'123` into the UI, this would be represented as a `stringValue` of `\"123\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    FilterCriteria = {
      description = "Criteria for showing/hiding rows in a filter or filter view.",
      id = "FilterCriteria",
      properties = {
        condition = {
          ["$ref"] = "BooleanCondition",
          description = "A condition that must be true for values to be shown. (This does not override hidden_values -- if a value is listed there, it will still be hidden.)",
        },
        hiddenValues = {
          description = "Values that should be hidden.",
          items = {
            type = "string",
          },
          type = "array",
        },
        visibleBackgroundColor = {
          ["$ref"] = "Color",
          description = "The background fill color to filter by; only cells with this fill color are shown. Mutually exclusive with visible_foreground_color. Deprecated: Use visible_background_color_style.",
        },
        visibleBackgroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background fill color to filter by; only cells with this fill color are shown. This field is mutually exclusive with visible_foreground_color, and must be set to an RGB-type color. If visible_background_color is also set, this field takes precedence.",
        },
        visibleForegroundColor = {
          ["$ref"] = "Color",
          description = "The foreground color to filter by; only cells with this foreground color are shown. Mutually exclusive with visible_background_color. Deprecated: Use visible_foreground_color_style.",
        },
        visibleForegroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The foreground color to filter by; only cells with this foreground color are shown. This field is mutually exclusive with visible_background_color, and must be set to an RGB-type color. If visible_foreground_color is also set, this field takes precedence.",
        },
      },
      type = "object",
    },
    FilterSpec = {
      description = "The filter criteria associated with a specific column.",
      id = "FilterSpec",
      properties = {
        columnIndex = {
          description = "The column index.",
          format = "int32",
          type = "integer",
        },
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "Reference to a data source column.",
        },
        filterCriteria = {
          ["$ref"] = "FilterCriteria",
          description = "The criteria for the column.",
        },
      },
      type = "object",
    },
    FilterView = {
      description = "A filter view.",
      id = "FilterView",
      properties = {
        criteria = {
          additionalProperties = {
            ["$ref"] = "FilterCriteria",
          },
          description = "The criteria for showing/hiding values per column. The map's key is the column index, and the value is the criteria for that column. This field is deprecated in favor of filter_specs.",
          type = "object",
        },
        filterSpecs = {
          description = "The filter criteria for showing/hiding values per column. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.",
          items = {
            ["$ref"] = "FilterSpec",
          },
          type = "array",
        },
        filterViewId = {
          description = "The ID of the filter view.",
          format = "int32",
          type = "integer",
        },
        namedRangeId = {
          description = "The named range this filter view is backed by, if any. When writing, only one of range or named_range_id may be set.",
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range this filter view covers. When writing, only one of range or named_range_id may be set.",
        },
        sortSpecs = {
          description = "The sort order per column. Later specifications are used when values are equal in the earlier specifications.",
          items = {
            ["$ref"] = "SortSpec",
          },
          type = "array",
        },
        title = {
          description = "The name of the filter view.",
          type = "string",
        },
      },
      type = "object",
    },
    FindReplaceRequest = {
      description = "Finds and replaces data in cells over a range, sheet, or all sheets.",
      id = "FindReplaceRequest",
      properties = {
        allSheets = {
          description = "True to find/replace over all sheets.",
          type = "boolean",
        },
        find = {
          description = "The value to search.",
          type = "string",
        },
        includeFormulas = {
          description = "True if the search should include cells with formulas. False to skip cells with formulas.",
          type = "boolean",
        },
        matchCase = {
          description = "True if the search is case sensitive.",
          type = "boolean",
        },
        matchEntireCell = {
          description = "True if the find value should match the entire cell.",
          type = "boolean",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range to find/replace over.",
        },
        replacement = {
          description = "The value to use as the replacement.",
          type = "string",
        },
        searchByRegex = {
          description = "True if the find value is a regex. The regular expression and replacement should follow Java regex rules at https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html. The replacement string is allowed to refer to capturing groups. For example, if one cell has the contents `\"Google Sheets\"` and another has `\"Google Docs\"`, then searching for `\"o.* (.*)\"` with a replacement of `\"$1 Rocks\"` would change the contents of the cells to `\"GSheets Rocks\"` and `\"GDocs Rocks\"` respectively.",
          type = "boolean",
        },
        sheetId = {
          description = "The sheet to find/replace over.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    FindReplaceResponse = {
      description = "The result of the find/replace.",
      id = "FindReplaceResponse",
      properties = {
        formulasChanged = {
          description = "The number of formula cells changed.",
          format = "int32",
          type = "integer",
        },
        occurrencesChanged = {
          description = "The number of occurrences (possibly multiple within a cell) changed. For example, if replacing `\"e\"` with `\"o\"` in `\"Google Sheets\"`, this would be `\"3\"` because `\"Google Sheets\"` -> `\"Googlo Shoots\"`.",
          format = "int32",
          type = "integer",
        },
        rowsChanged = {
          description = "The number of rows changed.",
          format = "int32",
          type = "integer",
        },
        sheetsChanged = {
          description = "The number of sheets changed.",
          format = "int32",
          type = "integer",
        },
        valuesChanged = {
          description = "The number of non-formula cells changed.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GetSpreadsheetByDataFilterRequest = {
      description = "The request for retrieving a Spreadsheet.",
      id = "GetSpreadsheetByDataFilterRequest",
      properties = {
        dataFilters = {
          description = "The DataFilters used to select which ranges to retrieve from the spreadsheet.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
        includeGridData = {
          description = "True if grid data should be returned. This parameter is ignored if a field mask was set in the request.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GradientRule = {
      description = "A rule that applies a gradient color scale format, based on the interpolation points listed. The format of a cell will vary based on its contents as compared to the values of the interpolation points.",
      id = "GradientRule",
      properties = {
        maxpoint = {
          ["$ref"] = "InterpolationPoint",
          description = "The final interpolation point.",
        },
        midpoint = {
          ["$ref"] = "InterpolationPoint",
          description = "An optional midway interpolation point.",
        },
        minpoint = {
          ["$ref"] = "InterpolationPoint",
          description = "The starting interpolation point.",
        },
      },
      type = "object",
    },
    GridCoordinate = {
      description = "A coordinate in a sheet. All indexes are zero-based.",
      id = "GridCoordinate",
      properties = {
        columnIndex = {
          description = "The column index of the coordinate.",
          format = "int32",
          type = "integer",
        },
        rowIndex = {
          description = "The row index of the coordinate.",
          format = "int32",
          type = "integer",
        },
        sheetId = {
          description = "The sheet this coordinate is on.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GridData = {
      description = "Data in the grid, as well as metadata about the dimensions.",
      id = "GridData",
      properties = {
        columnMetadata = {
          description = "Metadata about the requested columns in the grid, starting with the column in start_column.",
          items = {
            ["$ref"] = "DimensionProperties",
          },
          type = "array",
        },
        rowData = {
          description = "The data in the grid, one entry per row, starting with the row in startRow. The values in RowData will correspond to columns starting at start_column.",
          items = {
            ["$ref"] = "RowData",
          },
          type = "array",
        },
        rowMetadata = {
          description = "Metadata about the requested rows in the grid, starting with the row in start_row.",
          items = {
            ["$ref"] = "DimensionProperties",
          },
          type = "array",
        },
        startColumn = {
          description = "The first column this GridData refers to, zero-based.",
          format = "int32",
          type = "integer",
        },
        startRow = {
          description = "The first row this GridData refers to, zero-based.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GridProperties = {
      description = "Properties of a grid.",
      id = "GridProperties",
      properties = {
        columnCount = {
          description = "The number of columns in the grid.",
          format = "int32",
          type = "integer",
        },
        columnGroupControlAfter = {
          description = "True if the column grouping control toggle is shown after the group.",
          type = "boolean",
        },
        frozenColumnCount = {
          description = "The number of columns that are frozen in the grid.",
          format = "int32",
          type = "integer",
        },
        frozenRowCount = {
          description = "The number of rows that are frozen in the grid.",
          format = "int32",
          type = "integer",
        },
        hideGridlines = {
          description = "True if the grid isn't showing gridlines in the UI.",
          type = "boolean",
        },
        rowCount = {
          description = "The number of rows in the grid.",
          format = "int32",
          type = "integer",
        },
        rowGroupControlAfter = {
          description = "True if the row grouping control toggle is shown after the group.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GridRange = {
      description = "A range on a sheet. All indexes are zero-based. Indexes are half open, i.e. the start index is inclusive and the end index is exclusive -- [start_index, end_index). Missing indexes indicate the range is unbounded on that side. For example, if `\"Sheet1\"` is sheet ID 123456, then: `Sheet1!A1:A1 == sheet_id: 123456, start_row_index: 0, end_row_index: 1, start_column_index: 0, end_column_index: 1` `Sheet1!A3:B4 == sheet_id: 123456, start_row_index: 2, end_row_index: 4, start_column_index: 0, end_column_index: 2` `Sheet1!A:B == sheet_id: 123456, start_column_index: 0, end_column_index: 2` `Sheet1!A5:B == sheet_id: 123456, start_row_index: 4, start_column_index: 0, end_column_index: 2` `Sheet1 == sheet_id: 123456` The start index must always be less than or equal to the end index. If the start index equals the end index, then the range is empty. Empty ranges are typically not meaningful and are usually rendered in the UI as `#REF!`.",
      id = "GridRange",
      properties = {
        endColumnIndex = {
          description = "The end column (exclusive) of the range, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
        endRowIndex = {
          description = "The end row (exclusive) of the range, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
        sheetId = {
          description = "The sheet this range is on.",
          format = "int32",
          type = "integer",
        },
        startColumnIndex = {
          description = "The start column (inclusive) of the range, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
        startRowIndex = {
          description = "The start row (inclusive) of the range, or not set if unbounded.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HistogramChartSpec = {
      description = "A histogram chart. A histogram chart groups data items into bins, displaying each bin as a column of stacked items. Histograms are used to display the distribution of a dataset. Each column of items represents a range into which those items fall. The number of bins can be chosen automatically or specified explicitly.",
      id = "HistogramChartSpec",
      properties = {
        bucketSize = {
          description = "By default the bucket size (the range of values stacked in a single column) is chosen automatically, but it may be overridden here. E.g., A bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0, etc. Cannot be negative. This field is optional.",
          format = "double",
          type = "number",
        },
        legendPosition = {
          description = "The position of the chart legend.",
          enum = {
            "HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED",
            "BOTTOM_LEGEND",
            "LEFT_LEGEND",
            "RIGHT_LEGEND",
            "TOP_LEGEND",
            "NO_LEGEND",
            "INSIDE_LEGEND",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The legend is rendered on the bottom of the chart.",
            "The legend is rendered on the left of the chart.",
            "The legend is rendered on the right of the chart.",
            "The legend is rendered on the top of the chart.",
            "No legend is rendered.",
            "The legend is rendered inside the chart area.",
          },
          type = "string",
        },
        outlierPercentile = {
          description = "The outlier percentile is used to ensure that outliers do not adversely affect the calculation of bucket sizes. For example, setting an outlier percentile of 0.05 indicates that the top and bottom 5% of values when calculating buckets. The values are still included in the chart, they will be added to the first or last buckets instead of their own buckets. Must be between 0.0 and 0.5.",
          format = "double",
          type = "number",
        },
        series = {
          description = "The series for a histogram may be either a single series of values to be bucketed or multiple series, each of the same length, containing the name of the series followed by the values to be bucketed for that series.",
          items = {
            ["$ref"] = "HistogramSeries",
          },
          type = "array",
        },
        showItemDividers = {
          description = "Whether horizontal divider lines should be displayed between items in each column.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HistogramRule = {
      description = "Allows you to organize the numeric values in a source data column into buckets of a constant size. All values from HistogramRule.start to HistogramRule.end are placed into groups of size HistogramRule.interval. In addition, all values below HistogramRule.start are placed in one group, and all values above HistogramRule.end are placed in another. Only HistogramRule.interval is required, though if HistogramRule.start and HistogramRule.end are both provided, HistogramRule.start must be less than HistogramRule.end. For example, a pivot table showing average purchase amount by age that has 50+ rows: +-----+-------------------+ | Age | AVERAGE of Amount | +-----+-------------------+ | 16 | $27.13 | | 17 | $5.24 | | 18 | $20.15 | ... +-----+-------------------+ could be turned into a pivot table that looks like the one below by applying a histogram group rule with a HistogramRule.start of 25, an HistogramRule.interval of 20, and an HistogramRule.end of 65. +-------------+-------------------+ | Grouped Age | AVERAGE of Amount | +-------------+-------------------+ | < 25 | $19.34 | | 25-45 | $31.43 | | 45-65 | $35.87 | | > 65 | $27.55 | +-------------+-------------------+ | Grand Total | $29.12 | +-------------+-------------------+",
      id = "HistogramRule",
      properties = {
        ["end"] = {
          description = "The maximum value at which items are placed into buckets of constant size. Values above end are lumped into a single bucket. This field is optional.",
          format = "double",
          type = "number",
        },
        interval = {
          description = "The size of the buckets that are created. Must be positive.",
          format = "double",
          type = "number",
        },
        start = {
          description = "The minimum value at which items are placed into buckets of constant size. Values below start are lumped into a single bucket. This field is optional.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    HistogramSeries = {
      description = "A histogram series containing the series color and data.",
      id = "HistogramSeries",
      properties = {
        barColor = {
          ["$ref"] = "Color",
          description = "The color of the column representing this series in each bucket. This field is optional. Deprecated: Use bar_color_style.",
        },
        barColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the column representing this series in each bucket. This field is optional. If bar_color is also set, this field takes precedence.",
        },
        data = {
          ["$ref"] = "ChartData",
          description = "The data for this histogram series.",
        },
      },
      type = "object",
    },
    InsertDimensionRequest = {
      description = "Inserts rows or columns in a sheet at a particular index.",
      id = "InsertDimensionRequest",
      properties = {
        inheritFromBefore = {
          description = "Whether dimension properties should be extended from the dimensions before or after the newly inserted dimensions. True to inherit from the dimensions before (in which case the start index must be greater than 0), and false to inherit from the dimensions after. For example, if row index 0 has red background and row index 1 has a green background, then inserting 2 rows at index 1 can inherit either the green or red background. If `inheritFromBefore` is true, the two new rows will be red (because the row before the insertion point was red), whereas if `inheritFromBefore` is false, the two new rows will be green (because the row after the insertion point was green).",
          type = "boolean",
        },
        range = {
          ["$ref"] = "DimensionRange",
          description = "The dimensions to insert. Both the start and end indexes must be bounded.",
        },
      },
      type = "object",
    },
    InsertRangeRequest = {
      description = "Inserts cells into a range, shifting the existing cells over or down.",
      id = "InsertRangeRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range to insert new cells into.",
        },
        shiftDimension = {
          description = "The dimension which will be shifted when inserting cells. If ROWS, existing cells will be shifted down. If COLUMNS, existing cells will be shifted right.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InterpolationPoint = {
      description = "A single interpolation point on a gradient conditional format. These pin the gradient color scale according to the color, type and value chosen.",
      id = "InterpolationPoint",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "The color this interpolation point should use. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color this interpolation point should use. If color is also set, this field takes precedence.",
        },
        type = {
          description = "How the value should be interpreted.",
          enum = {
            "INTERPOLATION_POINT_TYPE_UNSPECIFIED",
            "MIN",
            "MAX",
            "NUMBER",
            "PERCENT",
            "PERCENTILE",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "The interpolation point uses the minimum value in the cells over the range of the conditional format.",
            "The interpolation point uses the maximum value in the cells over the range of the conditional format.",
            "The interpolation point uses exactly the value in InterpolationPoint.value.",
            "The interpolation point is the given percentage over all the cells in the range of the conditional format. This is equivalent to `NUMBER` if the value was: `=(MAX(FLATTEN(range)) * (value / 100)) + (MIN(FLATTEN(range)) * (1 - (value / 100)))` (where errors in the range are ignored when flattening).",
            "The interpolation point is the given percentile over all the cells in the range of the conditional format. This is equivalent to `NUMBER` if the value was: `=PERCENTILE(FLATTEN(range), value / 100)` (where errors in the range are ignored when flattening).",
          },
          type = "string",
        },
        value = {
          description = "The value this interpolation point uses. May be a formula. Unused if type is MIN or MAX.",
          type = "string",
        },
      },
      type = "object",
    },
    Interval = {
      description = "Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.",
      id = "Interval",
      properties = {
        endTime = {
          description = "Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    IterativeCalculationSettings = {
      description = "Settings to control how circular dependencies are resolved with iterative calculation.",
      id = "IterativeCalculationSettings",
      properties = {
        convergenceThreshold = {
          description = "When iterative calculation is enabled and successive results differ by less than this threshold value, the calculation rounds stop.",
          format = "double",
          type = "number",
        },
        maxIterations = {
          description = "When iterative calculation is enabled, the maximum number of calculation rounds to perform.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    KeyValueFormat = {
      description = "Formatting options for key value.",
      id = "KeyValueFormat",
      properties = {
        position = {
          ["$ref"] = "TextPosition",
          description = "Specifies the horizontal text positioning of key value. This field is optional. If not specified, default positioning is used.",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "Text formatting options for key value. The link field is not supported.",
        },
      },
      type = "object",
    },
    LineStyle = {
      description = "Properties that describe the style of a line.",
      id = "LineStyle",
      properties = {
        type = {
          description = "The dash type of the line.",
          enum = {
            "LINE_DASH_TYPE_UNSPECIFIED",
            "INVISIBLE",
            "CUSTOM",
            "SOLID",
            "DOTTED",
            "MEDIUM_DASHED",
            "MEDIUM_DASHED_DOTTED",
            "LONG_DASHED",
            "LONG_DASHED_DOTTED",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "No dash type, which is equivalent to a non-visible line.",
            "A custom dash for a line. Modifying the exact custom dash style is currently unsupported.",
            "A solid line.",
            "A dotted line.",
            "A dashed line where the dashes have \"medium\" length.",
            "A line that alternates between a \"medium\" dash and a dot.",
            "A dashed line where the dashes have \"long\" length.",
            "A line that alternates between a \"long\" dash and a dot.",
          },
          type = "string",
        },
        width = {
          description = "The thickness of the line, in px.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Link = {
      description = "An external or local reference.",
      id = "Link",
      properties = {
        uri = {
          description = "The link identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    ManualRule = {
      description = "Allows you to manually organize the values in a source data column into buckets with names of your choosing. For example, a pivot table that aggregates population by state: +-------+-------------------+ | State | SUM of Population | +-------+-------------------+ | AK | 0.7 | | AL | 4.8 | | AR | 2.9 | ... +-------+-------------------+ could be turned into a pivot table that aggregates population by time zone by providing a list of groups (for example, groupName = 'Central', items = ['AL', 'AR', 'IA', ...]) to a manual group rule. Note that a similar effect could be achieved by adding a time zone column to the source data and adjusting the pivot table. +-----------+-------------------+ | Time Zone | SUM of Population | +-----------+-------------------+ | Central | 106.3 | | Eastern | 151.9 | | Mountain | 17.4 | ... +-----------+-------------------+",
      id = "ManualRule",
      properties = {
        groups = {
          description = "The list of group names and the corresponding items from the source data that map to each group name.",
          items = {
            ["$ref"] = "ManualRuleGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManualRuleGroup = {
      description = "A group name and a list of items from the source data that should be placed in the group with this name.",
      id = "ManualRuleGroup",
      properties = {
        groupName = {
          ["$ref"] = "ExtendedValue",
          description = "The group name, which must be a string. Each group in a given ManualRule must have a unique group name.",
        },
        items = {
          description = "The items in the source data that should be placed into this group. Each item may be a string, number, or boolean. Items may appear in at most one group within a given ManualRule. Items that do not appear in any group will appear on their own.",
          items = {
            ["$ref"] = "ExtendedValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MatchedDeveloperMetadata = {
      description = "A developer metadata entry and the data filters specified in the original request that matched it.",
      id = "MatchedDeveloperMetadata",
      properties = {
        dataFilters = {
          description = "All filters matching the returned developer metadata.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
        developerMetadata = {
          ["$ref"] = "DeveloperMetadata",
          description = "The developer metadata matching the specified filters.",
        },
      },
      type = "object",
    },
    MatchedValueRange = {
      description = "A value range that was matched by one or more data filers.",
      id = "MatchedValueRange",
      properties = {
        dataFilters = {
          description = "The DataFilters from the request that matched the range of values.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
        valueRange = {
          ["$ref"] = "ValueRange",
          description = "The values matched by the DataFilter.",
        },
      },
      type = "object",
    },
    MergeCellsRequest = {
      description = "Merges all cells in the range.",
      id = "MergeCellsRequest",
      properties = {
        mergeType = {
          description = "How the cells should be merged.",
          enum = {
            "MERGE_ALL",
            "MERGE_COLUMNS",
            "MERGE_ROWS",
          },
          enumDescriptions = {
            "Create a single merge from the range",
            "Create a merge for each column in the range",
            "Create a merge for each row in the range",
          },
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range of cells to merge.",
        },
      },
      type = "object",
    },
    MoveDimensionRequest = {
      description = "Moves one or more rows or columns.",
      id = "MoveDimensionRequest",
      properties = {
        destinationIndex = {
          description = "The zero-based start index of where to move the source data to, based on the coordinates *before* the source data is removed from the grid. Existing data will be shifted down or right (depending on the dimension) to make room for the moved dimensions. The source dimensions are removed from the grid, so the the data may end up in a different index than specified. For example, given `A1..A5` of `0, 1, 2, 3, 4` and wanting to move `\"1\"` and `\"2\"` to between `\"3\"` and `\"4\"`, the source would be `ROWS [1..3)`,and the destination index would be `\"4\"` (the zero-based index of row 5). The end result would be `A1..A5` of `0, 3, 1, 2, 4`.",
          format = "int32",
          type = "integer",
        },
        source = {
          ["$ref"] = "DimensionRange",
          description = "The source dimensions to move.",
        },
      },
      type = "object",
    },
    NamedRange = {
      description = "A named range.",
      id = "NamedRange",
      properties = {
        name = {
          description = "The name of the named range.",
          type = "string",
        },
        namedRangeId = {
          description = "The ID of the named range.",
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range this represents.",
        },
      },
      type = "object",
    },
    NumberFormat = {
      description = "The number format of a cell.",
      id = "NumberFormat",
      properties = {
        pattern = {
          description = "Pattern string used for formatting. If not set, a default pattern based on the user's locale will be used if necessary for the given type. See the [Date and Number Formats guide](/sheets/api/guides/formats) for more information about the supported patterns.",
          type = "string",
        },
        type = {
          description = "The type of the number format. When writing, this field must be set.",
          enum = {
            "NUMBER_FORMAT_TYPE_UNSPECIFIED",
            "TEXT",
            "NUMBER",
            "PERCENT",
            "CURRENCY",
            "DATE",
            "TIME",
            "DATE_TIME",
            "SCIENTIFIC",
          },
          enumDescriptions = {
            "The number format is not specified and is based on the contents of the cell. Do not explicitly use this.",
            "Text formatting, e.g `1000.12`",
            "Number formatting, e.g, `1,000.12`",
            "Percent formatting, e.g `10.12%`",
            "Currency formatting, e.g `$1,000.12`",
            "Date formatting, e.g `9/26/2008`",
            "Time formatting, e.g `3:59:00 PM`",
            "Date+Time formatting, e.g `9/26/08 15:59:00`",
            "Scientific number formatting, e.g `1.01E+03`",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OrgChartSpec = {
      description = "An org chart. Org charts require a unique set of labels in labels and may optionally include parent_labels and tooltips. parent_labels contain, for each node, the label identifying the parent node. tooltips contain, for each node, an optional tooltip. For example, to describe an OrgChart with Alice as the CEO, Bob as the President (reporting to Alice) and Cathy as VP of Sales (also reporting to Alice), have labels contain \"Alice\", \"Bob\", \"Cathy\", parent_labels contain \"\", \"Alice\", \"Alice\" and tooltips contain \"CEO\", \"President\", \"VP Sales\".",
      id = "OrgChartSpec",
      properties = {
        labels = {
          ["$ref"] = "ChartData",
          description = "The data containing the labels for all the nodes in the chart. Labels must be unique.",
        },
        nodeColor = {
          ["$ref"] = "Color",
          description = "The color of the org chart nodes. Deprecated: Use node_color_style.",
        },
        nodeColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the org chart nodes. If node_color is also set, this field takes precedence.",
        },
        nodeSize = {
          description = "The size of the org chart nodes.",
          enum = {
            "ORG_CHART_LABEL_SIZE_UNSPECIFIED",
            "SMALL",
            "MEDIUM",
            "LARGE",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The small org chart node size.",
            "The medium org chart node size.",
            "The large org chart node size.",
          },
          type = "string",
        },
        parentLabels = {
          ["$ref"] = "ChartData",
          description = "The data containing the label of the parent for the corresponding node. A blank value indicates that the node has no parent and is a top-level node. This field is optional.",
        },
        selectedNodeColor = {
          ["$ref"] = "Color",
          description = "The color of the selected org chart nodes. Deprecated: Use selected_node_color_style.",
        },
        selectedNodeColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the selected org chart nodes. If selected_node_color is also set, this field takes precedence.",
        },
        tooltips = {
          ["$ref"] = "ChartData",
          description = "The data containing the tooltip for the corresponding node. A blank value results in no tooltip being displayed for the node. This field is optional.",
        },
      },
      type = "object",
    },
    OverlayPosition = {
      description = "The location an object is overlaid on top of a grid.",
      id = "OverlayPosition",
      properties = {
        anchorCell = {
          ["$ref"] = "GridCoordinate",
          description = "The cell the object is anchored to.",
        },
        heightPixels = {
          description = "The height of the object, in pixels. Defaults to 371.",
          format = "int32",
          type = "integer",
        },
        offsetXPixels = {
          description = "The horizontal offset, in pixels, that the object is offset from the anchor cell.",
          format = "int32",
          type = "integer",
        },
        offsetYPixels = {
          description = "The vertical offset, in pixels, that the object is offset from the anchor cell.",
          format = "int32",
          type = "integer",
        },
        widthPixels = {
          description = "The width of the object, in pixels. Defaults to 600.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Padding = {
      description = "The amount of padding around the cell, in pixels. When updating padding, every field must be specified.",
      id = "Padding",
      properties = {
        bottom = {
          description = "The bottom padding of the cell.",
          format = "int32",
          type = "integer",
        },
        left = {
          description = "The left padding of the cell.",
          format = "int32",
          type = "integer",
        },
        right = {
          description = "The right padding of the cell.",
          format = "int32",
          type = "integer",
        },
        top = {
          description = "The top padding of the cell.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PasteDataRequest = {
      description = "Inserts data into the spreadsheet starting at the specified coordinate.",
      id = "PasteDataRequest",
      properties = {
        coordinate = {
          ["$ref"] = "GridCoordinate",
          description = "The coordinate at which the data should start being inserted.",
        },
        data = {
          description = "The data to insert.",
          type = "string",
        },
        delimiter = {
          description = "The delimiter in the data.",
          type = "string",
        },
        html = {
          description = "True if the data is HTML.",
          type = "boolean",
        },
        type = {
          description = "How the data should be pasted.",
          enum = {
            "PASTE_NORMAL",
            "PASTE_VALUES",
            "PASTE_FORMAT",
            "PASTE_NO_BORDERS",
            "PASTE_FORMULA",
            "PASTE_DATA_VALIDATION",
            "PASTE_CONDITIONAL_FORMATTING",
          },
          enumDescriptions = {
            "Paste values, formulas, formats, and merges.",
            "Paste the values ONLY without formats, formulas, or merges.",
            "Paste the format and data validation only.",
            "Like `PASTE_NORMAL` but without borders.",
            "Paste the formulas only.",
            "Paste the data validation only.",
            "Paste the conditional formatting rules only.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PieChartSpec = {
      description = "A pie chart.",
      id = "PieChartSpec",
      properties = {
        domain = {
          ["$ref"] = "ChartData",
          description = "The data that covers the domain of the pie chart.",
        },
        legendPosition = {
          description = "Where the legend of the pie chart should be drawn.",
          enum = {
            "PIE_CHART_LEGEND_POSITION_UNSPECIFIED",
            "BOTTOM_LEGEND",
            "LEFT_LEGEND",
            "RIGHT_LEGEND",
            "TOP_LEGEND",
            "NO_LEGEND",
            "LABELED_LEGEND",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The legend is rendered on the bottom of the chart.",
            "The legend is rendered on the left of the chart.",
            "The legend is rendered on the right of the chart.",
            "The legend is rendered on the top of the chart.",
            "No legend is rendered.",
            "Each pie slice has a label attached to it.",
          },
          type = "string",
        },
        pieHole = {
          description = "The size of the hole in the pie chart.",
          format = "double",
          type = "number",
        },
        series = {
          ["$ref"] = "ChartData",
          description = "The data that covers the one and only series of the pie chart.",
        },
        threeDimensional = {
          description = "True if the pie is three dimensional.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PivotFilterCriteria = {
      description = "Criteria for showing/hiding rows in a pivot table.",
      id = "PivotFilterCriteria",
      properties = {
        condition = {
          ["$ref"] = "BooleanCondition",
          description = "A condition that must be true for values to be shown. (`visibleValues` does not override this -- even if a value is listed there, it is still hidden if it does not meet the condition.) Condition values that refer to ranges in A1-notation are evaluated relative to the pivot table sheet. References are treated absolutely, so are not filled down the pivot table. For example, a condition value of `=A1` on \"Pivot Table 1\" is treated as `'Pivot Table 1'!$A$1`. The source data of the pivot table can be referenced by column header name. For example, if the source data has columns named \"Revenue\" and \"Cost\" and a condition is applied to the \"Revenue\" column with type `NUMBER_GREATER` and value `=Cost`, then only columns where \"Revenue\" > \"Cost\" are included.",
        },
        visibleByDefault = {
          description = "Whether values are visible by default. If true, the visible_values are ignored, all values that meet condition (if specified) are shown. If false, values that are both in visible_values and meet condition are shown.",
          type = "boolean",
        },
        visibleValues = {
          description = "Values that should be included. Values not listed here are excluded.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PivotFilterSpec = {
      description = "The pivot table filter criteria associated with a specific source column offset.",
      id = "PivotFilterSpec",
      properties = {
        columnOffsetIndex = {
          description = "The column offset of the source range.",
          format = "int32",
          type = "integer",
        },
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "The reference to the data source column.",
        },
        filterCriteria = {
          ["$ref"] = "PivotFilterCriteria",
          description = "The criteria for the column.",
        },
      },
      type = "object",
    },
    PivotGroup = {
      description = "A single grouping (either row or column) in a pivot table.",
      id = "PivotGroup",
      properties = {
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "The reference to the data source column this grouping is based on.",
        },
        groupLimit = {
          ["$ref"] = "PivotGroupLimit",
          description = "The count limit on rows or columns to apply to this pivot group.",
        },
        groupRule = {
          ["$ref"] = "PivotGroupRule",
          description = "The group rule to apply to this row/column group.",
        },
        label = {
          description = "The labels to use for the row/column groups which can be customized. For example, in the following pivot table, the row label is `Region` (which could be renamed to `State`) and the column label is `Product` (which could be renamed `Item`). Pivot tables created before December 2017 do not have header labels. If you'd like to add header labels to an existing pivot table, please delete the existing pivot table and then create a new pivot table with same parameters. +--------------+---------+-------+ | SUM of Units | Product | | | Region | Pen | Paper | +--------------+---------+-------+ | New York | 345 | 98 | | Oregon | 234 | 123 | | Tennessee | 531 | 415 | +--------------+---------+-------+ | Grand Total | 1110 | 636 | +--------------+---------+-------+",
          type = "string",
        },
        repeatHeadings = {
          description = "True if the headings in this pivot group should be repeated. This is only valid for row groupings and is ignored by columns. By default, we minimize repetition of headings by not showing higher level headings where they are the same. For example, even though the third row below corresponds to \"Q1 Mar\", \"Q1\" is not shown because it is redundant with previous rows. Setting repeat_headings to true would cause \"Q1\" to be repeated for \"Feb\" and \"Mar\". +--------------+ | Q1 | Jan | | | Feb | | | Mar | +--------+-----+ | Q1 Total | +--------------+",
          type = "boolean",
        },
        showTotals = {
          description = "True if the pivot table should include the totals for this grouping.",
          type = "boolean",
        },
        sortOrder = {
          description = "The order the values in this group should be sorted.",
          enum = {
            "SORT_ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Default value, do not use this.",
            "Sort ascending.",
            "Sort descending.",
          },
          type = "string",
        },
        sourceColumnOffset = {
          description = "The column offset of the source range that this grouping is based on. For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0` means this group refers to column `C`, whereas the offset `1` would refer to column `D`.",
          format = "int32",
          type = "integer",
        },
        valueBucket = {
          ["$ref"] = "PivotGroupSortValueBucket",
          description = "The bucket of the opposite pivot group to sort by. If not specified, sorting is alphabetical by this group's values.",
        },
        valueMetadata = {
          description = "Metadata about values in the grouping.",
          items = {
            ["$ref"] = "PivotGroupValueMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PivotGroupLimit = {
      description = "The count limit on rows or columns in the pivot group.",
      id = "PivotGroupLimit",
      properties = {
        applyOrder = {
          description = "The order in which the group limit is applied to the pivot table. Pivot group limits are applied from lower to higher order number. Order numbers are normalized to consecutive integers from 0. For write request, to fully customize the applying orders, all pivot group limits should have this field set with an unique number. Otherwise, the order is determined by the index in the PivotTable.rows list and then the PivotTable.columns list.",
          format = "int32",
          type = "integer",
        },
        countLimit = {
          description = "The count limit.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PivotGroupRule = {
      description = "An optional setting on a PivotGroup that defines buckets for the values in the source data column rather than breaking out each individual value. Only one PivotGroup with a group rule may be added for each column in the source data, though on any given column you may add both a PivotGroup that has a rule and a PivotGroup that does not.",
      id = "PivotGroupRule",
      properties = {
        dateTimeRule = {
          ["$ref"] = "DateTimeRule",
          description = "A DateTimeRule.",
        },
        histogramRule = {
          ["$ref"] = "HistogramRule",
          description = "A HistogramRule.",
        },
        manualRule = {
          ["$ref"] = "ManualRule",
          description = "A ManualRule.",
        },
      },
      type = "object",
    },
    PivotGroupSortValueBucket = {
      description = "Information about which values in a pivot group should be used for sorting.",
      id = "PivotGroupSortValueBucket",
      properties = {
        buckets = {
          description = "Determines the bucket from which values are chosen to sort. For example, in a pivot table with one row group & two column groups, the row group can list up to two values. The first value corresponds to a value within the first column group, and the second value corresponds to a value in the second column group. If no values are listed, this would indicate that the row should be sorted according to the \"Grand Total\" over the column groups. If a single value is listed, this would correspond to using the \"Total\" of that bucket.",
          items = {
            ["$ref"] = "ExtendedValue",
          },
          type = "array",
        },
        valuesIndex = {
          description = "The offset in the PivotTable.values list which the values in this grouping should be sorted by.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PivotGroupValueMetadata = {
      description = "Metadata about a value in a pivot grouping.",
      id = "PivotGroupValueMetadata",
      properties = {
        collapsed = {
          description = "True if the data corresponding to the value is collapsed.",
          type = "boolean",
        },
        value = {
          ["$ref"] = "ExtendedValue",
          description = "The calculated value the metadata corresponds to. (Note that formulaValue is not valid, because the values will be calculated.)",
        },
      },
      type = "object",
    },
    PivotTable = {
      description = "A pivot table.",
      id = "PivotTable",
      properties = {
        columns = {
          description = "Each column grouping in the pivot table.",
          items = {
            ["$ref"] = "PivotGroup",
          },
          type = "array",
        },
        criteria = {
          additionalProperties = {
            ["$ref"] = "PivotFilterCriteria",
          },
          description = "An optional mapping of filters per source column offset. The filters are applied before aggregating data into the pivot table. The map's key is the column offset of the source range that you want to filter, and the value is the criteria for that column. For example, if the source was `C10:E15`, a key of `0` will have the filter for column `C`, whereas the key `1` is for column `D`. This field is deprecated in favor of filter_specs.",
          type = "object",
        },
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "Output only. The data execution status for data source pivot tables.",
          readOnly = true,
        },
        dataSourceId = {
          description = "The ID of the data source the pivot table is reading data from.",
          type = "string",
        },
        filterSpecs = {
          description = "The filters applied to the source columns before aggregating data for the pivot table. Both criteria and filter_specs are populated in responses. If both fields are specified in an update request, this field takes precedence.",
          items = {
            ["$ref"] = "PivotFilterSpec",
          },
          type = "array",
        },
        rows = {
          description = "Each row grouping in the pivot table.",
          items = {
            ["$ref"] = "PivotGroup",
          },
          type = "array",
        },
        source = {
          ["$ref"] = "GridRange",
          description = "The range the pivot table is reading data from.",
        },
        valueLayout = {
          description = "Whether values should be listed horizontally (as columns) or vertically (as rows).",
          enum = {
            "HORIZONTAL",
            "VERTICAL",
          },
          enumDescriptions = {
            "Values are laid out horizontally (as columns).",
            "Values are laid out vertically (as rows).",
          },
          type = "string",
        },
        values = {
          description = "A list of values to include in the pivot table.",
          items = {
            ["$ref"] = "PivotValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PivotValue = {
      description = "The definition of how a value in a pivot table should be calculated.",
      id = "PivotValue",
      properties = {
        calculatedDisplayType = {
          description = "If specified, indicates that pivot values should be displayed as the result of a calculation with another pivot value. For example, if calculated_display_type is specified as PERCENT_OF_GRAND_TOTAL, all the pivot values are displayed as the percentage of the grand total. In the Sheets editor, this is referred to as \"Show As\" in the value section of a pivot table.",
          enum = {
            "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED",
            "PERCENT_OF_ROW_TOTAL",
            "PERCENT_OF_COLUMN_TOTAL",
            "PERCENT_OF_GRAND_TOTAL",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Shows the pivot values as percentage of the row total values.",
            "Shows the pivot values as percentage of the column total values.",
            "Shows the pivot values as percentage of the grand total values.",
          },
          type = "string",
        },
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "The reference to the data source column that this value reads from.",
        },
        formula = {
          description = "A custom formula to calculate the value. The formula must start with an `=` character.",
          type = "string",
        },
        name = {
          description = "A name to use for the value.",
          type = "string",
        },
        sourceColumnOffset = {
          description = "The column offset of the source range that this value reads from. For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0` means this value refers to column `C`, whereas the offset `1` would refer to column `D`.",
          format = "int32",
          type = "integer",
        },
        summarizeFunction = {
          description = "A function to summarize the value. If formula is set, the only supported values are SUM and CUSTOM. If sourceColumnOffset is set, then `CUSTOM` is not supported.",
          enum = {
            "PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED",
            "SUM",
            "COUNTA",
            "COUNT",
            "COUNTUNIQUE",
            "AVERAGE",
            "MAX",
            "MIN",
            "MEDIAN",
            "PRODUCT",
            "STDEV",
            "STDEVP",
            "VAR",
            "VARP",
            "CUSTOM",
          },
          enumDescriptions = {
            "The default, do not use.",
            "Corresponds to the `SUM` function.",
            "Corresponds to the `COUNTA` function.",
            "Corresponds to the `COUNT` function.",
            "Corresponds to the `COUNTUNIQUE` function.",
            "Corresponds to the `AVERAGE` function.",
            "Corresponds to the `MAX` function.",
            "Corresponds to the `MIN` function.",
            "Corresponds to the `MEDIAN` function.",
            "Corresponds to the `PRODUCT` function.",
            "Corresponds to the `STDEV` function.",
            "Corresponds to the `STDEVP` function.",
            "Corresponds to the `VAR` function.",
            "Corresponds to the `VARP` function.",
            "Indicates the formula should be used as-is. Only valid if PivotValue.formula was set.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PointStyle = {
      description = "The style of a point on the chart.",
      id = "PointStyle",
      properties = {
        shape = {
          description = "The point shape. If empty or unspecified, a default shape is used.",
          enum = {
            "POINT_SHAPE_UNSPECIFIED",
            "CIRCLE",
            "DIAMOND",
            "HEXAGON",
            "PENTAGON",
            "SQUARE",
            "STAR",
            "TRIANGLE",
            "X_MARK",
          },
          enumDescriptions = {
            "Default value.",
            "A circle shape.",
            "A diamond shape.",
            "A hexagon shape.",
            "A pentagon shape.",
            "A square shape.",
            "A star shape.",
            "A triangle shape.",
            "An x-mark shape.",
          },
          type = "string",
        },
        size = {
          description = "The point size. If empty, a default size is used.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProtectedRange = {
      description = "A protected range.",
      id = "ProtectedRange",
      properties = {
        description = {
          description = "The description of this protected range.",
          type = "string",
        },
        editors = {
          ["$ref"] = "Editors",
          description = "The users and groups with edit access to the protected range. This field is only visible to users with edit access to the protected range and the document. Editors are not supported with warning_only protection.",
        },
        namedRangeId = {
          description = "The named range this protected range is backed by, if any. When writing, only one of range or named_range_id may be set.",
          type = "string",
        },
        protectedRangeId = {
          description = "The ID of the protected range. This field is read-only.",
          format = "int32",
          type = "integer",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range that is being protected. The range may be fully unbounded, in which case this is considered a protected sheet. When writing, only one of range or named_range_id may be set.",
        },
        requestingUserCanEdit = {
          description = "True if the user who requested this protected range can edit the protected area. This field is read-only.",
          type = "boolean",
        },
        unprotectedRanges = {
          description = "The list of unprotected ranges within a protected sheet. Unprotected ranges are only supported on protected sheets.",
          items = {
            ["$ref"] = "GridRange",
          },
          type = "array",
        },
        warningOnly = {
          description = "True if this protected range will show a warning when editing. Warning-based protection means that every user can edit data in the protected range, except editing will prompt a warning asking the user to confirm the edit. When writing: if this field is true, then editors is ignored. Additionally, if this field is changed from true to false and the `editors` field is not set (nor included in the field mask), then the editors will be set to all the editors in the document.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RandomizeRangeRequest = {
      description = "Randomizes the order of the rows in a range.",
      id = "RandomizeRangeRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range to randomize.",
        },
      },
      type = "object",
    },
    RefreshDataSourceObjectExecutionStatus = {
      description = "The execution status of refreshing one data source object.",
      id = "RefreshDataSourceObjectExecutionStatus",
      properties = {
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "The data execution status.",
        },
        reference = {
          ["$ref"] = "DataSourceObjectReference",
          description = "Reference to a data source object being refreshed.",
        },
      },
      type = "object",
    },
    RefreshDataSourceRequest = {
      description = "Refreshes one or multiple data source objects in the spreadsheet by the specified references. The request requires an additional `bigquery.readonly` OAuth scope. If there are multiple refresh requests referencing the same data source objects in one batch, only the last refresh request is processed, and all those requests will have the same response accordingly.",
      id = "RefreshDataSourceRequest",
      properties = {
        dataSourceId = {
          description = "Reference to a DataSource. If specified, refreshes all associated data source objects for the data source.",
          type = "string",
        },
        force = {
          description = "Refreshes the data source objects regardless of the current state. If not set and a referenced data source object was in error state, the refresh will fail immediately.",
          type = "boolean",
        },
        isAll = {
          description = "Refreshes all existing data source objects in the spreadsheet.",
          type = "boolean",
        },
        references = {
          ["$ref"] = "DataSourceObjectReferences",
          description = "References to data source objects to refresh.",
        },
      },
      type = "object",
    },
    RefreshDataSourceResponse = {
      description = "The response from refreshing one or multiple data source objects.",
      id = "RefreshDataSourceResponse",
      properties = {
        statuses = {
          description = "All the refresh status for the data source object references specified in the request. If is_all is specified, the field contains only those in failure status.",
          items = {
            ["$ref"] = "RefreshDataSourceObjectExecutionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RepeatCellRequest = {
      description = "Updates all cells in the range to the values in the given Cell object. Only the fields listed in the fields field are updated; others are unchanged. If writing a cell with a formula, the formula's ranges will automatically increment for each field in the range. For example, if writing a cell with formula `=A1` into range B2:C4, B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`, C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`. To keep the formula's ranges static, use the `$` indicator. For example, use the formula `=$A$1` to prevent both the row and the column from incrementing.",
      id = "RepeatCellRequest",
      properties = {
        cell = {
          ["$ref"] = "CellData",
          description = "The data to write.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `cell` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range to repeat the cell in.",
        },
      },
      type = "object",
    },
    Request = {
      description = "A single kind of update to apply to a spreadsheet.",
      id = "Request",
      properties = {
        addBanding = {
          ["$ref"] = "AddBandingRequest",
          description = "Adds a new banded range",
        },
        addChart = {
          ["$ref"] = "AddChartRequest",
          description = "Adds a chart.",
        },
        addConditionalFormatRule = {
          ["$ref"] = "AddConditionalFormatRuleRequest",
          description = "Adds a new conditional format rule.",
        },
        addDataSource = {
          ["$ref"] = "AddDataSourceRequest",
          description = "Adds a data source.",
        },
        addDimensionGroup = {
          ["$ref"] = "AddDimensionGroupRequest",
          description = "Creates a group over the specified range.",
        },
        addFilterView = {
          ["$ref"] = "AddFilterViewRequest",
          description = "Adds a filter view.",
        },
        addNamedRange = {
          ["$ref"] = "AddNamedRangeRequest",
          description = "Adds a named range.",
        },
        addProtectedRange = {
          ["$ref"] = "AddProtectedRangeRequest",
          description = "Adds a protected range.",
        },
        addSheet = {
          ["$ref"] = "AddSheetRequest",
          description = "Adds a sheet.",
        },
        addSlicer = {
          ["$ref"] = "AddSlicerRequest",
          description = "Adds a slicer.",
        },
        appendCells = {
          ["$ref"] = "AppendCellsRequest",
          description = "Appends cells after the last row with data in a sheet.",
        },
        appendDimension = {
          ["$ref"] = "AppendDimensionRequest",
          description = "Appends dimensions to the end of a sheet.",
        },
        autoFill = {
          ["$ref"] = "AutoFillRequest",
          description = "Automatically fills in more data based on existing data.",
        },
        autoResizeDimensions = {
          ["$ref"] = "AutoResizeDimensionsRequest",
          description = "Automatically resizes one or more dimensions based on the contents of the cells in that dimension.",
        },
        clearBasicFilter = {
          ["$ref"] = "ClearBasicFilterRequest",
          description = "Clears the basic filter on a sheet.",
        },
        copyPaste = {
          ["$ref"] = "CopyPasteRequest",
          description = "Copies data from one area and pastes it to another.",
        },
        createDeveloperMetadata = {
          ["$ref"] = "CreateDeveloperMetadataRequest",
          description = "Creates new developer metadata",
        },
        cutPaste = {
          ["$ref"] = "CutPasteRequest",
          description = "Cuts data from one area and pastes it to another.",
        },
        deleteBanding = {
          ["$ref"] = "DeleteBandingRequest",
          description = "Removes a banded range",
        },
        deleteConditionalFormatRule = {
          ["$ref"] = "DeleteConditionalFormatRuleRequest",
          description = "Deletes an existing conditional format rule.",
        },
        deleteDataSource = {
          ["$ref"] = "DeleteDataSourceRequest",
          description = "Deletes a data source.",
        },
        deleteDeveloperMetadata = {
          ["$ref"] = "DeleteDeveloperMetadataRequest",
          description = "Deletes developer metadata",
        },
        deleteDimension = {
          ["$ref"] = "DeleteDimensionRequest",
          description = "Deletes rows or columns in a sheet.",
        },
        deleteDimensionGroup = {
          ["$ref"] = "DeleteDimensionGroupRequest",
          description = "Deletes a group over the specified range.",
        },
        deleteDuplicates = {
          ["$ref"] = "DeleteDuplicatesRequest",
          description = "Removes rows containing duplicate values in specified columns of a cell range.",
        },
        deleteEmbeddedObject = {
          ["$ref"] = "DeleteEmbeddedObjectRequest",
          description = "Deletes an embedded object (e.g, chart, image) in a sheet.",
        },
        deleteFilterView = {
          ["$ref"] = "DeleteFilterViewRequest",
          description = "Deletes a filter view from a sheet.",
        },
        deleteNamedRange = {
          ["$ref"] = "DeleteNamedRangeRequest",
          description = "Deletes a named range.",
        },
        deleteProtectedRange = {
          ["$ref"] = "DeleteProtectedRangeRequest",
          description = "Deletes a protected range.",
        },
        deleteRange = {
          ["$ref"] = "DeleteRangeRequest",
          description = "Deletes a range of cells from a sheet, shifting the remaining cells.",
        },
        deleteSheet = {
          ["$ref"] = "DeleteSheetRequest",
          description = "Deletes a sheet.",
        },
        duplicateFilterView = {
          ["$ref"] = "DuplicateFilterViewRequest",
          description = "Duplicates a filter view.",
        },
        duplicateSheet = {
          ["$ref"] = "DuplicateSheetRequest",
          description = "Duplicates a sheet.",
        },
        findReplace = {
          ["$ref"] = "FindReplaceRequest",
          description = "Finds and replaces occurrences of some text with other text.",
        },
        insertDimension = {
          ["$ref"] = "InsertDimensionRequest",
          description = "Inserts new rows or columns in a sheet.",
        },
        insertRange = {
          ["$ref"] = "InsertRangeRequest",
          description = "Inserts new cells in a sheet, shifting the existing cells.",
        },
        mergeCells = {
          ["$ref"] = "MergeCellsRequest",
          description = "Merges cells together.",
        },
        moveDimension = {
          ["$ref"] = "MoveDimensionRequest",
          description = "Moves rows or columns to another location in a sheet.",
        },
        pasteData = {
          ["$ref"] = "PasteDataRequest",
          description = "Pastes data (HTML or delimited) into a sheet.",
        },
        randomizeRange = {
          ["$ref"] = "RandomizeRangeRequest",
          description = "Randomizes the order of the rows in a range.",
        },
        refreshDataSource = {
          ["$ref"] = "RefreshDataSourceRequest",
          description = "Refreshs one or multiple data sources and associated dbobjects.",
        },
        repeatCell = {
          ["$ref"] = "RepeatCellRequest",
          description = "Repeats a single cell across a range.",
        },
        setBasicFilter = {
          ["$ref"] = "SetBasicFilterRequest",
          description = "Sets the basic filter on a sheet.",
        },
        setDataValidation = {
          ["$ref"] = "SetDataValidationRequest",
          description = "Sets data validation for one or more cells.",
        },
        sortRange = {
          ["$ref"] = "SortRangeRequest",
          description = "Sorts data in a range.",
        },
        textToColumns = {
          ["$ref"] = "TextToColumnsRequest",
          description = "Converts a column of text into many columns of text.",
        },
        trimWhitespace = {
          ["$ref"] = "TrimWhitespaceRequest",
          description = "Trims cells of whitespace (such as spaces, tabs, or new lines).",
        },
        unmergeCells = {
          ["$ref"] = "UnmergeCellsRequest",
          description = "Unmerges merged cells.",
        },
        updateBanding = {
          ["$ref"] = "UpdateBandingRequest",
          description = "Updates a banded range",
        },
        updateBorders = {
          ["$ref"] = "UpdateBordersRequest",
          description = "Updates the borders in a range of cells.",
        },
        updateCells = {
          ["$ref"] = "UpdateCellsRequest",
          description = "Updates many cells at once.",
        },
        updateChartSpec = {
          ["$ref"] = "UpdateChartSpecRequest",
          description = "Updates a chart's specifications.",
        },
        updateConditionalFormatRule = {
          ["$ref"] = "UpdateConditionalFormatRuleRequest",
          description = "Updates an existing conditional format rule.",
        },
        updateDataSource = {
          ["$ref"] = "UpdateDataSourceRequest",
          description = "Updates a data source.",
        },
        updateDeveloperMetadata = {
          ["$ref"] = "UpdateDeveloperMetadataRequest",
          description = "Updates an existing developer metadata entry",
        },
        updateDimensionGroup = {
          ["$ref"] = "UpdateDimensionGroupRequest",
          description = "Updates the state of the specified group.",
        },
        updateDimensionProperties = {
          ["$ref"] = "UpdateDimensionPropertiesRequest",
          description = "Updates dimensions' properties.",
        },
        updateEmbeddedObjectBorder = {
          ["$ref"] = "UpdateEmbeddedObjectBorderRequest",
          description = "Updates an embedded object's border.",
        },
        updateEmbeddedObjectPosition = {
          ["$ref"] = "UpdateEmbeddedObjectPositionRequest",
          description = "Updates an embedded object's (e.g. chart, image) position.",
        },
        updateFilterView = {
          ["$ref"] = "UpdateFilterViewRequest",
          description = "Updates the properties of a filter view.",
        },
        updateNamedRange = {
          ["$ref"] = "UpdateNamedRangeRequest",
          description = "Updates a named range.",
        },
        updateProtectedRange = {
          ["$ref"] = "UpdateProtectedRangeRequest",
          description = "Updates a protected range.",
        },
        updateSheetProperties = {
          ["$ref"] = "UpdateSheetPropertiesRequest",
          description = "Updates a sheet's properties.",
        },
        updateSlicerSpec = {
          ["$ref"] = "UpdateSlicerSpecRequest",
          description = "Updates a slicer's specifications.",
        },
        updateSpreadsheetProperties = {
          ["$ref"] = "UpdateSpreadsheetPropertiesRequest",
          description = "Updates the spreadsheet's properties.",
        },
      },
      type = "object",
    },
    Response = {
      description = "A single response from an update.",
      id = "Response",
      properties = {
        addBanding = {
          ["$ref"] = "AddBandingResponse",
          description = "A reply from adding a banded range.",
        },
        addChart = {
          ["$ref"] = "AddChartResponse",
          description = "A reply from adding a chart.",
        },
        addDataSource = {
          ["$ref"] = "AddDataSourceResponse",
          description = "A reply from adding a data source.",
        },
        addDimensionGroup = {
          ["$ref"] = "AddDimensionGroupResponse",
          description = "A reply from adding a dimension group.",
        },
        addFilterView = {
          ["$ref"] = "AddFilterViewResponse",
          description = "A reply from adding a filter view.",
        },
        addNamedRange = {
          ["$ref"] = "AddNamedRangeResponse",
          description = "A reply from adding a named range.",
        },
        addProtectedRange = {
          ["$ref"] = "AddProtectedRangeResponse",
          description = "A reply from adding a protected range.",
        },
        addSheet = {
          ["$ref"] = "AddSheetResponse",
          description = "A reply from adding a sheet.",
        },
        addSlicer = {
          ["$ref"] = "AddSlicerResponse",
          description = "A reply from adding a slicer.",
        },
        createDeveloperMetadata = {
          ["$ref"] = "CreateDeveloperMetadataResponse",
          description = "A reply from creating a developer metadata entry.",
        },
        deleteConditionalFormatRule = {
          ["$ref"] = "DeleteConditionalFormatRuleResponse",
          description = "A reply from deleting a conditional format rule.",
        },
        deleteDeveloperMetadata = {
          ["$ref"] = "DeleteDeveloperMetadataResponse",
          description = "A reply from deleting a developer metadata entry.",
        },
        deleteDimensionGroup = {
          ["$ref"] = "DeleteDimensionGroupResponse",
          description = "A reply from deleting a dimension group.",
        },
        deleteDuplicates = {
          ["$ref"] = "DeleteDuplicatesResponse",
          description = "A reply from removing rows containing duplicate values.",
        },
        duplicateFilterView = {
          ["$ref"] = "DuplicateFilterViewResponse",
          description = "A reply from duplicating a filter view.",
        },
        duplicateSheet = {
          ["$ref"] = "DuplicateSheetResponse",
          description = "A reply from duplicating a sheet.",
        },
        findReplace = {
          ["$ref"] = "FindReplaceResponse",
          description = "A reply from doing a find/replace.",
        },
        refreshDataSource = {
          ["$ref"] = "RefreshDataSourceResponse",
          description = "A reply from refreshing data source objects.",
        },
        trimWhitespace = {
          ["$ref"] = "TrimWhitespaceResponse",
          description = "A reply from trimming whitespace.",
        },
        updateConditionalFormatRule = {
          ["$ref"] = "UpdateConditionalFormatRuleResponse",
          description = "A reply from updating a conditional format rule.",
        },
        updateDataSource = {
          ["$ref"] = "UpdateDataSourceResponse",
          description = "A reply from updating a data source.",
        },
        updateDeveloperMetadata = {
          ["$ref"] = "UpdateDeveloperMetadataResponse",
          description = "A reply from updating a developer metadata entry.",
        },
        updateEmbeddedObjectPosition = {
          ["$ref"] = "UpdateEmbeddedObjectPositionResponse",
          description = "A reply from updating an embedded object's position.",
        },
      },
      type = "object",
    },
    RowData = {
      description = "Data about each cell in a row.",
      id = "RowData",
      properties = {
        values = {
          description = "The values in the row, one per column.",
          items = {
            ["$ref"] = "CellData",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ScorecardChartSpec = {
      description = "A scorecard chart. Scorecard charts are used to highlight key performance indicators, known as KPIs, on the spreadsheet. A scorecard chart can represent things like total sales, average cost, or a top selling item. You can specify a single data value, or aggregate over a range of data. Percentage or absolute difference from a baseline value can be highlighted, like changes over time.",
      id = "ScorecardChartSpec",
      properties = {
        aggregateType = {
          description = "The aggregation type for key and baseline chart data in scorecard chart. This field is not supported for data source charts. Use the ChartData.aggregateType field of the key_value_data or baseline_value_data instead for data source charts. This field is optional.",
          enum = {
            "CHART_AGGREGATE_TYPE_UNSPECIFIED",
            "AVERAGE",
            "COUNT",
            "MAX",
            "MEDIAN",
            "MIN",
            "SUM",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Average aggregate function.",
            "Count aggregate function.",
            "Maximum aggregate function.",
            "Median aggregate function.",
            "Minimum aggregate function.",
            "Sum aggregate function.",
          },
          type = "string",
        },
        baselineValueData = {
          ["$ref"] = "ChartData",
          description = "The data for scorecard baseline value. This field is optional.",
        },
        baselineValueFormat = {
          ["$ref"] = "BaselineValueFormat",
          description = "Formatting options for baseline value. This field is needed only if baseline_value_data is specified.",
        },
        customFormatOptions = {
          ["$ref"] = "ChartCustomNumberFormatOptions",
          description = "Custom formatting options for numeric key/baseline values in scorecard chart. This field is used only when number_format_source is set to CUSTOM. This field is optional.",
        },
        keyValueData = {
          ["$ref"] = "ChartData",
          description = "The data for scorecard key value.",
        },
        keyValueFormat = {
          ["$ref"] = "KeyValueFormat",
          description = "Formatting options for key value.",
        },
        numberFormatSource = {
          description = "The number format source used in the scorecard chart. This field is optional.",
          enum = {
            "CHART_NUMBER_FORMAT_SOURCE_UNDEFINED",
            "FROM_DATA",
            "CUSTOM",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Inherit number formatting from data.",
            "Apply custom formatting as specified by ChartCustomNumberFormatOptions.",
          },
          type = "string",
        },
        scaleFactor = {
          description = "Value to scale scorecard key and baseline value. For example, a factor of 10 can be used to divide all values in the chart by 10. This field is optional.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    SearchDeveloperMetadataRequest = {
      description = "A request to retrieve all developer metadata matching the set of specified criteria.",
      id = "SearchDeveloperMetadataRequest",
      properties = {
        dataFilters = {
          description = "The data filters describing the criteria used to determine which DeveloperMetadata entries to return. DeveloperMetadata matching any of the specified filters are included in the response.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchDeveloperMetadataResponse = {
      description = "A reply to a developer metadata search request.",
      id = "SearchDeveloperMetadataResponse",
      properties = {
        matchedDeveloperMetadata = {
          description = "The metadata matching the criteria of the search request.",
          items = {
            ["$ref"] = "MatchedDeveloperMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SetBasicFilterRequest = {
      description = "Sets the basic filter associated with a sheet.",
      id = "SetBasicFilterRequest",
      properties = {
        filter = {
          ["$ref"] = "BasicFilter",
          description = "The filter to set.",
        },
      },
      type = "object",
    },
    SetDataValidationRequest = {
      description = "Sets a data validation rule to every cell in the range. To clear validation in a range, call this with no rule specified.",
      id = "SetDataValidationRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range the data validation rule should apply to.",
        },
        rule = {
          ["$ref"] = "DataValidationRule",
          description = "The data validation rule to set on each cell in the range, or empty to clear the data validation in the range.",
        },
      },
      type = "object",
    },
    Sheet = {
      description = "A sheet in a spreadsheet.",
      id = "Sheet",
      properties = {
        bandedRanges = {
          description = "The banded (alternating colors) ranges on this sheet.",
          items = {
            ["$ref"] = "BandedRange",
          },
          type = "array",
        },
        basicFilter = {
          ["$ref"] = "BasicFilter",
          description = "The filter on this sheet, if any.",
        },
        charts = {
          description = "The specifications of every chart on this sheet.",
          items = {
            ["$ref"] = "EmbeddedChart",
          },
          type = "array",
        },
        columnGroups = {
          description = "All column groups on this sheet, ordered by increasing range start index, then by group depth.",
          items = {
            ["$ref"] = "DimensionGroup",
          },
          type = "array",
        },
        conditionalFormats = {
          description = "The conditional format rules in this sheet.",
          items = {
            ["$ref"] = "ConditionalFormatRule",
          },
          type = "array",
        },
        data = {
          description = "Data in the grid, if this is a grid sheet. The number of GridData objects returned is dependent on the number of ranges requested on this sheet. For example, if this is representing `Sheet1`, and the spreadsheet was requested with ranges `Sheet1!A1:C10` and `Sheet1!D15:E20`, then the first GridData will have a startRow/startColumn of `0`, while the second one will have `startRow 14` (zero-based row 15), and `startColumn 3` (zero-based column D). For a DATA_SOURCE sheet, you can not request a specific range, the GridData contains all the values.",
          items = {
            ["$ref"] = "GridData",
          },
          type = "array",
        },
        developerMetadata = {
          description = "The developer metadata associated with a sheet.",
          items = {
            ["$ref"] = "DeveloperMetadata",
          },
          type = "array",
        },
        filterViews = {
          description = "The filter views in this sheet.",
          items = {
            ["$ref"] = "FilterView",
          },
          type = "array",
        },
        merges = {
          description = "The ranges that are merged together.",
          items = {
            ["$ref"] = "GridRange",
          },
          type = "array",
        },
        properties = {
          ["$ref"] = "SheetProperties",
          description = "The properties of the sheet.",
        },
        protectedRanges = {
          description = "The protected ranges in this sheet.",
          items = {
            ["$ref"] = "ProtectedRange",
          },
          type = "array",
        },
        rowGroups = {
          description = "All row groups on this sheet, ordered by increasing range start index, then by group depth.",
          items = {
            ["$ref"] = "DimensionGroup",
          },
          type = "array",
        },
        slicers = {
          description = "The slicers on this sheet.",
          items = {
            ["$ref"] = "Slicer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SheetProperties = {
      description = "Properties of a sheet.",
      id = "SheetProperties",
      properties = {
        dataSourceSheetProperties = {
          ["$ref"] = "DataSourceSheetProperties",
          description = "Output only. If present, the field contains DATA_SOURCE sheet specific properties.",
          readOnly = true,
        },
        gridProperties = {
          ["$ref"] = "GridProperties",
          description = "Additional properties of the sheet if this sheet is a grid. (If the sheet is an object sheet, containing a chart or image, then this field will be absent.) When writing it is an error to set any grid properties on non-grid sheets. If this sheet is a DATA_SOURCE sheet, this field is output only but contains the properties that reflect how a data source sheet is rendered in the UI, e.g. row_count.",
        },
        hidden = {
          description = "True if the sheet is hidden in the UI, false if it's visible.",
          type = "boolean",
        },
        index = {
          description = "The index of the sheet within the spreadsheet. When adding or updating sheet properties, if this field is excluded then the sheet is added or moved to the end of the sheet list. When updating sheet indices or inserting sheets, movement is considered in \"before the move\" indexes. For example, if there were 3 sheets (S1, S2, S3) in order to move S1 ahead of S2 the index would have to be set to 2. A sheet index update request is ignored if the requested index is identical to the sheets current index or if the requested new index is equal to the current sheet index + 1.",
          format = "int32",
          type = "integer",
        },
        rightToLeft = {
          description = "True if the sheet is an RTL sheet instead of an LTR sheet.",
          type = "boolean",
        },
        sheetId = {
          description = "The ID of the sheet. Must be non-negative. This field cannot be changed once set.",
          format = "int32",
          type = "integer",
        },
        sheetType = {
          description = "The type of sheet. Defaults to GRID. This field cannot be changed once set.",
          enum = {
            "SHEET_TYPE_UNSPECIFIED",
            "GRID",
            "OBJECT",
            "DATA_SOURCE",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "The sheet is a grid.",
            "The sheet has no grid and instead has an object like a chart or image.",
            "The sheet connects with an external DataSource and shows the preview of data.",
          },
          type = "string",
        },
        tabColor = {
          ["$ref"] = "Color",
          description = "The color of the tab in the UI. Deprecated: Use tab_color_style.",
        },
        tabColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the tab in the UI. If tab_color is also set, this field takes precedence.",
        },
        title = {
          description = "The name of the sheet.",
          type = "string",
        },
      },
      type = "object",
    },
    Slicer = {
      description = "A slicer in a sheet.",
      id = "Slicer",
      properties = {
        position = {
          ["$ref"] = "EmbeddedObjectPosition",
          description = "The position of the slicer. Note that slicer can be positioned only on existing sheet. Also, width and height of slicer can be automatically adjusted to keep it within permitted limits.",
        },
        slicerId = {
          description = "The ID of the slicer.",
          format = "int32",
          type = "integer",
        },
        spec = {
          ["$ref"] = "SlicerSpec",
          description = "The specification of the slicer.",
        },
      },
      type = "object",
    },
    SlicerSpec = {
      description = "The specifications of a slicer.",
      id = "SlicerSpec",
      properties = {
        applyToPivotTables = {
          description = "True if the filter should apply to pivot tables. If not set, default to `True`.",
          type = "boolean",
        },
        backgroundColor = {
          ["$ref"] = "Color",
          description = "The background color of the slicer. Deprecated: Use background_color_style.",
        },
        backgroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color of the slicer. If background_color is also set, this field takes precedence.",
        },
        columnIndex = {
          description = "The column index in the data table on which the filter is applied to.",
          format = "int32",
          type = "integer",
        },
        dataRange = {
          ["$ref"] = "GridRange",
          description = "The data range of the slicer.",
        },
        filterCriteria = {
          ["$ref"] = "FilterCriteria",
          description = "The filtering criteria of the slicer.",
        },
        horizontalAlignment = {
          description = "The horizontal alignment of title in the slicer. If unspecified, defaults to `LEFT`",
          enum = {
            "HORIZONTAL_ALIGN_UNSPECIFIED",
            "LEFT",
            "CENTER",
            "RIGHT",
          },
          enumDescriptions = {
            "The horizontal alignment is not specified. Do not use this.",
            "The text is explicitly aligned to the left of the cell.",
            "The text is explicitly aligned to the center of the cell.",
            "The text is explicitly aligned to the right of the cell.",
          },
          type = "string",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "The text format of title in the slicer. The link field is not supported.",
        },
        title = {
          description = "The title of the slicer.",
          type = "string",
        },
      },
      type = "object",
    },
    SortRangeRequest = {
      description = "Sorts data in rows based on a sort order per column.",
      id = "SortRangeRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range to sort.",
        },
        sortSpecs = {
          description = "The sort order per column. Later specifications are used when values are equal in the earlier specifications.",
          items = {
            ["$ref"] = "SortSpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SortSpec = {
      description = "A sort order associated with a specific column or row.",
      id = "SortSpec",
      properties = {
        backgroundColor = {
          ["$ref"] = "Color",
          description = "The background fill color to sort by; cells with this fill color are sorted to the top. Mutually exclusive with foreground_color. Deprecated: Use background_color_style.",
        },
        backgroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background fill color to sort by; cells with this fill color are sorted to the top. Mutually exclusive with foreground_color, and must be an RGB-type color. If background_color is also set, this field takes precedence.",
        },
        dataSourceColumnReference = {
          ["$ref"] = "DataSourceColumnReference",
          description = "Reference to a data source column.",
        },
        dimensionIndex = {
          description = "The dimension the sort should be applied to.",
          format = "int32",
          type = "integer",
        },
        foregroundColor = {
          ["$ref"] = "Color",
          description = "The foreground color to sort by; cells with this foreground color are sorted to the top. Mutually exclusive with background_color. Deprecated: Use foreground_color_style.",
        },
        foregroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The foreground color to sort by; cells with this foreground color are sorted to the top. Mutually exclusive with background_color, and must be an RGB-type color. If foreground_color is also set, this field takes precedence.",
        },
        sortOrder = {
          description = "The order data should be sorted.",
          enum = {
            "SORT_ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Default value, do not use this.",
            "Sort ascending.",
            "Sort descending.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SourceAndDestination = {
      description = "A combination of a source range and how to extend that source.",
      id = "SourceAndDestination",
      properties = {
        dimension = {
          description = "The dimension that data should be filled into.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        fillLength = {
          description = "The number of rows or columns that data should be filled into. Positive numbers expand beyond the last row or last column of the source. Negative numbers expand before the first row or first column of the source.",
          format = "int32",
          type = "integer",
        },
        source = {
          ["$ref"] = "GridRange",
          description = "The location of the data to use as the source of the autofill.",
        },
      },
      type = "object",
    },
    Spreadsheet = {
      description = "Resource that represents a spreadsheet.",
      id = "Spreadsheet",
      properties = {
        dataSourceSchedules = {
          description = "Output only. A list of data source refresh schedules.",
          items = {
            ["$ref"] = "DataSourceRefreshSchedule",
          },
          readOnly = true,
          type = "array",
        },
        dataSources = {
          description = "A list of external data sources connected with the spreadsheet.",
          items = {
            ["$ref"] = "DataSource",
          },
          type = "array",
        },
        developerMetadata = {
          description = "The developer metadata associated with a spreadsheet.",
          items = {
            ["$ref"] = "DeveloperMetadata",
          },
          type = "array",
        },
        namedRanges = {
          description = "The named ranges defined in a spreadsheet.",
          items = {
            ["$ref"] = "NamedRange",
          },
          type = "array",
        },
        properties = {
          ["$ref"] = "SpreadsheetProperties",
          description = "Overall properties of a spreadsheet.",
        },
        sheets = {
          description = "The sheets that are part of a spreadsheet.",
          items = {
            ["$ref"] = "Sheet",
          },
          type = "array",
        },
        spreadsheetId = {
          description = "The ID of the spreadsheet. This field is read-only.",
          type = "string",
        },
        spreadsheetUrl = {
          description = "The url of the spreadsheet. This field is read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    SpreadsheetProperties = {
      description = "Properties of a spreadsheet.",
      id = "SpreadsheetProperties",
      properties = {
        autoRecalc = {
          description = "The amount of time to wait before volatile functions are recalculated.",
          enum = {
            "RECALCULATION_INTERVAL_UNSPECIFIED",
            "ON_CHANGE",
            "MINUTE",
            "HOUR",
          },
          enumDescriptions = {
            "Default value. This value must not be used.",
            "Volatile functions are updated on every change.",
            "Volatile functions are updated on every change and every minute.",
            "Volatile functions are updated on every change and hourly.",
          },
          type = "string",
        },
        defaultFormat = {
          ["$ref"] = "CellFormat",
          description = "The default format of all cells in the spreadsheet. CellData.effectiveFormat will not be set if the cell's format is equal to this default format. This field is read-only.",
        },
        iterativeCalculationSettings = {
          ["$ref"] = "IterativeCalculationSettings",
          description = "Determines whether and how circular references are resolved with iterative calculation. Absence of this field means that circular references result in calculation errors.",
        },
        locale = {
          description = "The locale of the spreadsheet in one of the following formats: * an ISO 639-1 language code such as `en` * an ISO 639-2 language code such as `fil`, if no 639-1 code exists * a combination of the ISO language code and country code, such as `en_US` Note: when updating this field, not all locales/languages are supported.",
          type = "string",
        },
        spreadsheetTheme = {
          ["$ref"] = "SpreadsheetTheme",
          description = "Theme applied to the spreadsheet.",
        },
        timeZone = {
          description = "The time zone of the spreadsheet, in CLDR format such as `America/New_York`. If the time zone isn't recognized, this may be a custom time zone such as `GMT-07:00`.",
          type = "string",
        },
        title = {
          description = "The title of the spreadsheet.",
          type = "string",
        },
      },
      type = "object",
    },
    SpreadsheetTheme = {
      description = "Represents spreadsheet theme",
      id = "SpreadsheetTheme",
      properties = {
        primaryFontFamily = {
          description = "Name of the primary font family.",
          type = "string",
        },
        themeColors = {
          description = "The spreadsheet theme color pairs. To update you must provide all theme color pairs.",
          items = {
            ["$ref"] = "ThemeColorPair",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TextFormat = {
      description = "The format of a run of text in a cell. Absent values indicate that the field isn't specified.",
      id = "TextFormat",
      properties = {
        bold = {
          description = "True if the text is bold.",
          type = "boolean",
        },
        fontFamily = {
          description = "The font family.",
          type = "string",
        },
        fontSize = {
          description = "The size of the font.",
          format = "int32",
          type = "integer",
        },
        foregroundColor = {
          ["$ref"] = "Color",
          description = "The foreground color of the text. Deprecated: Use foreground_color_style.",
        },
        foregroundColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The foreground color of the text. If foreground_color is also set, this field takes precedence.",
        },
        italic = {
          description = "True if the text is italicized.",
          type = "boolean",
        },
        link = {
          ["$ref"] = "Link",
          description = "The link destination of the text, if any. Setting the link field in a TextFormatRun will clear the cell's existing links or a cell-level link set in the same request. When a link is set, the text foreground color will be set to the default link color and the text will be underlined. If these fields are modified in the same request, those values will be used instead of the link defaults.",
        },
        strikethrough = {
          description = "True if the text has a strikethrough.",
          type = "boolean",
        },
        underline = {
          description = "True if the text is underlined.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TextFormatRun = {
      description = "A run of a text format. The format of this run continues until the start index of the next run. When updating, all fields must be set.",
      id = "TextFormatRun",
      properties = {
        format = {
          ["$ref"] = "TextFormat",
          description = "The format of this run. Absent values inherit the cell's format.",
        },
        startIndex = {
          description = "The character index where this run starts.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TextPosition = {
      description = "Position settings for text.",
      id = "TextPosition",
      properties = {
        horizontalAlignment = {
          description = "Horizontal alignment setting for the piece of text.",
          enum = {
            "HORIZONTAL_ALIGN_UNSPECIFIED",
            "LEFT",
            "CENTER",
            "RIGHT",
          },
          enumDescriptions = {
            "The horizontal alignment is not specified. Do not use this.",
            "The text is explicitly aligned to the left of the cell.",
            "The text is explicitly aligned to the center of the cell.",
            "The text is explicitly aligned to the right of the cell.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TextRotation = {
      description = "The rotation applied to text in a cell.",
      id = "TextRotation",
      properties = {
        angle = {
          description = "The angle between the standard orientation and the desired orientation. Measured in degrees. Valid values are between -90 and 90. Positive angles are angled upwards, negative are angled downwards. Note: For LTR text direction positive angles are in the counterclockwise direction, whereas for RTL they are in the clockwise direction",
          format = "int32",
          type = "integer",
        },
        vertical = {
          description = "If true, text reads top to bottom, but the orientation of individual characters is unchanged. For example: | V | | e | | r | | t | | i | | c | | a | | l |",
          type = "boolean",
        },
      },
      type = "object",
    },
    TextToColumnsRequest = {
      description = "Splits a column of text into multiple columns, based on a delimiter in each cell.",
      id = "TextToColumnsRequest",
      properties = {
        delimiter = {
          description = "The delimiter to use. Used only if delimiterType is CUSTOM.",
          type = "string",
        },
        delimiterType = {
          description = "The delimiter type to use.",
          enum = {
            "DELIMITER_TYPE_UNSPECIFIED",
            "COMMA",
            "SEMICOLON",
            "PERIOD",
            "SPACE",
            "CUSTOM",
            "AUTODETECT",
          },
          enumDescriptions = {
            "Default value. This value must not be used.",
            "\",\"",
            "\";\"",
            "\".\"",
            "\" \"",
            "A custom value as defined in delimiter.",
            "Automatically detect columns.",
          },
          type = "string",
        },
        source = {
          ["$ref"] = "GridRange",
          description = "The source data range. This must span exactly one column.",
        },
      },
      type = "object",
    },
    ThemeColorPair = {
      description = "A pair mapping a spreadsheet theme color type to the concrete color it represents.",
      id = "ThemeColorPair",
      properties = {
        color = {
          ["$ref"] = "ColorStyle",
          description = "The concrete color corresponding to the theme color type.",
        },
        colorType = {
          description = "The type of the spreadsheet theme color.",
          enum = {
            "THEME_COLOR_TYPE_UNSPECIFIED",
            "TEXT",
            "BACKGROUND",
            "ACCENT1",
            "ACCENT2",
            "ACCENT3",
            "ACCENT4",
            "ACCENT5",
            "ACCENT6",
            "LINK",
          },
          enumDescriptions = {
            "Unspecified theme color",
            "Represents the primary text color",
            "Represents the primary background color",
            "Represents the first accent color",
            "Represents the second accent color",
            "Represents the third accent color",
            "Represents the fourth accent color",
            "Represents the fifth accent color",
            "Represents the sixth accent color",
            "Represents the color to use for hyperlinks",
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
    TreemapChartColorScale = {
      description = "A color scale for a treemap chart.",
      id = "TreemapChartColorScale",
      properties = {
        maxValueColor = {
          ["$ref"] = "Color",
          description = "The background color for cells with a color value greater than or equal to maxValue. Defaults to #109618 if not specified. Deprecated: Use max_value_color_style.",
        },
        maxValueColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color for cells with a color value greater than or equal to maxValue. Defaults to #109618 if not specified. If max_value_color is also set, this field takes precedence.",
        },
        midValueColor = {
          ["$ref"] = "Color",
          description = "The background color for cells with a color value at the midpoint between minValue and maxValue. Defaults to #efe6dc if not specified. Deprecated: Use mid_value_color_style.",
        },
        midValueColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color for cells with a color value at the midpoint between minValue and maxValue. Defaults to #efe6dc if not specified. If mid_value_color is also set, this field takes precedence.",
        },
        minValueColor = {
          ["$ref"] = "Color",
          description = "The background color for cells with a color value less than or equal to minValue. Defaults to #dc3912 if not specified. Deprecated: Use min_value_color_style.",
        },
        minValueColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color for cells with a color value less than or equal to minValue. Defaults to #dc3912 if not specified. If min_value_color is also set, this field takes precedence.",
        },
        noDataColor = {
          ["$ref"] = "Color",
          description = "The background color for cells that have no color data associated with them. Defaults to #000000 if not specified. Deprecated: Use no_data_color_style.",
        },
        noDataColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color for cells that have no color data associated with them. Defaults to #000000 if not specified. If no_data_color is also set, this field takes precedence.",
        },
      },
      type = "object",
    },
    TreemapChartSpec = {
      description = "A Treemap chart.",
      id = "TreemapChartSpec",
      properties = {
        colorData = {
          ["$ref"] = "ChartData",
          description = "The data that determines the background color of each treemap data cell. This field is optional. If not specified, size_data is used to determine background colors. If specified, the data is expected to be numeric. color_scale will determine how the values in this data map to data cell background colors.",
        },
        colorScale = {
          ["$ref"] = "TreemapChartColorScale",
          description = "The color scale for data cells in the treemap chart. Data cells are assigned colors based on their color values. These color values come from color_data, or from size_data if color_data is not specified. Cells with color values less than or equal to min_value will have minValueColor as their background color. Cells with color values greater than or equal to max_value will have maxValueColor as their background color. Cells with color values between min_value and max_value will have background colors on a gradient between minValueColor and maxValueColor, the midpoint of the gradient being midValueColor. Cells with missing or non-numeric color values will have noDataColor as their background color.",
        },
        headerColor = {
          ["$ref"] = "Color",
          description = "The background color for header cells. Deprecated: Use header_color_style.",
        },
        headerColorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The background color for header cells. If header_color is also set, this field takes precedence.",
        },
        hideTooltips = {
          description = "True to hide tooltips.",
          type = "boolean",
        },
        hintedLevels = {
          description = "The number of additional data levels beyond the labeled levels to be shown on the treemap chart. These levels are not interactive and are shown without their labels. Defaults to 0 if not specified.",
          format = "int32",
          type = "integer",
        },
        labels = {
          ["$ref"] = "ChartData",
          description = "The data that contains the treemap cell labels.",
        },
        levels = {
          description = "The number of data levels to show on the treemap chart. These levels are interactive and are shown with their labels. Defaults to 2 if not specified.",
          format = "int32",
          type = "integer",
        },
        maxValue = {
          description = "The maximum possible data value. Cells with values greater than this will have the same color as cells with this value. If not specified, defaults to the actual maximum value from color_data, or the maximum value from size_data if color_data is not specified.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "The minimum possible data value. Cells with values less than this will have the same color as cells with this value. If not specified, defaults to the actual minimum value from color_data, or the minimum value from size_data if color_data is not specified.",
          format = "double",
          type = "number",
        },
        parentLabels = {
          ["$ref"] = "ChartData",
          description = "The data the contains the treemap cells' parent labels.",
        },
        sizeData = {
          ["$ref"] = "ChartData",
          description = "The data that determines the size of each treemap data cell. This data is expected to be numeric. The cells corresponding to non-numeric or missing data will not be rendered. If color_data is not specified, this data is used to determine data cell background colors as well.",
        },
        textFormat = {
          ["$ref"] = "TextFormat",
          description = "The text format for all labels on the chart. The link field is not supported.",
        },
      },
      type = "object",
    },
    TrimWhitespaceRequest = {
      description = "Trims the whitespace (such as spaces, tabs, or new lines) in every cell in the specified range. This request removes all whitespace from the start and end of each cell's text, and reduces any subsequence of remaining whitespace characters to a single space. If the resulting trimmed text starts with a '+' or '=' character, the text remains as a string value and isn't interpreted as a formula.",
      id = "TrimWhitespaceRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range whose cells to trim.",
        },
      },
      type = "object",
    },
    TrimWhitespaceResponse = {
      description = "The result of trimming whitespace in cells.",
      id = "TrimWhitespaceResponse",
      properties = {
        cellsChangedCount = {
          description = "The number of cells that were trimmed of whitespace.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UnmergeCellsRequest = {
      description = "Unmerges cells in the given range.",
      id = "UnmergeCellsRequest",
      properties = {
        range = {
          ["$ref"] = "GridRange",
          description = "The range within which all cells should be unmerged. If the range spans multiple merges, all will be unmerged. The range must not partially span any merge.",
        },
      },
      type = "object",
    },
    UpdateBandingRequest = {
      description = "Updates properties of the supplied banded range.",
      id = "UpdateBandingRequest",
      properties = {
        bandedRange = {
          ["$ref"] = "BandedRange",
          description = "The banded range to update with the new properties.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `bandedRange` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateBordersRequest = {
      description = "Updates the borders of a range. If a field is not set in the request, that means the border remains as-is. For example, with two subsequent UpdateBordersRequest: 1. range: A1:A5 `{ top: RED, bottom: WHITE }` 2. range: A1:A5 `{ left: BLUE }` That would result in A1:A5 having a borders of `{ top: RED, bottom: WHITE, left: BLUE }`. If you want to clear a border, explicitly set the style to NONE.",
      id = "UpdateBordersRequest",
      properties = {
        bottom = {
          ["$ref"] = "Border",
          description = "The border to put at the bottom of the range.",
        },
        innerHorizontal = {
          ["$ref"] = "Border",
          description = "The horizontal border to put within the range.",
        },
        innerVertical = {
          ["$ref"] = "Border",
          description = "The vertical border to put within the range.",
        },
        left = {
          ["$ref"] = "Border",
          description = "The border to put at the left of the range.",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range whose borders should be updated.",
        },
        right = {
          ["$ref"] = "Border",
          description = "The border to put at the right of the range.",
        },
        top = {
          ["$ref"] = "Border",
          description = "The border to put at the top of the range.",
        },
      },
      type = "object",
    },
    UpdateCellsRequest = {
      description = "Updates all cells in a range with new data.",
      id = "UpdateCellsRequest",
      properties = {
        fields = {
          description = "The fields of CellData that should be updated. At least one field must be specified. The root is the CellData; 'row.values.' should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        range = {
          ["$ref"] = "GridRange",
          description = "The range to write data to. If the data in rows does not cover the entire requested range, the fields matching those set in fields will be cleared.",
        },
        rows = {
          description = "The data to write.",
          items = {
            ["$ref"] = "RowData",
          },
          type = "array",
        },
        start = {
          ["$ref"] = "GridCoordinate",
          description = "The coordinate to start writing data at. Any number of rows and columns (including a different number of columns per row) may be written.",
        },
      },
      type = "object",
    },
    UpdateChartSpecRequest = {
      description = "Updates a chart's specifications. (This does not move or resize a chart. To move or resize a chart, use UpdateEmbeddedObjectPositionRequest.)",
      id = "UpdateChartSpecRequest",
      properties = {
        chartId = {
          description = "The ID of the chart to update.",
          format = "int32",
          type = "integer",
        },
        spec = {
          ["$ref"] = "ChartSpec",
          description = "The specification to apply to the chart.",
        },
      },
      type = "object",
    },
    UpdateConditionalFormatRuleRequest = {
      description = "Updates a conditional format rule at the given index, or moves a conditional format rule to another index.",
      id = "UpdateConditionalFormatRuleRequest",
      properties = {
        index = {
          description = "The zero-based index of the rule that should be replaced or moved.",
          format = "int32",
          type = "integer",
        },
        newIndex = {
          description = "The zero-based new index the rule should end up at.",
          format = "int32",
          type = "integer",
        },
        rule = {
          ["$ref"] = "ConditionalFormatRule",
          description = "The rule that should replace the rule at the given index.",
        },
        sheetId = {
          description = "The sheet of the rule to move. Required if new_index is set, unused otherwise.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UpdateConditionalFormatRuleResponse = {
      description = "The result of updating a conditional format rule.",
      id = "UpdateConditionalFormatRuleResponse",
      properties = {
        newIndex = {
          description = "The index of the new rule.",
          format = "int32",
          type = "integer",
        },
        newRule = {
          ["$ref"] = "ConditionalFormatRule",
          description = "The new rule that replaced the old rule (if replacing), or the rule that was moved (if moved)",
        },
        oldIndex = {
          description = "The old index of the rule. Not set if a rule was replaced (because it is the same as new_index).",
          format = "int32",
          type = "integer",
        },
        oldRule = {
          ["$ref"] = "ConditionalFormatRule",
          description = "The old (deleted) rule. Not set if a rule was moved (because it is the same as new_rule).",
        },
      },
      type = "object",
    },
    UpdateDataSourceRequest = {
      description = "Updates a data source. After the data source is updated successfully, an execution is triggered to refresh the associated DATA_SOURCE sheet to read data from the updated data source. The request requires an additional `bigquery.readonly` OAuth scope.",
      id = "UpdateDataSourceRequest",
      properties = {
        dataSource = {
          ["$ref"] = "DataSource",
          description = "The data source to update.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `dataSource` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateDataSourceResponse = {
      description = "The response from updating data source.",
      id = "UpdateDataSourceResponse",
      properties = {
        dataExecutionStatus = {
          ["$ref"] = "DataExecutionStatus",
          description = "The data execution status.",
        },
        dataSource = {
          ["$ref"] = "DataSource",
          description = "The updated data source.",
        },
      },
      type = "object",
    },
    UpdateDeveloperMetadataRequest = {
      description = "A request to update properties of developer metadata. Updates the properties of the developer metadata selected by the filters to the values provided in the DeveloperMetadata resource. Callers must specify the properties they wish to update in the fields parameter, as well as specify at least one DataFilter matching the metadata they wish to update.",
      id = "UpdateDeveloperMetadataRequest",
      properties = {
        dataFilters = {
          description = "The filters matching the developer metadata entries to update.",
          items = {
            ["$ref"] = "DataFilter",
          },
          type = "array",
        },
        developerMetadata = {
          ["$ref"] = "DeveloperMetadata",
          description = "The value that all metadata matched by the data filters will be updated to.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `developerMetadata` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateDeveloperMetadataResponse = {
      description = "The response from updating developer metadata.",
      id = "UpdateDeveloperMetadataResponse",
      properties = {
        developerMetadata = {
          description = "The updated developer metadata.",
          items = {
            ["$ref"] = "DeveloperMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateDimensionGroupRequest = {
      description = "Updates the state of the specified group.",
      id = "UpdateDimensionGroupRequest",
      properties = {
        dimensionGroup = {
          ["$ref"] = "DimensionGroup",
          description = "The group whose state should be updated. The range and depth of the group should specify a valid group on the sheet, and all other fields updated.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `dimensionGroup` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateDimensionPropertiesRequest = {
      description = "Updates properties of dimensions within the specified range.",
      id = "UpdateDimensionPropertiesRequest",
      properties = {
        dataSourceSheetRange = {
          ["$ref"] = "DataSourceSheetDimensionRange",
          description = "The columns on a data source sheet to update.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `properties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        properties = {
          ["$ref"] = "DimensionProperties",
          description = "Properties to update.",
        },
        range = {
          ["$ref"] = "DimensionRange",
          description = "The rows or columns to update.",
        },
      },
      type = "object",
    },
    UpdateEmbeddedObjectBorderRequest = {
      description = "Updates an embedded object's border property.",
      id = "UpdateEmbeddedObjectBorderRequest",
      properties = {
        border = {
          ["$ref"] = "EmbeddedObjectBorder",
          description = "The border that applies to the embedded object.",
        },
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `border` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        objectId = {
          description = "The ID of the embedded object to update.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UpdateEmbeddedObjectPositionRequest = {
      description = "Update an embedded object's position (such as a moving or resizing a chart or image).",
      id = "UpdateEmbeddedObjectPositionRequest",
      properties = {
        fields = {
          description = "The fields of OverlayPosition that should be updated when setting a new position. Used only if newPosition.overlayPosition is set, in which case at least one field must be specified. The root `newPosition.overlayPosition` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        newPosition = {
          ["$ref"] = "EmbeddedObjectPosition",
          description = "An explicit position to move the embedded object to. If newPosition.sheetId is set, a new sheet with that ID will be created. If newPosition.newSheet is set to true, a new sheet will be created with an ID that will be chosen for you.",
        },
        objectId = {
          description = "The ID of the object to moved.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UpdateEmbeddedObjectPositionResponse = {
      description = "The result of updating an embedded object's position.",
      id = "UpdateEmbeddedObjectPositionResponse",
      properties = {
        position = {
          ["$ref"] = "EmbeddedObjectPosition",
          description = "The new position of the embedded object.",
        },
      },
      type = "object",
    },
    UpdateFilterViewRequest = {
      description = "Updates properties of the filter view.",
      id = "UpdateFilterViewRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `filter` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        filter = {
          ["$ref"] = "FilterView",
          description = "The new properties of the filter view.",
        },
      },
      type = "object",
    },
    UpdateNamedRangeRequest = {
      description = "Updates properties of the named range with the specified namedRangeId.",
      id = "UpdateNamedRangeRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `namedRange` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        namedRange = {
          ["$ref"] = "NamedRange",
          description = "The named range to update with the new properties.",
        },
      },
      type = "object",
    },
    UpdateProtectedRangeRequest = {
      description = "Updates an existing protected range with the specified protectedRangeId.",
      id = "UpdateProtectedRangeRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `protectedRange` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        protectedRange = {
          ["$ref"] = "ProtectedRange",
          description = "The protected range to update with the new properties.",
        },
      },
      type = "object",
    },
    UpdateSheetPropertiesRequest = {
      description = "Updates properties of the sheet with the specified sheetId.",
      id = "UpdateSheetPropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `properties` is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        properties = {
          ["$ref"] = "SheetProperties",
          description = "The properties to update.",
        },
      },
      type = "object",
    },
    UpdateSlicerSpecRequest = {
      description = "Updates a slicer's specifications. (This does not move or resize a slicer. To move or resize a slicer use UpdateEmbeddedObjectPositionRequest.",
      id = "UpdateSlicerSpecRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root `SlicerSpec` is implied and should not be specified. A single \"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        slicerId = {
          description = "The id of the slicer to update.",
          format = "int32",
          type = "integer",
        },
        spec = {
          ["$ref"] = "SlicerSpec",
          description = "The specification to apply to the slicer.",
        },
      },
      type = "object",
    },
    UpdateSpreadsheetPropertiesRequest = {
      description = "Updates properties of a spreadsheet.",
      id = "UpdateSpreadsheetPropertiesRequest",
      properties = {
        fields = {
          description = "The fields that should be updated. At least one field must be specified. The root 'properties' is implied and should not be specified. A single `\"*\"` can be used as short-hand for listing every field.",
          format = "google-fieldmask",
          type = "string",
        },
        properties = {
          ["$ref"] = "SpreadsheetProperties",
          description = "The properties to update.",
        },
      },
      type = "object",
    },
    UpdateValuesByDataFilterResponse = {
      description = "The response when updating a range of values by a data filter in a spreadsheet.",
      id = "UpdateValuesByDataFilterResponse",
      properties = {
        dataFilter = {
          ["$ref"] = "DataFilter",
          description = "The data filter that selected the range that was updated.",
        },
        updatedCells = {
          description = "The number of cells updated.",
          format = "int32",
          type = "integer",
        },
        updatedColumns = {
          description = "The number of columns where at least one cell in the column was updated.",
          format = "int32",
          type = "integer",
        },
        updatedData = {
          ["$ref"] = "ValueRange",
          description = "The values of the cells in the range matched by the dataFilter after all updates were applied. This is only included if the request's `includeValuesInResponse` field was `true`.",
        },
        updatedRange = {
          description = "The range (in [A1 notation](/sheets/api/guides/concepts#cell)) that updates were applied to.",
          type = "string",
        },
        updatedRows = {
          description = "The number of rows where at least one cell in the row was updated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UpdateValuesResponse = {
      description = "The response when updating a range of values in a spreadsheet.",
      id = "UpdateValuesResponse",
      properties = {
        spreadsheetId = {
          description = "The spreadsheet the updates were applied to.",
          type = "string",
        },
        updatedCells = {
          description = "The number of cells updated.",
          format = "int32",
          type = "integer",
        },
        updatedColumns = {
          description = "The number of columns where at least one cell in the column was updated.",
          format = "int32",
          type = "integer",
        },
        updatedData = {
          ["$ref"] = "ValueRange",
          description = "The values of the cells after updates were applied. This is only included if the request's `includeValuesInResponse` field was `true`.",
        },
        updatedRange = {
          description = "The range (in A1 notation) that updates were applied to.",
          type = "string",
        },
        updatedRows = {
          description = "The number of rows where at least one cell in the row was updated.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ValueRange = {
      description = "Data within a range of the spreadsheet.",
      id = "ValueRange",
      properties = {
        majorDimension = {
          description = "The major dimension of the values. For output, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`, then requesting `range=A1:B2,majorDimension=ROWS` will return `[[1,2],[3,4]]`, whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return `[[1,3],[2,4]]`. For input, with `range=A1:B2,majorDimension=ROWS` then `[[1,2],[3,4]]` will set `A1=1,B1=2,A2=3,B2=4`. With `range=A1:B2,majorDimension=COLUMNS` then `[[1,2],[3,4]]` will set `A1=1,B1=3,A2=2,B2=4`. When writing, if this field is not set, it defaults to ROWS.",
          enum = {
            "DIMENSION_UNSPECIFIED",
            "ROWS",
            "COLUMNS",
          },
          enumDescriptions = {
            "The default value, do not use.",
            "Operates on the rows of a sheet.",
            "Operates on the columns of a sheet.",
          },
          type = "string",
        },
        range = {
          description = "The range the values cover, in [A1 notation](/sheets/api/guides/concepts#cell). For output, this range indicates the entire requested range, even though the values will exclude trailing rows and columns. When appending values, this field represents the range to search for a table, after which values will be appended.",
          type = "string",
        },
        values = {
          description = "The data that was read or to be written. This is an array of arrays, the outer array representing all the data and each inner array representing a major dimension. Each item in the inner array corresponds with one cell. For output, empty trailing rows and columns will not be included. For input, supported value types are: bool, string, and double. Null values will be skipped. To set a cell to an empty value, set the string value to an empty string.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WaterfallChartColumnStyle = {
      description = "Styles for a waterfall chart column.",
      id = "WaterfallChartColumnStyle",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "The color of the column. Deprecated: Use color_style.",
        },
        colorStyle = {
          ["$ref"] = "ColorStyle",
          description = "The color of the column. If color is also set, this field takes precedence.",
        },
        label = {
          description = "The label of the column's legend.",
          type = "string",
        },
      },
      type = "object",
    },
    WaterfallChartCustomSubtotal = {
      description = "A custom subtotal column for a waterfall chart series.",
      id = "WaterfallChartCustomSubtotal",
      properties = {
        dataIsSubtotal = {
          description = "True if the data point at subtotal_index is the subtotal. If false, the subtotal will be computed and appear after the data point.",
          type = "boolean",
        },
        label = {
          description = "A label for the subtotal column.",
          type = "string",
        },
        subtotalIndex = {
          description = "The 0-based index of a data point within the series. If data_is_subtotal is true, the data point at this index is the subtotal. Otherwise, the subtotal appears after the data point with this index. A series can have multiple subtotals at arbitrary indices, but subtotals do not affect the indices of the data points. For example, if a series has three data points, their indices will always be 0, 1, and 2, regardless of how many subtotals exist on the series or what data points they are associated with.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WaterfallChartDomain = {
      description = "The domain of a waterfall chart.",
      id = "WaterfallChartDomain",
      properties = {
        data = {
          ["$ref"] = "ChartData",
          description = "The data of the WaterfallChartDomain.",
        },
        reversed = {
          description = "True to reverse the order of the domain values (horizontal axis).",
          type = "boolean",
        },
      },
      type = "object",
    },
    WaterfallChartSeries = {
      description = "A single series of data for a waterfall chart.",
      id = "WaterfallChartSeries",
      properties = {
        customSubtotals = {
          description = "Custom subtotal columns appearing in this series. The order in which subtotals are defined is not significant. Only one subtotal may be defined for each data point.",
          items = {
            ["$ref"] = "WaterfallChartCustomSubtotal",
          },
          type = "array",
        },
        data = {
          ["$ref"] = "ChartData",
          description = "The data being visualized in this series.",
        },
        dataLabel = {
          ["$ref"] = "DataLabel",
          description = "Information about the data labels for this series.",
        },
        hideTrailingSubtotal = {
          description = "True to hide the subtotal column from the end of the series. By default, a subtotal column will appear at the end of each series. Setting this field to true will hide that subtotal column for this series.",
          type = "boolean",
        },
        negativeColumnsStyle = {
          ["$ref"] = "WaterfallChartColumnStyle",
          description = "Styles for all columns in this series with negative values.",
        },
        positiveColumnsStyle = {
          ["$ref"] = "WaterfallChartColumnStyle",
          description = "Styles for all columns in this series with positive values.",
        },
        subtotalColumnsStyle = {
          ["$ref"] = "WaterfallChartColumnStyle",
          description = "Styles for all subtotal columns in this series.",
        },
      },
      type = "object",
    },
    WaterfallChartSpec = {
      description = "A waterfall chart.",
      id = "WaterfallChartSpec",
      properties = {
        connectorLineStyle = {
          ["$ref"] = "LineStyle",
          description = "The line style for the connector lines.",
        },
        domain = {
          ["$ref"] = "WaterfallChartDomain",
          description = "The domain data (horizontal axis) for the waterfall chart.",
        },
        firstValueIsTotal = {
          description = "True to interpret the first value as a total.",
          type = "boolean",
        },
        hideConnectorLines = {
          description = "True to hide connector lines between columns.",
          type = "boolean",
        },
        series = {
          description = "The data this waterfall chart is visualizing.",
          items = {
            ["$ref"] = "WaterfallChartSeries",
          },
          type = "array",
        },
        stackedType = {
          description = "The stacked type.",
          enum = {
            "WATERFALL_STACKED_TYPE_UNSPECIFIED",
            "STACKED",
            "SEQUENTIAL",
          },
          enumDescriptions = {
            "Default value, do not use.",
            "Values corresponding to the same domain (horizontal axis) value will be stacked vertically.",
            "Series will spread out along the horizontal axis.",
          },
          type = "string",
        },
        totalDataLabel = {
          ["$ref"] = "DataLabel",
          description = "Controls whether to display additional data labels on stacked charts which sum the total value of all stacked values at each value along the domain axis. stacked_type must be STACKED and neither CUSTOM nor placement can be set on the total_data_label.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Sheets API",
  version = "v4",
  version_module = true,
}