local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-03-14",
    "endpointPrefix": "servicediscovery",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "ServiceDiscovery",
    "serviceFullName": "AWS Cloud Map",
    "serviceId": "ServiceDiscovery",
    "signatureVersion": "v4",
    "targetPrefix": "Route53AutoNaming_v20170314",
    "uid": "servicediscovery-2017-03-14"
  },
  "operations": {
    "CreateHttpNamespace": {
      "name": "CreateHttpNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHttpNamespaceRequest"
      },
      "output": {
        "shape": "CreateHttpNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "NamespaceAlreadyExists"
        },
        {
          "shape": "ResourceLimitExceeded"
        },
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Creates an HTTP namespace. Service instances that you register using an HTTP namespace can be discovered using a <code>DiscoverInstances</code> request but can't be discovered using DNS. </p> <p>For the current quota on the number of namespaces that you can create using the same AWS account, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html\">AWS Cloud Map quotas</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>"
    },
    "CreatePrivateDnsNamespace": {
      "name": "CreatePrivateDnsNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePrivateDnsNamespaceRequest"
      },
      "output": {
        "shape": "CreatePrivateDnsNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "NamespaceAlreadyExists"
        },
        {
          "shape": "ResourceLimitExceeded"
        },
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. For the current quota on the number of namespaces that you can create using the same AWS account, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html\">AWS Cloud Map Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>"
    },
    "CreatePublicDnsNamespace": {
      "name": "CreatePublicDnsNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePublicDnsNamespaceRequest"
      },
      "output": {
        "shape": "CreatePublicDnsNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "NamespaceAlreadyExists"
        },
        {
          "shape": "ResourceLimitExceeded"
        },
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service <code>backend</code>, the resulting DNS name for the service will be <code>backend.example.com</code>. For the current quota on the number of namespaces that you can create using the same AWS account, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html\">AWS Cloud Map Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>"
    },
    "CreateService": {
      "name": "CreateService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServiceRequest"
      },
      "output": {
        "shape": "CreateServiceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ResourceLimitExceeded"
        },
        {
          "shape": "NamespaceNotFound"
        },
        {
          "shape": "ServiceAlreadyExists"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Creates a service, which defines the configuration for the following entities:</p> <ul> <li> <p>For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:</p> <ul> <li> <p> <code>A</code> </p> </li> <li> <p> <code>AAAA</code> </p> </li> <li> <p> <code>A</code> and <code>AAAA</code> </p> </li> <li> <p> <code>SRV</code> </p> </li> <li> <p> <code>CNAME</code> </p> </li> </ul> </li> <li> <p>Optionally, a health check</p> </li> </ul> <p>After you create the service, you can submit a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a> request, and AWS Cloud Map uses the values in the configuration to create the specified entities.</p> <p>For the current quota on the number of instances that you can register using the same namespace and using the same service, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html\">AWS Cloud Map Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>"
    },
    "DeleteNamespace": {
      "name": "DeleteNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNamespaceRequest"
      },
      "output": {
        "shape": "DeleteNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "NamespaceNotFound"
        },
        {
          "shape": "ResourceInUse"
        },
        {
          "shape": "DuplicateRequest"
        }
      ],
      "documentation": "<p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.</p>"
    },
    "DeleteService": {
      "name": "DeleteService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceRequest"
      },
      "output": {
        "shape": "DeleteServiceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ServiceNotFound"
        },
        {
          "shape": "ResourceInUse"
        }
      ],
      "documentation": "<p>Deletes a specified service. If the service still contains one or more registered instances, the request fails.</p>"
    },
    "DeregisterInstance": {
      "name": "DeregisterInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterInstanceRequest"
      },
      "output": {
        "shape": "DeregisterInstanceResponse"
      },
      "errors": [
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "InstanceNotFound"
        },
        {
          "shape": "ResourceInUse"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance.</p>"
    },
    "DiscoverInstances": {
      "name": "DiscoverInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DiscoverInstancesRequest"
      },
      "output": {
        "shape": "DiscoverInstancesResponse"
      },
      "errors": [
        {
          "shape": "ServiceNotFound"
        },
        {
          "shape": "NamespaceNotFound"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "RequestLimitExceeded"
        }
      ],
      "documentation": "<p>Discovers registered instances for a specified namespace and service. You can use <code>DiscoverInstances</code> to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries to discover instances.</p>",
      "endpoint": {
        "hostPrefix": "data-"
      }
    },
    "GetInstance": {
      "name": "GetInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInstanceRequest"
      },
      "output": {
        "shape": "GetInstanceResponse"
      },
      "errors": [
        {
          "shape": "InstanceNotFound"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Gets information about a specified instance.</p>"
    },
    "GetInstancesHealthStatus": {
      "name": "GetInstancesHealthStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInstancesHealthStatusRequest"
      },
      "output": {
        "shape": "GetInstancesHealthStatusResponse"
      },
      "errors": [
        {
          "shape": "InstanceNotFound"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or more instances that are associated with a specified service.</p> <note> <p>There is a brief delay between when you register an instance and when the health status for the instance is available. </p> </note>"
    },
    "GetNamespace": {
      "name": "GetNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetNamespaceRequest"
      },
      "output": {
        "shape": "GetNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "NamespaceNotFound"
        }
      ],
      "documentation": "<p>Gets information about a namespace.</p>"
    },
    "GetOperation": {
      "name": "GetOperation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOperationRequest"
      },
      "output": {
        "shape": "GetOperationResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "OperationNotFound"
        }
      ],
      "documentation": "<p>Gets information about any operation that returns an operation ID in the response, such as a <code>CreateService</code> request.</p> <note> <p>To get a list of operations that match specified criteria, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html\">ListOperations</a>.</p> </note>"
    },
    "GetService": {
      "name": "GetService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceRequest"
      },
      "output": {
        "shape": "GetServiceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Gets the settings for a specified service.</p>"
    },
    "ListInstances": {
      "name": "ListInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListInstancesRequest"
      },
      "output": {
        "shape": "ListInstancesResponse"
      },
      "errors": [
        {
          "shape": "ServiceNotFound"
        },
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Lists summary information about the instances that you registered by using a specified service.</p>"
    },
    "ListNamespaces": {
      "name": "ListNamespaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListNamespacesRequest"
      },
      "output": {
        "shape": "ListNamespacesResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Lists summary information about the namespaces that were created by the current AWS account.</p>"
    },
    "ListOperations": {
      "name": "ListOperations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOperationsRequest"
      },
      "output": {
        "shape": "ListOperationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Lists operations that match the criteria that you specify.</p>"
    },
    "ListServices": {
      "name": "ListServices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServicesRequest"
      },
      "output": {
        "shape": "ListServicesResponse"
      },
      "errors": [
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Lists tags for the specified resource.</p>"
    },
    "RegisterInstance": {
      "name": "RegisterInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterInstanceRequest"
      },
      "output": {
        "shape": "RegisterInstanceResponse"
      },
      "errors": [
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ResourceInUse"
        },
        {
          "shape": "ResourceLimitExceeded"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a <code>RegisterInstance</code> request, the following occurs:</p> <ul> <li> <p>For each DNS record that you define in the service that is specified by <code>ServiceId</code>, a record is created or updated in the hosted zone that is associated with the corresponding namespace.</p> </li> <li> <p>If the service includes <code>HealthCheckConfig</code>, a health check is created based on the settings in the health check configuration.</p> </li> <li> <p>The health check, if any, is associated with each of the new or updated records.</p> </li> </ul> <important> <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the same service ID and instance ID.</p> </important> <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html\">CreateService</a>.</p> <p>When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:</p> <ul> <li> <p> <b>If the health check is healthy</b>: returns all the records</p> </li> <li> <p> <b>If the health check is unhealthy</b>: returns the applicable value for the last healthy instance</p> </li> <li> <p> <b>If you didn't specify a health check configuration</b>: returns all the records</p> </li> </ul> <p>For the current quota on the number of instances that you can register using the same namespace and using the same service, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html\">AWS Cloud Map Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Adds one or more tags to the specified resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Removes one or more tags from the specified resource.</p>"
    },
    "UpdateInstanceCustomHealthStatus": {
      "name": "UpdateInstanceCustomHealthStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateInstanceCustomHealthStatusRequest"
      },
      "errors": [
        {
          "shape": "InstanceNotFound"
        },
        {
          "shape": "ServiceNotFound"
        },
        {
          "shape": "CustomHealthNotFound"
        },
        {
          "shape": "InvalidInput"
        }
      ],
      "documentation": "<p>Submits a request to change the health status of a custom health check to healthy or unhealthy.</p> <p>You can use <code>UpdateInstanceCustomHealthStatus</code> to change the status only for custom health checks, which you define using <code>HealthCheckCustomConfig</code> when you create a service. You can't use it to change the status for Route 53 health checks, which you define using <code>HealthCheckConfig</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html\">HealthCheckCustomConfig</a>.</p>"
    },
    "UpdateService": {
      "name": "UpdateService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceRequest"
      },
      "output": {
        "shape": "UpdateServiceResponse"
      },
      "errors": [
        {
          "shape": "DuplicateRequest"
        },
        {
          "shape": "InvalidInput"
        },
        {
          "shape": "ServiceNotFound"
        }
      ],
      "documentation": "<p>Submits a request to perform the following operations:</p> <ul> <li> <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p> </li> <li> <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p> <note> <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration.</p> </note> </li> </ul> <p>For public and private DNS namespaces, note the following:</p> <ul> <li> <p>If you omit any existing <code>DnsRecords</code> or <code>HealthCheckConfig</code> configurations from an <code>UpdateService</code> request, the configurations are deleted from the service.</p> </li> <li> <p>If you omit an existing <code>HealthCheckCustomConfig</code> configuration from an <code>UpdateService</code> request, the configuration is not deleted from the service.</p> </li> </ul> <p>When you update settings for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.</p>"
    }
  },
  "shapes": {
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "Arn": {
      "type": "string",
      "max": 255
    },
    "AttrKey": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z0-9!-~]+$"
    },
    "AttrValue": {
      "type": "string",
      "max": 1024,
      "pattern": "^([a-zA-Z0-9!-~][ \\ta-zA-Z0-9!-~]*){0,1}[a-zA-Z0-9!-~]{0,1}$"
    },
    "Attributes": {
      "type": "map",
      "key": {
        "shape": "AttrKey"
      },
      "value": {
        "shape": "AttrValue"
      }
    },
    "Code": {
      "type": "string"
    },
    "CreateHttpNamespaceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NamespaceName",
          "documentation": "<p>The name that you want to assign to this namespace.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>CreateHttpNamespace</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>",
          "idempotencyToken": true
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the namespace.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        }
      }
    },
    "CreateHttpNamespaceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "CreatePrivateDnsNamespaceRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Vpc"
      ],
      "members": {
        "Name": {
          "shape": "NamespaceName",
          "documentation": "<p>The name that you want to assign to this namespace. When you create a private DNS namespace, AWS Cloud Map automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>CreatePrivateDnsNamespace</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>",
          "idempotencyToken": true
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the namespace.</p>"
        },
        "Vpc": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Amazon VPC that you want to associate the namespace with.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        }
      }
    },
    "CreatePrivateDnsNamespaceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "CreatePublicDnsNamespaceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NamespaceName",
          "documentation": "<p>The name that you want to assign to this namespace.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>CreatePublicDnsNamespace</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>",
          "idempotencyToken": true
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the namespace.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the namespace. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        }
      }
    },
    "CreatePublicDnsNamespaceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "CreateServiceRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "ServiceName",
          "documentation": "<p>The name that you want to assign to the service.</p> <p>If you want AWS Cloud Map to create an <code>SRV</code> record when you register an instance, and if you're using a system that requires a specific <code>SRV</code> format, such as <a href=\"http://www.haproxy.org/\">HAProxy</a>, specify the following for <code>Name</code>:</p> <ul> <li> <p>Start the name with an underscore (_), such as <code>_exampleservice</code> </p> </li> <li> <p>End the name with <i>._protocol</i>, such as <code>._tcp</code> </p> </li> </ul> <p>When you register an instance, AWS Cloud Map creates an <code>SRV</code> record and assigns a name to the record by concatenating the service name and the namespace name, for example:</p> <p> <code>_exampleservice._tcp.example.com</code> </p>"
        },
        "NamespaceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace that you want to use to create the service.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>CreateService</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>",
          "idempotencyToken": true
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the service.</p>"
        },
        "DnsConfig": {
          "shape": "DnsConfig",
          "documentation": "<p>A complex type that contains information about the Amazon Route 53 records that you want AWS Cloud Map to create when you register an instance. </p>"
        },
        "HealthCheckConfig": {
          "shape": "HealthCheckConfig",
          "documentation": "<p> <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an optional Route 53 health check. If you specify settings for a health check, AWS Cloud Map associates the health check with all the Route 53 DNS records that you specify in <code>DnsConfig</code>.</p> <important> <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code> but not both.</p> </important> <p>For information about the charges for health checks, see <a href=\"http://aws.amazon.com/cloud-map/pricing/\">AWS Cloud Map Pricing</a>.</p>"
        },
        "HealthCheckCustomConfig": {
          "shape": "HealthCheckCustomConfig",
          "documentation": "<p>A complex type that contains information about an optional custom health check.</p> <important> <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code> but not both.</p> </important> <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration from an existing service.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the service. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        }
      }
    },
    "CreateServiceResponse": {
      "type": "structure",
      "members": {
        "Service": {
          "shape": "Service",
          "documentation": "<p>A complex type that contains information about the new service.</p>"
        }
      }
    },
    "CustomHealthStatus": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY"
      ]
    },
    "DeleteNamespaceRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace that you want to delete.</p>"
        }
      }
    },
    "DeleteNamespaceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "DeleteServiceRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that you want to delete.</p>"
        }
      }
    },
    "DeleteServiceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeregisterInstanceRequest": {
      "type": "structure",
      "required": [
        "ServiceId",
        "InstanceId"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that the instance is associated with.</p>"
        },
        "InstanceId": {
          "shape": "ResourceId",
          "documentation": "<p>The value that you specified for <code>Id</code> in the <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a> request.</p>"
        }
      }
    },
    "DeregisterInstanceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "DiscoverInstancesRequest": {
      "type": "structure",
      "required": [
        "NamespaceName",
        "ServiceName"
      ],
      "members": {
        "NamespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace that you specified when you registered the instance.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the service that you specified when you registered the instance.</p>"
        },
        "MaxResults": {
          "shape": "DiscoverMaxResults",
          "documentation": "<p>The maximum number of instances that you want AWS Cloud Map to return in the response to a <code>DiscoverInstances</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 instances.</p>"
        },
        "QueryParameters": {
          "shape": "Attributes",
          "documentation": "<p>A string map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all the specified key/value pairs will be returned.</p>"
        },
        "HealthStatus": {
          "shape": "HealthStatusFilter",
          "documentation": "<p>The health status of the instances that you want to discover.</p>"
        }
      }
    },
    "DiscoverInstancesResponse": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "HttpInstanceSummaryList",
          "documentation": "<p>A complex type that contains one <code>HttpInstanceSummary</code> for each registered instance.</p>"
        }
      }
    },
    "DiscoverMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "DnsConfig": {
      "type": "structure",
      "required": [
        "DnsRecords"
      ],
      "members": {
        "NamespaceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace to use for DNS configuration.</p>",
          "deprecated": true,
          "deprecatedMessage": "Top level attribute in request should be used to reference namespace-id"
        },
        "RoutingPolicy": {
          "shape": "RoutingPolicy",
          "documentation": "<p>The routing policy that you want to apply to all Route 53 DNS records that AWS Cloud Map creates when you register an instance and specify this service.</p> <note> <p>If you want to use this service to register instances that create alias records, specify <code>WEIGHTED</code> for the routing policy.</p> </note> <p>You can specify the following values:</p> <p> <b>MULTIVALUE</b> </p> <p>If you define a health check for the service and the health check is healthy, Route 53 returns the applicable value for up to eight instances.</p> <p>For example, suppose the service includes configurations for one <code>A</code> record and a health check, and you use the service to register 10 instances. Route 53 responds to DNS queries with IP addresses for up to eight healthy instances. If fewer than eight instances are healthy, Route 53 responds to every DNS query with the IP addresses for all of the healthy instances.</p> <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the values for up to eight instances.</p> <p>For more information about the multivalue routing policy, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue\">Multivalue Answer Routing</a> in the <i>Route 53 Developer Guide</i>.</p> <p> <b>WEIGHTED</b> </p> <p>Route 53 returns the applicable value from one randomly selected instance from among the instances that you registered using the same service. Currently, all records have the same weight, so you can't route more or less traffic to any instances.</p> <p>For example, suppose the service includes configurations for one <code>A</code> record and a health check, and you use the service to register 10 instances. Route 53 responds to DNS queries with the IP address for one randomly selected instance from among the healthy instances. If no instances are healthy, Route 53 responds to DNS queries as if all of the instances were healthy.</p> <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the applicable value for one randomly selected instance.</p> <p>For more information about the weighted routing policy, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted\">Weighted Routing</a> in the <i>Route 53 Developer Guide</i>.</p>"
        },
        "DnsRecords": {
          "shape": "DnsRecordList",
          "documentation": "<p>An array that contains one <code>DnsRecord</code> object for each Route 53 DNS record that you want AWS Cloud Map to create when you register an instance.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Amazon Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.</p>"
    },
    "DnsConfigChange": {
      "type": "structure",
      "required": [
        "DnsRecords"
      ],
      "members": {
        "DnsRecords": {
          "shape": "DnsRecordList",
          "documentation": "<p>An array that contains one <code>DnsRecord</code> object for each Route 53 record that you want AWS Cloud Map to create when you register an instance.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about changes to the Route 53 DNS records that AWS Cloud Map creates when you register an instance.</p>"
    },
    "DnsProperties": {
      "type": "structure",
      "members": {
        "HostedZoneId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the Route 53 hosted zone that AWS Cloud Map creates when you create a namespace.</p>"
        }
      },
      "documentation": "<p>A complex type that contains the ID for the Route 53 hosted zone that AWS Cloud Map creates when you create a namespace.</p>"
    },
    "DnsRecord": {
      "type": "structure",
      "required": [
        "Type",
        "TTL"
      ],
      "members": {
        "Type": {
          "shape": "RecordType",
          "documentation": "<p>The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries. You can specify values for <code>Type</code> in the following combinations:</p> <ul> <li> <p> <code>A</code> </p> </li> <li> <p> <code>AAAA</code> </p> </li> <li> <p> <code>A</code> and <code>AAAA</code> </p> </li> <li> <p> <code>SRV</code> </p> </li> <li> <p> <code>CNAME</code> </p> </li> </ul> <p>If you want AWS Cloud Map to create a Route 53 alias record when you register an instance, specify <code>A</code> or <code>AAAA</code> for <code>Type</code>.</p> <p>You specify other settings, such as the IP address for <code>A</code> and <code>AAAA</code> records, when you register an instance. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a>.</p> <p>The following values are supported:</p> <p> <code>A</code> <b> <code/> </b> </p> <p>Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44.</p> <p> <code>AAAA</code> <b> <code/> </b> </p> <p>Route 53 returns the IP address of the resource in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345.</p> <p> <code>CNAME</code> <b> <code/> </b> </p> <p>Route 53 returns the domain name of the resource, such as www.example.com. Note the following:</p> <ul> <li> <p>You specify the domain name that you want to route traffic to when you register an instance. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#cloudmap-RegisterInstance-request-Attributes\">Attributes</a> in the topic <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a>.</p> </li> <li> <p>You must specify <code>WEIGHTED</code> for the value of <code>RoutingPolicy</code>.</p> </li> <li> <p>You can't specify both <code>CNAME</code> for <code>Type</code> and settings for <code>HealthCheckConfig</code>. If you do, the request will fail with an <code>InvalidInput</code> error.</p> </li> </ul> <p> <b>SRV</b> </p> <p>Route 53 returns the value for an <code>SRV</code> record. The value for an <code>SRV</code> record uses the following values:</p> <p> <code>priority weight port service-hostname</code> </p> <p>Note the following about the values:</p> <ul> <li> <p>The values of <code>priority</code> and <code>weight</code> are both set to <code>1</code> and can't be changed. </p> </li> <li> <p>The value of <code>port</code> comes from the value that you specify for the <code>AWS_INSTANCE_PORT</code> attribute when you submit a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a> request. </p> </li> <li> <p>The value of <code>service-hostname</code> is a concatenation of the following values:</p> <ul> <li> <p>The value that you specify for <code>InstanceId</code> when you register an instance.</p> </li> <li> <p>The name of the service.</p> </li> <li> <p>The name of the namespace. </p> </li> </ul> <p>For example, if the value of <code>InstanceId</code> is <code>test</code>, the name of the service is <code>backend</code>, and the name of the namespace is <code>example.com</code>, the value of <code>service-hostname</code> is:</p> <p> <code>test.backend.example.com</code> </p> </li> </ul> <p>If you specify settings for an <code>SRV</code> record, note the following:</p> <ul> <li> <p>If you specify values for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both in the <code>RegisterInstance</code> request, AWS Cloud Map automatically creates <code>A</code> and/or <code>AAAA</code> records that have the same name as the value of <code>service-hostname</code> in the <code>SRV</code> record. You can ignore these records.</p> </li> <li> <p>If you're using a system that requires a specific <code>SRV</code> format, such as HAProxy, see the <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html#cloudmap-CreateService-request-Name\">Name</a> element in the documentation about <code>CreateService</code> for information about how to specify the correct name format.</p> </li> </ul>"
        },
        "TTL": {
          "shape": "RecordTTL",
          "documentation": "<p>The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.</p> <note> <p>Alias records don't include a TTL because Route 53 uses the TTL for the AWS resource that an alias record routes traffic to. If you include the <code>AWS_ALIAS_DNS_NAME</code> attribute when you submit a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html\">RegisterInstance</a> request, the <code>TTL</code> value is ignored. Always specify a TTL for the service; you can use a service to register instances that create either alias or non-alias records.</p> </note>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.</p>"
    },
    "DnsRecordList": {
      "type": "list",
      "member": {
        "shape": "DnsRecord"
      }
    },
    "FailureThreshold": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "FilterCondition": {
      "type": "string",
      "enum": [
        "EQ",
        "IN",
        "BETWEEN"
      ]
    },
    "FilterValue": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      }
    },
    "GetInstanceRequest": {
      "type": "structure",
      "required": [
        "ServiceId",
        "InstanceId"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that the instance is associated with.</p>"
        },
        "InstanceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the instance that you want to get information about.</p>"
        }
      }
    },
    "GetInstanceResponse": {
      "type": "structure",
      "members": {
        "Instance": {
          "shape": "Instance",
          "documentation": "<p>A complex type that contains information about a specified instance.</p>"
        }
      }
    },
    "GetInstancesHealthStatusRequest": {
      "type": "structure",
      "required": [
        "ServiceId"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that the instance is associated with.</p>"
        },
        "Instances": {
          "shape": "InstanceIdList",
          "documentation": "<p>An array that contains the IDs of all the instances that you want to get the health status for.</p> <p>If you omit <code>Instances</code>, AWS Cloud Map returns the health status for all the instances that are associated with the specified service.</p> <note> <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html\">ListInstances</a> request.</p> </note>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of instances that you want AWS Cloud Map to return in the response to a <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 instances.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p> <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>"
        }
      }
    },
    "GetInstancesHealthStatusResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "InstanceHealthStatusMap",
          "documentation": "<p>A complex type that contains the IDs and the health status of the instances that you specified in the <code>GetInstancesHealthStatus</code> request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>"
        }
      }
    },
    "GetNamespaceRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace that you want to get information about.</p>"
        }
      }
    },
    "GetNamespaceResponse": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>A complex type that contains information about the specified namespace.</p>"
        }
      }
    },
    "GetOperationRequest": {
      "type": "structure",
      "required": [
        "OperationId"
      ],
      "members": {
        "OperationId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the operation that you want to get more information about.</p>"
        }
      }
    },
    "GetOperationResponse": {
      "type": "structure",
      "members": {
        "Operation": {
          "shape": "Operation",
          "documentation": "<p>A complex type that contains information about the operation.</p>"
        }
      }
    },
    "GetServiceRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that you want to get settings for.</p>"
        }
      }
    },
    "GetServiceResponse": {
      "type": "structure",
      "members": {
        "Service": {
          "shape": "Service",
          "documentation": "<p>A complex type that contains information about the service.</p>"
        }
      }
    },
    "HealthCheckConfig": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "HealthCheckType",
          "documentation": "<p>The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy.</p> <important> <p>You can't change the value of <code>Type</code> after you create a health check.</p> </important> <p>You can create the following types of health checks:</p> <ul> <li> <p> <b>HTTP</b>: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.</p> </li> <li> <p> <b>HTTPS</b>: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.</p> <important> <p>If you specify HTTPS for the value of <code>Type</code>, the endpoint must support TLS v1.0 or later.</p> </important> </li> <li> <p> <b>TCP</b>: Route 53 tries to establish a TCP connection.</p> <p>If you specify <code>TCP</code> for <code>Type</code>, don't specify a value for <code>ResourcePath</code>.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html\">How Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>"
        },
        "ResourcePath": {
          "shape": "ResourcePath",
          "documentation": "<p>The path that you want Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, such as the file <code>/docs/route53-health-check.html</code>. Route 53 automatically adds the DNS name for the service. If you don't specify a value for <code>ResourcePath</code>, the default value is <code>/</code>.</p> <p>If you specify <code>TCP</code> for <code>Type</code>, you must <i>not</i> specify a value for <code>ResourcePath</code>.</p>"
        },
        "FailureThreshold": {
          "shape": "FailureThreshold",
          "documentation": "<p>The number of consecutive health checks that an endpoint must pass or fail for Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html\">How Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p> <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in <code>DnsConfig</code>.</p> <important> <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code> but not both.</p> </important> <p>Health checks are basic Route 53 health checks that monitor an AWS endpoint. For information about pricing for health checks, see <a href=\"http://aws.amazon.com/route53/pricing/\">Amazon Route 53 Pricing</a>.</p> <p>Note the following about configuring health checks.</p> <p> <b> <code>A</code> and <code>AAAA</code> records</b> </p> <p>If <code>DnsConfig</code> includes configurations for both <code>A</code> and <code>AAAA</code> records, AWS Cloud Map creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the <code>A</code> and <code>AAAA</code> records to be unhealthy. </p> <p> <b> <code>CNAME</code> records</b> </p> <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request will fail with an <code>InvalidInput</code> error.</p> <p> <b>Request interval</b> </p> <p>A Route 53 health checker in each health-checking region sends a health check request to an endpoint every 30 seconds. On average, your endpoint receives a health check request about every two seconds. However, health checkers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.</p> <p> <b>Health checking regions</b> </p> <p>Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions\">Regions</a>.</p> <p> <b>Alias records</b> </p> <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, AWS Cloud Map creates a Route 53 alias record. Note the following:</p> <ul> <li> <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth\">EvaluateTargetHealth</a>.</p> </li> <li> <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.</p> </li> </ul> <p> <b>Charges for health checks</b> </p> <p>Health checks are basic Route 53 health checks that monitor an AWS endpoint. For information about pricing for health checks, see <a href=\"http://aws.amazon.com/route53/pricing/\">Amazon Route 53 Pricing</a>.</p>"
    },
    "HealthCheckCustomConfig": {
      "type": "structure",
      "members": {
        "FailureThreshold": {
          "shape": "FailureThreshold",
          "documentation": "<p>The number of 30-second intervals that you want AWS Cloud Map to wait after receiving an <code>UpdateInstanceCustomHealthStatus</code> request before it changes the health status of a service instance. For example, suppose you specify a value of <code>2</code> for <code>FailureTheshold</code>, and then your application sends an <code>UpdateInstanceCustomHealthStatus</code> request. AWS Cloud Map waits for approximately 60 seconds (2 x 30) before changing the status of the service instance based on that request.</p> <p>Sending a second or subsequent <code>UpdateInstanceCustomHealthStatus</code> request with the same value before <code>FailureThreshold x 30</code> seconds has passed doesn't accelerate the change. AWS Cloud Map still waits <code>FailureThreshold x 30</code> seconds after the first request to make the change.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about an optional custom health check. A custom health check, which requires that you use a third-party health checker to evaluate the health of your resources, is useful in the following circumstances:</p> <ul> <li> <p>You can't use a health check that is defined by <code>HealthCheckConfig</code> because the resource isn't available over the internet. For example, you can use a custom health check when the instance is in an Amazon VPC. (To check the health of resources in a VPC, the health checker must also be in the VPC.)</p> </li> <li> <p>You want to use a third-party health checker regardless of where your resources are.</p> </li> </ul> <important> <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code> but not both.</p> </important> <p>To change the status of a custom health check, submit an <code>UpdateInstanceCustomHealthStatus</code> request. AWS Cloud Map doesn't monitor the status of the resource, it just keeps a record of the status specified in the most recent <code>UpdateInstanceCustomHealthStatus</code> request.</p> <p>Here's how custom health checks work:</p> <ol> <li> <p>You create a service and specify a value for <code>FailureThreshold</code>. </p> <p>The failure threshold indicates the number of 30-second intervals you want AWS Cloud Map to wait between the time that your application sends an <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_UpdateInstanceCustomHealthStatus.html\">UpdateInstanceCustomHealthStatus</a> request and the time that AWS Cloud Map stops routing internet traffic to the corresponding resource.</p> </li> <li> <p>You register an instance.</p> </li> <li> <p>You configure a third-party health checker to monitor the resource that is associated with the new instance. </p> <note> <p>AWS Cloud Map doesn't check the health of the resource directly. </p> </note> </li> <li> <p>The third-party health-checker determines that the resource is unhealthy and notifies your application.</p> </li> <li> <p>Your application submits an <code>UpdateInstanceCustomHealthStatus</code> request.</p> </li> <li> <p>AWS Cloud Map waits for (<code>FailureThreshold</code> x 30) seconds.</p> </li> <li> <p>If another <code>UpdateInstanceCustomHealthStatus</code> request doesn't arrive during that time to change the status back to healthy, AWS Cloud Map stops routing traffic to the resource.</p> </li> </ol>"
    },
    "HealthCheckType": {
      "type": "string",
      "enum": [
        "HTTP",
        "HTTPS",
        "TCP"
      ]
    },
    "HealthStatus": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY",
        "UNKNOWN"
      ]
    },
    "HealthStatusFilter": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY",
        "ALL"
      ]
    },
    "HttpInstanceSummary": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of an instance that matches the values that you specified in the request.</p>"
        },
        "NamespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace that you specified when you registered the instance.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the service that you specified when you registered the instance.</p>"
        },
        "HealthStatus": {
          "shape": "HealthStatus",
          "documentation": "<p>If you configured health checking in the service, the current health status of the service instance.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>If you included any attributes when you registered the instance, the values of those attributes.</p>"
        }
      },
      "documentation": "<p>In a response to a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a> request, <code>HttpInstanceSummary</code> contains information about one instance that matches the values that you specified in the request.</p>"
    },
    "HttpInstanceSummaryList": {
      "type": "list",
      "member": {
        "shape": "HttpInstanceSummary"
      }
    },
    "HttpProperties": {
      "type": "structure",
      "members": {
        "HttpName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of an HTTP namespace.</p>"
        }
      },
      "documentation": "<p>A complex type that contains the name of an HTTP namespace.</p>"
    },
    "Instance": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>An identifier that you want to associate with the instance. Note the following:</p> <ul> <li> <p>If the service that is specified by <code>ServiceId</code> includes settings for an <code>SRV</code> record, the value of <code>InstanceId</code> is automatically included as part of the value for the <code>SRV</code> record. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type\">DnsRecord &gt; Type</a>.</p> </li> <li> <p>You can use this value to update an existing instance.</p> </li> <li> <p>To register a new instance, you must specify a value that is unique among instances that you register by using the same service. </p> </li> <li> <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, AWS Cloud Map updates the existing DNS records. If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one. </p> <note> <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a <code>ListHealthChecks</code> request, for example.</p> </note> </li> </ul>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>A string map that contains the following information for the service that you specify in <code>ServiceId</code>:</p> <ul> <li> <p>The attributes that apply to the records that are defined in the service. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <p> <b>AWS_ALIAS_DNS_NAME</b> </p> <p> <b/> </p> <p>If you want AWS Cloud Map to create a Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see \"DNSName\" in the topic <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html\">AliasTarget</a>.</p> <p>Note the following:</p> <ul> <li> <p>The configuration for the service that is specified by <code>ServiceId</code> must include settings for an <code>A</code> record, an <code>AAAA</code> record, or both.</p> </li> <li> <p>In the service that is specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code> must be <code>WEIGHTED</code>.</p> </li> <li> <p>If the service that is specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code> settings, AWS Cloud Map will create the health check, but it won't associate the health check with the alias record.</p> </li> <li> <p>Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than ELB load balancers.</p> </li> <li> <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the <code>AWS_INSTANCE</code> attributes.</p> </li> </ul> <p> <b>AWS_EC2_INSTANCE_ID</b> </p> <p> <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. The <code>AWS_INSTANCE_IPV4</code> attribute contains the primary private IPv4 address.</p> <p> <b>AWS_INSTANCE_CNAME</b> </p> <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53 to return in response to DNS queries, for example, <code>example.com</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>CNAME</code> record.</p> <p> <b>AWS_INSTANCE_IPV4</b> </p> <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, <code>192.0.2.44</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_IPV6</b> </p> <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_PORT</b> </p> <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the port.</p> <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to send requests to. </p> <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check when you created the service.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about an instance that AWS Cloud Map creates when you submit a <code>RegisterInstance</code> request.</p>"
    },
    "InstanceHealthStatusMap": {
      "type": "map",
      "key": {
        "shape": "ResourceId"
      },
      "value": {
        "shape": "HealthStatus"
      }
    },
    "InstanceIdList": {
      "type": "list",
      "member": {
        "shape": "ResourceId"
      },
      "min": 1
    },
    "InstanceSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for an instance that you created by using a specified service.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>A string map that contains the following information:</p> <ul> <li> <p>The attributes that are associate with the instance. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <ul> <li> <p> <code>AWS_ALIAS_DNS_NAME</code>: For an alias record that routes traffic to an Elastic Load Balancing load balancer, the DNS name that is associated with the load balancer. </p> </li> <li> <p> <code>AWS_EC2_INSTANCE_ID</code>: (HTTP namespaces only) The Amazon EC2 instance ID for the instance. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the <code>AWS_INSTANCE_IPV4</code> attribute contains the primary private IPv4 address.</p> </li> <li> <p> <code>AWS_INSTANCE_CNAME</code>: For a <code>CNAME</code> record, the domain name that Route 53 returns in response to DNS queries, for example, <code>example.com</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_IPV4</code>: For an <code>A</code> record, the IPv4 address that Route 53 returns in response to DNS queries, for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_IPV6</code>: For an <code>AAAA</code> record, the IPv6 address that Route 53 returns in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_PORT</code>: For an <code>SRV</code> record, the value that Route 53 returns for the port. In addition, if the service includes <code>HealthCheckConfig</code>, the port on the endpoint that Route 53 sends requests to.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that contains information about the instances that you registered by using a specified service.</p>"
    },
    "InstanceSummaryList": {
      "type": "list",
      "member": {
        "shape": "InstanceSummary"
      }
    },
    "ListInstancesRequest": {
      "type": "structure",
      "required": [
        "ServiceId"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that you want to list instances for.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListInstances</code> request, omit this value.</p> <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>ListInstances</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of instances that you want AWS Cloud Map to return in the response to a <code>ListInstances</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 instances.</p>"
        }
      }
    },
    "ListInstancesResponse": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "InstanceSummaryList",
          "documentation": "<p>Summary information about the instances that are associated with the specified service.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>ListInstances</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>"
        }
      }
    },
    "ListNamespacesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListNamespaces</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p> </note>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of namespaces that you want AWS Cloud Map to return in the response to a <code>ListNamespaces</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 namespaces.</p>"
        },
        "Filters": {
          "shape": "NamespaceFilters",
          "documentation": "<p>A complex type that contains specifications for the namespaces that you want to list.</p> <p>If you specify more than one filter, a namespace must match all filters to be returned by <code>ListNamespaces</code>.</p>"
        }
      }
    },
    "ListNamespacesResponse": {
      "type": "structure",
      "members": {
        "Namespaces": {
          "shape": "NamespaceSummariesList",
          "documentation": "<p>An array that contains one <code>NamespaceSummary</code> object for each namespace that matches the specified filter criteria.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p> </note>"
        }
      }
    },
    "ListOperationsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListOperations</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria. It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the criteria.</p> </note>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items that you want AWS Cloud Map to return in the response to a <code>ListOperations</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 operations.</p>"
        },
        "Filters": {
          "shape": "OperationFilters",
          "documentation": "<p>A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date.</p> <p>If you specify more than one filter, an operation must match all filters to be returned by <code>ListOperations</code>.</p>"
        }
      }
    },
    "ListOperationsResponse": {
      "type": "structure",
      "members": {
        "Operations": {
          "shape": "OperationSummaryList",
          "documentation": "<p>Summary information about the operations that match the specified criteria.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria. It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the criteria.</p> </note>"
        }
      }
    },
    "ListServicesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListServices</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria. It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p> </note>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of services that you want AWS Cloud Map to return in the response to a <code>ListServices</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map returns up to 100 services.</p>"
        },
        "Filters": {
          "shape": "ServiceFilters",
          "documentation": "<p>A complex type that contains specifications for the namespaces that you want to list services for. </p> <p>If you specify more than one filter, an operation must match all filters to be returned by <code>ListServices</code>.</p>"
        }
      }
    },
    "ListServicesResponse": {
      "type": "structure",
      "members": {
        "Services": {
          "shape": "ServiceSummariesList",
          "documentation": "<p>An array that contains one <code>ServiceSummary</code> object for each service that matches the specified filter criteria.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>AWS Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria. It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p> </note>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that are assigned to the resource.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Message": {
      "type": "string"
    },
    "Namespace": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of a namespace.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the namespace when you create it.</p>"
        },
        "Name": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace, such as <code>example.com</code>.</p>"
        },
        "Type": {
          "shape": "NamespaceType",
          "documentation": "<p>The type of the namespace. The methods for discovering instances depends on the value that you specify:</p> <ul> <li> <p> <code>HTTP</code>: Instances can be discovered only programmatically, using the AWS Cloud Map <code>DiscoverInstances</code> API.</p> </li> <li> <p> <code>DNS_PUBLIC</code>: Instances can be discovered using public DNS queries and using the <code>DiscoverInstances</code> API.</p> </li> <li> <p> <code>DNS_PRIVATE</code>: Instances can be discovered using DNS queries in VPCs and using the <code>DiscoverInstances</code> API.</p> </li> </ul>"
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>The description that you specify for the namespace when you create it.</p>"
        },
        "ServiceCount": {
          "shape": "ResourceCount",
          "documentation": "<p>The number of services that are associated with the namespace.</p>"
        },
        "Properties": {
          "shape": "NamespaceProperties",
          "documentation": "<p>A complex type that contains information that's specific to the type of the namespace.</p>"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the namespace was created, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing an operation twice. </p>"
        }
      },
      "documentation": "<p>A complex type that contains information about a specified namespace.</p>"
    },
    "NamespaceFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "NamespaceFilterName",
          "documentation": "<p>Specify <code>TYPE</code>.</p>"
        },
        "Values": {
          "shape": "FilterValues",
          "documentation": "<p>If you specify <code>EQ</code> for <code>Condition</code>, specify either <code>DNS_PUBLIC</code> or <code>DNS_PRIVATE</code>.</p> <p>If you specify <code>IN</code> for <code>Condition</code>, you can specify <code>DNS_PUBLIC</code>, <code>DNS_PRIVATE</code>, or both.</p>"
        },
        "Condition": {
          "shape": "FilterCondition",
          "documentation": "<p>The operator that you want to use to determine whether <code>ListNamespaces</code> returns a namespace. Valid values for <code>condition</code> include:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code> for the condition, you can choose to list only public namespaces or private namespaces, but not both. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code> for the condition, you can choose to list public namespaces, private namespaces, or both. </p> </li> <li> <p> <code>BETWEEN</code>: Not applicable</p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that identifies the namespaces that you want to list. You can choose to list public or private namespaces.</p>"
    },
    "NamespaceFilterName": {
      "type": "string",
      "enum": [
        "TYPE"
      ]
    },
    "NamespaceFilters": {
      "type": "list",
      "member": {
        "shape": "NamespaceFilter"
      }
    },
    "NamespaceName": {
      "type": "string",
      "max": 1024
    },
    "NamespaceProperties": {
      "type": "structure",
      "members": {
        "DnsProperties": {
          "shape": "DnsProperties",
          "documentation": "<p>A complex type that contains the ID for the Route 53 hosted zone that AWS Cloud Map creates when you create a namespace.</p>"
        },
        "HttpProperties": {
          "shape": "HttpProperties",
          "documentation": "<p>A complex type that contains the name of an HTTP namespace.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information that is specific to the namespace type.</p>"
    },
    "NamespaceSummariesList": {
      "type": "list",
      "member": {
        "shape": "NamespaceSummary"
      }
    },
    "NamespaceSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the namespace when you create it.</p>"
        },
        "Name": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace. When you create a namespace, AWS Cloud Map automatically creates a Route 53 hosted zone that has the same name as the namespace.</p>"
        },
        "Type": {
          "shape": "NamespaceType",
          "documentation": "<p>The type of the namespace, either public or private.</p>"
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the namespace.</p>"
        },
        "ServiceCount": {
          "shape": "ResourceCount",
          "documentation": "<p>The number of services that were created using the namespace.</p>"
        },
        "Properties": {
          "shape": "NamespaceProperties"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the namespace was created.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about a namespace.</p>"
    },
    "NamespaceType": {
      "type": "string",
      "enum": [
        "DNS_PUBLIC",
        "DNS_PRIVATE",
        "HTTP"
      ]
    },
    "NextToken": {
      "type": "string",
      "max": 4096
    },
    "Operation": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "OperationId",
          "documentation": "<p>The ID of the operation that you want to get information about.</p>"
        },
        "Type": {
          "shape": "OperationType",
          "documentation": "<p>The name of the operation that is associated with the specified ID.</p>"
        },
        "Status": {
          "shape": "OperationStatus",
          "documentation": "<p>The status of the operation. Values include the following:</p> <ul> <li> <p> <b>SUBMITTED</b>: This is the initial state immediately after you submit a request.</p> </li> <li> <p> <b>PENDING</b>: AWS Cloud Map is performing the operation.</p> </li> <li> <p> <b>SUCCESS</b>: The operation succeeded.</p> </li> <li> <p> <b>FAIL</b>: The operation failed. For the failure reason, see <code>ErrorMessage</code>.</p> </li> </ul>"
        },
        "ErrorMessage": {
          "shape": "Message",
          "documentation": "<p>If the value of <code>Status</code> is <code>FAIL</code>, the reason that the operation failed.</p>"
        },
        "ErrorCode": {
          "shape": "Code",
          "documentation": "<p>The code associated with <code>ErrorMessage</code>. Values for <code>ErrorCode</code> include the following:</p> <ul> <li> <p> <code>ACCESS_DENIED</code> </p> </li> <li> <p> <code>CANNOT_CREATE_HOSTED_ZONE</code> </p> </li> <li> <p> <code>EXPIRED_TOKEN</code> </p> </li> <li> <p> <code>HOSTED_ZONE_NOT_FOUND</code> </p> </li> <li> <p> <code>INTERNAL_FAILURE</code> </p> </li> <li> <p> <code>INVALID_CHANGE_BATCH</code> </p> </li> <li> <p> <code>THROTTLED_REQUEST</code> </p> </li> </ul>"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the request was submitted, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>"
        },
        "UpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the value of <code>Status</code> changed to the current value, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>UpdateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>"
        },
        "Targets": {
          "shape": "OperationTargetsMap",
          "documentation": "<p>The name of the target entity that is associated with the operation:</p> <ul> <li> <p> <b>NAMESPACE</b>: The namespace ID is returned in the <code>ResourceId</code> property.</p> </li> <li> <p> <b>SERVICE</b>: The service ID is returned in the <code>ResourceId</code> property.</p> </li> <li> <p> <b>INSTANCE</b>: The instance ID is returned in the <code>ResourceId</code> property.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that contains information about a specified operation.</p>"
    },
    "OperationFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "OperationFilterName",
          "documentation": "<p>Specify the operations that you want to get:</p> <ul> <li> <p> <b>NAMESPACE_ID</b>: Gets operations related to specified namespaces.</p> </li> <li> <p> <b>SERVICE_ID</b>: Gets operations related to specified services.</p> </li> <li> <p> <b>STATUS</b>: Gets operations based on the status of the operations: <code>SUBMITTED</code>, <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p> </li> <li> <p> <b>TYPE</b>: Gets specified types of operation.</p> </li> <li> <p> <b>UPDATE_DATE</b>: Gets operations that changed status during a specified date/time range. </p> </li> </ul>"
        },
        "Values": {
          "shape": "FilterValues",
          "documentation": "<p>Specify values that are applicable to the value that you specify for <code>Name</code>: </p> <ul> <li> <p> <b>NAMESPACE_ID</b>: Specify one namespace ID.</p> </li> <li> <p> <b>SERVICE_ID</b>: Specify one service ID.</p> </li> <li> <p> <b>STATUS</b>: Specify one or more statuses: <code>SUBMITTED</code>, <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p> </li> <li> <p> <b>TYPE</b>: Specify one or more of the following types: <code>CREATE_NAMESPACE</code>, <code>DELETE_NAMESPACE</code>, <code>UPDATE_SERVICE</code>, <code>REGISTER_INSTANCE</code>, or <code>DEREGISTER_INSTANCE</code>.</p> </li> <li> <p> <b>UPDATE_DATE</b>: Specify a start date and an end date in Unix date/time format and Coordinated Universal Time (UTC). The start date must be the first value.</p> </li> </ul>"
        },
        "Condition": {
          "shape": "FilterCondition",
          "documentation": "<p>The operator that you want to use to determine whether an operation matches the specified value. Valid values for condition include:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code> for the condition, you can specify only one value. <code>EQ</code> is supported for <code>NAMESPACE_ID</code>, <code>SERVICE_ID</code>, <code>STATUS</code>, and <code>TYPE</code>. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code> for the condition, you can specify a list of one or more values. <code>IN</code> is supported for <code>STATUS</code> and <code>TYPE</code>. An operation must match one of the specified values to be returned in the response.</p> </li> <li> <p> <code>BETWEEN</code>: Specify a start date and an end date in Unix date/time format and Coordinated Universal Time (UTC). The start date must be the first value. <code>BETWEEN</code> is supported for <code>UPDATE_DATE</code>. </p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that lets you select the operations that you want to list.</p>"
    },
    "OperationFilterName": {
      "type": "string",
      "enum": [
        "NAMESPACE_ID",
        "SERVICE_ID",
        "STATUS",
        "TYPE",
        "UPDATE_DATE"
      ]
    },
    "OperationFilters": {
      "type": "list",
      "member": {
        "shape": "OperationFilter"
      }
    },
    "OperationId": {
      "type": "string",
      "max": 255
    },
    "OperationStatus": {
      "type": "string",
      "enum": [
        "SUBMITTED",
        "PENDING",
        "SUCCESS",
        "FAIL"
      ]
    },
    "OperationSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "OperationId",
          "documentation": "<p>The ID for an operation.</p>"
        },
        "Status": {
          "shape": "OperationStatus",
          "documentation": "<p>The status of the operation. Values include the following:</p> <ul> <li> <p> <b>SUBMITTED</b>: This is the initial state immediately after you submit a request.</p> </li> <li> <p> <b>PENDING</b>: AWS Cloud Map is performing the operation.</p> </li> <li> <p> <b>SUCCESS</b>: The operation succeeded.</p> </li> <li> <p> <b>FAIL</b>: The operation failed. For the failure reason, see <code>ErrorMessage</code>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that contains information about an operation that matches the criteria that you specified in a <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html\">ListOperations</a> request.</p>"
    },
    "OperationSummaryList": {
      "type": "list",
      "member": {
        "shape": "OperationSummary"
      }
    },
    "OperationTargetType": {
      "type": "string",
      "enum": [
        "NAMESPACE",
        "SERVICE",
        "INSTANCE"
      ]
    },
    "OperationTargetsMap": {
      "type": "map",
      "key": {
        "shape": "OperationTargetType"
      },
      "value": {
        "shape": "ResourceId"
      }
    },
    "OperationType": {
      "type": "string",
      "enum": [
        "CREATE_NAMESPACE",
        "DELETE_NAMESPACE",
        "UPDATE_SERVICE",
        "REGISTER_INSTANCE",
        "DEREGISTER_INSTANCE"
      ]
    },
    "RecordTTL": {
      "type": "long",
      "max": 2147483647,
      "min": 0
    },
    "RecordType": {
      "type": "string",
      "enum": [
        "SRV",
        "A",
        "AAAA",
        "CNAME"
      ]
    },
    "RegisterInstanceRequest": {
      "type": "structure",
      "required": [
        "ServiceId",
        "InstanceId",
        "Attributes"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that you want to use for settings for the instance.</p>"
        },
        "InstanceId": {
          "shape": "ResourceId",
          "documentation": "<p>An identifier that you want to associate with the instance. Note the following:</p> <ul> <li> <p>If the service that is specified by <code>ServiceId</code> includes settings for an <code>SRV</code> record, the value of <code>InstanceId</code> is automatically included as part of the value for the <code>SRV</code> record. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type\">DnsRecord &gt; Type</a>.</p> </li> <li> <p>You can use this value to update an existing instance.</p> </li> <li> <p>To register a new instance, you must specify a value that is unique among instances that you register by using the same service. </p> </li> <li> <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, AWS Cloud Map updates the existing DNS records, if any. If there's also an existing health check, AWS Cloud Map deletes the old health check and creates a new one. </p> <note> <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a <code>ListHealthChecks</code> request, for example.</p> </note> </li> </ul>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>",
          "idempotencyToken": true
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>A string map that contains the following information for the service that you specify in <code>ServiceId</code>:</p> <ul> <li> <p>The attributes that apply to the records that are defined in the service. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <p> <b>AWS_ALIAS_DNS_NAME</b> </p> <p>If you want AWS Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see \"DNSName\" in the topic <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html\">AliasTarget</a> in the <i>Route 53 API Reference</i>.</p> <p>Note the following:</p> <ul> <li> <p>The configuration for the service that is specified by <code>ServiceId</code> must include settings for an <code>A</code> record, an <code>AAAA</code> record, or both.</p> </li> <li> <p>In the service that is specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code> must be <code>WEIGHTED</code>.</p> </li> <li> <p>If the service that is specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code> settings, AWS Cloud Map will create the Route 53 health check, but it won't associate the health check with the alias record.</p> </li> <li> <p>Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than Elastic Load Balancing load balancers.</p> </li> <li> <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the <code>AWS_INSTANCE</code> attributes.</p> </li> </ul> <p> <b>AWS_EC2_INSTANCE_ID</b> </p> <p> <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. If the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the only other attribute that can be specified is <code>AWS_INIT_HEALTH_STATUS</code>. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the <code>AWS_INSTANCE_IPV4</code> attribute will be filled out with the primary private IPv4 address.</p> <p> <b>AWS_INIT_HEALTH_STATUS</b> </p> <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check, <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p> <p> <b>AWS_INSTANCE_CNAME</b> </p> <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53 to return in response to DNS queries, for example, <code>example.com</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>CNAME</code> record.</p> <p> <b>AWS_INSTANCE_IPV4</b> </p> <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, <code>192.0.2.44</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_IPV6</b> </p> <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_PORT</b> </p> <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the port.</p> <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to send requests to. </p> <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check when you created the service.</p> <p> <b>Custom attributes</b> </p> <p>You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of all provided attributes (sum of all keys and values) must not exceed 5,000 characters.</p>"
        }
      }
    },
    "RegisterInstanceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    },
    "ResourceCount": {
      "type": "integer"
    },
    "ResourceDescription": {
      "type": "string",
      "max": 1024
    },
    "ResourceId": {
      "type": "string",
      "max": 64
    },
    "ResourcePath": {
      "type": "string",
      "max": 255
    },
    "RoutingPolicy": {
      "type": "string",
      "enum": [
        "MULTIVALUE",
        "WEIGHTED"
      ]
    },
    "Service": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID that AWS Cloud Map assigned to the service when you created it.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.</p>"
        },
        "Name": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the service.</p>"
        },
        "NamespaceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the namespace that was used to create the service.</p>"
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>The description of the service.</p>"
        },
        "InstanceCount": {
          "shape": "ResourceCount",
          "documentation": "<p>The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.</p>"
        },
        "DnsConfig": {
          "shape": "DnsConfig",
          "documentation": "<p>A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.</p>"
        },
        "HealthCheckConfig": {
          "shape": "HealthCheckConfig",
          "documentation": "<p> <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, AWS Cloud Map associates the health check with the records that you specify in <code>DnsConfig</code>.</p> <p>For information about the charges for health checks, see <a href=\"http://aws.amazon.com/route53/pricing/\">Amazon Route 53 Pricing</a>.</p>"
        },
        "HealthCheckCustomConfig": {
          "shape": "HealthCheckCustomConfig",
          "documentation": "<p>A complex type that contains information about an optional custom health check.</p> <important> <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code> or <code>HealthCheckConfig</code> but not both.</p> </important>"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the service was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>"
        },
        "CreatorRequestId": {
          "shape": "ResourceId",
          "documentation": "<p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the specified service.</p>"
    },
    "ServiceChange": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>A description for the service.</p>"
        },
        "DnsConfig": {
          "shape": "DnsConfigChange",
          "documentation": "<p>A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.</p>"
        },
        "HealthCheckConfig": {
          "shape": "HealthCheckConfig"
        }
      },
      "documentation": "<p>A complex type that contains changes to an existing service.</p>"
    },
    "ServiceFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "ServiceFilterName",
          "documentation": "<p>Specify <code>NAMESPACE_ID</code>.</p>"
        },
        "Values": {
          "shape": "FilterValues",
          "documentation": "<p>The values that are applicable to the value that you specify for <code>Condition</code> to filter the list of services.</p>"
        },
        "Condition": {
          "shape": "FilterCondition",
          "documentation": "<p>The operator that you want to use to determine whether a service is returned by <code>ListServices</code>. Valid values for <code>Condition</code> include the following:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code>, specify one namespace ID for <code>Values</code>. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code>, specify a list of the IDs for the namespaces that you want <code>ListServices</code> to return a list of services for.</p> </li> <li> <p> <code>BETWEEN</code>: Not applicable.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A complex type that lets you specify the namespaces that you want to list services for.</p>"
    },
    "ServiceFilterName": {
      "type": "string",
      "enum": [
        "NAMESPACE_ID"
      ]
    },
    "ServiceFilters": {
      "type": "list",
      "member": {
        "shape": "ServiceFilter"
      }
    },
    "ServiceName": {
      "type": "string",
      "pattern": "((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)"
    },
    "ServiceSummariesList": {
      "type": "list",
      "member": {
        "shape": "ServiceSummary"
      }
    },
    "ServiceSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID that AWS Cloud Map assigned to the service when you created it.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the service when you create it.</p>"
        },
        "Name": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the service.</p>"
        },
        "Description": {
          "shape": "ResourceDescription",
          "documentation": "<p>The description that you specify when you create the service.</p>"
        },
        "InstanceCount": {
          "shape": "ResourceCount",
          "documentation": "<p>The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count. The count might not reflect pending registrations and deregistrations.</p>"
        },
        "DnsConfig": {
          "shape": "DnsConfig"
        },
        "HealthCheckConfig": {
          "shape": "HealthCheckConfig"
        },
        "HealthCheckCustomConfig": {
          "shape": "HealthCheckCustomConfig"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the service was created.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about a specified service.</p>"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key identifier, or name, of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The string value associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.</p>"
        }
      },
      "documentation": "<p>A custom key-value pair associated with a resource.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the specified resource. Specifying the tag key is required. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys to remove from the specified resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateInstanceCustomHealthStatusRequest": {
      "type": "structure",
      "required": [
        "ServiceId",
        "InstanceId",
        "Status"
      ],
      "members": {
        "ServiceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that includes the configuration for the custom health check that you want to change the status for.</p>"
        },
        "InstanceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the instance that you want to change the health status for.</p>"
        },
        "Status": {
          "shape": "CustomHealthStatus",
          "documentation": "<p>The new status of the instance, <code>HEALTHY</code> or <code>UNHEALTHY</code>.</p>"
        }
      }
    },
    "UpdateServiceRequest": {
      "type": "structure",
      "required": [
        "Id",
        "Service"
      ],
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the service that you want to update.</p>"
        },
        "Service": {
          "shape": "ServiceChange",
          "documentation": "<p>A complex type that contains the new settings for the service.</p>"
        }
      }
    },
    "UpdateServiceResponse": {
      "type": "structure",
      "members": {
        "OperationId": {
          "shape": "OperationId",
          "documentation": "<p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html\">GetOperation</a>.</p>"
        }
      }
    }
  },
  "documentation": "<p>AWS Cloud Map lets you configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance of the service becomes available, you can call the AWS Cloud Map API to register the instance with AWS Cloud Map. For public or private DNS namespaces, AWS Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records. </p>"
}
]===]))
