return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/calendar"] = {
          description = "See, edit, share, and permanently delete all the calendars you can access using Google Calendar",
        },
        ["https://www.googleapis.com/auth/calendar.events"] = {
          description = "View and edit events on all your calendars",
        },
        ["https://www.googleapis.com/auth/calendar.events.readonly"] = {
          description = "View events on all your calendars",
        },
        ["https://www.googleapis.com/auth/calendar.readonly"] = {
          description = "See and download any calendar you can access using your Google Calendar",
        },
        ["https://www.googleapis.com/auth/calendar.settings.readonly"] = {
          description = "View your Calendar settings",
        },
      },
    },
  },
  basePath = "/calendar/v3/",
  baseUrl = "https://www.googleapis.com/calendar/v3/",
  batchPath = "batch/calendar/v3",
  description = "Manipulates events and other calendar data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/google-apps/calendar/firstapp",
  icons = {
    x16 = "http://fonts.gstatic.com/s/i/productlogos/calendar_2020q4/v8/web-16dp/logo_calendar_2020q4_color_1x_web_16dp.png",
    x32 = "http://fonts.gstatic.com/s/i/productlogos/calendar_2020q4/v8/web-32dp/logo_calendar_2020q4_color_1x_web_32dp.png",
  },
  id = "calendar:v3",
  kind = "discovery#restDescription",
  name = "calendar",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
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
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    acl = {
      methods = {
        delete = {
          description = "Deletes an access control rule.",
          httpMethod = "DELETE",
          id = "calendar.acl.delete",
          parameterOrder = {
            "calendarId",
            "ruleId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "ACL rule identifier.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}/acl/{ruleId}",
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        get = {
          description = "Returns an access control rule.",
          httpMethod = "GET",
          id = "calendar.acl.get",
          parameterOrder = {
            "calendarId",
            "ruleId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "ACL rule identifier.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}/acl/{ruleId}",
          response = {
            ["$ref"] = "AclRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
        insert = {
          description = "Creates an access control rule.",
          httpMethod = "POST",
          id = "calendar.acl.insert",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Whether to send notifications about the calendar sharing change. Optional. The default is True.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/acl",
          request = {
            ["$ref"] = "AclRule",
          },
          response = {
            ["$ref"] = "AclRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        list = {
          description = "Returns the rules in the access control list for the calendar.",
          httpMethod = "GET",
          id = "calendar.acl.list",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to \"none\". Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/acl",
          response = {
            ["$ref"] = "Acl",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
          supportsSubscription = true,
        },
        patch = {
          description = "Updates an access control rule. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "calendar.acl.patch",
          parameterOrder = {
            "calendarId",
            "ruleId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "ACL rule identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/acl/{ruleId}",
          request = {
            ["$ref"] = "AclRule",
          },
          response = {
            ["$ref"] = "AclRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        update = {
          description = "Updates an access control rule.",
          httpMethod = "PUT",
          id = "calendar.acl.update",
          parameterOrder = {
            "calendarId",
            "ruleId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "ACL rule identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Whether to send notifications about the calendar sharing change. Note that there are no notifications on access removal. Optional. The default is True.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/acl/{ruleId}",
          request = {
            ["$ref"] = "AclRule",
          },
          response = {
            ["$ref"] = "AclRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        watch = {
          description = "Watch for changes to ACL resources.",
          httpMethod = "POST",
          id = "calendar.acl.watch",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted ACLs in the result. Deleted ACLs are represented by role equal to \"none\". Deleted ACLs will always be included if syncToken is provided. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All entries deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/acl/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
          supportsSubscription = true,
        },
      },
    },
    calendarList = {
      methods = {
        delete = {
          description = "Removes a calendar from the user's calendar list.",
          httpMethod = "DELETE",
          id = "calendar.calendarList.delete",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "users/me/calendarList/{calendarId}",
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        get = {
          description = "Returns a calendar from the user's calendar list.",
          httpMethod = "GET",
          id = "calendar.calendarList.get",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "users/me/calendarList/{calendarId}",
          response = {
            ["$ref"] = "CalendarListEntry",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
        insert = {
          description = "Inserts an existing calendar into the user's calendar list.",
          httpMethod = "POST",
          id = "calendar.calendarList.insert",
          parameters = {
            colorRgbFormat = {
              description = "Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "users/me/calendarList",
          request = {
            ["$ref"] = "CalendarListEntry",
          },
          response = {
            ["$ref"] = "CalendarListEntry",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        list = {
          description = "Returns the calendars on the user's calendar list.",
          httpMethod = "GET",
          id = "calendar.calendarList.list",
          parameters = {
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            minAccessRole = {
              description = "The minimum access role for the user in the returned entries. Optional. The default is no restriction.",
              enum = {
                "freeBusyReader",
                "owner",
                "reader",
                "writer",
              },
              enumDescriptions = {
                "The user can read free/busy information.",
                "The user can read and modify events and access control lists.",
                "The user can read events that are not private.",
                "The user can read and modify events.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted calendar list entries in the result. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            showHidden = {
              description = "Whether to show hidden entries. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If only read-only fields such as calendar properties or ACLs have changed, the entry won't be returned. All entries deleted and hidden since the previous list request will always be in the result set and it is not allowed to set showDeleted neither showHidden to False.\
To ensure client state consistency minAccessRole query parameter cannot be specified together with nextSyncToken.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "users/me/calendarList",
          response = {
            ["$ref"] = "CalendarList",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
          supportsSubscription = true,
        },
        patch = {
          description = "Updates an existing calendar on the user's calendar list. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "calendar.calendarList.patch",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            colorRgbFormat = {
              description = "Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "users/me/calendarList/{calendarId}",
          request = {
            ["$ref"] = "CalendarListEntry",
          },
          response = {
            ["$ref"] = "CalendarListEntry",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        update = {
          description = "Updates an existing calendar on the user's calendar list.",
          httpMethod = "PUT",
          id = "calendar.calendarList.update",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            colorRgbFormat = {
              description = "Whether to use the foregroundColor and backgroundColor fields to write the calendar colors (RGB). If this feature is used, the index-based colorId field will be set to the best matching option automatically. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "users/me/calendarList/{calendarId}",
          request = {
            ["$ref"] = "CalendarListEntry",
          },
          response = {
            ["$ref"] = "CalendarListEntry",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        watch = {
          description = "Watch for changes to CalendarList resources.",
          httpMethod = "POST",
          id = "calendar.calendarList.watch",
          parameters = {
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            minAccessRole = {
              description = "The minimum access role for the user in the returned entries. Optional. The default is no restriction.",
              enum = {
                "freeBusyReader",
                "owner",
                "reader",
                "writer",
              },
              enumDescriptions = {
                "The user can read free/busy information.",
                "The user can read and modify events and access control lists.",
                "The user can read events that are not private.",
                "The user can read and modify events.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted calendar list entries in the result. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            showHidden = {
              description = "Whether to show hidden entries. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. If only read-only fields such as calendar properties or ACLs have changed, the entry won't be returned. All entries deleted and hidden since the previous list request will always be in the result set and it is not allowed to set showDeleted neither showHidden to False.\
To ensure client state consistency minAccessRole query parameter cannot be specified together with nextSyncToken.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "users/me/calendarList/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
          supportsSubscription = true,
        },
      },
    },
    calendars = {
      methods = {
        clear = {
          description = "Clears a primary calendar. This operation deletes all events associated with the primary calendar of an account.",
          httpMethod = "POST",
          id = "calendar.calendars.clear",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}/clear",
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        delete = {
          description = "Deletes a secondary calendar. Use calendars.clear for clearing all events on primary calendars.",
          httpMethod = "DELETE",
          id = "calendar.calendars.delete",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}",
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        get = {
          description = "Returns metadata for a calendar.",
          httpMethod = "GET",
          id = "calendar.calendars.get",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}",
          response = {
            ["$ref"] = "Calendar",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
        insert = {
          description = "Creates a secondary calendar.",
          httpMethod = "POST",
          id = "calendar.calendars.insert",
          path = "calendars",
          request = {
            ["$ref"] = "Calendar",
          },
          response = {
            ["$ref"] = "Calendar",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        patch = {
          description = "Updates metadata for a calendar. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "calendar.calendars.patch",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}",
          request = {
            ["$ref"] = "Calendar",
          },
          response = {
            ["$ref"] = "Calendar",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
        update = {
          description = "Updates metadata for a calendar.",
          httpMethod = "PUT",
          id = "calendar.calendars.update",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}",
          request = {
            ["$ref"] = "Calendar",
          },
          response = {
            ["$ref"] = "Calendar",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
          },
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stop watching resources through this channel",
          httpMethod = "POST",
          id = "calendar.channels.stop",
          path = "channels/stop",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
            "https://www.googleapis.com/auth/calendar.events.readonly",
            "https://www.googleapis.com/auth/calendar.readonly",
            "https://www.googleapis.com/auth/calendar.settings.readonly",
          },
        },
      },
    },
    colors = {
      methods = {
        get = {
          description = "Returns the color definitions for calendars and events.",
          httpMethod = "GET",
          id = "calendar.colors.get",
          path = "colors",
          response = {
            ["$ref"] = "Colors",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
      },
    },
    events = {
      methods = {
        delete = {
          description = "Deletes an event.",
          httpMethod = "DELETE",
          id = "calendar.events.delete",
          parameterOrder = {
            "calendarId",
            "eventId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            eventId = {
              description = "Event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the deletion of the event. Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Guests who should receive notifications about the deletion of the event.",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}",
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        get = {
          description = "Returns an event based on its Google Calendar ID. To retrieve an event using its iCalendar ID, call the events.list method using the iCalUID parameter.",
          httpMethod = "GET",
          id = "calendar.events.get",
          parameterOrder = {
            "calendarId",
            "eventId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            eventId = {
              description = "Event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            timeZone = {
              description = "Time zone used in the response. Optional. The default is the time zone of the calendar.",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}",
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
            "https://www.googleapis.com/auth/calendar.events.readonly",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
        import = {
          description = "Imports an event. This operation is used to add a private copy of an existing event to a calendar.",
          httpMethod = "POST",
          id = "calendar.events.import",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            conferenceDataVersion = {
              description = "Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.",
              format = "int32",
              location = "query",
              maximum = "1",
              minimum = "0",
              type = "integer",
            },
            supportsAttachments = {
              description = "Whether API client performing operation supports event attachments. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/events/import",
          request = {
            ["$ref"] = "Event",
          },
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        insert = {
          description = "Creates an event.",
          httpMethod = "POST",
          id = "calendar.events.insert",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            conferenceDataVersion = {
              description = "Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.",
              format = "int32",
              location = "query",
              maximum = "1",
              minimum = "0",
              type = "integer",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the creation of the new event. Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Whether to send notifications about the creation of the new event. Note that some emails might still be sent. The default is false.",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. Warning: Using the value none can have significant adverse effects, including events not syncing to external calendars or events being lost altogether for some users. For calendar migration tasks, consider using the events.import method instead.",
              },
              location = "query",
              type = "string",
            },
            supportsAttachments = {
              description = "Whether API client performing operation supports event attachments. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/events",
          request = {
            ["$ref"] = "Event",
          },
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        instances = {
          description = "Returns instances of the specified recurring event.",
          httpMethod = "GET",
          id = "calendar.events.instances",
          parameterOrder = {
            "calendarId",
            "eventId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            eventId = {
              description = "Recurring event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            maxResults = {
              description = "Maximum number of events returned on one result page. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            originalStart = {
              description = "The original start time of the instance in the result. Optional.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted events (with status equals \"cancelled\") in the result. Cancelled instances of recurring events will still be included if singleEvents is False. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            timeMax = {
              description = "Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeMin = {
              description = "Lower bound (inclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeZone = {
              description = "Time zone used in the response. Optional. The default is the time zone of the calendar.",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}/instances",
          response = {
            ["$ref"] = "Events",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
            "https://www.googleapis.com/auth/calendar.events.readonly",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
          supportsSubscription = true,
        },
        list = {
          description = "Returns events on the specified calendar.",
          httpMethod = "GET",
          id = "calendar.events.list",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            iCalUID = {
              description = "Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to search for an event by its iCalendar ID.",
              location = "query",
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            maxResults = {
              default = "250",
              description = "Maximum number of events returned on one result page. The number of events in the resulting page may be less than this value, or none at all, even if there are more events matching the query. Incomplete pages can be detected by a non-empty nextPageToken field in the response. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "The order of the events returned in the result. Optional. The default is an unspecified, stable order.",
              enum = {
                "startTime",
                "updated",
              },
              enumDescriptions = {
                "Order by the start date/time (ascending). This is only available when querying single events (i.e. the parameter singleEvents is True)",
                "Order by last modification time (ascending).",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            privateExtendedProperty = {
              description = "Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might be repeated multiple times to return events that match all given constraints.",
              location = "query",
              repeated = true,
              type = "string",
            },
            q = {
              description = "Free text search terms to find events that match these terms in the following fields: summary, description, location, attendee's displayName, attendee's email. Optional.",
              location = "query",
              type = "string",
            },
            sharedExtendedProperty = {
              description = "Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might be repeated multiple times to return events that match all given constraints.",
              location = "query",
              repeated = true,
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted events (with status equals \"cancelled\") in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if showDeleted and singleEvents are both False. If showDeleted and singleEvents are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            showHiddenInvitations = {
              description = "Whether to include hidden invitations in the result. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            singleEvents = {
              description = "Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All events deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.\
There are several query parameters that cannot be specified together with nextSyncToken to ensure consistency of the client state.\
\
These are: \
- iCalUID \
- orderBy \
- privateExtendedProperty \
- q \
- sharedExtendedProperty \
- timeMin \
- timeMax \
- updatedMin If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
            timeMax = {
              description = "Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMin is set, timeMax must be greater than timeMin.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeMin = {
              description = "Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMax is set, timeMin must be smaller than timeMax.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeZone = {
              description = "Time zone used in the response. Optional. The default is the time zone of the calendar.",
              location = "query",
              type = "string",
            },
            updatedMin = {
              description = "Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries deleted since this time will always be included regardless of showDeleted. Optional. The default is not to filter by last modification time.",
              format = "date-time",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events",
          response = {
            ["$ref"] = "Events",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
            "https://www.googleapis.com/auth/calendar.events.readonly",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
          supportsSubscription = true,
        },
        move = {
          description = "Moves an event to another calendar, i.e. changes an event's organizer.",
          httpMethod = "POST",
          id = "calendar.events.move",
          parameterOrder = {
            "calendarId",
            "eventId",
            "destination",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier of the source calendar where the event currently is on.",
              location = "path",
              required = true,
              type = "string",
            },
            destination = {
              description = "Calendar identifier of the target calendar where the event is to be moved to.",
              location = "query",
              required = true,
              type = "string",
            },
            eventId = {
              description = "Event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the change of the event's organizer. Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Guests who should receive notifications about the change of the event's organizer.",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}/move",
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        patch = {
          description = "Updates an event. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "calendar.events.patch",
          parameterOrder = {
            "calendarId",
            "eventId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            conferenceDataVersion = {
              description = "Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.",
              format = "int32",
              location = "query",
              maximum = "1",
              minimum = "0",
              type = "integer",
            },
            eventId = {
              description = "Event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the event update (for example, description changes, etc.). Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Guests who should receive notifications about the event update (for example, title changes, etc.).",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.",
              },
              location = "query",
              type = "string",
            },
            supportsAttachments = {
              description = "Whether API client performing operation supports event attachments. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}",
          request = {
            ["$ref"] = "Event",
          },
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        quickAdd = {
          description = "Creates an event based on a simple text string.",
          httpMethod = "POST",
          id = "calendar.events.quickAdd",
          parameterOrder = {
            "calendarId",
            "text",
          },
          parameters = {
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the creation of the event. Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Guests who should receive notifications about the creation of the new event.",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.",
              },
              location = "query",
              type = "string",
            },
            text = {
              description = "The text describing the event to be created.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/quickAdd",
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        update = {
          description = "Updates an event.",
          httpMethod = "PUT",
          id = "calendar.events.update",
          parameterOrder = {
            "calendarId",
            "eventId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            conferenceDataVersion = {
              description = "Version number of conference data supported by the API client. Version 0 assumes no conference data support and ignores conference data in the event's body. Version 1 enables support for copying of ConferenceData as well as for creating new conferences using the createRequest field of conferenceData. The default is 0.",
              format = "int32",
              location = "query",
              maximum = "1",
              minimum = "0",
              type = "integer",
            },
            eventId = {
              description = "Event identifier.",
              location = "path",
              required = true,
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            sendNotifications = {
              description = "Deprecated. Please use sendUpdates instead.\
\
Whether to send notifications about the event update (for example, description changes, etc.). Note that some emails might still be sent even if you set the value to false. The default is false.",
              location = "query",
              type = "boolean",
            },
            sendUpdates = {
              description = "Guests who should receive notifications about the event update (for example, title changes, etc.).",
              enum = {
                "all",
                "externalOnly",
                "none",
              },
              enumDescriptions = {
                "Notifications are sent to all guests.",
                "Notifications are sent to non-Google Calendar guests only.",
                "No notifications are sent. For calendar migration tasks, consider using the Events.import method instead.",
              },
              location = "query",
              type = "string",
            },
            supportsAttachments = {
              description = "Whether API client performing operation supports event attachments. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
          },
          path = "calendars/{calendarId}/events/{eventId}",
          request = {
            ["$ref"] = "Event",
          },
          response = {
            ["$ref"] = "Event",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
          },
        },
        watch = {
          description = "Watch for changes to Events resources.",
          httpMethod = "POST",
          id = "calendar.events.watch",
          parameterOrder = {
            "calendarId",
          },
          parameters = {
            alwaysIncludeEmail = {
              description = "Deprecated and ignored. A value will always be returned in the email field for the organizer, creator and attendees, even if no real email address is available (i.e. a generated, non-working value will be provided).",
              location = "query",
              type = "boolean",
            },
            calendarId = {
              description = "Calendar identifier. To retrieve calendar IDs call the calendarList.list method. If you want to access the primary calendar of the currently logged in user, use the \"primary\" keyword.",
              location = "path",
              required = true,
              type = "string",
            },
            iCalUID = {
              description = "Specifies an event ID in the iCalendar format to be provided in the response. Optional. Use this if you want to search for an event by its iCalendar ID.",
              location = "query",
              type = "string",
            },
            maxAttendees = {
              description = "The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            maxResults = {
              default = "250",
              description = "Maximum number of events returned on one result page. The number of events in the resulting page may be less than this value, or none at all, even if there are more events matching the query. Incomplete pages can be detected by a non-empty nextPageToken field in the response. By default the value is 250 events. The page size can never be larger than 2500 events. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "The order of the events returned in the result. Optional. The default is an unspecified, stable order.",
              enum = {
                "startTime",
                "updated",
              },
              enumDescriptions = {
                "Order by the start date/time (ascending). This is only available when querying single events (i.e. the parameter singleEvents is True)",
                "Order by last modification time (ascending).",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            privateExtendedProperty = {
              description = "Extended properties constraint specified as propertyName=value. Matches only private properties. This parameter might be repeated multiple times to return events that match all given constraints.",
              location = "query",
              repeated = true,
              type = "string",
            },
            q = {
              description = "Free text search terms to find events that match these terms in the following fields: summary, description, location, attendee's displayName, attendee's email. Optional.",
              location = "query",
              type = "string",
            },
            sharedExtendedProperty = {
              description = "Extended properties constraint specified as propertyName=value. Matches only shared properties. This parameter might be repeated multiple times to return events that match all given constraints.",
              location = "query",
              repeated = true,
              type = "string",
            },
            showDeleted = {
              description = "Whether to include deleted events (with status equals \"cancelled\") in the result. Cancelled instances of recurring events (but not the underlying recurring event) will still be included if showDeleted and singleEvents are both False. If showDeleted and singleEvents are both True, only single instances of deleted events (but not the underlying recurring events) are returned. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            showHiddenInvitations = {
              description = "Whether to include hidden invitations in the result. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            singleEvents = {
              description = "Whether to expand recurring events into instances and only return single one-off events and instances of recurring events, but not the underlying recurring events themselves. Optional. The default is False.",
              location = "query",
              type = "boolean",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then. All events deleted since the previous list request will always be in the result set and it is not allowed to set showDeleted to False.\
There are several query parameters that cannot be specified together with nextSyncToken to ensure consistency of the client state.\
\
These are: \
- iCalUID \
- orderBy \
- privateExtendedProperty \
- q \
- sharedExtendedProperty \
- timeMin \
- timeMax \
- updatedMin If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
            timeMax = {
              description = "Upper bound (exclusive) for an event's start time to filter by. Optional. The default is not to filter by start time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMin is set, timeMax must be greater than timeMin.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeMin = {
              description = "Lower bound (exclusive) for an event's end time to filter by. Optional. The default is not to filter by end time. Must be an RFC3339 timestamp with mandatory time zone offset, for example, 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be provided but are ignored. If timeMax is set, timeMin must be smaller than timeMax.",
              format = "date-time",
              location = "query",
              type = "string",
            },
            timeZone = {
              description = "Time zone used in the response. Optional. The default is the time zone of the calendar.",
              location = "query",
              type = "string",
            },
            updatedMin = {
              description = "Lower bound for an event's last modification time (as a RFC3339 timestamp) to filter by. When specified, entries deleted since this time will always be included regardless of showDeleted. Optional. The default is not to filter by last modification time.",
              format = "date-time",
              location = "query",
              type = "string",
            },
          },
          path = "calendars/{calendarId}/events/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.events",
            "https://www.googleapis.com/auth/calendar.events.readonly",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
          supportsSubscription = true,
        },
      },
    },
    freebusy = {
      methods = {
        query = {
          description = "Returns free/busy information for a set of calendars.",
          httpMethod = "POST",
          id = "calendar.freebusy.query",
          path = "freeBusy",
          request = {
            ["$ref"] = "FreeBusyRequest",
          },
          response = {
            ["$ref"] = "FreeBusyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
          },
        },
      },
    },
    settings = {
      methods = {
        get = {
          description = "Returns a single user setting.",
          httpMethod = "GET",
          id = "calendar.settings.get",
          parameterOrder = {
            "setting",
          },
          parameters = {
            setting = {
              description = "The id of the user setting.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "users/me/settings/{setting}",
          response = {
            ["$ref"] = "Setting",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
            "https://www.googleapis.com/auth/calendar.settings.readonly",
          },
        },
        list = {
          description = "Returns all user settings for the authenticated user.",
          httpMethod = "GET",
          id = "calendar.settings.list",
          parameters = {
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "users/me/settings",
          response = {
            ["$ref"] = "Settings",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
            "https://www.googleapis.com/auth/calendar.settings.readonly",
          },
          supportsSubscription = true,
        },
        watch = {
          description = "Watch for changes to Settings resources.",
          httpMethod = "POST",
          id = "calendar.settings.watch",
          parameters = {
            maxResults = {
              description = "Maximum number of entries returned on one result page. By default the value is 100 entries. The page size can never be larger than 250 entries. Optional.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token specifying which result page to return. Optional.",
              location = "query",
              type = "string",
            },
            syncToken = {
              description = "Token obtained from the nextSyncToken field returned on the last page of results from the previous list request. It makes the result of this list request contain only entries that have changed since then.\
If the syncToken expires, the server will respond with a 410 GONE response code and the client should clear its storage and perform a full synchronization without any syncToken.\
Learn more about incremental synchronization.\
Optional. The default is to return all entries.",
              location = "query",
              type = "string",
            },
          },
          path = "users/me/settings/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/calendar",
            "https://www.googleapis.com/auth/calendar.readonly",
            "https://www.googleapis.com/auth/calendar.settings.readonly",
          },
          supportsSubscription = true,
        },
      },
    },
  },
  revision = "20221229",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    Acl = {
      id = "Acl",
      properties = {
        etag = {
          description = "ETag of the collection.",
          type = "string",
        },
        items = {
          description = "List of rules on the access control list.",
          items = {
            ["$ref"] = "AclRule",
          },
          type = "array",
        },
        kind = {
          default = "calendar#acl",
          description = "Type of the collection (\"calendar#acl\").",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.",
          type = "string",
        },
        nextSyncToken = {
          description = "Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.",
          type = "string",
        },
      },
      type = "object",
    },
    AclRule = {
      id = "AclRule",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "Identifier of the Access Control List (ACL) rule. See Sharing calendars.",
          type = "string",
        },
        kind = {
          default = "calendar#aclRule",
          description = "Type of the resource (\"calendar#aclRule\").",
          type = "string",
        },
        role = {
          annotations = {
            required = {
              "calendar.acl.insert",
            },
          },
          description = "The role assigned to the scope. Possible values are:  \
- \"none\" - Provides no access. \
- \"freeBusyReader\" - Provides read access to free/busy information. \
- \"reader\" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. \
- \"writer\" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. \
- \"owner\" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.",
          type = "string",
        },
        scope = {
          annotations = {
            required = {
              "calendar.acl.insert",
              "calendar.acl.update",
            },
          },
          description = "The extent to which calendar access is granted by this ACL rule.",
          properties = {
            type = {
              annotations = {
                required = {
                  "calendar.acl.insert",
                  "calendar.acl.update",
                },
              },
              description = "The type of the scope. Possible values are:  \
- \"default\" - The public scope. This is the default value. \
- \"user\" - Limits the scope to a single user. \
- \"group\" - Limits the scope to a group. \
- \"domain\" - Limits the scope to a domain.  Note: The permissions granted to the \"default\", or public, scope apply to any user, authenticated or not.",
              type = "string",
            },
            value = {
              description = "The email address of a user or group, or the name of a domain, depending on the scope type. Omitted for type \"default\".",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    Calendar = {
      id = "Calendar",
      properties = {
        conferenceProperties = {
          ["$ref"] = "ConferenceProperties",
          description = "Conferencing properties for this calendar, for example what types of conferences are allowed.",
        },
        description = {
          description = "Description of the calendar. Optional.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "Identifier of the calendar. To retrieve IDs call the calendarList.list() method.",
          type = "string",
        },
        kind = {
          default = "calendar#calendar",
          description = "Type of the resource (\"calendar#calendar\").",
          type = "string",
        },
        location = {
          description = "Geographic location of the calendar as free-form text. Optional.",
          type = "string",
        },
        summary = {
          annotations = {
            required = {
              "calendar.calendars.insert",
            },
          },
          description = "Title of the calendar.",
          type = "string",
        },
        timeZone = {
          description = "The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. \"Europe/Zurich\".) Optional.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarList = {
      id = "CalendarList",
      properties = {
        etag = {
          description = "ETag of the collection.",
          type = "string",
        },
        items = {
          description = "Calendars that are present on the user's calendar list.",
          items = {
            ["$ref"] = "CalendarListEntry",
          },
          type = "array",
        },
        kind = {
          default = "calendar#calendarList",
          description = "Type of the collection (\"calendar#calendarList\").",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.",
          type = "string",
        },
        nextSyncToken = {
          description = "Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarListEntry = {
      id = "CalendarListEntry",
      properties = {
        accessRole = {
          description = "The effective access role that the authenticated user has on the calendar. Read-only. Possible values are:  \
- \"freeBusyReader\" - Provides read access to free/busy information. \
- \"reader\" - Provides read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. \
- \"writer\" - Provides read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. \
- \"owner\" - Provides ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.",
          type = "string",
        },
        backgroundColor = {
          description = "The main color of the calendar in the hexadecimal format \"#0088aa\". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.",
          type = "string",
        },
        colorId = {
          description = "The color of the calendar. This is an ID referring to an entry in the calendar section of the colors definition (see the colors endpoint). This property is superseded by the backgroundColor and foregroundColor properties and can be ignored when using these properties. Optional.",
          type = "string",
        },
        conferenceProperties = {
          ["$ref"] = "ConferenceProperties",
          description = "Conferencing properties for this calendar, for example what types of conferences are allowed.",
        },
        defaultReminders = {
          description = "The default reminders that the authenticated user has for this calendar.",
          items = {
            ["$ref"] = "EventReminder",
          },
          type = "array",
        },
        deleted = {
          default = "false",
          description = "Whether this calendar list entry has been deleted from the calendar list. Read-only. Optional. The default is False.",
          type = "boolean",
        },
        description = {
          description = "Description of the calendar. Optional. Read-only.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        foregroundColor = {
          description = "The foreground color of the calendar in the hexadecimal format \"#ffffff\". This property supersedes the index-based colorId property. To set or change this property, you need to specify colorRgbFormat=true in the parameters of the insert, update and patch methods. Optional.",
          type = "string",
        },
        hidden = {
          default = "false",
          description = "Whether the calendar has been hidden from the list. Optional. The attribute is only returned when the calendar is hidden, in which case the value is true.",
          type = "boolean",
        },
        id = {
          annotations = {
            required = {
              "calendar.calendarList.insert",
            },
          },
          description = "Identifier of the calendar.",
          type = "string",
        },
        kind = {
          default = "calendar#calendarListEntry",
          description = "Type of the resource (\"calendar#calendarListEntry\").",
          type = "string",
        },
        location = {
          description = "Geographic location of the calendar as free-form text. Optional. Read-only.",
          type = "string",
        },
        notificationSettings = {
          description = "The notifications that the authenticated user is receiving for this calendar.",
          properties = {
            notifications = {
              description = "The list of notifications set for this calendar.",
              items = {
                ["$ref"] = "CalendarNotification",
              },
              type = "array",
            },
          },
          type = "object",
        },
        primary = {
          default = "false",
          description = "Whether the calendar is the primary calendar of the authenticated user. Read-only. Optional. The default is False.",
          type = "boolean",
        },
        selected = {
          default = "false",
          description = "Whether the calendar content shows up in the calendar UI. Optional. The default is False.",
          type = "boolean",
        },
        summary = {
          description = "Title of the calendar. Read-only.",
          type = "string",
        },
        summaryOverride = {
          description = "The summary that the authenticated user has set for this calendar. Optional.",
          type = "string",
        },
        timeZone = {
          description = "The time zone of the calendar. Optional. Read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarNotification = {
      id = "CalendarNotification",
      properties = {
        method = {
          description = "The method used to deliver the notification. The possible value is:  \
- \"email\" - Notifications are sent via email.  \
Required when adding a notification.",
          type = "string",
        },
        type = {
          description = "The type of notification. Possible values are:  \
- \"eventCreation\" - Notification sent when a new event is put on the calendar. \
- \"eventChange\" - Notification sent when an event is changed. \
- \"eventCancellation\" - Notification sent when an event is cancelled. \
- \"eventResponse\" - Notification sent when an attendee responds to the event invitation. \
- \"agenda\" - An agenda with the events of the day (sent out in the morning).  \
Required when adding a notification.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      id = "Channel",
      properties = {
        address = {
          description = "The address where notifications are delivered for this channel.",
          type = "string",
        },
        expiration = {
          description = "Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "A UUID or similar unique string that identifies this channel.",
          type = "string",
        },
        kind = {
          default = "api#channel",
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".",
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Declares a new parameter by name.",
            type = "string",
          },
          description = "Additional parameters controlling delivery channel behavior. Optional.",
          type = "object",
        },
        payload = {
          description = "A Boolean value to indicate whether payload is wanted. Optional.",
          type = "boolean",
        },
        resourceId = {
          description = "An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.",
          type = "string",
        },
        resourceUri = {
          description = "A version-specific identifier for the watched resource.",
          type = "string",
        },
        token = {
          description = "An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.",
          type = "string",
        },
        type = {
          description = "The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.",
          type = "string",
        },
      },
      type = "object",
    },
    ColorDefinition = {
      id = "ColorDefinition",
      properties = {
        background = {
          description = "The background color associated with this color definition.",
          type = "string",
        },
        foreground = {
          description = "The foreground color that can be used to write on top of a background with 'background' color.",
          type = "string",
        },
      },
      type = "object",
    },
    Colors = {
      id = "Colors",
      properties = {
        calendar = {
          additionalProperties = {
            ["$ref"] = "ColorDefinition",
            description = "A calendar color definition.",
          },
          description = "A global palette of calendar colors, mapping from the color ID to its definition. A calendarListEntry resource refers to one of these color IDs in its colorId field. Read-only.",
          type = "object",
        },
        event = {
          additionalProperties = {
            ["$ref"] = "ColorDefinition",
            description = "An event color definition.",
          },
          description = "A global palette of event colors, mapping from the color ID to its definition. An event resource may refer to one of these color IDs in its colorId field. Read-only.",
          type = "object",
        },
        kind = {
          default = "calendar#colors",
          description = "Type of the resource (\"calendar#colors\").",
          type = "string",
        },
        updated = {
          description = "Last modification time of the color palette (as a RFC3339 timestamp). Read-only.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    ConferenceData = {
      id = "ConferenceData",
      properties = {
        conferenceId = {
          description = "The ID of the conference.\
Can be used by developers to keep track of conferences, should not be displayed to users.\
The ID value is formed differently for each conference solution type:  \
- eventHangout: ID is not set. (This conference type is deprecated.)\
- eventNamedHangout: ID is the name of the Hangout. (This conference type is deprecated.)\
- hangoutsMeet: ID is the 10-letter meeting code, for example aaa-bbbb-ccc.\
- addOn: ID is defined by the third-party provider.  Optional.",
          type = "string",
        },
        conferenceSolution = {
          ["$ref"] = "ConferenceSolution",
          description = "The conference solution, such as Google Meet.\
Unset for a conference with a failed create request.\
Either conferenceSolution and at least one entryPoint, or createRequest is required.",
        },
        createRequest = {
          ["$ref"] = "CreateConferenceRequest",
          description = "A request to generate a new conference and attach it to the event. The data is generated asynchronously. To see whether the data is present check the status field.\
Either conferenceSolution and at least one entryPoint, or createRequest is required.",
        },
        entryPoints = {
          description = "Information about individual conference entry points, such as URLs or phone numbers.\
All of them must belong to the same conference.\
Either conferenceSolution and at least one entryPoint, or createRequest is required.",
          items = {
            ["$ref"] = "EntryPoint",
          },
          type = "array",
        },
        notes = {
          description = "Additional notes (such as instructions from the domain administrator, legal notices) to display to the user. Can contain HTML. The maximum length is 2048 characters. Optional.",
          type = "string",
        },
        parameters = {
          ["$ref"] = "ConferenceParameters",
          description = "Additional properties related to a conference. An example would be a solution-specific setting for enabling video streaming.",
        },
        signature = {
          description = "The signature of the conference data.\
Generated on server side.\
Unset for a conference with a failed create request.\
Optional for a conference with a pending create request.",
          type = "string",
        },
      },
      type = "object",
    },
    ConferenceParameters = {
      id = "ConferenceParameters",
      properties = {
        addOnParameters = {
          ["$ref"] = "ConferenceParametersAddOnParameters",
          description = "Additional add-on specific data.",
        },
      },
      type = "object",
    },
    ConferenceParametersAddOnParameters = {
      id = "ConferenceParametersAddOnParameters",
      properties = {
        parameters = {
          additionalProperties = {
            type = "string",
          },
          type = "object",
        },
      },
      type = "object",
    },
    ConferenceProperties = {
      id = "ConferenceProperties",
      properties = {
        allowedConferenceSolutionTypes = {
          description = "The types of conference solutions that are supported for this calendar.\
The possible values are:  \
- \"eventHangout\" \
- \"eventNamedHangout\" \
- \"hangoutsMeet\"  Optional.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConferenceRequestStatus = {
      id = "ConferenceRequestStatus",
      properties = {
        statusCode = {
          description = "The current status of the conference create request. Read-only.\
The possible values are:  \
- \"pending\": the conference create request is still being processed.\
- \"success\": the conference create request succeeded, the entry points are populated.\
- \"failure\": the conference create request failed, there are no entry points.",
          type = "string",
        },
      },
      type = "object",
    },
    ConferenceSolution = {
      id = "ConferenceSolution",
      properties = {
        iconUri = {
          description = "The user-visible icon for this solution.",
          type = "string",
        },
        key = {
          ["$ref"] = "ConferenceSolutionKey",
          description = "The key which can uniquely identify the conference solution for this event.",
        },
        name = {
          description = "The user-visible name of this solution. Not localized.",
          type = "string",
        },
      },
      type = "object",
    },
    ConferenceSolutionKey = {
      id = "ConferenceSolutionKey",
      properties = {
        type = {
          description = "The conference solution type.\
If a client encounters an unfamiliar or empty type, it should still be able to display the entry points. However, it should disallow modifications.\
The possible values are:  \
- \"eventHangout\" for Hangouts for consumers (deprecated; existing events may show this conference solution type but new conferences cannot be created)\
- \"eventNamedHangout\" for classic Hangouts for Google Workspace users (deprecated; existing events may show this conference solution type but new conferences cannot be created)\
- \"hangoutsMeet\" for Google Meet (http://meet.google.com)\
- \"addOn\" for 3P conference providers",
          type = "string",
        },
      },
      type = "object",
    },
    CreateConferenceRequest = {
      id = "CreateConferenceRequest",
      properties = {
        conferenceSolutionKey = {
          ["$ref"] = "ConferenceSolutionKey",
          description = "The conference solution, such as Hangouts or Google Meet.",
        },
        requestId = {
          description = "The client-generated unique ID for this request.\
Clients should regenerate this ID for every new request. If an ID provided is the same as for the previous request, the request is ignored.",
          type = "string",
        },
        status = {
          ["$ref"] = "ConferenceRequestStatus",
          description = "The status of the conference create request.",
        },
      },
      type = "object",
    },
    EntryPoint = {
      id = "EntryPoint",
      properties = {
        accessCode = {
          description = "The access code to access the conference. The maximum length is 128 characters.\
When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.\
Optional.",
          type = "string",
        },
        entryPointFeatures = {
          description = "Features of the entry point, such as being toll or toll-free. One entry point can have multiple features. However, toll and toll-free cannot be both set on the same entry point.",
          items = {
            type = "string",
          },
          type = "array",
        },
        entryPointType = {
          description = "The type of the conference entry point.\
Possible values are:  \
- \"video\" - joining a conference over HTTP. A conference can have zero or one video entry point.\
- \"phone\" - joining a conference by dialing a phone number. A conference can have zero or more phone entry points.\
- \"sip\" - joining a conference over SIP. A conference can have zero or one sip entry point.\
- \"more\" - further conference joining instructions, for example additional phone numbers. A conference can have zero or one more entry point. A conference with only a more entry point is not a valid conference.",
          type = "string",
        },
        label = {
          description = "The label for the URI. Visible to end users. Not localized. The maximum length is 512 characters.\
Examples:  \
- for video: meet.google.com/aaa-bbbb-ccc\
- for phone: +1 123 268 2601\
- for sip: 12345678@altostrat.com\
- for more: should not be filled  \
Optional.",
          type = "string",
        },
        meetingCode = {
          description = "The meeting code to access the conference. The maximum length is 128 characters.\
When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.\
Optional.",
          type = "string",
        },
        passcode = {
          description = "The passcode to access the conference. The maximum length is 128 characters.\
When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.",
          type = "string",
        },
        password = {
          description = "The password to access the conference. The maximum length is 128 characters.\
When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.\
Optional.",
          type = "string",
        },
        pin = {
          description = "The PIN to access the conference. The maximum length is 128 characters.\
When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.\
Optional.",
          type = "string",
        },
        regionCode = {
          description = "The CLDR/ISO 3166 region code for the country associated with this phone access. Example: \"SE\" for Sweden.\
Calendar backend will populate this field only for EntryPointType.PHONE.",
          type = "string",
        },
        uri = {
          description = "The URI of the entry point. The maximum length is 1300 characters.\
Format:  \
- for video, http: or https: schema is required.\
- for phone, tel: schema is required. The URI should include the entire dial sequence (e.g., tel:+12345678900,,,123456789;1234).\
- for sip, sip: schema is required, e.g., sip:12345678@myprovider.com.\
- for more, http: or https: schema is required.",
          type = "string",
        },
      },
      type = "object",
    },
    Error = {
      id = "Error",
      properties = {
        domain = {
          description = "Domain, or broad category, of the error.",
          type = "string",
        },
        reason = {
          description = "Specific reason for the error. Some of the possible values are:  \
- \"groupTooBig\" - The group of users requested is too large for a single query. \
- \"tooManyCalendarsRequested\" - The number of calendars requested is too large for a single query. \
- \"notFound\" - The requested resource was not found. \
- \"internalError\" - The API service has encountered an internal error.  Additional error types may be added in the future, so clients should gracefully handle additional error statuses not included in this list.",
          type = "string",
        },
      },
      type = "object",
    },
    Event = {
      id = "Event",
      properties = {
        anyoneCanAddSelf = {
          default = "false",
          description = "Whether anyone can invite themselves to the event (deprecated). Optional. The default is False.",
          type = "boolean",
        },
        attachments = {
          description = "File attachments for the event.\
In order to modify attachments the supportsAttachments request parameter should be set to true.\
There can be at most 25 attachments per event,",
          items = {
            ["$ref"] = "EventAttachment",
          },
          type = "array",
        },
        attendees = {
          description = "The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users. Service accounts need to use domain-wide delegation of authority to populate the attendee list.",
          items = {
            ["$ref"] = "EventAttendee",
          },
          type = "array",
        },
        attendeesOmitted = {
          default = "false",
          description = "Whether attendees may have been omitted from the event's representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant's response. Optional. The default is False.",
          type = "boolean",
        },
        colorId = {
          description = "The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the  colors endpoint). Optional.",
          type = "string",
        },
        conferenceData = {
          ["$ref"] = "ConferenceData",
          description = "The conference-related information, such as details of a Google Meet conference. To create new conference details use the createRequest field. To persist your changes, remember to set the conferenceDataVersion request parameter to 1 for all event modification requests.",
        },
        created = {
          description = "Creation time of the event (as a RFC3339 timestamp). Read-only.",
          format = "date-time",
          type = "string",
        },
        creator = {
          description = "The creator of the event. Read-only.",
          properties = {
            displayName = {
              description = "The creator's name, if available.",
              type = "string",
            },
            email = {
              description = "The creator's email address, if available.",
              type = "string",
            },
            id = {
              description = "The creator's Profile ID, if available.",
              type = "string",
            },
            self = {
              default = "false",
              description = "Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False.",
              type = "boolean",
            },
          },
          type = "object",
        },
        description = {
          description = "Description of the event. Can contain HTML. Optional.",
          type = "string",
        },
        ["end"] = {
          ["$ref"] = "EventDateTime",
          annotations = {
            required = {
              "calendar.events.import",
              "calendar.events.insert",
              "calendar.events.update",
            },
          },
          description = "The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance.",
        },
        endTimeUnspecified = {
          default = "false",
          description = "Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False.",
          type = "boolean",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        eventType = {
          default = "default",
          description = "Specific type of the event. Read-only. Possible values are:  \
- \"default\" - A regular event or not further specified. \
- \"outOfOffice\" - An out-of-office event. \
- \"focusTime\" - A focus-time event.",
          type = "string",
        },
        extendedProperties = {
          description = "Extended properties of the event.",
          properties = {
            private = {
              additionalProperties = {
                description = "The name of the private property and the corresponding value.",
                type = "string",
              },
              description = "Properties that are private to the copy of the event that appears on this calendar.",
              type = "object",
            },
            shared = {
              additionalProperties = {
                description = "The name of the shared property and the corresponding value.",
                type = "string",
              },
              description = "Properties that are shared between copies of the event on other attendees' calendars.",
              type = "object",
            },
          },
          type = "object",
        },
        gadget = {
          description = "A gadget that extends this event. Gadgets are deprecated; this structure is instead only used for returning birthday calendar metadata.",
          properties = {
            display = {
              description = "The gadget's display mode. Deprecated. Possible values are:  \
- \"icon\" - The gadget displays next to the event's title in the calendar view. \
- \"chip\" - The gadget displays when the event is clicked.",
              type = "string",
            },
            height = {
              description = "The gadget's height in pixels. The height must be an integer greater than 0. Optional. Deprecated.",
              format = "int32",
              type = "integer",
            },
            iconLink = {
              description = "The gadget's icon URL. The URL scheme must be HTTPS. Deprecated.",
              type = "string",
            },
            link = {
              description = "The gadget's URL. The URL scheme must be HTTPS. Deprecated.",
              type = "string",
            },
            preferences = {
              additionalProperties = {
                description = "The preference name and corresponding value.",
                type = "string",
              },
              description = "Preferences.",
              type = "object",
            },
            title = {
              description = "The gadget's title. Deprecated.",
              type = "string",
            },
            type = {
              description = "The gadget's type. Deprecated.",
              type = "string",
            },
            width = {
              description = "The gadget's width in pixels. The width must be an integer greater than 0. Optional. Deprecated.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        guestsCanInviteOthers = {
          default = "true",
          description = "Whether attendees other than the organizer can invite others to the event. Optional. The default is True.",
          type = "boolean",
        },
        guestsCanModify = {
          default = "false",
          description = "Whether attendees other than the organizer can modify the event. Optional. The default is False.",
          type = "boolean",
        },
        guestsCanSeeOtherGuests = {
          default = "true",
          description = "Whether attendees other than the organizer can see who the event's attendees are. Optional. The default is True.",
          type = "boolean",
        },
        hangoutLink = {
          description = "An absolute link to the Google Hangout associated with this event. Read-only.",
          type = "string",
        },
        htmlLink = {
          description = "An absolute link to this event in the Google Calendar Web UI. Read-only.",
          type = "string",
        },
        iCalUID = {
          annotations = {
            required = {
              "calendar.events.import",
            },
          },
          description = "Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method.\
Note that the iCalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same iCalUIDs. To retrieve an event using its iCalUID, call the events.list method using the iCalUID parameter. To retrieve an event using its id, call the events.get method.",
          type = "string",
        },
        id = {
          description = "Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:  \
- characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938 \
- the length of the ID must be between 5 and 1024 characters \
- the ID must be unique per calendar  Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122.\
If you do not specify an ID, it will be automatically generated by the server.\
Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs.",
          type = "string",
        },
        kind = {
          default = "calendar#event",
          description = "Type of the resource (\"calendar#event\").",
          type = "string",
        },
        location = {
          description = "Geographic location of the event as free-form text. Optional.",
          type = "string",
        },
        locked = {
          default = "false",
          description = "Whether this is a locked event copy where no changes can be made to the main event fields \"summary\", \"description\", \"location\", \"start\", \"end\" or \"recurrence\". The default is False. Read-Only.",
          type = "boolean",
        },
        organizer = {
          description = "The organizer of the event. If the organizer is also an attendee, this is indicated with a separate entry in attendees with the organizer field set to True. To change the organizer, use the move operation. Read-only, except when importing an event.",
          properties = {
            displayName = {
              description = "The organizer's name, if available.",
              type = "string",
            },
            email = {
              description = "The organizer's email address, if available. It must be a valid email address as per RFC5322.",
              type = "string",
            },
            id = {
              description = "The organizer's Profile ID, if available.",
              type = "string",
            },
            self = {
              default = "false",
              description = "Whether the organizer corresponds to the calendar on which this copy of the event appears. Read-only. The default is False.",
              type = "boolean",
            },
          },
          type = "object",
        },
        originalStartTime = {
          ["$ref"] = "EventDateTime",
          description = "For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. It uniquely identifies the instance within the recurring event series even if the instance was moved to a different time. Immutable.",
        },
        privateCopy = {
          default = "false",
          description = "If set to True, Event propagation is disabled. Note that it is not the same thing as Private event properties. Optional. Immutable. The default is False.",
          type = "boolean",
        },
        recurrence = {
          description = "List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events.",
          items = {
            type = "string",
          },
          type = "array",
        },
        recurringEventId = {
          description = "For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable.",
          type = "string",
        },
        reminders = {
          description = "Information about the event's reminders for the authenticated user.",
          properties = {
            overrides = {
              description = "If the event doesn't use the default reminders, this lists the reminders specific to the event, or, if not set, indicates that no reminders are set for this event. The maximum number of override reminders is 5.",
              items = {
                ["$ref"] = "EventReminder",
              },
              type = "array",
            },
            useDefault = {
              description = "Whether the default reminders of the calendar apply to the event.",
              type = "boolean",
            },
          },
          type = "object",
        },
        sequence = {
          description = "Sequence number as per iCalendar.",
          format = "int32",
          type = "integer",
        },
        source = {
          description = "Source from which the event was created. For example, a web page, an email message or any document identifiable by an URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator of the event.",
          properties = {
            title = {
              description = "Title of the source; for example a title of a web page or an email subject.",
              type = "string",
            },
            url = {
              description = "URL of the source pointing to a resource. The URL scheme must be HTTP or HTTPS.",
              type = "string",
            },
          },
          type = "object",
        },
        start = {
          ["$ref"] = "EventDateTime",
          annotations = {
            required = {
              "calendar.events.import",
              "calendar.events.insert",
              "calendar.events.update",
            },
          },
          description = "The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance.",
        },
        status = {
          description = "Status of the event. Optional. Possible values are:  \
- \"confirmed\" - The event is confirmed. This is the default status. \
- \"tentative\" - The event is tentatively confirmed. \
- \"cancelled\" - The event is cancelled (deleted). The list method returns cancelled events only on incremental sync (when syncToken or updatedMin are specified) or if the showDeleted flag is set to true. The get method always returns them.\
A cancelled status represents two different states depending on the event type:  \
- Cancelled exceptions of an uncancelled recurring event indicate that this instance should no longer be presented to the user. Clients should store these events for the lifetime of the parent recurring event.\
Cancelled exceptions are only guaranteed to have values for the id, recurringEventId and originalStartTime fields populated. The other fields might be empty.  \
- All other cancelled events represent deleted events. Clients should remove their locally synced copies. Such cancelled events will eventually disappear, so do not rely on them being available indefinitely.\
Deleted events are only guaranteed to have the id field populated.   On the organizer's calendar, cancelled events continue to expose event details (summary, location, etc.) so that they can be restored (undeleted). Similarly, the events to which the user was invited and that they manually removed continue to provide details. However, incremental sync requests with showDeleted set to false will not return these details.\
If an event changes its organizer (for example via the move operation) and the original organizer is not on the attendee list, it will leave behind a cancelled event where only the id field is guaranteed to be populated.",
          type = "string",
        },
        summary = {
          description = "Title of the event.",
          type = "string",
        },
        transparency = {
          default = "opaque",
          description = "Whether the event blocks time on the calendar. Optional. Possible values are:  \
- \"opaque\" - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI. \
- \"transparent\" - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI.",
          type = "string",
        },
        updated = {
          description = "Last modification time of the event (as a RFC3339 timestamp). Read-only.",
          format = "date-time",
          type = "string",
        },
        visibility = {
          default = "default",
          description = "Visibility of the event. Optional. Possible values are:  \
- \"default\" - Uses the default visibility for events on the calendar. This is the default value. \
- \"public\" - The event is public and event details are visible to all readers of the calendar. \
- \"private\" - The event is private and only event attendees may view event details. \
- \"confidential\" - The event is private. This value is provided for compatibility reasons.",
          type = "string",
        },
      },
      type = "object",
    },
    EventAttachment = {
      id = "EventAttachment",
      properties = {
        fileId = {
          description = "ID of the attached file. Read-only.\
For Google Drive files, this is the ID of the corresponding Files resource entry in the Drive API.",
          type = "string",
        },
        fileUrl = {
          description = "URL link to the attachment.\
For adding Google Drive file attachments use the same format as in alternateLink property of the Files resource in the Drive API.\
Required when adding an attachment.",
          type = "string",
        },
        iconLink = {
          description = "URL link to the attachment's icon. This field can only be modified for custom third-party attachments.",
          type = "string",
        },
        mimeType = {
          description = "Internet media type (MIME type) of the attachment.",
          type = "string",
        },
        title = {
          description = "Attachment title.",
          type = "string",
        },
      },
      type = "object",
    },
    EventAttendee = {
      id = "EventAttendee",
      properties = {
        additionalGuests = {
          default = "0",
          description = "Number of additional guests. Optional. The default is 0.",
          format = "int32",
          type = "integer",
        },
        comment = {
          description = "The attendee's response comment. Optional.",
          type = "string",
        },
        displayName = {
          description = "The attendee's name, if available. Optional.",
          type = "string",
        },
        email = {
          description = "The attendee's email address, if available. This field must be present when adding an attendee. It must be a valid email address as per RFC5322.\
Required when adding an attendee.",
          type = "string",
        },
        id = {
          description = "The attendee's Profile ID, if available.",
          type = "string",
        },
        optional = {
          default = "false",
          description = "Whether this is an optional attendee. Optional. The default is False.",
          type = "boolean",
        },
        organizer = {
          description = "Whether the attendee is the organizer of the event. Read-only. The default is False.",
          type = "boolean",
        },
        resource = {
          default = "false",
          description = "Whether the attendee is a resource. Can only be set when the attendee is added to the event for the first time. Subsequent modifications are ignored. Optional. The default is False.",
          type = "boolean",
        },
        responseStatus = {
          description = "The attendee's response status. Possible values are:  \
- \"needsAction\" - The attendee has not responded to the invitation (recommended for new events). \
- \"declined\" - The attendee has declined the invitation. \
- \"tentative\" - The attendee has tentatively accepted the invitation. \
- \"accepted\" - The attendee has accepted the invitation.  Warning: If you add an event using the values declined, tentative, or accepted, attendees with the \"Add invitations to my calendar\" setting set to \"When I respond to invitation in email\" won't see an event on their calendar unless they choose to change their invitation response in the event invitation email.",
          type = "string",
        },
        self = {
          default = "false",
          description = "Whether this entry represents the calendar on which this copy of the event appears. Read-only. The default is False.",
          type = "boolean",
        },
      },
      type = "object",
    },
    EventDateTime = {
      id = "EventDateTime",
      properties = {
        date = {
          description = "The date, in the format \"yyyy-mm-dd\", if this is an all-day event.",
          format = "date",
          type = "string",
        },
        dateTime = {
          description = "The time, as a combined date-time value (formatted according to RFC3339). A time zone offset is required unless a time zone is explicitly specified in timeZone.",
          format = "date-time",
          type = "string",
        },
        timeZone = {
          description = "The time zone in which the time is specified. (Formatted as an IANA Time Zone Database name, e.g. \"Europe/Zurich\".) For recurring events this field is required and specifies the time zone in which the recurrence is expanded. For single events this field is optional and indicates a custom time zone for the event start/end.",
          type = "string",
        },
      },
      type = "object",
    },
    EventReminder = {
      id = "EventReminder",
      properties = {
        method = {
          description = "The method used by this reminder. Possible values are:  \
- \"email\" - Reminders are sent via email. \
- \"popup\" - Reminders are sent via a UI popup.  \
Required when adding a reminder.",
          type = "string",
        },
        minutes = {
          description = "Number of minutes before the start of the event when the reminder should trigger. Valid values are between 0 and 40320 (4 weeks in minutes).\
Required when adding a reminder.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Events = {
      id = "Events",
      properties = {
        accessRole = {
          description = "The user's access role for this calendar. Read-only. Possible values are:  \
- \"none\" - The user has no access. \
- \"freeBusyReader\" - The user has read access to free/busy information. \
- \"reader\" - The user has read access to the calendar. Private events will appear to users with reader access, but event details will be hidden. \
- \"writer\" - The user has read and write access to the calendar. Private events will appear to users with writer access, and event details will be visible. \
- \"owner\" - The user has ownership of the calendar. This role has all of the permissions of the writer role with the additional ability to see and manipulate ACLs.",
          type = "string",
        },
        defaultReminders = {
          description = "The default reminders on the calendar for the authenticated user. These reminders apply to all events on this calendar that do not explicitly override them (i.e. do not have reminders.useDefault set to True).",
          items = {
            ["$ref"] = "EventReminder",
          },
          type = "array",
        },
        description = {
          description = "Description of the calendar. Read-only.",
          type = "string",
        },
        etag = {
          description = "ETag of the collection.",
          type = "string",
        },
        items = {
          description = "List of events on the calendar.",
          items = {
            ["$ref"] = "Event",
          },
          type = "array",
        },
        kind = {
          default = "calendar#events",
          description = "Type of the collection (\"calendar#events\").",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.",
          type = "string",
        },
        nextSyncToken = {
          description = "Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.",
          type = "string",
        },
        summary = {
          description = "Title of the calendar. Read-only.",
          type = "string",
        },
        timeZone = {
          description = "The time zone of the calendar. Read-only.",
          type = "string",
        },
        updated = {
          description = "Last modification time of the calendar (as a RFC3339 timestamp). Read-only.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    FreeBusyCalendar = {
      id = "FreeBusyCalendar",
      properties = {
        busy = {
          description = "List of time ranges during which this calendar should be regarded as busy.",
          items = {
            ["$ref"] = "TimePeriod",
          },
          type = "array",
        },
        errors = {
          description = "Optional error(s) (if computation for the calendar failed).",
          items = {
            ["$ref"] = "Error",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FreeBusyGroup = {
      id = "FreeBusyGroup",
      properties = {
        calendars = {
          description = "List of calendars' identifiers within a group.",
          items = {
            type = "string",
          },
          type = "array",
        },
        errors = {
          description = "Optional error(s) (if computation for the group failed).",
          items = {
            ["$ref"] = "Error",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FreeBusyRequest = {
      id = "FreeBusyRequest",
      properties = {
        calendarExpansionMax = {
          description = "Maximal number of calendars for which FreeBusy information is to be provided. Optional. Maximum value is 50.",
          format = "int32",
          type = "integer",
        },
        groupExpansionMax = {
          description = "Maximal number of calendar identifiers to be provided for a single group. Optional. An error is returned for a group with more members than this value. Maximum value is 100.",
          format = "int32",
          type = "integer",
        },
        items = {
          description = "List of calendars and/or groups to query.",
          items = {
            ["$ref"] = "FreeBusyRequestItem",
          },
          type = "array",
        },
        timeMax = {
          description = "The end of the interval for the query formatted as per RFC3339.",
          format = "date-time",
          type = "string",
        },
        timeMin = {
          description = "The start of the interval for the query formatted as per RFC3339.",
          format = "date-time",
          type = "string",
        },
        timeZone = {
          default = "UTC",
          description = "Time zone used in the response. Optional. The default is UTC.",
          type = "string",
        },
      },
      type = "object",
    },
    FreeBusyRequestItem = {
      id = "FreeBusyRequestItem",
      properties = {
        id = {
          description = "The identifier of a calendar or a group.",
          type = "string",
        },
      },
      type = "object",
    },
    FreeBusyResponse = {
      id = "FreeBusyResponse",
      properties = {
        calendars = {
          additionalProperties = {
            ["$ref"] = "FreeBusyCalendar",
            description = "Free/busy expansions for a single calendar.",
          },
          description = "List of free/busy information for calendars.",
          type = "object",
        },
        groups = {
          additionalProperties = {
            ["$ref"] = "FreeBusyGroup",
            description = "List of calendars that are members of this group.",
          },
          description = "Expansion of groups.",
          type = "object",
        },
        kind = {
          default = "calendar#freeBusy",
          description = "Type of the resource (\"calendar#freeBusy\").",
          type = "string",
        },
        timeMax = {
          description = "The end of the interval.",
          format = "date-time",
          type = "string",
        },
        timeMin = {
          description = "The start of the interval.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    Setting = {
      id = "Setting",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "The id of the user setting.",
          type = "string",
        },
        kind = {
          default = "calendar#setting",
          description = "Type of the resource (\"calendar#setting\").",
          type = "string",
        },
        value = {
          description = "Value of the user setting. The format of the value depends on the ID of the setting. It must always be a UTF-8 string of length up to 1024 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    Settings = {
      id = "Settings",
      properties = {
        etag = {
          description = "Etag of the collection.",
          type = "string",
        },
        items = {
          description = "List of user settings.",
          items = {
            ["$ref"] = "Setting",
          },
          type = "array",
        },
        kind = {
          default = "calendar#settings",
          description = "Type of the collection (\"calendar#settings\").",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided.",
          type = "string",
        },
        nextSyncToken = {
          description = "Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided.",
          type = "string",
        },
      },
      type = "object",
    },
    TimePeriod = {
      id = "TimePeriod",
      properties = {
        ["end"] = {
          description = "The (exclusive) end of the time period.",
          format = "date-time",
          type = "string",
        },
        start = {
          description = "The (inclusive) start of the time period.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "calendar/v3/",
  title = "Calendar API",
  version = "v3",
}