local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-04-28",
    "endpointPrefix": "cloudhsmv2",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "CloudHSM V2",
    "serviceFullName": "AWS CloudHSM V2",
    "serviceId": "CloudHSM V2",
    "signatureVersion": "v4",
    "signingName": "cloudhsm",
    "targetPrefix": "BaldrApiService",
    "uid": "cloudhsmv2-2017-04-28"
  },
  "operations": {
    "CopyBackupToRegion": {
      "name": "CopyBackupToRegion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyBackupToRegionRequest"
      },
      "output": {
        "shape": "CopyBackupToRegionResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Copy an AWS CloudHSM cluster backup to a different region.</p>"
    },
    "CreateCluster": {
      "name": "CreateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterRequest"
      },
      "output": {
        "shape": "CreateClusterResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Creates a new AWS CloudHSM cluster.</p>"
    },
    "CreateHsm": {
      "name": "CreateHsm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHsmRequest"
      },
      "output": {
        "shape": "CreateHsmResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmAccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.</p>"
    },
    "DeleteBackup": {
      "name": "DeleteBackup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBackupRequest"
      },
      "output": {
        "shape": "DeleteBackupResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        }
      ],
      "documentation": "<p>Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see <a>RestoreBackup</a>.</p>"
    },
    "DeleteCluster": {
      "name": "DeleteCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterRequest"
      },
      "output": {
        "shape": "DeleteClusterResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>"
    },
    "DeleteHsm": {
      "name": "DeleteHsm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteHsmRequest"
      },
      "output": {
        "shape": "DeleteHsmResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmAccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>"
    },
    "DescribeBackups": {
      "name": "DescribeBackups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBackupsRequest"
      },
      "output": {
        "shape": "DescribeBackupsResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Gets information about backups of AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more backups to get.</p>"
    },
    "DescribeClusters": {
      "name": "DescribeClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClustersRequest"
      },
      "output": {
        "shape": "DescribeClustersResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Gets information about AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more clusters to get.</p>"
    },
    "InitializeCluster": {
      "name": "InitializeCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InitializeClusterRequest"
      },
      "output": {
        "shape": "InitializeClusterResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        }
      ],
      "documentation": "<p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use <a>DescribeClusters</a>.</p>"
    },
    "ListTags": {
      "name": "ListTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsRequest"
      },
      "output": {
        "shape": "ListTagsResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Gets a list of tags for the specified AWS CloudHSM cluster.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more tags to get.</p>"
    },
    "RestoreBackup": {
      "name": "RestoreBackup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreBackupRequest"
      },
      "output": {
        "shape": "RestoreBackupResponse"
      },
      "errors": [
        {
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        }
      ],
      "documentation": "<p>Restores a specified AWS CloudHSM backup that is in the <code>PENDING_DELETION</code> state. For mor information on deleting a backup, see <a>DeleteBackup</a>.</p>"
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
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>"
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
          "shape": "CloudHsmAccessDeniedException"
        },
        {
          "shape": "CloudHsmInternalFailureException"
        },
        {
          "shape": "CloudHsmInvalidRequestException"
        },
        {
          "shape": "CloudHsmResourceNotFoundException"
        },
        {
          "shape": "CloudHsmServiceException"
        },
        {
          "shape": "CloudHsmTagException"
        }
      ],
      "documentation": "<p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>"
    }
  },
  "shapes": {
    "Backup": {
      "type": "structure",
      "required": [
        "BackupId"
      ],
      "members": {
        "BackupId": {
          "shape": "BackupId",
          "documentation": "<p>The identifier (ID) of the backup.</p>"
        },
        "BackupState": {
          "shape": "BackupState",
          "documentation": "<p>The state of the backup.</p>"
        },
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster that was backed up.</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the backup was created.</p>"
        },
        "CopyTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the backup was copied from a source backup.</p>"
        },
        "SourceRegion": {
          "shape": "Region",
          "documentation": "<p>The AWS Region that contains the source backup from which the new backup was copied.</p>"
        },
        "SourceBackup": {
          "shape": "BackupId",
          "documentation": "<p>The identifier (ID) of the source backup from which the new backup was copied.</p>"
        },
        "SourceCluster": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster containing the source backup from which the new backup was copied.</p>"
        },
        "DeleteTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the backup will be permanently deleted.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the backup.</p>"
        }
      },
      "documentation": "<p>Contains information about a backup of an AWS CloudHSM cluster. All backup objects contain the BackupId, BackupState, ClusterId, and CreateTimestamp parameters. Backups that were copied into a destination region additionally contain the CopyTimestamp, SourceBackup, SourceCluster, and SourceRegion paramters. A backup that is pending deletion will include the DeleteTimestamp parameter.</p>"
    },
    "BackupId": {
      "type": "string",
      "pattern": "backup-[2-7a-zA-Z]{11,16}"
    },
    "BackupPolicy": {
      "type": "string",
      "enum": [
        "DEFAULT"
      ]
    },
    "BackupState": {
      "type": "string",
      "enum": [
        "CREATE_IN_PROGRESS",
        "READY",
        "DELETED",
        "PENDING_DELETION"
      ]
    },
    "Backups": {
      "type": "list",
      "member": {
        "shape": "Backup"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "Cert": {
      "type": "string",
      "max": 5000,
      "pattern": "[a-zA-Z0-9+-/=\\s]*"
    },
    "Certificates": {
      "type": "structure",
      "members": {
        "ClusterCsr": {
          "shape": "Cert",
          "documentation": "<p>The cluster's certificate signing request (CSR). The CSR exists only when the cluster's state is <code>UNINITIALIZED</code>.</p>"
        },
        "HsmCertificate": {
          "shape": "Cert",
          "documentation": "<p>The HSM certificate issued (signed) by the HSM hardware.</p>"
        },
        "AwsHardwareCertificate": {
          "shape": "Cert",
          "documentation": "<p>The HSM hardware certificate issued (signed) by AWS CloudHSM.</p>"
        },
        "ManufacturerHardwareCertificate": {
          "shape": "Cert",
          "documentation": "<p>The HSM hardware certificate issued (signed) by the hardware manufacturer.</p>"
        },
        "ClusterCertificate": {
          "shape": "Cert",
          "documentation": "<p>The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.</p>"
        }
      },
      "documentation": "<p>Contains one or more certificates or a certificate signing request (CSR).</p>"
    },
    "Cluster": {
      "type": "structure",
      "members": {
        "BackupPolicy": {
          "shape": "BackupPolicy",
          "documentation": "<p>The cluster's backup policy.</p>"
        },
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The cluster's identifier (ID).</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the cluster was created.</p>"
        },
        "Hsms": {
          "shape": "Hsms",
          "documentation": "<p>Contains information about the HSMs in the cluster.</p>"
        },
        "HsmType": {
          "shape": "HsmType",
          "documentation": "<p>The type of HSM that the cluster contains.</p>"
        },
        "PreCoPassword": {
          "shape": "PreCoPassword",
          "documentation": "<p>The default password for the cluster's Pre-Crypto Officer (PRECO) user.</p>"
        },
        "SecurityGroup": {
          "shape": "SecurityGroup",
          "documentation": "<p>The identifier (ID) of the cluster's security group.</p>"
        },
        "SourceBackupId": {
          "shape": "BackupId",
          "documentation": "<p>The identifier (ID) of the backup used to create the cluster. This value exists only when the cluster was created from a backup.</p>"
        },
        "State": {
          "shape": "ClusterState",
          "documentation": "<p>The cluster's state.</p>"
        },
        "StateMessage": {
          "shape": "StateMessage",
          "documentation": "<p>A description of the cluster's state.</p>"
        },
        "SubnetMapping": {
          "shape": "ExternalSubnetMapping",
          "documentation": "<p>A map from availability zone to the cluster’s subnet in that availability zone.</p>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The identifier (ID) of the virtual private cloud (VPC) that contains the cluster.</p>"
        },
        "Certificates": {
          "shape": "Certificates",
          "documentation": "<p>Contains one or more certificates or a certificate signing request (CSR).</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags for the cluster.</p>"
        }
      },
      "documentation": "<p>Contains information about an AWS CloudHSM cluster.</p>"
    },
    "ClusterId": {
      "type": "string",
      "pattern": "cluster-[2-7a-zA-Z]{11,16}"
    },
    "ClusterState": {
      "type": "string",
      "enum": [
        "CREATE_IN_PROGRESS",
        "UNINITIALIZED",
        "INITIALIZE_IN_PROGRESS",
        "INITIALIZED",
        "ACTIVE",
        "UPDATE_IN_PROGRESS",
        "DELETE_IN_PROGRESS",
        "DELETED",
        "DEGRADED"
      ]
    },
    "Clusters": {
      "type": "list",
      "member": {
        "shape": "Cluster"
      }
    },
    "CopyBackupToRegionRequest": {
      "type": "structure",
      "required": [
        "DestinationRegion",
        "BackupId"
      ],
      "members": {
        "DestinationRegion": {
          "shape": "Region",
          "documentation": "<p>The AWS region that will contain your copied CloudHSM cluster backup.</p>"
        },
        "BackupId": {
          "shape": "BackupId",
          "documentation": "<p>The ID of the backup that will be copied to the destination region. </p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>Tags to apply to the destination backup during creation. If you specify tags, only these tags will be applied to the destination backup. If you do not specify tags, the service copies tags from the source backup to the destination backup.</p>"
        }
      }
    },
    "CopyBackupToRegionResponse": {
      "type": "structure",
      "members": {
        "DestinationBackup": {
          "shape": "DestinationBackup",
          "documentation": "<p>Information on the backup that will be copied to the destination region, including CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the destination backup will be the same as that of the source backup.</p> <p>You will need to use the <code>sourceBackupID</code> returned in this operation to use the <a>DescribeBackups</a> operation on the backup that will be copied to the destination region.</p>"
        }
      }
    },
    "CreateClusterRequest": {
      "type": "structure",
      "required": [
        "SubnetIds",
        "HsmType"
      ],
      "members": {
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:</p> <ul> <li> <p>All subnets must be in the same virtual private cloud (VPC).</p> </li> <li> <p>You can specify only one subnet per Availability Zone.</p> </li> </ul>"
        },
        "HsmType": {
          "shape": "HsmType",
          "documentation": "<p>The type of HSM to use in the cluster. Currently the only allowed value is <code>hsm1.medium</code>.</p>"
        },
        "SourceBackupId": {
          "shape": "BackupId",
          "documentation": "<p>The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use <a>DescribeBackups</a>.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>Tags to apply to the CloudHSM cluster during creation.</p>"
        }
      }
    },
    "CreateClusterResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>Information about the cluster that was created.</p>"
        }
      }
    },
    "CreateHsmRequest": {
      "type": "structure",
      "required": [
        "ClusterId",
        "AvailabilityZone"
      ],
      "members": {
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        },
        "AvailabilityZone": {
          "shape": "ExternalAz",
          "documentation": "<p>The Availability Zone where you are creating the HSM. To find the cluster's Availability Zones, use <a>DescribeClusters</a>.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>The HSM's IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify an IP address, one is chosen for you from that subnet.</p>"
        }
      }
    },
    "CreateHsmResponse": {
      "type": "structure",
      "members": {
        "Hsm": {
          "shape": "Hsm",
          "documentation": "<p>Information about the HSM that was created.</p>"
        }
      }
    },
    "DeleteBackupRequest": {
      "type": "structure",
      "required": [
        "BackupId"
      ],
      "members": {
        "BackupId": {
          "shape": "BackupId",
          "documentation": "<p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>"
        }
      }
    },
    "DeleteBackupResponse": {
      "type": "structure",
      "members": {
        "Backup": {
          "shape": "Backup",
          "documentation": "<p>Information on the <code>Backup</code> object deleted.</p>"
        }
      }
    },
    "DeleteClusterRequest": {
      "type": "structure",
      "required": [
        "ClusterId"
      ],
      "members": {
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        }
      }
    },
    "DeleteClusterResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>Information about the cluster that was deleted.</p>"
        }
      }
    },
    "DeleteHsmRequest": {
      "type": "structure",
      "required": [
        "ClusterId"
      ],
      "members": {
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster that contains the HSM that you are deleting.</p>"
        },
        "HsmId": {
          "shape": "HsmId",
          "documentation": "<p>The identifier (ID) of the HSM that you are deleting.</p>"
        },
        "EniId": {
          "shape": "EniId",
          "documentation": "<p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.</p>"
        },
        "EniIp": {
          "shape": "IpAddress",
          "documentation": "<p>The IP address of the elastic network interface (ENI) of the HSM that you are deleting.</p>"
        }
      }
    },
    "DeleteHsmResponse": {
      "type": "structure",
      "members": {
        "HsmId": {
          "shape": "HsmId",
          "documentation": "<p>The identifier (ID) of the HSM that was deleted.</p>"
        }
      }
    },
    "DescribeBackupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more backups.</p>"
        },
        "MaxResults": {
          "shape": "MaxSize",
          "documentation": "<p>The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a <code>NextToken</code> value.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>One or more filters to limit the items returned in the response.</p> <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify backups by their backup identifier (ID).</p> <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p> <p>Use the <code>clusterIds</code> filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID).</p> <p>Use the <code>states</code> filter to return only backups that match the specified state.</p>"
        },
        "SortAscending": {
          "shape": "Boolean",
          "documentation": "<p>Designates whether or not to sort the return backups by ascending chronological order of generation.</p>"
        }
      }
    },
    "DescribeBackupsResponse": {
      "type": "structure",
      "members": {
        "Backups": {
          "shape": "Backups",
          "documentation": "<p>A list of backups.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups.</p>"
        }
      }
    },
    "DescribeClustersRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>One or more filters to limit the items returned in the response.</p> <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify clusters by their cluster identifier (ID).</p> <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p> <p>Use the <code>states</code> filter to return only clusters that match the specified state.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more clusters.</p>"
        },
        "MaxResults": {
          "shape": "MaxSize",
          "documentation": "<p>The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a <code>NextToken</code> value.</p>"
        }
      }
    },
    "DescribeClustersResponse": {
      "type": "structure",
      "members": {
        "Clusters": {
          "shape": "Clusters",
          "documentation": "<p>A list of clusters.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters.</p>"
        }
      }
    },
    "DestinationBackup": {
      "type": "structure",
      "members": {
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when both the source backup was created.</p>"
        },
        "SourceRegion": {
          "shape": "Region",
          "documentation": "<p>The AWS region that contains the source backup from which the new backup was copied.</p>"
        },
        "SourceBackup": {
          "shape": "BackupId",
          "documentation": "<p>The identifier (ID) of the source backup from which the new backup was copied.</p>"
        },
        "SourceCluster": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster containing the source backup from which the new backup was copied.</p>"
        }
      },
      "documentation": "<p>Contains information about the backup that will be copied and created by the <a>CopyBackupToRegion</a> operation.</p>"
    },
    "EniId": {
      "type": "string",
      "pattern": "eni-[0-9a-fA-F]{8,17}"
    },
    "ExternalAz": {
      "type": "string",
      "pattern": "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]"
    },
    "ExternalSubnetMapping": {
      "type": "map",
      "key": {
        "shape": "ExternalAz"
      },
      "value": {
        "shape": "SubnetId"
      }
    },
    "Field": {
      "type": "string",
      "pattern": "[a-zA-Z0-9_-]+"
    },
    "Filters": {
      "type": "map",
      "key": {
        "shape": "Field"
      },
      "value": {
        "shape": "Strings"
      }
    },
    "Hsm": {
      "type": "structure",
      "required": [
        "HsmId"
      ],
      "members": {
        "AvailabilityZone": {
          "shape": "ExternalAz",
          "documentation": "<p>The Availability Zone that contains the HSM.</p>"
        },
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster that contains the HSM.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The subnet that contains the HSM's elastic network interface (ENI).</p>"
        },
        "EniId": {
          "shape": "EniId",
          "documentation": "<p>The identifier (ID) of the HSM's elastic network interface (ENI).</p>"
        },
        "EniIp": {
          "shape": "IpAddress",
          "documentation": "<p>The IP address of the HSM's elastic network interface (ENI).</p>"
        },
        "HsmId": {
          "shape": "HsmId",
          "documentation": "<p>The HSM's identifier (ID).</p>"
        },
        "State": {
          "shape": "HsmState",
          "documentation": "<p>The HSM's state.</p>"
        },
        "StateMessage": {
          "shape": "String",
          "documentation": "<p>A description of the HSM's state.</p>"
        }
      },
      "documentation": "<p>Contains information about a hardware security module (HSM) in an AWS CloudHSM cluster.</p>"
    },
    "HsmId": {
      "type": "string",
      "pattern": "hsm-[2-7a-zA-Z]{11,16}"
    },
    "HsmState": {
      "type": "string",
      "enum": [
        "CREATE_IN_PROGRESS",
        "ACTIVE",
        "DEGRADED",
        "DELETE_IN_PROGRESS",
        "DELETED"
      ]
    },
    "HsmType": {
      "type": "string",
      "pattern": "(hsm1\\.medium)"
    },
    "Hsms": {
      "type": "list",
      "member": {
        "shape": "Hsm"
      }
    },
    "InitializeClusterRequest": {
      "type": "structure",
      "required": [
        "ClusterId",
        "SignedCert",
        "TrustAnchor"
      ],
      "members": {
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        },
        "SignedCert": {
          "shape": "Cert",
          "documentation": "<p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.</p>"
        },
        "TrustAnchor": {
          "shape": "Cert",
          "documentation": "<p>The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the root certificate. The certificate must be in PEM format and can contain a maximum of 5000 characters.</p>"
        }
      }
    },
    "InitializeClusterResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "ClusterState",
          "documentation": "<p>The cluster's state.</p>"
        },
        "StateMessage": {
          "shape": "StateMessage",
          "documentation": "<p>A description of the cluster's state.</p>"
        }
      }
    },
    "IpAddress": {
      "type": "string",
      "pattern": "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more tags.</p>"
        },
        "MaxResults": {
          "shape": "MaxSize",
          "documentation": "<p>The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a <code>NextToken</code> value.</p>"
        }
      }
    },
    "ListTagsResponse": {
      "type": "structure",
      "required": [
        "TagList"
      ],
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>A list of tags.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent <code>ListTags</code> request to get more tags.</p>"
        }
      }
    },
    "MaxSize": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 256,
      "pattern": ".*"
    },
    "PreCoPassword": {
      "type": "string",
      "max": 32,
      "min": 7
    },
    "Region": {
      "type": "string",
      "pattern": "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d"
    },
    "ResourceId": {
      "type": "string",
      "pattern": "(?:cluster|backup)-[2-7a-zA-Z]{11,16}"
    },
    "RestoreBackupRequest": {
      "type": "structure",
      "required": [
        "BackupId"
      ],
      "members": {
        "BackupId": {
          "shape": "BackupId",
          "documentation": "<p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>"
        }
      }
    },
    "RestoreBackupResponse": {
      "type": "structure",
      "members": {
        "Backup": {
          "shape": "Backup",
          "documentation": "<p>Information on the <code>Backup</code> object created.</p>"
        }
      }
    },
    "SecurityGroup": {
      "type": "string",
      "pattern": "sg-[0-9a-fA-F]{8,17}"
    },
    "StateMessage": {
      "type": "string",
      "max": 300,
      "pattern": ".*"
    },
    "String": {
      "type": "string"
    },
    "Strings": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SubnetId": {
      "type": "string",
      "pattern": "subnet-[0-9a-fA-F]{8,17}"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      },
      "max": 10,
      "min": 1
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
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Contains a tag. A tag is a key-value pair.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagList"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>A list of one or more tags.</p>"
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
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagKeyList"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use <a>DescribeClusters</a>.</p>"
        },
        "TagKeyList": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "VpcId": {
      "type": "string",
      "pattern": "vpc-[0-9a-fA-F]"
    }
  },
  "documentation": "<p>For more information about AWS CloudHSM, see <a href=\"http://aws.amazon.com/cloudhsm/\">AWS CloudHSM</a> and the <a href=\"https://docs.aws.amazon.com/cloudhsm/latest/userguide/\">AWS CloudHSM User Guide</a>.</p>"
}
]===]))
