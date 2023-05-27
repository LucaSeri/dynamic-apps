local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-04-16",
    "endpointPrefix": "ds",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Directory Service",
    "serviceFullName": "AWS Directory Service",
    "serviceId": "Directory Service",
    "signatureVersion": "v4",
    "targetPrefix": "DirectoryService_20150416",
    "uid": "ds-2015-04-16"
  },
  "operations": {
    "AcceptSharedDirectory": {
      "name": "AcceptSharedDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptSharedDirectoryRequest"
      },
      "output": {
        "shape": "AcceptSharedDirectoryResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryAlreadySharedException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Accepts a directory sharing request that was sent from the directory owner account.</p>"
    },
    "AddIpRoutes": {
      "name": "AddIpRoutes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddIpRoutesRequest"
      },
      "output": {
        "shape": "AddIpRoutesResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "IpRouteLimitExceededException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. <i>AddIpRoutes</i> adds this address block. You can also use <i>AddIpRoutes</i> to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC. </p> <p>Before you call <i>AddIpRoutes</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>AddIpRoutes</i> operation, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html\">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>"
    },
    "AddTagsToResource": {
      "name": "AddTagsToResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToResourceRequest"
      },
      "output": {
        "shape": "AddTagsToResourceResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "TagLimitExceededException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.</p>"
    },
    "CancelSchemaExtension": {
      "name": "CancelSchemaExtension",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelSchemaExtensionRequest"
      },
      "output": {
        "shape": "CancelSchemaExtensionResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; <code>Initializing</code>, <code>CreatingSnapshot</code>, and <code>UpdatingSchema</code>.</p>"
    },
    "ConnectDirectory": {
      "name": "ConnectDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ConnectDirectoryRequest"
      },
      "output": {
        "shape": "ConnectDirectoryResult"
      },
      "errors": [
        {
          "shape": "DirectoryLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates an AD Connector to connect to an on-premises directory.</p> <p>Before you call <code>ConnectDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>ConnectDirectory</code> operation, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html\">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>"
    },
    "CreateAlias": {
      "name": "CreateAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAliasRequest"
      },
      "output": {
        "shape": "CreateAliasResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>.</p> <important> <p>After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.</p> </important>"
    },
    "CreateComputer": {
      "name": "CreateComputer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateComputerRequest"
      },
      "output": {
        "shape": "CreateComputerResult"
      },
      "errors": [
        {
          "shape": "AuthenticationFailedException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates a computer account in the specified directory, and joins the computer to the directory.</p>"
    },
    "CreateConditionalForwarder": {
      "name": "CreateConditionalForwarder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConditionalForwarderRequest"
      },
      "output": {
        "shape": "CreateConditionalForwarderResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.</p>"
    },
    "CreateDirectory": {
      "name": "CreateDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDirectoryRequest"
      },
      "output": {
        "shape": "CreateDirectoryResult"
      },
      "errors": [
        {
          "shape": "DirectoryLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates a Simple AD directory. For more information, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html\">Simple Active Directory</a> in the <i>AWS Directory Service Admin Guide</i>.</p> <p>Before you call <code>CreateDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>CreateDirectory</code> operation, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html\">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>"
    },
    "CreateLogSubscription": {
      "name": "CreateLogSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLogSubscriptionRequest"
      },
      "output": {
        "shape": "CreateLogSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates a subscription to forward real-time Directory Service domain controller security logs to the specified Amazon CloudWatch log group in your AWS account.</p>"
    },
    "CreateMicrosoftAD": {
      "name": "CreateMicrosoftAD",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateMicrosoftADRequest"
      },
      "output": {
        "shape": "CreateMicrosoftADResult"
      },
      "errors": [
        {
          "shape": "DirectoryLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Creates a Microsoft AD directory in the AWS Cloud. For more information, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html\">AWS Managed Microsoft AD</a> in the <i>AWS Directory Service Admin Guide</i>.</p> <p>Before you call <i>CreateMicrosoftAD</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>CreateMicrosoftAD</i> operation, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html\">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>"
    },
    "CreateSnapshot": {
      "name": "CreateSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSnapshotRequest"
      },
      "output": {
        "shape": "CreateSnapshotResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "SnapshotLimitExceededException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.</p> <note> <p>You cannot take snapshots of AD Connector directories.</p> </note>"
    },
    "CreateTrust": {
      "name": "CreateTrust",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTrustRequest"
      },
      "output": {
        "shape": "CreateTrustResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.</p>"
    },
    "DeleteConditionalForwarder": {
      "name": "DeleteConditionalForwarder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConditionalForwarderRequest"
      },
      "output": {
        "shape": "DeleteConditionalForwarderResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deletes a conditional forwarder that has been set up for your AWS directory.</p>"
    },
    "DeleteDirectory": {
      "name": "DeleteDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDirectoryRequest"
      },
      "output": {
        "shape": "DeleteDirectoryResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deletes an AWS Directory Service directory.</p> <p>Before you call <code>DeleteDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>DeleteDirectory</code> operation, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html\">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>"
    },
    "DeleteLogSubscription": {
      "name": "DeleteLogSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLogSubscriptionRequest"
      },
      "output": {
        "shape": "DeleteLogSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deletes the specified log subscription.</p>"
    },
    "DeleteSnapshot": {
      "name": "DeleteSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSnapshotRequest"
      },
      "output": {
        "shape": "DeleteSnapshotResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deletes a directory snapshot.</p>"
    },
    "DeleteTrust": {
      "name": "DeleteTrust",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTrustRequest"
      },
      "output": {
        "shape": "DeleteTrustResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.</p>"
    },
    "DeregisterCertificate": {
      "name": "DeregisterCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterCertificateRequest"
      },
      "output": {
        "shape": "DeregisterCertificateResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "CertificateDoesNotExistException"
        },
        {
          "shape": "CertificateInUseException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deletes from the system the certificate that was registered for a secured LDAP connection.</p>"
    },
    "DeregisterEventTopic": {
      "name": "DeregisterEventTopic",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterEventTopicRequest"
      },
      "output": {
        "shape": "DeregisterEventTopicResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Removes the specified directory as a publisher to the specified SNS topic.</p>"
    },
    "DescribeCertificate": {
      "name": "DescribeCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificateRequest"
      },
      "output": {
        "shape": "DescribeCertificateResult"
      },
      "errors": [
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "CertificateDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Displays information about the certificate registered for a secured LDAP connection.</p>"
    },
    "DescribeConditionalForwarders": {
      "name": "DescribeConditionalForwarders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConditionalForwardersRequest"
      },
      "output": {
        "shape": "DescribeConditionalForwardersResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains information about the conditional forwarders for this account.</p> <p>If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.</p>"
    },
    "DescribeDirectories": {
      "name": "DescribeDirectories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDirectoriesRequest"
      },
      "output": {
        "shape": "DescribeDirectoriesResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains information about the directories that belong to this account.</p> <p>You can retrieve information about specific directories by passing the directory identifiers in the <code>DirectoryIds</code> parameter. Otherwise, all directories that belong to the current account are returned.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> request and response parameters. If more results are available, the <code>DescribeDirectoriesResult.NextToken</code> member contains a token that you pass in the next call to <a>DescribeDirectories</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <code>Limit</code> parameter.</p>"
    },
    "DescribeDomainControllers": {
      "name": "DescribeDomainControllers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDomainControllersRequest"
      },
      "output": {
        "shape": "DescribeDomainControllersResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Provides information about any domain controllers in your directory.</p>"
    },
    "DescribeEventTopics": {
      "name": "DescribeEventTopics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventTopicsRequest"
      },
      "output": {
        "shape": "DescribeEventTopicsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains information about which SNS topics receive status messages from the specified directory.</p> <p>If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.</p>"
    },
    "DescribeLDAPSSettings": {
      "name": "DescribeLDAPSSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLDAPSSettingsRequest"
      },
      "output": {
        "shape": "DescribeLDAPSSettingsResult"
      },
      "errors": [
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Describes the status of LDAP security for the specified directory.</p>"
    },
    "DescribeSharedDirectories": {
      "name": "DescribeSharedDirectories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSharedDirectoriesRequest"
      },
      "output": {
        "shape": "DescribeSharedDirectoriesResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Returns the shared directories in your account. </p>"
    },
    "DescribeSnapshots": {
      "name": "DescribeSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSnapshotsRequest"
      },
      "output": {
        "shape": "DescribeSnapshotsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains information about the directory snapshots that belong to this account.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> request and response parameters. If more results are available, the <i>DescribeSnapshots.NextToken</i> member contains a token that you pass in the next call to <a>DescribeSnapshots</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <i>Limit</i> parameter.</p>"
    },
    "DescribeTrusts": {
      "name": "DescribeTrusts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrustsRequest"
      },
      "output": {
        "shape": "DescribeTrustsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Obtains information about the trust relationships for this account.</p> <p>If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.</p>"
    },
    "DisableLDAPS": {
      "name": "DisableLDAPS",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableLDAPSRequest"
      },
      "output": {
        "shape": "DisableLDAPSResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "InvalidLDAPSStatusException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Deactivates LDAP secure calls for the specified directory.</p>"
    },
    "DisableRadius": {
      "name": "DisableRadius",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableRadiusRequest"
      },
      "output": {
        "shape": "DisableRadiusResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>"
    },
    "DisableSso": {
      "name": "DisableSso",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableSsoRequest"
      },
      "output": {
        "shape": "DisableSsoResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "AuthenticationFailedException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Disables single-sign on for a directory.</p>"
    },
    "EnableLDAPS": {
      "name": "EnableLDAPS",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableLDAPSRequest"
      },
      "output": {
        "shape": "EnableLDAPSResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "NoAvailableCertificateException"
        },
        {
          "shape": "InvalidLDAPSStatusException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Activates the switch for the specific directory to always use LDAP secure calls.</p>"
    },
    "EnableRadius": {
      "name": "EnableRadius",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableRadiusRequest"
      },
      "output": {
        "shape": "EnableRadiusResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>"
    },
    "EnableSso": {
      "name": "EnableSso",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableSsoRequest"
      },
      "output": {
        "shape": "EnableSsoResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "AuthenticationFailedException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Enables single sign-on for a directory. Single sign-on allows users in your directory to access certain AWS services from a computer joined to the directory without having to enter their credentials separately.</p>"
    },
    "GetDirectoryLimits": {
      "name": "GetDirectoryLimits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDirectoryLimitsRequest"
      },
      "output": {
        "shape": "GetDirectoryLimitsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains directory limit information for the current Region.</p>"
    },
    "GetSnapshotLimits": {
      "name": "GetSnapshotLimits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSnapshotLimitsRequest"
      },
      "output": {
        "shape": "GetSnapshotLimitsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Obtains the manual snapshot limits for a directory.</p>"
    },
    "ListCertificates": {
      "name": "ListCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCertificatesRequest"
      },
      "output": {
        "shape": "ListCertificatesResult"
      },
      "errors": [
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>For the specified directory, lists all the certificates registered for a secured LDAP connection.</p>"
    },
    "ListIpRoutes": {
      "name": "ListIpRoutes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListIpRoutesRequest"
      },
      "output": {
        "shape": "ListIpRoutesResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Lists the address blocks that you have added to a directory.</p>"
    },
    "ListLogSubscriptions": {
      "name": "ListLogSubscriptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLogSubscriptionsRequest"
      },
      "output": {
        "shape": "ListLogSubscriptionsResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Lists the active log subscriptions for the AWS account.</p>"
    },
    "ListSchemaExtensions": {
      "name": "ListSchemaExtensions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSchemaExtensionsRequest"
      },
      "output": {
        "shape": "ListSchemaExtensionsResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Lists all schema extensions applied to a Microsoft AD Directory.</p>"
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
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Lists all tags on a directory.</p>"
    },
    "RegisterCertificate": {
      "name": "RegisterCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterCertificateRequest"
      },
      "output": {
        "shape": "RegisterCertificateResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "DirectoryDoesNotExistException"
        },
        {
          "shape": "InvalidCertificateException"
        },
        {
          "shape": "CertificateLimitExceededException"
        },
        {
          "shape": "CertificateAlreadyExistsException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Registers a certificate for secured LDAP connection.</p>"
    },
    "RegisterEventTopic": {
      "name": "RegisterEventTopic",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterEventTopicRequest"
      },
      "output": {
        "shape": "RegisterEventTopicResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.</p>"
    },
    "RejectSharedDirectory": {
      "name": "RejectSharedDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RejectSharedDirectoryRequest"
      },
      "output": {
        "shape": "RejectSharedDirectoryResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryAlreadySharedException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Rejects a directory sharing request that was sent from the directory owner account.</p>"
    },
    "RemoveIpRoutes": {
      "name": "RemoveIpRoutes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveIpRoutesRequest"
      },
      "output": {
        "shape": "RemoveIpRoutesResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Removes IP address blocks from a directory.</p>"
    },
    "RemoveTagsFromResource": {
      "name": "RemoveTagsFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromResourceRequest"
      },
      "output": {
        "shape": "RemoveTagsFromResourceResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Removes tags from a directory.</p>"
    },
    "ResetUserPassword": {
      "name": "ResetUserPassword",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetUserPasswordRequest"
      },
      "output": {
        "shape": "ResetUserPasswordResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "UserDoesNotExistException"
        },
        {
          "shape": "InvalidPasswordException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory.</p> <p>You can reset the password for any user in your directory with the following exceptions:</p> <ul> <li> <p>For Simple AD, you cannot reset the password for any user that is a member of either the <b>Domain Admins</b> or <b>Enterprise Admins</b> group except for the administrator user.</p> </li> <li> <p>For AWS Managed Microsoft AD, you can only reset the password for a user that is in an OU based off of the NetBIOS name that you typed when you created your directory. For example, you cannot reset the password for a user in the <b>AWS Reserved</b> OU. For more information about the OU structure for an AWS Managed Microsoft AD directory, see <a href=\"https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html\">What Gets Created</a> in the <i>AWS Directory Service Administration Guide</i>.</p> </li> </ul>"
    },
    "RestoreFromSnapshot": {
      "name": "RestoreFromSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreFromSnapshotRequest"
      },
      "output": {
        "shape": "RestoreFromSnapshotResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Restores a directory using an existing directory snapshot.</p> <p>When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.</p> <p>This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the <a>DescribeDirectories</a> operation with the directory identifier. When the <b>DirectoryDescription.Stage</b> value changes to <code>Active</code>, the restore operation is complete.</p>"
    },
    "ShareDirectory": {
      "name": "ShareDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ShareDirectoryRequest"
      },
      "output": {
        "shape": "ShareDirectoryResult"
      },
      "errors": [
        {
          "shape": "DirectoryAlreadySharedException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidTargetException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ShareLimitExceededException"
        },
        {
          "shape": "OrganizationsException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Shares a specified directory (<code>DirectoryId</code>) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region.</p> <p>When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account.</p> <p>The <code>ShareMethod</code> parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (<code>ORGANIZATIONS</code>). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (<code>HANDSHAKE</code>).</p> <p>The <code>ShareNotes</code> parameter is only used when <code>HANDSHAKE</code> is called, which sends a directory sharing request to the directory consumer. </p>"
    },
    "StartSchemaExtension": {
      "name": "StartSchemaExtension",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartSchemaExtensionRequest"
      },
      "output": {
        "shape": "StartSchemaExtensionResult"
      },
      "errors": [
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "SnapshotLimitExceededException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Applies a schema extension to a Microsoft AD directory.</p>"
    },
    "UnshareDirectory": {
      "name": "UnshareDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UnshareDirectoryRequest"
      },
      "output": {
        "shape": "UnshareDirectoryResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidTargetException"
        },
        {
          "shape": "DirectoryNotSharedException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Stops the directory sharing between the directory owner and consumer accounts. </p>"
    },
    "UpdateConditionalForwarder": {
      "name": "UpdateConditionalForwarder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConditionalForwarderRequest"
      },
      "output": {
        "shape": "UpdateConditionalForwarderResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Updates a conditional forwarder that has been set up for your AWS directory.</p>"
    },
    "UpdateNumberOfDomainControllers": {
      "name": "UpdateNumberOfDomainControllers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateNumberOfDomainControllersRequest"
      },
      "output": {
        "shape": "UpdateNumberOfDomainControllersResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "DirectoryUnavailableException"
        },
        {
          "shape": "DomainControllerLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.</p>"
    },
    "UpdateRadius": {
      "name": "UpdateRadius",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRadiusRequest"
      },
      "output": {
        "shape": "UpdateRadiusResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.</p>"
    },
    "UpdateTrust": {
      "name": "UpdateTrust",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTrustRequest"
      },
      "output": {
        "shape": "UpdateTrustResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.</p>"
    },
    "VerifyTrust": {
      "name": "VerifyTrust",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "VerifyTrustRequest"
      },
      "output": {
        "shape": "VerifyTrustResult"
      },
      "errors": [
        {
          "shape": "EntityDoesNotExistException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships.</p> <p>This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.</p>"
    }
  },
  "shapes": {
    "AcceptSharedDirectoryRequest": {
      "type": "structure",
      "required": [
        "SharedDirectoryId"
      ],
      "members": {
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account. </p>"
        }
      }
    },
    "AcceptSharedDirectoryResult": {
      "type": "structure",
      "members": {
        "SharedDirectory": {
          "shape": "SharedDirectory",
          "documentation": "<p>The shared directory in the directory consumer account.</p>"
        }
      }
    },
    "AccessUrl": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "AddIpRoutesRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "IpRoutes"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier (ID) of the directory to which to add the address block.</p>"
        },
        "IpRoutes": {
          "shape": "IpRoutes",
          "documentation": "<p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP address block of the DNS server used for your on-premises domain.</p>"
        },
        "UpdateSecurityGroupForDirectoryControllers": {
          "shape": "UpdateSecurityGroupForDirectoryControllers",
          "documentation": "<p>If set to true, updates the inbound and outbound rules of the security group that has the description: \"AWS created security group for <i>directory ID</i> directory controllers.\" Following are the new rules: </p> <p>Inbound:</p> <ul> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source: 0.0.0.0/0</p> </li> <li> <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0</p> </li> <li> <p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p> </li> <li> <p>Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0</p> </li> </ul> <p/> <p>Outbound:</p> <ul> <li> <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p> </li> </ul> <p>These security rules impact an internal network interface that is not exposed publicly.</p>"
        }
      }
    },
    "AddIpRoutesResult": {
      "type": "structure",
      "members": {}
    },
    "AddTagsToResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Tags"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Identifier (ID) for the directory to which to add the tag.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to be assigned to the directory.</p>"
        }
      }
    },
    "AddTagsToResourceResult": {
      "type": "structure",
      "members": {}
    },
    "AddedDateTime": {
      "type": "timestamp"
    },
    "AliasName": {
      "type": "string",
      "max": 62,
      "min": 1,
      "pattern": "^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*"
    },
    "Attribute": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AttributeName",
          "documentation": "<p>The name of the attribute.</p>"
        },
        "Value": {
          "shape": "AttributeValue",
          "documentation": "<p>The value of the attribute.</p>"
        }
      },
      "documentation": "<p>Represents a named directory attribute.</p>"
    },
    "AttributeName": {
      "type": "string",
      "min": 1
    },
    "AttributeValue": {
      "type": "string"
    },
    "Attributes": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      }
    },
    "AvailabilityZone": {
      "type": "string"
    },
    "AvailabilityZones": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZone"
      }
    },
    "CancelSchemaExtensionRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "SchemaExtensionId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory whose schema extension will be canceled.</p>"
        },
        "SchemaExtensionId": {
          "shape": "SchemaExtensionId",
          "documentation": "<p>The identifier of the schema extension that will be canceled.</p>"
        }
      }
    },
    "CancelSchemaExtensionResult": {
      "type": "structure",
      "members": {}
    },
    "Certificate": {
      "type": "structure",
      "members": {
        "CertificateId": {
          "shape": "CertificateId",
          "documentation": "<p>The identifier of the certificate.</p>"
        },
        "State": {
          "shape": "CertificateState",
          "documentation": "<p>The state of the certificate.</p>"
        },
        "StateReason": {
          "shape": "CertificateStateReason",
          "documentation": "<p>Describes a state change for the certificate.</p>"
        },
        "CommonName": {
          "shape": "CertificateCN",
          "documentation": "<p>The common name for the certificate.</p>"
        },
        "RegisteredDateTime": {
          "shape": "CertificateRegisteredDateTime",
          "documentation": "<p>The date and time that the certificate was registered.</p>"
        },
        "ExpiryDateTime": {
          "shape": "CertificateExpiryDateTime",
          "documentation": "<p>The date and time when the certificate will expire.</p>"
        }
      },
      "documentation": "<p>Information about the certificate.</p>"
    },
    "CertificateCN": {
      "type": "string"
    },
    "CertificateData": {
      "type": "string",
      "max": 8192,
      "min": 1
    },
    "CertificateExpiryDateTime": {
      "type": "timestamp"
    },
    "CertificateId": {
      "type": "string",
      "pattern": "^c-[0-9a-f]{10}$"
    },
    "CertificateInfo": {
      "type": "structure",
      "members": {
        "CertificateId": {
          "shape": "CertificateId",
          "documentation": "<p>The identifier of the certificate.</p>"
        },
        "CommonName": {
          "shape": "CertificateCN",
          "documentation": "<p>The common name for the certificate.</p>"
        },
        "State": {
          "shape": "CertificateState",
          "documentation": "<p>The state of the certificate.</p>"
        },
        "ExpiryDateTime": {
          "shape": "CertificateExpiryDateTime",
          "documentation": "<p>The date and time when the certificate will expire.</p>"
        }
      },
      "documentation": "<p>Contains general information about a certificate.</p>"
    },
    "CertificateRegisteredDateTime": {
      "type": "timestamp"
    },
    "CertificateState": {
      "type": "string",
      "enum": [
        "Registering",
        "Registered",
        "RegisterFailed",
        "Deregistering",
        "Deregistered",
        "DeregisterFailed"
      ]
    },
    "CertificateStateReason": {
      "type": "string"
    },
    "CertificatesInfo": {
      "type": "list",
      "member": {
        "shape": "CertificateInfo"
      }
    },
    "CidrIp": {
      "type": "string",
      "pattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/([1-9]|[1-2][0-9]|3[0-2]))$"
    },
    "CidrIps": {
      "type": "list",
      "member": {
        "shape": "CidrIp"
      }
    },
    "CloudOnlyDirectoriesLimitReached": {
      "type": "boolean"
    },
    "Computer": {
      "type": "structure",
      "members": {
        "ComputerId": {
          "shape": "SID",
          "documentation": "<p>The identifier of the computer.</p>"
        },
        "ComputerName": {
          "shape": "ComputerName",
          "documentation": "<p>The computer name.</p>"
        },
        "ComputerAttributes": {
          "shape": "Attributes",
          "documentation": "<p>An array of <a>Attribute</a> objects containing the LDAP attributes that belong to the computer account.</p>"
        }
      },
      "documentation": "<p>Contains information about a computer account in a directory.</p>"
    },
    "ComputerName": {
      "type": "string",
      "max": 15,
      "min": 1
    },
    "ComputerPassword": {
      "type": "string",
      "max": 64,
      "min": 8,
      "pattern": "[\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "ConditionalForwarder": {
      "type": "structure",
      "members": {
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The fully qualified domain name (FQDN) of the remote domains pointed to by the conditional forwarder.</p>"
        },
        "DnsIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>The IP addresses of the remote DNS server associated with RemoteDomainName. This is the IP address of the DNS server that your conditional forwarder points to.</p>"
        },
        "ReplicationScope": {
          "shape": "ReplicationScope",
          "documentation": "<p>The replication scope of the conditional forwarder. The only allowed value is <code>Domain</code>, which will replicate the conditional forwarder to all of the domain controllers for your AWS directory.</p>"
        }
      },
      "documentation": "<p>Points to a remote domain with which you are setting up a trust relationship. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>"
    },
    "ConditionalForwarders": {
      "type": "list",
      "member": {
        "shape": "ConditionalForwarder"
      }
    },
    "ConnectDirectoryRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Password",
        "Size",
        "ConnectSettings"
      ],
      "members": {
        "Name": {
          "shape": "DirectoryName",
          "documentation": "<p>The fully qualified name of the on-premises directory, such as <code>corp.example.com</code>.</p>"
        },
        "ShortName": {
          "shape": "DirectoryShortName",
          "documentation": "<p>The NetBIOS name of the on-premises directory, such as <code>CORP</code>.</p>"
        },
        "Password": {
          "shape": "ConnectPassword",
          "documentation": "<p>The password for the on-premises user account.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the directory.</p>"
        },
        "Size": {
          "shape": "DirectorySize",
          "documentation": "<p>The size of the directory.</p>"
        },
        "ConnectSettings": {
          "shape": "DirectoryConnectSettings",
          "documentation": "<p>A <a>DirectoryConnectSettings</a> object that contains additional information for the operation.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to be assigned to AD Connector.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>"
    },
    "ConnectDirectoryResult": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the new directory.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>ConnectDirectory</a> operation.</p>"
    },
    "ConnectPassword": {
      "type": "string",
      "max": 128,
      "min": 1,
      "sensitive": true
    },
    "ConnectedDirectoriesLimitReached": {
      "type": "boolean"
    },
    "CreateAliasRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "Alias"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to create the alias.</p>"
        },
        "Alias": {
          "shape": "AliasName",
          "documentation": "<p>The requested alias.</p> <p>The alias must be unique amongst all aliases in AWS. This operation throws an <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>CreateAlias</a> operation.</p>"
    },
    "CreateAliasResult": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "Alias": {
          "shape": "AliasName",
          "documentation": "<p>The alias for the directory.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>CreateAlias</a> operation.</p>"
    },
    "CreateComputerRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "ComputerName",
        "Password"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory in which to create the computer account.</p>"
        },
        "ComputerName": {
          "shape": "ComputerName",
          "documentation": "<p>The name of the computer account.</p>"
        },
        "Password": {
          "shape": "ComputerPassword",
          "documentation": "<p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>"
        },
        "OrganizationalUnitDistinguishedName": {
          "shape": "OrganizationalUnitDN",
          "documentation": "<p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>"
        },
        "ComputerAttributes": {
          "shape": "Attributes",
          "documentation": "<p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the computer account.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>CreateComputer</a> operation.</p>"
    },
    "CreateComputerResult": {
      "type": "structure",
      "members": {
        "Computer": {
          "shape": "Computer",
          "documentation": "<p>A <a>Computer</a> object that represents the computer account.</p>"
        }
      },
      "documentation": "<p>Contains the results for the <a>CreateComputer</a> operation.</p>"
    },
    "CreateConditionalForwarderRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RemoteDomainName",
        "DnsIpAddrs"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory ID of the AWS directory for which you are creating the conditional forwarder.</p>"
        },
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>"
        },
        "DnsIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>"
        }
      },
      "documentation": "<p>Initiates the creation of a conditional forwarder for your AWS Directory Service for Microsoft Active Directory. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>"
    },
    "CreateConditionalForwarderResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result of a CreateConditinalForwarder request.</p>"
    },
    "CreateDirectoryRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Password",
        "Size"
      ],
      "members": {
        "Name": {
          "shape": "DirectoryName",
          "documentation": "<p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>"
        },
        "ShortName": {
          "shape": "DirectoryShortName",
          "documentation": "<p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>"
        },
        "Password": {
          "shape": "Password",
          "documentation": "<p>The password for the directory administrator. The directory creation process creates a directory administrator account with the user name <code>Administrator</code> and this password.</p> <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the directory.</p>"
        },
        "Size": {
          "shape": "DirectorySize",
          "documentation": "<p>The size of the directory.</p>"
        },
        "VpcSettings": {
          "shape": "DirectoryVpcSettings",
          "documentation": "<p>A <a>DirectoryVpcSettings</a> object that contains additional information for the operation.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to be assigned to the Simple AD directory.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>"
    },
    "CreateDirectoryResult": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory that was created.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>CreateDirectory</a> operation.</p>"
    },
    "CreateLogSubscriptionRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "LogGroupName"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory to which you want to subscribe and receive real-time logs to your specified CloudWatch log group.</p>"
        },
        "LogGroupName": {
          "shape": "LogGroupName",
          "documentation": "<p>The name of the CloudWatch log group where the real-time domain controller logs are forwarded.</p>"
        }
      }
    },
    "CreateLogSubscriptionResult": {
      "type": "structure",
      "members": {}
    },
    "CreateMicrosoftADRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Password",
        "VpcSettings"
      ],
      "members": {
        "Name": {
          "shape": "DirectoryName",
          "documentation": "<p>The fully qualified domain name for the AWS Managed Microsoft AD directory, such as <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need to be publicly resolvable.</p>"
        },
        "ShortName": {
          "shape": "DirectoryShortName",
          "documentation": "<p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a NetBIOS name, it will default to the first part of your directory DNS. For example, <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>"
        },
        "Password": {
          "shape": "Password",
          "documentation": "<p>The password for the default administrative user named <code>Admin</code>.</p> <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the directory. This label will appear on the AWS console <code>Directory Details</code> page after the directory is created.</p>"
        },
        "VpcSettings": {
          "shape": "DirectoryVpcSettings",
          "documentation": "<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>"
        },
        "Edition": {
          "shape": "DirectoryEdition",
          "documentation": "<p>AWS Managed Microsoft AD is available in two editions: <code>Standard</code> and <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to be assigned to the AWS Managed Microsoft AD directory.</p>"
        }
      },
      "documentation": "<p>Creates an AWS Managed Microsoft AD directory.</p>"
    },
    "CreateMicrosoftADResult": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory that was created.</p>"
        }
      },
      "documentation": "<p>Result of a CreateMicrosoftAD request.</p>"
    },
    "CreateSnapshotBeforeSchemaExtension": {
      "type": "boolean"
    },
    "CreateSnapshotRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory of which to take a snapshot.</p>"
        },
        "Name": {
          "shape": "SnapshotName",
          "documentation": "<p>The descriptive name to apply to the snapshot.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>"
    },
    "CreateSnapshotResult": {
      "type": "structure",
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The identifier of the snapshot that was created.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>CreateSnapshot</a> operation.</p>"
    },
    "CreateTrustRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RemoteDomainName",
        "TrustPassword",
        "TrustDirection"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID of the AWS Managed Microsoft AD directory for which to establish the trust relationship.</p>"
        },
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the trust relationship.</p>"
        },
        "TrustPassword": {
          "shape": "TrustPassword",
          "documentation": "<p>The trust password. The must be the same password that was used when creating the trust relationship on the external domain.</p>"
        },
        "TrustDirection": {
          "shape": "TrustDirection",
          "documentation": "<p>The direction of the trust relationship.</p>"
        },
        "TrustType": {
          "shape": "TrustType",
          "documentation": "<p>The trust relationship type. <code>Forest</code> is the default.</p>"
        },
        "ConditionalForwarderIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>"
        },
        "SelectiveAuth": {
          "shape": "SelectiveAuth",
          "documentation": "<p>Optional parameter to enable selective authentication for the trust.</p>"
        }
      },
      "documentation": "<p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>"
    },
    "CreateTrustResult": {
      "type": "structure",
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>A unique identifier for the trust relationship that was created.</p>"
        }
      },
      "documentation": "<p>The result of a CreateTrust request.</p>"
    },
    "CreatedDateTime": {
      "type": "timestamp"
    },
    "CustomerId": {
      "type": "string",
      "pattern": "^(\\d{12})$"
    },
    "CustomerUserName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^(?!.*\\\\|.*\"|.*\\/|.*\\[|.*\\]|.*:|.*;|.*\\||.*=|.*,|.*\\+|.*\\*|.*\\?|.*<|.*>|.*@).*$"
    },
    "DeleteAssociatedConditionalForwarder": {
      "type": "boolean"
    },
    "DeleteConditionalForwarderRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RemoteDomainName"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory ID for which you are deleting the conditional forwarder.</p>"
        },
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting the conditional forwarder.</p>"
        }
      },
      "documentation": "<p>Deletes a conditional forwarder.</p>"
    },
    "DeleteConditionalForwarderResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result of a DeleteConditionalForwarder request.</p>"
    },
    "DeleteDirectoryRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory to delete.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>"
    },
    "DeleteDirectoryResult": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory identifier.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>DeleteDirectory</a> operation.</p>"
    },
    "DeleteLogSubscriptionRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory whose log subscription you want to delete.</p>"
        }
      }
    },
    "DeleteLogSubscriptionResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteSnapshotRequest": {
      "type": "structure",
      "required": [
        "SnapshotId"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The identifier of the directory snapshot to be deleted.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>"
    },
    "DeleteSnapshotResult": {
      "type": "structure",
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The identifier of the directory snapshot that was deleted.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>DeleteSnapshot</a> operation.</p>"
    },
    "DeleteTrustRequest": {
      "type": "structure",
      "required": [
        "TrustId"
      ],
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>The Trust ID of the trust relationship to be deleted.</p>"
        },
        "DeleteAssociatedConditionalForwarder": {
          "shape": "DeleteAssociatedConditionalForwarder",
          "documentation": "<p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>"
        }
      },
      "documentation": "<p>Deletes the local side of an existing trust relationship between the AWS Managed Microsoft AD directory and the external domain.</p>"
    },
    "DeleteTrustResult": {
      "type": "structure",
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>The Trust ID of the trust relationship that was deleted.</p>"
        }
      },
      "documentation": "<p>The result of a DeleteTrust request.</p>"
    },
    "DeregisterCertificateRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "CertificateId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "CertificateId": {
          "shape": "CertificateId",
          "documentation": "<p>The identifier of the certificate.</p>"
        }
      }
    },
    "DeregisterCertificateResult": {
      "type": "structure",
      "members": {}
    },
    "DeregisterEventTopicRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "TopicName"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID to remove as a publisher. This directory will no longer send messages to the specified SNS topic.</p>"
        },
        "TopicName": {
          "shape": "TopicName",
          "documentation": "<p>The name of the SNS topic from which to remove the directory as a publisher.</p>"
        }
      },
      "documentation": "<p>Removes the specified directory as a publisher to the specified SNS topic.</p>"
    },
    "DeregisterEventTopicResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result of a DeregisterEventTopic request.</p>"
    },
    "DescribeCertificateRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "CertificateId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "CertificateId": {
          "shape": "CertificateId",
          "documentation": "<p>The identifier of the certificate.</p>"
        }
      }
    },
    "DescribeCertificateResult": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>Information about the certificate, including registered date time, certificate state, the reason for the state, expiration date time, and certificate common name.</p>"
        }
      }
    },
    "DescribeConditionalForwardersRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory ID for which to get the list of associated conditional forwarders.</p>"
        },
        "RemoteDomainNames": {
          "shape": "RemoteDomainNames",
          "documentation": "<p>The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.</p>"
        }
      },
      "documentation": "<p>Describes a conditional forwarder.</p>"
    },
    "DescribeConditionalForwardersResult": {
      "type": "structure",
      "members": {
        "ConditionalForwarders": {
          "shape": "ConditionalForwarders",
          "documentation": "<p>The list of conditional forwarders that have been created.</p>"
        }
      },
      "documentation": "<p>The result of a DescribeConditionalForwarder request.</p>"
    },
    "DescribeDirectoriesRequest": {
      "type": "structure",
      "members": {
        "DirectoryIds": {
          "shape": "DirectoryIds",
          "documentation": "<p>A list of identifiers of the directories for which to obtain the information. If this member is null, all directories that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>"
    },
    "DescribeDirectoriesResult": {
      "type": "structure",
      "members": {
        "DirectoryDescriptions": {
          "shape": "DirectoryDescriptions",
          "documentation": "<p>The list of <a>DirectoryDescription</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <code>Limit</code> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeDirectories</a> to retrieve the next set of items.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>DescribeDirectories</a> operation.</p>"
    },
    "DescribeDomainControllersRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory for which to retrieve the domain controller information.</p>"
        },
        "DomainControllerIds": {
          "shape": "DomainControllerIds",
          "documentation": "<p>A list of identifiers for the domain controllers whose information will be provided.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call to <a>DescribeDomainControllers</a>. Pass null if this is the first call. </p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        }
      }
    },
    "DescribeDomainControllersResult": {
      "type": "structure",
      "members": {
        "DomainControllers": {
          "shape": "DomainControllers",
          "documentation": "<p>List of the <a>DomainController</a> objects that were retrieved.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeDomainControllers</a> retrieve the next set of items.</p>"
        }
      }
    },
    "DescribeEventTopicsRequest": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID for which to get the list of associated SNS topics. If this member is null, associations for all Directory IDs are returned.</p>"
        },
        "TopicNames": {
          "shape": "TopicNames",
          "documentation": "<p>A list of SNS topic names for which to obtain the information. If this member is null, all associations for the specified Directory ID are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>"
        }
      },
      "documentation": "<p>Describes event topics.</p>"
    },
    "DescribeEventTopicsResult": {
      "type": "structure",
      "members": {
        "EventTopics": {
          "shape": "EventTopics",
          "documentation": "<p>A list of SNS topic names that receive status messages from the specified Directory ID.</p>"
        }
      },
      "documentation": "<p>The result of a DescribeEventTopic request.</p>"
    },
    "DescribeLDAPSSettingsRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "Type": {
          "shape": "LDAPSType",
          "documentation": "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is supported.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The type of next token used for pagination.</p>"
        },
        "Limit": {
          "shape": "PageLimit",
          "documentation": "<p>Specifies the number of items that should be displayed on one page.</p>"
        }
      }
    },
    "DescribeLDAPSSettingsResult": {
      "type": "structure",
      "members": {
        "LDAPSSettingsInfo": {
          "shape": "LDAPSSettingsInfo",
          "documentation": "<p>Information about LDAP security for the specified directory, including status of enablement, state last updated date time, and the reason for the state.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The next token used to retrieve the LDAPS settings if the number of setting types exceeds page limit and there is another page.</p>"
        }
      }
    },
    "DescribeSharedDirectoriesRequest": {
      "type": "structure",
      "required": [
        "OwnerDirectoryId"
      ],
      "members": {
        "OwnerDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Returns the identifier of the directory in the directory owner account. </p>"
        },
        "SharedDirectoryIds": {
          "shape": "DirectoryIds",
          "documentation": "<p>A list of identifiers of all shared directories in your account. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The number of shared directories to return in the response object.</p>"
        }
      }
    },
    "DescribeSharedDirectoriesResult": {
      "type": "structure",
      "members": {
        "SharedDirectories": {
          "shape": "SharedDirectories",
          "documentation": "<p>A list of all shared directories in your account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, token that indicates that more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <a>DescribeSharedDirectories</a> to retrieve the next set of items.</p>"
        }
      }
    },
    "DescribeSnapshotsRequest": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to retrieve snapshot information.</p>"
        },
        "SnapshotIds": {
          "shape": "SnapshotIds",
          "documentation": "<p>A list of identifiers of the snapshots to obtain the information for. If this member is null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i> members.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of objects to return.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>"
    },
    "DescribeSnapshotsResult": {
      "type": "structure",
      "members": {
        "Snapshots": {
          "shape": "Snapshots",
          "documentation": "<p>The list of <a>Snapshot</a> objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value in the <i>NextToken</i> member of a subsequent call to <a>DescribeSnapshots</a>.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>DescribeSnapshots</a> operation.</p>"
    },
    "DescribeTrustsRequest": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID of the AWS directory that is a part of the requested trust relationship.</p>"
        },
        "TrustIds": {
          "shape": "TrustIds",
          "documentation": "<p>A list of identifiers of the trust relationships for which to obtain the information. If this member is null, all trust relationships that belong to the current account are returned.</p> <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to <a>DescribeTrusts</a>. Pass null if this is the first call.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of objects to return.</p>"
        }
      },
      "documentation": "<p>Describes the trust relationships for a particular AWS Managed Microsoft AD directory. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.</p>"
    },
    "DescribeTrustsResult": {
      "type": "structure",
      "members": {
        "Trusts": {
          "shape": "Trusts",
          "documentation": "<p>The list of Trust objects that were retrieved.</p> <p>It is possible that this list contains less than the number of items specified in the <i>Limit</i> member of the request. This occurs if there are less than the requested number of items left to retrieve, or if the limitations of the operation have been exceeded.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>DescribeTrusts</a> to retrieve the next set of items.</p>"
        }
      },
      "documentation": "<p>The result of a DescribeTrust request.</p>"
    },
    "Description": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"
    },
    "DesiredNumberOfDomainControllers": {
      "type": "integer",
      "min": 2
    },
    "DirectoryConnectSettings": {
      "type": "structure",
      "required": [
        "VpcId",
        "SubnetIds",
        "CustomerDnsIps",
        "CustomerUserName"
      ],
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier of the VPC in which the AD Connector is created.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>A list of subnet identifiers in the VPC in which the AD Connector is created.</p>"
        },
        "CustomerDnsIps": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>A list of one or more IP addresses of DNS servers or domain controllers in the on-premises directory.</p>"
        },
        "CustomerUserName": {
          "shape": "UserName",
          "documentation": "<p>The user name of an account in the on-premises directory that is used to connect to the directory. This account must have the following permissions:</p> <ul> <li> <p>Read users and groups</p> </li> <li> <p>Create computer objects</p> </li> <li> <p>Join computers to the domain</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains information for the <a>ConnectDirectory</a> operation when an AD Connector directory is being created.</p>"
    },
    "DirectoryConnectSettingsDescription": {
      "type": "structure",
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier of the VPC that the AD Connector is in.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>A list of subnet identifiers in the VPC that the AD Connector is in.</p>"
        },
        "CustomerUserName": {
          "shape": "UserName",
          "documentation": "<p>The user name of the service account in the on-premises directory.</p>"
        },
        "SecurityGroupId": {
          "shape": "SecurityGroupId",
          "documentation": "<p>The security group identifier for the AD Connector directory.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>A list of the Availability Zones that the directory is in.</p>"
        },
        "ConnectIps": {
          "shape": "IpAddrs",
          "documentation": "<p>The IP addresses of the AD Connector servers.</p>"
        }
      },
      "documentation": "<p>Contains information about an AD Connector directory.</p>"
    },
    "DirectoryDescription": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory identifier.</p>"
        },
        "Name": {
          "shape": "DirectoryName",
          "documentation": "<p>The fully qualified name of the directory.</p>"
        },
        "ShortName": {
          "shape": "DirectoryShortName",
          "documentation": "<p>The short name of the directory.</p>"
        },
        "Size": {
          "shape": "DirectorySize",
          "documentation": "<p>The directory size.</p>"
        },
        "Edition": {
          "shape": "DirectoryEdition",
          "documentation": "<p>The edition associated with this directory.</p>"
        },
        "Alias": {
          "shape": "AliasName",
          "documentation": "<p>The alias for the directory. If no alias has been created for the directory, the alias is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>"
        },
        "AccessUrl": {
          "shape": "AccessUrl",
          "documentation": "<p>The access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>. If no alias has been created for the directory, <code>&lt;alias&gt;</code> is the directory identifier, such as <code>d-XXXXXXXXXX</code>.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the directory.</p>"
        },
        "DnsIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>The IP addresses of the DNS servers for the directory. For a Simple AD or Microsoft AD directory, these are the IP addresses of the Simple AD or Microsoft AD directory servers. For an AD Connector directory, these are the IP addresses of the DNS servers or domain controllers in the on-premises directory to which the AD Connector is connected.</p>"
        },
        "Stage": {
          "shape": "DirectoryStage",
          "documentation": "<p>The current stage of the directory.</p>"
        },
        "ShareStatus": {
          "shape": "ShareStatus",
          "documentation": "<p>Current directory status of the shared AWS Managed Microsoft AD directory.</p>"
        },
        "ShareMethod": {
          "shape": "ShareMethod",
          "documentation": "<p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a shared directory request (<code>HANDSHAKE</code>).</p>"
        },
        "ShareNotes": {
          "shape": "Notes",
          "documentation": "<p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>"
        },
        "LaunchTime": {
          "shape": "LaunchTime",
          "documentation": "<p>Specifies when the directory was created.</p>"
        },
        "StageLastUpdatedDateTime": {
          "shape": "LastUpdatedDateTime",
          "documentation": "<p>The date and time that the stage was last updated.</p>"
        },
        "Type": {
          "shape": "DirectoryType",
          "documentation": "<p>The directory size.</p>"
        },
        "VpcSettings": {
          "shape": "DirectoryVpcSettingsDescription",
          "documentation": "<p>A <a>DirectoryVpcSettingsDescription</a> object that contains additional information about a directory. This member is only present if the directory is a Simple AD or Managed AD directory.</p>"
        },
        "ConnectSettings": {
          "shape": "DirectoryConnectSettingsDescription",
          "documentation": "<p>A <a>DirectoryConnectSettingsDescription</a> object that contains additional information about an AD Connector directory. This member is only present if the directory is an AD Connector directory.</p>"
        },
        "RadiusSettings": {
          "shape": "RadiusSettings",
          "documentation": "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS server configured for this directory.</p>"
        },
        "RadiusStatus": {
          "shape": "RadiusStatus",
          "documentation": "<p>The status of the RADIUS MFA server connection.</p>"
        },
        "StageReason": {
          "shape": "StageReason",
          "documentation": "<p>Additional information about the directory stage.</p>"
        },
        "SsoEnabled": {
          "shape": "SsoEnabled",
          "documentation": "<p>Indicates if single sign-on is enabled for the directory. For more information, see <a>EnableSso</a> and <a>DisableSso</a>.</p>"
        },
        "DesiredNumberOfDomainControllers": {
          "shape": "DesiredNumberOfDomainControllers",
          "documentation": "<p>The desired number of domain controllers in the directory if the directory is Microsoft AD.</p>"
        },
        "OwnerDirectoryDescription": {
          "shape": "OwnerDirectoryDescription",
          "documentation": "<p>Describes the AWS Managed Microsoft AD directory in the directory owner account.</p>"
        }
      },
      "documentation": "<p>Contains information about an AWS Directory Service directory.</p>"
    },
    "DirectoryDescriptions": {
      "type": "list",
      "member": {
        "shape": "DirectoryDescription"
      },
      "documentation": "<p>A list of directory descriptions.</p>"
    },
    "DirectoryEdition": {
      "type": "string",
      "enum": [
        "Enterprise",
        "Standard"
      ]
    },
    "DirectoryId": {
      "type": "string",
      "pattern": "^d-[0-9a-f]{10}$"
    },
    "DirectoryIds": {
      "type": "list",
      "member": {
        "shape": "DirectoryId"
      },
      "documentation": "<p>A list of directory identifiers.</p>"
    },
    "DirectoryLimits": {
      "type": "structure",
      "members": {
        "CloudOnlyDirectoriesLimit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of cloud directories allowed in the Region.</p>"
        },
        "CloudOnlyDirectoriesCurrentCount": {
          "shape": "Limit",
          "documentation": "<p>The current number of cloud directories in the Region.</p>"
        },
        "CloudOnlyDirectoriesLimitReached": {
          "shape": "CloudOnlyDirectoriesLimitReached",
          "documentation": "<p>Indicates if the cloud directory limit has been reached.</p>"
        },
        "CloudOnlyMicrosoftADLimit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of AWS Managed Microsoft AD directories allowed in the region.</p>"
        },
        "CloudOnlyMicrosoftADCurrentCount": {
          "shape": "Limit",
          "documentation": "<p>The current number of AWS Managed Microsoft AD directories in the region.</p>"
        },
        "CloudOnlyMicrosoftADLimitReached": {
          "shape": "CloudOnlyDirectoriesLimitReached",
          "documentation": "<p>Indicates if the AWS Managed Microsoft AD directory limit has been reached.</p>"
        },
        "ConnectedDirectoriesLimit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of connected directories allowed in the Region.</p>"
        },
        "ConnectedDirectoriesCurrentCount": {
          "shape": "Limit",
          "documentation": "<p>The current number of connected directories in the Region.</p>"
        },
        "ConnectedDirectoriesLimitReached": {
          "shape": "ConnectedDirectoriesLimitReached",
          "documentation": "<p>Indicates if the connected directory limit has been reached.</p>"
        }
      },
      "documentation": "<p>Contains directory limit information for a Region.</p>"
    },
    "DirectoryName": {
      "type": "string",
      "pattern": "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+$"
    },
    "DirectoryShortName": {
      "type": "string",
      "pattern": "^[^\\\\/:*?\\\"\\<\\>|.]+[^\\\\/:*?\\\"<>|]*$"
    },
    "DirectorySize": {
      "type": "string",
      "enum": [
        "Small",
        "Large"
      ]
    },
    "DirectoryStage": {
      "type": "string",
      "enum": [
        "Requested",
        "Creating",
        "Created",
        "Active",
        "Inoperable",
        "Impaired",
        "Restoring",
        "RestoreFailed",
        "Deleting",
        "Deleted",
        "Failed"
      ]
    },
    "DirectoryType": {
      "type": "string",
      "enum": [
        "SimpleAD",
        "ADConnector",
        "MicrosoftAD",
        "SharedMicrosoftAD"
      ]
    },
    "DirectoryVpcSettings": {
      "type": "structure",
      "required": [
        "VpcId",
        "SubnetIds"
      ],
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier of the VPC in which to create the directory.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The identifiers of the subnets for the directory servers. The two subnets must be in different Availability Zones. AWS Directory Service creates a directory server and a DNS server in each of these subnets.</p>"
        }
      },
      "documentation": "<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>"
    },
    "DirectoryVpcSettingsDescription": {
      "type": "structure",
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier of the VPC that the directory is in.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The identifiers of the subnets for the directory servers.</p>"
        },
        "SecurityGroupId": {
          "shape": "SecurityGroupId",
          "documentation": "<p>The domain controller security group identifier for the directory.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>The list of Availability Zones that the directory is in.</p>"
        }
      },
      "documentation": "<p>Contains information about the directory.</p>"
    },
    "DisableLDAPSRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "Type"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "Type": {
          "shape": "LDAPSType",
          "documentation": "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is supported.</p>"
        }
      }
    },
    "DisableLDAPSResult": {
      "type": "structure",
      "members": {}
    },
    "DisableRadiusRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to disable MFA.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DisableRadius</a> operation.</p>"
    },
    "DisableRadiusResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>DisableRadius</a> operation.</p>"
    },
    "DisableSsoRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to disable single-sign on.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The username of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. This account must have privileges to remove a service principal name.</p> <p>If the AD Connector service account does not have privileges to remove a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to disable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>"
        },
        "Password": {
          "shape": "ConnectPassword",
          "documentation": "<p>The password of an alternate account to use to disable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>DisableSso</a> operation.</p>"
    },
    "DisableSsoResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>DisableSso</a> operation.</p>"
    },
    "DnsIpAddrs": {
      "type": "list",
      "member": {
        "shape": "IpAddr"
      }
    },
    "DomainController": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory where the domain controller resides.</p>"
        },
        "DomainControllerId": {
          "shape": "DomainControllerId",
          "documentation": "<p>Identifies a specific domain controller in the directory.</p>"
        },
        "DnsIpAddr": {
          "shape": "IpAddr",
          "documentation": "<p>The IP address of the domain controller.</p>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier of the VPC that contains the domain controller.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>Identifier of the subnet in the VPC that contains the domain controller.</p>"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>The Availability Zone where the domain controller is located.</p>"
        },
        "Status": {
          "shape": "DomainControllerStatus",
          "documentation": "<p>The status of the domain controller.</p>"
        },
        "StatusReason": {
          "shape": "DomainControllerStatusReason",
          "documentation": "<p>A description of the domain controller state.</p>"
        },
        "LaunchTime": {
          "shape": "LaunchTime",
          "documentation": "<p>Specifies when the domain controller was created.</p>"
        },
        "StatusLastUpdatedDateTime": {
          "shape": "LastUpdatedDateTime",
          "documentation": "<p>The date and time that the status was last updated.</p>"
        }
      },
      "documentation": "<p>Contains information about the domain controllers for a specified directory.</p>"
    },
    "DomainControllerId": {
      "type": "string",
      "pattern": "^dc-[0-9a-f]{10}$"
    },
    "DomainControllerIds": {
      "type": "list",
      "member": {
        "shape": "DomainControllerId"
      }
    },
    "DomainControllerStatus": {
      "type": "string",
      "enum": [
        "Creating",
        "Active",
        "Impaired",
        "Restoring",
        "Deleting",
        "Deleted",
        "Failed"
      ]
    },
    "DomainControllerStatusReason": {
      "type": "string"
    },
    "DomainControllers": {
      "type": "list",
      "member": {
        "shape": "DomainController"
      }
    },
    "EnableLDAPSRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "Type"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "Type": {
          "shape": "LDAPSType",
          "documentation": "<p>The type of LDAP security to enable. Currently only the value <code>Client</code> is supported.</p>"
        }
      }
    },
    "EnableLDAPSResult": {
      "type": "structure",
      "members": {}
    },
    "EnableRadiusRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RadiusSettings"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to enable MFA.</p>"
        },
        "RadiusSettings": {
          "shape": "RadiusSettings",
          "documentation": "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>EnableRadius</a> operation.</p>"
    },
    "EnableRadiusResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>EnableRadius</a> operation.</p>"
    },
    "EnableSsoRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to enable single-sign on.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The username of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. This account must have privileges to add a service principal name.</p> <p>If the AD Connector service account does not have privileges to add a service principal name, you can specify an alternate account with the <i>UserName</i> and <i>Password</i> parameters. These credentials are only used to enable single sign-on and are not stored by the service. The AD Connector service account is not changed.</p>"
        },
        "Password": {
          "shape": "ConnectPassword",
          "documentation": "<p>The password of an alternate account to use to enable single-sign on. This is only used for AD Connector directories. For more information, see the <i>UserName</i> parameter.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>EnableSso</a> operation.</p>"
    },
    "EnableSsoResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>EnableSso</a> operation.</p>"
    },
    "EndDateTime": {
      "type": "timestamp"
    },
    "EventTopic": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID of an AWS Directory Service directory that will publish status messages to an SNS topic.</p>"
        },
        "TopicName": {
          "shape": "TopicName",
          "documentation": "<p>The name of an AWS SNS topic the receives status messages from the directory.</p>"
        },
        "TopicArn": {
          "shape": "TopicArn",
          "documentation": "<p>The SNS topic ARN (Amazon Resource Name).</p>"
        },
        "CreatedDateTime": {
          "shape": "CreatedDateTime",
          "documentation": "<p>The date and time of when you associated your directory with the SNS topic.</p>"
        },
        "Status": {
          "shape": "TopicStatus",
          "documentation": "<p>The topic registration status.</p>"
        }
      },
      "documentation": "<p>Information about SNS topic and AWS Directory Service directory associations.</p>"
    },
    "EventTopics": {
      "type": "list",
      "member": {
        "shape": "EventTopic"
      }
    },
    "GetDirectoryLimitsRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the inputs for the <a>GetDirectoryLimits</a> operation.</p>"
    },
    "GetDirectoryLimitsResult": {
      "type": "structure",
      "members": {
        "DirectoryLimits": {
          "shape": "DirectoryLimits",
          "documentation": "<p>A <a>DirectoryLimits</a> object that contains the directory limits for the current rRegion.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>GetDirectoryLimits</a> operation.</p>"
    },
    "GetSnapshotLimitsRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Contains the identifier of the directory to obtain the limits for.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>"
    },
    "GetSnapshotLimitsResult": {
      "type": "structure",
      "members": {
        "SnapshotLimits": {
          "shape": "SnapshotLimits",
          "documentation": "<p>A <a>SnapshotLimits</a> object that contains the manual snapshot limits for the specified directory.</p>"
        }
      },
      "documentation": "<p>Contains the results of the <a>GetSnapshotLimits</a> operation.</p>"
    },
    "IpAddr": {
      "type": "string",
      "pattern": "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
    },
    "IpAddrs": {
      "type": "list",
      "member": {
        "shape": "IpAddr"
      }
    },
    "IpRoute": {
      "type": "structure",
      "members": {
        "CidrIp": {
          "shape": "CidrIp",
          "documentation": "<p>IP address block using CIDR format, for example 10.0.0.0/24. This is often the address block of the DNS server used for your on-premises domain. For a single IP address use a CIDR address block with /32. For example 10.0.0.0/32.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Description of the address block.</p>"
        }
      },
      "documentation": "<p>IP address block. This is often the address block of the DNS server used for your on-premises domain. </p>"
    },
    "IpRouteInfo": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier (ID) of the directory associated with the IP addresses.</p>"
        },
        "CidrIp": {
          "shape": "CidrIp",
          "documentation": "<p>IP address block in the <a>IpRoute</a>.</p>"
        },
        "IpRouteStatusMsg": {
          "shape": "IpRouteStatusMsg",
          "documentation": "<p>The status of the IP address block.</p>"
        },
        "AddedDateTime": {
          "shape": "AddedDateTime",
          "documentation": "<p>The date and time the address block was added to the directory.</p>"
        },
        "IpRouteStatusReason": {
          "shape": "IpRouteStatusReason",
          "documentation": "<p>The reason for the IpRouteStatusMsg.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>Description of the <a>IpRouteInfo</a>.</p>"
        }
      },
      "documentation": "<p>Information about one or more IP address blocks.</p>"
    },
    "IpRouteStatusMsg": {
      "type": "string",
      "enum": [
        "Adding",
        "Added",
        "Removing",
        "Removed",
        "AddFailed",
        "RemoveFailed"
      ]
    },
    "IpRouteStatusReason": {
      "type": "string"
    },
    "IpRoutes": {
      "type": "list",
      "member": {
        "shape": "IpRoute"
      }
    },
    "IpRoutesInfo": {
      "type": "list",
      "member": {
        "shape": "IpRouteInfo"
      }
    },
    "LDAPSSettingInfo": {
      "type": "structure",
      "members": {
        "LDAPSStatus": {
          "shape": "LDAPSStatus",
          "documentation": "<p>The state of the LDAPS settings.</p>"
        },
        "LDAPSStatusReason": {
          "shape": "LDAPSStatusReason",
          "documentation": "<p>Describes a state change for LDAPS.</p>"
        },
        "LastUpdatedDateTime": {
          "shape": "LastUpdatedDateTime",
          "documentation": "<p>The date and time when the LDAPS settings were last updated.</p>"
        }
      },
      "documentation": "<p>Contains general information about the LDAPS settings.</p>"
    },
    "LDAPSSettingsInfo": {
      "type": "list",
      "member": {
        "shape": "LDAPSSettingInfo"
      }
    },
    "LDAPSStatus": {
      "type": "string",
      "enum": [
        "Enabling",
        "Enabled",
        "EnableFailed",
        "Disabled"
      ]
    },
    "LDAPSStatusReason": {
      "type": "string"
    },
    "LDAPSType": {
      "type": "string",
      "enum": [
        "Client"
      ]
    },
    "LastUpdatedDateTime": {
      "type": "timestamp"
    },
    "LaunchTime": {
      "type": "timestamp"
    },
    "LdifContent": {
      "type": "string",
      "max": 500000,
      "min": 1
    },
    "Limit": {
      "type": "integer",
      "min": 0
    },
    "ListCertificatesRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token for requesting another page of certificates if the <code>NextToken</code> response element indicates that more certificates are available. Use the value of the returned <code>NextToken</code> element in your request until the token comes back as <code>null</code>. Pass <code>null</code> if this is the first call.</p>"
        },
        "Limit": {
          "shape": "PageLimit",
          "documentation": "<p>The number of items that should show up on one page</p>"
        }
      }
    },
    "ListCertificatesResult": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Indicates whether another page of certificates is available when the number of available certificates exceeds the page limit.</p>"
        },
        "CertificatesInfo": {
          "shape": "CertificatesInfo",
          "documentation": "<p>A list of certificates with basic details including certificate ID, certificate common name, certificate state.</p>"
        }
      }
    },
    "ListIpRoutesRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier (ID) of the directory for which you want to retrieve the IP addresses.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>Maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation.</p>"
        }
      }
    },
    "ListIpRoutesResult": {
      "type": "structure",
      "members": {
        "IpRoutesInfo": {
          "shape": "IpRoutesInfo",
          "documentation": "<p>A list of <a>IpRoute</a>s.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value for the <i>NextToken</i> parameter in a subsequent call to <a>ListIpRoutes</a> to retrieve the next set of items.</p>"
        }
      }
    },
    "ListLogSubscriptionsRequest": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>If a <i>DirectoryID</i> is provided, lists only the log subscription associated with that directory. If no <i>DirectoryId</i> is provided, lists all log subscriptions associated with your AWS account. If there are no log subscriptions for the AWS account or the directory, an empty list will be returned.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items returned.</p>"
        }
      }
    },
    "ListLogSubscriptionsResult": {
      "type": "structure",
      "members": {
        "LogSubscriptions": {
          "shape": "LogSubscriptions",
          "documentation": "<p>A list of active <a>LogSubscription</a> objects for calling the AWS account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return.</p>"
        }
      }
    },
    "ListSchemaExtensionsRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory from which to retrieve the schema extension information.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        }
      }
    },
    "ListSchemaExtensionsResult": {
      "type": "structure",
      "members": {
        "SchemaExtensionsInfo": {
          "shape": "SchemaExtensionsInfo",
          "documentation": "<p>Information about the schema extensions applied to the directory.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to <code>ListSchemaExtensions</code> to retrieve the next set of items.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Identifier (ID) of the directory for which you want to retrieve tags.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>Reserved for future use.</p>"
        }
      }
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>List of tags returned by the ListTagsForResource operation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Reserved for future use.</p>"
        }
      }
    },
    "LogGroupName": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "[-._/#A-Za-z0-9]+"
    },
    "LogSubscription": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier (ID) of the directory that you want to associate with the log subscription.</p>"
        },
        "LogGroupName": {
          "shape": "LogGroupName",
          "documentation": "<p>The name of the log group.</p>"
        },
        "SubscriptionCreatedDateTime": {
          "shape": "SubscriptionCreatedDateTime",
          "documentation": "<p>The date and time that the log subscription was created.</p>"
        }
      },
      "documentation": "<p>Represents a log subscription, which tracks real-time data from a chosen log group to a specified destination.</p>"
    },
    "LogSubscriptions": {
      "type": "list",
      "member": {
        "shape": "LogSubscription"
      }
    },
    "ManualSnapshotsLimitReached": {
      "type": "boolean"
    },
    "NextToken": {
      "type": "string"
    },
    "Notes": {
      "type": "string",
      "max": 1024,
      "sensitive": true
    },
    "OrganizationalUnitDN": {
      "type": "string",
      "max": 2000,
      "min": 1
    },
    "OwnerDirectoryDescription": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the AWS Managed Microsoft AD directory in the directory owner account.</p>"
        },
        "AccountId": {
          "shape": "CustomerId",
          "documentation": "<p>Identifier of the directory owner account.</p>"
        },
        "DnsIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>IP address of the directory’s domain controllers.</p>"
        },
        "VpcSettings": {
          "shape": "DirectoryVpcSettingsDescription",
          "documentation": "<p>Information about the VPC settings for the directory.</p>"
        },
        "RadiusSettings": {
          "shape": "RadiusSettings",
          "documentation": "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>"
        },
        "RadiusStatus": {
          "shape": "RadiusStatus",
          "documentation": "<p>Information about the status of the RADIUS server.</p>"
        }
      },
      "documentation": "<p>Describes the directory owner account details that have been shared to the directory consumer account.</p>"
    },
    "PageLimit": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "Password": {
      "type": "string",
      "pattern": "(?=^.{8,64}$)((?=.*\\d)(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[^A-Za-z0-9\\s])(?=.*[a-z])|(?=.*[^A-Za-z0-9\\s])(?=.*[A-Z])(?=.*[a-z])|(?=.*\\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s]))^.*",
      "sensitive": true
    },
    "PortNumber": {
      "type": "integer",
      "max": 65535,
      "min": 1025
    },
    "RadiusAuthenticationProtocol": {
      "type": "string",
      "enum": [
        "PAP",
        "CHAP",
        "MS-CHAPv1",
        "MS-CHAPv2"
      ]
    },
    "RadiusDisplayLabel": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "RadiusRetries": {
      "type": "integer",
      "max": 10,
      "min": 0
    },
    "RadiusSettings": {
      "type": "structure",
      "members": {
        "RadiusServers": {
          "shape": "Servers",
          "documentation": "<p>An array of strings that contains the IP addresses of the RADIUS server endpoints, or the IP addresses of your RADIUS server load balancer.</p>"
        },
        "RadiusPort": {
          "shape": "PortNumber",
          "documentation": "<p>The port that your RADIUS server is using for communications. Your on-premises network must allow inbound traffic over this port from the AWS Directory Service servers.</p>"
        },
        "RadiusTimeout": {
          "shape": "RadiusTimeout",
          "documentation": "<p>The amount of time, in seconds, to wait for the RADIUS server to respond.</p>"
        },
        "RadiusRetries": {
          "shape": "RadiusRetries",
          "documentation": "<p>The maximum number of times that communication with the RADIUS server is attempted.</p>"
        },
        "SharedSecret": {
          "shape": "RadiusSharedSecret",
          "documentation": "<p>Required for enabling RADIUS on the directory.</p>"
        },
        "AuthenticationProtocol": {
          "shape": "RadiusAuthenticationProtocol",
          "documentation": "<p>The protocol specified for your RADIUS endpoints.</p>"
        },
        "DisplayLabel": {
          "shape": "RadiusDisplayLabel",
          "documentation": "<p>Not currently used.</p>"
        },
        "UseSameUsername": {
          "shape": "UseSameUsername",
          "documentation": "<p>Not currently used.</p>"
        }
      },
      "documentation": "<p>Contains information about a Remote Authentication Dial In User Service (RADIUS) server.</p>"
    },
    "RadiusSharedSecret": {
      "type": "string",
      "max": 512,
      "min": 8,
      "sensitive": true
    },
    "RadiusStatus": {
      "type": "string",
      "enum": [
        "Creating",
        "Completed",
        "Failed"
      ]
    },
    "RadiusTimeout": {
      "type": "integer",
      "max": 20,
      "min": 1
    },
    "RegisterCertificateRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "CertificateData"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "CertificateData": {
          "shape": "CertificateData",
          "documentation": "<p>The certificate PEM string that needs to be registered.</p>"
        }
      }
    },
    "RegisterCertificateResult": {
      "type": "structure",
      "members": {
        "CertificateId": {
          "shape": "CertificateId",
          "documentation": "<p>The identifier of the certificate.</p>"
        }
      }
    },
    "RegisterEventTopicRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "TopicName"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID that will publish status messages to the SNS topic.</p>"
        },
        "TopicName": {
          "shape": "TopicName",
          "documentation": "<p>The SNS topic name to which the directory will publish status messages. This SNS topic must be in the same region as the specified Directory ID.</p>"
        }
      },
      "documentation": "<p>Registers a new event topic.</p>"
    },
    "RegisterEventTopicResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result of a RegisterEventTopic request.</p>"
    },
    "RejectSharedDirectoryRequest": {
      "type": "structure",
      "required": [
        "SharedDirectoryId"
      ],
      "members": {
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.</p>"
        }
      }
    },
    "RejectSharedDirectoryResult": {
      "type": "structure",
      "members": {
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the shared directory in the directory consumer account.</p>"
        }
      }
    },
    "RemoteDomainName": {
      "type": "string",
      "pattern": "^([a-zA-Z0-9]+[\\\\.-])+([a-zA-Z0-9])+[.]?$"
    },
    "RemoteDomainNames": {
      "type": "list",
      "member": {
        "shape": "RemoteDomainName"
      }
    },
    "RemoveIpRoutesRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "CidrIps"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier (ID) of the directory from which you want to remove the IP addresses.</p>"
        },
        "CidrIps": {
          "shape": "CidrIps",
          "documentation": "<p>IP address blocks that you want to remove.</p>"
        }
      }
    },
    "RemoveIpRoutesResult": {
      "type": "structure",
      "members": {}
    },
    "RemoveTagsFromResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagKeys"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Identifier (ID) of the directory from which to remove the tag.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The tag key (name) of the tag to be removed.</p>"
        }
      }
    },
    "RemoveTagsFromResourceResult": {
      "type": "structure",
      "members": {}
    },
    "ReplicationScope": {
      "type": "string",
      "enum": [
        "Domain"
      ]
    },
    "RequestId": {
      "type": "string",
      "documentation": "<p>The AWS request identifier.</p>",
      "pattern": "^([A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12})$"
    },
    "ResetUserPasswordRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "UserName",
        "NewPassword"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the AWS Managed Microsoft AD or Simple AD directory in which the user resides.</p>"
        },
        "UserName": {
          "shape": "CustomerUserName",
          "documentation": "<p>The user name of the user whose password will be reset.</p>"
        },
        "NewPassword": {
          "shape": "UserPassword",
          "documentation": "<p>The new password that will be reset.</p>"
        }
      }
    },
    "ResetUserPasswordResult": {
      "type": "structure",
      "members": {}
    },
    "ResourceId": {
      "type": "string",
      "pattern": "^[d]-[0-9a-f]{10}$"
    },
    "RestoreFromSnapshotRequest": {
      "type": "structure",
      "required": [
        "SnapshotId"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The identifier of the snapshot to restore from.</p>"
        }
      },
      "documentation": "<p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>"
    },
    "RestoreFromSnapshotResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>RestoreFromSnapshot</a> operation.</p>"
    },
    "SID": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[&\\w+-.@]+"
    },
    "SchemaExtensionId": {
      "type": "string",
      "pattern": "^e-[0-9a-f]{10}$"
    },
    "SchemaExtensionInfo": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory to which the schema extension is applied.</p>"
        },
        "SchemaExtensionId": {
          "shape": "SchemaExtensionId",
          "documentation": "<p>The identifier of the schema extension.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description of the schema extension.</p>"
        },
        "SchemaExtensionStatus": {
          "shape": "SchemaExtensionStatus",
          "documentation": "<p>The current status of the schema extension.</p>"
        },
        "SchemaExtensionStatusReason": {
          "shape": "SchemaExtensionStatusReason",
          "documentation": "<p>The reason for the <code>SchemaExtensionStatus</code>.</p>"
        },
        "StartDateTime": {
          "shape": "StartDateTime",
          "documentation": "<p>The date and time that the schema extension started being applied to the directory.</p>"
        },
        "EndDateTime": {
          "shape": "EndDateTime",
          "documentation": "<p>The date and time that the schema extension was completed.</p>"
        }
      },
      "documentation": "<p>Information about a schema extension.</p>"
    },
    "SchemaExtensionStatus": {
      "type": "string",
      "enum": [
        "Initializing",
        "CreatingSnapshot",
        "UpdatingSchema",
        "Replicating",
        "CancelInProgress",
        "RollbackInProgress",
        "Cancelled",
        "Failed",
        "Completed"
      ]
    },
    "SchemaExtensionStatusReason": {
      "type": "string"
    },
    "SchemaExtensionsInfo": {
      "type": "list",
      "member": {
        "shape": "SchemaExtensionInfo"
      }
    },
    "SecurityGroupId": {
      "type": "string",
      "pattern": "^(sg-[0-9a-f]{8}|sg-[0-9a-f]{17})$"
    },
    "SelectiveAuth": {
      "type": "string",
      "enum": [
        "Enabled",
        "Disabled"
      ]
    },
    "Server": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "Servers": {
      "type": "list",
      "member": {
        "shape": "Server"
      }
    },
    "ShareDirectoryRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "ShareTarget",
        "ShareMethod"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the AWS Managed Microsoft AD directory that you want to share with other AWS accounts.</p>"
        },
        "ShareNotes": {
          "shape": "Notes",
          "documentation": "<p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>"
        },
        "ShareTarget": {
          "shape": "ShareTarget",
          "documentation": "<p>Identifier for the directory consumer account with whom the directory is to be shared.</p>"
        },
        "ShareMethod": {
          "shape": "ShareMethod",
          "documentation": "<p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a directory sharing request (<code>HANDSHAKE</code>).</p>"
        }
      }
    },
    "ShareDirectoryResult": {
      "type": "structure",
      "members": {
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory that is stored in the directory consumer account that is shared from the specified directory (<code>DirectoryId</code>).</p>"
        }
      }
    },
    "ShareMethod": {
      "type": "string",
      "enum": [
        "ORGANIZATIONS",
        "HANDSHAKE"
      ]
    },
    "ShareStatus": {
      "type": "string",
      "enum": [
        "Shared",
        "PendingAcceptance",
        "Rejected",
        "Rejecting",
        "RejectFailed",
        "Sharing",
        "ShareFailed",
        "Deleted",
        "Deleting"
      ]
    },
    "ShareTarget": {
      "type": "structure",
      "required": [
        "Id",
        "Type"
      ],
      "members": {
        "Id": {
          "shape": "TargetId",
          "documentation": "<p>Identifier of the directory consumer account.</p>"
        },
        "Type": {
          "shape": "TargetType",
          "documentation": "<p>Type of identifier to be used in the <code>Id</code> field.</p>"
        }
      },
      "documentation": "<p>Identifier that contains details about the directory consumer account.</p>"
    },
    "SharedDirectories": {
      "type": "list",
      "member": {
        "shape": "SharedDirectory"
      }
    },
    "SharedDirectory": {
      "type": "structure",
      "members": {
        "OwnerAccountId": {
          "shape": "CustomerId",
          "documentation": "<p>Identifier of the directory owner account, which contains the directory that has been shared to the consumer account.</p>"
        },
        "OwnerDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory in the directory owner account. </p>"
        },
        "ShareMethod": {
          "shape": "ShareMethod",
          "documentation": "<p>The method used when sharing a directory to determine whether the directory should be shared within your AWS organization (<code>ORGANIZATIONS</code>) or with any AWS account by sending a shared directory request (<code>HANDSHAKE</code>).</p>"
        },
        "SharedAccountId": {
          "shape": "CustomerId",
          "documentation": "<p>Identifier of the directory consumer account that has access to the shared directory (<code>OwnerDirectoryId</code>) in the directory owner account.</p>"
        },
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.</p>"
        },
        "ShareStatus": {
          "shape": "ShareStatus",
          "documentation": "<p>Current directory status of the shared AWS Managed Microsoft AD directory.</p>"
        },
        "ShareNotes": {
          "shape": "Notes",
          "documentation": "<p>A directory share request that is sent by the directory owner to the directory consumer. The request includes a typed message to help the directory consumer administrator determine whether to approve or reject the share invitation.</p>"
        },
        "CreatedDateTime": {
          "shape": "CreatedDateTime",
          "documentation": "<p>The date and time that the shared directory was created.</p>"
        },
        "LastUpdatedDateTime": {
          "shape": "LastUpdatedDateTime",
          "documentation": "<p>The date and time that the shared directory was last updated.</p>"
        }
      },
      "documentation": "<p>Details about the shared directory in the directory owner account for which the share request in the directory consumer account has been accepted.</p>"
    },
    "Snapshot": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory identifier.</p>"
        },
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The snapshot identifier.</p>"
        },
        "Type": {
          "shape": "SnapshotType",
          "documentation": "<p>The snapshot type.</p>"
        },
        "Name": {
          "shape": "SnapshotName",
          "documentation": "<p>The descriptive name of the snapshot.</p>"
        },
        "Status": {
          "shape": "SnapshotStatus",
          "documentation": "<p>The snapshot status.</p>"
        },
        "StartTime": {
          "shape": "StartTime",
          "documentation": "<p>The date and time that the snapshot was taken.</p>"
        }
      },
      "documentation": "<p>Describes a directory snapshot.</p>"
    },
    "SnapshotId": {
      "type": "string",
      "pattern": "^s-[0-9a-f]{10}$"
    },
    "SnapshotIds": {
      "type": "list",
      "member": {
        "shape": "SnapshotId"
      },
      "documentation": "<p>A list of directory snapshot identifiers.</p>"
    },
    "SnapshotLimits": {
      "type": "structure",
      "members": {
        "ManualSnapshotsLimit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of manual snapshots allowed.</p>"
        },
        "ManualSnapshotsCurrentCount": {
          "shape": "Limit",
          "documentation": "<p>The current number of manual snapshots of the directory.</p>"
        },
        "ManualSnapshotsLimitReached": {
          "shape": "ManualSnapshotsLimitReached",
          "documentation": "<p>Indicates if the manual snapshot limit has been reached.</p>"
        }
      },
      "documentation": "<p>Contains manual snapshot limit information for a directory.</p>"
    },
    "SnapshotName": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "^([a-zA-Z0-9_])[\\\\a-zA-Z0-9_@#%*+=:?./!\\s-]*$"
    },
    "SnapshotStatus": {
      "type": "string",
      "enum": [
        "Creating",
        "Completed",
        "Failed"
      ]
    },
    "SnapshotType": {
      "type": "string",
      "enum": [
        "Auto",
        "Manual"
      ]
    },
    "Snapshots": {
      "type": "list",
      "member": {
        "shape": "Snapshot"
      },
      "documentation": "<p>A list of descriptions of directory snapshots.</p>"
    },
    "SsoEnabled": {
      "type": "boolean"
    },
    "StageReason": {
      "type": "string"
    },
    "StartDateTime": {
      "type": "timestamp"
    },
    "StartSchemaExtensionRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "CreateSnapshotBeforeSchemaExtension",
        "LdifContent",
        "Description"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which the schema extension will be applied to.</p>"
        },
        "CreateSnapshotBeforeSchemaExtension": {
          "shape": "CreateSnapshotBeforeSchemaExtension",
          "documentation": "<p>If true, creates a snapshot of the directory before applying the schema extension.</p>"
        },
        "LdifContent": {
          "shape": "LdifContent",
          "documentation": "<p>The LDIF file represented as a string. To construct the LdifContent string, precede each line as it would be formatted in an ldif file with \\n. See the example request below for more details. The file size can be no larger than 1MB.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description of the schema extension.</p>"
        }
      }
    },
    "StartSchemaExtensionResult": {
      "type": "structure",
      "members": {
        "SchemaExtensionId": {
          "shape": "SchemaExtensionId",
          "documentation": "<p>The identifier of the schema extension that will be applied.</p>"
        }
      }
    },
    "StartTime": {
      "type": "timestamp"
    },
    "StateLastUpdatedDateTime": {
      "type": "timestamp"
    },
    "SubnetId": {
      "type": "string",
      "pattern": "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      }
    },
    "SubscriptionCreatedDateTime": {
      "type": "timestamp"
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
          "documentation": "<p>Required name of the tag. The string value can be Unicode characters and cannot be prefixed with \"aws:\". The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional value of the tag. The string value can be Unicode characters. The string can contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        }
      },
      "documentation": "<p>Metadata assigned to a directory consisting of a key-value pair.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TargetId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "ACCOUNT"
      ]
    },
    "TopicArn": {
      "type": "string"
    },
    "TopicName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9_-]+"
    },
    "TopicNames": {
      "type": "list",
      "member": {
        "shape": "TopicName"
      }
    },
    "TopicStatus": {
      "type": "string",
      "enum": [
        "Registered",
        "Topic not found",
        "Failed",
        "Deleted"
      ]
    },
    "Trust": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The Directory ID of the AWS directory involved in the trust relationship.</p>"
        },
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>The unique ID of the trust relationship.</p>"
        },
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.</p>"
        },
        "TrustType": {
          "shape": "TrustType",
          "documentation": "<p>The trust relationship type. <code>Forest</code> is the default.</p>"
        },
        "TrustDirection": {
          "shape": "TrustDirection",
          "documentation": "<p>The trust relationship direction.</p>"
        },
        "TrustState": {
          "shape": "TrustState",
          "documentation": "<p>The trust relationship state.</p>"
        },
        "CreatedDateTime": {
          "shape": "CreatedDateTime",
          "documentation": "<p>The date and time that the trust relationship was created.</p>"
        },
        "LastUpdatedDateTime": {
          "shape": "LastUpdatedDateTime",
          "documentation": "<p>The date and time that the trust relationship was last updated.</p>"
        },
        "StateLastUpdatedDateTime": {
          "shape": "StateLastUpdatedDateTime",
          "documentation": "<p>The date and time that the TrustState was last updated.</p>"
        },
        "TrustStateReason": {
          "shape": "TrustStateReason",
          "documentation": "<p>The reason for the TrustState.</p>"
        },
        "SelectiveAuth": {
          "shape": "SelectiveAuth",
          "documentation": "<p>Current state of selective authentication for the trust.</p>"
        }
      },
      "documentation": "<p>Describes a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>"
    },
    "TrustDirection": {
      "type": "string",
      "enum": [
        "One-Way: Outgoing",
        "One-Way: Incoming",
        "Two-Way"
      ]
    },
    "TrustId": {
      "type": "string",
      "pattern": "^t-[0-9a-f]{10}$"
    },
    "TrustIds": {
      "type": "list",
      "member": {
        "shape": "TrustId"
      }
    },
    "TrustPassword": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "(.|\\s)*\\S(.|\\s)*",
      "sensitive": true
    },
    "TrustState": {
      "type": "string",
      "enum": [
        "Creating",
        "Created",
        "Verifying",
        "VerifyFailed",
        "Verified",
        "Updating",
        "UpdateFailed",
        "Updated",
        "Deleting",
        "Deleted",
        "Failed"
      ]
    },
    "TrustStateReason": {
      "type": "string"
    },
    "TrustType": {
      "type": "string",
      "enum": [
        "Forest",
        "External"
      ]
    },
    "Trusts": {
      "type": "list",
      "member": {
        "shape": "Trust"
      }
    },
    "UnshareDirectoryRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "UnshareTarget"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the AWS Managed Microsoft AD directory that you want to stop sharing.</p>"
        },
        "UnshareTarget": {
          "shape": "UnshareTarget",
          "documentation": "<p>Identifier for the directory consumer account with whom the directory has to be unshared.</p>"
        }
      }
    },
    "UnshareDirectoryResult": {
      "type": "structure",
      "members": {
        "SharedDirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory stored in the directory consumer account that is to be unshared from the specified directory (<code>DirectoryId</code>).</p>"
        }
      }
    },
    "UnshareTarget": {
      "type": "structure",
      "required": [
        "Id",
        "Type"
      ],
      "members": {
        "Id": {
          "shape": "TargetId",
          "documentation": "<p>Identifier of the directory consumer account.</p>"
        },
        "Type": {
          "shape": "TargetType",
          "documentation": "<p>Type of identifier to be used in the <i>Id</i> field.</p>"
        }
      },
      "documentation": "<p>Identifier that contains details about the directory consumer account with whom the directory is being unshared.</p>"
    },
    "UpdateConditionalForwarderRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RemoteDomainName",
        "DnsIpAddrs"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory ID of the AWS directory for which to update the conditional forwarder.</p>"
        },
        "RemoteDomainName": {
          "shape": "RemoteDomainName",
          "documentation": "<p>The fully qualified domain name (FQDN) of the remote domain with which you will set up a trust relationship.</p>"
        },
        "DnsIpAddrs": {
          "shape": "DnsIpAddrs",
          "documentation": "<p>The updated IP addresses of the remote DNS server associated with the conditional forwarder.</p>"
        }
      },
      "documentation": "<p>Updates a conditional forwarder.</p>"
    },
    "UpdateConditionalForwarderResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result of an UpdateConditionalForwarder request.</p>"
    },
    "UpdateNumberOfDomainControllersRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "DesiredNumber"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>Identifier of the directory to which the domain controllers will be added or removed.</p>"
        },
        "DesiredNumber": {
          "shape": "DesiredNumberOfDomainControllers",
          "documentation": "<p>The number of domain controllers desired in the directory.</p>"
        }
      }
    },
    "UpdateNumberOfDomainControllersResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateRadiusRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "RadiusSettings"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory for which to update the RADIUS server information.</p>"
        },
        "RadiusSettings": {
          "shape": "RadiusSettings",
          "documentation": "<p>A <a>RadiusSettings</a> object that contains information about the RADIUS server.</p>"
        }
      },
      "documentation": "<p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>"
    },
    "UpdateRadiusResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the results of the <a>UpdateRadius</a> operation.</p>"
    },
    "UpdateSecurityGroupForDirectoryControllers": {
      "type": "boolean"
    },
    "UpdateTrustRequest": {
      "type": "structure",
      "required": [
        "TrustId"
      ],
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>Identifier of the trust relationship.</p>"
        },
        "SelectiveAuth": {
          "shape": "SelectiveAuth",
          "documentation": "<p>Updates selective authentication for the trust.</p>"
        }
      }
    },
    "UpdateTrustResult": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "RequestId"
        },
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>Identifier of the trust relationship.</p>"
        }
      }
    },
    "UseSameUsername": {
      "type": "boolean"
    },
    "UserName": {
      "type": "string",
      "min": 1,
      "pattern": "[a-zA-Z0-9._-]+"
    },
    "UserPassword": {
      "type": "string",
      "max": 127,
      "min": 1,
      "sensitive": true
    },
    "VerifyTrustRequest": {
      "type": "structure",
      "required": [
        "TrustId"
      ],
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>The unique Trust ID of the trust relationship to verify.</p>"
        }
      },
      "documentation": "<p>Initiates the verification of an existing trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>"
    },
    "VerifyTrustResult": {
      "type": "structure",
      "members": {
        "TrustId": {
          "shape": "TrustId",
          "documentation": "<p>The unique Trust ID of the trust relationship that was verified.</p>"
        }
      },
      "documentation": "<p>Result of a VerifyTrust request.</p>"
    },
    "VpcId": {
      "type": "string",
      "pattern": "^(vpc-[0-9a-f]{8}|vpc-[0-9a-f]{17})$"
    }
  },
  "documentation": "<fullname>AWS Directory Service</fullname> <p>AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see <a href=\"https://aws.amazon.com/directoryservice/\">AWS Directory Service</a> and the <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html\">AWS Directory Service Administration Guide</a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS Directory Service and other AWS services. For more information about the AWS SDKs, including how to download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p> </note>"
}
]===]))
