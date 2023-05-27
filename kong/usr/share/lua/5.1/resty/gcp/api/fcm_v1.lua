return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/firebase.messaging"] = {
          description = "Send messages and manage messaging subscriptions for your Firebase applications",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://fcm.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Firebase Cloud Messaging",
  description = "FCM send API that provides a cross-platform messaging solution to reliably deliver messages at no cost.",
  discoveryVersion = "v1",
  documentationLink = "https://firebase.google.com/docs/cloud-messaging",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "fcm:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://fcm.mtls.googleapis.com/",
  name = "fcm",
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
        messages = {
          methods = {
            send = {
              description = "Send a message to specified target (a registration token, topic or condition).",
              flatPath = "v1/projects/{projectsId}/messages:send",
              httpMethod = "POST",
              id = "fcm.projects.messages.send",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. It contains the Firebase project id (i.e. the unique identifier for your Firebase project), in the format of `projects/{project_id}`. For legacy support, the numeric project number with no padding is also supported in the format of `projects/{project_number}`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/messages:send",
              request = {
                ["$ref"] = "SendMessageRequest",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase.messaging",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://fcm.googleapis.com/",
  schemas = {
    AndroidConfig = {
      description = "Android specific options for messages sent through [FCM connection server](https://goo.gl/4GLdUl).",
      id = "AndroidConfig",
      properties = {
        collapseKey = {
          description = "An identifier of a group of messages that can be collapsed, so that only the last message gets sent when delivery can be resumed. A maximum of 4 different collapse keys is allowed at any given time.",
          type = "string",
        },
        data = {
          additionalProperties = {
            type = "string",
          },
          description = "Arbitrary key/value payload. If present, it will override google.firebase.fcm.v1.Message.data.",
          type = "object",
        },
        directBootOk = {
          description = "If set to true, messages will be allowed to be delivered to the app while the device is in direct boot mode. See [Support Direct Boot mode](https://developer.android.com/training/articles/direct-boot).",
          type = "boolean",
        },
        fcmOptions = {
          ["$ref"] = "AndroidFcmOptions",
          description = "Options for features provided by the FCM SDK for Android.",
        },
        notification = {
          ["$ref"] = "AndroidNotification",
          description = "Notification to send to android devices.",
        },
        priority = {
          description = "Message priority. Can take \"normal\" and \"high\" values. For more information, see [Setting the priority of a message](https://goo.gl/GjONJv).",
          enum = {
            "NORMAL",
            "HIGH",
          },
          enumDescriptions = {
            "Default priority for data messages. Normal priority messages won't open network connections on a sleeping device, and their delivery may be delayed to conserve the battery. For less time-sensitive messages, such as notifications of new email or other data to sync, choose normal delivery priority.",
            "Default priority for notification messages. FCM attempts to deliver high priority messages immediately, allowing the FCM service to wake a sleeping device when possible and open a network connection to your app server. Apps with instant messaging, chat, or voice call alerts, for example, generally need to open a network connection and make sure FCM delivers the message to the device without delay. Set high priority if the message is time-critical and requires the user's immediate interaction, but beware that setting your messages to high priority contributes more to battery drain compared with normal priority messages.",
          },
          type = "string",
        },
        restrictedPackageName = {
          description = "Package name of the application where the registration token must match in order to receive the message.",
          type = "string",
        },
        ttl = {
          description = "How long (in seconds) the message should be kept in FCM storage if the device is offline. The maximum time to live supported is 4 weeks, and the default value is 4 weeks if not set. Set it to 0 if want to send the message immediately. In JSON format, the Duration type is encoded as a string rather than an object, where the string ends in the suffix \"s\" (indicating seconds) and is preceded by the number of seconds, with nanoseconds expressed as fractional seconds. For example, 3 seconds with 0 nanoseconds should be encoded in JSON format as \"3s\", while 3 seconds and 1 nanosecond should be expressed in JSON format as \"3.000000001s\". The ttl will be rounded down to the nearest second.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    AndroidFcmOptions = {
      description = "Options for features provided by the FCM SDK for Android.",
      id = "AndroidFcmOptions",
      properties = {
        analyticsLabel = {
          description = "Label associated with the message's analytics data.",
          type = "string",
        },
      },
      type = "object",
    },
    AndroidNotification = {
      description = "Notification to send to android devices.",
      id = "AndroidNotification",
      properties = {
        body = {
          description = "The notification's body text. If present, it will override google.firebase.fcm.v1.Notification.body.",
          type = "string",
        },
        bodyLocArgs = {
          description = "Variable string values to be used in place of the format specifiers in body_loc_key to use to localize the body text to the user's current localization. See [Formatting and Styling](https://goo.gl/MalYE3) for more information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        bodyLocKey = {
          description = "The key to the body string in the app's string resources to use to localize the body text to the user's current localization. See [String Resources](https://goo.gl/NdFZGI) for more information.",
          type = "string",
        },
        bypassProxyNotification = {
          description = "If set, display notifications delivered to the device will be handled by the app instead of the proxy.",
          type = "boolean",
        },
        channelId = {
          description = "The [notification's channel id](https://developer.android.com/guide/topics/ui/notifiers/notifications#ManageChannels) (new in Android O). The app must create a channel with this channel ID before any notification with this channel ID is received. If you don't send this channel ID in the request, or if the channel ID provided has not yet been created by the app, FCM uses the channel ID specified in the app manifest.",
          type = "string",
        },
        clickAction = {
          description = "The action associated with a user click on the notification. If specified, an activity with a matching intent filter is launched when a user clicks on the notification.",
          type = "string",
        },
        color = {
          description = "The notification's icon color, expressed in #rrggbb format.",
          type = "string",
        },
        defaultLightSettings = {
          description = "If set to true, use the Android framework's default LED light settings for the notification. Default values are specified in [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml). If `default_light_settings` is set to true and `light_settings` is also set, the user-specified `light_settings` is used instead of the default value.",
          type = "boolean",
        },
        defaultSound = {
          description = "If set to true, use the Android framework's default sound for the notification. Default values are specified in [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).",
          type = "boolean",
        },
        defaultVibrateTimings = {
          description = "If set to true, use the Android framework's default vibrate pattern for the notification. Default values are specified in [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml). If `default_vibrate_timings` is set to true and `vibrate_timings` is also set, the default value is used instead of the user-specified `vibrate_timings`.",
          type = "boolean",
        },
        eventTime = {
          description = "Set the time that the event in the notification occurred. Notifications in the panel are sorted by this time. A point in time is represented using [protobuf.Timestamp](https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/Timestamp).",
          format = "google-datetime",
          type = "string",
        },
        icon = {
          description = "The notification's icon. Sets the notification icon to myicon for drawable resource myicon. If you don't send this key in the request, FCM displays the launcher icon specified in your app manifest.",
          type = "string",
        },
        image = {
          description = "Contains the URL of an image that is going to be displayed in a notification. If present, it will override google.firebase.fcm.v1.Notification.image.",
          type = "string",
        },
        lightSettings = {
          ["$ref"] = "LightSettings",
          description = "Settings to control the notification's LED blinking rate and color if LED is available on the device. The total blinking time is controlled by the OS.",
        },
        localOnly = {
          description = "Set whether or not this notification is relevant only to the current device. Some notifications can be bridged to other devices for remote display, such as a Wear OS watch. This hint can be set to recommend this notification not be bridged. See [Wear OS guides](https://developer.android.com/training/wearables/notifications/bridger#existing-method-of-preventing-bridging)",
          type = "boolean",
        },
        notificationCount = {
          description = "Sets the number of items this notification represents. May be displayed as a badge count for launchers that support badging.See [Notification Badge](https://developer.android.com/training/notify-user/badges). For example, this might be useful if you're using just one notification to represent multiple new messages but you want the count here to represent the number of total new messages. If zero or unspecified, systems that support badging use the default, which is to increment a number displayed on the long-press menu each time a new notification arrives.",
          format = "int32",
          type = "integer",
        },
        notificationPriority = {
          description = "Set the relative priority for this notification. Priority is an indication of how much of the user's attention should be consumed by this notification. Low-priority notifications may be hidden from the user in certain situations, while the user might be interrupted for a higher-priority notification. The effect of setting the same priorities may differ slightly on different platforms. Note this priority differs from `AndroidMessagePriority`. This priority is processed by the client after the message has been delivered, whereas [AndroidMessagePriority](https://firebase.google.com/docs/reference/fcm/rest/v1/projects.messages#androidmessagepriority) is an FCM concept that controls when the message is delivered.",
          enum = {
            "PRIORITY_UNSPECIFIED",
            "PRIORITY_MIN",
            "PRIORITY_LOW",
            "PRIORITY_DEFAULT",
            "PRIORITY_HIGH",
            "PRIORITY_MAX",
          },
          enumDescriptions = {
            "If priority is unspecified, notification priority is set to `PRIORITY_DEFAULT`.",
            "Lowest notification priority. Notifications with this `PRIORITY_MIN` might not be shown to the user except under special circumstances, such as detailed notification logs.",
            "Lower notification priority. The UI may choose to show the notifications smaller, or at a different position in the list, compared with notifications with `PRIORITY_DEFAULT`.",
            "Default notification priority. If the application does not prioritize its own notifications, use this value for all notifications.",
            "Higher notification priority. Use this for more important notifications or alerts. The UI may choose to show these notifications larger, or at a different position in the notification lists, compared with notifications with `PRIORITY_DEFAULT`.",
            "Highest notification priority. Use this for the application's most important items that require the user's prompt attention or input.",
          },
          type = "string",
        },
        sound = {
          description = "The sound to play when the device receives the notification. Supports \"default\" or the filename of a sound resource bundled in the app. Sound files must reside in /res/raw/.",
          type = "string",
        },
        sticky = {
          description = "When set to false or unset, the notification is automatically dismissed when the user clicks it in the panel. When set to true, the notification persists even when the user clicks it.",
          type = "boolean",
        },
        tag = {
          description = "Identifier used to replace existing notifications in the notification drawer. If not specified, each request creates a new notification. If specified and a notification with the same tag is already being shown, the new notification replaces the existing one in the notification drawer.",
          type = "string",
        },
        ticker = {
          description = "Sets the \"ticker\" text, which is sent to accessibility services. Prior to API level 21 (`Lollipop`), sets the text that is displayed in the status bar when the notification first arrives.",
          type = "string",
        },
        title = {
          description = "The notification's title. If present, it will override google.firebase.fcm.v1.Notification.title.",
          type = "string",
        },
        titleLocArgs = {
          description = "Variable string values to be used in place of the format specifiers in title_loc_key to use to localize the title text to the user's current localization. See [Formatting and Styling](https://goo.gl/MalYE3) for more information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        titleLocKey = {
          description = "The key to the title string in the app's string resources to use to localize the title text to the user's current localization. See [String Resources](https://goo.gl/NdFZGI) for more information.",
          type = "string",
        },
        vibrateTimings = {
          description = "Set the vibration pattern to use. Pass in an array of [protobuf.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration) to turn on or off the vibrator. The first value indicates the `Duration` to wait before turning the vibrator on. The next value indicates the `Duration` to keep the vibrator on. Subsequent values alternate between `Duration` to turn the vibrator off and to turn the vibrator on. If `vibrate_timings` is set and `default_vibrate_timings` is set to `true`, the default value is used instead of the user-specified `vibrate_timings`.",
          items = {
            format = "google-duration",
            type = "string",
          },
          type = "array",
        },
        visibility = {
          description = "Set the [Notification.visibility](https://developer.android.com/reference/android/app/Notification.html#visibility) of the notification.",
          enum = {
            "VISIBILITY_UNSPECIFIED",
            "PRIVATE",
            "PUBLIC",
            "SECRET",
          },
          enumDescriptions = {
            "If unspecified, default to `Visibility.PRIVATE`.",
            "Show this notification on all lockscreens, but conceal sensitive or private information on secure lockscreens.",
            "Show this notification in its entirety on all lockscreens.",
            "Do not reveal any part of this notification on a secure lockscreen.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ApnsConfig = {
      description = "[Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.",
      id = "ApnsConfig",
      properties = {
        fcmOptions = {
          ["$ref"] = "ApnsFcmOptions",
          description = "Options for features provided by the FCM SDK for iOS.",
        },
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "HTTP request headers defined in Apple Push Notification Service. Refer to [APNs request headers](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns) for supported headers such as `apns-expiration` and `apns-priority`. The backend sets a default value for `apns-expiration` of 30 days and a default value for `apns-priority` of 10 if not explicitly set.",
          type = "object",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "APNs payload as a JSON object, including both `aps` dictionary and custom payload. See [Payload Key Reference](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification). If present, it overrides google.firebase.fcm.v1.Notification.title and google.firebase.fcm.v1.Notification.body.",
          type = "object",
        },
      },
      type = "object",
    },
    ApnsFcmOptions = {
      description = "Options for features provided by the FCM SDK for iOS.",
      id = "ApnsFcmOptions",
      properties = {
        analyticsLabel = {
          description = "Label associated with the message's analytics data.",
          type = "string",
        },
        image = {
          description = "Contains the URL of an image that is going to be displayed in a notification. If present, it will override google.firebase.fcm.v1.Notification.image.",
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
    FcmOptions = {
      description = "Platform independent options for features provided by the FCM SDKs.",
      id = "FcmOptions",
      properties = {
        analyticsLabel = {
          description = "Label associated with the message's analytics data.",
          type = "string",
        },
      },
      type = "object",
    },
    LightSettings = {
      description = "Settings to control notification LED.",
      id = "LightSettings",
      properties = {
        color = {
          ["$ref"] = "Color",
          description = "Required. Set `color` of the LED with [google.type.Color](https://github.com/googleapis/googleapis/blob/master/google/type/color.proto).",
        },
        lightOffDuration = {
          description = "Required. Along with `light_on_duration `, define the blink rate of LED flashes. Resolution defined by [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)",
          format = "google-duration",
          type = "string",
        },
        lightOnDuration = {
          description = "Required. Along with `light_off_duration`, define the blink rate of LED flashes. Resolution defined by [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Message = {
      description = "Message to send by Firebase Cloud Messaging Service.",
      id = "Message",
      properties = {
        android = {
          ["$ref"] = "AndroidConfig",
          description = "Input only. Android specific options for messages sent through [FCM connection server](https://goo.gl/4GLdUl).",
        },
        apns = {
          ["$ref"] = "ApnsConfig",
          description = "Input only. [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.",
        },
        condition = {
          description = "Condition to send a message to, e.g. \"'foo' in topics && 'bar' in topics\".",
          type = "string",
        },
        data = {
          additionalProperties = {
            type = "string",
          },
          description = "Input only. Arbitrary key/value payload, which must be UTF-8 encoded. The key should not be a reserved word (\"from\", \"message_type\", or any word starting with \"google\" or \"gcm\"). When sending payloads containing only data fields to iOS devices, only normal priority (`\"apns-priority\": \"5\"`) is allowed in [`ApnsConfig`](/docs/reference/fcm/rest/v1/projects.messages#apnsconfig).",
          type = "object",
        },
        fcmOptions = {
          ["$ref"] = "FcmOptions",
          description = "Input only. Template for FCM SDK feature options to use across all platforms.",
        },
        name = {
          description = "Output Only. The identifier of the message sent, in the format of `projects/*/messages/{message_id}`.",
          type = "string",
        },
        notification = {
          ["$ref"] = "Notification",
          description = "Input only. Basic notification template to use across all platforms.",
        },
        token = {
          description = "Registration token to send a message to.",
          type = "string",
        },
        topic = {
          description = "Topic name to send a message to, e.g. \"weather\". Note: \"/topics/\" prefix should not be provided.",
          type = "string",
        },
        webpush = {
          ["$ref"] = "WebpushConfig",
          description = "Input only. [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.",
        },
      },
      type = "object",
    },
    Notification = {
      description = "Basic notification template to use across all platforms.",
      id = "Notification",
      properties = {
        body = {
          description = "The notification's body text.",
          type = "string",
        },
        image = {
          description = "Contains the URL of an image that is going to be downloaded on the device and displayed in a notification. JPEG, PNG, BMP have full support across platforms. Animated GIF and video only work on iOS. WebP and HEIF have varying levels of support across platforms and platform versions. Android has 1MB image size limit. Quota usage and implications/costs for hosting image on Firebase Storage: https://firebase.google.com/pricing",
          type = "string",
        },
        title = {
          description = "The notification's title.",
          type = "string",
        },
      },
      type = "object",
    },
    SendMessageRequest = {
      description = "Request to send a message to specified target.",
      id = "SendMessageRequest",
      properties = {
        message = {
          ["$ref"] = "Message",
          description = "Required. Message to send.",
        },
        validateOnly = {
          description = "Flag for testing the request without actually delivering the message.",
          type = "boolean",
        },
      },
      type = "object",
    },
    WebpushConfig = {
      description = "[Webpush protocol](https://tools.ietf.org/html/rfc8030) options.",
      id = "WebpushConfig",
      properties = {
        data = {
          additionalProperties = {
            type = "string",
          },
          description = "Arbitrary key/value payload. If present, it will override google.firebase.fcm.v1.Message.data.",
          type = "object",
        },
        fcmOptions = {
          ["$ref"] = "WebpushFcmOptions",
          description = "Options for features provided by the FCM SDK for Web.",
        },
        headers = {
          additionalProperties = {
            type = "string",
          },
          description = "HTTP headers defined in webpush protocol. Refer to [Webpush protocol](https://tools.ietf.org/html/rfc8030#section-5) for supported headers, e.g. \"TTL\": \"15\".",
          type = "object",
        },
        notification = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Web Notification options as a JSON object. Supports Notification instance properties as defined in [Web Notification API](https://developer.mozilla.org/en-US/docs/Web/API/Notification). If present, \"title\" and \"body\" fields override [google.firebase.fcm.v1.Notification.title] and [google.firebase.fcm.v1.Notification.body].",
          type = "object",
        },
      },
      type = "object",
    },
    WebpushFcmOptions = {
      description = "Options for features provided by the FCM SDK for Web.",
      id = "WebpushFcmOptions",
      properties = {
        analyticsLabel = {
          description = "Label associated with the message's analytics data.",
          type = "string",
        },
        link = {
          description = "The link to open when the user clicks on the notification. For all URL values, HTTPS is required.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Firebase Cloud Messaging API",
  version = "v1",
  version_module = true,
}
