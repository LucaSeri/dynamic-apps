return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/sqlservice.admin"] = {
          description = "Manage your Google SQL Service instances",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://sqladmin.googleapis.com/",
  batchPath = "batch",
  canonicalName = "SQL Admin",
  description = "API for Cloud SQL database instance management",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/cloud-sql/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "sqladmin:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://sqladmin.mtls.googleapis.com/",
  name = "sqladmin",
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
    backupRuns = {
      methods = {
        delete = {
          description = "Deletes the backup taken by a backup run.",
          flatPath = "v1/projects/{project}/instances/{instance}/backupRuns/{id}",
          httpMethod = "DELETE",
          id = "sql.backupRuns.delete",
          parameterOrder = {
            "project",
            "instance",
            "id",
          },
          parameters = {
            id = {
              description = "The ID of the backup run to delete. To find a backup run ID, use the [list](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/backupRuns/list) method.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/backupRuns/{id}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves a resource containing information about a backup run.",
          flatPath = "v1/projects/{project}/instances/{instance}/backupRuns/{id}",
          httpMethod = "GET",
          id = "sql.backupRuns.get",
          parameterOrder = {
            "project",
            "instance",
            "id",
          },
          parameters = {
            id = {
              description = "The ID of this backup run.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/backupRuns/{id}",
          response = {
            ["$ref"] = "BackupRun",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        insert = {
          description = "Creates a new backup run on demand.",
          flatPath = "v1/projects/{project}/instances/{instance}/backupRuns",
          httpMethod = "POST",
          id = "sql.backupRuns.insert",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/backupRuns",
          request = {
            ["$ref"] = "BackupRun",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists all backup runs associated with the project or a given instance and configuration in the reverse chronological order of the backup initiation time.",
          flatPath = "v1/projects/{project}/instances/{instance}/backupRuns",
          httpMethod = "GET",
          id = "sql.backupRuns.list",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID, or \"-\" for all instances. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of backup runs per response.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/backupRuns",
          response = {
            ["$ref"] = "BackupRunsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    connect = {
      methods = {
        generateEphemeralCert = {
          description = "Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.",
          flatPath = "v1/projects/{project}/instances/{instance}:generateEphemeralCert",
          httpMethod = "POST",
          id = "sql.connect.generateEphemeral",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}:generateEphemeralCert",
          request = {
            ["$ref"] = "GenerateEphemeralCertRequest",
          },
          response = {
            ["$ref"] = "GenerateEphemeralCertResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves connect settings about a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/connectSettings",
          httpMethod = "GET",
          id = "sql.connect.get",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            readTime = {
              description = "Optional. Optional snapshot read timestamp to trade freshness for performance.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/connectSettings",
          response = {
            ["$ref"] = "ConnectSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    databases = {
      methods = {
        delete = {
          description = "Deletes a database from a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases/{database}",
          httpMethod = "DELETE",
          id = "sql.databases.delete",
          parameterOrder = {
            "project",
            "instance",
            "database",
          },
          parameters = {
            database = {
              description = "Name of the database to be deleted in the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases/{database}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves a resource containing information about a database inside a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases/{database}",
          httpMethod = "GET",
          id = "sql.databases.get",
          parameterOrder = {
            "project",
            "instance",
            "database",
          },
          parameters = {
            database = {
              description = "Name of the database in the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases/{database}",
          response = {
            ["$ref"] = "Database",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        insert = {
          description = "Inserts a resource containing information about a database inside a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases",
          httpMethod = "POST",
          id = "sql.databases.insert",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases",
          request = {
            ["$ref"] = "Database",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists databases in the specified Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases",
          httpMethod = "GET",
          id = "sql.databases.list",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases",
          response = {
            ["$ref"] = "DatabasesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        patch = {
          description = "Partially updates a resource containing information about a database inside a Cloud SQL instance. This method supports patch semantics.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases/{database}",
          httpMethod = "PATCH",
          id = "sql.databases.patch",
          parameterOrder = {
            "project",
            "instance",
            "database",
          },
          parameters = {
            database = {
              description = "Name of the database to be updated in the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases/{database}",
          request = {
            ["$ref"] = "Database",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        update = {
          description = "Updates a resource containing information about a database inside a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/databases/{database}",
          httpMethod = "PUT",
          id = "sql.databases.update",
          parameterOrder = {
            "project",
            "instance",
            "database",
          },
          parameters = {
            database = {
              description = "Name of the database to be updated in the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/databases/{database}",
          request = {
            ["$ref"] = "Database",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    flags = {
      methods = {
        list = {
          description = "Lists all available database flags for Cloud SQL instances.",
          flatPath = "v1/flags",
          httpMethod = "GET",
          id = "sql.flags.list",
          parameterOrder = {},
          parameters = {
            databaseVersion = {
              description = "Database type and version you want to retrieve flags for. By default, this method returns flags for all database types and versions.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/flags",
          response = {
            ["$ref"] = "FlagsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    instances = {
      methods = {
        addServerCa = {
          description = "Adds a new trusted Certificate Authority (CA) version for the specified instance. Required to prepare for a certificate rotation. If a CA version was previously added but never used in a certificate rotation, this operation replaces that version. There cannot be more than one CA version waiting to be rotated in.",
          flatPath = "v1/projects/{project}/instances/{instance}/addServerCa",
          httpMethod = "POST",
          id = "sql.instances.addServerCa",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/addServerCa",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        clone = {
          description = "Creates a Cloud SQL instance as a clone of the source instance. Using this operation might cause your instance to restart.",
          flatPath = "v1/projects/{project}/instances/{instance}/clone",
          httpMethod = "POST",
          id = "sql.instances.clone",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "The ID of the Cloud SQL instance to be cloned (source). This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the source as well as the clone Cloud SQL instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/clone",
          request = {
            ["$ref"] = "InstancesCloneRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        delete = {
          description = "Deletes a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}",
          httpMethod = "DELETE",
          id = "sql.instances.delete",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance to be deleted.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        demoteMaster = {
          description = "Demotes the stand-alone instance to be a Cloud SQL read replica for an external database server.",
          flatPath = "v1/projects/{project}/instances/{instance}/demoteMaster",
          httpMethod = "POST",
          id = "sql.instances.demoteMaster",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/demoteMaster",
          request = {
            ["$ref"] = "InstancesDemoteMasterRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        export = {
          description = "Exports data from a Cloud SQL instance to a Cloud Storage bucket as a SQL dump or CSV file.",
          flatPath = "v1/projects/{project}/instances/{instance}/export",
          httpMethod = "POST",
          id = "sql.instances.export",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance to be exported.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/export",
          request = {
            ["$ref"] = "InstancesExportRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        failover = {
          description = "Initiates a manual failover of a high availability (HA) primary instance to a standby instance, which becomes the primary instance. Users are then rerouted to the new primary. For more information, see the [Overview of high availability](https://cloud.google.com/sql/docs/mysql/high-availability) page in the Cloud SQL documentation. If using Legacy HA (MySQL only), this causes the instance to failover to its failover replica instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/failover",
          httpMethod = "POST",
          id = "sql.instances.failover",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "ID of the project that contains the read replica.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/failover",
          request = {
            ["$ref"] = "InstancesFailoverRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves a resource containing information about a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}",
          httpMethod = "GET",
          id = "sql.instances.get",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}",
          response = {
            ["$ref"] = "DatabaseInstance",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        import = {
          description = "Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud Storage.",
          flatPath = "v1/projects/{project}/instances/{instance}/import",
          httpMethod = "POST",
          id = "sql.instances.import",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/import",
          request = {
            ["$ref"] = "InstancesImportRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        insert = {
          description = "Creates a new Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances",
          httpMethod = "POST",
          id = "sql.instances.insert",
          parameterOrder = {
            "project",
          },
          parameters = {
            project = {
              description = "Project ID of the project to which the newly created Cloud SQL instances should belong.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances",
          request = {
            ["$ref"] = "DatabaseInstance",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists instances under a given project.",
          flatPath = "v1/projects/{project}/instances",
          httpMethod = "GET",
          id = "sql.instances.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            filter = {
              description = "A filter expression that filters resources listed in the response. The expression is in the form of field:value. For example, 'instanceType:CLOUD_SQL_INSTANCE'. Fields can be nested as needed as per their JSON representation, such as 'settings.userLabels.auto_start:true'. Multiple filter queries are space-separated. For example. 'state:RUNNABLE instanceType:CLOUD_SQL_INSTANCE'. By default, each expression is an AND expression. However, you can include AND and OR expressions explicitly.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of instances to return. The service may return fewer than this value. If unspecified, at most 500 instances are returned. The maximum value is 1000; values above 1000 are coerced to 1000.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Project ID of the project for which to list Cloud SQL instances.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances",
          response = {
            ["$ref"] = "InstancesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        listServerCas = {
          description = "Lists all of the trusted Certificate Authorities (CAs) for the specified instance. There can be up to three CAs listed: the CA that was used to sign the certificate that is currently in use, a CA that has been added but not yet used to sign a certificate, and a CA used to sign a certificate that has previously rotated out.",
          flatPath = "v1/projects/{project}/instances/{instance}/listServerCas",
          httpMethod = "GET",
          id = "sql.instances.listServerCas",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/listServerCas",
          response = {
            ["$ref"] = "InstancesListServerCasResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        patch = {
          description = "Partially updates settings of a Cloud SQL instance by merging the request with the current configuration. This method supports patch semantics.",
          flatPath = "v1/projects/{project}/instances/{instance}",
          httpMethod = "PATCH",
          id = "sql.instances.patch",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}",
          request = {
            ["$ref"] = "DatabaseInstance",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        promoteReplica = {
          description = "Promotes the read replica instance to be a stand-alone Cloud SQL instance. Using this operation might cause your instance to restart.",
          flatPath = "v1/projects/{project}/instances/{instance}/promoteReplica",
          httpMethod = "POST",
          id = "sql.instances.promoteReplica",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL read replica instance name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "ID of the project that contains the read replica.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/promoteReplica",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        resetSslConfig = {
          description = "Deletes all client certificates and generates a new server SSL certificate for the instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/resetSslConfig",
          httpMethod = "POST",
          id = "sql.instances.resetSslConfig",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/resetSslConfig",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        restart = {
          description = "Restarts a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/restart",
          httpMethod = "POST",
          id = "sql.instances.restart",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance to be restarted.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/restart",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        restoreBackup = {
          description = "Restores a backup of a Cloud SQL instance. Using this operation might cause your instance to restart.",
          flatPath = "v1/projects/{project}/instances/{instance}/restoreBackup",
          httpMethod = "POST",
          id = "sql.instances.restoreBackup",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/restoreBackup",
          request = {
            ["$ref"] = "InstancesRestoreBackupRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        rotateServerCa = {
          description = "Rotates the server certificate to one signed by the Certificate Authority (CA) version previously added with the addServerCA method.",
          flatPath = "v1/projects/{project}/instances/{instance}/rotateServerCa",
          httpMethod = "POST",
          id = "sql.instances.rotateServerCa",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/rotateServerCa",
          request = {
            ["$ref"] = "InstancesRotateServerCaRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        startReplica = {
          description = "Starts the replication in the read replica instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/startReplica",
          httpMethod = "POST",
          id = "sql.instances.startReplica",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL read replica instance name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "ID of the project that contains the read replica.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/startReplica",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        stopReplica = {
          description = "Stops the replication in the read replica instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/stopReplica",
          httpMethod = "POST",
          id = "sql.instances.stopReplica",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL read replica instance name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "ID of the project that contains the read replica.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/stopReplica",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        truncateLog = {
          description = "Truncate MySQL general and slow query log tables MySQL only.",
          flatPath = "v1/projects/{project}/instances/{instance}/truncateLog",
          httpMethod = "POST",
          id = "sql.instances.truncateLog",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the Cloud SQL project.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/truncateLog",
          request = {
            ["$ref"] = "InstancesTruncateLogRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        update = {
          description = "Updates settings of a Cloud SQL instance. Using this operation might cause your instance to restart.",
          flatPath = "v1/projects/{project}/instances/{instance}",
          httpMethod = "PUT",
          id = "sql.instances.update",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}",
          request = {
            ["$ref"] = "DatabaseInstance",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    operations = {
      methods = {
        get = {
          description = "Retrieves an instance operation that has been performed on an instance.",
          flatPath = "v1/projects/{project}/operations/{operation}",
          httpMethod = "GET",
          id = "sql.operations.get",
          parameterOrder = {
            "project",
            "operation",
          },
          parameters = {
            operation = {
              description = "Instance operation ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/operations/{operation}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.",
          flatPath = "v1/projects/{project}/operations",
          httpMethod = "GET",
          id = "sql.operations.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Maximum number of operations per response.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A previously-returned page token representing part of the larger set of results to view.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/operations",
          response = {
            ["$ref"] = "OperationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    projects = {
      resources = {
        instances = {
          methods = {
            rescheduleMaintenance = {
              description = "Reschedules the maintenance on the given instance.",
              flatPath = "v1/projects/{project}/instances/{instance}/rescheduleMaintenance",
              httpMethod = "POST",
              id = "sql.projects.instances.rescheduleMaintenance",
              parameterOrder = {
                "project",
                "instance",
              },
              parameters = {
                instance = {
                  description = "Cloud SQL instance ID. This does not include the project ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                project = {
                  description = "ID of the project that contains the instance.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{project}/instances/{instance}/rescheduleMaintenance",
              request = {
                ["$ref"] = "SqlInstancesRescheduleMaintenanceRequestBody",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/sqlservice.admin",
              },
            },
            startExternalSync = {
              description = "Start External primary instance migration.",
              flatPath = "v1/projects/{project}/instances/{instance}/startExternalSync",
              httpMethod = "POST",
              id = "sql.projects.instances.startExternalSync",
              parameterOrder = {
                "project",
                "instance",
              },
              parameters = {
                instance = {
                  description = "Cloud SQL instance ID. This does not include the project ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                project = {
                  description = "ID of the project that contains the instance.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{project}/instances/{instance}/startExternalSync",
              request = {
                ["$ref"] = "SqlInstancesStartExternalSyncRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/sqlservice.admin",
              },
            },
            verifyExternalSyncSettings = {
              description = "Verify External primary instance external sync settings.",
              flatPath = "v1/projects/{project}/instances/{instance}/verifyExternalSyncSettings",
              httpMethod = "POST",
              id = "sql.projects.instances.verifyExternalSyncSettings",
              parameterOrder = {
                "project",
                "instance",
              },
              parameters = {
                instance = {
                  description = "Cloud SQL instance ID. This does not include the project ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                project = {
                  description = "Project ID of the project that contains the instance.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{project}/instances/{instance}/verifyExternalSyncSettings",
              request = {
                ["$ref"] = "SqlInstancesVerifyExternalSyncSettingsRequest",
              },
              response = {
                ["$ref"] = "SqlInstancesVerifyExternalSyncSettingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/sqlservice.admin",
              },
            },
          },
        },
      },
    },
    sslCerts = {
      methods = {
        createEphemeral = {
          description = "Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.",
          flatPath = "v1/projects/{project}/instances/{instance}/createEphemeral",
          httpMethod = "POST",
          id = "sql.sslCerts.createEphemeral",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the Cloud SQL project.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/createEphemeral",
          request = {
            ["$ref"] = "SslCertsCreateEphemeralRequest",
          },
          response = {
            ["$ref"] = "SslCert",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        delete = {
          description = "Deletes the SSL certificate. For First Generation instances, the certificate remains valid until the instance is restarted.",
          flatPath = "v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}",
          httpMethod = "DELETE",
          id = "sql.sslCerts.delete",
          parameterOrder = {
            "project",
            "instance",
            "sha1Fingerprint",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            sha1Fingerprint = {
              description = "Sha1 FingerPrint.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.",
          flatPath = "v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}",
          httpMethod = "GET",
          id = "sql.sslCerts.get",
          parameterOrder = {
            "project",
            "instance",
            "sha1Fingerprint",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            sha1Fingerprint = {
              description = "Sha1 FingerPrint.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}",
          response = {
            ["$ref"] = "SslCert",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        insert = {
          description = "Creates an SSL certificate and returns it along with the private key and server certificate authority. The new certificate will not be usable until the instance is restarted.",
          flatPath = "v1/projects/{project}/instances/{instance}/sslCerts",
          httpMethod = "POST",
          id = "sql.sslCerts.insert",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/sslCerts",
          request = {
            ["$ref"] = "SslCertsInsertRequest",
          },
          response = {
            ["$ref"] = "SslCertsInsertResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists all of the current SSL certificates for the instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/sslCerts",
          httpMethod = "GET",
          id = "sql.sslCerts.list",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Cloud SQL instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/sslCerts",
          response = {
            ["$ref"] = "SslCertsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    tiers = {
      methods = {
        list = {
          description = "Lists all available machine types (tiers) for Cloud SQL, for example, `db-custom-1-3840`. For more information, see https://cloud.google.com/sql/pricing.",
          flatPath = "v1/projects/{project}/tiers",
          httpMethod = "GET",
          id = "sql.tiers.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            project = {
              description = "Project ID of the project for which to list tiers.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/tiers",
          response = {
            ["$ref"] = "TiersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
    users = {
      methods = {
        delete = {
          description = "Deletes a user from a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/users",
          httpMethod = "DELETE",
          id = "sql.users.delete",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            host = {
              description = "Host of the user in the instance.",
              location = "query",
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "Name of the user in the instance.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/users",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        get = {
          description = "Retrieves a resource containing information about a user.",
          flatPath = "v1/projects/{project}/instances/{instance}/users/{name}",
          httpMethod = "GET",
          id = "sql.users.get",
          parameterOrder = {
            "project",
            "instance",
            "name",
          },
          parameters = {
            host = {
              description = "Host of a user of the instance.",
              location = "query",
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "User of the instance.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/users/{name}",
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        insert = {
          description = "Creates a new user in a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/users",
          httpMethod = "POST",
          id = "sql.users.insert",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/users",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        list = {
          description = "Lists users in the specified Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/users",
          httpMethod = "GET",
          id = "sql.users.list",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/users",
          response = {
            ["$ref"] = "UsersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
        update = {
          description = "Updates an existing user in a Cloud SQL instance.",
          flatPath = "v1/projects/{project}/instances/{instance}/users",
          httpMethod = "PUT",
          id = "sql.users.update",
          parameterOrder = {
            "project",
            "instance",
          },
          parameters = {
            host = {
              description = "Optional. Host of the user in the instance.",
              location = "query",
              type = "string",
            },
            instance = {
              description = "Database instance ID. This does not include the project ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "Name of the user in the instance.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Project ID of the project that contains the instance.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{project}/instances/{instance}/users",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/sqlservice.admin",
          },
        },
      },
    },
  },
  revision = "20221209",
  rootUrl = "https://sqladmin.googleapis.com/",
  schemas = {
    AclEntry = {
      description = "An entry for an Access Control list.",
      id = "AclEntry",
      properties = {
        expirationTime = {
          description = "The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        kind = {
          description = "This is always `sql#aclEntry`.",
          type = "string",
        },
        name = {
          description = "Optional. A label to identify this entry.",
          type = "string",
        },
        value = {
          description = "The allowlisted value for the access control list.",
          type = "string",
        },
      },
      type = "object",
    },
    ApiWarning = {
      description = "An Admin API warning message.",
      id = "ApiWarning",
      properties = {
        code = {
          description = "Code to uniquely identify the warning type.",
          enum = {
            "SQL_API_WARNING_CODE_UNSPECIFIED",
            "REGION_UNREACHABLE",
            "MAX_RESULTS_EXCEEDS_LIMIT",
          },
          enumDescriptions = {
            "An unknown or unset warning type from Cloud SQL API.",
            "Warning when one or more regions are not reachable. The returned result set may be incomplete.",
            "Warning when user provided maxResults parameter exceeds the limit. The returned result set may be incomplete.",
          },
          type = "string",
        },
        message = {
          description = "The warning message.",
          type = "string",
        },
        region = {
          description = "The region name for REGION_UNREACHABLE warning.",
          type = "string",
        },
      },
      type = "object",
    },
    BackupConfiguration = {
      description = "Database instance backup configuration.",
      id = "BackupConfiguration",
      properties = {
        backupRetentionSettings = {
          ["$ref"] = "BackupRetentionSettings",
          description = "Backup retention settings.",
        },
        binaryLogEnabled = {
          description = "(MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.",
          type = "boolean",
        },
        enabled = {
          description = "Whether this configuration is enabled.",
          type = "boolean",
        },
        kind = {
          description = "This is always `sql#backupConfiguration`.",
          type = "string",
        },
        location = {
          description = "Location of the backup",
          type = "string",
        },
        pointInTimeRecoveryEnabled = {
          description = "(Postgres only) Whether point in time recovery is enabled.",
          type = "boolean",
        },
        replicationLogArchivingEnabled = {
          description = "Reserved for future use.",
          type = "boolean",
        },
        startTime = {
          description = "Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.",
          type = "string",
        },
        transactionLogRetentionDays = {
          description = "The number of days of transaction logs we retain for point in time restore, from 1-7.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BackupContext = {
      description = "Backup context.",
      id = "BackupContext",
      properties = {
        backupId = {
          description = "The identifier of the backup.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "This is always `sql#backupContext`.",
          type = "string",
        },
      },
      type = "object",
    },
    BackupRetentionSettings = {
      description = "We currently only support backup retention by specifying the number of backups we will retain.",
      id = "BackupRetentionSettings",
      properties = {
        retainedBackups = {
          description = "Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.",
          format = "int32",
          type = "integer",
        },
        retentionUnit = {
          description = "The unit that 'retained_backups' represents.",
          enum = {
            "RETENTION_UNIT_UNSPECIFIED",
            "COUNT",
          },
          enumDescriptions = {
            "Backup retention unit is unspecified, will be treated as COUNT.",
            "Retention will be by count, eg. \"retain the most recent 7 backups\".",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BackupRun = {
      description = "A BackupRun resource.",
      id = "BackupRun",
      properties = {
        backupKind = {
          description = "Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.",
          enum = {
            "SQL_BACKUP_KIND_UNSPECIFIED",
            "SNAPSHOT",
            "PHYSICAL",
          },
          enumDescriptions = {
            "This is an unknown BackupKind.",
            "The snapshot based backups",
            "Physical backups",
          },
          type = "string",
        },
        description = {
          description = "The description of this run, only applicable to on-demand backups.",
          type = "string",
        },
        diskEncryptionConfiguration = {
          ["$ref"] = "DiskEncryptionConfiguration",
          description = "Encryption configuration specific to a backup.",
        },
        diskEncryptionStatus = {
          ["$ref"] = "DiskEncryptionStatus",
          description = "Encryption status specific to a backup.",
        },
        endTime = {
          description = "The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        enqueuedTime = {
          description = "The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        error = {
          ["$ref"] = "OperationError",
          description = "Information about why the backup operation failed. This is only present if the run has the FAILED status.",
        },
        id = {
          description = "The identifier for this backup run. Unique only for a specific Cloud SQL instance.",
          format = "int64",
          type = "string",
        },
        instance = {
          description = "Name of the database instance.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#backupRun`.",
          type = "string",
        },
        location = {
          description = "Location of the backups.",
          type = "string",
        },
        selfLink = {
          description = "The URI of this resource.",
          type = "string",
        },
        startTime = {
          description = "The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          description = "The status of this run.",
          enum = {
            "SQL_BACKUP_RUN_STATUS_UNSPECIFIED",
            "ENQUEUED",
            "OVERDUE",
            "RUNNING",
            "FAILED",
            "SUCCESSFUL",
            "SKIPPED",
            "DELETION_PENDING",
            "DELETION_FAILED",
            "DELETED",
          },
          enumDescriptions = {
            "The status of the run is unknown.",
            "The backup operation was enqueued.",
            "The backup is overdue across a given backup window. Indicates a problem. Example: Long-running operation in progress during the whole window.",
            "The backup is in progress.",
            "The backup failed.",
            "The backup was successful.",
            "The backup was skipped (without problems) for a given backup window. Example: Instance was idle.",
            "The backup is about to be deleted.",
            "The backup deletion failed.",
            "The backup has been deleted.",
          },
          type = "string",
        },
        timeZone = {
          description = "Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.",
          type = "string",
        },
        type = {
          description = "The type of this run; can be either \"AUTOMATED\" or \"ON_DEMAND\" or \"FINAL\". This field defaults to \"ON_DEMAND\" and is ignored, when specified for insert requests.",
          enum = {
            "SQL_BACKUP_RUN_TYPE_UNSPECIFIED",
            "AUTOMATED",
            "ON_DEMAND",
          },
          enumDescriptions = {
            "This is an unknown BackupRun type.",
            "The backup schedule automatically triggers a backup.",
            "The user manually triggers a backup.",
          },
          type = "string",
        },
        windowStartTime = {
          description = "The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    BackupRunsListResponse = {
      description = "Backup run list results.",
      id = "BackupRunsListResponse",
      properties = {
        items = {
          description = "A list of backup runs in reverse chronological order of the enqueued time.",
          items = {
            ["$ref"] = "BackupRun",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#backupRunsList`.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    BinLogCoordinates = {
      description = "Binary log coordinates.",
      id = "BinLogCoordinates",
      properties = {
        binLogFileName = {
          description = "Name of the binary log file for a Cloud SQL instance.",
          type = "string",
        },
        binLogPosition = {
          description = "Position (offset) within the binary log file.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "This is always `sql#binLogCoordinates`.",
          type = "string",
        },
      },
      type = "object",
    },
    CloneContext = {
      description = "Database instance clone context.",
      id = "CloneContext",
      properties = {
        allocatedIpRange = {
          description = "The name of the allocated ip range for the private ip Cloud SQL instance. For example: \"google-managed-services-default\". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. Reserved for future use.",
          type = "string",
        },
        binLogCoordinates = {
          ["$ref"] = "BinLogCoordinates",
          description = "Binary log coordinates, if specified, identify the position up to which the source instance is cloned. If not specified, the source instance is cloned up to the most recent binary log coordinates.",
        },
        databaseNames = {
          description = "(SQL Server only) Clone only the specified databases from the source instance. Clone all databases if empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        destinationInstanceName = {
          description = "Name of the Cloud SQL instance to be created as a clone.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#cloneContext`.",
          type = "string",
        },
        pitrTimestampMs = {
          description = "Reserved for future use.",
          format = "int64",
          type = "string",
        },
        pointInTime = {
          description = "Timestamp, if specified, identifies the time to which the source instance is cloned.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ConnectSettings = {
      description = "Connect settings retrieval response.",
      id = "ConnectSettings",
      properties = {
        backendType = {
          description = "`SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.",
          enum = {
            "SQL_BACKEND_TYPE_UNSPECIFIED",
            "FIRST_GEN",
            "SECOND_GEN",
            "EXTERNAL",
          },
          enumDescriptions = {
            "This is an unknown backend type for instance.",
            "V1 speckle instance.",
            "V2 speckle instance.",
            "On premises instance.",
          },
          type = "string",
        },
        databaseVersion = {
          description = "The database engine type and version. The `databaseVersion` field cannot be changed after instance creation. MySQL instances: `MYSQL_8_0`, `MYSQL_5_7` (default), or `MYSQL_5_6`. PostgreSQL instances: `POSTGRES_9_6`, `POSTGRES_10`, `POSTGRES_11`, `POSTGRES_12` (default), `POSTGRES_13`, or `POSTGRES_14`. SQL Server instances: `SQLSERVER_2017_STANDARD` (default), `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`, `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`, or `SQLSERVER_2019_WEB`.",
          enum = {
            "SQL_DATABASE_VERSION_UNSPECIFIED",
            "MYSQL_5_1",
            "MYSQL_5_5",
            "MYSQL_5_6",
            "MYSQL_5_7",
            "SQLSERVER_2017_STANDARD",
            "SQLSERVER_2017_ENTERPRISE",
            "SQLSERVER_2017_EXPRESS",
            "SQLSERVER_2017_WEB",
            "POSTGRES_9_6",
            "POSTGRES_10",
            "POSTGRES_11",
            "POSTGRES_12",
            "POSTGRES_13",
            "POSTGRES_14",
            "MYSQL_8_0",
            "MYSQL_8_0_18",
            "MYSQL_8_0_26",
            "MYSQL_8_0_27",
            "MYSQL_8_0_28",
            "MYSQL_8_0_29",
            "MYSQL_8_0_30",
            "MYSQL_8_0_31",
            "SQLSERVER_2019_STANDARD",
            "SQLSERVER_2019_ENTERPRISE",
            "SQLSERVER_2019_EXPRESS",
            "SQLSERVER_2019_WEB",
          },
          enumDescriptions = {
            "This is an unknown database version.",
            "The database version is MySQL 5.1.",
            "The database version is MySQL 5.5.",
            "The database version is MySQL 5.6.",
            "The database version is MySQL 5.7.",
            "The database version is SQL Server 2017 Standard.",
            "The database version is SQL Server 2017 Enterprise.",
            "The database version is SQL Server 2017 Express.",
            "The database version is SQL Server 2017 Web.",
            "The database version is PostgreSQL 9.6.",
            "The database version is PostgreSQL 10.",
            "The database version is PostgreSQL 11.",
            "The database version is PostgreSQL 12.",
            "The database version is PostgreSQL 13.",
            "The database version is PostgreSQL 14.",
            "The database version is MySQL 8.",
            "The database major version is MySQL 8.0 and the minor version is 18.",
            "The database major version is MySQL 8.0 and the minor version is 26.",
            "The database major version is MySQL 8.0 and the minor version is 27.",
            "The database major version is MySQL 8.0 and the minor version is 28.",
            "The database major version is MySQL 8.0 and the minor version is 29.",
            "The database major version is MySQL 8.0 and the minor version is 30.",
            "The database major version is MySQL 8.0 and the minor version is 31.",
            "The database version is SQL Server 2019 Standard.",
            "The database version is SQL Server 2019 Enterprise.",
            "The database version is SQL Server 2019 Express.",
            "The database version is SQL Server 2019 Web.",
          },
          type = "string",
        },
        ipAddresses = {
          description = "The assigned IP addresses for the instance.",
          items = {
            ["$ref"] = "IpMapping",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#connectSettings`.",
          type = "string",
        },
        region = {
          description = "The cloud region for the instance. For example, `us-central1`, `europe-west1`. The region cannot be changed after instance creation.",
          type = "string",
        },
        serverCaCert = {
          ["$ref"] = "SslCert",
          description = "SSL configuration.",
        },
      },
      type = "object",
    },
    Database = {
      description = "Represents a SQL database on the Cloud SQL instance.",
      id = "Database",
      properties = {
        charset = {
          description = "The Cloud SQL charset value.",
          type = "string",
        },
        collation = {
          description = "The Cloud SQL collation value.",
          type = "string",
        },
        etag = {
          description = "This field is deprecated and will be removed from a future version of the API.",
          type = "string",
        },
        instance = {
          description = "The name of the Cloud SQL instance. This does not include the project ID.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#database`.",
          type = "string",
        },
        name = {
          description = "The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.",
          type = "string",
        },
        project = {
          description = "The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable.",
          type = "string",
        },
        selfLink = {
          description = "The URI of this resource.",
          type = "string",
        },
        sqlserverDatabaseDetails = {
          ["$ref"] = "SqlServerDatabaseDetails",
        },
      },
      type = "object",
    },
    DatabaseFlags = {
      description = "Database flags for Cloud SQL instances.",
      id = "DatabaseFlags",
      properties = {
        name = {
          description = "The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.",
          type = "string",
        },
        value = {
          description = "The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.",
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseInstance = {
      description = "A Cloud SQL instance resource.",
      id = "DatabaseInstance",
      properties = {
        availableMaintenanceVersions = {
          description = "List all maintenance versions applicable on the instance",
          items = {
            type = "string",
          },
          type = "array",
        },
        backendType = {
          description = "The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.",
          enum = {
            "SQL_BACKEND_TYPE_UNSPECIFIED",
            "FIRST_GEN",
            "SECOND_GEN",
            "EXTERNAL",
          },
          enumDescriptions = {
            "This is an unknown backend type for instance.",
            "V1 speckle instance.",
            "V2 speckle instance.",
            "On premises instance.",
          },
          type = "string",
        },
        connectionName = {
          description = "Connection name of the Cloud SQL instance used in connection strings.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the instance was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        currentDiskSize = {
          description = "The current disk usage of the instance in bytes. This property has been deprecated. Use the \"cloudsql.googleapis.com/database/disk/bytes_used\" metric in Cloud Monitoring API instead. Please see [this announcement](https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ) for details.",
          format = "int64",
          type = "string",
        },
        databaseInstalledVersion = {
          description = "Output only. Stores the current database version running on the instance including minor version such as `MYSQL_8_0_18`.",
          readOnly = true,
          type = "string",
        },
        databaseVersion = {
          description = "The database engine type and version. The `databaseVersion` field cannot be changed after instance creation.",
          enum = {
            "SQL_DATABASE_VERSION_UNSPECIFIED",
            "MYSQL_5_1",
            "MYSQL_5_5",
            "MYSQL_5_6",
            "MYSQL_5_7",
            "SQLSERVER_2017_STANDARD",
            "SQLSERVER_2017_ENTERPRISE",
            "SQLSERVER_2017_EXPRESS",
            "SQLSERVER_2017_WEB",
            "POSTGRES_9_6",
            "POSTGRES_10",
            "POSTGRES_11",
            "POSTGRES_12",
            "POSTGRES_13",
            "POSTGRES_14",
            "MYSQL_8_0",
            "MYSQL_8_0_18",
            "MYSQL_8_0_26",
            "MYSQL_8_0_27",
            "MYSQL_8_0_28",
            "MYSQL_8_0_29",
            "MYSQL_8_0_30",
            "MYSQL_8_0_31",
            "SQLSERVER_2019_STANDARD",
            "SQLSERVER_2019_ENTERPRISE",
            "SQLSERVER_2019_EXPRESS",
            "SQLSERVER_2019_WEB",
          },
          enumDescriptions = {
            "This is an unknown database version.",
            "The database version is MySQL 5.1.",
            "The database version is MySQL 5.5.",
            "The database version is MySQL 5.6.",
            "The database version is MySQL 5.7.",
            "The database version is SQL Server 2017 Standard.",
            "The database version is SQL Server 2017 Enterprise.",
            "The database version is SQL Server 2017 Express.",
            "The database version is SQL Server 2017 Web.",
            "The database version is PostgreSQL 9.6.",
            "The database version is PostgreSQL 10.",
            "The database version is PostgreSQL 11.",
            "The database version is PostgreSQL 12.",
            "The database version is PostgreSQL 13.",
            "The database version is PostgreSQL 14.",
            "The database version is MySQL 8.",
            "The database major version is MySQL 8.0 and the minor version is 18.",
            "The database major version is MySQL 8.0 and the minor version is 26.",
            "The database major version is MySQL 8.0 and the minor version is 27.",
            "The database major version is MySQL 8.0 and the minor version is 28.",
            "The database major version is MySQL 8.0 and the minor version is 29.",
            "The database major version is MySQL 8.0 and the minor version is 30.",
            "The database major version is MySQL 8.0 and the minor version is 31.",
            "The database version is SQL Server 2019 Standard.",
            "The database version is SQL Server 2019 Enterprise.",
            "The database version is SQL Server 2019 Express.",
            "The database version is SQL Server 2019 Web.",
          },
          type = "string",
        },
        diskEncryptionConfiguration = {
          ["$ref"] = "DiskEncryptionConfiguration",
          description = "Disk encryption configuration specific to an instance.",
        },
        diskEncryptionStatus = {
          ["$ref"] = "DiskEncryptionStatus",
          description = "Disk encryption status specific to an instance.",
        },
        etag = {
          description = "This field is deprecated and will be removed from a future version of the API. Use the `settings.settingsVersion` field instead.",
          type = "string",
        },
        failoverReplica = {
          description = "The name and status of the failover replica.",
          properties = {
            available = {
              description = "The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only failover to the failover replica when the status is true.",
              type = "boolean",
            },
            name = {
              description = "The name of the failover replica. If specified at instance creation, a failover replica is created for the instance. The name doesn't include the project ID.",
              type = "string",
            },
          },
          type = "object",
        },
        gceZone = {
          description = "The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone. WARNING: Changing this might restart the instance.",
          type = "string",
        },
        instanceType = {
          description = "The instance type.",
          enum = {
            "SQL_INSTANCE_TYPE_UNSPECIFIED",
            "CLOUD_SQL_INSTANCE",
            "ON_PREMISES_INSTANCE",
            "READ_REPLICA_INSTANCE",
          },
          enumDescriptions = {
            "This is an unknown Cloud SQL instance type.",
            "A regular Cloud SQL instance that is not replicating from a primary instance.",
            "An instance running on the customer's premises that is not managed by Cloud SQL.",
            "A Cloud SQL instance acting as a read-replica.",
          },
          type = "string",
        },
        ipAddresses = {
          description = "The assigned IP addresses for the instance.",
          items = {
            ["$ref"] = "IpMapping",
          },
          type = "array",
        },
        ipv6Address = {
          description = "The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to First Generation instances.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#instance`.",
          type = "string",
        },
        maintenanceVersion = {
          description = "The current software version on the instance.",
          type = "string",
        },
        masterInstanceName = {
          description = "The name of the instance which will act as primary in the replication setup.",
          type = "string",
        },
        maxDiskSize = {
          description = "The maximum disk size of the instance in bytes.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of the Cloud SQL instance. This does not include the project ID.",
          type = "string",
        },
        onPremisesConfiguration = {
          ["$ref"] = "OnPremisesConfiguration",
          description = "Configuration specific to on-premises instances.",
        },
        outOfDiskReport = {
          ["$ref"] = "SqlOutOfDiskReport",
          description = "This field represents the report generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job",
        },
        project = {
          description = "The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable.",
          type = "string",
        },
        region = {
          description = "The geographical region. Can be: * `us-central` (`FIRST_GEN` instances only) * `us-central1` (`SECOND_GEN` instances only) * `asia-east1` or `europe-west1`. Defaults to `us-central` or `us-central1` depending on the instance type. The region cannot be changed after instance creation.",
          type = "string",
        },
        replicaConfiguration = {
          ["$ref"] = "ReplicaConfiguration",
          description = "Configuration specific to failover replicas and read replicas.",
        },
        replicaNames = {
          description = "The replicas of the instance.",
          items = {
            type = "string",
          },
          type = "array",
        },
        rootPassword = {
          description = "Initial root password. Use only on creation. You must set root passwords before you can connect to PostgreSQL instances.",
          type = "string",
        },
        satisfiesPzs = {
          description = "The status indicating if instance satisfiesPzs. Reserved for future use.",
          type = "boolean",
        },
        scheduledMaintenance = {
          ["$ref"] = "SqlScheduledMaintenance",
          description = "The start time of any upcoming scheduled maintenance for this instance.",
        },
        secondaryGceZone = {
          description = "The Compute Engine zone that the failover instance is currently serving from for a regional instance. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary/failover zone.",
          type = "string",
        },
        selfLink = {
          description = "The URI of this resource.",
          type = "string",
        },
        serverCaCert = {
          ["$ref"] = "SslCert",
          description = "SSL configuration.",
        },
        serviceAccountEmailAddress = {
          description = "The service account email address assigned to the instance.\\This property is read-only.",
          type = "string",
        },
        settings = {
          ["$ref"] = "Settings",
          description = "The user settings.",
        },
        state = {
          description = "The current serving state of the Cloud SQL instance.",
          enum = {
            "SQL_INSTANCE_STATE_UNSPECIFIED",
            "RUNNABLE",
            "SUSPENDED",
            "PENDING_DELETE",
            "PENDING_CREATE",
            "MAINTENANCE",
            "FAILED",
            "ONLINE_MAINTENANCE",
          },
          enumDescriptions = {
            "The state of the instance is unknown.",
            "The instance is running, or has been stopped by owner.",
            "The instance is not available, for example due to problems with billing.",
            "The instance is being deleted.",
            "The instance is being created.",
            "The instance is down for maintenance.",
            "The creation of the instance failed or a fatal error occurred during maintenance.",
            "Deprecated",
          },
          type = "string",
        },
        suspensionReason = {
          description = "If the instance state is SUSPENDED, the reason for the suspension.",
          items = {
            enum = {
              "SQL_SUSPENSION_REASON_UNSPECIFIED",
              "BILLING_ISSUE",
              "LEGAL_ISSUE",
              "OPERATIONAL_ISSUE",
              "KMS_KEY_ISSUE",
            },
            enumDescriptions = {
              "This is an unknown suspension reason.",
              "The instance is suspended due to billing issues (for example:, GCP account issue)",
              "The instance is suspended due to illegal content (for example:, child pornography, copyrighted material, etc.).",
              "The instance is causing operational issues (for example:, causing the database to crash).",
              "The KMS key used by the instance is either revoked or denied access to",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatabasesListResponse = {
      description = "Database list response.",
      id = "DatabasesListResponse",
      properties = {
        items = {
          description = "List of database resources in the instance.",
          items = {
            ["$ref"] = "Database",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#databasesList`.",
          type = "string",
        },
      },
      type = "object",
    },
    DemoteMasterConfiguration = {
      description = "Read-replica configuration for connecting to the on-premises primary instance.",
      id = "DemoteMasterConfiguration",
      properties = {
        kind = {
          description = "This is always `sql#demoteMasterConfiguration`.",
          type = "string",
        },
        mysqlReplicaConfiguration = {
          ["$ref"] = "DemoteMasterMySqlReplicaConfiguration",
          description = "MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.",
        },
      },
      type = "object",
    },
    DemoteMasterContext = {
      description = "Database instance demote primary instance context.",
      id = "DemoteMasterContext",
      properties = {
        kind = {
          description = "This is always `sql#demoteMasterContext`.",
          type = "string",
        },
        masterInstanceName = {
          description = "The name of the instance which will act as on-premises primary instance in the replication setup.",
          type = "string",
        },
        replicaConfiguration = {
          ["$ref"] = "DemoteMasterConfiguration",
          description = "Configuration specific to read-replicas replicating from the on-premises primary instance.",
        },
        skipReplicationSetup = {
          description = "Flag to skip replication setup on the instance.",
          type = "boolean",
        },
        verifyGtidConsistency = {
          description = "Verify the GTID consistency for demote operation. Default value: `True`. Setting this flag to `false` enables you to bypass the GTID consistency check between on-premises primary instance and Cloud SQL instance during the demotion operation but also exposes you to the risk of future replication failures. Change the value only if you know the reason for the GTID divergence and are confident that doing so will not cause any replication issues.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DemoteMasterMySqlReplicaConfiguration = {
      description = "Read-replica configuration specific to MySQL databases.",
      id = "DemoteMasterMySqlReplicaConfiguration",
      properties = {
        caCertificate = {
          description = "PEM representation of the trusted CA's x509 certificate.",
          type = "string",
        },
        clientCertificate = {
          description = "PEM representation of the replica's x509 certificate.",
          type = "string",
        },
        clientKey = {
          description = "PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate. The format of the replica's private key can be either PKCS #1 or PKCS #8.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#demoteMasterMysqlReplicaConfiguration`.",
          type = "string",
        },
        password = {
          description = "The password for the replication connection.",
          type = "string",
        },
        username = {
          description = "The username for the replication connection.",
          type = "string",
        },
      },
      type = "object",
    },
    DenyMaintenancePeriod = {
      description = "Deny maintenance Periods. This specifies a date range during when all CSA rollout will be denied.",
      id = "DenyMaintenancePeriod",
      properties = {
        endDate = {
          description = "\"deny maintenance period\" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the no maintenance interval recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01",
          type = "string",
        },
        startDate = {
          description = "\"deny maintenance period\" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01",
          type = "string",
        },
        time = {
          description = "Time in UTC when the \"deny maintenance period\" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00",
          type = "string",
        },
      },
      type = "object",
    },
    DiskEncryptionConfiguration = {
      description = "Disk encryption configuration for an instance.",
      id = "DiskEncryptionConfiguration",
      properties = {
        kind = {
          description = "This is always `sql#diskEncryptionConfiguration`.",
          type = "string",
        },
        kmsKeyName = {
          description = "Resource name of KMS key for disk encryption",
          type = "string",
        },
      },
      type = "object",
    },
    DiskEncryptionStatus = {
      description = "Disk encryption status for an instance.",
      id = "DiskEncryptionStatus",
      properties = {
        kind = {
          description = "This is always `sql#diskEncryptionStatus`.",
          type = "string",
        },
        kmsKeyVersionName = {
          description = "KMS key version used to encrypt the Cloud SQL instance resource",
          type = "string",
        },
      },
      type = "object",
    },
    ExportContext = {
      description = "Database instance export context.",
      id = "ExportContext",
      properties = {
        bakExportOptions = {
          description = "Options for exporting BAK files (SQL Server-only)",
          properties = {
            stripeCount = {
              description = "Option for specifying how many stripes to use for the export. If blank, and the value of the striped field is true, the number of stripes is automatically chosen.",
              format = "int32",
              type = "integer",
            },
            striped = {
              description = "Whether or not the export should be striped.",
              type = "boolean",
            },
          },
          type = "object",
        },
        csvExportOptions = {
          description = "Options for exporting data as CSV. `MySQL` and `PostgreSQL` instances only.",
          properties = {
            escapeCharacter = {
              description = "Specifies the character that should appear before a data character that needs to be escaped.",
              type = "string",
            },
            fieldsTerminatedBy = {
              description = "Specifies the character that separates columns within each row (line) of the file.",
              type = "string",
            },
            linesTerminatedBy = {
              description = "This is used to separate lines. If a line does not contain all fields, the rest of the columns are set to their default values.",
              type = "string",
            },
            quoteCharacter = {
              description = "Specifies the quoting character to be used when a data value is quoted.",
              type = "string",
            },
            selectQuery = {
              description = "The select query used to extract the data.",
              type = "string",
            },
          },
          type = "object",
        },
        databases = {
          description = "Databases to be exported. `MySQL instances:` If `fileType` is `SQL` and no database is specified, all databases are exported, except for the `mysql` system database. If `fileType` is `CSV`, you can specify one database, either by using this property or by using the `csvExportOptions.selectQuery` property, which takes precedence over this property. `PostgreSQL instances:` You must specify one database to be exported. If `fileType` is `CSV`, this database must match the one specified in the `csvExportOptions.selectQuery` property. `SQL Server instances:` You must specify one database to be exported, and the `fileType` must be `BAK`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileType = {
          description = "The file type for the specified uri.",
          enum = {
            "SQL_FILE_TYPE_UNSPECIFIED",
            "SQL",
            "CSV",
            "BAK",
          },
          enumDescriptions = {
            "Unknown file type.",
            "File containing SQL statements.",
            "File in CSV format.",
            "",
          },
          type = "string",
        },
        kind = {
          description = "This is always `sql#exportContext`.",
          type = "string",
        },
        offload = {
          description = "Option for export offload.",
          type = "boolean",
        },
        sqlExportOptions = {
          description = "Options for exporting data as SQL statements.",
          properties = {
            mysqlExportOptions = {
              description = "Options for exporting from MySQL.",
              properties = {
                masterData = {
                  description = "Option to include SQL statement required to set up replication. If set to `1`, the dump file includes a CHANGE MASTER TO statement with the binary log coordinates, and --set-gtid-purged is set to ON. If set to `2`, the CHANGE MASTER TO statement is written as a SQL comment and has no effect. If set to any value other than `1`, --set-gtid-purged is set to OFF.",
                  format = "int32",
                  type = "integer",
                },
              },
              type = "object",
            },
            schemaOnly = {
              description = "Export only schemas.",
              type = "boolean",
            },
            tables = {
              description = "Tables to export, or that were exported, from the specified database. If you specify tables, specify one and only one database. For PostgreSQL instances, you can specify only one table.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        uri = {
          description = "The path to the file in Google Cloud Storage where the export will be stored. The URI is in the form `gs://bucketName/fileName`. If the file already exists, the request succeeds, but the operation fails. If `fileType` is `SQL` and the filename ends with .gz, the contents are compressed.",
          type = "string",
        },
      },
      type = "object",
    },
    FailoverContext = {
      description = "Database instance failover context.",
      id = "FailoverContext",
      properties = {
        kind = {
          description = "This is always `sql#failoverContext`.",
          type = "string",
        },
        settingsVersion = {
          description = "The current settings version of this instance. Request will be rejected if this version doesn't match the current settings version.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Flag = {
      description = "A flag resource.",
      id = "Flag",
      properties = {
        allowedIntValues = {
          description = "Use this field if only certain integers are accepted. Can be combined with min_value and max_value to add additional values.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        allowedStringValues = {
          description = "For `STRING` flags, a list of strings that the value can be set to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        appliesTo = {
          description = "The database version this flag applies to. Can be MySQL instances: `MYSQL_8_0`, `MYSQL_8_0_18`, `MYSQL_8_0_26`, `MYSQL_5_7`, or `MYSQL_5_6`. PostgreSQL instances: `POSTGRES_9_6`, `POSTGRES_10`, `POSTGRES_11` or `POSTGRES_12`. SQL Server instances: `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`, `SQLSERVER_2019_STANDARD`, `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`, or `SQLSERVER_2019_WEB`. See [the complete list](/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).",
          items = {
            enum = {
              "SQL_DATABASE_VERSION_UNSPECIFIED",
              "MYSQL_5_1",
              "MYSQL_5_5",
              "MYSQL_5_6",
              "MYSQL_5_7",
              "SQLSERVER_2017_STANDARD",
              "SQLSERVER_2017_ENTERPRISE",
              "SQLSERVER_2017_EXPRESS",
              "SQLSERVER_2017_WEB",
              "POSTGRES_9_6",
              "POSTGRES_10",
              "POSTGRES_11",
              "POSTGRES_12",
              "POSTGRES_13",
              "POSTGRES_14",
              "MYSQL_8_0",
              "MYSQL_8_0_18",
              "MYSQL_8_0_26",
              "MYSQL_8_0_27",
              "MYSQL_8_0_28",
              "MYSQL_8_0_29",
              "MYSQL_8_0_30",
              "MYSQL_8_0_31",
              "SQLSERVER_2019_STANDARD",
              "SQLSERVER_2019_ENTERPRISE",
              "SQLSERVER_2019_EXPRESS",
              "SQLSERVER_2019_WEB",
            },
            enumDescriptions = {
              "This is an unknown database version.",
              "The database version is MySQL 5.1.",
              "The database version is MySQL 5.5.",
              "The database version is MySQL 5.6.",
              "The database version is MySQL 5.7.",
              "The database version is SQL Server 2017 Standard.",
              "The database version is SQL Server 2017 Enterprise.",
              "The database version is SQL Server 2017 Express.",
              "The database version is SQL Server 2017 Web.",
              "The database version is PostgreSQL 9.6.",
              "The database version is PostgreSQL 10.",
              "The database version is PostgreSQL 11.",
              "The database version is PostgreSQL 12.",
              "The database version is PostgreSQL 13.",
              "The database version is PostgreSQL 14.",
              "The database version is MySQL 8.",
              "The database major version is MySQL 8.0 and the minor version is 18.",
              "The database major version is MySQL 8.0 and the minor version is 26.",
              "The database major version is MySQL 8.0 and the minor version is 27.",
              "The database major version is MySQL 8.0 and the minor version is 28.",
              "The database major version is MySQL 8.0 and the minor version is 29.",
              "The database major version is MySQL 8.0 and the minor version is 30.",
              "The database major version is MySQL 8.0 and the minor version is 31.",
              "The database version is SQL Server 2019 Standard.",
              "The database version is SQL Server 2019 Enterprise.",
              "The database version is SQL Server 2019 Express.",
              "The database version is SQL Server 2019 Web.",
            },
            type = "string",
          },
          type = "array",
        },
        inBeta = {
          description = "Whether or not the flag is considered in beta.",
          type = "boolean",
        },
        kind = {
          description = "This is always `sql#flag`.",
          type = "string",
        },
        maxValue = {
          description = "For `INTEGER` flags, the maximum allowed value.",
          format = "int64",
          type = "string",
        },
        minValue = {
          description = "For `INTEGER` flags, the minimum allowed value.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "This is the name of the flag. Flag names always use underscores, not hyphens, for example: `max_allowed_packet`",
          type = "string",
        },
        requiresRestart = {
          description = "Indicates whether changing this flag will trigger a database restart. Only applicable to Second Generation instances.",
          type = "boolean",
        },
        type = {
          description = "The type of the flag. Flags are typed to being `BOOLEAN`, `STRING`, `INTEGER` or `NONE`. `NONE` is used for flags that do not take a value, such as `skip_grant_tables`.",
          enum = {
            "SQL_FLAG_TYPE_UNSPECIFIED",
            "BOOLEAN",
            "STRING",
            "INTEGER",
            "NONE",
            "MYSQL_TIMEZONE_OFFSET",
            "FLOAT",
            "REPEATED_STRING",
          },
          enumDescriptions = {
            "This is an unknown flag type.",
            "Boolean type flag.",
            "String type flag.",
            "Integer type flag.",
            "Flag type used for a server startup option.",
            "Type introduced specially for MySQL TimeZone offset. Accept a string value with the format [-12:59, 13:00].",
            "Float type flag.",
            "Comma-separated list of the strings in a SqlFlagType enum.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FlagsListResponse = {
      description = "Flags list response.",
      id = "FlagsListResponse",
      properties = {
        items = {
          description = "List of flags.",
          items = {
            ["$ref"] = "Flag",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#flagsList`.",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateEphemeralCertRequest = {
      description = "Ephemeral certificate creation request.",
      id = "GenerateEphemeralCertRequest",
      properties = {
        access_token = {
          description = "Optional. Access token to include in the signed certificate.",
          type = "string",
        },
        public_key = {
          description = "PEM encoded public key to include in the signed certificate.",
          type = "string",
        },
        readTime = {
          description = "Optional. Optional snapshot read timestamp to trade freshness for performance.",
          format = "google-datetime",
          type = "string",
        },
        validDuration = {
          description = "Optional. If set, it will contain the cert valid duration.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateEphemeralCertResponse = {
      description = "Ephemeral certificate creation request.",
      id = "GenerateEphemeralCertResponse",
      properties = {
        ephemeralCert = {
          ["$ref"] = "SslCert",
          description = "Generated cert",
        },
      },
      type = "object",
    },
    ImportContext = {
      description = "Database instance import context.",
      id = "ImportContext",
      properties = {
        bakImportOptions = {
          description = "Import parameters specific to SQL Server .BAK files",
          properties = {
            encryptionOptions = {
              properties = {
                certPath = {
                  description = "Path to the Certificate (.cer) in Cloud Storage, in the form `gs://bucketName/fileName`. The instance must have write permissions to the bucket and read access to the file.",
                  type = "string",
                },
                pvkPassword = {
                  description = "Password that encrypts the private key",
                  type = "string",
                },
                pvkPath = {
                  description = "Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form `gs://bucketName/fileName`. The instance must have write permissions to the bucket and read access to the file.",
                  type = "string",
                },
              },
              type = "object",
            },
            striped = {
              description = "Whether or not the backup set being restored is striped. Applies only to Cloud SQL for SQL Server.",
              type = "boolean",
            },
          },
          type = "object",
        },
        csvImportOptions = {
          description = "Options for importing data as CSV.",
          properties = {
            columns = {
              description = "The columns to which CSV data is imported. If not specified, all columns of the database table are loaded with CSV data.",
              items = {
                type = "string",
              },
              type = "array",
            },
            escapeCharacter = {
              description = "Specifies the character that should appear before a data character that needs to be escaped.",
              type = "string",
            },
            fieldsTerminatedBy = {
              description = "Specifies the character that separates columns within each row (line) of the file.",
              type = "string",
            },
            linesTerminatedBy = {
              description = "This is used to separate lines. If a line does not contain all fields, the rest of the columns are set to their default values.",
              type = "string",
            },
            quoteCharacter = {
              description = "Specifies the quoting character to be used when a data value is quoted.",
              type = "string",
            },
            table = {
              description = "The table to which CSV data is imported.",
              type = "string",
            },
          },
          type = "object",
        },
        database = {
          description = "The target database for the import. If `fileType` is `SQL`, this field is required only if the import file does not specify a database, and is overridden by any database specification in the import file. If `fileType` is `CSV`, one database must be specified.",
          type = "string",
        },
        fileType = {
          description = "The file type for the specified uri.\\`SQL`: The file contains SQL statements. \\`CSV`: The file contains CSV data.",
          enum = {
            "SQL_FILE_TYPE_UNSPECIFIED",
            "SQL",
            "CSV",
            "BAK",
          },
          enumDescriptions = {
            "Unknown file type.",
            "File containing SQL statements.",
            "File in CSV format.",
            "",
          },
          type = "string",
        },
        importUser = {
          description = "The PostgreSQL user for this import operation. PostgreSQL instances only.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#importContext`.",
          type = "string",
        },
        uri = {
          description = "Path to the import file in Cloud Storage, in the form `gs://bucketName/fileName`. Compressed gzip files (.gz) are supported when `fileType` is `SQL`. The instance must have write permissions to the bucket and read access to the file.",
          type = "string",
        },
      },
      type = "object",
    },
    InsightsConfig = {
      description = "Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.",
      id = "InsightsConfig",
      properties = {
        queryInsightsEnabled = {
          description = "Whether Query Insights feature is enabled.",
          type = "boolean",
        },
        queryPlansPerMinute = {
          description = "Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.",
          format = "int32",
          type = "integer",
        },
        queryStringLength = {
          description = "Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.",
          format = "int32",
          type = "integer",
        },
        recordApplicationTags = {
          description = "Whether Query Insights will record application tags from query when enabled.",
          type = "boolean",
        },
        recordClientAddress = {
          description = "Whether Query Insights will record client address when enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InstanceReference = {
      description = "Reference to another Cloud SQL instance.",
      id = "InstanceReference",
      properties = {
        name = {
          description = "The name of the Cloud SQL instance being referenced. This does not include the project ID.",
          type = "string",
        },
        project = {
          description = "The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.",
          type = "string",
        },
        region = {
          description = "The region of the Cloud SQL instance being referenced.",
          type = "string",
        },
      },
      type = "object",
    },
    InstancesCloneRequest = {
      description = "Database instance clone request.",
      id = "InstancesCloneRequest",
      properties = {
        cloneContext = {
          ["$ref"] = "CloneContext",
          description = "Contains details about the clone operation.",
        },
      },
      type = "object",
    },
    InstancesDemoteMasterRequest = {
      description = "Database demote primary instance request.",
      id = "InstancesDemoteMasterRequest",
      properties = {
        demoteMasterContext = {
          ["$ref"] = "DemoteMasterContext",
          description = "Contains details about the demoteMaster operation.",
        },
      },
      type = "object",
    },
    InstancesExportRequest = {
      description = "Database instance export request.",
      id = "InstancesExportRequest",
      properties = {
        exportContext = {
          ["$ref"] = "ExportContext",
          description = "Contains details about the export operation.",
        },
      },
      type = "object",
    },
    InstancesFailoverRequest = {
      description = "Instance failover request.",
      id = "InstancesFailoverRequest",
      properties = {
        failoverContext = {
          ["$ref"] = "FailoverContext",
          description = "Failover Context.",
        },
      },
      type = "object",
    },
    InstancesImportRequest = {
      description = "Database instance import request.",
      id = "InstancesImportRequest",
      properties = {
        importContext = {
          ["$ref"] = "ImportContext",
          description = "Contains details about the import operation.",
        },
      },
      type = "object",
    },
    InstancesListResponse = {
      description = "Database instances list response.",
      id = "InstancesListResponse",
      properties = {
        items = {
          description = "List of database instance resources.",
          items = {
            ["$ref"] = "DatabaseInstance",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#instancesList`.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
        warnings = {
          description = "List of warnings that occurred while handling the request.",
          items = {
            ["$ref"] = "ApiWarning",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InstancesListServerCasResponse = {
      description = "Instances ListServerCas response.",
      id = "InstancesListServerCasResponse",
      properties = {
        activeVersion = {
          type = "string",
        },
        certs = {
          description = "List of server CA certificates for the instance.",
          items = {
            ["$ref"] = "SslCert",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#instancesListServerCas`.",
          type = "string",
        },
      },
      type = "object",
    },
    InstancesRestoreBackupRequest = {
      description = "Database instance restore backup request.",
      id = "InstancesRestoreBackupRequest",
      properties = {
        restoreBackupContext = {
          ["$ref"] = "RestoreBackupContext",
          description = "Parameters required to perform the restore backup operation.",
        },
      },
      type = "object",
    },
    InstancesRotateServerCaRequest = {
      description = "Rotate server CA request.",
      id = "InstancesRotateServerCaRequest",
      properties = {
        rotateServerCaContext = {
          ["$ref"] = "RotateServerCaContext",
          description = "Contains details about the rotate server CA operation.",
        },
      },
      type = "object",
    },
    InstancesTruncateLogRequest = {
      description = "Instance truncate log request.",
      id = "InstancesTruncateLogRequest",
      properties = {
        truncateLogContext = {
          ["$ref"] = "TruncateLogContext",
          description = "Contains details about the truncate log operation.",
        },
      },
      type = "object",
    },
    IpConfiguration = {
      description = "IP Management configuration.",
      id = "IpConfiguration",
      properties = {
        allocatedIpRange = {
          description = "The name of the allocated ip range for the private ip Cloud SQL instance. For example: \"google-managed-services-default\". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`",
          type = "string",
        },
        authorizedNetworks = {
          description = "The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR' notation, also known as 'slash' notation (for example: `157.197.200.0/24`).",
          items = {
            ["$ref"] = "AclEntry",
          },
          type = "array",
        },
        enablePrivatePathForGoogleCloudServices = {
          description = "Controls connectivity to private IP instances from Google services, such as BigQuery.",
          type = "boolean",
        },
        ipv4Enabled = {
          description = "Whether the instance is assigned a public IP address or not.",
          type = "boolean",
        },
        privateNetwork = {
          description = "The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.",
          type = "string",
        },
        requireSsl = {
          description = "Whether SSL connections over IP are enforced or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IpMapping = {
      description = "Database instance IP Mapping.",
      id = "IpMapping",
      properties = {
        ipAddress = {
          description = "The IP address assigned.",
          type = "string",
        },
        timeToRetire = {
          description = "The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`. This field is only available when the IP is scheduled to be retired.",
          format = "google-datetime",
          type = "string",
        },
        type = {
          description = "The type of this IP address. A `PRIMARY` address is a public address that can accept incoming connections. A `PRIVATE` address is a private address that can accept incoming connections. An `OUTGOING` address is the source address of connections originating from the instance, if supported.",
          enum = {
            "SQL_IP_ADDRESS_TYPE_UNSPECIFIED",
            "PRIMARY",
            "OUTGOING",
            "PRIVATE",
            "MIGRATED_1ST_GEN",
          },
          enumDescriptions = {
            "This is an unknown IP address type.",
            "IP address the customer is supposed to connect to. Usually this is the load balancer's IP address",
            "Source IP address of the connection a read replica establishes to its external primary instance. This IP address can be allowlisted by the customer in case it has a firewall that filters incoming connection to its on premises primary instance.",
            "Private IP used when using private IPs and network peering.",
            "V1 IP of a migrated instance. We want the user to decommission this IP as soon as the migration is complete. Note: V1 instances with V1 ip addresses will be counted as PRIMARY.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LocationPreference = {
      description = "Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.",
      id = "LocationPreference",
      properties = {
        followGaeApplication = {
          description = "The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WARNING: Changing this might restart the instance.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#locationPreference`.",
          type = "string",
        },
        secondaryZone = {
          description = "The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-central1-b, etc.).",
          type = "string",
        },
        zone = {
          description = "The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Changing this might restart the instance.",
          type = "string",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.",
      id = "MaintenanceWindow",
      properties = {
        day = {
          description = "day of week (1-7), starting on Monday.",
          format = "int32",
          type = "integer",
        },
        hour = {
          description = "hour of day - 0 to 23.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "This is always `sql#maintenanceWindow`.",
          type = "string",
        },
        updateTrack = {
          description = "Maintenance timing setting: `canary` (Earlier) or `stable` (Later). [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).",
          enum = {
            "SQL_UPDATE_TRACK_UNSPECIFIED",
            "canary",
            "stable",
          },
          enumDescriptions = {
            "This is an unknown maintenance timing preference.",
            "For instance update that requires a restart, this update track indicates your instance prefer to restart for new version early in maintenance window.",
            "For instance update that requires a restart, this update track indicates your instance prefer to let Cloud SQL choose the timing of restart (within its Maintenance window, if applicable).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MySqlReplicaConfiguration = {
      description = "Read-replica configuration specific to MySQL databases.",
      id = "MySqlReplicaConfiguration",
      properties = {
        caCertificate = {
          description = "PEM representation of the trusted CA's x509 certificate.",
          type = "string",
        },
        clientCertificate = {
          description = "PEM representation of the replica's x509 certificate.",
          type = "string",
        },
        clientKey = {
          description = "PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.",
          type = "string",
        },
        connectRetryInterval = {
          description = "Seconds to wait between connect retries. MySQL's default is 60 seconds.",
          format = "int32",
          type = "integer",
        },
        dumpFilePath = {
          description = "Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#mysqlReplicaConfiguration`.",
          type = "string",
        },
        masterHeartbeatPeriod = {
          description = "Interval in milliseconds between replication heartbeats.",
          format = "int64",
          type = "string",
        },
        password = {
          description = "The password for the replication connection.",
          type = "string",
        },
        sslCipher = {
          description = "A list of permissible ciphers to use for SSL encryption.",
          type = "string",
        },
        username = {
          description = "The username for the replication connection.",
          type = "string",
        },
        verifyServerCertificate = {
          description = "Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MySqlSyncConfig = {
      description = "MySQL-specific external server sync settings.",
      id = "MySqlSyncConfig",
      properties = {
        initialSyncFlags = {
          description = "Flags to use for the initial dump.",
          items = {
            ["$ref"] = "SyncFlags",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OnPremisesConfiguration = {
      description = "On-premises instance configuration.",
      id = "OnPremisesConfiguration",
      properties = {
        caCertificate = {
          description = "PEM representation of the trusted CA's x509 certificate.",
          type = "string",
        },
        clientCertificate = {
          description = "PEM representation of the replica's x509 certificate.",
          type = "string",
        },
        clientKey = {
          description = "PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.",
          type = "string",
        },
        dumpFilePath = {
          description = "The dump file to create the Cloud SQL replica.",
          type = "string",
        },
        hostPort = {
          description = "The host and port of the on-premises instance in host:port format",
          type = "string",
        },
        kind = {
          description = "This is always `sql#onPremisesConfiguration`.",
          type = "string",
        },
        password = {
          description = "The password for connecting to on-premises instance.",
          type = "string",
        },
        sourceInstance = {
          ["$ref"] = "InstanceReference",
          description = "The reference to Cloud SQL instance if the source is Cloud SQL.",
        },
        username = {
          description = "The username for connecting to on-premises instance.",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "An Operation resource. For successful operations that return an Operation resource, only the fields relevant to the operation are populated in the resource.",
      id = "Operation",
      properties = {
        backupContext = {
          ["$ref"] = "BackupContext",
          description = "The context for backup operation, if applicable.",
        },
        endTime = {
          description = "The time this operation finished in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        error = {
          ["$ref"] = "OperationErrors",
          description = "If errors occurred during processing of this operation, this field will be populated.",
        },
        exportContext = {
          ["$ref"] = "ExportContext",
          description = "The context for export operation, if applicable.",
        },
        importContext = {
          ["$ref"] = "ImportContext",
          description = "The context for import operation, if applicable.",
        },
        insertTime = {
          description = "The time this operation was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        kind = {
          description = "This is always `sql#operation`.",
          type = "string",
        },
        name = {
          description = "An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation.",
          type = "string",
        },
        operationType = {
          description = "The type of the operation. Valid values are: * `CREATE` * `DELETE` * `UPDATE` * `RESTART` * `IMPORT` * `EXPORT` * `BACKUP_VOLUME` * `RESTORE_VOLUME` * `CREATE_USER` * `DELETE_USER` * `CREATE_DATABASE` * `DELETE_DATABASE`",
          enum = {
            "SQL_OPERATION_TYPE_UNSPECIFIED",
            "IMPORT",
            "EXPORT",
            "CREATE",
            "UPDATE",
            "DELETE",
            "RESTART",
            "BACKUP",
            "SNAPSHOT",
            "BACKUP_VOLUME",
            "DELETE_VOLUME",
            "RESTORE_VOLUME",
            "INJECT_USER",
            "CLONE",
            "STOP_REPLICA",
            "START_REPLICA",
            "PROMOTE_REPLICA",
            "CREATE_REPLICA",
            "CREATE_USER",
            "DELETE_USER",
            "UPDATE_USER",
            "CREATE_DATABASE",
            "DELETE_DATABASE",
            "UPDATE_DATABASE",
            "FAILOVER",
            "DELETE_BACKUP",
            "RECREATE_REPLICA",
            "TRUNCATE_LOG",
            "DEMOTE_MASTER",
            "MAINTENANCE",
            "ENABLE_PRIVATE_IP",
            "DEFER_MAINTENANCE",
            "CREATE_CLONE",
            "RESCHEDULE_MAINTENANCE",
            "START_EXTERNAL_SYNC",
            "LOG_CLEANUP",
            "AUTO_RESTART",
          },
          enumDescriptions = {
            "Unknown operation type.",
            "Imports data into a Cloud SQL instance.",
            "Exports data from a Cloud SQL instance to a Cloud Storage bucket.",
            "Creates a new Cloud SQL instance.",
            "Updates the settings of a Cloud SQL instance.",
            "Deletes a Cloud SQL instance.",
            "Restarts the Cloud SQL instance.",
            "",
            "",
            "Performs instance backup.",
            "Deletes an instance backup.",
            "Restores an instance backup.",
            "Injects a privileged user in mysql for MOB instances.",
            "Clones a Cloud SQL instance.",
            "Stops replication on a Cloud SQL read replica instance.",
            "Starts replication on a Cloud SQL read replica instance.",
            "Promotes a Cloud SQL replica instance.",
            "Creates a Cloud SQL replica instance.",
            "Creates a new user in a Cloud SQL instance.",
            "Deletes a user from a Cloud SQL instance.",
            "Updates an existing user in a Cloud SQL instance.",
            "Creates a database in the Cloud SQL instance.",
            "Deletes a database in the Cloud SQL instance.",
            "Updates a database in the Cloud SQL instance.",
            "Performs failover of an HA-enabled Cloud SQL failover replica.",
            "Deletes the backup taken by a backup run.",
            "",
            "Truncates a general or slow log table in MySQL.",
            "Demotes the stand-alone instance to be a Cloud SQL read replica for an external database server.",
            "Indicates that the instance is currently in maintenance. Maintenance typically causes the instance to be unavailable for 1-3 minutes.",
            "This field is deprecated, and will be removed in future version of API.",
            "",
            "Creates clone instance.",
            "Reschedule maintenance to another time.",
            "Starts external sync of a Cloud SQL EM replica to an external primary instance.",
            "Recovers logs from an instance's old data disk.",
            "Performs auto-restart of an HA-enabled Cloud SQL database for auto recovery.",
          },
          type = "string",
        },
        selfLink = {
          description = "The URI of this resource.",
          type = "string",
        },
        startTime = {
          description = "The time this operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          description = "The status of an operation.",
          enum = {
            "SQL_OPERATION_STATUS_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "The state of the operation is unknown.",
            "The operation has been queued, but has not started yet.",
            "The operation is running.",
            "The operation completed.",
          },
          type = "string",
        },
        targetId = {
          description = "Name of the database instance related to this operation.",
          type = "string",
        },
        targetLink = {
          type = "string",
        },
        targetProject = {
          description = "The project ID of the target instance related to this operation.",
          type = "string",
        },
        user = {
          description = "The email address of the user who initiated this operation.",
          type = "string",
        },
      },
      type = "object",
    },
    OperationError = {
      description = "Database instance operation error.",
      id = "OperationError",
      properties = {
        code = {
          description = "Identifies the specific error that occurred.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#operationError`.",
          type = "string",
        },
        message = {
          description = "Additional information about the error encountered.",
          type = "string",
        },
      },
      type = "object",
    },
    OperationErrors = {
      description = "Database instance operation errors list wrapper.",
      id = "OperationErrors",
      properties = {
        errors = {
          description = "The list of errors encountered while processing this operation.",
          items = {
            ["$ref"] = "OperationError",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#operationErrors`.",
          type = "string",
        },
      },
      type = "object",
    },
    OperationsListResponse = {
      description = "Operations list response.",
      id = "OperationsListResponse",
      properties = {
        items = {
          description = "List of operation resources.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#operationsList`.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    PasswordStatus = {
      description = "Read-only password status.",
      id = "PasswordStatus",
      properties = {
        locked = {
          description = "If true, user does not have login privileges.",
          type = "boolean",
        },
        passwordExpirationTime = {
          description = "The expiration time of the current password.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PasswordValidationPolicy = {
      description = "Database instance local user password validation policy",
      id = "PasswordValidationPolicy",
      properties = {
        complexity = {
          description = "The complexity of the password.",
          enum = {
            "COMPLEXITY_UNSPECIFIED",
            "COMPLEXITY_DEFAULT",
          },
          enumDescriptions = {
            "Complexity check is not specified.",
            "A combination of lowercase, uppercase, numeric, and non-alphanumeric characters.",
          },
          type = "string",
        },
        disallowUsernameSubstring = {
          description = "Disallow username as a part of the password.",
          type = "boolean",
        },
        enablePasswordPolicy = {
          description = "Whether the password policy is enabled or not.",
          type = "boolean",
        },
        minLength = {
          description = "Minimum number of characters allowed.",
          format = "int32",
          type = "integer",
        },
        passwordChangeInterval = {
          description = "Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.",
          format = "google-duration",
          type = "string",
        },
        reuseInterval = {
          description = "Number of previous passwords that cannot be reused.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReplicaConfiguration = {
      description = "Read-replica configuration for connecting to the primary instance.",
      id = "ReplicaConfiguration",
      properties = {
        failoverTarget = {
          description = "Specifies if the replica is the failover target. If the field is set to `true`, the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.",
          type = "boolean",
        },
        kind = {
          description = "This is always `sql#replicaConfiguration`.",
          type = "string",
        },
        mysqlReplicaConfiguration = {
          ["$ref"] = "MySqlReplicaConfiguration",
          description = "MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.",
        },
      },
      type = "object",
    },
    Reschedule = {
      id = "Reschedule",
      properties = {
        rescheduleType = {
          description = "Required. The type of the reschedule.",
          enum = {
            "RESCHEDULE_TYPE_UNSPECIFIED",
            "IMMEDIATE",
            "NEXT_AVAILABLE_WINDOW",
            "SPECIFIC_TIME",
          },
          enumDescriptions = {
            "",
            "Reschedules maintenance to happen now (within 5 minutes).",
            "Reschedules maintenance to occur within one week from the originally scheduled day and time.",
            "Reschedules maintenance to a specific time and day.",
          },
          type = "string",
        },
        scheduleTime = {
          description = "Optional. Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME, in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreBackupContext = {
      description = "Database instance restore from backup context. Backup context contains source instance id and project id.",
      id = "RestoreBackupContext",
      properties = {
        backupRunId = {
          description = "The ID of the backup run to restore from.",
          format = "int64",
          type = "string",
        },
        instanceId = {
          description = "The ID of the instance that the backup was taken from.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#restoreBackupContext`.",
          type = "string",
        },
        project = {
          description = "The full project ID of the source instance.",
          type = "string",
        },
      },
      type = "object",
    },
    RotateServerCaContext = {
      description = "Instance rotate server CA context.",
      id = "RotateServerCaContext",
      properties = {
        kind = {
          description = "This is always `sql#rotateServerCaContext`.",
          type = "string",
        },
        nextVersion = {
          description = "The fingerprint of the next version to be rotated to. If left unspecified, will be rotated to the most recently added server CA version.",
          type = "string",
        },
      },
      type = "object",
    },
    Settings = {
      description = "Database instance settings.",
      id = "Settings",
      properties = {
        activationPolicy = {
          description = "The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.",
          enum = {
            "SQL_ACTIVATION_POLICY_UNSPECIFIED",
            "ALWAYS",
            "NEVER",
            "ON_DEMAND",
          },
          enumDescriptions = {
            "Unknown activation plan.",
            "The instance is always up and running.",
            "The instance never starts.",
            "The instance starts upon receiving requests.",
          },
          type = "string",
        },
        activeDirectoryConfig = {
          ["$ref"] = "SqlActiveDirectoryConfig",
          description = "Active Directory configuration, relevant only for Cloud SQL for SQL Server.",
        },
        authorizedGaeApplications = {
          description = "The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        availabilityType = {
          description = "Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).",
          enum = {
            "SQL_AVAILABILITY_TYPE_UNSPECIFIED",
            "ZONAL",
            "REGIONAL",
          },
          enumDescriptions = {
            "This is an unknown Availability type.",
            "Zonal available instance.",
            "Regional available instance.",
          },
          type = "string",
        },
        backupConfiguration = {
          ["$ref"] = "BackupConfiguration",
          description = "The daily backup configuration for the instance.",
        },
        collation = {
          description = "The name of server Instance collation.",
          type = "string",
        },
        connectorEnforcement = {
          description = "Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.",
          enum = {
            "CONNECTOR_ENFORCEMENT_UNSPECIFIED",
            "NOT_REQUIRED",
            "REQUIRED",
          },
          enumDescriptions = {
            "The requirement for Cloud SQL connectors is unknown.",
            "Do not require Cloud SQL connectors.",
            "Require all connections to use Cloud SQL connectors, including the Cloud SQL Auth Proxy and Cloud SQL Java, Python, and Go connectors. Note: This disables all existing authorized networks.",
          },
          type = "string",
        },
        crashSafeReplicationEnabled = {
          description = "Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.",
          type = "boolean",
        },
        dataDiskSizeGb = {
          description = "The size of data disk, in GB. The data disk size minimum is 10GB.",
          format = "int64",
          type = "string",
        },
        dataDiskType = {
          description = "The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.",
          enum = {
            "SQL_DATA_DISK_TYPE_UNSPECIFIED",
            "PD_SSD",
            "PD_HDD",
            "OBSOLETE_LOCAL_SSD",
          },
          enumDescriptions = {
            "This is an unknown data disk type.",
            "An SSD data disk.",
            "An HDD data disk.",
            "This field is deprecated and will be removed from a future version of the API.",
          },
          type = "string",
        },
        databaseFlags = {
          description = "The database flags passed to the instance at startup.",
          items = {
            ["$ref"] = "DatabaseFlags",
          },
          type = "array",
        },
        databaseReplicationEnabled = {
          description = "Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.",
          type = "boolean",
        },
        deletionProtectionEnabled = {
          description = "Configuration to protect against accidental instance deletion.",
          type = "boolean",
        },
        denyMaintenancePeriods = {
          description = "Deny maintenance periods",
          items = {
            ["$ref"] = "DenyMaintenancePeriod",
          },
          type = "array",
        },
        insightsConfig = {
          ["$ref"] = "InsightsConfig",
          description = "Insights configuration, for now relevant only for Postgres.",
        },
        ipConfiguration = {
          ["$ref"] = "IpConfiguration",
          description = "The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.",
        },
        kind = {
          description = "This is always `sql#settings`.",
          type = "string",
        },
        locationPreference = {
          ["$ref"] = "LocationPreference",
          description = "The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.",
        },
        maintenanceWindow = {
          ["$ref"] = "MaintenanceWindow",
          description = "The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.",
        },
        passwordValidationPolicy = {
          ["$ref"] = "PasswordValidationPolicy",
          description = "The local user password validation policy of the instance.",
        },
        pricingPlan = {
          description = "The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.",
          enum = {
            "SQL_PRICING_PLAN_UNSPECIFIED",
            "PACKAGE",
            "PER_USE",
          },
          enumDescriptions = {
            "This is an unknown pricing plan for this instance.",
            "The instance is billed at a monthly flat rate.",
            "The instance is billed per usage.",
          },
          type = "string",
        },
        replicationType = {
          description = "The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.",
          enum = {
            "SQL_REPLICATION_TYPE_UNSPECIFIED",
            "SYNCHRONOUS",
            "ASYNCHRONOUS",
          },
          enumDescriptions = {
            "This is an unknown replication type for a Cloud SQL instance.",
            "The synchronous replication mode for First Generation instances. It is the default value.",
            "The asynchronous replication mode for First Generation instances. It provides a slight performance gain, but if an outage occurs while this option is set to asynchronous, you can lose up to a few seconds of updates to your data.",
          },
          type = "string",
        },
        settingsVersion = {
          description = "The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.",
          format = "int64",
          type = "string",
        },
        sqlServerAuditConfig = {
          ["$ref"] = "SqlServerAuditConfig",
          description = "SQL Server specific audit configuration.",
        },
        storageAutoResize = {
          description = "Configuration to increase storage size automatically. The default value is true.",
          type = "boolean",
        },
        storageAutoResizeLimit = {
          description = "The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.",
          format = "int64",
          type = "string",
        },
        tier = {
          description = "The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.",
          type = "string",
        },
        timeZone = {
          description = "Server timezone, relevant only for Cloud SQL for SQL Server.",
          type = "string",
        },
        userLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-provided labels, represented as a dictionary where each label is a single key value pair.",
          type = "object",
        },
      },
      type = "object",
    },
    SqlActiveDirectoryConfig = {
      description = "Active Directory configuration, relevant only for Cloud SQL for SQL Server.",
      id = "SqlActiveDirectoryConfig",
      properties = {
        domain = {
          description = "The name of the domain (e.g., mydomain.com).",
          type = "string",
        },
        kind = {
          description = "This is always sql#activeDirectoryConfig.",
          type = "string",
        },
      },
      type = "object",
    },
    SqlExternalSyncSettingError = {
      description = "External primary instance migration setting error/warning.",
      id = "SqlExternalSyncSettingError",
      properties = {
        detail = {
          description = "Additional information about the error encountered.",
          type = "string",
        },
        kind = {
          description = "Can be `sql#externalSyncSettingError` or `sql#externalSyncSettingWarning`.",
          type = "string",
        },
        type = {
          description = "Identifies the specific error that occurred.",
          enum = {
            "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED",
            "CONNECTION_FAILURE",
            "BINLOG_NOT_ENABLED",
            "INCOMPATIBLE_DATABASE_VERSION",
            "REPLICA_ALREADY_SETUP",
            "INSUFFICIENT_PRIVILEGE",
            "UNSUPPORTED_MIGRATION_TYPE",
            "NO_PGLOGICAL_INSTALLED",
            "PGLOGICAL_NODE_ALREADY_EXISTS",
            "INVALID_WAL_LEVEL",
            "INVALID_SHARED_PRELOAD_LIBRARY",
            "INSUFFICIENT_MAX_REPLICATION_SLOTS",
            "INSUFFICIENT_MAX_WAL_SENDERS",
            "INSUFFICIENT_MAX_WORKER_PROCESSES",
            "UNSUPPORTED_EXTENSIONS",
            "INVALID_RDS_LOGICAL_REPLICATION",
            "INVALID_LOGGING_SETUP",
            "INVALID_DB_PARAM",
            "UNSUPPORTED_GTID_MODE",
            "SQLSERVER_AGENT_NOT_RUNNING",
            "UNSUPPORTED_TABLE_DEFINITION",
            "UNSUPPORTED_DEFINER",
            "SQLSERVER_SERVERNAME_MISMATCH",
            "PRIMARY_ALREADY_SETUP",
            "UNSUPPORTED_BINLOG_FORMAT",
            "BINLOG_RETENTION_SETTING",
            "UNSUPPORTED_STORAGE_ENGINE",
            "LIMITED_SUPPORT_TABLES",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "Unsupported migration type.",
            "No pglogical extension installed on databases, applicable for postgres.",
            "pglogical node already exists on databases, applicable for postgres.",
            "The value of parameter wal_level is not set to logical.",
            "The value of parameter shared_preload_libraries does not include pglogical.",
            "The value of parameter max_replication_slots is not sufficient.",
            "The value of parameter max_wal_senders is not sufficient.",
            "The value of parameter max_worker_processes is not sufficient.",
            "Extensions installed are either not supported or having unsupported versions",
            "The value of parameter rds.logical_replication is not set to 1.",
            "The primary instance logging setup doesn't allow EM sync.",
            "The primary instance database parameter setup doesn't allow EM sync.",
            "The gtid_mode is not supported, applicable for MySQL.",
            "SQL Server Agent is not running.",
            "The table definition is not support due to missing primary key or replica identity, applicable for postgres.",
            "The customer has a definer that will break EM setup.",
            "SQL Server @@SERVERNAME does not match actual host name",
            "The primary instance has been setup and will fail the setup.",
            "The primary instance has unsupported binary log format.",
            "The primary instance's binary log retention setting.",
            "The primary instance has tables with unsupported storage engine.",
            "Source has tables with limited support eg: PostgreSQL tables without primary keys",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SqlInstancesRescheduleMaintenanceRequestBody = {
      description = "Reschedule options for maintenance windows.",
      id = "SqlInstancesRescheduleMaintenanceRequestBody",
      properties = {
        reschedule = {
          ["$ref"] = "Reschedule",
          description = "Required. The type of the reschedule the user wants.",
        },
      },
      type = "object",
    },
    SqlInstancesStartExternalSyncRequest = {
      description = "Instance start external sync request.",
      id = "SqlInstancesStartExternalSyncRequest",
      properties = {
        mysqlSyncConfig = {
          ["$ref"] = "MySqlSyncConfig",
          description = "MySQL-specific settings for start external sync.",
        },
        skipVerification = {
          description = "Whether to skip the verification step (VESS).",
          type = "boolean",
        },
        syncMode = {
          description = "External sync mode.",
          enum = {
            "EXTERNAL_SYNC_MODE_UNSPECIFIED",
            "ONLINE",
            "OFFLINE",
          },
          enumDescriptions = {
            "Unknown external sync mode, will be defaulted to ONLINE mode",
            "Online external sync will set up replication after initial data external sync",
            "Offline external sync only dumps and loads a one-time snapshot of the primary instance's data",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SqlInstancesVerifyExternalSyncSettingsRequest = {
      description = "Instance verify external sync settings request.",
      id = "SqlInstancesVerifyExternalSyncSettingsRequest",
      properties = {
        mysqlSyncConfig = {
          ["$ref"] = "MySqlSyncConfig",
          description = "Optional. MySQL-specific settings for start external sync.",
        },
        syncMode = {
          description = "External sync mode",
          enum = {
            "EXTERNAL_SYNC_MODE_UNSPECIFIED",
            "ONLINE",
            "OFFLINE",
          },
          enumDescriptions = {
            "Unknown external sync mode, will be defaulted to ONLINE mode",
            "Online external sync will set up replication after initial data external sync",
            "Offline external sync only dumps and loads a one-time snapshot of the primary instance's data",
          },
          type = "string",
        },
        verifyConnectionOnly = {
          description = "Flag to enable verifying connection only",
          type = "boolean",
        },
        verifyReplicationOnly = {
          description = "Optional. Flag to verify settings required by replication setup only",
          type = "boolean",
        },
      },
      type = "object",
    },
    SqlInstancesVerifyExternalSyncSettingsResponse = {
      description = "Instance verify external sync settings response.",
      id = "SqlInstancesVerifyExternalSyncSettingsResponse",
      properties = {
        errors = {
          description = "List of migration violations.",
          items = {
            ["$ref"] = "SqlExternalSyncSettingError",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#migrationSettingErrorList`.",
          type = "string",
        },
        warnings = {
          description = "List of migration warnings.",
          items = {
            ["$ref"] = "SqlExternalSyncSettingError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SqlOutOfDiskReport = {
      description = "This message wraps up the information written by out-of-disk detection job.",
      id = "SqlOutOfDiskReport",
      properties = {
        sqlMinRecommendedIncreaseSizeGb = {
          description = "The minimum recommended increase size in GigaBytes This field is consumed by the frontend * Writers: * the proactive database wellness job for OOD. * Readers:",
          format = "int32",
          type = "integer",
        },
        sqlOutOfDiskState = {
          description = "This field represents the state generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job",
          enum = {
            "SQL_OUT_OF_DISK_STATE_UNSPECIFIED",
            "NORMAL",
            "SOFT_SHUTDOWN",
          },
          enumDescriptions = {
            "Unspecified state",
            "The instance has plenty space on data disk",
            "Data disk is almost used up. It is shutdown to prevent data corruption.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SqlScheduledMaintenance = {
      description = "Any scheduled maintenance for this instance.",
      id = "SqlScheduledMaintenance",
      properties = {
        canDefer = {
          type = "boolean",
        },
        canReschedule = {
          description = "If the scheduled maintenance can be rescheduled.",
          type = "boolean",
        },
        scheduleDeadlineTime = {
          description = "Maintenance cannot be rescheduled to start beyond this deadline.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start time of any upcoming scheduled maintenance for this instance.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SqlServerAuditConfig = {
      description = "SQL Server specific audit configuration.",
      id = "SqlServerAuditConfig",
      properties = {
        bucket = {
          description = "The name of the destination bucket (e.g., gs://mybucket).",
          type = "string",
        },
        kind = {
          description = "This is always sql#sqlServerAuditConfig",
          type = "string",
        },
        retentionInterval = {
          description = "How long to keep generated audit files.",
          format = "google-duration",
          type = "string",
        },
        uploadInterval = {
          description = "How often to upload generated audit files.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    SqlServerDatabaseDetails = {
      description = "Represents a Sql Server database on the Cloud SQL instance.",
      id = "SqlServerDatabaseDetails",
      properties = {
        compatibilityLevel = {
          description = "The version of SQL Server with which the database is to be made compatible",
          format = "int32",
          type = "integer",
        },
        recoveryModel = {
          description = "The recovery model of a SQL Server database",
          type = "string",
        },
      },
      type = "object",
    },
    SqlServerUserDetails = {
      description = "Represents a Sql Server user on the Cloud SQL instance.",
      id = "SqlServerUserDetails",
      properties = {
        disabled = {
          description = "If the user has been disabled",
          type = "boolean",
        },
        serverRoles = {
          description = "The server roles for this user",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SslCert = {
      description = "SslCerts Resource",
      id = "SslCert",
      properties = {
        cert = {
          description = "PEM representation.",
          type = "string",
        },
        certSerialNumber = {
          description = "Serial number, as extracted from the certificate.",
          type = "string",
        },
        commonName = {
          description = "User supplied name. Constrained to [a-zA-Z.-_ ]+.",
          type = "string",
        },
        createTime = {
          description = "The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`",
          format = "google-datetime",
          type = "string",
        },
        expirationTime = {
          description = "The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.",
          format = "google-datetime",
          type = "string",
        },
        instance = {
          description = "Name of the database instance.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#sslCert`.",
          type = "string",
        },
        selfLink = {
          description = "The URI of this resource.",
          type = "string",
        },
        sha1Fingerprint = {
          description = "Sha1 Fingerprint.",
          type = "string",
        },
      },
      type = "object",
    },
    SslCertDetail = {
      description = "SslCertDetail.",
      id = "SslCertDetail",
      properties = {
        certInfo = {
          ["$ref"] = "SslCert",
          description = "The public information about the cert.",
        },
        certPrivateKey = {
          description = "The private key for the client cert, in pem format. Keep private in order to protect your security.",
          type = "string",
        },
      },
      type = "object",
    },
    SslCertsCreateEphemeralRequest = {
      description = "SslCerts create ephemeral certificate request.",
      id = "SslCertsCreateEphemeralRequest",
      properties = {
        access_token = {
          description = "Access token to include in the signed certificate.",
          type = "string",
        },
        public_key = {
          description = "PEM encoded public key to include in the signed certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    SslCertsInsertRequest = {
      description = "SslCerts insert request.",
      id = "SslCertsInsertRequest",
      properties = {
        commonName = {
          description = "User supplied name. Must be a distinct name from the other certificates for this instance.",
          type = "string",
        },
      },
      type = "object",
    },
    SslCertsInsertResponse = {
      description = "SslCert insert response.",
      id = "SslCertsInsertResponse",
      properties = {
        clientCert = {
          ["$ref"] = "SslCertDetail",
          description = "The new client certificate and private key.",
        },
        kind = {
          description = "This is always `sql#sslCertsInsert`.",
          type = "string",
        },
        operation = {
          ["$ref"] = "Operation",
          description = "The operation to track the ssl certs insert request.",
        },
        serverCaCert = {
          ["$ref"] = "SslCert",
          description = "The server Certificate Authority's certificate. If this is missing you can force a new one to be generated by calling resetSslConfig method on instances resource.",
        },
      },
      type = "object",
    },
    SslCertsListResponse = {
      description = "SslCerts list response.",
      id = "SslCertsListResponse",
      properties = {
        items = {
          description = "List of client certificates for the instance.",
          items = {
            ["$ref"] = "SslCert",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#sslCertsList`.",
          type = "string",
        },
      },
      type = "object",
    },
    SyncFlags = {
      description = "Initial sync flags for certain Cloud SQL APIs. Currently used for the MySQL external server initial dump.",
      id = "SyncFlags",
      properties = {
        name = {
          description = "The name of the flag.",
          type = "string",
        },
        value = {
          description = "The value of the flag. This field must be omitted if the flag doesn't take a value.",
          type = "string",
        },
      },
      type = "object",
    },
    Tier = {
      description = "A Google Cloud SQL service tier resource.",
      id = "Tier",
      properties = {
        DiskQuota = {
          description = "The maximum disk size of this tier in bytes.",
          format = "int64",
          type = "string",
        },
        RAM = {
          description = "The maximum RAM usage of this tier in bytes.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "This is always `sql#tier`.",
          type = "string",
        },
        region = {
          description = "The applicable regions for this tier.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tier = {
          description = "An identifier for the machine type, for example, `db-custom-1-3840`. For related information, see [Pricing](/sql/pricing).",
          type = "string",
        },
      },
      type = "object",
    },
    TiersListResponse = {
      description = "Tiers list response.",
      id = "TiersListResponse",
      properties = {
        items = {
          description = "List of tiers.",
          items = {
            ["$ref"] = "Tier",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#tiersList`.",
          type = "string",
        },
      },
      type = "object",
    },
    TruncateLogContext = {
      description = "Database Instance truncate log context.",
      id = "TruncateLogContext",
      properties = {
        kind = {
          description = "This is always `sql#truncateLogContext`.",
          type = "string",
        },
        logType = {
          description = "The type of log to truncate. Valid values are `MYSQL_GENERAL_TABLE` and `MYSQL_SLOW_TABLE`.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "A Cloud SQL user resource.",
      id = "User",
      properties = {
        dualPasswordType = {
          description = "Dual password status for the user.",
          enum = {
            "DUAL_PASSWORD_TYPE_UNSPECIFIED",
            "NO_MODIFY_DUAL_PASSWORD",
            "NO_DUAL_PASSWORD",
            "DUAL_PASSWORD",
          },
          enumDescriptions = {
            "The default value.",
            "Do not update the user's dual password status.",
            "No dual password usable for connecting using this user.",
            "Dual password usable for connecting using this user.",
          },
          type = "string",
        },
        etag = {
          description = "This field is deprecated and will be removed from a future version of the API.",
          type = "string",
        },
        host = {
          description = "Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.",
          type = "string",
        },
        instance = {
          description = "The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.",
          type = "string",
        },
        kind = {
          description = "This is always `sql#user`.",
          type = "string",
        },
        name = {
          description = "The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.",
          type = "string",
        },
        password = {
          description = "The password for the user.",
          type = "string",
        },
        passwordPolicy = {
          ["$ref"] = "UserPasswordValidationPolicy",
          description = "User level password validation policy.",
        },
        project = {
          description = "The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.",
          type = "string",
        },
        sqlserverUserDetails = {
          ["$ref"] = "SqlServerUserDetails",
        },
        type = {
          description = "The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.",
          enum = {
            "BUILT_IN",
            "CLOUD_IAM_USER",
            "CLOUD_IAM_SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "The database's built-in user type.",
            "Cloud IAM user.",
            "Cloud IAM service account.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserPasswordValidationPolicy = {
      description = "User level password validation policy.",
      id = "UserPasswordValidationPolicy",
      properties = {
        allowedFailedAttempts = {
          description = "Number of failed login attempts allowed before user get locked.",
          format = "int32",
          type = "integer",
        },
        enableFailedAttemptsCheck = {
          description = "If true, failed login attempts check will be enabled.",
          type = "boolean",
        },
        enablePasswordVerification = {
          description = "If true, the user must specify the current password before changing the password. This flag is supported only for MySQL.",
          type = "boolean",
        },
        passwordExpirationDuration = {
          description = "Expiration duration after password is updated.",
          format = "google-duration",
          type = "string",
        },
        status = {
          ["$ref"] = "PasswordStatus",
          description = "Output only. Read-only password status.",
          readOnly = true,
        },
      },
      type = "object",
    },
    UsersListResponse = {
      description = "User list response.",
      id = "UsersListResponse",
      properties = {
        items = {
          description = "List of user resources in the instance.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        kind = {
          description = "This is always `sql#usersList`.",
          type = "string",
        },
        nextPageToken = {
          description = "An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud SQL Admin API",
  version = "v1",
}