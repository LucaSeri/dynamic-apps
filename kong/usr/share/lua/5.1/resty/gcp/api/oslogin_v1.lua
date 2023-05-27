return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
        ["https://www.googleapis.com/auth/compute"] = {
          description = "View and manage your Google Compute Engine resources",
        },
        ["https://www.googleapis.com/auth/compute.readonly"] = {
          description = "View your Google Compute Engine resources",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://oslogin.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud OS Login",
  description = "You can use OS Login to manage access to your VM instances using IAM roles.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/compute/docs/oslogin/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "oslogin:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://oslogin.mtls.googleapis.com/",
  name = "oslogin",
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
    users = {
      methods = {
        getLoginProfile = {
          description = "Retrieves the profile information used for logging in to a virtual machine on Google Compute Engine.",
          flatPath = "v1/users/{usersId}/loginProfile",
          httpMethod = "GET",
          id = "oslogin.users.getLoginProfile",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The unique ID for the user in format `users/{user}`.",
              location = "path",
              pattern = "^users/[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "The project ID of the Google Cloud Platform project.",
              location = "query",
              type = "string",
            },
            systemId = {
              description = "A system ID for filtering the results of the request.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}/loginProfile",
          response = {
            ["$ref"] = "LoginProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/compute.readonly",
          },
        },
        importSshPublicKey = {
          description = "Adds an SSH public key and returns the profile information. Default POSIX account information is set when no username and UID exist as part of the login profile.",
          flatPath = "v1/users/{usersId}:importSshPublicKey",
          httpMethod = "POST",
          id = "oslogin.users.importSshPublicKey",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The unique ID for the user in format `users/{user}`.",
              location = "path",
              pattern = "^users/[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "The project ID of the Google Cloud Platform project.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+parent}:importSshPublicKey",
          request = {
            ["$ref"] = "SshPublicKey",
          },
          response = {
            ["$ref"] = "ImportSshPublicKeyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/compute",
          },
        },
      },
      resources = {
        projects = {
          methods = {
            delete = {
              description = "Deletes a POSIX account.",
              flatPath = "v1/users/{usersId}/projects/{projectsId}",
              httpMethod = "DELETE",
              id = "oslogin.users.projects.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. A reference to the POSIX account to update. POSIX accounts are identified by the project ID they are associated with. A reference to the POSIX account is in format `users/{user}/projects/{project}`.",
                  location = "path",
                  pattern = "^users/[^/]+/projects/[^/]+$",
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
                "https://www.googleapis.com/auth/compute",
              },
            },
          },
        },
        sshPublicKeys = {
          methods = {
            create = {
              description = "Create an SSH public key",
              flatPath = "v1/users/{usersId}/sshPublicKeys",
              httpMethod = "POST",
              id = "oslogin.users.sshPublicKeys.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The unique ID for the user in format `users/{user}`.",
                  location = "path",
                  pattern = "^users/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sshPublicKeys",
              request = {
                ["$ref"] = "SshPublicKey",
              },
              response = {
                ["$ref"] = "SshPublicKey",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
              },
            },
            delete = {
              description = "Deletes an SSH public key.",
              flatPath = "v1/users/{usersId}/sshPublicKeys/{sshPublicKeysId}",
              httpMethod = "DELETE",
              id = "oslogin.users.sshPublicKeys.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.",
                  location = "path",
                  pattern = "^users/[^/]+/sshPublicKeys/[^/]+$",
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
                "https://www.googleapis.com/auth/compute",
              },
            },
            get = {
              description = "Retrieves an SSH public key.",
              flatPath = "v1/users/{usersId}/sshPublicKeys/{sshPublicKeysId}",
              httpMethod = "GET",
              id = "oslogin.users.sshPublicKeys.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The fingerprint of the public key to retrieve. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.",
                  location = "path",
                  pattern = "^users/[^/]+/sshPublicKeys/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "SshPublicKey",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
              },
            },
            patch = {
              description = "Updates an SSH public key and returns the profile information. This method supports patch semantics.",
              flatPath = "v1/users/{usersId}/sshPublicKeys/{sshPublicKeysId}",
              httpMethod = "PATCH",
              id = "oslogin.users.sshPublicKeys.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The fingerprint of the public key to update. Public keys are identified by their SHA-256 fingerprint. The fingerprint of the public key is in format `users/{user}/sshPublicKeys/{fingerprint}`.",
                  location = "path",
                  pattern = "^users/[^/]+/sshPublicKeys/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Mask to control which fields get updated. Updates all if not present.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "SshPublicKey",
              },
              response = {
                ["$ref"] = "SshPublicKey",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230107",
  rootUrl = "https://oslogin.googleapis.com/",
  schemas = {
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    ImportSshPublicKeyResponse = {
      description = "A response message for importing an SSH public key.",
      id = "ImportSshPublicKeyResponse",
      properties = {
        details = {
          description = "Detailed information about import results.",
          type = "string",
        },
        loginProfile = {
          ["$ref"] = "LoginProfile",
          description = "The login profile information for the user.",
        },
      },
      type = "object",
    },
    LoginProfile = {
      description = "The user profile information used for logging in to a virtual machine on Google Compute Engine.",
      id = "LoginProfile",
      properties = {
        name = {
          description = "Required. A unique user ID.",
          type = "string",
        },
        posixAccounts = {
          description = "The list of POSIX accounts associated with the user.",
          items = {
            ["$ref"] = "PosixAccount",
          },
          type = "array",
        },
        sshPublicKeys = {
          additionalProperties = {
            ["$ref"] = "SshPublicKey",
          },
          description = "A map from SSH public key fingerprint to the associated key object.",
          type = "object",
        },
      },
      type = "object",
    },
    PosixAccount = {
      description = "The POSIX account information associated with a Google account.",
      id = "PosixAccount",
      properties = {
        accountId = {
          description = "Output only. A POSIX account identifier.",
          readOnly = true,
          type = "string",
        },
        gecos = {
          description = "The GECOS (user information) entry for this account.",
          type = "string",
        },
        gid = {
          description = "The default group ID.",
          format = "int64",
          type = "string",
        },
        homeDirectory = {
          description = "The path to the home directory for this account.",
          type = "string",
        },
        name = {
          description = "Output only. The canonical resource name.",
          readOnly = true,
          type = "string",
        },
        operatingSystemType = {
          description = "The operating system type where this account applies.",
          enum = {
            "OPERATING_SYSTEM_TYPE_UNSPECIFIED",
            "LINUX",
            "WINDOWS",
          },
          enumDescriptions = {
            "The operating system type associated with the user account information is unspecified.",
            "Linux user account information.",
            "Windows user account information.",
          },
          type = "string",
        },
        primary = {
          description = "Only one POSIX account can be marked as primary.",
          type = "boolean",
        },
        shell = {
          description = "The path to the logic shell for this account.",
          type = "string",
        },
        systemId = {
          description = "System identifier for which account the username or uid applies to. By default, the empty value is used.",
          type = "string",
        },
        uid = {
          description = "The user ID.",
          format = "int64",
          type = "string",
        },
        username = {
          description = "The username of the POSIX account.",
          type = "string",
        },
      },
      type = "object",
    },
    SshPublicKey = {
      description = "The SSH public key information associated with a Google account.",
      id = "SshPublicKey",
      properties = {
        expirationTimeUsec = {
          description = "An expiration time in microseconds since epoch.",
          format = "int64",
          type = "string",
        },
        fingerprint = {
          description = "Output only. The SHA-256 fingerprint of the SSH public key.",
          readOnly = true,
          type = "string",
        },
        key = {
          description = "Public key text in SSH format, defined by RFC4253 section 6.6.",
          type = "string",
        },
        name = {
          description = "Output only. The canonical resource name.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud OS Login API",
  version = "v1",
  version_module = true,
}
