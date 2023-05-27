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
  baseUrl = "https://container.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Container",
  description = "Builds and manages container-based applications, powered by the open source Kubernetes technology.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/container-engine/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "container:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://container.mtls.googleapis.com/",
  name = "container",
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
        aggregated = {
          resources = {
            usableSubnetworks = {
              methods = {
                list = {
                  description = "Lists subnetworks that are usable for creating clusters in a project.",
                  flatPath = "v1/projects/{projectsId}/aggregated/usableSubnetworks",
                  httpMethod = "GET",
                  id = "container.projects.aggregated.usableSubnetworks.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filtering currently only supports equality on the networkProjectId and must be in the form: \"networkProjectId=[PROJECTID]\", where `networkProjectId` is the project which owns the listed subnetworks. This defaults to the parent project ID.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The max number of results per page that should be returned. If the number of available results is larger than `page_size`, a `next_page_token` is returned which can be used to get the next page of results in subsequent requests. Acceptable values are 0 to 500, inclusive. (Default: 500)",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Specifies a page token to use. Set this to the nextPageToken returned by previous list requests to get the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent project where subnetworks are usable. Specified in the format `projects/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/aggregated/usableSubnetworks",
                  response = {
                    ["$ref"] = "ListUsableSubnetworksResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        locations = {
          methods = {
            getServerConfig = {
              description = "Returns configuration info about the Google Kubernetes Engine service.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serverConfig",
              httpMethod = "GET",
              id = "container.projects.locations.getServerConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name (project and location) of the server config to get, specified in the format `projects/*/locations/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                  location = "query",
                  type = "string",
                },
                zone = {
                  description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to return operations for. This field has been deprecated and replaced by the name field.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/serverConfig",
              response = {
                ["$ref"] = "ServerConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            clusters = {
              methods = {
                completeIpRotation = {
                  description = "Completes master IP rotation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:completeIpRotation",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.completeIpRotation",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:completeIpRotation",
                  request = {
                    ["$ref"] = "CompleteIPRotationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clusters",
                  request = {
                    ["$ref"] = "CreateClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren't present when the cluster was initially created.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}",
                  httpMethod = "DELETE",
                  id = "container.projects.locations.clusters.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name (project, location, cluster) of the cluster to delete. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
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
                  description = "Gets the details of a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}",
                  httpMethod = "GET",
                  id = "container.projects.locations.clusters.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to retrieve. This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name (project, location, cluster) of the cluster to retrieve. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Cluster",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getJwks = {
                  description = "Gets the public component of the cluster signing keys in JSON Web Key format. This API is not yet intended for general use, and is not available for all clusters.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/jwks",
                  httpMethod = "GET",
                  id = "container.projects.locations.clusters.getJwks",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The cluster (project, location, cluster name) to get keys for. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jwks",
                  response = {
                    ["$ref"] = "GetJSONWebKeysResponse",
                  },
                },
                list = {
                  description = "Lists all clusters owned by a project in either the specified zone or all zones.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters",
                  httpMethod = "GET",
                  id = "container.projects.locations.clusters.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The parent (project and location) where the clusters will be listed. Specified in the format `projects/*/locations/*`. Location \"-\" matches all zones and all regions.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                      location = "query",
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides, or \"-\" for all zones. This field has been deprecated and replaced by the parent field.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/clusters",
                  response = {
                    ["$ref"] = "ListClustersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setAddons = {
                  description = "Sets the addons for a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setAddons",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setAddons",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to set addons. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setAddons",
                  request = {
                    ["$ref"] = "SetAddonsConfigRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setLegacyAbac = {
                  description = "Enables or disables the ABAC authorization mechanism on a cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setLegacyAbac",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setLegacyAbac",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setLegacyAbac",
                  request = {
                    ["$ref"] = "SetLegacyAbacRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setLocations = {
                  description = "Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update) instead.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setLocations",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setLocations",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to set locations. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setLocations",
                  request = {
                    ["$ref"] = "SetLocationsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setLogging = {
                  description = "Sets the logging service for a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setLogging",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setLogging",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to set logging. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setLogging",
                  request = {
                    ["$ref"] = "SetLoggingServiceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMaintenancePolicy = {
                  description = "Sets the maintenance policy for a cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setMaintenancePolicy",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setMaintenancePolicy",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to set maintenance policy. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMaintenancePolicy",
                  request = {
                    ["$ref"] = "SetMaintenancePolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMasterAuth = {
                  description = "Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setMasterAuth",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setMasterAuth",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to set auth. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMasterAuth",
                  request = {
                    ["$ref"] = "SetMasterAuthRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMonitoring = {
                  description = "Sets the monitoring service for a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setMonitoring",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setMonitoring",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to set monitoring. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMonitoring",
                  request = {
                    ["$ref"] = "SetMonitoringServiceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setNetworkPolicy = {
                  description = "Enables or disables Network Policy for a cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setNetworkPolicy",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setNetworkPolicy",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setNetworkPolicy",
                  request = {
                    ["$ref"] = "SetNetworkPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setResourceLabels = {
                  description = "Sets labels on a cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:setResourceLabels",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.setResourceLabels",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to set labels. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setResourceLabels",
                  request = {
                    ["$ref"] = "SetLabelsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                startIpRotation = {
                  description = "Starts master IP rotation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:startIpRotation",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.startIpRotation",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:startIpRotation",
                  request = {
                    ["$ref"] = "StartIPRotationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates the settings of a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}",
                  httpMethod = "PUT",
                  id = "container.projects.locations.clusters.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "UpdateClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateMaster = {
                  description = "Updates the master for a specific cluster.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}:updateMaster",
                  httpMethod = "POST",
                  id = "container.projects.locations.clusters.updateMaster",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:updateMaster",
                  request = {
                    ["$ref"] = "UpdateMasterRequest",
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
                nodePools = {
                  methods = {
                    completeUpgrade = {
                      description = "CompleteNodePoolUpgrade will signal an on-going node pool upgrade to complete.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}:completeUpgrade",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.completeUpgrade",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to complete upgrade. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:completeUpgrade",
                      request = {
                        ["$ref"] = "CompleteNodePoolUpgradeRequest",
                      },
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a node pool for a cluster.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/nodePools",
                      request = {
                        ["$ref"] = "CreateNodePoolRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a node pool from a cluster.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}",
                      httpMethod = "DELETE",
                      id = "container.projects.locations.clusters.nodePools.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to delete. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to delete. This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
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
                      description = "Retrieves the requested node pool.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}",
                      httpMethod = "GET",
                      id = "container.projects.locations.clusters.nodePools.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool. This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "NodePool",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the node pools for a cluster.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools",
                      httpMethod = "GET",
                      id = "container.projects.locations.clusters.nodePools.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The parent (project, location, cluster name) where the node pools will be listed. Specified in the format `projects/*/locations/*/clusters/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                          location = "query",
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/nodePools",
                      response = {
                        ["$ref"] = "ListNodePoolsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    rollback = {
                      description = "Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}:rollback",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.rollback",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:rollback",
                      request = {
                        ["$ref"] = "RollbackNodePoolUpgradeRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setAutoscaling = {
                      description = "Sets the autoscaling settings for the specified node pool.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}:setAutoscaling",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.setAutoscaling",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool) of the node pool to set autoscaler settings. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:setAutoscaling",
                      request = {
                        ["$ref"] = "SetNodePoolAutoscalingRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setManagement = {
                      description = "Sets the NodeManagement options for a node pool.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}:setManagement",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.setManagement",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:setManagement",
                      request = {
                        ["$ref"] = "SetNodePoolManagementRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setSize = {
                      description = "Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}:setSize",
                      httpMethod = "POST",
                      id = "container.projects.locations.clusters.nodePools.setSize",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:setSize",
                      request = {
                        ["$ref"] = "SetNodePoolSizeRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    update = {
                      description = "Updates the version and/or image type for the specified node pool.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/nodePools/{nodePoolsId}",
                      httpMethod = "PUT",
                      id = "container.projects.locations.clusters.nodePools.update",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name (project, location, cluster, node pool) of the node pool to update. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+/nodePools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "UpdateNodePoolRequest",
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
                ["well-known"] = {
                  methods = {
                    ["getOpenid-configuration"] = {
                      description = "Gets the OIDC discovery document for the cluster. See the [OpenID Connect Discovery 1.0 specification](https://openid.net/specs/openid-connect-discovery-1_0.html) for details. This API is not yet intended for general use, and is not available for all clusters.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/clusters/{clustersId}/.well-known/openid-configuration",
                      httpMethod = "GET",
                      id = "container.projects.locations.clusters.well-known.getOpenid-configuration",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The cluster (project, location, cluster name) to get the discovery document for. Specified in the format `projects/*/locations/*/clusters/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/clusters/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/.well-known/openid-configuration",
                      response = {
                        ["$ref"] = "GetOpenIDConfigResponse",
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Cancels the specified operation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "container.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, operation id) of the operation to cancel. Specified in the format `projects/*/locations/*/operations/*`.",
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
                get = {
                  description = "Gets the specified operation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "container.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, operation id) of the operation to get. Specified in the format `projects/*/locations/*/operations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    operationId = {
                      description = "Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "query",
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
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
                list = {
                  description = "Lists all operations in a project in a specific zone or all zones.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "container.projects.locations.operations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The parent (project and location) where the operations will be listed. Specified in the format `projects/*/locations/*`. Location \"-\" matches all zones and all regions.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                      location = "query",
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to return operations for, or `-` for all zones. This field has been deprecated and replaced by the parent field.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        zones = {
          methods = {
            getServerconfig = {
              description = "Returns configuration info about the Google Kubernetes Engine service.",
              flatPath = "v1/projects/{projectId}/zones/{zone}/serverconfig",
              httpMethod = "GET",
              id = "container.projects.zones.getServerconfig",
              parameterOrder = {
                "projectId",
                "zone",
              },
              parameters = {
                name = {
                  description = "The name (project and location) of the server config to get, specified in the format `projects/*/locations/*`.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                zone = {
                  description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to return operations for. This field has been deprecated and replaced by the name field.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/zones/{zone}/serverconfig",
              response = {
                ["$ref"] = "ServerConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            clusters = {
              methods = {
                addons = {
                  description = "Sets the addons for a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/addons",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.addons",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/addons",
                  request = {
                    ["$ref"] = "SetAddonsConfigRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                completeIpRotation = {
                  description = "Completes master IP rotation.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:completeIpRotation",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.completeIpRotation",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:completeIpRotation",
                  request = {
                    ["$ref"] = "CompleteIPRotationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.create",
                  parameterOrder = {
                    "projectId",
                    "zone",
                  },
                  parameters = {
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters",
                  request = {
                    ["$ref"] = "CreateClusterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren't present when the cluster was initially created.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  httpMethod = "DELETE",
                  id = "container.projects.zones.clusters.delete",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    name = {
                      description = "The name (project, location, cluster) of the cluster to delete. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  httpMethod = "GET",
                  id = "container.projects.zones.clusters.get",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to retrieve. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    name = {
                      description = "The name (project, location, cluster) of the cluster to retrieve. Specified in the format `projects/*/locations/*/clusters/*`.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  response = {
                    ["$ref"] = "Cluster",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                legacyAbac = {
                  description = "Enables or disables the ABAC authorization mechanism on a cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/legacyAbac",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.legacyAbac",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/legacyAbac",
                  request = {
                    ["$ref"] = "SetLegacyAbacRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all clusters owned by a project in either the specified zone or all zones.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters",
                  httpMethod = "GET",
                  id = "container.projects.zones.clusters.list",
                  parameterOrder = {
                    "projectId",
                    "zone",
                  },
                  parameters = {
                    parent = {
                      description = "The parent (project and location) where the clusters will be listed. Specified in the format `projects/*/locations/*`. Location \"-\" matches all zones and all regions.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides, or \"-\" for all zones. This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters",
                  response = {
                    ["$ref"] = "ListClustersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                locations = {
                  description = "Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update) instead.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/locations",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.locations",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/locations",
                  request = {
                    ["$ref"] = "SetLocationsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                logging = {
                  description = "Sets the logging service for a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/logging",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.logging",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/logging",
                  request = {
                    ["$ref"] = "SetLoggingServiceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                master = {
                  description = "Updates the master for a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/master",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.master",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/master",
                  request = {
                    ["$ref"] = "UpdateMasterRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                monitoring = {
                  description = "Sets the monitoring service for a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/monitoring",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.monitoring",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/monitoring",
                  request = {
                    ["$ref"] = "SetMonitoringServiceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resourceLabels = {
                  description = "Sets labels on a cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/resourceLabels",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.resourceLabels",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/resourceLabels",
                  request = {
                    ["$ref"] = "SetLabelsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMaintenancePolicy = {
                  description = "Sets the maintenance policy for a cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMaintenancePolicy",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.setMaintenancePolicy",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Required. The name of the cluster to update.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Required. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMaintenancePolicy",
                  request = {
                    ["$ref"] = "SetMaintenancePolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMasterAuth = {
                  description = "Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMasterAuth",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.setMasterAuth",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMasterAuth",
                  request = {
                    ["$ref"] = "SetMasterAuthRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setNetworkPolicy = {
                  description = "Enables or disables Network Policy for a cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setNetworkPolicy",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.setNetworkPolicy",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setNetworkPolicy",
                  request = {
                    ["$ref"] = "SetNetworkPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                startIpRotation = {
                  description = "Starts master IP rotation.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:startIpRotation",
                  httpMethod = "POST",
                  id = "container.projects.zones.clusters.startIpRotation",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:startIpRotation",
                  request = {
                    ["$ref"] = "StartIPRotationRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates the settings of a specific cluster.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  httpMethod = "PUT",
                  id = "container.projects.zones.clusters.update",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "clusterId",
                  },
                  parameters = {
                    clusterId = {
                      description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}",
                  request = {
                    ["$ref"] = "UpdateClusterRequest",
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
                nodePools = {
                  methods = {
                    autoscaling = {
                      description = "Sets the autoscaling settings for the specified node pool.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/autoscaling",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.autoscaling",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/autoscaling",
                      request = {
                        ["$ref"] = "SetNodePoolAutoscalingRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a node pool for a cluster.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.create",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools",
                      request = {
                        ["$ref"] = "CreateNodePoolRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a node pool from a cluster.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}",
                      httpMethod = "DELETE",
                      id = "container.projects.zones.clusters.nodePools.delete",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to delete. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "query",
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to delete. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}",
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Retrieves the requested node pool.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}",
                      httpMethod = "GET",
                      id = "container.projects.zones.clusters.nodePools.get",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        name = {
                          description = "The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
                          location = "query",
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}",
                      response = {
                        ["$ref"] = "NodePool",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the node pools for a cluster.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools",
                      httpMethod = "GET",
                      id = "container.projects.zones.clusters.nodePools.list",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        parent = {
                          description = "The parent (project, location, cluster name) where the node pools will be listed. Specified in the format `projects/*/locations/*/clusters/*`.",
                          location = "query",
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools",
                      response = {
                        ["$ref"] = "ListNodePoolsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    rollback = {
                      description = "Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}:rollback",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.rollback",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster to rollback. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to rollback. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}:rollback",
                      request = {
                        ["$ref"] = "RollbackNodePoolUpgradeRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setManagement = {
                      description = "Sets the NodeManagement options for a node pool.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setManagement",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.setManagement",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setManagement",
                      request = {
                        ["$ref"] = "SetNodePoolManagementRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setSize = {
                      description = "Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setSize",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.setSize",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setSize",
                      request = {
                        ["$ref"] = "SetNodePoolSizeRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    update = {
                      description = "Updates the version and/or image type for the specified node pool.",
                      flatPath = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/update",
                      httpMethod = "POST",
                      id = "container.projects.zones.clusters.nodePools.update",
                      parameterOrder = {
                        "projectId",
                        "zone",
                        "clusterId",
                        "nodePoolId",
                      },
                      parameters = {
                        clusterId = {
                          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        nodePoolId = {
                          description = "Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        zone = {
                          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/update",
                      request = {
                        ["$ref"] = "UpdateNodePoolRequest",
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
            operations = {
              methods = {
                cancel = {
                  description = "Cancels the specified operation.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/operations/{operationId}:cancel",
                  httpMethod = "POST",
                  id = "container.projects.zones.operations.cancel",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "operationId",
                  },
                  parameters = {
                    operationId = {
                      description = "Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the operation resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/operations/{operationId}:cancel",
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
                get = {
                  description = "Gets the specified operation.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/operations/{operationId}",
                  httpMethod = "GET",
                  id = "container.projects.zones.operations.get",
                  parameterOrder = {
                    "projectId",
                    "zone",
                    "operationId",
                  },
                  parameters = {
                    name = {
                      description = "The name (project, location, operation id) of the operation to get. Specified in the format `projects/*/locations/*/operations/*`.",
                      location = "query",
                      type = "string",
                    },
                    operationId = {
                      description = "Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/operations/{operationId}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all operations in a project in a specific zone or all zones.",
                  flatPath = "v1/projects/{projectId}/zones/{zone}/operations",
                  httpMethod = "GET",
                  id = "container.projects.zones.operations.list",
                  parameterOrder = {
                    "projectId",
                    "zone",
                  },
                  parameters = {
                    parent = {
                      description = "The parent (project and location) where the operations will be listed. Specified in the format `projects/*/locations/*`. Location \"-\" matches all zones and all regions.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    zone = {
                      description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to return operations for, or `-` for all zones. This field has been deprecated and replaced by the parent field.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectId}/zones/{zone}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
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
  revision = "20230104",
  rootUrl = "https://container.googleapis.com/",
  schemas = {
    AcceleratorConfig = {
      description = "AcceleratorConfig represents a Hardware Accelerator request.",
      id = "AcceleratorConfig",
      properties = {
        acceleratorCount = {
          description = "The number of the accelerator cards exposed to an instance.",
          format = "int64",
          type = "string",
        },
        acceleratorType = {
          description = "The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)",
          type = "string",
        },
        gpuPartitionSize = {
          description = "Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).",
          type = "string",
        },
        gpuSharingConfig = {
          ["$ref"] = "GPUSharingConfig",
          description = "The configuration for GPU sharing options.",
        },
      },
      type = "object",
    },
    AddonsConfig = {
      description = "Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.",
      id = "AddonsConfig",
      properties = {
        cloudRunConfig = {
          ["$ref"] = "CloudRunConfig",
          description = "Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.",
        },
        configConnectorConfig = {
          ["$ref"] = "ConfigConnectorConfig",
          description = "Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API",
        },
        dnsCacheConfig = {
          ["$ref"] = "DnsCacheConfig",
          description = "Configuration for NodeLocalDNS, a dns cache running on cluster nodes",
        },
        gcePersistentDiskCsiDriverConfig = {
          ["$ref"] = "GcePersistentDiskCsiDriverConfig",
          description = "Configuration for the Compute Engine Persistent Disk CSI driver.",
        },
        gcpFilestoreCsiDriverConfig = {
          ["$ref"] = "GcpFilestoreCsiDriverConfig",
          description = "Configuration for the GCP Filestore CSI driver.",
        },
        gkeBackupAgentConfig = {
          ["$ref"] = "GkeBackupAgentConfig",
          description = "Configuration for the Backup for GKE agent addon.",
        },
        horizontalPodAutoscaling = {
          ["$ref"] = "HorizontalPodAutoscaling",
          description = "Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.",
        },
        httpLoadBalancing = {
          ["$ref"] = "HttpLoadBalancing",
          description = "Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.",
        },
        kubernetesDashboard = {
          ["$ref"] = "KubernetesDashboard",
          description = "Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards",
        },
        networkPolicyConfig = {
          ["$ref"] = "NetworkPolicyConfig",
          description = "Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.",
        },
      },
      type = "object",
    },
    AdvancedMachineFeatures = {
      description = "Specifies options for controlling advanced machine features.",
      id = "AdvancedMachineFeatures",
      properties = {
        threadsPerCore = {
          description = "The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AuthenticatorGroupsConfig = {
      description = "Configuration for returning group information from authenticators.",
      id = "AuthenticatorGroupsConfig",
      properties = {
        enabled = {
          description = "Whether this cluster should return group membership lookups during authentication using a group of security groups.",
          type = "boolean",
        },
        securityGroup = {
          description = "The name of the security group-of-groups to be used. Only relevant if enabled = true.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoUpgradeOptions = {
      description = "AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.",
      id = "AutoUpgradeOptions",
      properties = {
        autoUpgradeStartTime = {
          description = "[Output only] This field is set when upgrades are about to commence with the approximate start time for the upgrades, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        description = {
          description = "[Output only] This field is set when upgrades are about to commence with the description of the upgrade.",
          type = "string",
        },
      },
      type = "object",
    },
    Autopilot = {
      description = "Autopilot is the configuration for Autopilot settings on the cluster.",
      id = "Autopilot",
      properties = {
        enabled = {
          description = "Enable Autopilot",
          type = "boolean",
        },
      },
      type = "object",
    },
    AutoprovisioningNodePoolDefaults = {
      description = "AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.",
      id = "AutoprovisioningNodePoolDefaults",
      properties = {
        bootDiskKmsKey = {
          description = "The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption",
          type = "string",
        },
        diskSizeGb = {
          description = "Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.",
          format = "int32",
          type = "integer",
        },
        diskType = {
          description = "Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'",
          type = "string",
        },
        imageType = {
          description = "The image type to use for NAP created node.",
          type = "string",
        },
        management = {
          ["$ref"] = "NodeManagement",
          description = "Specifies the node management options for NAP created node-pools.",
        },
        minCpuPlatform = {
          description = "Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using https://cloud.google.com/requested-min-cpu-platform label selector on the pod. To unset the min cpu platform field pass \"automatic\" as field value.",
          type = "string",
        },
        oauthScopes = {
          description = "Scopes that are used by NAP when creating node pools.",
          items = {
            type = "string",
          },
          type = "array",
        },
        serviceAccount = {
          description = "The Google Cloud Platform Service Account to be used by the node VMs.",
          type = "string",
        },
        shieldedInstanceConfig = {
          ["$ref"] = "ShieldedInstanceConfig",
          description = "Shielded Instance options.",
        },
        upgradeSettings = {
          ["$ref"] = "UpgradeSettings",
          description = "Specifies the upgrade settings for NAP created node pools",
        },
      },
      type = "object",
    },
    BigQueryDestination = {
      description = "Parameters for using BigQuery as the destination of resource usage export.",
      id = "BigQueryDestination",
      properties = {
        datasetId = {
          description = "The ID of a BigQuery Dataset.",
          type = "string",
        },
      },
      type = "object",
    },
    BinaryAuthorization = {
      description = "Configuration for Binary Authorization.",
      id = "BinaryAuthorization",
      properties = {
        enabled = {
          description = "This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.",
          type = "boolean",
        },
        evaluationMode = {
          description = "Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.",
          enum = {
            "EVALUATION_MODE_UNSPECIFIED",
            "DISABLED",
            "PROJECT_SINGLETON_POLICY_ENFORCE",
          },
          enumDescriptions = {
            "Default value",
            "Disable BinaryAuthorization",
            "Enforce Kubernetes admission requests with BinaryAuthorization using the project's singleton policy. This is equivalent to setting the enabled boolean to true.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BlueGreenInfo = {
      description = "Information relevant to blue-green upgrade.",
      id = "BlueGreenInfo",
      properties = {
        blueInstanceGroupUrls = {
          description = "The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with blue pool.",
          items = {
            type = "string",
          },
          type = "array",
        },
        bluePoolDeletionStartTime = {
          description = "Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        greenInstanceGroupUrls = {
          description = "The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with green pool.",
          items = {
            type = "string",
          },
          type = "array",
        },
        greenPoolVersion = {
          description = "Version of green pool.",
          type = "string",
        },
        phase = {
          description = "Current blue-green upgrade phase.",
          enum = {
            "PHASE_UNSPECIFIED",
            "UPDATE_STARTED",
            "CREATING_GREEN_POOL",
            "CORDONING_BLUE_POOL",
            "DRAINING_BLUE_POOL",
            "NODE_POOL_SOAKING",
            "DELETING_BLUE_POOL",
            "ROLLBACK_STARTED",
          },
          enumDescriptions = {
            "Unspecified phase.",
            "blue-green upgrade has been initiated.",
            "Start creating green pool nodes.",
            "Start cordoning blue pool nodes.",
            "Start draining blue pool nodes.",
            "Start soaking time after draining entire blue pool.",
            "Start deleting blue nodes.",
            "Rollback has been initiated.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BlueGreenSettings = {
      description = "Settings for blue-green upgrade.",
      id = "BlueGreenSettings",
      properties = {
        nodePoolSoakDuration = {
          description = "Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.",
          format = "google-duration",
          type = "string",
        },
        standardRolloutPolicy = {
          ["$ref"] = "StandardRolloutPolicy",
          description = "Standard policy for the blue-green upgrade.",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "CancelOperationRequest cancels a single operation.",
      id = "CancelOperationRequest",
      properties = {
        name = {
          description = "The name (project, location, operation id) of the operation to cancel. Specified in the format `projects/*/locations/*/operations/*`.",
          type = "string",
        },
        operationId = {
          description = "Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the operation resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    CidrBlock = {
      description = "CidrBlock contains an optional name and one CIDR block.",
      id = "CidrBlock",
      properties = {
        cidrBlock = {
          description = "cidr_block must be specified in CIDR notation.",
          type = "string",
        },
        displayName = {
          description = "display_name is an optional field for users to identify CIDR blocks.",
          type = "string",
        },
      },
      type = "object",
    },
    ClientCertificateConfig = {
      description = "Configuration for client certificates on the cluster.",
      id = "ClientCertificateConfig",
      properties = {
        issueClientCertificate = {
          description = "Issue a client certificate.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CloudRunConfig = {
      description = "Configuration options for the Cloud Run feature.",
      id = "CloudRunConfig",
      properties = {
        disabled = {
          description = "Whether Cloud Run addon is enabled for this cluster.",
          type = "boolean",
        },
        loadBalancerType = {
          description = "Which load balancer type is installed for Cloud Run.",
          enum = {
            "LOAD_BALANCER_TYPE_UNSPECIFIED",
            "LOAD_BALANCER_TYPE_EXTERNAL",
            "LOAD_BALANCER_TYPE_INTERNAL",
          },
          enumDescriptions = {
            "Load balancer type for Cloud Run is unspecified.",
            "Install external load balancer for Cloud Run.",
            "Install internal load balancer for Cloud Run.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Cluster = {
      description = "A Google Kubernetes Engine cluster.",
      id = "Cluster",
      properties = {
        addonsConfig = {
          ["$ref"] = "AddonsConfig",
          description = "Configurations for the various addons available to run in the cluster.",
        },
        authenticatorGroupsConfig = {
          ["$ref"] = "AuthenticatorGroupsConfig",
          description = "Configuration controlling RBAC group membership information.",
        },
        autopilot = {
          ["$ref"] = "Autopilot",
          description = "Autopilot configuration for the cluster.",
        },
        autoscaling = {
          ["$ref"] = "ClusterAutoscaling",
          description = "Cluster-level autoscaling configuration.",
        },
        binaryAuthorization = {
          ["$ref"] = "BinaryAuthorization",
          description = "Configuration for Binary Authorization.",
        },
        clusterIpv4Cidr = {
          description = "The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.",
          type = "string",
        },
        conditions = {
          description = "Which conditions caused the current cluster state.",
          items = {
            ["$ref"] = "StatusCondition",
          },
          type = "array",
        },
        confidentialNodes = {
          ["$ref"] = "ConfidentialNodes",
          description = "Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.",
        },
        costManagementConfig = {
          ["$ref"] = "CostManagementConfig",
          description = "Configuration for the fine-grained cost management feature.",
        },
        createTime = {
          description = "[Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        currentMasterVersion = {
          description = "[Output only] The current software version of the master endpoint.",
          type = "string",
        },
        currentNodeCount = {
          description = "[Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.",
          format = "int32",
          type = "integer",
        },
        currentNodeVersion = {
          description = "[Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.",
          type = "string",
        },
        databaseEncryption = {
          ["$ref"] = "DatabaseEncryption",
          description = "Configuration of etcd encryption.",
        },
        defaultMaxPodsConstraint = {
          ["$ref"] = "MaxPodsConstraint",
          description = "The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.",
        },
        description = {
          description = "An optional description of this cluster.",
          type = "string",
        },
        enableKubernetesAlpha = {
          description = "Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.",
          type = "boolean",
        },
        enableTpu = {
          description = "Enable the ability to use Cloud TPUs in this cluster.",
          type = "boolean",
        },
        endpoint = {
          description = "[Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.",
          type = "string",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        expireTime = {
          description = "[Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        id = {
          description = "Output only. Unique id for the cluster.",
          readOnly = true,
          type = "string",
        },
        identityServiceConfig = {
          ["$ref"] = "IdentityServiceConfig",
          description = "Configuration for Identity Service component.",
        },
        initialClusterVersion = {
          description = "The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"\",\"-\": picks the default Kubernetes version",
          type = "string",
        },
        initialNodeCount = {
          description = "The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a \"node_pool\" object, since this configuration (along with the \"node_config\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.",
          format = "int32",
          type = "integer",
        },
        instanceGroupUrls = {
          description = "Deprecated. Use node_pools.instance_group_urls.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ipAllocationPolicy = {
          ["$ref"] = "IPAllocationPolicy",
          description = "Configuration for cluster IP allocation.",
        },
        labelFingerprint = {
          description = "The fingerprint of the set of labels for this cluster.",
          type = "string",
        },
        legacyAbac = {
          ["$ref"] = "LegacyAbac",
          description = "Configuration for the legacy ABAC authorization mode.",
        },
        location = {
          description = "[Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.",
          type = "string",
        },
        locations = {
          description = "The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Logging configuration for the cluster.",
        },
        loggingService = {
          description = "The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.",
          type = "string",
        },
        maintenancePolicy = {
          ["$ref"] = "MaintenancePolicy",
          description = "Configure the maintenance policy for this cluster.",
        },
        masterAuth = {
          ["$ref"] = "MasterAuth",
          description = "The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to \"admin\", a random password will be generated, and a client certificate will be issued.",
        },
        masterAuthorizedNetworksConfig = {
          ["$ref"] = "MasterAuthorizedNetworksConfig",
          description = "The configuration options for master authorized networks feature.",
        },
        meshCertificates = {
          ["$ref"] = "MeshCertificates",
          description = "Configuration for issuance of mTLS keys and certificates to Kubernetes pods.",
        },
        monitoringConfig = {
          ["$ref"] = "MonitoringConfig",
          description = "Monitoring configuration for the cluster.",
        },
        monitoringService = {
          description = "The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.",
          type = "string",
        },
        name = {
          description = "The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.",
          type = "string",
        },
        network = {
          description = "The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.",
          type = "string",
        },
        networkConfig = {
          ["$ref"] = "NetworkConfig",
          description = "Configuration for cluster networking.",
        },
        networkPolicy = {
          ["$ref"] = "NetworkPolicy",
          description = "Configuration options for the NetworkPolicy feature.",
        },
        nodeConfig = {
          ["$ref"] = "NodeConfig",
          description = "Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a \"node_pool\" object, since this configuration (along with the \"initial_node_count\") will be used to create a \"NodePool\" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.",
        },
        nodeIpv4CidrSize = {
          description = "[Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.",
          format = "int32",
          type = "integer",
        },
        nodePoolAutoConfig = {
          ["$ref"] = "NodePoolAutoConfig",
          description = "Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.",
        },
        nodePoolDefaults = {
          ["$ref"] = "NodePoolDefaults",
          description = "Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.",
        },
        nodePools = {
          description = "The node pools associated with this cluster. This field should not be set if \"node_config\" or \"initial_node_count\" are specified.",
          items = {
            ["$ref"] = "NodePool",
          },
          type = "array",
        },
        notificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "Notification configuration of the cluster.",
        },
        privateClusterConfig = {
          ["$ref"] = "PrivateClusterConfig",
          description = "Configuration for private cluster.",
        },
        releaseChannel = {
          ["$ref"] = "ReleaseChannel",
          description = "Release channel configuration.",
        },
        resourceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for the cluster to use to annotate any related Google Compute Engine resources.",
          type = "object",
        },
        resourceUsageExportConfig = {
          ["$ref"] = "ResourceUsageExportConfig",
          description = "Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.",
        },
        selfLink = {
          description = "[Output only] Server-defined URL for the resource.",
          type = "string",
        },
        servicesIpv4Cidr = {
          description = "[Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.",
          type = "string",
        },
        shieldedNodes = {
          ["$ref"] = "ShieldedNodes",
          description = "Shielded Nodes configuration.",
        },
        status = {
          description = "[Output only] The current status of this cluster.",
          enum = {
            "STATUS_UNSPECIFIED",
            "PROVISIONING",
            "RUNNING",
            "RECONCILING",
            "STOPPING",
            "ERROR",
            "DEGRADED",
          },
          enumDescriptions = {
            "Not set.",
            "The PROVISIONING state indicates the cluster is being created.",
            "The RUNNING state indicates the cluster has been created and is fully usable.",
            "The RECONCILING state indicates that some work is actively being done on the cluster, such as upgrading the master or node software. Details can be found in the `statusMessage` field.",
            "The STOPPING state indicates the cluster is being deleted.",
            "The ERROR state indicates the cluster is unusable. It will be automatically deleted. Details can be found in the `statusMessage` field.",
            "The DEGRADED state indicates the cluster requires user action to restore full functionality. Details can be found in the `statusMessage` field.",
          },
          type = "string",
        },
        statusMessage = {
          description = "[Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.",
          type = "string",
        },
        subnetwork = {
          description = "The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.",
          type = "string",
        },
        tpuIpv4CidrBlock = {
          description = "[Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).",
          type = "string",
        },
        verticalPodAutoscaling = {
          ["$ref"] = "VerticalPodAutoscaling",
          description = "Cluster-level Vertical Pod Autoscaling configuration.",
        },
        workloadIdentityConfig = {
          ["$ref"] = "WorkloadIdentityConfig",
          description = "Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.",
        },
        zone = {
          description = "[Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.",
          type = "string",
        },
      },
      type = "object",
    },
    ClusterAutoscaling = {
      description = "ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.",
      id = "ClusterAutoscaling",
      properties = {
        autoprovisioningLocations = {
          description = "The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.",
          items = {
            type = "string",
          },
          type = "array",
        },
        autoprovisioningNodePoolDefaults = {
          ["$ref"] = "AutoprovisioningNodePoolDefaults",
          description = "AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.",
        },
        autoscalingProfile = {
          description = "Defines autoscaling behaviour.",
          enum = {
            "PROFILE_UNSPECIFIED",
            "OPTIMIZE_UTILIZATION",
            "BALANCED",
          },
          enumDescriptions = {
            "No change to autoscaling configuration.",
            "Prioritize optimizing utilization of resources.",
            "Use default (balanced) autoscaling configuration.",
          },
          type = "string",
        },
        enableNodeAutoprovisioning = {
          description = "Enables automatic node pool creation and deletion.",
          type = "boolean",
        },
        resourceLimits = {
          description = "Contains global constraints regarding minimum and maximum amount of resources in the cluster.",
          items = {
            ["$ref"] = "ResourceLimit",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ClusterUpdate = {
      description = "ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.",
      id = "ClusterUpdate",
      properties = {
        desiredAddonsConfig = {
          ["$ref"] = "AddonsConfig",
          description = "Configurations for the various addons available to run in the cluster.",
        },
        desiredAuthenticatorGroupsConfig = {
          ["$ref"] = "AuthenticatorGroupsConfig",
          description = "The desired authenticator groups config for the cluster.",
        },
        desiredBinaryAuthorization = {
          ["$ref"] = "BinaryAuthorization",
          description = "The desired configuration options for the Binary Authorization feature.",
        },
        desiredClusterAutoscaling = {
          ["$ref"] = "ClusterAutoscaling",
          description = "Cluster-level autoscaling configuration.",
        },
        desiredCostManagementConfig = {
          ["$ref"] = "CostManagementConfig",
          description = "The desired configuration for the fine-grained cost management feature.",
        },
        desiredDatabaseEncryption = {
          ["$ref"] = "DatabaseEncryption",
          description = "Configuration of etcd encryption.",
        },
        desiredDatapathProvider = {
          description = "The desired datapath provider for the cluster.",
          enum = {
            "DATAPATH_PROVIDER_UNSPECIFIED",
            "LEGACY_DATAPATH",
            "ADVANCED_DATAPATH",
          },
          enumDescriptions = {
            "Default value.",
            "Use the IPTables implementation based on kube-proxy.",
            "Use the eBPF based GKE Dataplane V2 with additional features. See the [GKE Dataplane V2 documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2) for more.",
          },
          type = "string",
        },
        desiredDefaultSnatStatus = {
          ["$ref"] = "DefaultSnatStatus",
          description = "The desired status of whether to disable default sNAT for this cluster.",
        },
        desiredDnsConfig = {
          ["$ref"] = "DNSConfig",
          description = "DNSConfig contains clusterDNS config for this cluster.",
        },
        desiredEnablePrivateEndpoint = {
          description = "Enable/Disable private endpoint for the cluster's master.",
          type = "boolean",
        },
        desiredGatewayApiConfig = {
          ["$ref"] = "GatewayAPIConfig",
          description = "The desired config of Gateway API on this cluster.",
        },
        desiredGcfsConfig = {
          ["$ref"] = "GcfsConfig",
          description = "The desired GCFS config for the cluster",
        },
        desiredIdentityServiceConfig = {
          ["$ref"] = "IdentityServiceConfig",
          description = "The desired Identity Service component configuration.",
        },
        desiredImageType = {
          description = "The desired image type for the node pool. NOTE: Set the \"desired_node_pool\" field as well.",
          type = "string",
        },
        desiredIntraNodeVisibilityConfig = {
          ["$ref"] = "IntraNodeVisibilityConfig",
          description = "The desired config of Intra-node visibility.",
        },
        desiredL4ilbSubsettingConfig = {
          ["$ref"] = "ILBSubsettingConfig",
          description = "The desired L4 Internal Load Balancer Subsetting configuration.",
        },
        desiredLocations = {
          description = "The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        desiredLoggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "The desired logging configuration.",
        },
        desiredLoggingService = {
          description = "The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.",
          type = "string",
        },
        desiredMasterAuthorizedNetworksConfig = {
          ["$ref"] = "MasterAuthorizedNetworksConfig",
          description = "The desired configuration options for master authorized networks feature.",
        },
        desiredMasterVersion = {
          description = "The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the default Kubernetes version",
          type = "string",
        },
        desiredMeshCertificates = {
          ["$ref"] = "MeshCertificates",
          description = "Configuration for issuance of mTLS keys and certificates to Kubernetes pods.",
        },
        desiredMonitoringConfig = {
          ["$ref"] = "MonitoringConfig",
          description = "The desired monitoring configuration.",
        },
        desiredMonitoringService = {
          description = "The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.",
          type = "string",
        },
        desiredNodePoolAutoConfigNetworkTags = {
          ["$ref"] = "NetworkTags",
          description = "The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.",
        },
        desiredNodePoolAutoscaling = {
          ["$ref"] = "NodePoolAutoscaling",
          description = "Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.",
        },
        desiredNodePoolId = {
          description = "The node pool to be upgraded. This field is mandatory if \"desired_node_version\", \"desired_image_family\" or \"desired_node_pool_autoscaling\" is specified and there is more than one node pool on the cluster.",
          type = "string",
        },
        desiredNodePoolLoggingConfig = {
          ["$ref"] = "NodePoolLoggingConfig",
          description = "The desired node pool logging configuration defaults for the cluster.",
        },
        desiredNodeVersion = {
          description = "The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version",
          type = "string",
        },
        desiredNotificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "The desired notification configuration.",
        },
        desiredPrivateClusterConfig = {
          ["$ref"] = "PrivateClusterConfig",
          description = "The desired private cluster configuration.",
        },
        desiredPrivateIpv6GoogleAccess = {
          description = "The desired state of IPv6 connectivity to Google Services.",
          enum = {
            "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED",
            "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED",
            "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE",
            "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL",
          },
          enumDescriptions = {
            "Default value. Same as DISABLED",
            "No private access to or from Google Services",
            "Enables private IPv6 access to Google Services from GKE",
            "Enables priate IPv6 access to and from Google Services",
          },
          type = "string",
        },
        desiredReleaseChannel = {
          ["$ref"] = "ReleaseChannel",
          description = "The desired release channel configuration.",
        },
        desiredResourceUsageExportConfig = {
          ["$ref"] = "ResourceUsageExportConfig",
          description = "The desired configuration for exporting resource usage.",
        },
        desiredServiceExternalIpsConfig = {
          ["$ref"] = "ServiceExternalIPsConfig",
          description = "ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.",
        },
        desiredShieldedNodes = {
          ["$ref"] = "ShieldedNodes",
          description = "Configuration for Shielded Nodes.",
        },
        desiredStackType = {
          description = "The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.",
          enum = {
            "STACK_TYPE_UNSPECIFIED",
            "IPV4",
            "IPV4_IPV6",
          },
          enumDescriptions = {
            "Default value, will be defaulted as IPV4 only",
            "Cluster is IPV4 only",
            "Cluster can use both IPv4 and IPv6",
          },
          type = "string",
        },
        desiredVerticalPodAutoscaling = {
          ["$ref"] = "VerticalPodAutoscaling",
          description = "Cluster-level Vertical Pod Autoscaling configuration.",
        },
        desiredWorkloadIdentityConfig = {
          ["$ref"] = "WorkloadIdentityConfig",
          description = "Configuration for Workload Identity.",
        },
        etag = {
          description = "The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.",
          type = "string",
        },
      },
      type = "object",
    },
    CompleteIPRotationRequest = {
      description = "CompleteIPRotationRequest moves the cluster master back into single-IP mode.",
      id = "CompleteIPRotationRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    CompleteNodePoolUpgradeRequest = {
      description = "CompleteNodePoolUpgradeRequest sets the name of target node pool to complete upgrade.",
      id = "CompleteNodePoolUpgradeRequest",
      properties = {},
      type = "object",
    },
    ConfidentialNodes = {
      description = "ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.",
      id = "ConfidentialNodes",
      properties = {
        enabled = {
          description = "Whether Confidential Nodes feature is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConfigConnectorConfig = {
      description = "Configuration options for the Config Connector add-on.",
      id = "ConfigConnectorConfig",
      properties = {
        enabled = {
          description = "Whether Cloud Connector is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ConsumptionMeteringConfig = {
      description = "Parameters for controlling consumption metering.",
      id = "ConsumptionMeteringConfig",
      properties = {
        enabled = {
          description = "Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will be created to hold resource consumption records.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CostManagementConfig = {
      description = "Configuration for fine-grained cost management feature.",
      id = "CostManagementConfig",
      properties = {
        enabled = {
          description = "Whether the feature is enabled or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateClusterRequest = {
      description = "CreateClusterRequest creates a cluster.",
      id = "CreateClusterRequest",
      properties = {
        cluster = {
          ["$ref"] = "Cluster",
          description = "Required. A [cluster resource](https://cloud.google.com/container-engine/reference/rest/v1/projects.locations.clusters)",
        },
        parent = {
          description = "The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateNodePoolRequest = {
      description = "CreateNodePoolRequest creates a node pool for a cluster.",
      id = "CreateNodePoolRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field.",
          type = "string",
        },
        nodePool = {
          ["$ref"] = "NodePool",
          description = "Required. The node pool to create.",
        },
        parent = {
          description = "The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.",
          type = "string",
        },
      },
      type = "object",
    },
    DNSConfig = {
      description = "DNSConfig contains the desired set of options for configuring clusterDNS.",
      id = "DNSConfig",
      properties = {
        clusterDns = {
          description = "cluster_dns indicates which in-cluster DNS provider should be used.",
          enum = {
            "PROVIDER_UNSPECIFIED",
            "PLATFORM_DEFAULT",
            "CLOUD_DNS",
          },
          enumDescriptions = {
            "Default value",
            "Use GKE default DNS provider(kube-dns) for DNS resolution.",
            "Use CloudDNS for DNS resolution.",
          },
          type = "string",
        },
        clusterDnsDomain = {
          description = "cluster_dns_domain is the suffix used for all cluster service records.",
          type = "string",
        },
        clusterDnsScope = {
          description = "cluster_dns_scope indicates the scope of access to cluster DNS records.",
          enum = {
            "DNS_SCOPE_UNSPECIFIED",
            "CLUSTER_SCOPE",
            "VPC_SCOPE",
          },
          enumDescriptions = {
            "Default value, will be inferred as cluster scope.",
            "DNS records are accessible from within the cluster.",
            "DNS records are accessible from within the VPC.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DailyMaintenanceWindow = {
      description = "Time window specified for daily maintenance operations.",
      id = "DailyMaintenanceWindow",
      properties = {
        duration = {
          description = "[Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario. Duration will be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format \"PTnHnMnS\".",
          type = "string",
        },
        startTime = {
          description = "Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format \"HH:MM\", where HH : [00-23] and MM : [00-59] GMT.",
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseEncryption = {
      description = "Configuration of etcd encryption.",
      id = "DatabaseEncryption",
      properties = {
        keyName = {
          description = "Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locations/global/keyRings/my-ring/cryptoKeys/my-key",
          type = "string",
        },
        state = {
          description = "Denotes the state of etcd encryption.",
          enum = {
            "UNKNOWN",
            "ENCRYPTED",
            "DECRYPTED",
          },
          enumDescriptions = {
            "Should never be set",
            "Secrets in etcd are encrypted.",
            "Secrets in etcd are stored in plain text (at etcd level) - this is unrelated to Compute Engine level full disk encryption.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DefaultSnatStatus = {
      description = "DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.",
      id = "DefaultSnatStatus",
      properties = {
        disabled = {
          description = "Disables cluster default sNAT rules.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DnsCacheConfig = {
      description = "Configuration for NodeLocal DNSCache",
      id = "DnsCacheConfig",
      properties = {
        enabled = {
          description = "Whether NodeLocal DNSCache is enabled for this cluster.",
          type = "boolean",
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
    EphemeralStorageLocalSsdConfig = {
      description = "EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral storage using Local SSD.",
      id = "EphemeralStorageLocalSsdConfig",
      properties = {
        localSsdCount = {
          description = "Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    FastSocket = {
      description = "Configuration of Fast Socket feature.",
      id = "FastSocket",
      properties = {
        enabled = {
          description = "Whether Fast Socket features are enabled in the node pool.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Filter = {
      description = "Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent",
      id = "Filter",
      properties = {
        eventType = {
          description = "Event types to allowlist.",
          items = {
            enum = {
              "EVENT_TYPE_UNSPECIFIED",
              "UPGRADE_AVAILABLE_EVENT",
              "UPGRADE_EVENT",
              "SECURITY_BULLETIN_EVENT",
            },
            enumDescriptions = {
              "Not set, will be ignored.",
              "Corresponds with UpgradeAvailableEvent.",
              "Corresponds with UpgradeEvent.",
              "Corresponds with SecurityBulletinEvent.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GPUSharingConfig = {
      description = "GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.",
      id = "GPUSharingConfig",
      properties = {
        gpuSharingStrategy = {
          description = "The type of GPU sharing strategy to enable on the GPU node.",
          enum = {
            "GPU_SHARING_STRATEGY_UNSPECIFIED",
            "TIME_SHARING",
          },
          enumDescriptions = {
            "Default value.",
            "GPUs are time-shared between containers.",
          },
          type = "string",
        },
        maxSharedClientsPerGpu = {
          description = "The max number of containers that can share a physical GPU.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GatewayAPIConfig = {
      description = "GatewayAPIConfig contains the desired config of Gateway API on this cluster.",
      id = "GatewayAPIConfig",
      properties = {
        channel = {
          description = "The Gateway API release channel to use for Gateway API.",
          enum = {
            "CHANNEL_UNSPECIFIED",
            "CHANNEL_DISABLED",
            "CHANNEL_EXPERIMENTAL",
            "CHANNEL_STANDARD",
          },
          enumDescriptions = {
            "Default value.",
            "Gateway API support is disabled",
            "Gateway API support is enabled, experimental CRDs are installed",
            "Gateway API support is enabled, standard CRDs are installed",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GcePersistentDiskCsiDriverConfig = {
      description = "Configuration for the Compute Engine PD CSI driver.",
      id = "GcePersistentDiskCsiDriverConfig",
      properties = {
        enabled = {
          description = "Whether the Compute Engine PD CSI driver is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GcfsConfig = {
      description = "GcfsConfig contains configurations of Google Container File System (image streaming).",
      id = "GcfsConfig",
      properties = {
        enabled = {
          description = "Whether to use GCFS.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GcpFilestoreCsiDriverConfig = {
      description = "Configuration for the GCP Filestore CSI driver.",
      id = "GcpFilestoreCsiDriverConfig",
      properties = {
        enabled = {
          description = "Whether the GCP Filestore CSI driver is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GetJSONWebKeysResponse = {
      description = "GetJSONWebKeysResponse is a valid JSON Web Key Set as specififed in rfc 7517",
      id = "GetJSONWebKeysResponse",
      properties = {
        cacheHeader = {
          ["$ref"] = "HttpCacheControlResponseHeader",
          description = "OnePlatform automatically extracts this field and uses it to set the HTTP Cache-Control header.",
        },
        keys = {
          description = "The public component of the keys used by the cluster to sign token requests.",
          items = {
            ["$ref"] = "Jwk",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GetOpenIDConfigResponse = {
      description = "GetOpenIDConfigResponse is an OIDC discovery document for the cluster. See the OpenID Connect Discovery 1.0 specification for details.",
      id = "GetOpenIDConfigResponse",
      properties = {
        cacheHeader = {
          ["$ref"] = "HttpCacheControlResponseHeader",
          description = "OnePlatform automatically extracts this field and uses it to set the HTTP Cache-Control header.",
        },
        claims_supported = {
          description = "Supported claims.",
          items = {
            type = "string",
          },
          type = "array",
        },
        grant_types = {
          description = "Supported grant types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id_token_signing_alg_values_supported = {
          description = "supported ID Token signing Algorithms.",
          items = {
            type = "string",
          },
          type = "array",
        },
        issuer = {
          description = "OIDC Issuer.",
          type = "string",
        },
        jwks_uri = {
          description = "JSON Web Key uri.",
          type = "string",
        },
        response_types_supported = {
          description = "Supported response types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        subject_types_supported = {
          description = "Supported subject types.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GkeBackupAgentConfig = {
      description = "Configuration for the Backup for GKE Agent.",
      id = "GkeBackupAgentConfig",
      properties = {
        enabled = {
          description = "Whether the Backup for GKE agent is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HorizontalPodAutoscaling = {
      description = "Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.",
      id = "HorizontalPodAutoscaling",
      properties = {
        disabled = {
          description = "Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HttpCacheControlResponseHeader = {
      description = "RFC-2616: cache control support",
      id = "HttpCacheControlResponseHeader",
      properties = {
        age = {
          description = "14.6 response cache age, in seconds since the response is generated",
          format = "int64",
          type = "string",
        },
        directive = {
          description = "14.9 request and response directives",
          type = "string",
        },
        expires = {
          description = "14.21 response cache expires, in RFC 1123 date format",
          type = "string",
        },
      },
      type = "object",
    },
    HttpLoadBalancing = {
      description = "Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.",
      id = "HttpLoadBalancing",
      properties = {
        disabled = {
          description = "Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a small pod in the cluster that manages the load balancers.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ILBSubsettingConfig = {
      description = "ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.",
      id = "ILBSubsettingConfig",
      properties = {
        enabled = {
          description = "Enables l4 ILB subsetting for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IPAllocationPolicy = {
      description = "Configuration for controlling how IPs are allocated in the cluster.",
      id = "IPAllocationPolicy",
      properties = {
        clusterIpv4Cidr = {
          description = "This field is deprecated, use cluster_ipv4_cidr_block.",
          type = "string",
        },
        clusterIpv4CidrBlock = {
          description = "The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_cidr` must be left blank. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.",
          type = "string",
        },
        clusterSecondaryRangeName = {
          description = "The name of the secondary range to be used for the cluster CIDR block. The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.",
          type = "string",
        },
        createSubnetwork = {
          description = "Whether a new subnetwork will be created automatically for the cluster. This field is only applicable when `use_ip_aliases` is true.",
          type = "boolean",
        },
        ipv6AccessType = {
          description = "The ipv6 access type (internal or external) when create_subnetwork is true",
          enum = {
            "IPV6_ACCESS_TYPE_UNSPECIFIED",
            "INTERNAL",
            "EXTERNAL",
          },
          enumDescriptions = {
            "Default value, will be defaulted as type external.",
            "Access type internal (all v6 addresses are internal IPs)",
            "Access type external (all v6 addresses are external IPs)",
          },
          type = "string",
        },
        nodeIpv4Cidr = {
          description = "This field is deprecated, use node_ipv4_cidr_block.",
          type = "string",
        },
        nodeIpv4CidrBlock = {
          description = "The IP address range of the instance IPs in this cluster. This is applicable only if `create_subnetwork` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.",
          type = "string",
        },
        servicesIpv4Cidr = {
          description = "This field is deprecated, use services_ipv4_cidr_block.",
          type = "string",
        },
        servicesIpv4CidrBlock = {
          description = "The IP address range of the services IPs in this cluster. If blank, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.",
          type = "string",
        },
        servicesSecondaryRangeName = {
          description = "The name of the secondary range to be used as for the services CIDR block. The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork. This field is only applicable with use_ip_aliases is true and create_subnetwork is false.",
          type = "string",
        },
        stackType = {
          description = "The IP stack type of the cluster",
          enum = {
            "STACK_TYPE_UNSPECIFIED",
            "IPV4",
            "IPV4_IPV6",
          },
          enumDescriptions = {
            "Default value, will be defaulted as IPV4 only",
            "Cluster is IPV4 only",
            "Cluster can use both IPv4 and IPv6",
          },
          type = "string",
        },
        subnetworkName = {
          description = "A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then an automatic name will be chosen for the new subnetwork.",
          type = "string",
        },
        tpuIpv4CidrBlock = {
          description = "The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatically chosen with the default size. This field is only applicable when `use_ip_aliases` is true. If unspecified, the range will use the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use.",
          type = "string",
        },
        useIpAliases = {
          description = "Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_routes. It cannot be true if use_routes is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode",
          type = "boolean",
        },
        useRoutes = {
          description = "Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_aliases. It cannot be true if use_ip_aliases is true. If both use_ip_aliases and use_routes are false, then the server picks the default IP allocation mode",
          type = "boolean",
        },
      },
      type = "object",
    },
    IdentityServiceConfig = {
      description = "IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API",
      id = "IdentityServiceConfig",
      properties = {
        enabled = {
          description = "Whether to enable the Identity Service component",
          type = "boolean",
        },
      },
      type = "object",
    },
    IntraNodeVisibilityConfig = {
      description = "IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.",
      id = "IntraNodeVisibilityConfig",
      properties = {
        enabled = {
          description = "Enables intra node visibility for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Jwk = {
      description = "Jwk is a JSON Web Key as specified in RFC 7517",
      id = "Jwk",
      properties = {
        alg = {
          description = "Algorithm.",
          type = "string",
        },
        crv = {
          description = "Used for ECDSA keys.",
          type = "string",
        },
        e = {
          description = "Used for RSA keys.",
          type = "string",
        },
        kid = {
          description = "Key ID.",
          type = "string",
        },
        kty = {
          description = "Key Type.",
          type = "string",
        },
        n = {
          description = "Used for RSA keys.",
          type = "string",
        },
        use = {
          description = "Permitted uses for the public keys.",
          type = "string",
        },
        x = {
          description = "Used for ECDSA keys.",
          type = "string",
        },
        y = {
          description = "Used for ECDSA keys.",
          type = "string",
        },
      },
      type = "object",
    },
    KubernetesDashboard = {
      description = "Configuration for the Kubernetes Dashboard.",
      id = "KubernetesDashboard",
      properties = {
        disabled = {
          description = "Whether the Kubernetes Dashboard is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LegacyAbac = {
      description = "Configuration for the legacy Attribute Based Access Control authorization mode.",
      id = "LegacyAbac",
      properties = {
        enabled = {
          description = "Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LinuxNodeConfig = {
      description = "Parameters that can be configured on Linux nodes.",
      id = "LinuxNodeConfig",
      properties = {
        cgroupMode = {
          description = "cgroup_mode specifies the cgroup mode to be used on the node.",
          enum = {
            "CGROUP_MODE_UNSPECIFIED",
            "CGROUP_MODE_V1",
            "CGROUP_MODE_V2",
          },
          enumDescriptions = {
            "CGROUP_MODE_UNSPECIFIED is when unspecified cgroup configuration is used. The default for the GKE node OS image will be used.",
            "CGROUP_MODE_V1 specifies to use cgroupv1 for the cgroup configuration on the node image.",
            "CGROUP_MODE_V2 specifies to use cgroupv2 for the cgroup configuration on the node image.",
          },
          type = "string",
        },
        sysctls = {
          additionalProperties = {
            type = "string",
          },
          description = "The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.busy_poll net.core.busy_read net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse",
          type = "object",
        },
      },
      type = "object",
    },
    ListClustersResponse = {
      description = "ListClustersResponse is the result of ListClustersRequest.",
      id = "ListClustersResponse",
      properties = {
        clusters = {
          description = "A list of clusters in the project in the specified zone, or across all ones.",
          items = {
            ["$ref"] = "Cluster",
          },
          type = "array",
        },
        missingZones = {
          description = "If any zones are listed here, the list of clusters returned may be missing those zones.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListNodePoolsResponse = {
      description = "ListNodePoolsResponse is the result of ListNodePoolsRequest.",
      id = "ListNodePoolsResponse",
      properties = {
        nodePools = {
          description = "A list of node pools for a cluster.",
          items = {
            ["$ref"] = "NodePool",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "ListOperationsResponse is the result of ListOperationsRequest.",
      id = "ListOperationsResponse",
      properties = {
        missingZones = {
          description = "If any zones are listed here, the list of operations returned may be missing the operations from those zones.",
          items = {
            type = "string",
          },
          type = "array",
        },
        operations = {
          description = "A list of operations in the project in the specified zone.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUsableSubnetworksResponse = {
      description = "ListUsableSubnetworksResponse is the response of ListUsableSubnetworksRequest.",
      id = "ListUsableSubnetworksResponse",
      properties = {
        nextPageToken = {
          description = "This token allows you to get the next page of results for list requests. If the number of results is larger than `page_size`, use the `next_page_token` as a value for the query parameter `page_token` in the next request. The value will become empty when there are no more pages.",
          type = "string",
        },
        subnetworks = {
          description = "A list of usable subnetworks in the specified network project.",
          items = {
            ["$ref"] = "UsableSubnetwork",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalNvmeSsdBlockConfig = {
      description = "LocalNvmeSsdBlockConfig contains configuration for using raw-block local NVMe SSD.",
      id = "LocalNvmeSsdBlockConfig",
      properties = {
        localSsdCount = {
          description = "The number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    LoggingComponentConfig = {
      description = "LoggingComponentConfig is cluster logging component configuration.",
      id = "LoggingComponentConfig",
      properties = {
        enableComponents = {
          description = "Select components to collect logs. An empty set would disable all logging.",
          items = {
            enum = {
              "COMPONENT_UNSPECIFIED",
              "SYSTEM_COMPONENTS",
              "WORKLOADS",
              "APISERVER",
              "SCHEDULER",
              "CONTROLLER_MANAGER",
            },
            enumDescriptions = {
              "Default value. This shouldn't be used.",
              "system components",
              "workloads",
              "kube-apiserver",
              "kube-scheduler",
              "kube-controller-manager",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LoggingConfig = {
      description = "LoggingConfig is cluster logging configuration.",
      id = "LoggingConfig",
      properties = {
        componentConfig = {
          ["$ref"] = "LoggingComponentConfig",
          description = "Logging components configuration",
        },
      },
      type = "object",
    },
    LoggingVariantConfig = {
      description = "LoggingVariantConfig specifies the behaviour of the logging component.",
      id = "LoggingVariantConfig",
      properties = {
        variant = {
          description = "Logging variant deployed on nodes.",
          enum = {
            "VARIANT_UNSPECIFIED",
            "DEFAULT",
            "MAX_THROUGHPUT",
          },
          enumDescriptions = {
            "Default value. This shouldn't be used.",
            "default logging variant.",
            "maximum logging throughput variant.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MaintenanceExclusionOptions = {
      description = "Represents the Maintenance exclusion option.",
      id = "MaintenanceExclusionOptions",
      properties = {
        scope = {
          description = "Scope specifies the upgrade scope which upgrades are blocked by the exclusion.",
          enum = {
            "NO_UPGRADES",
            "NO_MINOR_UPGRADES",
            "NO_MINOR_OR_NODE_UPGRADES",
          },
          enumDescriptions = {
            "NO_UPGRADES excludes all upgrades, including patch upgrades and minor upgrades across control planes and nodes. This is the default exclusion behavior.",
            "NO_MINOR_UPGRADES excludes all minor upgrades for the cluster, only patches are allowed.",
            "NO_MINOR_OR_NODE_UPGRADES excludes all minor upgrades for the cluster, and also exclude all node pool upgrades. Only control plane patches are allowed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MaintenancePolicy = {
      description = "MaintenancePolicy defines the maintenance policy to be used for the cluster.",
      id = "MaintenancePolicy",
      properties = {
        resourceVersion = {
          description = "A hash identifying the version of this policy, so that updates to fields of the policy won't accidentally undo intermediate changes (and so that users of the API unaware of some fields won't accidentally remove other fields). Make a `get()` request to the cluster to get the current resource version and include it with requests to set the policy.",
          type = "string",
        },
        window = {
          ["$ref"] = "MaintenanceWindow",
          description = "Specifies the maintenance window in which maintenance may be performed.",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "MaintenanceWindow defines the maintenance window to be used for the cluster.",
      id = "MaintenanceWindow",
      properties = {
        dailyMaintenanceWindow = {
          ["$ref"] = "DailyMaintenanceWindow",
          description = "DailyMaintenanceWindow specifies a daily maintenance operation window.",
        },
        maintenanceExclusions = {
          additionalProperties = {
            ["$ref"] = "TimeWindow",
          },
          description = "Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.",
          type = "object",
        },
        recurringWindow = {
          ["$ref"] = "RecurringTimeWindow",
          description = "RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.",
        },
      },
      type = "object",
    },
    ManagedPrometheusConfig = {
      description = "ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.",
      id = "ManagedPrometheusConfig",
      properties = {
        enabled = {
          description = "Enable Managed Collection.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MasterAuth = {
      description = "The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.",
      id = "MasterAuth",
      properties = {
        clientCertificate = {
          description = "[Output only] Base64-encoded public certificate used by clients to authenticate to the cluster endpoint.",
          type = "string",
        },
        clientCertificateConfig = {
          ["$ref"] = "ClientCertificateConfig",
          description = "Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.",
        },
        clientKey = {
          description = "[Output only] Base64-encoded private key used by clients to authenticate to the cluster endpoint.",
          type = "string",
        },
        clusterCaCertificate = {
          description = "[Output only] Base64-encoded public certificate that is the root of trust for the cluster.",
          type = "string",
        },
        password = {
          description = "The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication",
          type = "string",
        },
        username = {
          description = "The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication",
          type = "string",
        },
      },
      type = "object",
    },
    MasterAuthorizedNetworksConfig = {
      description = "Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.",
      id = "MasterAuthorizedNetworksConfig",
      properties = {
        cidrBlocks = {
          description = "cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.",
          items = {
            ["$ref"] = "CidrBlock",
          },
          type = "array",
        },
        enabled = {
          description = "Whether or not master authorized networks is enabled.",
          type = "boolean",
        },
        gcpPublicCidrsAccessEnabled = {
          description = "Whether master is accessbile via Google Compute Engine Public IP addresses.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MaxPodsConstraint = {
      description = "Constraints applied to pods.",
      id = "MaxPodsConstraint",
      properties = {
        maxPodsPerNode = {
          description = "Constraint enforced on the max num of pods per node.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MeshCertificates = {
      description = "Configuration for issuance of mTLS keys and certificates to Kubernetes pods.",
      id = "MeshCertificates",
      properties = {
        enableCertificates = {
          description = "enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).",
          type = "boolean",
        },
      },
      type = "object",
    },
    Metric = {
      description = "Progress metric is (string, int|float|string) pair.",
      id = "Metric",
      properties = {
        doubleValue = {
          description = "For metrics with floating point value.",
          format = "double",
          type = "number",
        },
        intValue = {
          description = "For metrics with integer value.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Required. Metric name, e.g., \"nodes total\", \"percent done\".",
          type = "string",
        },
        stringValue = {
          description = "For metrics with custom values (ratios, visual progress, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    MonitoringComponentConfig = {
      description = "MonitoringComponentConfig is cluster monitoring component configuration.",
      id = "MonitoringComponentConfig",
      properties = {
        enableComponents = {
          description = "Select components to collect metrics. An empty set would disable all monitoring.",
          items = {
            enum = {
              "COMPONENT_UNSPECIFIED",
              "SYSTEM_COMPONENTS",
              "APISERVER",
              "SCHEDULER",
              "CONTROLLER_MANAGER",
            },
            enumDescriptions = {
              "Default value. This shouldn't be used.",
              "system components",
              "kube-apiserver",
              "kube-scheduler",
              "kube-controller-manager",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MonitoringConfig = {
      description = "MonitoringConfig is cluster monitoring configuration.",
      id = "MonitoringConfig",
      properties = {
        componentConfig = {
          ["$ref"] = "MonitoringComponentConfig",
          description = "Monitoring components configuration",
        },
        managedPrometheusConfig = {
          ["$ref"] = "ManagedPrometheusConfig",
          description = "Enable Google Cloud Managed Service for Prometheus in the cluster.",
        },
      },
      type = "object",
    },
    NetworkConfig = {
      description = "NetworkConfig reports the relative names of network & subnetwork.",
      id = "NetworkConfig",
      properties = {
        datapathProvider = {
          description = "The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.",
          enum = {
            "DATAPATH_PROVIDER_UNSPECIFIED",
            "LEGACY_DATAPATH",
            "ADVANCED_DATAPATH",
          },
          enumDescriptions = {
            "Default value.",
            "Use the IPTables implementation based on kube-proxy.",
            "Use the eBPF based GKE Dataplane V2 with additional features. See the [GKE Dataplane V2 documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/dataplane-v2) for more.",
          },
          type = "string",
        },
        defaultSnatStatus = {
          ["$ref"] = "DefaultSnatStatus",
          description = "Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when default_snat_status is disabled. When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic.",
        },
        dnsConfig = {
          ["$ref"] = "DNSConfig",
          description = "DNSConfig contains clusterDNS config for this cluster.",
        },
        enableIntraNodeVisibility = {
          description = "Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.",
          type = "boolean",
        },
        enableL4ilbSubsetting = {
          description = "Whether L4ILB Subsetting is enabled for this cluster.",
          type = "boolean",
        },
        gatewayApiConfig = {
          ["$ref"] = "GatewayAPIConfig",
          description = "GatewayAPIConfig contains the desired config of Gateway API on this cluster.",
        },
        network = {
          description = "Output only. The relative name of the Google Compute Engine network(https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. Example: projects/my-project/global/networks/my-network",
          type = "string",
        },
        privateIpv6GoogleAccess = {
          description = "The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4)",
          enum = {
            "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED",
            "PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED",
            "PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE",
            "PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL",
          },
          enumDescriptions = {
            "Default value. Same as DISABLED",
            "No private access to or from Google Services",
            "Enables private IPv6 access to Google Services from GKE",
            "Enables priate IPv6 access to and from Google Services",
          },
          type = "string",
        },
        serviceExternalIpsConfig = {
          ["$ref"] = "ServiceExternalIPsConfig",
          description = "ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not.",
        },
        subnetwork = {
          description = "Output only. The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/vpc) to which the cluster is connected. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkPerformanceConfig = {
      description = "Configuration of all network bandwidth tiers",
      id = "NetworkPerformanceConfig",
      properties = {
        totalEgressBandwidthTier = {
          description = "Specifies the total network bandwidth tier for the NodePool.",
          enum = {
            "TIER_UNSPECIFIED",
            "TIER_1",
          },
          enumDescriptions = {
            "Default value",
            "Higher bandwidth, actual values based on VM size.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NetworkPolicy = {
      description = "Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/",
      id = "NetworkPolicy",
      properties = {
        enabled = {
          description = "Whether network policy is enabled on the cluster.",
          type = "boolean",
        },
        provider = {
          description = "The selected network policy provider.",
          enum = {
            "PROVIDER_UNSPECIFIED",
            "CALICO",
          },
          enumDescriptions = {
            "Not set",
            "Tigera (Calico Felix).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NetworkPolicyConfig = {
      description = "Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.",
      id = "NetworkPolicyConfig",
      properties = {
        disabled = {
          description = "Whether NetworkPolicy is enabled for this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    NetworkTags = {
      description = "Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.",
      id = "NetworkTags",
      properties = {
        tags = {
          description = "List of network tags.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NodeConfig = {
      description = "Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.",
      id = "NodeConfig",
      properties = {
        accelerators = {
          description = "A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.",
          items = {
            ["$ref"] = "AcceleratorConfig",
          },
          type = "array",
        },
        advancedMachineFeatures = {
          ["$ref"] = "AdvancedMachineFeatures",
          description = "Advanced features for the Compute Engine VM.",
        },
        bootDiskKmsKey = {
          description = " The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption",
          type = "string",
        },
        confidentialNodes = {
          ["$ref"] = "ConfidentialNodes",
          description = "Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.",
        },
        diskSizeGb = {
          description = "Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.",
          format = "int32",
          type = "integer",
        },
        diskType = {
          description = "Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'",
          type = "string",
        },
        ephemeralStorageLocalSsdConfig = {
          ["$ref"] = "EphemeralStorageLocalSsdConfig",
          description = "Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.",
        },
        fastSocket = {
          ["$ref"] = "FastSocket",
          description = "Enable or disable NCCL fast socket for the node pool.",
        },
        gcfsConfig = {
          ["$ref"] = "GcfsConfig",
          description = "Google Container File System (image streaming) configs.",
        },
        gvnic = {
          ["$ref"] = "VirtualNIC",
          description = "Enable or disable gvnic in the node pool.",
        },
        imageType = {
          description = "The image type to use for this node. Note that for a given image type, the latest version of it will be used.",
          type = "string",
        },
        kubeletConfig = {
          ["$ref"] = "NodeKubeletConfig",
          description = "Node kubelet configs.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/",
          type = "object",
        },
        linuxNodeConfig = {
          ["$ref"] = "LinuxNodeConfig",
          description = "Parameters that can be configured on Linux nodes.",
        },
        localNvmeSsdBlockConfig = {
          ["$ref"] = "LocalNvmeSsdBlockConfig",
          description = "Parameters for using raw-block Local NVMe SSDs.",
        },
        localSsdCount = {
          description = "The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.",
          format = "int32",
          type = "integer",
        },
        loggingConfig = {
          ["$ref"] = "NodePoolLoggingConfig",
          description = "Logging configuration.",
        },
        machineType = {
          description = "The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types) If unspecified, the default machine type is `e2-medium`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - \"cluster-location\" - \"cluster-name\" - \"cluster-uid\" - \"configure-sh\" - \"containerd-configure-sh\" - \"enable-os-login\" - \"gci-ensure-gke-docker\" - \"gci-metrics-enabled\" - \"gci-update-strategy\" - \"instance-template\" - \"kube-env\" - \"startup-script\" - \"user-data\" - \"disable-address-manager\" - \"windows-startup-script-ps1\" - \"common-psm1\" - \"k8s-node-setup-psm1\" - \"install-ssh-psm1\" - \"user-profile-psm1\" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.",
          type = "object",
        },
        minCpuPlatform = {
          description = "Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: \"Intel Haswell\"` or `minCpuPlatform: \"Intel Sandy Bridge\"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)",
          type = "string",
        },
        nodeGroup = {
          description = "Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).",
          type = "string",
        },
        oauthScopes = {
          description = "The set of Google API scopes to be made available on all of the node VMs under the \"default\" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.",
          items = {
            type = "string",
          },
          type = "array",
        },
        preemptible = {
          description = "Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.",
          type = "boolean",
        },
        reservationAffinity = {
          ["$ref"] = "ReservationAffinity",
          description = "The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.",
        },
        resourceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "The resource labels for the node pool to use to annotate any related Google Compute Engine resources.",
          type = "object",
        },
        sandboxConfig = {
          ["$ref"] = "SandboxConfig",
          description = "Sandbox configuration for this node.",
        },
        serviceAccount = {
          description = "The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the \"default\" service account is used.",
          type = "string",
        },
        shieldedInstanceConfig = {
          ["$ref"] = "ShieldedInstanceConfig",
          description = "Shielded Instance options.",
        },
        spot = {
          description = "Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.",
          type = "boolean",
        },
        tags = {
          description = "The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.",
          items = {
            type = "string",
          },
          type = "array",
        },
        taints = {
          description = "List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/",
          items = {
            ["$ref"] = "NodeTaint",
          },
          type = "array",
        },
        windowsNodeConfig = {
          ["$ref"] = "WindowsNodeConfig",
          description = "Parameters that can be configured on Windows nodes.",
        },
        workloadMetadataConfig = {
          ["$ref"] = "WorkloadMetadataConfig",
          description = "The workload metadata configuration for this node.",
        },
      },
      type = "object",
    },
    NodeConfigDefaults = {
      description = "Subset of NodeConfig message that has defaults.",
      id = "NodeConfigDefaults",
      properties = {
        gcfsConfig = {
          ["$ref"] = "GcfsConfig",
          description = "GCFS (Google Container File System, also known as Riptide) options.",
        },
        loggingConfig = {
          ["$ref"] = "NodePoolLoggingConfig",
          description = "Logging configuration for node pools.",
        },
      },
      type = "object",
    },
    NodeKubeletConfig = {
      description = "Node kubelet configs.",
      id = "NodeKubeletConfig",
      properties = {
        cpuCfsQuota = {
          description = "Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is 'true' if unspecified.",
          type = "boolean",
        },
        cpuCfsQuotaPeriod = {
          description = "Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as \"300ms\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\". The value must be a positive duration.",
          type = "string",
        },
        cpuManagerPolicy = {
          description = "Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/ The following values are allowed. * \"none\": the default, which represents the existing scheduling behavior. * \"static\": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is 'none' if unspecified.",
          type = "string",
        },
        podPidsLimit = {
          description = "Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    NodeLabels = {
      description = "Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).",
      id = "NodeLabels",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of node label keys and node label values.",
          type = "object",
        },
      },
      type = "object",
    },
    NodeManagement = {
      description = "NodeManagement defines the set of node management services turned on for the node pool.",
      id = "NodeManagement",
      properties = {
        autoRepair = {
          description = "A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.",
          type = "boolean",
        },
        autoUpgrade = {
          description = "A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.",
          type = "boolean",
        },
        upgradeOptions = {
          ["$ref"] = "AutoUpgradeOptions",
          description = "Specifies the Auto Upgrade knobs for the node pool.",
        },
      },
      type = "object",
    },
    NodeNetworkConfig = {
      description = "Parameters for node pool-level network config.",
      id = "NodeNetworkConfig",
      properties = {
        createPodRange = {
          description = "Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided for `pod_range` and `pod_ipv4_cidr_block` if they are not specified. If neither `create_pod_range` or `pod_range` are specified, the cluster-level default (`ip_allocation_policy.cluster_ipv4_cidr_block`) is used. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.",
          type = "boolean",
        },
        enablePrivateNodes = {
          description = "Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the value is derived from cluster.privateClusterConfig.enablePrivateNodes",
          type = "boolean",
        },
        networkPerformanceConfig = {
          ["$ref"] = "NetworkPerformanceConfig",
          description = "Network bandwidth tier configuration.",
        },
        podIpv4CidrBlock = {
          description = "The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true. Set to blank to have a range chosen with the default size. Set to /netmask (e.g. `/14`) to have a range chosen with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) to pick a specific range to use. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.",
          type = "string",
        },
        podRange = {
          description = "The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the new range. If `create_pod_range` is false, uses an existing secondary range with this ID. Only applicable if `ip_allocation_policy.use_ip_aliases` is true. This field cannot be changed after the node pool has been created.",
          type = "string",
        },
      },
      type = "object",
    },
    NodePool = {
      description = "NodePool contains the name and configuration for a cluster's node pool. Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.",
      id = "NodePool",
      properties = {
        autoscaling = {
          ["$ref"] = "NodePoolAutoscaling",
          description = "Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration is present.",
        },
        conditions = {
          description = "Which conditions caused the current node pool state.",
          items = {
            ["$ref"] = "StatusCondition",
          },
          type = "array",
        },
        config = {
          ["$ref"] = "NodeConfig",
          description = "The node configuration of the pool.",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of node pool fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        initialNodeCount = {
          description = "The initial node count for the pool. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota.",
          format = "int32",
          type = "integer",
        },
        instanceGroupUrls = {
          description = "[Output only] The resource URLs of the [managed instance groups](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances) associated with this node pool. During the node pool blue-green upgrade operation, the URLs contain both blue and green resources.",
          items = {
            type = "string",
          },
          type = "array",
        },
        locations = {
          description = "The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes should be located. If this value is unspecified during node pool creation, the [Cluster.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#Cluster.FIELDS.locations) value will be used, instead. Warning: changing node pool locations will result in nodes being added and/or removed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        management = {
          ["$ref"] = "NodeManagement",
          description = "NodeManagement configuration for this NodePool.",
        },
        maxPodsConstraint = {
          ["$ref"] = "MaxPodsConstraint",
          description = "The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool.",
        },
        name = {
          description = "The name of the node pool.",
          type = "string",
        },
        networkConfig = {
          ["$ref"] = "NodeNetworkConfig",
          description = "Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults.",
        },
        placementPolicy = {
          ["$ref"] = "PlacementPolicy",
          description = "Specifies the node placement policy.",
        },
        podIpv4CidrSize = {
          description = "[Output only] The pod CIDR block size per node in this node pool.",
          format = "int32",
          type = "integer",
        },
        selfLink = {
          description = "[Output only] Server-defined URL for the resource.",
          type = "string",
        },
        status = {
          description = "[Output only] The status of the nodes in this pool instance.",
          enum = {
            "STATUS_UNSPECIFIED",
            "PROVISIONING",
            "RUNNING",
            "RUNNING_WITH_ERROR",
            "RECONCILING",
            "STOPPING",
            "ERROR",
          },
          enumDescriptions = {
            "Not set.",
            "The PROVISIONING state indicates the node pool is being created.",
            "The RUNNING state indicates the node pool has been created and is fully usable.",
            "The RUNNING_WITH_ERROR state indicates the node pool has been created and is partially usable. Some error state has occurred and some functionality may be impaired. Customer may need to reissue a request or trigger a new update.",
            "The RECONCILING state indicates that some work is actively being done on the node pool, such as upgrading node software. Details can be found in the `statusMessage` field.",
            "The STOPPING state indicates the node pool is being deleted.",
            "The ERROR state indicates the node pool may be unusable. Details can be found in the `statusMessage` field.",
          },
          type = "string",
        },
        statusMessage = {
          description = "[Output only] Deprecated. Use conditions instead. Additional information about the current status of this node pool instance, if available.",
          type = "string",
        },
        updateInfo = {
          ["$ref"] = "UpdateInfo",
          description = "Output only. [Output only] Update info contains relevant information during a node pool update.",
          readOnly = true,
        },
        upgradeSettings = {
          ["$ref"] = "UpgradeSettings",
          description = "Upgrade settings control disruption and speed of the upgrade.",
        },
        version = {
          description = "The version of the Kubernetes of this node.",
          type = "string",
        },
      },
      type = "object",
    },
    NodePoolAutoConfig = {
      description = "Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.",
      id = "NodePoolAutoConfig",
      properties = {
        networkTags = {
          ["$ref"] = "NetworkTags",
          description = "The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster creation. Each tag within the list must comply with RFC1035.",
        },
      },
      type = "object",
    },
    NodePoolAutoscaling = {
      description = "NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.",
      id = "NodePoolAutoscaling",
      properties = {
        autoprovisioned = {
          description = "Can this node pool be deleted automatically.",
          type = "boolean",
        },
        enabled = {
          description = "Is autoscaling enabled for this node pool.",
          type = "boolean",
        },
        locationPolicy = {
          description = "Location policy used when scaling up a nodepool.",
          enum = {
            "LOCATION_POLICY_UNSPECIFIED",
            "BALANCED",
            "ANY",
          },
          enumDescriptions = {
            "Not set.",
            "BALANCED is a best effort policy that aims to balance the sizes of different zones.",
            "ANY policy picks zones that have the highest capacity available.",
          },
          type = "string",
        },
        maxNodeCount = {
          description = "Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.",
          format = "int32",
          type = "integer",
        },
        minNodeCount = {
          description = "Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.",
          format = "int32",
          type = "integer",
        },
        totalMaxNodeCount = {
          description = "Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.",
          format = "int32",
          type = "integer",
        },
        totalMinNodeCount = {
          description = "Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    NodePoolDefaults = {
      description = "Subset of Nodepool message that has defaults.",
      id = "NodePoolDefaults",
      properties = {
        nodeConfigDefaults = {
          ["$ref"] = "NodeConfigDefaults",
          description = "Subset of NodeConfig message that has defaults.",
        },
      },
      type = "object",
    },
    NodePoolLoggingConfig = {
      description = "NodePoolLoggingConfig specifies logging configuration for nodepools.",
      id = "NodePoolLoggingConfig",
      properties = {
        variantConfig = {
          ["$ref"] = "LoggingVariantConfig",
          description = "Logging variant configuration.",
        },
      },
      type = "object",
    },
    NodeTaint = {
      description = "Kubernetes taint is comprised of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.",
      id = "NodeTaint",
      properties = {
        effect = {
          description = "Effect for taint.",
          enum = {
            "EFFECT_UNSPECIFIED",
            "NO_SCHEDULE",
            "PREFER_NO_SCHEDULE",
            "NO_EXECUTE",
          },
          enumDescriptions = {
            "Not set",
            "NoSchedule",
            "PreferNoSchedule",
            "NoExecute",
          },
          type = "string",
        },
        key = {
          description = "Key for taint.",
          type = "string",
        },
        value = {
          description = "Value for taint.",
          type = "string",
        },
      },
      type = "object",
    },
    NodeTaints = {
      description = "Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).",
      id = "NodeTaints",
      properties = {
        taints = {
          description = "List of node taints.",
          items = {
            ["$ref"] = "NodeTaint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NotificationConfig = {
      description = "NotificationConfig is the configuration of notifications.",
      id = "NotificationConfig",
      properties = {
        pubsub = {
          ["$ref"] = "PubSub",
          description = "Notification config for Pub/Sub.",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This operation resource represents operations that may have happened or are happening on the cluster. All fields are output only.",
      id = "Operation",
      properties = {
        clusterConditions = {
          description = "Which conditions caused the current cluster state. Deprecated. Use field error instead.",
          items = {
            ["$ref"] = "StatusCondition",
          },
          type = "array",
        },
        detail = {
          description = "Detailed operation progress, if available.",
          type = "string",
        },
        endTime = {
          description = "[Output only] The time the operation completed, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure.",
        },
        location = {
          description = "[Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.",
          type = "string",
        },
        name = {
          description = "The server-assigned ID for the operation.",
          type = "string",
        },
        nodepoolConditions = {
          description = "Which conditions caused the current node pool state. Deprecated. Use field error instead.",
          items = {
            ["$ref"] = "StatusCondition",
          },
          type = "array",
        },
        operationType = {
          description = "The operation type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CREATE_CLUSTER",
            "DELETE_CLUSTER",
            "UPGRADE_MASTER",
            "UPGRADE_NODES",
            "REPAIR_CLUSTER",
            "UPDATE_CLUSTER",
            "CREATE_NODE_POOL",
            "DELETE_NODE_POOL",
            "SET_NODE_POOL_MANAGEMENT",
            "AUTO_REPAIR_NODES",
            "AUTO_UPGRADE_NODES",
            "SET_LABELS",
            "SET_MASTER_AUTH",
            "SET_NODE_POOL_SIZE",
            "SET_NETWORK_POLICY",
            "SET_MAINTENANCE_POLICY",
          },
          enumDescriptions = {
            "Not set.",
            "Cluster create.",
            "Cluster delete.",
            "A master upgrade.",
            "A node upgrade.",
            "Cluster repair.",
            "Cluster update.",
            "Node pool create.",
            "Node pool delete.",
            "Set node pool management.",
            "Automatic node pool repair.",
            "Automatic node upgrade.",
            "Set labels.",
            "Set/generate master auth materials",
            "Set node pool size.",
            "Updates network policy for a cluster.",
            "Set the maintenance policy.",
          },
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "Output only. [Output only] Progress information for an operation.",
          readOnly = true,
        },
        selfLink = {
          description = "Server-defined URL for the resource.",
          type = "string",
        },
        startTime = {
          description = "[Output only] The time the operation started, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          type = "string",
        },
        status = {
          description = "The current status of the operation.",
          enum = {
            "STATUS_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
            "ABORTING",
          },
          enumDescriptions = {
            "Not set.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
            "The operation is aborting.",
          },
          type = "string",
        },
        statusMessage = {
          description = "Output only. If an error has occurred, a textual description of the error. Deprecated. Use the field error instead.",
          readOnly = true,
          type = "string",
        },
        targetLink = {
          description = "Server-defined URL for the target of the operation.",
          type = "string",
        },
        zone = {
          description = "The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the operation is taking place. This field is deprecated, use location instead.",
          type = "string",
        },
      },
      type = "object",
    },
    OperationProgress = {
      description = "Information about operation (or operation stage) progress.",
      id = "OperationProgress",
      properties = {
        metrics = {
          description = "Progress metric bundle, for example: metrics: [{name: \"nodes done\", int_value: 15}, {name: \"nodes total\", int_value: 32}] or metrics: [{name: \"progress\", double_value: 0.56}, {name: \"progress scale\", double_value: 1.0}]",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        name = {
          description = "A non-parameterized string describing an operation stage. Unset for single-stage operations.",
          type = "string",
        },
        stages = {
          description = "Substages of an operation or a stage.",
          items = {
            ["$ref"] = "OperationProgress",
          },
          type = "array",
        },
        status = {
          description = "Status of an operation stage. Unset for single-stage operations.",
          enum = {
            "STATUS_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
            "ABORTING",
          },
          enumDescriptions = {
            "Not set.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
            "The operation is aborting.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PlacementPolicy = {
      description = "PlacementPolicy defines the placement policy used by the node pool.",
      id = "PlacementPolicy",
      properties = {
        type = {
          description = "The type of placement.",
          enum = {
            "TYPE_UNSPECIFIED",
            "COMPACT",
          },
          enumDescriptions = {
            "TYPE_UNSPECIFIED specifies no requirements on nodes placement.",
            "COMPACT specifies node placement in the same availability domain to ensure low communication latency.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PrivateClusterConfig = {
      description = "Configuration options for private clusters.",
      id = "PrivateClusterConfig",
      properties = {
        enablePrivateEndpoint = {
          description = "Whether the master's internal IP address is used as the cluster endpoint.",
          type = "boolean",
        },
        enablePrivateNodes = {
          description = "Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 private addresses and communicate with the master via private networking.",
          type = "boolean",
        },
        masterGlobalAccessConfig = {
          ["$ref"] = "PrivateClusterMasterGlobalAccessConfig",
          description = "Controls master global access settings.",
        },
        masterIpv4CidrBlock = {
          description = "The IP range in CIDR notation to use for the hosted master network. This range will be used for assigning internal IP addresses to the master or set of masters, as well as the ILB VIP. This range must not overlap with any other ranges in use within the cluster's network.",
          type = "string",
        },
        peeringName = {
          description = "Output only. The peering name in the customer VPC used by this cluster.",
          type = "string",
        },
        privateEndpoint = {
          description = "Output only. The internal IP address of this cluster's master endpoint.",
          type = "string",
        },
        privateEndpointSubnetwork = {
          description = "Subnet to provision the master's private endpoint during cluster creation. Specified in projects/*/regions/*/subnetworks/* format.",
          type = "string",
        },
        publicEndpoint = {
          description = "Output only. The external IP address of this cluster's master endpoint.",
          type = "string",
        },
      },
      type = "object",
    },
    PrivateClusterMasterGlobalAccessConfig = {
      description = "Configuration for controlling master global access settings.",
      id = "PrivateClusterMasterGlobalAccessConfig",
      properties = {
        enabled = {
          description = "Whenever master is accessible globally or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PubSub = {
      description = "Pub/Sub specific notification config.",
      id = "PubSub",
      properties = {
        enabled = {
          description = "Enable notifications for Pub/Sub.",
          type = "boolean",
        },
        filter = {
          ["$ref"] = "Filter",
          description = "Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent",
        },
        topic = {
          description = "The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.",
          type = "string",
        },
      },
      type = "object",
    },
    RecurringTimeWindow = {
      description = "Represents an arbitrary window of time that recurs.",
      id = "RecurringTimeWindow",
      properties = {
        recurrence = {
          description = "An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how this window reccurs. They go on for the span of time between the start and end time. For example, to have something repeat every weekday, you'd use: `FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR` To repeat some window daily (equivalent to the DailyMaintenanceWindow): `FREQ=DAILY` For the first weekend of every month: `FREQ=MONTHLY;BYSETPOS=1;BYDAY=SA,SU` This specifies how frequently the window starts. Eg, if you wanted to have a 9-5 UTC-4 window every weekday, you'd use something like: ``` start time = 2019-01-01T09:00:00-0400 end time = 2019-01-01T17:00:00-0400 recurrence = FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR ``` Windows can span multiple days. Eg, to make the window encompass every weekend from midnight Saturday till the last minute of Sunday UTC: ``` start time = 2019-01-05T00:00:00Z end time = 2019-01-07T23:59:00Z recurrence = FREQ=WEEKLY;BYDAY=SA ``` Note the start and end time's specific dates are largely arbitrary except to specify duration of the window and when it first starts. The FREQ values of HOURLY, MINUTELY, and SECONDLY are not supported.",
          type = "string",
        },
        window = {
          ["$ref"] = "TimeWindow",
          description = "The window of the first recurrence.",
        },
      },
      type = "object",
    },
    ReleaseChannel = {
      description = "ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.",
      id = "ReleaseChannel",
      properties = {
        channel = {
          description = "channel specifies which release channel the cluster is subscribed to.",
          enum = {
            "UNSPECIFIED",
            "RAPID",
            "REGULAR",
            "STABLE",
          },
          enumDescriptions = {
            "No channel specified.",
            "RAPID channel is offered on an early access basis for customers who want to test new releases. WARNING: Versions available in the RAPID Channel may be subject to unresolved issues with no known workaround and are not subject to any SLAs.",
            "Clusters subscribed to REGULAR receive versions that are considered GA quality. REGULAR is intended for production users who want to take advantage of new features.",
            "Clusters subscribed to STABLE receive versions that are known to be stable and reliable in production.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReleaseChannelConfig = {
      description = "ReleaseChannelConfig exposes configuration for a release channel.",
      id = "ReleaseChannelConfig",
      properties = {
        channel = {
          description = "The release channel this configuration applies to.",
          enum = {
            "UNSPECIFIED",
            "RAPID",
            "REGULAR",
            "STABLE",
          },
          enumDescriptions = {
            "No channel specified.",
            "RAPID channel is offered on an early access basis for customers who want to test new releases. WARNING: Versions available in the RAPID Channel may be subject to unresolved issues with no known workaround and are not subject to any SLAs.",
            "Clusters subscribed to REGULAR receive versions that are considered GA quality. REGULAR is intended for production users who want to take advantage of new features.",
            "Clusters subscribed to STABLE receive versions that are known to be stable and reliable in production.",
          },
          type = "string",
        },
        defaultVersion = {
          description = "The default version for newly created clusters on the channel.",
          type = "string",
        },
        validVersions = {
          description = "List of valid versions for the channel.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReservationAffinity = {
      description = "[ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.",
      id = "ReservationAffinity",
      properties = {
        consumeReservationType = {
          description = "Corresponds to the type of reservation consumption.",
          enum = {
            "UNSPECIFIED",
            "NO_RESERVATION",
            "ANY_RESERVATION",
            "SPECIFIC_RESERVATION",
          },
          enumDescriptions = {
            "Default value. This should not be used.",
            "Do not consume from any reserved capacity.",
            "Consume any reservation available.",
            "Must consume from a specific reservation. Must specify key value fields for specifying the reservations.",
          },
          type = "string",
        },
        key = {
          description = "Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify \"compute.googleapis.com/reservation-name\" as the key and specify the name of your reservation as its value.",
          type = "string",
        },
        values = {
          description = "Corresponds to the label value(s) of reservation resource(s).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceLabels = {
      description = "Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).",
      id = "ResourceLabels",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of node label keys and node label values.",
          type = "object",
        },
      },
      type = "object",
    },
    ResourceLimit = {
      description = "Contains information about amount of some resource in the cluster. For memory, value should be in GB.",
      id = "ResourceLimit",
      properties = {
        maximum = {
          description = "Maximum amount of the resource in the cluster.",
          format = "int64",
          type = "string",
        },
        minimum = {
          description = "Minimum amount of the resource in the cluster.",
          format = "int64",
          type = "string",
        },
        resourceType = {
          description = "Resource name \"cpu\", \"memory\" or gpu-specific string.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceUsageExportConfig = {
      description = "Configuration for exporting cluster resource usages.",
      id = "ResourceUsageExportConfig",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "BigQueryDestination",
          description = "Configuration to use BigQuery as usage export destination.",
        },
        consumptionMeteringConfig = {
          ["$ref"] = "ConsumptionMeteringConfig",
          description = "Configuration to enable resource consumption metering.",
        },
        enableNetworkEgressMetering = {
          description = "Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RollbackNodePoolUpgradeRequest = {
      description = "RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed NodePool upgrade. This will be an no-op if the last upgrade successfully completed.",
      id = "RollbackNodePoolUpgradeRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to rollback. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
          type = "string",
        },
        nodePoolId = {
          description = "Deprecated. The name of the node pool to rollback. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        respectPdb = {
          description = "Option for rollback to ignore the PodDisruptionBudget. Default value is false.",
          type = "boolean",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SandboxConfig = {
      description = "SandboxConfig contains configurations of the sandbox to use for the node.",
      id = "SandboxConfig",
      properties = {
        type = {
          description = "Type of the sandbox to use for the node.",
          enum = {
            "UNSPECIFIED",
            "GVISOR",
          },
          enumDescriptions = {
            "Default value. This should not be used.",
            "Run sandbox using gvisor.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SecurityBulletinEvent = {
      description = "SecurityBulletinEvent is a notification sent to customers when a security bulletin has been posted that they are vulnerable to.",
      id = "SecurityBulletinEvent",
      properties = {
        affectedSupportedMinors = {
          description = "The GKE minor versions affected by this vulnerability.",
          items = {
            type = "string",
          },
          type = "array",
        },
        briefDescription = {
          description = "A brief description of the bulletin. See the bulletin pointed to by the bulletin_uri field for an expanded description.",
          type = "string",
        },
        bulletinId = {
          description = "The ID of the bulletin corresponding to the vulnerability.",
          type = "string",
        },
        bulletinUri = {
          description = "The URI link to the bulletin on the website for more information.",
          type = "string",
        },
        cveIds = {
          description = "The CVEs associated with this bulletin.",
          items = {
            type = "string",
          },
          type = "array",
        },
        manualStepsRequired = {
          description = "If this field is specified, it means there are manual steps that the user must take to make their clusters safe.",
          type = "boolean",
        },
        patchedVersions = {
          description = "The GKE versions where this vulnerability is patched.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceTypeAffected = {
          description = "The resource type (node/control plane) that has the vulnerability. Multiple notifications (1 notification per resource type) will be sent for a vulnerability that affects > 1 resource type.",
          type = "string",
        },
        severity = {
          description = "The severity of this bulletin as it relates to GKE.",
          type = "string",
        },
        suggestedUpgradeTarget = {
          description = "This represents a version selected from the patched_versions field that the cluster receiving this notification should most likely want to upgrade to based on its current version. Note that if this notification is being received by a given cluster, it means that this version is currently available as an upgrade target in that cluster's location.",
          type = "string",
        },
      },
      type = "object",
    },
    ServerConfig = {
      description = "Kubernetes Engine service configuration.",
      id = "ServerConfig",
      properties = {
        channels = {
          description = "List of release channel configurations.",
          items = {
            ["$ref"] = "ReleaseChannelConfig",
          },
          type = "array",
        },
        defaultClusterVersion = {
          description = "Version of Kubernetes the service deploys by default.",
          type = "string",
        },
        defaultImageType = {
          description = "Default image type.",
          type = "string",
        },
        validImageTypes = {
          description = "List of valid image types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        validMasterVersions = {
          description = "List of valid master versions, in descending order.",
          items = {
            type = "string",
          },
          type = "array",
        },
        validNodeVersions = {
          description = "List of valid node upgrade target versions, in descending order.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServiceExternalIPsConfig = {
      description = "Config to block services with externalIPs field.",
      id = "ServiceExternalIPsConfig",
      properties = {
        enabled = {
          description = "Whether Services with ExternalIPs field are allowed or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SetAddonsConfigRequest = {
      description = "SetAddonsConfigRequest sets the addons associated with the cluster.",
      id = "SetAddonsConfigRequest",
      properties = {
        addonsConfig = {
          ["$ref"] = "AddonsConfig",
          description = "Required. The desired configurations for the various addons available to run in the cluster.",
        },
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to set addons. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetLabelsRequest = {
      description = "SetLabelsRequest sets the Google Cloud Platform labels on a Google Container Engine cluster, which will in turn set them for Google Compute Engine resources used by that cluster",
      id = "SetLabelsRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        labelFingerprint = {
          description = "Required. The fingerprint of the previous set of labels for this resource, used to detect conflicts. The fingerprint is initially generated by Kubernetes Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash when updating or changing labels. Make a `get()` request to the resource to get the latest fingerprint.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to set labels. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        resourceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Required. The labels to set for that cluster.",
          type = "object",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetLegacyAbacRequest = {
      description = "SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for a cluster.",
      id = "SetLegacyAbacRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        enabled = {
          description = "Required. Whether ABAC authorization will be enabled in the cluster.",
          type = "boolean",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetLocationsRequest = {
      description = "SetLocationsRequest sets the locations of the cluster.",
      id = "SetLocationsRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        locations = {
          description = "Required. The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. Changing the locations a cluster is in will result in nodes being either created or removed from the cluster, depending on whether locations are being added or removed. This list must always include the cluster's primary zone.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to set locations. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetLoggingServiceRequest = {
      description = "SetLoggingServiceRequest sets the logging service of a cluster.",
      id = "SetLoggingServiceRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        loggingService = {
          description = "Required. The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to set logging. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetMaintenancePolicyRequest = {
      description = "SetMaintenancePolicyRequest sets the maintenance policy for a cluster.",
      id = "SetMaintenancePolicyRequest",
      properties = {
        clusterId = {
          description = "Required. The name of the cluster to update.",
          type = "string",
        },
        maintenancePolicy = {
          ["$ref"] = "MaintenancePolicy",
          description = "Required. The maintenance policy to be set for the cluster. An empty field clears the existing maintenance policy.",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to set maintenance policy. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Required. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects).",
          type = "string",
        },
        zone = {
          description = "Required. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides.",
          type = "string",
        },
      },
      type = "object",
    },
    SetMasterAuthRequest = {
      description = "SetMasterAuthRequest updates the admin password of a cluster.",
      id = "SetMasterAuthRequest",
      properties = {
        action = {
          description = "Required. The exact form of action to be taken on the master auth.",
          enum = {
            "UNKNOWN",
            "SET_PASSWORD",
            "GENERATE_PASSWORD",
            "SET_USERNAME",
          },
          enumDescriptions = {
            "Operation is unknown and will error out.",
            "Set the password to a user generated value.",
            "Generate a new password and set it to that.",
            "Set the username. If an empty username is provided, basic authentication is disabled for the cluster. If a non-empty username is provided, basic authentication is enabled, with either a provided password or a generated one.",
          },
          type = "string",
        },
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to set auth. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        update = {
          ["$ref"] = "MasterAuth",
          description = "Required. A description of the update.",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetMonitoringServiceRequest = {
      description = "SetMonitoringServiceRequest sets the monitoring service of a cluster.",
      id = "SetMonitoringServiceRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        monitoringService = {
          description = "Required. The monitoring service the cluster should use to write metrics. Currently available options: * \"monitoring.googleapis.com/kubernetes\" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to set monitoring. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetNetworkPolicyRequest = {
      description = "SetNetworkPolicyRequest enables/disables network policy for a cluster.",
      id = "SetNetworkPolicyRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        networkPolicy = {
          ["$ref"] = "NetworkPolicy",
          description = "Required. Configuration options for the NetworkPolicy feature.",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetNodePoolAutoscalingRequest = {
      description = "SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.",
      id = "SetNodePoolAutoscalingRequest",
      properties = {
        autoscaling = {
          ["$ref"] = "NodePoolAutoscaling",
          description = "Required. Autoscaling configuration for the node pool.",
        },
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster, node pool) of the node pool to set autoscaler settings. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
          type = "string",
        },
        nodePoolId = {
          description = "Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetNodePoolManagementRequest = {
      description = "SetNodePoolManagementRequest sets the node management properties of a node pool.",
      id = "SetNodePoolManagementRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        management = {
          ["$ref"] = "NodeManagement",
          description = "Required. NodeManagement configuration for the node pool.",
        },
        name = {
          description = "The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
          type = "string",
        },
        nodePoolId = {
          description = "Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    SetNodePoolSizeRequest = {
      description = "SetNodePoolSizeRequest sets the size of a node pool.",
      id = "SetNodePoolSizeRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
          type = "string",
        },
        nodeCount = {
          description = "Required. The desired node count for the pool.",
          format = "int32",
          type = "integer",
        },
        nodePoolId = {
          description = "Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    ShieldedInstanceConfig = {
      description = "A set of Shielded Instance options.",
      id = "ShieldedInstanceConfig",
      properties = {
        enableIntegrityMonitoring = {
          description = "Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created.",
          type = "boolean",
        },
        enableSecureBoot = {
          description = "Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ShieldedNodes = {
      description = "Configuration of Shielded Nodes feature.",
      id = "ShieldedNodes",
      properties = {
        enabled = {
          description = "Whether Shielded Nodes features are enabled on all nodes in this cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    StandardRolloutPolicy = {
      description = "Standard rollout policy is the default policy for blue-green.",
      id = "StandardRolloutPolicy",
      properties = {
        batchNodeCount = {
          description = "Number of blue nodes to drain in a batch.",
          format = "int32",
          type = "integer",
        },
        batchPercentage = {
          description = "Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].",
          format = "float",
          type = "number",
        },
        batchSoakDuration = {
          description = "Soak time after each batch gets drained. Default to zero.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    StartIPRotationRequest = {
      description = "StartIPRotationRequest creates a new IP for the cluster and then performs a node upgrade on each node pool to point to the new IP.",
      id = "StartIPRotationRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        rotateCredentials = {
          description = "Whether to rotate credentials during IP rotation.",
          type = "boolean",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
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
    StatusCondition = {
      description = "StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).",
      id = "StatusCondition",
      properties = {
        canonicalCode = {
          description = "Canonical code of the condition.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        code = {
          description = "Machine-friendly representation of the condition Deprecated. Use canonical_code instead.",
          enum = {
            "UNKNOWN",
            "GCE_STOCKOUT",
            "GKE_SERVICE_ACCOUNT_DELETED",
            "GCE_QUOTA_EXCEEDED",
            "SET_BY_OPERATOR",
            "CLOUD_KMS_KEY_ERROR",
            "CA_EXPIRING",
          },
          enumDescriptions = {
            "UNKNOWN indicates a generic condition.",
            "GCE_STOCKOUT indicates that Google Compute Engine resources are temporarily unavailable.",
            "GKE_SERVICE_ACCOUNT_DELETED indicates that the user deleted their robot service account.",
            "Google Compute Engine quota was exceeded.",
            "Cluster state was manually changed by an SRE due to a system logic error.",
            "Unable to perform an encrypt operation against the CloudKMS key used for etcd level encryption.",
            "Cluster CA is expiring soon.",
          },
          type = "string",
        },
        message = {
          description = "Human-friendly representation of the condition",
          type = "string",
        },
      },
      type = "object",
    },
    TimeWindow = {
      description = "Represents an arbitrary window of time.",
      id = "TimeWindow",
      properties = {
        endTime = {
          description = "The time that the window ends. The end time should take place after the start time.",
          format = "google-datetime",
          type = "string",
        },
        maintenanceExclusionOptions = {
          ["$ref"] = "MaintenanceExclusionOptions",
          description = "MaintenanceExclusionOptions provides maintenance exclusion related options.",
        },
        startTime = {
          description = "The time that the window first starts.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateClusterRequest = {
      description = "UpdateClusterRequest updates the settings of a cluster.",
      id = "UpdateClusterRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        update = {
          ["$ref"] = "ClusterUpdate",
          description = "Required. A description of the update.",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateInfo = {
      description = "UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.",
      id = "UpdateInfo",
      properties = {
        blueGreenInfo = {
          ["$ref"] = "BlueGreenInfo",
          description = "Information of a blue-green upgrade.",
        },
      },
      type = "object",
    },
    UpdateMasterRequest = {
      description = "UpdateMasterRequest updates the master of the cluster.",
      id = "UpdateMasterRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        masterVersion = {
          description = "Required. The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the default Kubernetes version",
          type = "string",
        },
        name = {
          description = "The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clusters/*`.",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateNodePoolRequest = {
      description = "UpdateNodePoolRequests update a node pool's image and/or version.",
      id = "UpdateNodePoolRequest",
      properties = {
        clusterId = {
          description = "Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        confidentialNodes = {
          ["$ref"] = "ConfidentialNodes",
          description = "Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.",
        },
        etag = {
          description = "The current etag of the node pool. If an etag is provided and does not match the current etag of the node pool, update will be blocked and an ABORTED error will be returned.",
          type = "string",
        },
        fastSocket = {
          ["$ref"] = "FastSocket",
          description = "Enable or disable NCCL fast socket for the node pool.",
        },
        gcfsConfig = {
          ["$ref"] = "GcfsConfig",
          description = "GCFS config.",
        },
        gvnic = {
          ["$ref"] = "VirtualNIC",
          description = "Enable or disable gvnic on the node pool.",
        },
        imageType = {
          description = "Required. The desired image type for the node pool.",
          type = "string",
        },
        kubeletConfig = {
          ["$ref"] = "NodeKubeletConfig",
          description = "Node kubelet configs.",
        },
        labels = {
          ["$ref"] = "NodeLabels",
          description = "The desired node labels to be applied to all nodes in the node pool. If this field is not present, the labels will not be changed. Otherwise, the existing node labels will be *replaced* with the provided labels.",
        },
        linuxNodeConfig = {
          ["$ref"] = "LinuxNodeConfig",
          description = "Parameters that can be configured on Linux nodes.",
        },
        locations = {
          description = "The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the node pool's nodes should be located. Changing the locations for a node pool will result in nodes being either created or removed from the node pool, depending on whether locations are being added or removed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        loggingConfig = {
          ["$ref"] = "NodePoolLoggingConfig",
          description = "Logging configuration.",
        },
        name = {
          description = "The name (project, location, cluster, node pool) of the node pool to update. Specified in the format `projects/*/locations/*/clusters/*/nodePools/*`.",
          type = "string",
        },
        nodeNetworkConfig = {
          ["$ref"] = "NodeNetworkConfig",
          description = "Node network config.",
        },
        nodePoolId = {
          description = "Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        nodeVersion = {
          description = "Required. The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - \"latest\": picks the highest valid Kubernetes version - \"1.X\": picks the highest valid patch+gke.N patch in the 1.X version - \"1.X.Y\": picks the highest valid gke.N patch in the 1.X.Y version - \"1.X.Y-gke.N\": picks an explicit Kubernetes version - \"-\": picks the Kubernetes master version",
          type = "string",
        },
        projectId = {
          description = "Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the name field.",
          type = "string",
        },
        resourceLabels = {
          ["$ref"] = "ResourceLabels",
          description = "The resource labels for the node pool to use to annotate any related Google Compute Engine resources.",
        },
        tags = {
          ["$ref"] = "NetworkTags",
          description = "The desired network tags to be applied to all nodes in the node pool. If this field is not present, the tags will not be changed. Otherwise, the existing network tags will be *replaced* with the provided tags.",
        },
        taints = {
          ["$ref"] = "NodeTaints",
          description = "The desired node taints to be applied to all nodes in the node pool. If this field is not present, the taints will not be changed. Otherwise, the existing node taints will be *replaced* with the provided taints.",
        },
        upgradeSettings = {
          ["$ref"] = "UpgradeSettings",
          description = "Upgrade settings control disruption and speed of the upgrade.",
        },
        windowsNodeConfig = {
          ["$ref"] = "WindowsNodeConfig",
          description = "Parameters that can be configured on Windows nodes.",
        },
        workloadMetadataConfig = {
          ["$ref"] = "WorkloadMetadataConfig",
          description = "The desired workload metadata config for the node pool.",
        },
        zone = {
          description = "Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the name field.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeAvailableEvent = {
      description = "UpgradeAvailableEvent is a notification sent to customers when a new available version is released.",
      id = "UpgradeAvailableEvent",
      properties = {
        releaseChannel = {
          ["$ref"] = "ReleaseChannel",
          description = "The release channel of the version. If empty, it means a non-channel release.",
        },
        resource = {
          description = "Optional relative path to the resource. For example, the relative path of the node pool.",
          type = "string",
        },
        resourceType = {
          description = "The resource type of the release version.",
          enum = {
            "UPGRADE_RESOURCE_TYPE_UNSPECIFIED",
            "MASTER",
            "NODE_POOL",
          },
          enumDescriptions = {
            "Default value. This shouldn't be used.",
            "Master / control plane",
            "Node pool",
          },
          type = "string",
        },
        version = {
          description = "The release version available for upgrade.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeEvent = {
      description = "UpgradeEvent is a notification sent to customers by the cluster server when a resource is upgrading.",
      id = "UpgradeEvent",
      properties = {
        currentVersion = {
          description = "The current version before the upgrade.",
          type = "string",
        },
        operation = {
          description = "The operation associated with this upgrade.",
          type = "string",
        },
        operationStartTime = {
          description = "The time when the operation was started.",
          format = "google-datetime",
          type = "string",
        },
        resource = {
          description = "Optional relative path to the resource. For example in node pool upgrades, the relative path of the node pool.",
          type = "string",
        },
        resourceType = {
          description = "The resource type that is upgrading.",
          enum = {
            "UPGRADE_RESOURCE_TYPE_UNSPECIFIED",
            "MASTER",
            "NODE_POOL",
          },
          enumDescriptions = {
            "Default value. This shouldn't be used.",
            "Master / control plane",
            "Node pool",
          },
          type = "string",
        },
        targetVersion = {
          description = "The target version for the upgrade.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeSettings = {
      description = "These upgrade settings control the level of parallelism and the level of disruption caused by an upgrade. maxUnavailable controls the number of nodes that can be simultaneously unavailable. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). Note: upgrades inevitably introduce some disruption since workloads need to be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the same time. This ensures that there are always at least 4 nodes available. These upgrade settings configure the upgrade strategy for the node pool. Use strategy to switch between the strategies applied to the node pool. If the strategy is ROLLING, use max_surge and max_unavailable to control the level of parallelism and the level of disruption caused by upgrade. 1. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. 2. maxUnavailable controls the number of nodes that can be simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). If the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-green upgrade related settings. 1. standard_rollout_policy is the default policy. The policy is used to control the way blue pool gets drained. The draining is executed in the batch mode. The batch size could be specified as either percentage of the node pool size or the number of nodes. batch_soak_duration is the soak time after each batch gets drained. 2. node_pool_soak_duration is the soak time after all blue nodes are drained. After this period, the blue pool nodes will be deleted.",
      id = "UpgradeSettings",
      properties = {
        blueGreenSettings = {
          ["$ref"] = "BlueGreenSettings",
          description = "Settings for blue-green upgrade strategy.",
        },
        maxSurge = {
          description = "The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.",
          format = "int32",
          type = "integer",
        },
        maxUnavailable = {
          description = "The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A node is considered available if its status is Ready.",
          format = "int32",
          type = "integer",
        },
        strategy = {
          description = "Update strategy of the node pool.",
          enum = {
            "NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED",
            "BLUE_GREEN",
            "SURGE",
          },
          enumDescriptions = {
            "Default value.",
            "blue-green upgrade.",
            "SURGE is the traditional way of upgrade a node pool. max_surge and max_unavailable determines the level of upgrade parallelism.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UsableSubnetwork = {
      description = "UsableSubnetwork resource returns the subnetwork name, its associated network and the primary CIDR range.",
      id = "UsableSubnetwork",
      properties = {
        ipCidrRange = {
          description = "The range of internal addresses that are owned by this subnetwork.",
          type = "string",
        },
        network = {
          description = "Network Name. Example: projects/my-project/global/networks/my-network",
          type = "string",
        },
        secondaryIpRanges = {
          description = "Secondary IP ranges.",
          items = {
            ["$ref"] = "UsableSubnetworkSecondaryRange",
          },
          type = "array",
        },
        statusMessage = {
          description = "A human readable status message representing the reasons for cases where the caller cannot use the secondary ranges under the subnet. For example if the secondary_ip_ranges is empty due to a permission issue, an insufficient permission message will be given by status_message.",
          type = "string",
        },
        subnetwork = {
          description = "Subnetwork Name. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet",
          type = "string",
        },
      },
      type = "object",
    },
    UsableSubnetworkSecondaryRange = {
      description = "Secondary IP range of a usable subnetwork.",
      id = "UsableSubnetworkSecondaryRange",
      properties = {
        ipCidrRange = {
          description = "The range of IP addresses belonging to this subnetwork secondary range.",
          type = "string",
        },
        rangeName = {
          description = "The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance.",
          type = "string",
        },
        status = {
          description = "This field is to determine the status of the secondary range programmably.",
          enum = {
            "UNKNOWN",
            "UNUSED",
            "IN_USE_SERVICE",
            "IN_USE_SHAREABLE_POD",
            "IN_USE_MANAGED_POD",
          },
          enumDescriptions = {
            "UNKNOWN is the zero value of the Status enum. It's not a valid status.",
            "UNUSED denotes that this range is unclaimed by any cluster.",
            "IN_USE_SERVICE denotes that this range is claimed by a cluster for services. It cannot be used for other clusters.",
            "IN_USE_SHAREABLE_POD denotes this range was created by the network admin and is currently claimed by a cluster for pods. It can only be used by other clusters as a pod range.",
            "IN_USE_MANAGED_POD denotes this range was created by GKE and is claimed for pods. It cannot be used for other clusters.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VerticalPodAutoscaling = {
      description = "VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.",
      id = "VerticalPodAutoscaling",
      properties = {
        enabled = {
          description = "Enables vertical pod autoscaling.",
          type = "boolean",
        },
      },
      type = "object",
    },
    VirtualNIC = {
      description = "Configuration of gVNIC feature.",
      id = "VirtualNIC",
      properties = {
        enabled = {
          description = "Whether gVNIC features are enabled in the node pool.",
          type = "boolean",
        },
      },
      type = "object",
    },
    WindowsNodeConfig = {
      description = "Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings",
      id = "WindowsNodeConfig",
      properties = {
        osVersion = {
          description = "OSVersion specifies the Windows node config to be used on the node",
          enum = {
            "OS_VERSION_UNSPECIFIED",
            "OS_VERSION_LTSC2019",
            "OS_VERSION_LTSC2022",
          },
          enumDescriptions = {
            "When OSVersion is not specified",
            "LTSC2019 specifies to use LTSC2019 as the Windows Servercore Base Image",
            "LTSC2022 specifies to use LTSC2022 as the Windows Servercore Base Image",
          },
          type = "string",
        },
      },
      type = "object",
    },
    WorkloadIdentityConfig = {
      description = "Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.",
      id = "WorkloadIdentityConfig",
      properties = {
        workloadPool = {
          description = "The workload pool to attach all Kubernetes service accounts to.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkloadMetadataConfig = {
      description = "WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.",
      id = "WorkloadMetadataConfig",
      properties = {
        mode = {
          description = "Mode is the configuration for how to expose metadata to workloads running on the node pool.",
          enum = {
            "MODE_UNSPECIFIED",
            "GCE_METADATA",
            "GKE_METADATA",
          },
          enumDescriptions = {
            "Not set.",
            "Expose all Compute Engine metadata to pods.",
            "Run the GKE Metadata Server on this node. The GKE Metadata Server exposes a metadata API to workloads that is compatible with the V1 Compute Metadata APIs exposed by the Compute Engine and App Engine Metadata Servers. This feature can only be enabled if Workload Identity is enabled at the cluster level.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Kubernetes Engine API",
  version = "v1",
}
