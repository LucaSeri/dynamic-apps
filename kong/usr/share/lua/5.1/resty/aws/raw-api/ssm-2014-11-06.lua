local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-11-06",
    "endpointPrefix": "ssm",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Amazon SSM",
    "serviceFullName": "Amazon Simple Systems Manager (SSM)",
    "serviceId": "SSM",
    "signatureVersion": "v4",
    "targetPrefix": "AmazonSSM",
    "uid": "ssm-2014-11-06"
  },
  "operations": {
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
          "shape": "InvalidResourceType"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "TooManyTagsError"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p>Adds or overwrites one or more tags for the specified resource. Tags are metadata that you can assign to your documents, managed instances, maintenance windows, Parameter Store parameters, and patch baselines. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test.</p> <p>Each resource can have a maximum of 50 tags. </p> <p>We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to and are interpreted strictly as a string of characters. </p> <p>For more information about using tags with EC2 instances, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\">Tagging your Amazon EC2 resources</a> in the <i>Amazon EC2 User Guide</i>.</p>"
    },
    "CancelCommand": {
      "name": "CancelCommand",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelCommandRequest"
      },
      "output": {
        "shape": "CancelCommandResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidCommandId"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "DuplicateInstanceId"
        }
      ],
      "documentation": "<p>Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.</p>"
    },
    "CancelMaintenanceWindowExecution": {
      "name": "CancelMaintenanceWindowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelMaintenanceWindowExecutionRequest"
      },
      "output": {
        "shape": "CancelMaintenanceWindowExecutionResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "DoesNotExistException"
        }
      ],
      "documentation": "<p>Stops a maintenance window execution that is already in progress and cancels any tasks in the window that have not already starting running. (Tasks already in progress will continue to completion.)</p>"
    },
    "CreateActivation": {
      "name": "CreateActivation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateActivationRequest"
      },
      "output": {
        "shape": "CreateActivationResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Generates an activation code and activation ID you can use to register your on-premises server or virtual machine (VM) with Systems Manager. Registering these machines with Systems Manager makes it possible to manage them using Systems Manager capabilities. You use the activation code and ID when installing SSM Agent on machines in your hybrid environment. For more information about requirements for managing on-premises instances and VMs using Systems Manager, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html\">Setting up AWS Systems Manager for hybrid environments</a> in the <i>AWS Systems Manager User Guide</i>. </p> <note> <p>On-premises servers or VMs that are registered with Systems Manager and EC2 instances that you manage with Systems Manager are all called <i>managed instances</i>.</p> </note>"
    },
    "CreateAssociation": {
      "name": "CreateAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAssociationRequest"
      },
      "output": {
        "shape": "CreateAssociationResult"
      },
      "errors": [
        {
          "shape": "AssociationAlreadyExists"
        },
        {
          "shape": "AssociationLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "UnsupportedPlatformType"
        },
        {
          "shape": "InvalidOutputLocation"
        },
        {
          "shape": "InvalidParameters"
        },
        {
          "shape": "InvalidTarget"
        },
        {
          "shape": "InvalidSchedule"
        }
      ],
      "documentation": "<p>A State Manager association defines the state that you want to maintain on your instances. For example, an association can specify that anti-virus software must be installed and running on your instances, or that certain ports must be closed. For static targets, the association specifies a schedule for when the configuration is reapplied. For dynamic targets, such as an AWS Resource Group or an AWS Autoscaling Group, State Manager applies the configuration when new instances are added to the group. The association also specifies actions to take when applying the configuration. For example, an association for anti-virus software might run once a day. If the software is not installed, then State Manager installs it. If the software is installed, but the service is not running, then the association might instruct State Manager to start the service. </p>"
    },
    "CreateAssociationBatch": {
      "name": "CreateAssociationBatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAssociationBatchRequest"
      },
      "output": {
        "shape": "CreateAssociationBatchResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidParameters"
        },
        {
          "shape": "DuplicateInstanceId"
        },
        {
          "shape": "AssociationLimitExceeded"
        },
        {
          "shape": "UnsupportedPlatformType"
        },
        {
          "shape": "InvalidOutputLocation"
        },
        {
          "shape": "InvalidTarget"
        },
        {
          "shape": "InvalidSchedule"
        }
      ],
      "documentation": "<p>Associates the specified Systems Manager document with the specified instances or targets.</p> <p>When you associate a document with one or more instances using instance IDs or tags, SSM Agent running on the instance processes the document and configures the instance as specified.</p> <p>If you associate a document with an instance that already has an associated document, the system returns the AssociationAlreadyExists exception.</p>"
    },
    "CreateDocument": {
      "name": "CreateDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDocumentRequest"
      },
      "output": {
        "shape": "CreateDocumentResult"
      },
      "errors": [
        {
          "shape": "DocumentAlreadyExists"
        },
        {
          "shape": "MaxDocumentSizeExceeded"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocumentContent"
        },
        {
          "shape": "DocumentLimitExceeded"
        },
        {
          "shape": "InvalidDocumentSchemaVersion"
        }
      ],
      "documentation": "<p>Creates a Systems Manager (SSM) document. An SSM document defines the actions that Systems Manager performs on your managed instances. For more information about SSM documents, including information about supported schemas, features, and syntax, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-ssm-docs.html\">AWS Systems Manager Documents</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
    },
    "CreateMaintenanceWindow": {
      "name": "CreateMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateMaintenanceWindowRequest"
      },
      "output": {
        "shape": "CreateMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "IdempotentParameterMismatch"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Creates a new maintenance window.</p> <note> <p>The value you specify for <code>Duration</code> determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start after 5 PM.</p> </note>"
    },
    "CreateOpsItem": {
      "name": "CreateOpsItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOpsItemRequest"
      },
      "output": {
        "shape": "CreateOpsItemResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "OpsItemAlreadyExistsException"
        },
        {
          "shape": "OpsItemLimitExceededException"
        },
        {
          "shape": "OpsItemInvalidParameterException"
        }
      ],
      "documentation": "<p>Creates a new OpsItem. You must have permission in AWS Identity and Access Management (IAM) to create a new OpsItem. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html\">Getting started with OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">AWS Systems Manager OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
    },
    "CreatePatchBaseline": {
      "name": "CreatePatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePatchBaselineRequest"
      },
      "output": {
        "shape": "CreatePatchBaselineResult"
      },
      "errors": [
        {
          "shape": "IdempotentParameterMismatch"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Creates a patch baseline.</p> <note> <p>For information about valid key and value pairs in <code>PatchFilters</code> for each supported operating system type, see <a href=\"http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html\">PatchFilter</a>.</p> </note>"
    },
    "CreateResourceDataSync": {
      "name": "CreateResourceDataSync",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateResourceDataSyncRequest"
      },
      "output": {
        "shape": "CreateResourceDataSyncResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ResourceDataSyncCountExceededException"
        },
        {
          "shape": "ResourceDataSyncAlreadyExistsException"
        },
        {
          "shape": "ResourceDataSyncInvalidConfigurationException"
        }
      ],
      "documentation": "<p>A resource data sync helps you view data from multiple sources in a single location. Systems Manager offers two types of resource data sync: <code>SyncToDestination</code> and <code>SyncFromSource</code>.</p> <p>You can configure Systems Manager Inventory to use the <code>SyncToDestination</code> type to synchronize Inventory data from multiple AWS Regions to a single S3 bucket. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync.html\">Configuring Resource Data Sync for Inventory</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>You can configure Systems Manager Explorer to use the <code>SyncFromSource</code> type to synchronize operational work items (OpsItems) and operational data (OpsData) from multiple AWS Regions to a single S3 bucket. This type can synchronize OpsItems and OpsData from multiple AWS accounts and Regions or <code>EntireOrganization</code> by using AWS Organizations. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html\">Setting up Systems Manager Explorer to display data from multiple accounts and Regions</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>A resource data sync is an asynchronous operation that returns immediately. After a successful initial sync is completed, the system continuously syncs data. To check the status of a sync, use the <a>ListResourceDataSync</a>.</p> <note> <p>By default, data is not encrypted in Amazon S3. We strongly recommend that you enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you secure access to the Amazon S3 bucket by creating a restrictive bucket policy. </p> </note>"
    },
    "DeleteActivation": {
      "name": "DeleteActivation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteActivationRequest"
      },
      "output": {
        "shape": "DeleteActivationResult"
      },
      "errors": [
        {
          "shape": "InvalidActivationId"
        },
        {
          "shape": "InvalidActivation"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p>Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.</p>"
    },
    "DeleteAssociation": {
      "name": "DeleteAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAssociationRequest"
      },
      "output": {
        "shape": "DeleteAssociationResult"
      },
      "errors": [
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p>Disassociates the specified Systems Manager document from the specified instance.</p> <p>When you disassociate a document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.</p>"
    },
    "DeleteDocument": {
      "name": "DeleteDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDocumentRequest"
      },
      "output": {
        "shape": "DeleteDocumentResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentOperation"
        },
        {
          "shape": "AssociatedInstances"
        }
      ],
      "documentation": "<p>Deletes the Systems Manager document and all instance associations to the document.</p> <p>Before you delete the document, we recommend that you use <a>DeleteAssociation</a> to disassociate all instances that are associated with the document.</p>"
    },
    "DeleteInventory": {
      "name": "DeleteInventory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInventoryRequest"
      },
      "output": {
        "shape": "DeleteInventoryResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidOptionException"
        },
        {
          "shape": "InvalidDeleteInventoryParametersException"
        },
        {
          "shape": "InvalidInventoryRequestException"
        }
      ],
      "documentation": "<p>Delete a custom inventory type or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.</p>"
    },
    "DeleteMaintenanceWindow": {
      "name": "DeleteMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMaintenanceWindowRequest"
      },
      "output": {
        "shape": "DeleteMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes a maintenance window.</p>"
    },
    "DeleteParameter": {
      "name": "DeleteParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteParameterRequest"
      },
      "output": {
        "shape": "DeleteParameterResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ParameterNotFound"
        }
      ],
      "documentation": "<p>Delete a parameter from the system.</p>"
    },
    "DeleteParameters": {
      "name": "DeleteParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteParametersRequest"
      },
      "output": {
        "shape": "DeleteParametersResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Delete a list of parameters.</p>"
    },
    "DeletePatchBaseline": {
      "name": "DeletePatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePatchBaselineRequest"
      },
      "output": {
        "shape": "DeletePatchBaselineResult"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes a patch baseline.</p>"
    },
    "DeleteResourceDataSync": {
      "name": "DeleteResourceDataSync",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourceDataSyncRequest"
      },
      "output": {
        "shape": "DeleteResourceDataSyncResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ResourceDataSyncNotFoundException"
        },
        {
          "shape": "ResourceDataSyncInvalidConfigurationException"
        }
      ],
      "documentation": "<p>Deletes a Resource Data Sync configuration. After the configuration is deleted, changes to data on managed instances are no longer synced to or from the target. Deleting a sync configuration does not delete data.</p>"
    },
    "DeregisterManagedInstance": {
      "name": "DeregisterManagedInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterManagedInstanceRequest"
      },
      "output": {
        "shape": "DeregisterManagedInstanceResult"
      },
      "errors": [
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don't plan to use Run Command on the server, we suggest uninstalling SSM Agent first.</p>"
    },
    "DeregisterPatchBaselineForPatchGroup": {
      "name": "DeregisterPatchBaselineForPatchGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterPatchBaselineForPatchGroupRequest"
      },
      "output": {
        "shape": "DeregisterPatchBaselineForPatchGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Removes a patch group from a patch baseline.</p>"
    },
    "DeregisterTargetFromMaintenanceWindow": {
      "name": "DeregisterTargetFromMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterTargetFromMaintenanceWindowRequest"
      },
      "output": {
        "shape": "DeregisterTargetFromMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "TargetInUseException"
        }
      ],
      "documentation": "<p>Removes a target from a maintenance window.</p>"
    },
    "DeregisterTaskFromMaintenanceWindow": {
      "name": "DeregisterTaskFromMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterTaskFromMaintenanceWindowRequest"
      },
      "output": {
        "shape": "DeregisterTaskFromMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Removes a task from a maintenance window.</p>"
    },
    "DescribeActivations": {
      "name": "DescribeActivations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeActivationsRequest"
      },
      "output": {
        "shape": "DescribeActivationsResult"
      },
      "errors": [
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.</p>"
    },
    "DescribeAssociation": {
      "name": "DescribeAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAssociationRequest"
      },
      "output": {
        "shape": "DescribeAssociationResult"
      },
      "errors": [
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "InvalidAssociationVersion"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidInstanceId"
        }
      ],
      "documentation": "<p>Describes the association for the specified target or instance. If you created the association by using the <code>Targets</code> parameter, then you must retrieve the association by using the association ID. If you created the association by specifying an instance ID and a Systems Manager document, then you retrieve the association by specifying the document name and the instance ID. </p>"
    },
    "DescribeAssociationExecutionTargets": {
      "name": "DescribeAssociationExecutionTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAssociationExecutionTargetsRequest"
      },
      "output": {
        "shape": "DescribeAssociationExecutionTargetsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "AssociationExecutionDoesNotExist"
        }
      ],
      "documentation": "<p>Use this API action to view information about a specific execution of a specific association.</p>"
    },
    "DescribeAssociationExecutions": {
      "name": "DescribeAssociationExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAssociationExecutionsRequest"
      },
      "output": {
        "shape": "DescribeAssociationExecutionsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Use this API action to view all executions for a specific association ID. </p>"
    },
    "DescribeAutomationExecutions": {
      "name": "DescribeAutomationExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAutomationExecutionsRequest"
      },
      "output": {
        "shape": "DescribeAutomationExecutionsResult"
      },
      "errors": [
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidFilterValue"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Provides details about all active and terminated Automation executions.</p>"
    },
    "DescribeAutomationStepExecutions": {
      "name": "DescribeAutomationStepExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAutomationStepExecutionsRequest"
      },
      "output": {
        "shape": "DescribeAutomationStepExecutionsResult"
      },
      "errors": [
        {
          "shape": "AutomationExecutionNotFoundException"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidFilterValue"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Information about all active and terminated step executions in an Automation workflow.</p>"
    },
    "DescribeAvailablePatches": {
      "name": "DescribeAvailablePatches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAvailablePatchesRequest"
      },
      "output": {
        "shape": "DescribeAvailablePatchesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists all patches eligible to be included in a patch baseline.</p>"
    },
    "DescribeDocument": {
      "name": "DescribeDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDocumentRequest"
      },
      "output": {
        "shape": "DescribeDocumentResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        }
      ],
      "documentation": "<p>Describes the specified Systems Manager document.</p>"
    },
    "DescribeDocumentPermission": {
      "name": "DescribeDocumentPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDocumentPermissionRequest"
      },
      "output": {
        "shape": "DescribeDocumentPermissionResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidPermissionType"
        }
      ],
      "documentation": "<p>Describes the permissions for a Systems Manager document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user's AWS account ID) or publicly (<i>All</i>). </p>"
    },
    "DescribeEffectiveInstanceAssociations": {
      "name": "DescribeEffectiveInstanceAssociations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEffectiveInstanceAssociationsRequest"
      },
      "output": {
        "shape": "DescribeEffectiveInstanceAssociationsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>All associations for the instance(s).</p>"
    },
    "DescribeEffectivePatchesForPatchBaseline": {
      "name": "DescribeEffectivePatchesForPatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEffectivePatchesForPatchBaselineRequest"
      },
      "output": {
        "shape": "DescribeEffectivePatchesForPatchBaselineResult"
      },
      "errors": [
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "UnsupportedOperatingSystem"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline. Note that this API applies only to Windows patch baselines.</p>"
    },
    "DescribeInstanceAssociationsStatus": {
      "name": "DescribeInstanceAssociationsStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstanceAssociationsStatusRequest"
      },
      "output": {
        "shape": "DescribeInstanceAssociationsStatusResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>The status of the associations for the instance(s).</p>"
    },
    "DescribeInstanceInformation": {
      "name": "DescribeInstanceInformation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstanceInformationRequest"
      },
      "output": {
        "shape": "DescribeInstanceInformationResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidInstanceInformationFilterValue"
        },
        {
          "shape": "InvalidFilterKey"
        }
      ],
      "documentation": "<p>Describes one or more of your instances, including information about the operating system platform, the version of SSM Agent installed on the instance, instance status, and so on.</p> <p>If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.</p> <note> <p>The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for EC2 instances.</p> </note>"
    },
    "DescribeInstancePatchStates": {
      "name": "DescribeInstancePatchStates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancePatchStatesRequest"
      },
      "output": {
        "shape": "DescribeInstancePatchStatesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves the high-level patch state of one or more instances.</p>"
    },
    "DescribeInstancePatchStatesForPatchGroup": {
      "name": "DescribeInstancePatchStatesForPatchGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancePatchStatesForPatchGroupRequest"
      },
      "output": {
        "shape": "DescribeInstancePatchStatesForPatchGroupResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves the high-level patch state for the instances in the specified patch group.</p>"
    },
    "DescribeInstancePatches": {
      "name": "DescribeInstancePatches",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancePatchesRequest"
      },
      "output": {
        "shape": "DescribeInstancePatchesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.</p>"
    },
    "DescribeInventoryDeletions": {
      "name": "DescribeInventoryDeletions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInventoryDeletionsRequest"
      },
      "output": {
        "shape": "DescribeInventoryDeletionsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDeletionIdException"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Describes a specific delete inventory operation.</p>"
    },
    "DescribeMaintenanceWindowExecutionTaskInvocations": {
      "name": "DescribeMaintenanceWindowExecutionTaskInvocations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowExecutionTaskInvocationsRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowExecutionTaskInvocationsResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution.</p>"
    },
    "DescribeMaintenanceWindowExecutionTasks": {
      "name": "DescribeMaintenanceWindowExecutionTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowExecutionTasksRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowExecutionTasksResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>For a given maintenance window execution, lists the tasks that were run.</p>"
    },
    "DescribeMaintenanceWindowExecutions": {
      "name": "DescribeMaintenanceWindowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowExecutionsRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowExecutionsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the executions of a maintenance window. This includes information about when the maintenance window was scheduled to be active, and information about tasks registered and run with the maintenance window.</p>"
    },
    "DescribeMaintenanceWindowSchedule": {
      "name": "DescribeMaintenanceWindowSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowScheduleRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowScheduleResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "DoesNotExistException"
        }
      ],
      "documentation": "<p>Retrieves information about upcoming executions of a maintenance window.</p>"
    },
    "DescribeMaintenanceWindowTargets": {
      "name": "DescribeMaintenanceWindowTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowTargetsRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowTargetsResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the targets registered with the maintenance window.</p>"
    },
    "DescribeMaintenanceWindowTasks": {
      "name": "DescribeMaintenanceWindowTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowTasksRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowTasksResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the tasks in a maintenance window.</p>"
    },
    "DescribeMaintenanceWindows": {
      "name": "DescribeMaintenanceWindows",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowsRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the maintenance windows in an AWS account.</p>"
    },
    "DescribeMaintenanceWindowsForTarget": {
      "name": "DescribeMaintenanceWindowsForTarget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMaintenanceWindowsForTargetRequest"
      },
      "output": {
        "shape": "DescribeMaintenanceWindowsForTargetResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves information about the maintenance window targets or tasks that an instance is associated with.</p>"
    },
    "DescribeOpsItems": {
      "name": "DescribeOpsItems",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOpsItemsRequest"
      },
      "output": {
        "shape": "DescribeOpsItemsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Query a set of OpsItems. You must have permission in AWS Identity and Access Management (IAM) to query a list of OpsItems. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html\">Getting started with OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">AWS Systems Manager OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
    },
    "DescribeParameters": {
      "name": "DescribeParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeParametersRequest"
      },
      "output": {
        "shape": "DescribeParametersResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidFilterOption"
        },
        {
          "shape": "InvalidFilterValue"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Get information about a parameter.</p> <note> <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of <code>MaxResults</code>. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a <code>NextToken</code>. You can specify the <code>NextToken</code> in a subsequent call to get the next set of results.</p> </note>"
    },
    "DescribePatchBaselines": {
      "name": "DescribePatchBaselines",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePatchBaselinesRequest"
      },
      "output": {
        "shape": "DescribePatchBaselinesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the patch baselines in your AWS account.</p>"
    },
    "DescribePatchGroupState": {
      "name": "DescribePatchGroupState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePatchGroupStateRequest"
      },
      "output": {
        "shape": "DescribePatchGroupStateResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Returns high-level aggregated patch compliance state for a patch group.</p>"
    },
    "DescribePatchGroups": {
      "name": "DescribePatchGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePatchGroupsRequest"
      },
      "output": {
        "shape": "DescribePatchGroupsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists all patch groups that have been registered with patch baselines.</p>"
    },
    "DescribePatchProperties": {
      "name": "DescribePatchProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePatchPropertiesRequest"
      },
      "output": {
        "shape": "DescribePatchPropertiesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches. You can use the reported properties in the filters you specify in requests for actions such as <a>CreatePatchBaseline</a>, <a>UpdatePatchBaseline</a>, <a>DescribeAvailablePatches</a>, and <a>DescribePatchBaselines</a>.</p> <p>The following section lists the properties that can be used in filters for each major operating system type:</p> <dl> <dt>AMAZON_LINUX</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>AMAZON_LINUX_2</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>CENTOS</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>DEBIAN</dt> <dd> <p>Valid properties: PRODUCT, PRIORITY</p> </dd> <dt>ORACLE_LINUX</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>REDHAT_ENTERPRISE_LINUX</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>SUSE</dt> <dd> <p>Valid properties: PRODUCT, CLASSIFICATION, SEVERITY</p> </dd> <dt>UBUNTU</dt> <dd> <p>Valid properties: PRODUCT, PRIORITY</p> </dd> <dt>WINDOWS</dt> <dd> <p>Valid properties: PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, MSRC_SEVERITY</p> </dd> </dl>"
    },
    "DescribeSessions": {
      "name": "DescribeSessions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSessionsRequest"
      },
      "output": {
        "shape": "DescribeSessionsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days.</p>"
    },
    "GetAutomationExecution": {
      "name": "GetAutomationExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAutomationExecutionRequest"
      },
      "output": {
        "shape": "GetAutomationExecutionResult"
      },
      "errors": [
        {
          "shape": "AutomationExecutionNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Get detailed information about a particular Automation execution.</p>"
    },
    "GetCalendarState": {
      "name": "GetCalendarState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCalendarStateRequest"
      },
      "output": {
        "shape": "GetCalendarStateResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentType"
        },
        {
          "shape": "UnsupportedCalendarException"
        }
      ],
      "documentation": "<p>Gets the state of the AWS Systems Manager Change Calendar at an optional, specified time. If you specify a time, <code>GetCalendarState</code> returns the state of the calendar at a specific time, and returns the next time that the Change Calendar state will transition. If you do not specify a time, <code>GetCalendarState</code> assumes the current time. Change Calendar entries have two possible states: <code>OPEN</code> or <code>CLOSED</code>.</p> <p>If you specify more than one calendar in a request, the command returns the status of <code>OPEN</code> only if all calendars in the request are open. If one or more calendars in the request are closed, the status returned is <code>CLOSED</code>.</p> <p>For more information about Systems Manager Change Calendar, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html\">AWS Systems Manager Change Calendar</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
    },
    "GetCommandInvocation": {
      "name": "GetCommandInvocation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCommandInvocationRequest"
      },
      "output": {
        "shape": "GetCommandInvocationResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidCommandId"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidPluginName"
        },
        {
          "shape": "InvocationDoesNotExist"
        }
      ],
      "documentation": "<p>Returns detailed information about command execution for an invocation or plugin. </p>"
    },
    "GetConnectionStatus": {
      "name": "GetConnectionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConnectionStatusRequest"
      },
      "output": {
        "shape": "GetConnectionStatusResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the Session Manager connection status for an instance to determine whether it is running and ready to receive Session Manager connections.</p>"
    },
    "GetDefaultPatchBaseline": {
      "name": "GetDefaultPatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDefaultPatchBaselineRequest"
      },
      "output": {
        "shape": "GetDefaultPatchBaselineResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the default patch baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.</p> <p>If you do not specify an operating system value, the default patch baseline for Windows is returned.</p>"
    },
    "GetDeployablePatchSnapshotForInstance": {
      "name": "GetDeployablePatchSnapshotForInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeployablePatchSnapshotForInstanceRequest"
      },
      "output": {
        "shape": "GetDeployablePatchSnapshotForInstanceResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "UnsupportedOperatingSystem"
        },
        {
          "shape": "UnsupportedFeatureRequiredException"
        }
      ],
      "documentation": "<p>Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-RunPatchBaseline Systems Manager document. </p>"
    },
    "GetDocument": {
      "name": "GetDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDocumentRequest"
      },
      "output": {
        "shape": "GetDocumentResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        }
      ],
      "documentation": "<p>Gets the contents of the specified Systems Manager document.</p>"
    },
    "GetInventory": {
      "name": "GetInventory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInventoryRequest"
      },
      "output": {
        "shape": "GetInventoryResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidInventoryGroupException"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidAggregatorException"
        },
        {
          "shape": "InvalidResultAttributeException"
        }
      ],
      "documentation": "<p>Query inventory information.</p>"
    },
    "GetInventorySchema": {
      "name": "GetInventorySchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInventorySchemaRequest"
      },
      "output": {
        "shape": "GetInventorySchemaResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type.</p>"
    },
    "GetMaintenanceWindow": {
      "name": "GetMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMaintenanceWindowRequest"
      },
      "output": {
        "shape": "GetMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves a maintenance window.</p>"
    },
    "GetMaintenanceWindowExecution": {
      "name": "GetMaintenanceWindowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMaintenanceWindowExecutionRequest"
      },
      "output": {
        "shape": "GetMaintenanceWindowExecutionResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves details about a specific a maintenance window execution.</p>"
    },
    "GetMaintenanceWindowExecutionTask": {
      "name": "GetMaintenanceWindowExecutionTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMaintenanceWindowExecutionTaskRequest"
      },
      "output": {
        "shape": "GetMaintenanceWindowExecutionTaskResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the details about a specific task run as part of a maintenance window execution.</p>"
    },
    "GetMaintenanceWindowExecutionTaskInvocation": {
      "name": "GetMaintenanceWindowExecutionTaskInvocation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMaintenanceWindowExecutionTaskInvocationRequest"
      },
      "output": {
        "shape": "GetMaintenanceWindowExecutionTaskInvocationResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves information about a specific task running on a specific target.</p>"
    },
    "GetMaintenanceWindowTask": {
      "name": "GetMaintenanceWindowTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMaintenanceWindowTaskRequest"
      },
      "output": {
        "shape": "GetMaintenanceWindowTaskResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Lists the tasks in a maintenance window.</p>"
    },
    "GetOpsItem": {
      "name": "GetOpsItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOpsItemRequest"
      },
      "output": {
        "shape": "GetOpsItemResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "OpsItemNotFoundException"
        }
      ],
      "documentation": "<p>Get information about an OpsItem by using the ID. You must have permission in AWS Identity and Access Management (IAM) to view information about an OpsItem. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html\">Getting started with OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">AWS Systems Manager OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
    },
    "GetOpsSummary": {
      "name": "GetOpsSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOpsSummaryRequest"
      },
      "output": {
        "shape": "GetOpsSummaryResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ResourceDataSyncNotFoundException"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidAggregatorException"
        }
      ],
      "documentation": "<p>View a summary of OpsItems based on specified filters and aggregators.</p>"
    },
    "GetParameter": {
      "name": "GetParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetParameterRequest"
      },
      "output": {
        "shape": "GetParameterResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidKeyId"
        },
        {
          "shape": "ParameterNotFound"
        },
        {
          "shape": "ParameterVersionNotFound"
        }
      ],
      "documentation": "<p>Get information about a parameter by using the parameter name. Don't confuse this API action with the <a>GetParameters</a> API action.</p>"
    },
    "GetParameterHistory": {
      "name": "GetParameterHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetParameterHistoryRequest"
      },
      "output": {
        "shape": "GetParameterHistoryResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ParameterNotFound"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidKeyId"
        }
      ],
      "documentation": "<p>Query a list of all parameters used by the AWS account.</p>"
    },
    "GetParameters": {
      "name": "GetParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetParametersRequest"
      },
      "output": {
        "shape": "GetParametersResult"
      },
      "errors": [
        {
          "shape": "InvalidKeyId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Get details of a parameter. Don't confuse this API action with the <a>GetParameter</a> API action.</p>"
    },
    "GetParametersByPath": {
      "name": "GetParametersByPath",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetParametersByPathRequest"
      },
      "output": {
        "shape": "GetParametersByPathResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidFilterOption"
        },
        {
          "shape": "InvalidFilterValue"
        },
        {
          "shape": "InvalidKeyId"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieve information about one or more parameters in a specific hierarchy. </p> <note> <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code> in the request, the response includes information up to the limit specified. The number of items returned, however, can be between zero and the value of <code>MaxResults</code>. If the service reaches an internal limit while processing the results, it stops the operation and returns the matching values up to that point and a <code>NextToken</code>. You can specify the <code>NextToken</code> in a subsequent call to get the next set of results.</p> </note>"
    },
    "GetPatchBaseline": {
      "name": "GetPatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPatchBaselineRequest"
      },
      "output": {
        "shape": "GetPatchBaselineResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves information about a patch baseline.</p>"
    },
    "GetPatchBaselineForPatchGroup": {
      "name": "GetPatchBaselineForPatchGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPatchBaselineForPatchGroupRequest"
      },
      "output": {
        "shape": "GetPatchBaselineForPatchGroupResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the patch baseline that should be used for the specified patch group.</p>"
    },
    "GetServiceSetting": {
      "name": "GetServiceSetting",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceSettingRequest"
      },
      "output": {
        "shape": "GetServiceSettingResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceSettingNotFound"
        }
      ],
      "documentation": "<p> <code>ServiceSetting</code> is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of \"false\". This means the user can't use this feature unless they change the setting to \"true\" and intentionally opt in for a paid feature.</p> <p>Services map a <code>SettingId</code> object to a setting value. AWS services teams define the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>, but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code> permission for the setting. Use the <a>UpdateServiceSetting</a> API action to change the default setting. Or use the <a>ResetServiceSetting</a> to change the value back to the original value defined by the AWS service team.</p> <p>Query the current service setting for the account. </p>"
    },
    "LabelParameterVersion": {
      "name": "LabelParameterVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "LabelParameterVersionRequest"
      },
      "output": {
        "shape": "LabelParameterVersionResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "TooManyUpdates"
        },
        {
          "shape": "ParameterNotFound"
        },
        {
          "shape": "ParameterVersionNotFound"
        },
        {
          "shape": "ParameterVersionLabelLimitExceeded"
        }
      ],
      "documentation": "<p>A parameter label is a user-defined alias to help you manage different versions of a parameter. When you modify a parameter, Systems Manager automatically saves a new version and increments the version number by one. A label can help you remember the purpose of a parameter when there are multiple versions. </p> <p>Parameter labels have the following requirements and restrictions.</p> <ul> <li> <p>A version of a parameter can have a maximum of 10 labels.</p> </li> <li> <p>You can't attach the same label to different versions of the same parameter. For example, if version 1 has the label Production, then you can't attach Production to version 2.</p> </li> <li> <p>You can move a label from one version of a parameter to another.</p> </li> <li> <p>You can't create a label when you create a new parameter. You must attach a label to a specific version of a parameter.</p> </li> <li> <p>You can't delete a parameter label. If you no longer want to use a parameter label, then you must move it to a different version of a parameter.</p> </li> <li> <p>A label can have a maximum of 100 characters.</p> </li> <li> <p>Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or underscores (_).</p> </li> <li> <p>Labels can't begin with a number, \"aws,\" or \"ssm\" (not case sensitive). If a label fails to meet these requirements, then the label is not associated with a parameter and the system displays it in the list of InvalidLabels.</p> </li> </ul>"
    },
    "ListAssociationVersions": {
      "name": "ListAssociationVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAssociationVersionsRequest"
      },
      "output": {
        "shape": "ListAssociationVersionsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "AssociationDoesNotExist"
        }
      ],
      "documentation": "<p>Retrieves all versions of an association for a specific association ID.</p>"
    },
    "ListAssociations": {
      "name": "ListAssociations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAssociationsRequest"
      },
      "output": {
        "shape": "ListAssociationsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.</p>"
    },
    "ListCommandInvocations": {
      "name": "ListCommandInvocations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCommandInvocationsRequest"
      },
      "output": {
        "shape": "ListCommandInvocationsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidCommandId"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.</p>"
    },
    "ListCommands": {
      "name": "ListCommands",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCommandsRequest"
      },
      "output": {
        "shape": "ListCommandsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidCommandId"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidFilterKey"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Lists the commands requested by users of the AWS account.</p>"
    },
    "ListComplianceItems": {
      "name": "ListComplianceItems",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListComplianceItemsRequest"
      },
      "output": {
        "shape": "ListComplianceItemsResult"
      },
      "errors": [
        {
          "shape": "InvalidResourceType"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>For a specified resource ID, this API action returns a list of compliance statuses for different resource types. Currently, you can only specify one resource ID per call. List results depend on the criteria specified in the filter.</p>"
    },
    "ListComplianceSummaries": {
      "name": "ListComplianceSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListComplianceSummariesRequest"
      },
      "output": {
        "shape": "ListComplianceSummariesResult"
      },
      "errors": [
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns a summary count of compliant and non-compliant resources for a compliance type. For example, this call can return State Manager associations, patches, or custom compliance types according to the filter criteria that you specify.</p>"
    },
    "ListDocumentVersions": {
      "name": "ListDocumentVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDocumentVersionsRequest"
      },
      "output": {
        "shape": "ListDocumentVersionsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidDocument"
        }
      ],
      "documentation": "<p>List all versions for a document.</p>"
    },
    "ListDocuments": {
      "name": "ListDocuments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDocumentsRequest"
      },
      "output": {
        "shape": "ListDocumentsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InvalidFilterKey"
        }
      ],
      "documentation": "<p>Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.</p>"
    },
    "ListInventoryEntries": {
      "name": "ListInventoryEntries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListInventoryEntriesRequest"
      },
      "output": {
        "shape": "ListInventoryEntriesResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>A list of inventory items returned by the request.</p>"
    },
    "ListResourceComplianceSummaries": {
      "name": "ListResourceComplianceSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourceComplianceSummariesRequest"
      },
      "output": {
        "shape": "ListResourceComplianceSummariesResult"
      },
      "errors": [
        {
          "shape": "InvalidFilter"
        },
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns a resource-level summary count. The summary includes information about compliant and non-compliant statuses and detailed compliance-item severity counts, according to the filter criteria you specify.</p>"
    },
    "ListResourceDataSync": {
      "name": "ListResourceDataSync",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourceDataSyncRequest"
      },
      "output": {
        "shape": "ListResourceDataSyncResult"
      },
      "errors": [
        {
          "shape": "ResourceDataSyncInvalidConfigurationException"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Lists your resource data sync configurations. Includes information about the last time a sync attempted to start, the last sync status, and the last time a sync successfully completed.</p> <p>The number of sync configurations might be too large to return using a single call to <code>ListResourceDataSync</code>. You can limit the number of sync configurations returned by using the <code>MaxResults</code> parameter. To determine whether there are more sync configurations to list, check the value of <code>NextToken</code> in the output. If there are more sync configurations to list, you can request them by specifying the <code>NextToken</code> returned in the call to the parameter of a subsequent call. </p>"
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
          "shape": "InvalidResourceType"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Returns a list of the tags assigned to the specified resource.</p>"
    },
    "ModifyDocumentPermission": {
      "name": "ModifyDocumentPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDocumentPermissionRequest"
      },
      "output": {
        "shape": "ModifyDocumentPermissionResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidPermissionType"
        },
        {
          "shape": "DocumentPermissionLimit"
        },
        {
          "shape": "DocumentLimitExceeded"
        }
      ],
      "documentation": "<p>Shares a Systems Manager document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify <i>All</i> as the account ID.</p>"
    },
    "PutComplianceItems": {
      "name": "PutComplianceItems",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutComplianceItemsRequest"
      },
      "output": {
        "shape": "PutComplianceItemsResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidItemContentException"
        },
        {
          "shape": "TotalSizeLimitExceededException"
        },
        {
          "shape": "ItemSizeLimitExceededException"
        },
        {
          "shape": "ComplianceTypeCountLimitExceededException"
        },
        {
          "shape": "InvalidResourceType"
        },
        {
          "shape": "InvalidResourceId"
        }
      ],
      "documentation": "<p>Registers a compliance type and other compliance details on a designated resource. This action lets you register custom compliance details with a resource. This call overwrites existing compliance information on the resource, so you must provide a full list of compliance items each time that you send the request.</p> <p>ComplianceType can be one of the following:</p> <ul> <li> <p>ExecutionId: The execution ID when the patch, association, or custom compliance item was applied.</p> </li> <li> <p>ExecutionType: Specify patch, association, or Custom:<code>string</code>.</p> </li> <li> <p>ExecutionTime. The time the patch, association, or custom compliance item was applied to the instance.</p> </li> <li> <p>Id: The patch, association, or custom compliance ID.</p> </li> <li> <p>Title: A title.</p> </li> <li> <p>Status: The status of the compliance item. For example, <code>approved</code> for patches, or <code>Failed</code> for associations.</p> </li> <li> <p>Severity: A patch severity. For example, <code>critical</code>.</p> </li> <li> <p>DocumentName: A SSM document name. For example, AWS-RunPatchBaseline.</p> </li> <li> <p>DocumentVersion: An SSM document version number. For example, 4.</p> </li> <li> <p>Classification: A patch classification. For example, <code>security updates</code>.</p> </li> <li> <p>PatchBaselineId: A patch baseline ID.</p> </li> <li> <p>PatchSeverity: A patch severity. For example, <code>Critical</code>.</p> </li> <li> <p>PatchState: A patch state. For example, <code>InstancesWithFailedPatches</code>.</p> </li> <li> <p>PatchGroup: The name of a patch group.</p> </li> <li> <p>InstalledTime: The time the association, patch, or custom compliance item was applied to the resource. Specify the time by using the following format: yyyy-MM-dd'T'HH:mm:ss'Z'</p> </li> </ul>"
    },
    "PutInventory": {
      "name": "PutInventory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutInventoryRequest"
      },
      "output": {
        "shape": "PutInventoryResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidTypeNameException"
        },
        {
          "shape": "InvalidItemContentException"
        },
        {
          "shape": "TotalSizeLimitExceededException"
        },
        {
          "shape": "ItemSizeLimitExceededException"
        },
        {
          "shape": "ItemContentMismatchException"
        },
        {
          "shape": "CustomSchemaCountLimitExceededException"
        },
        {
          "shape": "UnsupportedInventorySchemaVersionException"
        },
        {
          "shape": "UnsupportedInventoryItemContextException"
        },
        {
          "shape": "InvalidInventoryItemContextException"
        },
        {
          "shape": "SubTypeCountLimitExceededException"
        }
      ],
      "documentation": "<p>Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.</p>"
    },
    "PutParameter": {
      "name": "PutParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutParameterRequest"
      },
      "output": {
        "shape": "PutParameterResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidKeyId"
        },
        {
          "shape": "ParameterLimitExceeded"
        },
        {
          "shape": "TooManyUpdates"
        },
        {
          "shape": "ParameterAlreadyExists"
        },
        {
          "shape": "HierarchyLevelLimitExceededException"
        },
        {
          "shape": "HierarchyTypeMismatchException"
        },
        {
          "shape": "InvalidAllowedPatternException"
        },
        {
          "shape": "ParameterMaxVersionLimitExceeded"
        },
        {
          "shape": "ParameterPatternMismatchException"
        },
        {
          "shape": "UnsupportedParameterType"
        },
        {
          "shape": "PoliciesLimitExceededException"
        },
        {
          "shape": "InvalidPolicyTypeException"
        },
        {
          "shape": "InvalidPolicyAttributeException"
        },
        {
          "shape": "IncompatiblePolicyException"
        }
      ],
      "documentation": "<p>Add a parameter to the system.</p>"
    },
    "RegisterDefaultPatchBaseline": {
      "name": "RegisterDefaultPatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterDefaultPatchBaselineRequest"
      },
      "output": {
        "shape": "RegisterDefaultPatchBaselineResult"
      },
      "errors": [
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Defines the default patch baseline for the relevant operating system.</p> <p>To reset the AWS predefined patch baseline as the default, specify the full patch baseline ARN as the baseline ID value. For example, for CentOS, specify <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed</code> instead of <code>pb-0574b43a65ea646ed</code>.</p>"
    },
    "RegisterPatchBaselineForPatchGroup": {
      "name": "RegisterPatchBaselineForPatchGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterPatchBaselineForPatchGroupRequest"
      },
      "output": {
        "shape": "RegisterPatchBaselineForPatchGroupResult"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Registers a patch baseline for a patch group.</p>"
    },
    "RegisterTargetWithMaintenanceWindow": {
      "name": "RegisterTargetWithMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterTargetWithMaintenanceWindowRequest"
      },
      "output": {
        "shape": "RegisterTargetWithMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "IdempotentParameterMismatch"
        },
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Registers a target with a maintenance window.</p>"
    },
    "RegisterTaskWithMaintenanceWindow": {
      "name": "RegisterTaskWithMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterTaskWithMaintenanceWindowRequest"
      },
      "output": {
        "shape": "RegisterTaskWithMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "IdempotentParameterMismatch"
        },
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "FeatureNotAvailableException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Adds a new task to a maintenance window.</p>"
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
          "shape": "InvalidResourceType"
        },
        {
          "shape": "InvalidResourceId"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p>Removes tag keys from the specified resource.</p>"
    },
    "ResetServiceSetting": {
      "name": "ResetServiceSetting",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetServiceSettingRequest"
      },
      "output": {
        "shape": "ResetServiceSettingResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceSettingNotFound"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p> <code>ServiceSetting</code> is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of \"false\". This means the user can't use this feature unless they change the setting to \"true\" and intentionally opt in for a paid feature.</p> <p>Services map a <code>SettingId</code> object to a setting value. AWS services teams define the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>, but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code> permission for the setting. Use the <a>GetServiceSetting</a> API action to view the current value. Use the <a>UpdateServiceSetting</a> API action to change the default setting. </p> <p>Reset the service setting for the account to the default value as provisioned by the AWS service team. </p>"
    },
    "ResumeSession": {
      "name": "ResumeSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResumeSessionRequest"
      },
      "output": {
        "shape": "ResumeSessionResponse"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Reconnects a session to an instance after it has been disconnected. Connections can be resumed for disconnected sessions, but not terminated sessions.</p> <note> <p>This command is primarily for use by client machines to automatically reconnect during intermittent network issues. It is not intended for any other use.</p> </note>"
    },
    "SendAutomationSignal": {
      "name": "SendAutomationSignal",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendAutomationSignalRequest"
      },
      "output": {
        "shape": "SendAutomationSignalResult"
      },
      "errors": [
        {
          "shape": "AutomationExecutionNotFoundException"
        },
        {
          "shape": "AutomationStepNotFoundException"
        },
        {
          "shape": "InvalidAutomationSignalException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Sends a signal to an Automation execution to change the current behavior or status of the execution. </p>"
    },
    "SendCommand": {
      "name": "SendCommand",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendCommandRequest"
      },
      "output": {
        "shape": "SendCommandResult"
      },
      "errors": [
        {
          "shape": "DuplicateInstanceId"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "InvalidOutputFolder"
        },
        {
          "shape": "InvalidParameters"
        },
        {
          "shape": "UnsupportedPlatformType"
        },
        {
          "shape": "MaxDocumentSizeExceeded"
        },
        {
          "shape": "InvalidRole"
        },
        {
          "shape": "InvalidNotificationConfig"
        }
      ],
      "documentation": "<p>Runs commands on one or more managed instances.</p>"
    },
    "StartAssociationsOnce": {
      "name": "StartAssociationsOnce",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartAssociationsOnceRequest"
      },
      "output": {
        "shape": "StartAssociationsOnceResult"
      },
      "errors": [
        {
          "shape": "InvalidAssociation"
        },
        {
          "shape": "AssociationDoesNotExist"
        }
      ],
      "documentation": "<p>Use this API action to run an association immediately and only one time. This action can be helpful when troubleshooting associations.</p>"
    },
    "StartAutomationExecution": {
      "name": "StartAutomationExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartAutomationExecutionRequest"
      },
      "output": {
        "shape": "StartAutomationExecutionResult"
      },
      "errors": [
        {
          "shape": "AutomationDefinitionNotFoundException"
        },
        {
          "shape": "InvalidAutomationExecutionParametersException"
        },
        {
          "shape": "AutomationExecutionLimitExceededException"
        },
        {
          "shape": "AutomationDefinitionVersionNotFoundException"
        },
        {
          "shape": "IdempotentParameterMismatch"
        },
        {
          "shape": "InvalidTarget"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Initiates execution of an Automation document.</p>"
    },
    "StartSession": {
      "name": "StartSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartSessionRequest"
      },
      "output": {
        "shape": "StartSessionResponse"
      },
      "errors": [
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "TargetNotConnected"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Initiates a connection to a target (for example, an instance) for a Session Manager session. Returns a URL and token that can be used to open a WebSocket connection for sending input and receiving outputs.</p> <note> <p>AWS CLI usage: <code>start-session</code> is an interactive command that requires the Session Manager plugin to be installed on the client machine making the call. For information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html\">Install the Session Manager plugin for the AWS CLI</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>AWS Tools for PowerShell usage: Start-SSMSession is not currently supported by AWS Tools for PowerShell on Windows local machines.</p> </note>"
    },
    "StopAutomationExecution": {
      "name": "StopAutomationExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopAutomationExecutionRequest"
      },
      "output": {
        "shape": "StopAutomationExecutionResult"
      },
      "errors": [
        {
          "shape": "AutomationExecutionNotFoundException"
        },
        {
          "shape": "InvalidAutomationStatusUpdateException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Stop an Automation that is currently running.</p>"
    },
    "TerminateSession": {
      "name": "TerminateSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateSessionRequest"
      },
      "output": {
        "shape": "TerminateSessionResponse"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the instance. A terminated session cannot be resumed.</p>"
    },
    "UpdateAssociation": {
      "name": "UpdateAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAssociationRequest"
      },
      "output": {
        "shape": "UpdateAssociationResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidSchedule"
        },
        {
          "shape": "InvalidParameters"
        },
        {
          "shape": "InvalidOutputLocation"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "InvalidUpdate"
        },
        {
          "shape": "TooManyUpdates"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidTarget"
        },
        {
          "shape": "InvalidAssociationVersion"
        },
        {
          "shape": "AssociationVersionLimitExceeded"
        }
      ],
      "documentation": "<p>Updates an association. You can update the association name and version, the document version, schedule, parameters, and Amazon S3 output. </p> <p>In order to call this API action, your IAM user account, group, or role must be configured with permission to call the <a>DescribeAssociation</a> API action. If you don't have permission to call DescribeAssociation, then you receive the following error: <code>An error occurred (AccessDeniedException) when calling the UpdateAssociation operation: User: &lt;user_arn&gt; is not authorized to perform: ssm:DescribeAssociation on resource: &lt;resource_arn&gt;</code> </p> <important> <p>When you update an association, the association immediately runs against the specified targets.</p> </important>"
    },
    "UpdateAssociationStatus": {
      "name": "UpdateAssociationStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAssociationStatusRequest"
      },
      "output": {
        "shape": "UpdateAssociationStatusResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "AssociationDoesNotExist"
        },
        {
          "shape": "StatusUnchanged"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p>Updates the status of the Systems Manager document associated with the specified instance.</p>"
    },
    "UpdateDocument": {
      "name": "UpdateDocument",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDocumentRequest"
      },
      "output": {
        "shape": "UpdateDocumentResult"
      },
      "errors": [
        {
          "shape": "MaxDocumentSizeExceeded"
        },
        {
          "shape": "DocumentVersionLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "DuplicateDocumentContent"
        },
        {
          "shape": "DuplicateDocumentVersionName"
        },
        {
          "shape": "InvalidDocumentContent"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "InvalidDocumentSchemaVersion"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentOperation"
        }
      ],
      "documentation": "<p>Updates one or more values for an SSM document.</p>"
    },
    "UpdateDocumentDefaultVersion": {
      "name": "UpdateDocumentDefaultVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDocumentDefaultVersionRequest"
      },
      "output": {
        "shape": "UpdateDocumentDefaultVersionResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "InvalidDocument"
        },
        {
          "shape": "InvalidDocumentVersion"
        },
        {
          "shape": "InvalidDocumentSchemaVersion"
        }
      ],
      "documentation": "<p>Set the default version of a document. </p>"
    },
    "UpdateMaintenanceWindow": {
      "name": "UpdateMaintenanceWindow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMaintenanceWindowRequest"
      },
      "output": {
        "shape": "UpdateMaintenanceWindowResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Updates an existing maintenance window. Only specified parameters are modified.</p> <note> <p>The value you specify for <code>Duration</code> determines the specific end time for the maintenance window based on the time it begins. No maintenance window tasks are permitted to start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>. For example, if the maintenance window starts at 3 PM, the duration is three hours, and the value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start after 5 PM.</p> </note>"
    },
    "UpdateMaintenanceWindowTarget": {
      "name": "UpdateMaintenanceWindowTarget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMaintenanceWindowTargetRequest"
      },
      "output": {
        "shape": "UpdateMaintenanceWindowTargetResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Modifies the target of an existing maintenance window. You can change the following:</p> <ul> <li> <p>Name</p> </li> <li> <p>Description</p> </li> <li> <p>Owner</p> </li> <li> <p>IDs for an ID target</p> </li> <li> <p>Tags for a Tag target</p> </li> <li> <p>From any supported tag type to another. The three supported tag types are ID target, Tag target, and resource group. For more information, see <a>Target</a>.</p> </li> </ul> <note> <p>If a parameter is null, then the corresponding field is not modified.</p> </note>"
    },
    "UpdateMaintenanceWindowTask": {
      "name": "UpdateMaintenanceWindowTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMaintenanceWindowTaskRequest"
      },
      "output": {
        "shape": "UpdateMaintenanceWindowTaskResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Modifies a task assigned to a maintenance window. You can't change the task type, but you can change the following values:</p> <ul> <li> <p>TaskARN. For example, you can change a RUN_COMMAND task from AWS-RunPowerShellScript to AWS-RunShellScript.</p> </li> <li> <p>ServiceRoleArn</p> </li> <li> <p>TaskInvocationParameters</p> </li> <li> <p>Priority</p> </li> <li> <p>MaxConcurrency</p> </li> <li> <p>MaxErrors</p> </li> </ul> <p>If the value for a parameter in <code>UpdateMaintenanceWindowTask</code> is null, then the corresponding field is not modified. If you set <code>Replace</code> to true, then all fields required by the <a>RegisterTaskWithMaintenanceWindow</a> action are required for this request. Optional fields that aren't specified are set to null.</p> <important> <p>When you update a maintenance window task that has options specified in <code>TaskInvocationParameters</code>, you must provide again all the <code>TaskInvocationParameters</code> values that you want to retain. The values you do not specify again are removed. For example, suppose that when you registered a Run Command task, you specified <code>TaskInvocationParameters</code> values for <code>Comment</code>, <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p> </important>"
    },
    "UpdateManagedInstanceRole": {
      "name": "UpdateManagedInstanceRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateManagedInstanceRoleRequest"
      },
      "output": {
        "shape": "UpdateManagedInstanceRoleResult"
      },
      "errors": [
        {
          "shape": "InvalidInstanceId"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Changes the Amazon Identity and Access Management (IAM) role that is assigned to the on-premises instance or virtual machines (VM). IAM roles are first assigned to these hybrid instances during the activation process. For more information, see <a>CreateActivation</a>.</p>"
    },
    "UpdateOpsItem": {
      "name": "UpdateOpsItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateOpsItemRequest"
      },
      "output": {
        "shape": "UpdateOpsItemResponse"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "OpsItemNotFoundException"
        },
        {
          "shape": "OpsItemAlreadyExistsException"
        },
        {
          "shape": "OpsItemLimitExceededException"
        },
        {
          "shape": "OpsItemInvalidParameterException"
        }
      ],
      "documentation": "<p>Edit or change an OpsItem. You must have permission in AWS Identity and Access Management (IAM) to update an OpsItem. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html\">Getting started with OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">AWS Systems Manager OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
    },
    "UpdatePatchBaseline": {
      "name": "UpdatePatchBaseline",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePatchBaselineRequest"
      },
      "output": {
        "shape": "UpdatePatchBaselineResult"
      },
      "errors": [
        {
          "shape": "DoesNotExistException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Modifies an existing patch baseline. Fields not specified in the request are left unchanged.</p> <note> <p>For information about valid key and value pairs in <code>PatchFilters</code> for each supported operating system type, see <a href=\"http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html\">PatchFilter</a>.</p> </note>"
    },
    "UpdateResourceDataSync": {
      "name": "UpdateResourceDataSync",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateResourceDataSyncRequest"
      },
      "output": {
        "shape": "UpdateResourceDataSyncResult"
      },
      "errors": [
        {
          "shape": "ResourceDataSyncNotFoundException"
        },
        {
          "shape": "ResourceDataSyncInvalidConfigurationException"
        },
        {
          "shape": "ResourceDataSyncConflictException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Update a resource data sync. After you create a resource data sync for a Region, you can't change the account options for that sync. For example, if you create a sync in the us-east-2 (Ohio) Region and you choose the Include only the current account option, you can't edit that sync later and choose the Include all accounts from my AWS Organizations configuration option. Instead, you must delete the first resource data sync, and create a new one.</p> <note> <p>This API action only supports a resource data sync that was created with a SyncFromSource <code>SyncType</code>.</p> </note>"
    },
    "UpdateServiceSetting": {
      "name": "UpdateServiceSetting",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceSettingRequest"
      },
      "output": {
        "shape": "UpdateServiceSettingResult"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ServiceSettingNotFound"
        },
        {
          "shape": "TooManyUpdates"
        }
      ],
      "documentation": "<p> <code>ServiceSetting</code> is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of \"false\". This means the user can't use this feature unless they change the setting to \"true\" and intentionally opt in for a paid feature.</p> <p>Services map a <code>SettingId</code> object to a setting value. AWS services teams define the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>, but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code> permission for the setting. Use the <a>GetServiceSetting</a> API action to view the current value. Or, use the <a>ResetServiceSetting</a> to change the value back to the original value defined by the AWS service team.</p> <p>Update the service setting for the account. </p>"
    }
  },
  "shapes": {
    "Account": {
      "type": "string"
    },
    "AccountId": {
      "type": "string",
      "pattern": "(?i)all|[0-9]{12}"
    },
    "AccountIdList": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      },
      "max": 20
    },
    "AccountSharingInfo": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID where the current document is shared.</p>"
        },
        "SharedDocumentVersion": {
          "shape": "SharedDocumentVersion",
          "documentation": "<p>The version of the current document shared with the account.</p>"
        }
      },
      "documentation": "<p>Information includes the AWS account ID where the current document is shared and the version shared with that account.</p>"
    },
    "AccountSharingInfoList": {
      "type": "list",
      "member": {
        "shape": "AccountSharingInfo"
      },
      "documentation": "<p>A list of of AWS accounts where the current document is shared and the version shared with each account.</p>"
    },
    "Accounts": {
      "type": "list",
      "member": {
        "shape": "Account"
      },
      "max": 50,
      "min": 1
    },
    "Activation": {
      "type": "structure",
      "members": {
        "ActivationId": {
          "shape": "ActivationId",
          "documentation": "<p>The ID created by Systems Manager when you submitted the activation.</p>"
        },
        "Description": {
          "shape": "ActivationDescription",
          "documentation": "<p>A user defined description of the activation.</p>"
        },
        "DefaultInstanceName": {
          "shape": "DefaultInstanceName",
          "documentation": "<p>A name for the managed instance when it is created.</p>"
        },
        "IamRole": {
          "shape": "IamRole",
          "documentation": "<p>The Amazon Identity and Access Management (IAM) role to assign to the managed instance.</p>"
        },
        "RegistrationLimit": {
          "shape": "RegistrationLimit",
          "documentation": "<p>The maximum number of managed instances that can be registered using this activation.</p>"
        },
        "RegistrationsCount": {
          "shape": "RegistrationsCount",
          "documentation": "<p>The number of managed instances already registered with this activation.</p>"
        },
        "ExpirationDate": {
          "shape": "ExpirationDate",
          "documentation": "<p>The date when this activation can no longer be used to register managed instances.</p>"
        },
        "Expired": {
          "shape": "Boolean",
          "documentation": "<p>Whether or not the activation is expired.</p>"
        },
        "CreatedDate": {
          "shape": "CreatedDate",
          "documentation": "<p>The date the activation was created.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags assigned to the activation.</p>"
        }
      },
      "documentation": "<p>An activation registers one or more on-premises servers or virtual machines (VMs) with AWS so that you can configure those servers or VMs using Run Command. A server or VM that has been registered with AWS is called a managed instance.</p>"
    },
    "ActivationCode": {
      "type": "string",
      "max": 250,
      "min": 20
    },
    "ActivationDescription": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "ActivationId": {
      "type": "string",
      "pattern": "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
    },
    "ActivationList": {
      "type": "list",
      "member": {
        "shape": "Activation"
      }
    },
    "AddTagsToResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ResourceId",
        "Tags"
      ],
      "members": {
        "ResourceType": {
          "shape": "ResourceTypeForTagging",
          "documentation": "<p>Specifies the type of resource you are tagging.</p> <note> <p>The ManagedInstance type for this API action is for on-premises managed instances. You must specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.</p> </note>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource ID you want to tag.</p> <p>Use the ID of the resource. Here are some examples:</p> <p>ManagedInstance: mi-012345abcde</p> <p>MaintenanceWindow: mw-012345abcde</p> <p>PatchBaseline: pb-012345abcde</p> <p>For the Document and Parameter values, use the name of the resource.</p> <note> <p>The ManagedInstance type for this API action is only for on-premises managed instances. You must specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.</p> </note>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p> One or more tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string. </p> <important> <p>Do not enter personally identifiable information in this field.</p> </important>"
        }
      }
    },
    "AddTagsToResourceResult": {
      "type": "structure",
      "members": {}
    },
    "AgentErrorCode": {
      "type": "string",
      "max": 10
    },
    "AggregatorSchemaOnly": {
      "type": "boolean"
    },
    "AllowedPattern": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "ApplyOnlyAtCronInterval": {
      "type": "boolean"
    },
    "ApproveAfterDays": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "Association": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance.</p>"
        },
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The ID created by the system when you create an association. An association is a binding between a document and a set of targets with a schedule.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The association version.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of the document used in the association.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The instances targeted by the request to create an association. </p>"
        },
        "LastExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the association was last run.</p>"
        },
        "Overview": {
          "shape": "AssociationOverview",
          "documentation": "<p>Information about the association.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>A cron expression that specifies a schedule when the association runs.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>The association name.</p>"
        }
      },
      "documentation": "<p>Describes an association of a Systems Manager document and an instance.</p>"
    },
    "AssociationComplianceSeverity": {
      "type": "string",
      "enum": [
        "CRITICAL",
        "HIGH",
        "MEDIUM",
        "LOW",
        "UNSPECIFIED"
      ]
    },
    "AssociationDescription": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The association version.</p>"
        },
        "Date": {
          "shape": "DateTime",
          "documentation": "<p>The date when the association was made.</p>"
        },
        "LastUpdateAssociationDate": {
          "shape": "DateTime",
          "documentation": "<p>The date when the association was last updated.</p>"
        },
        "Status": {
          "shape": "AssociationStatus",
          "documentation": "<p>The association status.</p>"
        },
        "Overview": {
          "shape": "AssociationOverview",
          "documentation": "<p>Information about the association.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "AutomationTargetParameterName": {
          "shape": "AutomationTargetParameterName",
          "documentation": "<p>Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>A description of the parameters for a document. </p>"
        },
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The instances targeted by the request. </p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>A cron expression that specifies a schedule when the association runs.</p>"
        },
        "OutputLocation": {
          "shape": "InstanceAssociationOutputLocation",
          "documentation": "<p>An S3 bucket where you want to store the output details of the request.</p>"
        },
        "LastExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the association was last run.</p>"
        },
        "LastSuccessfulExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The last date on which the association was successfully run.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>The association name.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.</p> <p>Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.</p> <p>If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.</p>"
        },
        "ComplianceSeverity": {
          "shape": "AssociationComplianceSeverity",
          "documentation": "<p>The severity level that is assigned to the association.</p>"
        },
        "SyncCompliance": {
          "shape": "AssociationSyncCompliance",
          "documentation": "<p>The mode for generating association compliance. You can specify <code>AUTO</code> or <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is <code>COMPLIANT</code>. If the association execution doesn't run successfully, the association is <code>NON-COMPLIANT</code>.</p> <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter for the <a>PutComplianceItems</a> API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p> <p>By default, all associations use <code>AUTO</code> mode.</p>"
        },
        "ApplyOnlyAtCronInterval": {
          "shape": "ApplyOnlyAtCronInterval",
          "documentation": "<p>By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it.</p>"
        }
      },
      "documentation": "<p>Describes the parameters for a document.</p>"
    },
    "AssociationDescriptionList": {
      "type": "list",
      "member": {
        "shape": "AssociationDescription"
      }
    },
    "AssociationExecution": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The association version.</p>"
        },
        "ExecutionId": {
          "shape": "AssociationExecutionId",
          "documentation": "<p>The execution ID for the association.</p>"
        },
        "Status": {
          "shape": "StatusName",
          "documentation": "<p>The status of the association execution.</p>"
        },
        "DetailedStatus": {
          "shape": "StatusName",
          "documentation": "<p>Detailed status information about the execution.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution started.</p>"
        },
        "LastExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date of the last execution.</p>"
        },
        "ResourceCountByStatus": {
          "shape": "ResourceCountByStatus",
          "documentation": "<p>An aggregate status of the resources in the execution based on the status type.</p>"
        }
      },
      "documentation": "<p>Includes information about the specified association.</p>"
    },
    "AssociationExecutionFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Value",
        "Type"
      ],
      "members": {
        "Key": {
          "shape": "AssociationExecutionFilterKey",
          "documentation": "<p>The key value used in the request.</p>"
        },
        "Value": {
          "shape": "AssociationExecutionFilterValue",
          "documentation": "<p>The value specified for the key.</p>"
        },
        "Type": {
          "shape": "AssociationFilterOperatorType",
          "documentation": "<p>The filter type specified in the request.</p>"
        }
      },
      "documentation": "<p>Filters used in the request.</p>"
    },
    "AssociationExecutionFilterKey": {
      "type": "string",
      "enum": [
        "ExecutionId",
        "Status",
        "CreatedTime"
      ]
    },
    "AssociationExecutionFilterList": {
      "type": "list",
      "member": {
        "shape": "AssociationExecutionFilter"
      },
      "min": 1
    },
    "AssociationExecutionFilterValue": {
      "type": "string",
      "min": 1
    },
    "AssociationExecutionId": {
      "type": "string",
      "pattern": "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
    },
    "AssociationExecutionTarget": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The association version.</p>"
        },
        "ExecutionId": {
          "shape": "AssociationExecutionId",
          "documentation": "<p>The execution ID.</p>"
        },
        "ResourceId": {
          "shape": "AssociationResourceId",
          "documentation": "<p>The resource ID, for example, the instance ID where the association ran.</p>"
        },
        "ResourceType": {
          "shape": "AssociationResourceType",
          "documentation": "<p>The resource type, for example, instance.</p>"
        },
        "Status": {
          "shape": "StatusName",
          "documentation": "<p>The association execution status.</p>"
        },
        "DetailedStatus": {
          "shape": "StatusName",
          "documentation": "<p>Detailed information about the execution status.</p>"
        },
        "LastExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date of the last execution.</p>"
        },
        "OutputSource": {
          "shape": "OutputSource",
          "documentation": "<p>The location where the association details are saved.</p>"
        }
      },
      "documentation": "<p>Includes information about the specified association execution.</p>"
    },
    "AssociationExecutionTargetsFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "AssociationExecutionTargetsFilterKey",
          "documentation": "<p>The key value used in the request.</p>"
        },
        "Value": {
          "shape": "AssociationExecutionTargetsFilterValue",
          "documentation": "<p>The value specified for the key.</p>"
        }
      },
      "documentation": "<p>Filters for the association execution.</p>"
    },
    "AssociationExecutionTargetsFilterKey": {
      "type": "string",
      "enum": [
        "Status",
        "ResourceId",
        "ResourceType"
      ]
    },
    "AssociationExecutionTargetsFilterList": {
      "type": "list",
      "member": {
        "shape": "AssociationExecutionTargetsFilter"
      },
      "min": 1
    },
    "AssociationExecutionTargetsFilterValue": {
      "type": "string",
      "min": 1
    },
    "AssociationExecutionTargetsList": {
      "type": "list",
      "member": {
        "shape": "AssociationExecutionTarget"
      }
    },
    "AssociationExecutionsList": {
      "type": "list",
      "member": {
        "shape": "AssociationExecution"
      }
    },
    "AssociationFilter": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "AssociationFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "value": {
          "shape": "AssociationFilterValue",
          "documentation": "<p>The filter value.</p>"
        }
      },
      "documentation": "<p>Describes a filter.</p>"
    },
    "AssociationFilterKey": {
      "type": "string",
      "enum": [
        "InstanceId",
        "Name",
        "AssociationId",
        "AssociationStatusName",
        "LastExecutedBefore",
        "LastExecutedAfter",
        "AssociationName",
        "ResourceGroupName"
      ]
    },
    "AssociationFilterList": {
      "type": "list",
      "member": {
        "shape": "AssociationFilter"
      },
      "min": 1
    },
    "AssociationFilterOperatorType": {
      "type": "string",
      "enum": [
        "EQUAL",
        "LESS_THAN",
        "GREATER_THAN"
      ]
    },
    "AssociationFilterValue": {
      "type": "string",
      "min": 1
    },
    "AssociationId": {
      "type": "string",
      "pattern": "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
    },
    "AssociationIdList": {
      "type": "list",
      "member": {
        "shape": "AssociationId"
      },
      "max": 10,
      "min": 1
    },
    "AssociationList": {
      "type": "list",
      "member": {
        "shape": "Association"
      }
    },
    "AssociationName": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "AssociationOverview": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusName",
          "documentation": "<p>The status of the association. Status can be: Pending, Success, or Failed.</p>"
        },
        "DetailedStatus": {
          "shape": "StatusName",
          "documentation": "<p>A detailed status of the association.</p>"
        },
        "AssociationStatusAggregatedCount": {
          "shape": "AssociationStatusAggregatedCount",
          "documentation": "<p>Returns the number of targets for the association status. For example, if you created an association with two instances, and one of them was successful, this would return the count of instances by status.</p>"
        }
      },
      "documentation": "<p>Information about the association.</p>"
    },
    "AssociationResourceId": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "AssociationResourceType": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "AssociationStatus": {
      "type": "structure",
      "required": [
        "Date",
        "Name",
        "Message"
      ],
      "members": {
        "Date": {
          "shape": "DateTime",
          "documentation": "<p>The date when the status changed.</p>"
        },
        "Name": {
          "shape": "AssociationStatusName",
          "documentation": "<p>The status.</p>"
        },
        "Message": {
          "shape": "StatusMessage",
          "documentation": "<p>The reason for the status.</p>"
        },
        "AdditionalInfo": {
          "shape": "StatusAdditionalInfo",
          "documentation": "<p>A user-defined string.</p>"
        }
      },
      "documentation": "<p>Describes an association status.</p>"
    },
    "AssociationStatusAggregatedCount": {
      "type": "map",
      "key": {
        "shape": "StatusName"
      },
      "value": {
        "shape": "InstanceCount"
      }
    },
    "AssociationStatusName": {
      "type": "string",
      "enum": [
        "Pending",
        "Success",
        "Failed"
      ]
    },
    "AssociationSyncCompliance": {
      "type": "string",
      "enum": [
        "AUTO",
        "MANUAL"
      ]
    },
    "AssociationVersion": {
      "type": "string",
      "pattern": "([$]LATEST)|([1-9][0-9]*)"
    },
    "AssociationVersionInfo": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The ID created by the system when the association was created.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The association version.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the association version was created.</p>"
        },
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name specified when the association was created.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of a Systems Manager document used when the association version was created.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>Parameters specified when the association version was created.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets specified for the association when the association version was created. </p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>The cron or rate schedule specified for the association when the association version was created.</p>"
        },
        "OutputLocation": {
          "shape": "InstanceAssociationOutputLocation",
          "documentation": "<p>The location in Amazon S3 specified for the association when the association version was created.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>The name specified for the association version when the association version was created.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.</p> <p>Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.</p> <p>If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.</p>"
        },
        "ComplianceSeverity": {
          "shape": "AssociationComplianceSeverity",
          "documentation": "<p>The severity level that is assigned to the association.</p>"
        },
        "SyncCompliance": {
          "shape": "AssociationSyncCompliance",
          "documentation": "<p>The mode for generating association compliance. You can specify <code>AUTO</code> or <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is <code>COMPLIANT</code>. If the association execution doesn't run successfully, the association is <code>NON-COMPLIANT</code>.</p> <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter for the <a>PutComplianceItems</a> API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p> <p>By default, all associations use <code>AUTO</code> mode.</p>"
        },
        "ApplyOnlyAtCronInterval": {
          "shape": "ApplyOnlyAtCronInterval",
          "documentation": "<p>By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it.</p>"
        }
      },
      "documentation": "<p>Information about the association version.</p>"
    },
    "AssociationVersionList": {
      "type": "list",
      "member": {
        "shape": "AssociationVersionInfo"
      },
      "min": 1
    },
    "AttachmentContent": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AttachmentName",
          "documentation": "<p>The name of an attachment.</p>"
        },
        "Size": {
          "shape": "ContentLength",
          "documentation": "<p>The size of an attachment in bytes.</p>"
        },
        "Hash": {
          "shape": "AttachmentHash",
          "documentation": "<p>The cryptographic hash value of the document content.</p>"
        },
        "HashType": {
          "shape": "AttachmentHashType",
          "documentation": "<p>The hash algorithm used to calculate the hash value.</p>"
        },
        "Url": {
          "shape": "AttachmentUrl",
          "documentation": "<p>The URL location of the attachment content.</p>"
        }
      },
      "documentation": "<p>A structure that includes attributes that describe a document attachment.</p>"
    },
    "AttachmentContentList": {
      "type": "list",
      "member": {
        "shape": "AttachmentContent"
      }
    },
    "AttachmentHash": {
      "type": "string",
      "max": 256
    },
    "AttachmentHashType": {
      "type": "string",
      "enum": [
        "Sha256"
      ]
    },
    "AttachmentIdentifier": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "AttachmentInformation": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AttachmentName",
          "documentation": "<p>The name of the attachment.</p>"
        }
      },
      "documentation": "<p>An attribute of an attachment, such as the attachment name.</p>"
    },
    "AttachmentInformationList": {
      "type": "list",
      "member": {
        "shape": "AttachmentInformation"
      }
    },
    "AttachmentName": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "AttachmentUrl": {
      "type": "string"
    },
    "AttachmentsSource": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "AttachmentsSourceKey",
          "documentation": "<p>The key of a key-value pair that identifies the location of an attachment to a document.</p>"
        },
        "Values": {
          "shape": "AttachmentsSourceValues",
          "documentation": "<p>The value of a key-value pair that identifies the location of an attachment to a document. The format for <b>Value</b> depends on the type of key you specify.</p> <ul> <li> <p>For the key <i>SourceUrl</i>, the value is an S3 bucket location. For example:</p> <p> <code>\"Values\": [ \"s3://my-bucket/my-folder\" ]</code> </p> </li> <li> <p>For the key <i>S3FileUrl</i>, the value is a file in an S3 bucket. For example:</p> <p> <code>\"Values\": [ \"s3://my-bucket/my-folder/my-file.py\" ]</code> </p> </li> <li> <p>For the key <i>AttachmentReference</i>, the value is constructed from the name of another SSM document in your account, a version number of that document, and a file attached to that document version that you want to reuse. For example:</p> <p> <code>\"Values\": [ \"MyOtherDocument/3/my-other-file.py\" ]</code> </p> <p>However, if the SSM document is shared with you from another account, the full SSM document ARN must be specified instead of the document name only. For example:</p> <p> <code>\"Values\": [ \"arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py\" ]</code> </p> </li> </ul>"
        },
        "Name": {
          "shape": "AttachmentIdentifier",
          "documentation": "<p>The name of the document attachment file.</p>"
        }
      },
      "documentation": "<p>Identifying information about a document attachment, including the file name and a key-value pair that identifies the location of an attachment to a document.</p>"
    },
    "AttachmentsSourceKey": {
      "type": "string",
      "enum": [
        "SourceUrl",
        "S3FileUrl",
        "AttachmentReference"
      ]
    },
    "AttachmentsSourceList": {
      "type": "list",
      "member": {
        "shape": "AttachmentsSource"
      },
      "max": 20,
      "min": 0
    },
    "AttachmentsSourceValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "AttachmentsSourceValues": {
      "type": "list",
      "member": {
        "shape": "AttachmentsSourceValue"
      },
      "max": 1,
      "min": 1
    },
    "AttributeName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "AttributeValue": {
      "type": "string",
      "max": 4096,
      "min": 0
    },
    "AutomationActionName": {
      "type": "string",
      "pattern": "^aws:[a-zA-Z]{3,25}$"
    },
    "AutomationExecution": {
      "type": "structure",
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The execution ID.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the Automation document used during the execution.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of the document to use during execution.</p>"
        },
        "ExecutionStartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution started.</p>"
        },
        "ExecutionEndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution finished.</p>"
        },
        "AutomationExecutionStatus": {
          "shape": "AutomationExecutionStatus",
          "documentation": "<p>The execution status of the Automation.</p>"
        },
        "StepExecutions": {
          "shape": "StepExecutionList",
          "documentation": "<p>A list of details about the current state of all steps that comprise an execution. An Automation document contains a list of steps that are run in order.</p>"
        },
        "StepExecutionsTruncated": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value that indicates if the response contains the full list of the Automation step executions. If true, use the DescribeAutomationStepExecutions API action to get the full list of step executions.</p>"
        },
        "Parameters": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>The key-value map of execution parameters, which were supplied when calling StartAutomationExecution.</p>"
        },
        "Outputs": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>The list of execution outputs as defined in the automation document.</p>"
        },
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>A message describing why an execution has failed, if the status is set to Failed.</p>"
        },
        "Mode": {
          "shape": "ExecutionMode",
          "documentation": "<p>The automation execution mode.</p>"
        },
        "ParentAutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The AutomationExecutionId of the parent automation.</p>"
        },
        "ExecutedBy": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user who ran the automation.</p>"
        },
        "CurrentStepName": {
          "shape": "String",
          "documentation": "<p>The name of the step that is currently running.</p>"
        },
        "CurrentAction": {
          "shape": "String",
          "documentation": "<p>The action of the step that is currently running.</p>"
        },
        "TargetParameterName": {
          "shape": "AutomationParameterKey",
          "documentation": "<p>The parameter name.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The specified targets.</p>"
        },
        "TargetMaps": {
          "shape": "TargetMaps",
          "documentation": "<p>The specified key-value mapping of document parameters to target resources.</p>"
        },
        "ResolvedTargets": {
          "shape": "ResolvedTargets",
          "documentation": "<p>A list of resolved targets in the rate control execution.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The MaxConcurrency value specified by the user when the execution started.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The MaxErrors value specified by the user when the execution started.</p>"
        },
        "Target": {
          "shape": "String",
          "documentation": "<p>The target of the execution.</p>"
        },
        "TargetLocations": {
          "shape": "TargetLocations",
          "documentation": "<p>The combination of AWS Regions and/or AWS accounts where you want to run the Automation.</p>",
          "box": true
        },
        "ProgressCounters": {
          "shape": "ProgressCounters",
          "documentation": "<p>An aggregate of step execution statuses displayed in the AWS Console for a multi-Region and multi-account Automation execution.</p>"
        }
      },
      "documentation": "<p>Detailed information about the current state of an individual Automation execution.</p>"
    },
    "AutomationExecutionFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "AutomationExecutionFilterKey",
          "documentation": "<p>One or more keys to limit the results. Valid filter keys include the following: DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter.</p>"
        },
        "Values": {
          "shape": "AutomationExecutionFilterValueList",
          "documentation": "<p>The values used to limit the execution information associated with the filter's key.</p>"
        }
      },
      "documentation": "<p>A filter used to match specific automation executions. This is used to limit the scope of Automation execution information returned.</p>"
    },
    "AutomationExecutionFilterKey": {
      "type": "string",
      "enum": [
        "DocumentNamePrefix",
        "ExecutionStatus",
        "ExecutionId",
        "ParentExecutionId",
        "CurrentAction",
        "StartTimeBefore",
        "StartTimeAfter",
        "AutomationType",
        "TagKey"
      ]
    },
    "AutomationExecutionFilterList": {
      "type": "list",
      "member": {
        "shape": "AutomationExecutionFilter"
      },
      "max": 10,
      "min": 1
    },
    "AutomationExecutionFilterValue": {
      "type": "string",
      "max": 150,
      "min": 1
    },
    "AutomationExecutionFilterValueList": {
      "type": "list",
      "member": {
        "shape": "AutomationExecutionFilterValue"
      },
      "max": 10,
      "min": 1
    },
    "AutomationExecutionId": {
      "type": "string",
      "max": 36,
      "min": 36
    },
    "AutomationExecutionMetadata": {
      "type": "structure",
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The execution ID.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the Automation document used during execution.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version used during the execution.</p>"
        },
        "AutomationExecutionStatus": {
          "shape": "AutomationExecutionStatus",
          "documentation": "<p>The status of the execution.</p>"
        },
        "ExecutionStartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution started.</p>"
        },
        "ExecutionEndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution finished. This is not populated if the execution is still in progress.</p>"
        },
        "ExecutedBy": {
          "shape": "String",
          "documentation": "<p>The IAM role ARN of the user who ran the Automation.</p>"
        },
        "LogFile": {
          "shape": "String",
          "documentation": "<p>An S3 bucket where execution information is stored.</p>"
        },
        "Outputs": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>The list of execution outputs as defined in the Automation document.</p>"
        },
        "Mode": {
          "shape": "ExecutionMode",
          "documentation": "<p>The Automation execution mode.</p>"
        },
        "ParentAutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The ExecutionId of the parent Automation.</p>"
        },
        "CurrentStepName": {
          "shape": "String",
          "documentation": "<p>The name of the step that is currently running.</p>"
        },
        "CurrentAction": {
          "shape": "String",
          "documentation": "<p>The action of the step that is currently running.</p>"
        },
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>The list of execution outputs as defined in the Automation document.</p>"
        },
        "TargetParameterName": {
          "shape": "AutomationParameterKey",
          "documentation": "<p>The list of execution outputs as defined in the Automation document.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets defined by the user when starting the Automation.</p>"
        },
        "TargetMaps": {
          "shape": "TargetMaps",
          "documentation": "<p>The specified key-value mapping of document parameters to target resources.</p>"
        },
        "ResolvedTargets": {
          "shape": "ResolvedTargets",
          "documentation": "<p>A list of targets that resolved during the execution.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The MaxConcurrency value specified by the user when starting the Automation.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The MaxErrors value specified by the user when starting the Automation.</p>"
        },
        "Target": {
          "shape": "String",
          "documentation": "<p>The list of execution outputs as defined in the Automation document.</p>"
        },
        "AutomationType": {
          "shape": "AutomationType",
          "documentation": "<p>Use this filter with <a>DescribeAutomationExecutions</a>. Specify either Local or CrossAccount. CrossAccount is an Automation that runs in multiple AWS Regions and accounts. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html\">Running Automation workflows in multiple AWS Regions and accounts</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
        }
      },
      "documentation": "<p>Details about a specific Automation execution.</p>"
    },
    "AutomationExecutionMetadataList": {
      "type": "list",
      "member": {
        "shape": "AutomationExecutionMetadata"
      }
    },
    "AutomationExecutionStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Waiting",
        "Success",
        "TimedOut",
        "Cancelling",
        "Cancelled",
        "Failed"
      ]
    },
    "AutomationParameterKey": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "AutomationParameterMap": {
      "type": "map",
      "key": {
        "shape": "AutomationParameterKey"
      },
      "value": {
        "shape": "AutomationParameterValueList"
      },
      "max": 200,
      "min": 1
    },
    "AutomationParameterValue": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "AutomationParameterValueList": {
      "type": "list",
      "member": {
        "shape": "AutomationParameterValue"
      },
      "max": 10,
      "min": 0
    },
    "AutomationTargetParameterName": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "AutomationType": {
      "type": "string",
      "enum": [
        "CrossAccount",
        "Local"
      ]
    },
    "BaselineDescription": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "BaselineId": {
      "type": "string",
      "max": 128,
      "min": 20,
      "pattern": "^[a-zA-Z0-9_\\-:/]{20,128}$"
    },
    "BaselineName": {
      "type": "string",
      "max": 128,
      "min": 3,
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "BatchErrorMessage": {
      "type": "string"
    },
    "Boolean": {
      "type": "boolean"
    },
    "CalendarNameOrARN": {
      "type": "string"
    },
    "CalendarNameOrARNList": {
      "type": "list",
      "member": {
        "shape": "CalendarNameOrARN"
      }
    },
    "CalendarState": {
      "type": "string",
      "enum": [
        "OPEN",
        "CLOSED"
      ]
    },
    "CancelCommandRequest": {
      "type": "structure",
      "required": [
        "CommandId"
      ],
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>The ID of the command you want to cancel.</p>"
        },
        "InstanceIds": {
          "shape": "InstanceIdList",
          "documentation": "<p>(Optional) A list of instance IDs on which you want to cancel the command. If not provided, the command is canceled on every instance on which it was requested.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CancelCommandResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Whether or not the command was successfully canceled. There is no guarantee that a request can be canceled.</p>"
    },
    "CancelMaintenanceWindowExecutionRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution to stop.</p>"
        }
      }
    },
    "CancelMaintenanceWindowExecutionResult": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that has been stopped.</p>"
        }
      }
    },
    "ClientToken": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "CloudWatchLogGroupName": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "CloudWatchOutputConfig": {
      "type": "structure",
      "members": {
        "CloudWatchLogGroupName": {
          "shape": "CloudWatchLogGroupName",
          "documentation": "<p>The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/<i>SystemsManagerDocumentName</i>.</p>"
        },
        "CloudWatchOutputEnabled": {
          "shape": "CloudWatchOutputEnabled",
          "documentation": "<p>Enables Systems Manager to send command output to CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>Configuration options for sending command output to CloudWatch Logs.</p>"
    },
    "CloudWatchOutputEnabled": {
      "type": "boolean"
    },
    "Command": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>A unique identifier for this command.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document requested for execution.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The SSM document version.</p>"
        },
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>User-specified information about the command, such as a brief description of what the command should do.</p>"
        },
        "ExpiresAfter": {
          "shape": "DateTime",
          "documentation": "<p>If this time is reached and the command has not already started running, it will not run. Calculated based on the ExpiresAfter user input provided as part of the SendCommand API.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameter values to be inserted in the document when running the command.</p>"
        },
        "InstanceIds": {
          "shape": "InstanceIdList",
          "documentation": "<p>The instance IDs against which this command was requested.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call.</p>"
        },
        "RequestedDateTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time the command was requested.</p>"
        },
        "Status": {
          "shape": "CommandStatus",
          "documentation": "<p>The status of the command.</p>"
        },
        "StatusDetails": {
          "shape": "StatusDetails",
          "documentation": "<p>A detailed status of the command execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command statuses</a> in the <i>AWS Systems Manager User Guide</i>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to any instances.</p> </li> <li> <p>In Progress: The command has been sent to at least one instance but has not reached a final state on all instances.</p> </li> <li> <p>Success: The command successfully ran on all invocations. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of Delivery Timed Out. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The value of MaxErrors or more command invocations shows a status of Execution Timed Out. This is a terminal state.</p> </li> <li> <p>Failed: The value of MaxErrors or more command invocations shows a status of Failed. This is a terminal state.</p> </li> <li> <p>Incomplete: The command was attempted on all instances and one or more invocations does not have a value of Success but not enough invocations failed for the status to be Failed. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Rate Exceeded: The number of instances targeted by the command exceeded the account limit for pending invocations. The system has canceled the command before running it on any instance. This is a terminal state.</p> </li> </ul>"
        },
        "OutputS3Region": {
          "shape": "S3Region",
          "documentation": "<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.</p>"
        },
        "OutputS3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of instances that are allowed to run the command at the same time. You can specify a number of instances, such as 10, or a percentage of instances, such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html\">Running commands using Systems Manager Run Command</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed before the system stops sending the command to additional targets. You can specify a number of errors, such as 10, or a percentage or errors, such as 10%. The default value is 0. For more information about how to use MaxErrors, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html\">Running commands using Systems Manager Run Command</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "TargetCount": {
          "shape": "TargetCount",
          "documentation": "<p>The number of targets for the command.</p>"
        },
        "CompletedCount": {
          "shape": "CompletedCount",
          "documentation": "<p>The number of targets for which the command invocation reached a terminal state. Terminal states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or Undeliverable.</p>"
        },
        "ErrorCount": {
          "shape": "ErrorCount",
          "documentation": "<p>The number of targets for which the status is Failed or Execution Timed Out.</p>"
        },
        "DeliveryTimedOutCount": {
          "shape": "DeliveryTimedOutCount",
          "documentation": "<p>The number of targets for which the status is Delivery Timed Out.</p>"
        },
        "ServiceRole": {
          "shape": "ServiceRole",
          "documentation": "<p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes. </p>"
        },
        "NotificationConfig": {
          "shape": "NotificationConfig",
          "documentation": "<p>Configurations for sending notifications about command status changes. </p>"
        },
        "CloudWatchOutputConfig": {
          "shape": "CloudWatchOutputConfig",
          "documentation": "<p>CloudWatch Logs information where you want Systems Manager to send the command output.</p>"
        },
        "TimeoutSeconds": {
          "shape": "TimeoutSeconds",
          "documentation": "<p>The <code>TimeoutSeconds</code> value specified for a command.</p>"
        }
      },
      "documentation": "<p>Describes a command request.</p>"
    },
    "CommandFilter": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "CommandFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "value": {
          "shape": "CommandFilterValue",
          "documentation": "<p>The filter value. Valid values for each filter key are as follows:</p> <ul> <li> <p> <b>InvokedAfter</b>: Specify a timestamp to limit your results. For example, specify <code>2018-07-07T00:00:00Z</code> to see a list of command executions occurring July 7, 2018, and later.</p> </li> <li> <p> <b>InvokedBefore</b>: Specify a timestamp to limit your results. For example, specify <code>2018-07-07T00:00:00Z</code> to see a list of command executions from before July 7, 2018.</p> </li> <li> <p> <b>Status</b>: Specify a valid command status to see a list of all command executions with that status. Status values you can specify include:</p> <ul> <li> <p> <code>Pending</code> </p> </li> <li> <p> <code>InProgress</code> </p> </li> <li> <p> <code>Success</code> </p> </li> <li> <p> <code>Cancelled</code> </p> </li> <li> <p> <code>Failed</code> </p> </li> <li> <p> <code>TimedOut</code> </p> </li> <li> <p> <code>Cancelling</code> </p> </li> </ul> </li> <li> <p> <b>DocumentName</b>: Specify name of the SSM document for which you want to see command execution results. For example, specify <code>AWS-RunPatchBaseline</code> to see command executions that used this SSM document to perform security patching operations on instances. </p> </li> <li> <p> <b>ExecutionStage</b>: Specify one of the following values:</p> <ul> <li> <p> <code>Executing</code>: Returns a list of command executions that are currently still running.</p> </li> <li> <p> <code>Complete</code>: Returns a list of command executions that have already completed. </p> </li> </ul> </li> </ul>"
        }
      },
      "documentation": "<p>Describes a command filter.</p> <note> <p>An instance ID can't be specified when a command status is <code>Pending</code> because the command hasn't run on the instance yet.</p> </note>"
    },
    "CommandFilterKey": {
      "type": "string",
      "enum": [
        "InvokedAfter",
        "InvokedBefore",
        "Status",
        "ExecutionStage",
        "DocumentName"
      ]
    },
    "CommandFilterList": {
      "type": "list",
      "member": {
        "shape": "CommandFilter"
      },
      "max": 5,
      "min": 1
    },
    "CommandFilterValue": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "CommandId": {
      "type": "string",
      "max": 36,
      "min": 36
    },
    "CommandInvocation": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>The command against which this invocation was requested.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID in which this invocation was requested.</p>"
        },
        "InstanceName": {
          "shape": "InstanceTagName",
          "documentation": "<p>The name of the invocation target. For EC2 instances this is the value for the aws:Name tag. For on-premises instances, this is the name of the instance.</p>"
        },
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>User-specified information about the command, such as a brief description of what the command should do.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The document name that was requested for execution.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The SSM document version.</p>"
        },
        "RequestedDateTime": {
          "shape": "DateTime",
          "documentation": "<p>The time and date the request was sent to this instance.</p>"
        },
        "Status": {
          "shape": "CommandInvocationStatus",
          "documentation": "<p>Whether or not the invocation succeeded, failed, or is pending.</p>"
        },
        "StatusDetails": {
          "shape": "StatusDetails",
          "documentation": "<p>A detailed status of the command execution for each invocation (each instance targeted by the command). StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command statuses</a> in the <i>AWS Systems Manager User Guide</i>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>"
        },
        "TraceOutput": {
          "shape": "InvocationTraceOutput",
          "documentation": "<p> Gets the trace output sent by the agent. </p>"
        },
        "StandardOutputUrl": {
          "shape": "Url",
          "documentation": "<p>The URL to the plugin's StdOut file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardOutputUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.</p>"
        },
        "StandardErrorUrl": {
          "shape": "Url",
          "documentation": "<p>The URL to the plugin's StdErr file in Amazon S3, if the S3 bucket was defined for the parent command. For an invocation, StandardErrorUrl is populated if there is just one plugin defined for the command, and the S3 bucket was defined for the command.</p>"
        },
        "CommandPlugins": {
          "shape": "CommandPluginList"
        },
        "ServiceRole": {
          "shape": "ServiceRole",
          "documentation": "<p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes on a per instance basis.</p>"
        },
        "NotificationConfig": {
          "shape": "NotificationConfig",
          "documentation": "<p>Configurations for sending notifications about command status changes on a per instance basis.</p>"
        },
        "CloudWatchOutputConfig": {
          "shape": "CloudWatchOutputConfig",
          "documentation": "<p>CloudWatch Logs information where you want Systems Manager to send the command output.</p>"
        }
      },
      "documentation": "<p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you ran. </p>"
    },
    "CommandInvocationList": {
      "type": "list",
      "member": {
        "shape": "CommandInvocation"
      }
    },
    "CommandInvocationStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Delayed",
        "Success",
        "Cancelled",
        "TimedOut",
        "Failed",
        "Cancelling"
      ]
    },
    "CommandList": {
      "type": "list",
      "member": {
        "shape": "Command"
      }
    },
    "CommandMaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "CommandPlugin": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "CommandPluginName",
          "documentation": "<p>The name of the plugin. Must be one of the following: aws:updateAgent, aws:domainjoin, aws:applications, aws:runPowerShellScript, aws:psmodule, aws:cloudWatch, aws:runShellScript, or aws:updateSSMAgent. </p>"
        },
        "Status": {
          "shape": "CommandPluginStatus",
          "documentation": "<p>The status of this plugin. You can run a document with multiple plugins.</p>"
        },
        "StatusDetails": {
          "shape": "StatusDetails",
          "documentation": "<p>A detailed status of the plugin execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command statuses</a> in the <i>AWS Systems Manager User Guide</i>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist, or it might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit, and they don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>"
        },
        "ResponseCode": {
          "shape": "ResponseCode",
          "documentation": "<p>A numeric response code generated after running the plugin. </p>"
        },
        "ResponseStartDateTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the plugin started running. </p>"
        },
        "ResponseFinishDateTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the plugin stopped running. Could stop prematurely if, for example, a cancel command was sent. </p>"
        },
        "Output": {
          "shape": "CommandPluginOutput",
          "documentation": "<p>Output of the plugin execution.</p>"
        },
        "StandardOutputUrl": {
          "shape": "Url",
          "documentation": "<p>The URL for the complete text written by the plugin to stdout in Amazon S3. If the S3 bucket for the command was not specified, then this string is empty.</p>"
        },
        "StandardErrorUrl": {
          "shape": "Url",
          "documentation": "<p>The URL for the complete text written by the plugin to stderr. If execution is not yet complete, then this string is empty.</p>"
        },
        "OutputS3Region": {
          "shape": "S3Region",
          "documentation": "<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the S3 bucket region.</p>"
        },
        "OutputS3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the S3 bucket;</p> <p>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the S3 bucket;</p> <p>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>"
        }
      },
      "documentation": "<p>Describes plugin details.</p>"
    },
    "CommandPluginList": {
      "type": "list",
      "member": {
        "shape": "CommandPlugin"
      }
    },
    "CommandPluginName": {
      "type": "string",
      "min": 4
    },
    "CommandPluginOutput": {
      "type": "string",
      "max": 2500
    },
    "CommandPluginStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Success",
        "TimedOut",
        "Cancelled",
        "Failed"
      ]
    },
    "CommandStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Success",
        "Cancelled",
        "Failed",
        "TimedOut",
        "Cancelling"
      ]
    },
    "Comment": {
      "type": "string",
      "max": 100
    },
    "CompletedCount": {
      "type": "integer"
    },
    "ComplianceExecutionId": {
      "type": "string",
      "max": 100
    },
    "ComplianceExecutionSummary": {
      "type": "structure",
      "required": [
        "ExecutionTime"
      ],
      "members": {
        "ExecutionTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution ran as a datetime object that is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>"
        },
        "ExecutionId": {
          "shape": "ComplianceExecutionId",
          "documentation": "<p>An ID created by the system when <code>PutComplianceItems</code> was called. For example, <code>CommandID</code> is a valid execution ID. You can use this ID in subsequent calls.</p>"
        },
        "ExecutionType": {
          "shape": "ComplianceExecutionType",
          "documentation": "<p>The type of execution. For example, <code>Command</code> is a valid execution type.</p>"
        }
      },
      "documentation": "<p>A summary of the call execution that includes an execution ID, the type of execution (for example, <code>Command</code>), and the date/time of the execution using a datetime object that is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>"
    },
    "ComplianceExecutionType": {
      "type": "string",
      "max": 50
    },
    "ComplianceFilterValue": {
      "type": "string"
    },
    "ComplianceItem": {
      "type": "structure",
      "members": {
        "ComplianceType": {
          "shape": "ComplianceTypeName",
          "documentation": "<p>The compliance type. For example, Association (for a State Manager association), Patch, or Custom:<code>string</code> are all valid compliance types.</p>"
        },
        "ResourceType": {
          "shape": "ComplianceResourceType",
          "documentation": "<p>The type of resource. <code>ManagedInstance</code> is currently the only supported resource type.</p>"
        },
        "ResourceId": {
          "shape": "ComplianceResourceId",
          "documentation": "<p>An ID for the resource. For a managed instance, this is the instance ID.</p>"
        },
        "Id": {
          "shape": "ComplianceItemId",
          "documentation": "<p>An ID for the compliance item. For example, if the compliance item is a Windows patch, the ID could be the number of the KB article; for example: KB4010320.</p>"
        },
        "Title": {
          "shape": "ComplianceItemTitle",
          "documentation": "<p>A title for the compliance item. For example, if the compliance item is a Windows patch, the title could be the title of the KB article for the patch; for example: Security Update for Active Directory Federation Services.</p>"
        },
        "Status": {
          "shape": "ComplianceStatus",
          "documentation": "<p>The status of the compliance item. An item is either COMPLIANT or NON_COMPLIANT.</p>"
        },
        "Severity": {
          "shape": "ComplianceSeverity",
          "documentation": "<p>The severity of the compliance status. Severity can be one of the following: Critical, High, Medium, Low, Informational, Unspecified.</p>"
        },
        "ExecutionSummary": {
          "shape": "ComplianceExecutionSummary",
          "documentation": "<p>A summary for the compliance item. The summary includes an execution ID, the execution type (for example, command), and the execution time.</p>"
        },
        "Details": {
          "shape": "ComplianceItemDetails",
          "documentation": "<p>A \"Key\": \"Value\" tag combination for the compliance item.</p>"
        }
      },
      "documentation": "<p>Information about the compliance as defined by the resource type. For example, for a patch resource type, <code>Items</code> includes information about the PatchSeverity, Classification, and so on.</p>"
    },
    "ComplianceItemContentHash": {
      "type": "string",
      "max": 256
    },
    "ComplianceItemDetails": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "ComplianceItemEntry": {
      "type": "structure",
      "required": [
        "Severity",
        "Status"
      ],
      "members": {
        "Id": {
          "shape": "ComplianceItemId",
          "documentation": "<p>The compliance item ID. For example, if the compliance item is a Windows patch, the ID could be the number of the KB article.</p>"
        },
        "Title": {
          "shape": "ComplianceItemTitle",
          "documentation": "<p>The title of the compliance item. For example, if the compliance item is a Windows patch, the title could be the title of the KB article for the patch; for example: Security Update for Active Directory Federation Services. </p>"
        },
        "Severity": {
          "shape": "ComplianceSeverity",
          "documentation": "<p>The severity of the compliance status. Severity can be one of the following: Critical, High, Medium, Low, Informational, Unspecified.</p>"
        },
        "Status": {
          "shape": "ComplianceStatus",
          "documentation": "<p>The status of the compliance item. An item is either COMPLIANT or NON_COMPLIANT.</p>"
        },
        "Details": {
          "shape": "ComplianceItemDetails",
          "documentation": "<p>A \"Key\": \"Value\" tag combination for the compliance item.</p>"
        }
      },
      "documentation": "<p>Information about a compliance item.</p>"
    },
    "ComplianceItemEntryList": {
      "type": "list",
      "member": {
        "shape": "ComplianceItemEntry"
      },
      "max": 10000,
      "min": 0
    },
    "ComplianceItemId": {
      "type": "string"
    },
    "ComplianceItemList": {
      "type": "list",
      "member": {
        "shape": "ComplianceItem"
      }
    },
    "ComplianceItemTitle": {
      "type": "string",
      "max": 500
    },
    "ComplianceQueryOperatorType": {
      "type": "string",
      "enum": [
        "EQUAL",
        "NOT_EQUAL",
        "BEGIN_WITH",
        "LESS_THAN",
        "GREATER_THAN"
      ]
    },
    "ComplianceResourceId": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ComplianceResourceIdList": {
      "type": "list",
      "member": {
        "shape": "ComplianceResourceId"
      },
      "min": 1
    },
    "ComplianceResourceType": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "ComplianceResourceTypeList": {
      "type": "list",
      "member": {
        "shape": "ComplianceResourceType"
      },
      "min": 1
    },
    "ComplianceSeverity": {
      "type": "string",
      "enum": [
        "CRITICAL",
        "HIGH",
        "MEDIUM",
        "LOW",
        "INFORMATIONAL",
        "UNSPECIFIED"
      ]
    },
    "ComplianceStatus": {
      "type": "string",
      "enum": [
        "COMPLIANT",
        "NON_COMPLIANT"
      ]
    },
    "ComplianceStringFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ComplianceStringFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "Values": {
          "shape": "ComplianceStringFilterValueList",
          "documentation": "<p>The value for which to search.</p>"
        },
        "Type": {
          "shape": "ComplianceQueryOperatorType",
          "documentation": "<p>The type of comparison that should be performed for the value: Equal, NotEqual, BeginWith, LessThan, or GreaterThan.</p>"
        }
      },
      "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    },
    "ComplianceStringFilterKey": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "ComplianceStringFilterList": {
      "type": "list",
      "member": {
        "shape": "ComplianceStringFilter"
      }
    },
    "ComplianceStringFilterValueList": {
      "type": "list",
      "member": {
        "shape": "ComplianceFilterValue"
      },
      "max": 20,
      "min": 1
    },
    "ComplianceSummaryCount": {
      "type": "integer"
    },
    "ComplianceSummaryItem": {
      "type": "structure",
      "members": {
        "ComplianceType": {
          "shape": "ComplianceTypeName",
          "documentation": "<p>The type of compliance item. For example, the compliance type can be Association, Patch, or Custom:string.</p>"
        },
        "CompliantSummary": {
          "shape": "CompliantSummary",
          "documentation": "<p>A list of COMPLIANT items for the specified compliance type.</p>"
        },
        "NonCompliantSummary": {
          "shape": "NonCompliantSummary",
          "documentation": "<p>A list of NON_COMPLIANT items for the specified compliance type.</p>"
        }
      },
      "documentation": "<p>A summary of compliance information by compliance type.</p>"
    },
    "ComplianceSummaryItemList": {
      "type": "list",
      "member": {
        "shape": "ComplianceSummaryItem"
      }
    },
    "ComplianceTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[A-Za-z0-9_\\-]\\w+|Custom:[a-zA-Z0-9_\\-]\\w+"
    },
    "ComplianceUploadType": {
      "type": "string",
      "enum": [
        "COMPLETE",
        "PARTIAL"
      ]
    },
    "CompliantSummary": {
      "type": "structure",
      "members": {
        "CompliantCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources that are compliant.</p>"
        },
        "SeveritySummary": {
          "shape": "SeveritySummary",
          "documentation": "<p>A summary of the compliance severity by compliance type.</p>"
        }
      },
      "documentation": "<p>A summary of resources that are compliant. The summary is organized according to the resource count for each compliance type.</p>"
    },
    "ComputerName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "ConnectionStatus": {
      "type": "string",
      "enum": [
        "Connected",
        "NotConnected"
      ]
    },
    "ContentLength": {
      "type": "long"
    },
    "CreateActivationRequest": {
      "type": "structure",
      "required": [
        "IamRole"
      ],
      "members": {
        "Description": {
          "shape": "ActivationDescription",
          "documentation": "<p>A user-defined description of the resource that you want to register with Systems Manager. </p> <important> <p>Do not enter personally identifiable information in this field.</p> </important>"
        },
        "DefaultInstanceName": {
          "shape": "DefaultInstanceName",
          "documentation": "<p>The name of the registered, managed instance as it will appear in the Systems Manager console or when you use the AWS command line tools to list Systems Manager resources.</p> <important> <p>Do not enter personally identifiable information in this field.</p> </important>"
        },
        "IamRole": {
          "shape": "IamRole",
          "documentation": "<p>The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. This IAM role must provide AssumeRole permissions for the Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html\">Create an IAM service role for a hybrid environment</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "RegistrationLimit": {
          "shape": "RegistrationLimit",
          "documentation": "<p>Specify the maximum number of managed instances you want to register. The default value is 1 instance.</p>",
          "box": true
        },
        "ExpirationDate": {
          "shape": "ExpirationDate",
          "documentation": "<p>The date by which this activation request should expire. The default value is 24 hours.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an activation to identify which servers or virtual machines (VMs) in your on-premises environment you intend to activate. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> <li> <p> <code>Key=Environment,Value=Production</code> </p> </li> </ul> <important> <p>When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID and code. When you specify the activation ID and code, tags assigned to the activation are automatically applied to the on-premises servers or VMs.</p> </important> <p>You can't add tags to or delete tags from an existing activation. You can tag your on-premises servers and VMs after they connect to Systems Manager for the first time and are assigned a managed instance ID. This means they are listed in the AWS Systems Manager console with an ID that is prefixed with \"mi-\". For information about how to add tags to your managed instances, see <a>AddTagsToResource</a>. For information about how to remove tags from your managed instances, see <a>RemoveTagsFromResource</a>.</p>"
        }
      }
    },
    "CreateActivationResult": {
      "type": "structure",
      "members": {
        "ActivationId": {
          "shape": "ActivationId",
          "documentation": "<p>The ID number generated by the system when it processed the activation. The activation ID functions like a user name.</p>"
        },
        "ActivationCode": {
          "shape": "ActivationCode",
          "documentation": "<p>The code the system generates when it processes the activation. The activation code functions like a password to validate the activation ID. </p>"
        }
      }
    },
    "CreateAssociationBatchRequest": {
      "type": "structure",
      "required": [
        "Entries"
      ],
      "members": {
        "Entries": {
          "shape": "CreateAssociationBatchRequestEntries",
          "documentation": "<p>One or more associations.</p>"
        }
      }
    },
    "CreateAssociationBatchRequestEntries": {
      "type": "list",
      "member": {
        "shape": "CreateAssociationBatchRequestEntry"
      },
      "min": 1
    },
    "CreateAssociationBatchRequestEntry": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents.</p> <p>You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account.</p> <p>For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format:</p> <p> <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i> </code> </p> <p>For example:</p> <p> <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code> </p> <p>For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or <code>My-Document</code>.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance. </p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>A description of the parameters for a document. </p>"
        },
        "AutomationTargetParameterName": {
          "shape": "AutomationTargetParameterName",
          "documentation": "<p>Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The instances targeted by the request.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>A cron expression that specifies a schedule when the association runs.</p>"
        },
        "OutputLocation": {
          "shape": "InstanceAssociationOutputLocation",
          "documentation": "<p>An S3 bucket where you want to store the results of this request.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>Specify a descriptive name for the association.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.</p> <p>Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.</p> <p>If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.</p>"
        },
        "ComplianceSeverity": {
          "shape": "AssociationComplianceSeverity",
          "documentation": "<p>The severity level to assign to the association.</p>"
        },
        "SyncCompliance": {
          "shape": "AssociationSyncCompliance",
          "documentation": "<p>The mode for generating association compliance. You can specify <code>AUTO</code> or <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is <code>COMPLIANT</code>. If the association execution doesn't run successfully, the association is <code>NON-COMPLIANT</code>. </p> <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter for the <a>PutComplianceItems</a> API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p> <p>By default, all associations use <code>AUTO</code> mode.</p>"
        },
        "ApplyOnlyAtCronInterval": {
          "shape": "ApplyOnlyAtCronInterval",
          "documentation": "<p>By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it.</p>"
        }
      },
      "documentation": "<p>Describes the association of a Systems Manager SSM document and an instance.</p>"
    },
    "CreateAssociationBatchResult": {
      "type": "structure",
      "members": {
        "Successful": {
          "shape": "AssociationDescriptionList",
          "documentation": "<p>Information about the associations that succeeded.</p>"
        },
        "Failed": {
          "shape": "FailedCreateAssociationList",
          "documentation": "<p>Information about the associations that failed.</p>"
        }
      }
    },
    "CreateAssociationRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents.</p> <p>You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account.</p> <p>For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format:</p> <p> <code>arn:<i>partition</i>:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i> </code> </p> <p>For example:</p> <p> <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code> </p> <p>For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or <code>My-Document</code>.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version you want to associate with the target(s). Can be a specific version or the default version.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID.</p> <note> <p> <code>InstanceId</code> has been deprecated. To specify an instance ID for an association, use the <code>Targets</code> parameter. Requests that include the parameter <code>InstanceID</code> with SSM documents that use schema version 2.0 or later will fail. In addition, if you use the parameter <code>InstanceId</code>, you cannot use the parameters <code>AssociationName</code>, <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>, <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you must use the <code>Targets</code> parameter.</p> </note>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameters for the runtime configuration of the document.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets for the association. You can target instances by using tags, AWS Resource Groups, all instances in an AWS account, or individual instance IDs. For more information about choosing targets for an association, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html\">Using targets and rate controls with State Manager associations</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>A cron expression when the association will be applied to the target(s).</p>"
        },
        "OutputLocation": {
          "shape": "InstanceAssociationOutputLocation",
          "documentation": "<p>An S3 bucket where you want to store the output details of the request.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>Specify a descriptive name for the association.</p>"
        },
        "AutomationTargetParameterName": {
          "shape": "AutomationTargetParameterName",
          "documentation": "<p>Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.</p> <p>Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.</p> <p>If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.</p>"
        },
        "ComplianceSeverity": {
          "shape": "AssociationComplianceSeverity",
          "documentation": "<p>The severity level to assign to the association.</p>"
        },
        "SyncCompliance": {
          "shape": "AssociationSyncCompliance",
          "documentation": "<p>The mode for generating association compliance. You can specify <code>AUTO</code> or <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is <code>COMPLIANT</code>. If the association execution doesn't run successfully, the association is <code>NON-COMPLIANT</code>.</p> <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter for the <a>PutComplianceItems</a> API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p> <p>By default, all associations use <code>AUTO</code> mode.</p>"
        },
        "ApplyOnlyAtCronInterval": {
          "shape": "ApplyOnlyAtCronInterval",
          "documentation": "<p>By default, when you create a new associations, the system runs it immediately after it is created and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you create it.</p>"
        }
      }
    },
    "CreateAssociationResult": {
      "type": "structure",
      "members": {
        "AssociationDescription": {
          "shape": "AssociationDescription",
          "documentation": "<p>Information about the association.</p>"
        }
      }
    },
    "CreateDocumentRequest": {
      "type": "structure",
      "required": [
        "Content",
        "Name"
      ],
      "members": {
        "Content": {
          "shape": "DocumentContent",
          "documentation": "<p>The content for the new SSM document in JSON or YAML format. We recommend storing the contents for your new document in an external JSON or YAML file and referencing the file in a command.</p> <p>For examples, see the following topics in the <i>AWS Systems Manager User Guide</i>.</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html\">Create an SSM document (AWS API)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html\">Create an SSM document (AWS CLI)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html\">Create an SSM document (API)</a> </p> </li> </ul>"
        },
        "Requires": {
          "shape": "DocumentRequiresList",
          "documentation": "<p>A list of SSM documents required by a document. This parameter is used exclusively by AWS AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also specify a required document for validation purposes. In this case, an <code>ApplicationConfiguration</code> document requires an <code>ApplicationConfigurationSchema</code> document for validation purposes. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html\">AWS AppConfig</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "Attachments": {
          "shape": "AttachmentsSourceList",
          "documentation": "<p>A list of key and value pairs that describe attachments to a version of a document.</p>"
        },
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>A name for the Systems Manager document.</p> <important> <p>You can't use the following strings as document name prefixes. These are reserved by AWS for use as document name prefixes:</p> <ul> <li> <p> <code>aws-</code> </p> </li> <li> <p> <code>amazon</code> </p> </li> <li> <p> <code>amzn</code> </p> </li> </ul> </important>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>An optional field specifying the version of the artifact you are creating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        },
        "DocumentType": {
          "shape": "DocumentType",
          "documentation": "<p>The type of document to create.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>Specify the document format for the request. The document format can be JSON, YAML, or TEXT. JSON is the default format.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS resource and property types reference</a> in the <i>AWS CloudFormation User Guide</i>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an SSM document to identify the types of targets or the environment where it will run. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> <li> <p> <code>Key=Environment,Value=Production</code> </p> </li> </ul> <note> <p>To add tags to an existing SSM document, use the <a>AddTagsToResource</a> action.</p> </note>"
        }
      }
    },
    "CreateDocumentResult": {
      "type": "structure",
      "members": {
        "DocumentDescription": {
          "shape": "DocumentDescription",
          "documentation": "<p>Information about the Systems Manager document.</p>"
        }
      }
    },
    "CreateMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Schedule",
        "Duration",
        "Cutoff",
        "AllowUnassociatedTargets"
      ],
      "members": {
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description for the maintenance window. We recommend specifying a description to help you organize your maintenance windows. </p>"
        },
        "StartDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become active. StartDate allows you to delay activation of the maintenance window until the specified future date.</p>"
        },
        "EndDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.</p>"
        },
        "Schedule": {
          "shape": "MaintenanceWindowSchedule",
          "documentation": "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
        },
        "ScheduleTimezone": {
          "shape": "MaintenanceWindowTimezone",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone Database</a> on the IANA website.</p>"
        },
        "ScheduleOffset": {
          "shape": "MaintenanceWindowOffset",
          "documentation": "<p>The number of days to wait after the date and time specified by a CRON expression before running the maintenance window.</p> <p>For example, the following cron expression schedules a maintenance window to run on the third Tuesday of every month at 11:30 PM.</p> <p> <code>cron(0 30 23 ? * TUE#3 *)</code> </p> <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days later.</p>",
          "box": true
        },
        "Duration": {
          "shape": "MaintenanceWindowDurationHours",
          "documentation": "<p>The duration of the maintenance window in hours.</p>"
        },
        "Cutoff": {
          "shape": "MaintenanceWindowCutoff",
          "documentation": "<p>The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.</p>"
        },
        "AllowUnassociatedTargets": {
          "shape": "MaintenanceWindowAllowUnassociatedTargets",
          "documentation": "<p>Enables a maintenance window task to run on managed instances, even if you have not registered those instances as targets. If enabled, then you must specify the unregistered instances (by instance ID) when you register a task with the maintenance window.</p> <p>If you don't enable this option, then you must specify previously-registered targets when you register a task with the maintenance window.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>User-provided idempotency token.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a maintenance window to identify the type of tasks it will run, the types of targets, and the environment it will run in. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=TaskType,Value=AgentUpdate</code> </p> </li> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> <li> <p> <code>Key=Environment,Value=Production</code> </p> </li> </ul> <note> <p>To add tags to an existing maintenance window, use the <a>AddTagsToResource</a> action.</p> </note>"
        }
      }
    },
    "CreateMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the created maintenance window.</p>"
        }
      }
    },
    "CreateOpsItemRequest": {
      "type": "structure",
      "required": [
        "Description",
        "Source",
        "Title"
      ],
      "members": {
        "Description": {
          "shape": "OpsItemDescription",
          "documentation": "<p>Information about the OpsItem. </p>"
        },
        "OperationalData": {
          "shape": "OpsItemOperationalData",
          "documentation": "<p>Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB.</p> <important> <p>Operational data keys <i>can't</i> begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.</p> </important> <p>You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the <a>DescribeOpsItems</a> API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the <a>GetOpsItem</a> API action).</p> <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in the request. Use the <code>/aws/automations</code> key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "Notifications": {
          "shape": "OpsItemNotifications",
          "documentation": "<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.</p>"
        },
        "Priority": {
          "shape": "OpsItemPriority",
          "documentation": "<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>"
        },
        "RelatedOpsItems": {
          "shape": "RelatedOpsItems",
          "documentation": "<p>One or more OpsItems that share something in common with the current OpsItems. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.</p>"
        },
        "Source": {
          "shape": "OpsItemSource",
          "documentation": "<p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager.</p> <note> <p>The source name can't contain the following strings: aws, amazon, and amzn. </p> </note>"
        },
        "Title": {
          "shape": "OpsItemTitle",
          "documentation": "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. You can restrict access to OpsItems by using an inline IAM policy that specifies tags. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html#OpsCenter-getting-started-user-permissions\">Getting started with OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>Tags use a key-value pair. For example:</p> <p> <code>Key=Department,Value=Finance</code> </p> <note> <p>To add tags to an existing OpsItem, use the <a>AddTagsToResource</a> action.</p> </note>"
        },
        "Category": {
          "shape": "OpsItemCategory",
          "documentation": "<p>Specify a category to assign to an OpsItem. </p>"
        },
        "Severity": {
          "shape": "OpsItemSeverity",
          "documentation": "<p>Specify a severity to assign to an OpsItem.</p>"
        }
      }
    },
    "CreateOpsItemResponse": {
      "type": "structure",
      "members": {
        "OpsItemId": {
          "shape": "String",
          "documentation": "<p>The ID of the OpsItem.</p>"
        }
      }
    },
    "CreatePatchBaselineRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Defines the operating system the patch baseline applies to. The Default value is WINDOWS.</p>"
        },
        "Name": {
          "shape": "BaselineName",
          "documentation": "<p>The name of the patch baseline.</p>"
        },
        "GlobalFilters": {
          "shape": "PatchFilterGroup",
          "documentation": "<p>A set of global filters used to include patches in the baseline.</p>"
        },
        "ApprovalRules": {
          "shape": "PatchRuleGroup",
          "documentation": "<p>A set of rules used to include patches in the baseline.</p>"
        },
        "ApprovedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly approved patches for the baseline.</p> <p>For information about accepted formats for lists of approved patches and rejected patches, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "ApprovedPatchesComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>Defines the compliance level for approved patches. This means that if an approved patch is reported as missing, this is the severity of the compliance violation. The default value is UNSPECIFIED.</p>"
        },
        "ApprovedPatchesEnableNonSecurity": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.</p>",
          "box": true
        },
        "RejectedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly rejected patches for the baseline.</p> <p>For information about accepted formats for lists of approved patches and rejected patches, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "RejectedPatchesAction": {
          "shape": "PatchAction",
          "documentation": "<p>The action for Patch Manager to take on patches included in the RejectedPackages list.</p> <ul> <li> <p> <b>ALLOW_AS_DEPENDENCY</b>: A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as <i>InstalledOther</i>. This is the default action if no option is specified.</p> </li> <li> <p> <b>BLOCK</b>: Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as <i>InstalledRejected</i>.</p> </li> </ul>"
        },
        "Description": {
          "shape": "BaselineDescription",
          "documentation": "<p>A description of the patch baseline.</p>"
        },
        "Sources": {
          "shape": "PatchSourceList",
          "documentation": "<p>Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>User-provided idempotency token.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a patch baseline to identify the severity level of patches it specifies and the operating system family it applies to. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=PatchSeverity,Value=Critical</code> </p> </li> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> </ul> <note> <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a> action.</p> </note>"
        }
      }
    },
    "CreatePatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the created patch baseline.</p>"
        }
      }
    },
    "CreateResourceDataSyncRequest": {
      "type": "structure",
      "required": [
        "SyncName"
      ],
      "members": {
        "SyncName": {
          "shape": "ResourceDataSyncName",
          "documentation": "<p>A name for the configuration.</p>"
        },
        "S3Destination": {
          "shape": "ResourceDataSyncS3Destination",
          "documentation": "<p>Amazon S3 configuration details for the sync. This parameter is required if the <code>SyncType</code> value is SyncToDestination.</p>"
        },
        "SyncType": {
          "shape": "ResourceDataSyncType",
          "documentation": "<p>Specify <code>SyncToDestination</code> to create a resource data sync that synchronizes data to an S3 bucket for Inventory. If you specify <code>SyncToDestination</code>, you must provide a value for <code>S3Destination</code>. Specify <code>SyncFromSource</code> to synchronize data from a single account and multiple Regions, or multiple AWS accounts and Regions, as listed in AWS Organizations for Explorer. If you specify <code>SyncFromSource</code>, you must provide a value for <code>SyncSource</code>. The default value is <code>SyncToDestination</code>.</p>"
        },
        "SyncSource": {
          "shape": "ResourceDataSyncSource",
          "documentation": "<p>Specify information about the data sources to synchronize. This parameter is required if the <code>SyncType</code> value is SyncFromSource.</p>"
        }
      }
    },
    "CreateResourceDataSyncResult": {
      "type": "structure",
      "members": {}
    },
    "CreatedDate": {
      "type": "timestamp"
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DefaultBaseline": {
      "type": "boolean"
    },
    "DefaultInstanceName": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "DeleteActivationRequest": {
      "type": "structure",
      "required": [
        "ActivationId"
      ],
      "members": {
        "ActivationId": {
          "shape": "ActivationId",
          "documentation": "<p>The ID of the activation that you want to delete.</p>"
        }
      }
    },
    "DeleteActivationResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteAssociationRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance.</p>"
        },
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID that you want to delete.</p>"
        }
      }
    },
    "DeleteAssociationResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteDocumentRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of the document that you want to delete. If not provided, all versions of the document are deleted.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>The version name of the document that you want to delete. If not provided, all versions of the document are deleted.</p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>Some SSM document types require that you specify a <code>Force</code> flag before you can delete the document. For example, you must specify a <code>Force</code> flag to delete a document of type <code>ApplicationConfigurationSchema</code>. You can restrict access to the <code>Force</code> flag in an AWS Identity and Access Management (IAM) policy.</p>"
        }
      }
    },
    "DeleteDocumentResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteInventoryRequest": {
      "type": "structure",
      "required": [
        "TypeName"
      ],
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the custom inventory type for which you want to delete either all previously collected data or the inventory type itself. </p>"
        },
        "SchemaDeleteOption": {
          "shape": "InventorySchemaDeleteOption",
          "documentation": "<p>Use the <code>SchemaDeleteOption</code> to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options:</p> <p>DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the <code>PutInventory</code> action for a version greater than the disabled version.</p> <p>DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want.</p>"
        },
        "DryRun": {
          "shape": "DryRun",
          "documentation": "<p>Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the <code>DryRun</code> option.</p>"
        },
        "ClientToken": {
          "shape": "UUID",
          "documentation": "<p>User-provided idempotency token.</p>",
          "idempotencyToken": true
        }
      }
    },
    "DeleteInventoryResult": {
      "type": "structure",
      "members": {
        "DeletionId": {
          "shape": "UUID",
          "documentation": "<p>Every <code>DeleteInventory</code> action is assigned a unique ID. This option returns a unique ID. You can use this ID to query the status of a delete operation. This option is useful for ensuring that a delete operation has completed before you begin other actions. </p>"
        },
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the inventory data type specified in the request.</p>"
        },
        "DeletionSummary": {
          "shape": "InventoryDeletionSummary",
          "documentation": "<p>A summary of the delete operation. For more information about this summary, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete-summary\">Deleting custom inventory</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        }
      }
    },
    "DeleteMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window to delete.</p>"
        }
      }
    },
    "DeleteMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the deleted maintenance window.</p>"
        }
      }
    },
    "DeleteParameterRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The name of the parameter to delete.</p>"
        }
      }
    },
    "DeleteParameterResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteParametersRequest": {
      "type": "structure",
      "required": [
        "Names"
      ],
      "members": {
        "Names": {
          "shape": "ParameterNameList",
          "documentation": "<p>The names of the parameters to delete.</p>"
        }
      }
    },
    "DeleteParametersResult": {
      "type": "structure",
      "members": {
        "DeletedParameters": {
          "shape": "ParameterNameList",
          "documentation": "<p>The names of the deleted parameters.</p>"
        },
        "InvalidParameters": {
          "shape": "ParameterNameList",
          "documentation": "<p>The names of parameters that weren't deleted because the parameters are not valid.</p>"
        }
      }
    },
    "DeletePatchBaselineRequest": {
      "type": "structure",
      "required": [
        "BaselineId"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to delete.</p>"
        }
      }
    },
    "DeletePatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the deleted patch baseline.</p>"
        }
      }
    },
    "DeleteResourceDataSyncRequest": {
      "type": "structure",
      "required": [
        "SyncName"
      ],
      "members": {
        "SyncName": {
          "shape": "ResourceDataSyncName",
          "documentation": "<p>The name of the configuration to delete.</p>"
        },
        "SyncType": {
          "shape": "ResourceDataSyncType",
          "documentation": "<p>Specify the type of resource data sync to delete.</p>"
        }
      }
    },
    "DeleteResourceDataSyncResult": {
      "type": "structure",
      "members": {}
    },
    "DeliveryTimedOutCount": {
      "type": "integer"
    },
    "DeregisterManagedInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "ManagedInstanceId",
          "documentation": "<p>The ID assigned to the managed instance when you registered it using the activation process. </p>"
        }
      }
    },
    "DeregisterManagedInstanceResult": {
      "type": "structure",
      "members": {}
    },
    "DeregisterPatchBaselineForPatchGroupRequest": {
      "type": "structure",
      "required": [
        "BaselineId",
        "PatchGroup"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to deregister the patch group from.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group that should be deregistered from the patch baseline.</p>"
        }
      }
    },
    "DeregisterPatchBaselineForPatchGroupResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline the patch group was deregistered from.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group deregistered from the patch baseline.</p>"
        }
      }
    },
    "DeregisterTargetFromMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "WindowTargetId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the target should be removed from.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The ID of the target definition to remove.</p>"
        },
        "Safe": {
          "shape": "Boolean",
          "documentation": "<p>The system checks if the target is being referenced by a task. If the target is being referenced, the system returns an error and does not deregister the target from the maintenance window.</p>",
          "box": true
        }
      }
    },
    "DeregisterTargetFromMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the target was removed from.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The ID of the removed target definition.</p>"
        }
      }
    },
    "DeregisterTaskFromMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "WindowTaskId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the task should be removed from.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The ID of the task to remove from the maintenance window.</p>"
        }
      }
    },
    "DeregisterTaskFromMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the task was removed from.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The ID of the task removed from the maintenance window.</p>"
        }
      }
    },
    "DescribeActivationsFilter": {
      "type": "structure",
      "members": {
        "FilterKey": {
          "shape": "DescribeActivationsFilterKeys",
          "documentation": "<p>The name of the filter.</p>"
        },
        "FilterValues": {
          "shape": "StringList",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Filter for the DescribeActivation API.</p>"
    },
    "DescribeActivationsFilterKeys": {
      "type": "string",
      "enum": [
        "ActivationIds",
        "DefaultInstanceName",
        "IamRole"
      ]
    },
    "DescribeActivationsFilterList": {
      "type": "list",
      "member": {
        "shape": "DescribeActivationsFilter"
      }
    },
    "DescribeActivationsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "DescribeActivationsFilterList",
          "documentation": "<p>A filter to view information about your activations.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        }
      }
    },
    "DescribeActivationsResult": {
      "type": "structure",
      "members": {
        "ActivationList": {
          "shape": "ActivationList",
          "documentation": "<p>A list of activations for your AWS account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results. </p>"
        }
      }
    },
    "DescribeAssociationExecutionTargetsRequest": {
      "type": "structure",
      "required": [
        "AssociationId",
        "ExecutionId"
      ],
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID that includes the execution for which you want to view details.</p>"
        },
        "ExecutionId": {
          "shape": "AssociationExecutionId",
          "documentation": "<p>The execution ID for which you want to view details.</p>"
        },
        "Filters": {
          "shape": "AssociationExecutionTargetsFilterList",
          "documentation": "<p>Filters for the request. You can specify the following filters and values.</p> <p>Status (EQUAL)</p> <p>ResourceId (EQUAL)</p> <p>ResourceType (EQUAL)</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        }
      }
    },
    "DescribeAssociationExecutionTargetsResult": {
      "type": "structure",
      "members": {
        "AssociationExecutionTargets": {
          "shape": "AssociationExecutionTargetsList",
          "documentation": "<p>Information about the execution.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DescribeAssociationExecutionsRequest": {
      "type": "structure",
      "required": [
        "AssociationId"
      ],
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID for which you want to view execution history details.</p>"
        },
        "Filters": {
          "shape": "AssociationExecutionFilterList",
          "documentation": "<p>Filters for the request. You can specify the following filters and values.</p> <p>ExecutionId (EQUAL)</p> <p>Status (EQUAL)</p> <p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        }
      }
    },
    "DescribeAssociationExecutionsResult": {
      "type": "structure",
      "members": {
        "AssociationExecutions": {
          "shape": "AssociationExecutionsList",
          "documentation": "<p>A list of the executions for the specified association ID.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DescribeAssociationRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID.</p>"
        },
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID for which you want information.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>Specify the association version to retrieve. To view the latest version, either specify <code>$LATEST</code> for this parameter, or omit this parameter. To view a list of all associations for an instance, use <a>ListAssociations</a>. To get a list of versions for a specific association, use <a>ListAssociationVersions</a>. </p>"
        }
      }
    },
    "DescribeAssociationResult": {
      "type": "structure",
      "members": {
        "AssociationDescription": {
          "shape": "AssociationDescription",
          "documentation": "<p>Information about the association.</p>"
        }
      }
    },
    "DescribeAutomationExecutionsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "AutomationExecutionFilterList",
          "documentation": "<p>Filters used to limit the scope of executions that are requested.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeAutomationExecutionsResult": {
      "type": "structure",
      "members": {
        "AutomationExecutionMetadataList": {
          "shape": "AutomationExecutionMetadataList",
          "documentation": "<p>The list of details about each automation execution which has occurred which matches the filter specification, if any.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeAutomationStepExecutionsRequest": {
      "type": "structure",
      "required": [
        "AutomationExecutionId"
      ],
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The Automation execution ID for which you want step execution descriptions.</p>"
        },
        "Filters": {
          "shape": "StepExecutionFilterList",
          "documentation": "<p>One or more filters to limit the number of step executions returned by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "ReverseOrder": {
          "shape": "Boolean",
          "documentation": "<p>A boolean that indicates whether to list step executions in reverse order by start time. The default value is false.</p>",
          "box": true
        }
      }
    },
    "DescribeAutomationStepExecutionsResult": {
      "type": "structure",
      "members": {
        "StepExecutions": {
          "shape": "StepExecutionList",
          "documentation": "<p>A list of details about the current state of all steps that make up an execution.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeAvailablePatchesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "PatchOrchestratorFilterList",
          "documentation": "<p>Filters used to scope down the returned patches.</p>"
        },
        "MaxResults": {
          "shape": "PatchBaselineMaxResults",
          "documentation": "<p>The maximum number of patches to return (per page).</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeAvailablePatchesResult": {
      "type": "structure",
      "members": {
        "Patches": {
          "shape": "PatchList",
          "documentation": "<p>An array of patches. Each entry in the array is a patch structure.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeDocumentPermissionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "PermissionType"
      ],
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document for which you are the owner.</p>"
        },
        "PermissionType": {
          "shape": "DocumentPermissionType",
          "documentation": "<p>The permission type for the document. The permission type can be <i>Share</i>.</p>"
        }
      }
    },
    "DescribeDocumentPermissionResponse": {
      "type": "structure",
      "members": {
        "AccountIds": {
          "shape": "AccountIdList",
          "documentation": "<p>The account IDs that have permission to use this document. The ID can be either an AWS account or <i>All</i>.</p>"
        },
        "AccountSharingInfoList": {
          "shape": "AccountSharingInfoList",
          "documentation": "<p>A list of AWS accounts where the current document is shared and the version shared with each account.</p>"
        }
      }
    },
    "DescribeDocumentRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version for which you want information. Can be a specific version or the default version.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>An optional field specifying the version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        }
      }
    },
    "DescribeDocumentResult": {
      "type": "structure",
      "members": {
        "Document": {
          "shape": "DocumentDescription",
          "documentation": "<p>Information about the Systems Manager document.</p>"
        }
      }
    },
    "DescribeEffectiveInstanceAssociationsRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID for which you want to view all associations.</p>"
        },
        "MaxResults": {
          "shape": "EffectiveInstanceAssociationMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeEffectiveInstanceAssociationsResult": {
      "type": "structure",
      "members": {
        "Associations": {
          "shape": "InstanceAssociationList",
          "documentation": "<p>The associations for the requested instance.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeEffectivePatchesForPatchBaselineRequest": {
      "type": "structure",
      "required": [
        "BaselineId"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to retrieve the effective patches for.</p>"
        },
        "MaxResults": {
          "shape": "PatchBaselineMaxResults",
          "documentation": "<p>The maximum number of patches to return (per page).</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeEffectivePatchesForPatchBaselineResult": {
      "type": "structure",
      "members": {
        "EffectivePatches": {
          "shape": "EffectivePatchList",
          "documentation": "<p>An array of patches and patch status.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeInstanceAssociationsStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance IDs for which you want association status information.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeInstanceAssociationsStatusResult": {
      "type": "structure",
      "members": {
        "InstanceAssociationStatusInfos": {
          "shape": "InstanceAssociationStatusInfos",
          "documentation": "<p>Status information about the association.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeInstanceInformationRequest": {
      "type": "structure",
      "members": {
        "InstanceInformationFilterList": {
          "shape": "InstanceInformationFilterList",
          "documentation": "<p>This is a legacy method. We recommend that you don't use this method. Instead, use the <code>Filters</code> data type. <code>Filters</code> enables you to return instance information by filtering based on tags applied to managed instances.</p> <note> <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads to an exception error. </p> </note>"
        },
        "Filters": {
          "shape": "InstanceInformationStringFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of instances. You can filter based on tags applied to EC2 instances. Use this <code>Filters</code> data type instead of <code>InstanceInformationFilterList</code>, which is deprecated.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsEC2Compatible",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeInstanceInformationResult": {
      "type": "structure",
      "members": {
        "InstanceInformationList": {
          "shape": "InstanceInformationList",
          "documentation": "<p>The instance information list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty. </p>"
        }
      }
    },
    "DescribeInstancePatchStatesForPatchGroupRequest": {
      "type": "structure",
      "required": [
        "PatchGroup"
      ],
      "members": {
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group for which the patch state information should be retrieved.</p>"
        },
        "Filters": {
          "shape": "InstancePatchStateFilterList",
          "documentation": "<p>Each entry in the array is a structure containing:</p> <p>Key (string between 1 and 200 characters)</p> <p> Values (array containing a single string)</p> <p> Type (string \"Equal\", \"NotEqual\", \"LessThan\", \"GreaterThan\")</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "PatchComplianceMaxResults",
          "documentation": "<p>The maximum number of patches to return (per page).</p>",
          "box": true
        }
      }
    },
    "DescribeInstancePatchStatesForPatchGroupResult": {
      "type": "structure",
      "members": {
        "InstancePatchStates": {
          "shape": "InstancePatchStatesList",
          "documentation": "<p>The high-level patch state for the requested instances. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeInstancePatchStatesRequest": {
      "type": "structure",
      "required": [
        "InstanceIds"
      ],
      "members": {
        "InstanceIds": {
          "shape": "InstanceIdList",
          "documentation": "<p>The ID of the instance whose patch state information should be retrieved.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "PatchComplianceMaxResults",
          "documentation": "<p>The maximum number of instances to return (per page).</p>",
          "box": true
        }
      }
    },
    "DescribeInstancePatchStatesResult": {
      "type": "structure",
      "members": {
        "InstancePatchStates": {
          "shape": "InstancePatchStateList",
          "documentation": "<p>The high-level patch state for the requested instances.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeInstancePatchesRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance whose patch state information should be retrieved.</p>"
        },
        "Filters": {
          "shape": "PatchOrchestratorFilterList",
          "documentation": "<p>An array of structures. Each entry in the array is a structure containing a Key, Value combination. Valid values for Key are <code>Classification</code> | <code>KBId</code> | <code>Severity</code> | <code>State</code>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "PatchComplianceMaxResults",
          "documentation": "<p>The maximum number of patches to return (per page).</p>",
          "box": true
        }
      }
    },
    "DescribeInstancePatchesResult": {
      "type": "structure",
      "members": {
        "Patches": {
          "shape": "PatchComplianceDataList",
          "documentation": "<p>Each entry in the array is a structure containing:</p> <p>Title (string)</p> <p>KBId (string)</p> <p>Classification (string)</p> <p>Severity (string)</p> <p>State (string, such as \"INSTALLED\" or \"FAILED\")</p> <p>InstalledTime (DateTime)</p> <p>InstalledBy (string)</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeInventoryDeletionsRequest": {
      "type": "structure",
      "members": {
        "DeletionId": {
          "shape": "UUID",
          "documentation": "<p>Specify the delete inventory ID for which you want information. This ID was returned by the <code>DeleteInventory</code> action.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "DescribeInventoryDeletionsResult": {
      "type": "structure",
      "members": {
        "InventoryDeletions": {
          "shape": "InventoryDeletionsList",
          "documentation": "<p>A list of status items for deleted inventory.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionTaskInvocationsRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId",
        "TaskId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution the task is part of.</p>"
        },
        "TaskId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task in the maintenance window task that should be retrieved.</p>"
        },
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionTaskInvocationsResult": {
      "type": "structure",
      "members": {
        "WindowExecutionTaskInvocationIdentities": {
          "shape": "MaintenanceWindowExecutionTaskInvocationIdentityList",
          "documentation": "<p>Information about the task invocation results per invocation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionTasksRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution whose task executions should be retrieved.</p>"
        },
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED. </p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionTasksResult": {
      "type": "structure",
      "members": {
        "WindowExecutionTaskIdentities": {
          "shape": "MaintenanceWindowExecutionTaskIdentityList",
          "documentation": "<p>Information about the task executions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionsRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window whose executions should be retrieved.</p>"
        },
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Each entry in the array is a structure containing:</p> <p>Key (string, between 1 and 128 characters)</p> <p>Values (array of strings, each string is between 1 and 256 characters)</p> <p>The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowExecutionsResult": {
      "type": "structure",
      "members": {
        "WindowExecutions": {
          "shape": "MaintenanceWindowExecutionList",
          "documentation": "<p>Information about the maintenance window executions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowScheduleRequest": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window to retrieve information about.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The instance ID or key/value pair to retrieve information about.</p>"
        },
        "ResourceType": {
          "shape": "MaintenanceWindowResourceType",
          "documentation": "<p>The type of resource you want to retrieve information about. For example, \"INSTANCE\".</p>"
        },
        "Filters": {
          "shape": "PatchOrchestratorFilterList",
          "documentation": "<p>Filters used to limit the range of results. For example, you can limit maintenance window executions to only those scheduled before or after a certain date and time.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowSearchMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowScheduleResult": {
      "type": "structure",
      "members": {
        "ScheduledWindowExecutions": {
          "shape": "ScheduledWindowExecutionList",
          "documentation": "<p>Information about maintenance window executions scheduled for the specified time range.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowTargetsRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window whose targets should be retrieved.</p>"
        },
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Optional filters that can be used to narrow down the scope of the returned window targets. The supported filter keys are Type, WindowTargetId and OwnerInformation.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowTargetsResult": {
      "type": "structure",
      "members": {
        "Targets": {
          "shape": "MaintenanceWindowTargetList",
          "documentation": "<p>Information about the targets in the maintenance window.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowTasksRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window whose tasks should be retrieved.</p>"
        },
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowTasksResult": {
      "type": "structure",
      "members": {
        "Tasks": {
          "shape": "MaintenanceWindowTaskList",
          "documentation": "<p>Information about the tasks in the maintenance window.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeMaintenanceWindowsForTargetRequest": {
      "type": "structure",
      "required": [
        "Targets",
        "ResourceType"
      ],
      "members": {
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The instance ID or key/value pair to retrieve information about.</p>"
        },
        "ResourceType": {
          "shape": "MaintenanceWindowResourceType",
          "documentation": "<p>The type of resource you want to retrieve information about. For example, \"INSTANCE\".</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowSearchMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowsForTargetResult": {
      "type": "structure",
      "members": {
        "WindowIdentities": {
          "shape": "MaintenanceWindowsForTargetList",
          "documentation": "<p>Information about the maintenance window targets and tasks an instance is associated with.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "MaintenanceWindowFilterList",
          "documentation": "<p>Optional filters used to narrow down the scope of the returned maintenance windows. Supported filter keys are <b>Name</b> and <b>Enabled</b>.</p>"
        },
        "MaxResults": {
          "shape": "MaintenanceWindowMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeMaintenanceWindowsResult": {
      "type": "structure",
      "members": {
        "WindowIdentities": {
          "shape": "MaintenanceWindowIdentityList",
          "documentation": "<p>Information about the maintenance windows.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribeOpsItemsRequest": {
      "type": "structure",
      "members": {
        "OpsItemFilters": {
          "shape": "OpsItemFilters",
          "documentation": "<p>One or more filters to limit the response.</p> <ul> <li> <p>Key: CreatedTime</p> <p>Operations: GreaterThan, LessThan</p> </li> <li> <p>Key: LastModifiedBy</p> <p>Operations: Contains, Equals</p> </li> <li> <p>Key: LastModifiedTime</p> <p>Operations: GreaterThan, LessThan</p> </li> <li> <p>Key: Priority</p> <p>Operations: Equals</p> </li> <li> <p>Key: Source</p> <p>Operations: Contains, Equals</p> </li> <li> <p>Key: Status</p> <p>Operations: Equals</p> </li> <li> <p>Key: Title</p> <p>Operations: Contains</p> </li> <li> <p>Key: OperationalData*</p> <p>Operations: Equals</p> </li> <li> <p>Key: OperationalDataKey</p> <p>Operations: Equals</p> </li> <li> <p>Key: OperationalDataValue</p> <p>Operations: Equals, Contains</p> </li> <li> <p>Key: OpsItemId</p> <p>Operations: Equals</p> </li> <li> <p>Key: ResourceId</p> <p>Operations: Contains</p> </li> <li> <p>Key: AutomationId</p> <p>Operations: Equals</p> </li> </ul> <p>*If you filter the response by using the OperationalData operator, specify a key-value pair by using the following JSON format: {\"key\":\"key_name\",\"value\":\"a_value\"}</p>"
        },
        "MaxResults": {
          "shape": "OpsItemMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DescribeOpsItemsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        },
        "OpsItemSummaries": {
          "shape": "OpsItemSummaries",
          "documentation": "<p>A list of OpsItems.</p>"
        }
      }
    },
    "DescribeParametersRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ParametersFilterList",
          "documentation": "<p>This data type is deprecated. Instead, use <code>ParameterFilters</code>.</p>"
        },
        "ParameterFilters": {
          "shape": "ParameterStringFilterList",
          "documentation": "<p>Filters to limit the request results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeParametersResult": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParameterMetadataList",
          "documentation": "<p>Parameters returned by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items.</p>"
        }
      }
    },
    "DescribePatchBaselinesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "PatchOrchestratorFilterList",
          "documentation": "<p>Each element in the array is a structure containing: </p> <p>Key: (string, \"NAME_PREFIX\" or \"OWNER\")</p> <p>Value: (array of strings, exactly 1 entry, between 1 and 255 characters)</p>"
        },
        "MaxResults": {
          "shape": "PatchBaselineMaxResults",
          "documentation": "<p>The maximum number of patch baselines to return (per page).</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribePatchBaselinesResult": {
      "type": "structure",
      "members": {
        "BaselineIdentities": {
          "shape": "PatchBaselineIdentityList",
          "documentation": "<p>An array of PatchBaselineIdentity elements.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribePatchGroupStateRequest": {
      "type": "structure",
      "required": [
        "PatchGroup"
      ],
      "members": {
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group whose patch snapshot should be retrieved.</p>"
        }
      }
    },
    "DescribePatchGroupStateResult": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the patch group.</p>"
        },
        "InstancesWithInstalledPatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with installed patches.</p>"
        },
        "InstancesWithInstalledOtherPatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with patches installed that aren't defined in the patch baseline.</p>"
        },
        "InstancesWithInstalledPendingRebootPatches": {
          "shape": "InstancesCount",
          "documentation": "<p>The number of instances with patches installed by Patch Manager that have not been rebooted after the patch installation. The status of these instances is NON_COMPLIANT.</p>",
          "box": true
        },
        "InstancesWithInstalledRejectedPatches": {
          "shape": "InstancesCount",
          "documentation": "<p>The number of instances with patches installed that are specified in a RejectedPatches list. Patches with a status of <i>INSTALLED_REJECTED</i> were typically installed before they were added to a RejectedPatches list.</p> <note> <p>If ALLOW_AS_DEPENDENCY is the specified option for RejectedPatchesAction, the value of InstancesWithInstalledRejectedPatches will always be 0 (zero).</p> </note>",
          "box": true
        },
        "InstancesWithMissingPatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with missing patches from the patch baseline.</p>"
        },
        "InstancesWithFailedPatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with patches from the patch baseline that failed to install.</p>"
        },
        "InstancesWithNotApplicablePatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with patches that aren't applicable.</p>"
        },
        "InstancesWithUnreportedNotApplicablePatches": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>NotApplicable</code> patches beyond the supported limit, which are not reported by name to Systems Manager Inventory.</p>",
          "box": true
        }
      }
    },
    "DescribePatchGroupsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PatchBaselineMaxResults",
          "documentation": "<p>The maximum number of patch groups to return (per page).</p>",
          "box": true
        },
        "Filters": {
          "shape": "PatchOrchestratorFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p> <p>For <code>DescribePatchGroups</code>,valid filter keys include the following:</p> <ul> <li> <p> <code>NAME_PREFIX</code>: The name of the patch group. Wildcards (*) are accepted.</p> </li> <li> <p> <code>OPERATING_SYSTEM</code>: The supported operating system type to return results for. For valid operating system values, see <a>GetDefaultPatchBaselineRequest$OperatingSystem</a> in <a>CreatePatchBaseline</a>.</p> <p>Examples:</p> <ul> <li> <p> <code>--filters Key=NAME_PREFIX,Values=MyPatchGroup*</code> </p> </li> <li> <p> <code>--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2</code> </p> </li> </ul> </li> </ul>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribePatchGroupsResult": {
      "type": "structure",
      "members": {
        "Mappings": {
          "shape": "PatchGroupPatchBaselineMappingList",
          "documentation": "<p>Each entry in the array contains:</p> <p>PatchGroup: string (between 1 and 256 characters, Regex: ^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$)</p> <p>PatchBaselineIdentity: A PatchBaselineIdentity element. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "DescribePatchPropertiesRequest": {
      "type": "structure",
      "required": [
        "OperatingSystem",
        "Property"
      ],
      "members": {
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system type for which to list patches.</p>"
        },
        "Property": {
          "shape": "PatchProperty",
          "documentation": "<p>The patch property for which you want to view patch details. </p>"
        },
        "PatchSet": {
          "shape": "PatchSet",
          "documentation": "<p>Indicates whether to list patches for the Windows operating system or for Microsoft applications. Not applicable for Linux operating systems.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribePatchPropertiesResult": {
      "type": "structure",
      "members": {
        "Properties": {
          "shape": "PatchPropertiesList",
          "documentation": "<p>A list of the properties for patches matching the filter request parameters.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
        }
      }
    },
    "DescribeSessionsRequest": {
      "type": "structure",
      "required": [
        "State"
      ],
      "members": {
        "State": {
          "shape": "SessionState",
          "documentation": "<p>The session status to retrieve a list of sessions for. For example, \"Active\".</p>"
        },
        "MaxResults": {
          "shape": "SessionMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "Filters": {
          "shape": "SessionFilterList",
          "documentation": "<p>One or more filters to limit the type of sessions returned by the request.</p>"
        }
      }
    },
    "DescribeSessionsResponse": {
      "type": "structure",
      "members": {
        "Sessions": {
          "shape": "SessionList",
          "documentation": "<p>A list of sessions meeting the request parameters.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescriptionInDocument": {
      "type": "string"
    },
    "DocumentARN": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.:/]{3,128}$"
    },
    "DocumentContent": {
      "type": "string",
      "min": 1
    },
    "DocumentDefaultVersionDescription": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document.</p>"
        },
        "DefaultVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The default version of the document.</p>"
        },
        "DefaultVersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>The default version of the artifact associated with the document.</p>"
        }
      },
      "documentation": "<p>A default version of a document.</p>"
    },
    "DocumentDescription": {
      "type": "structure",
      "members": {
        "Sha1": {
          "shape": "DocumentSha1",
          "documentation": "<p>The SHA1 hash of the document, which you can use for verification.</p>"
        },
        "Hash": {
          "shape": "DocumentHash",
          "documentation": "<p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>"
        },
        "HashType": {
          "shape": "DocumentHashType",
          "documentation": "<p>The hash type of the document. Valid values include <code>Sha256</code> or <code>Sha1</code>.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>"
        },
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>The version of the artifact associated with the document.</p>"
        },
        "Owner": {
          "shape": "DocumentOwner",
          "documentation": "<p>The AWS user account that created the document.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date when the document was created.</p>"
        },
        "Status": {
          "shape": "DocumentStatus",
          "documentation": "<p>The status of the Systems Manager document.</p>"
        },
        "StatusInformation": {
          "shape": "DocumentStatusInformation",
          "documentation": "<p>A message returned by AWS Systems Manager that explains the <code>Status</code> value. For example, a <code>Failed</code> status might be explained by the <code>StatusInformation</code> message, \"The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct.\"</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "Description": {
          "shape": "DescriptionInDocument",
          "documentation": "<p>A description of the document. </p>"
        },
        "Parameters": {
          "shape": "DocumentParameterList",
          "documentation": "<p>A description of the parameters for a document.</p>"
        },
        "PlatformTypes": {
          "shape": "PlatformTypeList",
          "documentation": "<p>The list of OS platforms compatible with this Systems Manager document. </p>"
        },
        "DocumentType": {
          "shape": "DocumentType",
          "documentation": "<p>The type of document.</p>"
        },
        "SchemaVersion": {
          "shape": "DocumentSchemaVersion",
          "documentation": "<p>The schema version.</p>"
        },
        "LatestVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The latest version of the document.</p>"
        },
        "DefaultVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The default version.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>The document format, either JSON or YAML.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS resource and property types reference</a> in the <i>AWS CloudFormation User Guide</i>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags, or metadata, that have been applied to the document.</p>"
        },
        "AttachmentsInformation": {
          "shape": "AttachmentInformationList",
          "documentation": "<p>Details about the document attachments, including names, locations, sizes, and so on.</p>"
        },
        "Requires": {
          "shape": "DocumentRequiresList",
          "documentation": "<p>A list of SSM documents required by a document. For example, an <code>ApplicationConfiguration</code> document requires an <code>ApplicationConfigurationSchema</code> document.</p>"
        }
      },
      "documentation": "<p>Describes a Systems Manager document. </p>"
    },
    "DocumentFilter": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "DocumentFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "value": {
          "shape": "DocumentFilterValue",
          "documentation": "<p>The value of the filter.</p>"
        }
      },
      "documentation": "<p>This data type is deprecated. Instead, use <a>DocumentKeyValuesFilter</a>.</p>"
    },
    "DocumentFilterKey": {
      "type": "string",
      "enum": [
        "Name",
        "Owner",
        "PlatformTypes",
        "DocumentType"
      ]
    },
    "DocumentFilterList": {
      "type": "list",
      "member": {
        "shape": "DocumentFilter"
      },
      "min": 1
    },
    "DocumentFilterValue": {
      "type": "string",
      "min": 1
    },
    "DocumentFormat": {
      "type": "string",
      "enum": [
        "YAML",
        "JSON",
        "TEXT"
      ]
    },
    "DocumentHash": {
      "type": "string",
      "max": 256
    },
    "DocumentHashType": {
      "type": "string",
      "enum": [
        "Sha256",
        "Sha1"
      ]
    },
    "DocumentIdentifier": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "Owner": {
          "shape": "DocumentOwner",
          "documentation": "<p>The AWS user account that created the document.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>An optional field specifying the version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        },
        "PlatformTypes": {
          "shape": "PlatformTypeList",
          "documentation": "<p>The operating system platform. </p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "DocumentType": {
          "shape": "DocumentType",
          "documentation": "<p>The document type.</p>"
        },
        "SchemaVersion": {
          "shape": "DocumentSchemaVersion",
          "documentation": "<p>The schema version.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>The document format, either JSON or YAML.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS resource and property types reference</a> in the <i>AWS CloudFormation User Guide</i>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags, or metadata, that have been applied to the document.</p>"
        },
        "Requires": {
          "shape": "DocumentRequiresList",
          "documentation": "<p>A list of SSM documents required by a document. For example, an <code>ApplicationConfiguration</code> document requires an <code>ApplicationConfigurationSchema</code> document.</p>"
        }
      },
      "documentation": "<p>Describes the name of a Systems Manager document.</p>"
    },
    "DocumentIdentifierList": {
      "type": "list",
      "member": {
        "shape": "DocumentIdentifier"
      }
    },
    "DocumentKeyValuesFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "DocumentKeyValuesFilterKey",
          "documentation": "<p>The name of the filter key.</p>"
        },
        "Values": {
          "shape": "DocumentKeyValuesFilterValues",
          "documentation": "<p>The value for the filter key.</p>"
        }
      },
      "documentation": "<p>One or more filters. Use a filter to return a more specific list of documents.</p> <p>For keys, you can specify one or more tags that have been applied to a document. </p> <p>You can also use AWS-provided keys, some of which have specific allowed values. These keys and their associated values are as follows:</p> <dl> <dt>DocumentType</dt> <dd> <ul> <li> <p>ApplicationConfiguration</p> </li> <li> <p>ApplicationConfigurationSchema</p> </li> <li> <p>Automation</p> </li> <li> <p>ChangeCalendar</p> </li> <li> <p>Command</p> </li> <li> <p>DeploymentStrategy</p> </li> <li> <p>Package</p> </li> <li> <p>Policy</p> </li> <li> <p>Session</p> </li> </ul> </dd> <dt>Owner</dt> <dd> <p>Note that only one <code>Owner</code> can be specified in a request. For example: <code>Key=Owner,Values=Self</code>.</p> <ul> <li> <p>Amazon</p> </li> <li> <p>Private</p> </li> <li> <p>Public</p> </li> <li> <p>Self</p> </li> <li> <p>ThirdParty</p> </li> </ul> </dd> <dt>PlatformTypes</dt> <dd> <ul> <li> <p>Linux</p> </li> <li> <p>Windows</p> </li> </ul> </dd> </dl> <p> <code>Name</code> is another AWS-provided key. If you use <code>Name</code> as a key, you can use a name prefix to return a list of documents. For example, in the AWS CLI, to return a list of all documents that begin with <code>Te</code>, run the following command:</p> <p> <code>aws ssm list-documents --filters Key=Name,Values=Te</code> </p> <p>You can also use the <code>TargetType</code> AWS-provided key. For a list of valid resource type values that can be used with this key, see <a href=\"http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">AWS resource and property types reference</a> in the <i>AWS CloudFormation User Guide</i>.</p> <p>If you specify more than two keys, only documents that are identified by all the tags are returned in the results. If you specify more than two values for a key, documents that are identified by any of the values are returned in the results.</p> <p>To specify a custom key and value pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p> <p>For example, if you created a key called region and are using the AWS CLI to call the <code>list-documents</code> command: </p> <p> <code>aws ssm list-documents --filters Key=tag:region,Values=east,west Key=Owner,Values=Self</code> </p>"
    },
    "DocumentKeyValuesFilterKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DocumentKeyValuesFilterList": {
      "type": "list",
      "member": {
        "shape": "DocumentKeyValuesFilter"
      },
      "max": 6,
      "min": 0
    },
    "DocumentKeyValuesFilterValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DocumentKeyValuesFilterValues": {
      "type": "list",
      "member": {
        "shape": "DocumentKeyValuesFilterValue"
      }
    },
    "DocumentName": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "DocumentOwner": {
      "type": "string"
    },
    "DocumentParameter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentParameterName",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "Type": {
          "shape": "DocumentParameterType",
          "documentation": "<p>The type of parameter. The type can be either String or StringList.</p>"
        },
        "Description": {
          "shape": "DocumentParameterDescrption",
          "documentation": "<p>A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.</p>"
        },
        "DefaultValue": {
          "shape": "DocumentParameterDefaultValue",
          "documentation": "<p>If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.</p>"
        }
      },
      "documentation": "<p>Parameters specified in a System Manager document that run on the server when the command is run. </p>"
    },
    "DocumentParameterDefaultValue": {
      "type": "string"
    },
    "DocumentParameterDescrption": {
      "type": "string"
    },
    "DocumentParameterList": {
      "type": "list",
      "member": {
        "shape": "DocumentParameter"
      }
    },
    "DocumentParameterName": {
      "type": "string"
    },
    "DocumentParameterType": {
      "type": "string",
      "enum": [
        "String",
        "StringList"
      ]
    },
    "DocumentPermissionType": {
      "type": "string",
      "enum": [
        "Share"
      ]
    },
    "DocumentRequires": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the required SSM document. The name can be an Amazon Resource Name (ARN).</p>"
        },
        "Version": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version required by the current document.</p>"
        }
      },
      "documentation": "<p>An SSM document required by the current document.</p>"
    },
    "DocumentRequiresList": {
      "type": "list",
      "member": {
        "shape": "DocumentRequires"
      },
      "min": 1
    },
    "DocumentSchemaVersion": {
      "type": "string",
      "pattern": "([0-9]+)\\.([0-9]+)"
    },
    "DocumentSha1": {
      "type": "string"
    },
    "DocumentStatus": {
      "type": "string",
      "documentation": "<p>The status of a document.</p>",
      "enum": [
        "Creating",
        "Active",
        "Updating",
        "Deleting",
        "Failed"
      ]
    },
    "DocumentStatusInformation": {
      "type": "string"
    },
    "DocumentType": {
      "type": "string",
      "enum": [
        "Command",
        "Policy",
        "Automation",
        "Session",
        "Package",
        "ApplicationConfiguration",
        "ApplicationConfigurationSchema",
        "DeploymentStrategy",
        "ChangeCalendar"
      ]
    },
    "DocumentVersion": {
      "type": "string",
      "pattern": "([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"
    },
    "DocumentVersionInfo": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The document name.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>The version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the document was created.</p>"
        },
        "IsDefaultVersion": {
          "shape": "Boolean",
          "documentation": "<p>An identifier for the default version of the document.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>The document format, either JSON or YAML.</p>"
        },
        "Status": {
          "shape": "DocumentStatus",
          "documentation": "<p>The status of the Systems Manager document, such as <code>Creating</code>, <code>Active</code>, <code>Failed</code>, and <code>Deleting</code>.</p>"
        },
        "StatusInformation": {
          "shape": "DocumentStatusInformation",
          "documentation": "<p>A message returned by AWS Systems Manager that explains the <code>Status</code> value. For example, a <code>Failed</code> status might be explained by the <code>StatusInformation</code> message, \"The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct.\"</p>"
        }
      },
      "documentation": "<p>Version information about the document.</p>"
    },
    "DocumentVersionList": {
      "type": "list",
      "member": {
        "shape": "DocumentVersionInfo"
      },
      "min": 1
    },
    "DocumentVersionName": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{1,128}$"
    },
    "DocumentVersionNumber": {
      "type": "string",
      "pattern": "(^[1-9][0-9]*$)"
    },
    "DryRun": {
      "type": "boolean"
    },
    "EffectiveInstanceAssociationMaxResults": {
      "type": "integer",
      "max": 5,
      "min": 1
    },
    "EffectivePatch": {
      "type": "structure",
      "members": {
        "Patch": {
          "shape": "Patch",
          "documentation": "<p>Provides metadata for a patch, including information such as the KB ID, severity, classification and a URL for where more information can be obtained about the patch.</p>"
        },
        "PatchStatus": {
          "shape": "PatchStatus",
          "documentation": "<p>The status of the patch in a patch baseline. This includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>"
        }
      },
      "documentation": "<p>The EffectivePatch structure defines metadata about a patch along with the approval state of the patch in a particular patch baseline. The approval state includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>"
    },
    "EffectivePatchList": {
      "type": "list",
      "member": {
        "shape": "EffectivePatch"
      }
    },
    "ErrorCount": {
      "type": "integer"
    },
    "ExecutionMode": {
      "type": "string",
      "enum": [
        "Auto",
        "Interactive"
      ]
    },
    "ExecutionRoleName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ExpirationDate": {
      "type": "timestamp"
    },
    "FailedCreateAssociation": {
      "type": "structure",
      "members": {
        "Entry": {
          "shape": "CreateAssociationBatchRequestEntry",
          "documentation": "<p>The association.</p>"
        },
        "Message": {
          "shape": "BatchErrorMessage",
          "documentation": "<p>A description of the failure.</p>"
        },
        "Fault": {
          "shape": "Fault",
          "documentation": "<p>The source of the failure.</p>"
        }
      },
      "documentation": "<p>Describes a failed association.</p>"
    },
    "FailedCreateAssociationList": {
      "type": "list",
      "member": {
        "shape": "FailedCreateAssociation"
      }
    },
    "FailureDetails": {
      "type": "structure",
      "members": {
        "FailureStage": {
          "shape": "String",
          "documentation": "<p>The stage of the Automation execution when the failure occurred. The stages include the following: InputValidation, PreVerification, Invocation, PostVerification.</p>"
        },
        "FailureType": {
          "shape": "String",
          "documentation": "<p>The type of Automation failure. Failure types include the following: Action, Permission, Throttling, Verification, Internal.</p>"
        },
        "Details": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>Detailed information about the Automation step failure.</p>"
        }
      },
      "documentation": "<p>Information about an Automation failure.</p>"
    },
    "Fault": {
      "type": "string",
      "enum": [
        "Client",
        "Server",
        "Unknown"
      ]
    },
    "GetAutomationExecutionRequest": {
      "type": "structure",
      "required": [
        "AutomationExecutionId"
      ],
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.</p>"
        }
      }
    },
    "GetAutomationExecutionResult": {
      "type": "structure",
      "members": {
        "AutomationExecution": {
          "shape": "AutomationExecution",
          "documentation": "<p>Detailed information about the current state of an automation execution.</p>"
        }
      }
    },
    "GetCalendarStateRequest": {
      "type": "structure",
      "required": [
        "CalendarNames"
      ],
      "members": {
        "CalendarNames": {
          "shape": "CalendarNameOrARNList",
          "documentation": "<p>The names or Amazon Resource Names (ARNs) of the Systems Manager documents that represent the calendar entries for which you want to get the state.</p>"
        },
        "AtTime": {
          "shape": "ISO8601String",
          "documentation": "<p>(Optional) The specific time for which you want to get calendar state information, in <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> format. If you do not add <code>AtTime</code>, the current time is assumed.</p>"
        }
      }
    },
    "GetCalendarStateResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "CalendarState",
          "documentation": "<p>The state of the calendar. An <code>OPEN</code> calendar indicates that actions are allowed to proceed, and a <code>CLOSED</code> calendar indicates that actions are not allowed to proceed.</p>"
        },
        "AtTime": {
          "shape": "ISO8601String",
          "documentation": "<p>The time, as an <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> string, that you specified in your command. If you did not specify a time, <code>GetCalendarState</code> uses the current time.</p>"
        },
        "NextTransitionTime": {
          "shape": "ISO8601String",
          "documentation": "<p>The time, as an <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> string, that the calendar state will change. If the current calendar state is <code>OPEN</code>, <code>NextTransitionTime</code> indicates when the calendar state changes to <code>CLOSED</code>, and vice-versa.</p>"
        }
      }
    },
    "GetCommandInvocationRequest": {
      "type": "structure",
      "required": [
        "CommandId",
        "InstanceId"
      ],
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>(Required) The parent command ID of the invocation plugin.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>(Required) The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>"
        },
        "PluginName": {
          "shape": "CommandPluginName",
          "documentation": "<p>(Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned.</p> <p>Plugin names are also referred to as step names in Systems Manager documents.</p>"
        }
      }
    },
    "GetCommandInvocationResult": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>The parent command ID of the invocation plugin.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the managed instance targeted by the command. A managed instance can be an EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>"
        },
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>The comment text for the command.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document that was run. For example, AWS-RunShellScript.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The SSM document version used in the request.</p>"
        },
        "PluginName": {
          "shape": "CommandPluginName",
          "documentation": "<p>The name of the plugin for which you want detailed results. For example, aws:RunShellScript is a plugin.</p>"
        },
        "ResponseCode": {
          "shape": "ResponseCode",
          "documentation": "<p>The error level response code for the plugin script. If the response code is -1, then the command has not started running on the instance, or it was not received by the instance.</p>"
        },
        "ExecutionStartDateTime": {
          "shape": "StringDateTime",
          "documentation": "<p>The date and time the plugin started running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedBefore</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to run, the string is empty.</p>"
        },
        "ExecutionElapsedTime": {
          "shape": "StringDateTime",
          "documentation": "<p>Duration since ExecutionStartDateTime.</p>"
        },
        "ExecutionEndDateTime": {
          "shape": "StringDateTime",
          "documentation": "<p>The date and time the plugin was finished running. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedAfter</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to run, the string is empty.</p>"
        },
        "Status": {
          "shape": "CommandInvocationStatus",
          "documentation": "<p>The status of this invocation plugin. This status can be different than StatusDetails.</p>"
        },
        "StatusDetails": {
          "shape": "StatusDetails",
          "documentation": "<p>A detailed status of the command execution for an invocation. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command statuses</a> in the <i>AWS Systems Manager User Guide</i>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Delayed: The system attempted to send the command to the target, but the target was not available. The instance might not be available because of network issues, because the instance was stopped, or for similar reasons. The system will try to send the command again.</p> </li> <li> <p>Success: The command or plugin ran successfully. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The command started to run on the instance, but the execution was not complete before the timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command wasn't run successfully on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>"
        },
        "StandardOutputContent": {
          "shape": "StandardOutputContent",
          "documentation": "<p>The first 24,000 characters written by the plugin to stdout. If the command has not finished running, if ExecutionStatus is neither Succeeded nor Failed, then this string is empty.</p>"
        },
        "StandardOutputUrl": {
          "shape": "Url",
          "documentation": "<p>The URL for the complete text written by the plugin to stdout in Amazon S3. If an S3 bucket was not specified, then this string is empty.</p>"
        },
        "StandardErrorContent": {
          "shape": "StandardErrorContent",
          "documentation": "<p>The first 8,000 characters written by the plugin to stderr. If the command has not finished running, then this string is empty.</p>"
        },
        "StandardErrorUrl": {
          "shape": "Url",
          "documentation": "<p>The URL for the complete text written by the plugin to stderr. If the command has not finished running, then this string is empty.</p>"
        },
        "CloudWatchOutputConfig": {
          "shape": "CloudWatchOutputConfig",
          "documentation": "<p>CloudWatch Logs information where Systems Manager sent the command output.</p>"
        }
      }
    },
    "GetConnectionStatusRequest": {
      "type": "structure",
      "required": [
        "Target"
      ],
      "members": {
        "Target": {
          "shape": "SessionTarget",
          "documentation": "<p>The ID of the instance.</p>"
        }
      }
    },
    "GetConnectionStatusResponse": {
      "type": "structure",
      "members": {
        "Target": {
          "shape": "SessionTarget",
          "documentation": "<p>The ID of the instance to check connection status. </p>"
        },
        "Status": {
          "shape": "ConnectionStatus",
          "documentation": "<p>The status of the connection to the instance. For example, 'Connected' or 'Not Connected'.</p>"
        }
      }
    },
    "GetDefaultPatchBaselineRequest": {
      "type": "structure",
      "members": {
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Returns the default patch baseline for the specified operating system.</p>"
        }
      }
    },
    "GetDefaultPatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the default patch baseline.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system for the returned patch baseline. </p>"
        }
      }
    },
    "GetDeployablePatchSnapshotForInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "SnapshotId"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance for which the appropriate patch snapshot should be retrieved.</p>"
        },
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The user-defined snapshot ID.</p>"
        }
      }
    },
    "GetDeployablePatchSnapshotForInstanceResult": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance.</p>"
        },
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The user-defined snapshot ID.</p>"
        },
        "SnapshotDownloadUrl": {
          "shape": "SnapshotDownloadUrl",
          "documentation": "<p>A pre-signed Amazon S3 URL that can be used to download the patch snapshot.</p>"
        },
        "Product": {
          "shape": "Product",
          "documentation": "<p>Returns the specific operating system (for example Windows Server 2012 or Amazon Linux 2015.09) on the instance for the specified patch snapshot.</p>"
        }
      }
    },
    "GetDocumentRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>An optional field specifying the version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document and can't be changed.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version for which you want information.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>Returns the document in the specified format. The document format can be either JSON or YAML. JSON is the default format.</p>"
        }
      }
    },
    "GetDocumentResult": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>The version of the artifact associated with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version.</p>"
        },
        "Status": {
          "shape": "DocumentStatus",
          "documentation": "<p>The status of the Systems Manager document, such as <code>Creating</code>, <code>Active</code>, <code>Updating</code>, <code>Failed</code>, and <code>Deleting</code>.</p>"
        },
        "StatusInformation": {
          "shape": "DocumentStatusInformation",
          "documentation": "<p>A message returned by AWS Systems Manager that explains the <code>Status</code> value. For example, a <code>Failed</code> status might be explained by the <code>StatusInformation</code> message, \"The specified S3 bucket does not exist. Verify that the URL of the S3 bucket is correct.\"</p>"
        },
        "Content": {
          "shape": "DocumentContent",
          "documentation": "<p>The contents of the Systems Manager document.</p>"
        },
        "DocumentType": {
          "shape": "DocumentType",
          "documentation": "<p>The document type.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>The document format, either JSON or YAML.</p>"
        },
        "Requires": {
          "shape": "DocumentRequiresList",
          "documentation": "<p>A list of SSM documents required by a document. For example, an <code>ApplicationConfiguration</code> document requires an <code>ApplicationConfigurationSchema</code> document.</p>"
        },
        "AttachmentsContent": {
          "shape": "AttachmentContentList",
          "documentation": "<p>A description of the document attachments, including names, locations, sizes, and so on.</p>"
        }
      }
    },
    "GetInventoryRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "InventoryFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
        },
        "Aggregators": {
          "shape": "InventoryAggregatorList",
          "documentation": "<p>Returns counts of inventory types based on one or more expressions. For example, if you aggregate by using an expression that uses the <code>AWS:InstanceInformation.PlatformType</code> type, you can see a count of how many Windows and Linux instances exist in your inventoried fleet.</p>"
        },
        "ResultAttributes": {
          "shape": "ResultAttributeList",
          "documentation": "<p>The list of inventory item types to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "GetInventoryResult": {
      "type": "structure",
      "members": {
        "Entities": {
          "shape": "InventoryResultEntityList",
          "documentation": "<p>Collection of inventory entities such as a collection of instance inventory. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "GetInventorySchemaMaxResults": {
      "type": "integer",
      "max": 200,
      "min": 50
    },
    "GetInventorySchemaRequest": {
      "type": "structure",
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeNameFilter",
          "documentation": "<p>The type of inventory item to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "GetInventorySchemaMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "Aggregator": {
          "shape": "AggregatorSchemaOnly",
          "documentation": "<p>Returns inventory schemas that support aggregation. For example, this call returns the <code>AWS:InstanceInformation</code> type, because it supports aggregation based on the <code>PlatformName</code>, <code>PlatformType</code>, and <code>PlatformVersion</code> attributes.</p>"
        },
        "SubType": {
          "shape": "IsSubTypeSchema",
          "documentation": "<p>Returns the sub-type schema for a specified inventory type.</p>",
          "box": true
        }
      }
    },
    "GetInventorySchemaResult": {
      "type": "structure",
      "members": {
        "Schemas": {
          "shape": "InventoryItemSchemaResultList",
          "documentation": "<p>Inventory schemas returned by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that includes the task.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionResult": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution.</p>"
        },
        "TaskIds": {
          "shape": "MaintenanceWindowExecutionTaskIdList",
          "documentation": "<p>The ID of the task executions from the maintenance window execution.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The status of the maintenance window execution.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the Status. Only available for certain status values.</p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the maintenance window started running.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the maintenance window finished running.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionTaskInvocationRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId",
        "TaskId",
        "InvocationId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution for which the task is a part.</p>"
        },
        "TaskId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task in the maintenance window task that should be retrieved. </p>"
        },
        "InvocationId": {
          "shape": "MaintenanceWindowExecutionTaskInvocationId",
          "documentation": "<p>The invocation ID to retrieve.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionTaskInvocationResult": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The maintenance window execution ID.</p>"
        },
        "TaskExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The task execution ID.</p>"
        },
        "InvocationId": {
          "shape": "MaintenanceWindowExecutionTaskInvocationId",
          "documentation": "<p>The invocation ID.</p>"
        },
        "ExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskExecutionId",
          "documentation": "<p>The execution ID.</p>"
        },
        "TaskType": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>Retrieves the task type for a maintenance window. Task types include the following: LAMBDA, STEP_FUNCTIONS, AUTOMATION, RUN_COMMAND.</p>"
        },
        "Parameters": {
          "shape": "MaintenanceWindowExecutionTaskInvocationParameters",
          "documentation": "<p>The parameters used at the time that the task ran.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The task status for an invocation.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the status. Details are only available for certain status values.</p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the task started running on the target.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the task finished running on the target.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>User-provided value to be included in any CloudWatch events raised while running tasks for these targets in this maintenance window. </p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTaskTargetId",
          "documentation": "<p>The maintenance window target ID.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionTaskRequest": {
      "type": "structure",
      "required": [
        "WindowExecutionId",
        "TaskId"
      ],
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that includes the task.</p>"
        },
        "TaskId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task execution in the maintenance window task that should be retrieved.</p>"
        }
      }
    },
    "GetMaintenanceWindowExecutionTaskResult": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that includes the task.</p>"
        },
        "TaskExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task execution in the maintenance window task that was retrieved.</p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The ARN of the task that ran.</p>"
        },
        "ServiceRole": {
          "shape": "ServiceRole",
          "documentation": "<p>The role that was assumed when running the task.</p>"
        },
        "Type": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The type of task that was run.</p>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParametersList",
          "documentation": "<p>The parameters passed to the task when it was run.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note> <p>The map has the following format:</p> <p>Key: string, between 1 and 255 characters</p> <p>Value: an array of strings, each string is between 1 and 255 characters</p>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The priority of the task.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The defined maximum number of task executions that could be run in parallel.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The defined maximum number of task execution errors allowed before scheduling of the task execution would have been stopped.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The status of the task.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the Status. Only available for certain status values.</p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the task execution started.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the task execution completed.</p>"
        }
      }
    },
    "GetMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window for which you want to retrieve information.</p>"
        }
      }
    },
    "GetMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the created maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>The description of the maintenance window.</p>"
        },
        "StartDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.</p>"
        },
        "EndDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.</p>"
        },
        "Schedule": {
          "shape": "MaintenanceWindowSchedule",
          "documentation": "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
        },
        "ScheduleTimezone": {
          "shape": "MaintenanceWindowTimezone",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone Database</a> on the IANA website.</p>"
        },
        "ScheduleOffset": {
          "shape": "MaintenanceWindowOffset",
          "documentation": "<p>The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.</p>",
          "box": true
        },
        "NextExecutionTime": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The next time the maintenance window will actually run, taking into account any specified times for the maintenance window to become active or inactive.</p>"
        },
        "Duration": {
          "shape": "MaintenanceWindowDurationHours",
          "documentation": "<p>The duration of the maintenance window in hours.</p>"
        },
        "Cutoff": {
          "shape": "MaintenanceWindowCutoff",
          "documentation": "<p>The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.</p>"
        },
        "AllowUnassociatedTargets": {
          "shape": "MaintenanceWindowAllowUnassociatedTargets",
          "documentation": "<p>Whether targets must be registered with the maintenance window before tasks can be defined for those targets.</p>"
        },
        "Enabled": {
          "shape": "MaintenanceWindowEnabled",
          "documentation": "<p>Indicates whether the maintenance window is enabled.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the maintenance window was created.</p>"
        },
        "ModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the maintenance window was last modified.</p>"
        }
      }
    },
    "GetMaintenanceWindowTaskRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "WindowTaskId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The maintenance window ID that includes the task to retrieve.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The maintenance window task ID to retrieve.</p>"
        }
      }
    },
    "GetMaintenanceWindowTaskResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The retrieved maintenance window ID.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The retrieved maintenance window task ID.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets where the task should run.</p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The resource that the task used during execution. For RUN_COMMAND and AUTOMATION task types, the TaskArn is the Systems Manager Document name/ARN. For LAMBDA tasks, the value is the function name/ARN. For STEP_FUNCTIONS tasks, the value is the state machine ARN.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.</p>"
        },
        "TaskType": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The type of task to run.</p>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParameters",
          "documentation": "<p>The parameters to pass to the task when it runs.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "TaskInvocationParameters": {
          "shape": "MaintenanceWindowTaskInvocationParameters",
          "documentation": "<p>The parameters to pass to the task when it runs.</p>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The priority of the task when it runs. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run this task in parallel.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed before the task stops being scheduled.</p>"
        },
        "LoggingInfo": {
          "shape": "LoggingInfo",
          "documentation": "<p>The location in Amazon S3 where the task results are logged.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The retrieved task name.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>The retrieved task description.</p>"
        }
      }
    },
    "GetOpsItemRequest": {
      "type": "structure",
      "required": [
        "OpsItemId"
      ],
      "members": {
        "OpsItemId": {
          "shape": "OpsItemId",
          "documentation": "<p>The ID of the OpsItem that you want to get.</p>"
        }
      }
    },
    "GetOpsItemResponse": {
      "type": "structure",
      "members": {
        "OpsItem": {
          "shape": "OpsItem",
          "documentation": "<p>The OpsItem.</p>"
        }
      }
    },
    "GetOpsSummaryRequest": {
      "type": "structure",
      "members": {
        "SyncName": {
          "shape": "ResourceDataSyncName",
          "documentation": "<p>Specify the name of a resource data sync to get.</p>"
        },
        "Filters": {
          "shape": "OpsFilterList",
          "documentation": "<p>Optional filters used to scope down the returned OpsItems. </p>"
        },
        "Aggregators": {
          "shape": "OpsAggregatorList",
          "documentation": "<p>Optional aggregators that return counts of OpsItems based on one or more expressions.</p>"
        },
        "ResultAttributes": {
          "shape": "OpsResultAttributeList",
          "documentation": "<p>The OpsItem data type to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "GetOpsSummaryResult": {
      "type": "structure",
      "members": {
        "Entities": {
          "shape": "OpsEntityList",
          "documentation": "<p>The list of aggregated and filtered OpsItems.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "GetParameterHistoryRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The name of a parameter you want to query.</p>"
        },
        "WithDecryption": {
          "shape": "Boolean",
          "documentation": "<p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>",
          "box": true
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "GetParameterHistoryResult": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParameterHistoryList",
          "documentation": "<p>A list of parameters returned by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "GetParameterRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The name of the parameter you want to query.</p>"
        },
        "WithDecryption": {
          "shape": "Boolean",
          "documentation": "<p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>",
          "box": true
        }
      }
    },
    "GetParameterResult": {
      "type": "structure",
      "members": {
        "Parameter": {
          "shape": "Parameter",
          "documentation": "<p>Information about a parameter.</p>"
        }
      }
    },
    "GetParametersByPathMaxResults": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "GetParametersByPathRequest": {
      "type": "structure",
      "required": [
        "Path"
      ],
      "members": {
        "Path": {
          "shape": "PSParameterName",
          "documentation": "<p>The hierarchy for the parameter. Hierarchies start with a forward slash (/) and end with the parameter name. A parameter name hierarchy can have a maximum of 15 levels. Here is an example of a hierarchy: <code>/Finance/Prod/IAD/WinServ2016/license33</code> </p>"
        },
        "Recursive": {
          "shape": "Boolean",
          "documentation": "<p>Retrieve all parameters within a hierarchy.</p> <important> <p>If a user has access to a path, then the user can access all levels of that path. For example, if a user has permission to access path <code>/a</code>, then the user can also access <code>/a/b</code>. Even if a user has explicitly been denied access in IAM for parameter <code>/a/b</code>, they can still call the GetParametersByPath API action recursively for <code>/a</code> and view <code>/a/b</code>.</p> </important>",
          "box": true
        },
        "ParameterFilters": {
          "shape": "ParameterStringFilterList",
          "documentation": "<p>Filters to limit the request results.</p> <note> <p>For <code>GetParametersByPath</code>, the following filter <code>Key</code> names are supported: <code>Type</code>, <code>KeyId</code>, <code>Label</code>, and <code>DataType</code>.</p> <p>The following <code>Key</code> values are not supported for <code>GetParametersByPath</code>: <code>tag</code>, <code>Name</code>, <code>Path</code>, and <code>Tier</code>.</p> </note>"
        },
        "WithDecryption": {
          "shape": "Boolean",
          "documentation": "<p>Retrieve all parameters in a hierarchy with their value decrypted.</p>",
          "box": true
        },
        "MaxResults": {
          "shape": "GetParametersByPathMaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        }
      }
    },
    "GetParametersByPathResult": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParameterList",
          "documentation": "<p>A list of parameters found in the specified hierarchy.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "GetParametersRequest": {
      "type": "structure",
      "required": [
        "Names"
      ],
      "members": {
        "Names": {
          "shape": "ParameterNameList",
          "documentation": "<p>Names of the parameters for which you want to query information.</p>"
        },
        "WithDecryption": {
          "shape": "Boolean",
          "documentation": "<p>Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>",
          "box": true
        }
      }
    },
    "GetParametersResult": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParameterList",
          "documentation": "<p>A list of details for a parameter.</p>"
        },
        "InvalidParameters": {
          "shape": "ParameterNameList",
          "documentation": "<p>A list of parameters that are not formatted correctly or do not run during an execution.</p>"
        }
      }
    },
    "GetPatchBaselineForPatchGroupRequest": {
      "type": "structure",
      "required": [
        "PatchGroup"
      ],
      "members": {
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group whose patch baseline should be retrieved.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Returns he operating system rule specified for patch groups using the patch baseline.</p>"
        }
      }
    },
    "GetPatchBaselineForPatchGroupResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline that should be used for the patch group.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system rule specified for patch groups using the patch baseline.</p>"
        }
      }
    },
    "GetPatchBaselineRequest": {
      "type": "structure",
      "required": [
        "BaselineId"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to retrieve.</p>"
        }
      }
    },
    "GetPatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the retrieved patch baseline.</p>"
        },
        "Name": {
          "shape": "BaselineName",
          "documentation": "<p>The name of the patch baseline.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Returns the operating system specified for the patch baseline.</p>"
        },
        "GlobalFilters": {
          "shape": "PatchFilterGroup",
          "documentation": "<p>A set of global filters used to exclude patches from the baseline.</p>"
        },
        "ApprovalRules": {
          "shape": "PatchRuleGroup",
          "documentation": "<p>A set of rules used to include patches in the baseline.</p>"
        },
        "ApprovedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly approved patches for the baseline.</p>"
        },
        "ApprovedPatchesComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>Returns the specified compliance severity level for approved patches in the patch baseline.</p>"
        },
        "ApprovedPatchesEnableNonSecurity": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.</p>",
          "box": true
        },
        "RejectedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly rejected patches for the baseline.</p>"
        },
        "RejectedPatchesAction": {
          "shape": "PatchAction",
          "documentation": "<p>The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.</p>"
        },
        "PatchGroups": {
          "shape": "PatchGroupList",
          "documentation": "<p>Patch groups included in the patch baseline.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the patch baseline was created.</p>"
        },
        "ModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the patch baseline was last modified.</p>"
        },
        "Description": {
          "shape": "BaselineDescription",
          "documentation": "<p>A description of the patch baseline.</p>"
        },
        "Sources": {
          "shape": "PatchSourceList",
          "documentation": "<p>Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.</p>"
        }
      }
    },
    "GetServiceSettingRequest": {
      "type": "structure",
      "required": [
        "SettingId"
      ],
      "members": {
        "SettingId": {
          "shape": "ServiceSettingId",
          "documentation": "<p>The ID of the service setting to get. The setting ID can be <code>/ssm/parameter-store/default-parameter-tier</code>, <code>/ssm/parameter-store/high-throughput-enabled</code>, or <code>/ssm/managed-instance/activation-tier</code>.</p>"
        }
      },
      "documentation": "<p>The request body of the GetServiceSetting API action.</p>"
    },
    "GetServiceSettingResult": {
      "type": "structure",
      "members": {
        "ServiceSetting": {
          "shape": "ServiceSetting",
          "documentation": "<p>The query result of the current service setting.</p>"
        }
      },
      "documentation": "<p>The query result body of the GetServiceSetting API action.</p>"
    },
    "IPAddress": {
      "type": "string",
      "max": 46,
      "min": 1
    },
    "ISO8601String": {
      "type": "string"
    },
    "IamRole": {
      "type": "string",
      "max": 64
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"
    },
    "InstallOverrideList": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^https://.+$|^s3://([^/]+)/(.*?([^/]+))$"
    },
    "InstanceAggregatedAssociationOverview": {
      "type": "structure",
      "members": {
        "DetailedStatus": {
          "shape": "StatusName",
          "documentation": "<p>Detailed status information about the aggregated associations.</p>"
        },
        "InstanceAssociationStatusAggregatedCount": {
          "shape": "InstanceAssociationStatusAggregatedCount",
          "documentation": "<p>The number of associations for the instance(s).</p>"
        }
      },
      "documentation": "<p>Status information about the aggregated associations.</p>"
    },
    "InstanceAssociation": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID.</p>"
        },
        "Content": {
          "shape": "DocumentContent",
          "documentation": "<p>The content of the association document for the instance(s).</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>Version information for the association on the instance.</p>"
        }
      },
      "documentation": "<p>One or more association documents on the instance. </p>"
    },
    "InstanceAssociationExecutionSummary": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "InstanceAssociationList": {
      "type": "list",
      "member": {
        "shape": "InstanceAssociation"
      }
    },
    "InstanceAssociationOutputLocation": {
      "type": "structure",
      "members": {
        "S3Location": {
          "shape": "S3OutputLocation",
          "documentation": "<p>An S3 bucket where you want to store the results of this request.</p>"
        }
      },
      "documentation": "<p>An S3 bucket where you want to store the results of this request.</p>"
    },
    "InstanceAssociationOutputUrl": {
      "type": "structure",
      "members": {
        "S3OutputUrl": {
          "shape": "S3OutputUrl",
          "documentation": "<p>The URL of S3 bucket where you want to store the results of this request.</p>"
        }
      },
      "documentation": "<p>The URL of S3 bucket where you want to store the results of this request.</p>"
    },
    "InstanceAssociationStatusAggregatedCount": {
      "type": "map",
      "key": {
        "shape": "StatusName"
      },
      "value": {
        "shape": "InstanceCount"
      }
    },
    "InstanceAssociationStatusInfo": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID.</p>"
        },
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the association.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The association document versions.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>The version of the association applied to the instance.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID where the association was created.</p>"
        },
        "ExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the instance association ran. </p>"
        },
        "Status": {
          "shape": "StatusName",
          "documentation": "<p>Status information about the instance association.</p>"
        },
        "DetailedStatus": {
          "shape": "StatusName",
          "documentation": "<p>Detailed status information about the instance association.</p>"
        },
        "ExecutionSummary": {
          "shape": "InstanceAssociationExecutionSummary",
          "documentation": "<p>Summary information about association execution.</p>"
        },
        "ErrorCode": {
          "shape": "AgentErrorCode",
          "documentation": "<p>An error code returned by the request to create the association.</p>"
        },
        "OutputUrl": {
          "shape": "InstanceAssociationOutputUrl",
          "documentation": "<p>A URL for an S3 bucket where you want to store the results of this request.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>The name of the association applied to the instance.</p>"
        }
      },
      "documentation": "<p>Status information about the instance association.</p>"
    },
    "InstanceAssociationStatusInfos": {
      "type": "list",
      "member": {
        "shape": "InstanceAssociationStatusInfo"
      }
    },
    "InstanceCount": {
      "type": "integer"
    },
    "InstanceId": {
      "type": "string",
      "pattern": "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"
    },
    "InstanceIdList": {
      "type": "list",
      "member": {
        "shape": "InstanceId"
      },
      "max": 50,
      "min": 0
    },
    "InstanceInformation": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID. </p>"
        },
        "PingStatus": {
          "shape": "PingStatus",
          "documentation": "<p>Connection status of SSM Agent. </p>"
        },
        "LastPingDateTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time when agent last pinged Systems Manager service. </p>",
          "box": true
        },
        "AgentVersion": {
          "shape": "Version",
          "documentation": "<p>The version of SSM Agent running on your Linux instance. </p>"
        },
        "IsLatestVersion": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the latest version of SSM Agent is running on your Linux Managed Instance. This field does not indicate whether or not the latest version is installed on Windows managed instances, because some older versions of Windows Server use the EC2Config service to process SSM requests.</p>",
          "box": true
        },
        "PlatformType": {
          "shape": "PlatformType",
          "documentation": "<p>The operating system platform type. </p>"
        },
        "PlatformName": {
          "shape": "String",
          "documentation": "<p>The name of the operating system platform running on your instance. </p>"
        },
        "PlatformVersion": {
          "shape": "String",
          "documentation": "<p>The version of the OS platform running on your instance. </p>"
        },
        "ActivationId": {
          "shape": "ActivationId",
          "documentation": "<p>The activation ID created by Systems Manager when the server or VM was registered.</p>"
        },
        "IamRole": {
          "shape": "IamRole",
          "documentation": "<p>The Amazon Identity and Access Management (IAM) role assigned to the on-premises Systems Manager managed instance. This call does not return the IAM role for EC2 instances. To retrieve the IAM role for an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> action. For information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href=\"http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html\">describe-instances</a> in the <i>AWS CLI Command Reference</i>.</p>"
        },
        "RegistrationDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the server or VM was registered with AWS as a managed instance.</p>",
          "box": true
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of instance. Instances are either EC2 instances or managed instances. </p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name assigned to an on-premises server or virtual machine (VM) when it is activated as a Systems Manager managed instance. The name is specified as the <code>DefaultInstanceName</code> property using the <a>CreateActivation</a> command. It is applied to the managed instance by specifying the Activation Code and Activation ID when you install SSM Agent on the instance, as explained in <a href=\"http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html\">Install SSM Agent for a hybrid environment (Linux)</a> and <a href=\"http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html\">Install SSM Agent for a hybrid environment (Windows)</a>. To retrieve the Name tag of an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> action. For information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href=\"http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html\">describe-instances</a> in the <i>AWS CLI Command Reference</i>.</p>"
        },
        "IPAddress": {
          "shape": "IPAddress",
          "documentation": "<p>The IP address of the managed instance.</p>"
        },
        "ComputerName": {
          "shape": "ComputerName",
          "documentation": "<p>The fully qualified host name of the managed instance.</p>"
        },
        "AssociationStatus": {
          "shape": "StatusName",
          "documentation": "<p>The status of the association.</p>"
        },
        "LastAssociationExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the association was last run.</p>"
        },
        "LastSuccessfulAssociationExecutionDate": {
          "shape": "DateTime",
          "documentation": "<p>The last date the association was successfully run.</p>"
        },
        "AssociationOverview": {
          "shape": "InstanceAggregatedAssociationOverview",
          "documentation": "<p>Information about the association.</p>"
        }
      },
      "documentation": "<p>Describes a filter for a specific list of instances. </p>"
    },
    "InstanceInformationFilter": {
      "type": "structure",
      "required": [
        "key",
        "valueSet"
      ],
      "members": {
        "key": {
          "shape": "InstanceInformationFilterKey",
          "documentation": "<p>The name of the filter. </p>"
        },
        "valueSet": {
          "shape": "InstanceInformationFilterValueSet",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Describes a filter for a specific list of instances. You can filter instances information by using tags. You specify tags by using a key-value mapping.</p> <p>Use this action instead of the <a>DescribeInstanceInformationRequest$InstanceInformationFilterList</a> method. The <code>InstanceInformationFilterList</code> method is a legacy method and does not support tags. </p>"
    },
    "InstanceInformationFilterKey": {
      "type": "string",
      "enum": [
        "InstanceIds",
        "AgentVersion",
        "PingStatus",
        "PlatformTypes",
        "ActivationIds",
        "IamRole",
        "ResourceType",
        "AssociationStatus"
      ]
    },
    "InstanceInformationFilterList": {
      "type": "list",
      "member": {
        "shape": "InstanceInformationFilter"
      },
      "min": 0
    },
    "InstanceInformationFilterValue": {
      "type": "string",
      "min": 1
    },
    "InstanceInformationFilterValueSet": {
      "type": "list",
      "member": {
        "shape": "InstanceInformationFilterValue"
      },
      "max": 100,
      "min": 1
    },
    "InstanceInformationList": {
      "type": "list",
      "member": {
        "shape": "InstanceInformation"
      }
    },
    "InstanceInformationStringFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "InstanceInformationStringFilterKey",
          "documentation": "<p>The filter key name to describe your instances. For example:</p> <p>\"InstanceIds\"|\"AgentVersion\"|\"PingStatus\"|\"PlatformTypes\"|\"ActivationIds\"|\"IamRole\"|\"ResourceType\"|\"AssociationStatus\"|\"Tag Key\"</p>"
        },
        "Values": {
          "shape": "InstanceInformationFilterValueSet",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>The filters to describe or get information about your managed instances.</p>"
    },
    "InstanceInformationStringFilterKey": {
      "type": "string",
      "min": 1
    },
    "InstanceInformationStringFilterList": {
      "type": "list",
      "member": {
        "shape": "InstanceInformationStringFilter"
      },
      "min": 0
    },
    "InstancePatchState": {
      "type": "structure",
      "required": [
        "InstanceId",
        "PatchGroup",
        "BaselineId",
        "OperationStartTime",
        "OperationEndTime",
        "Operation"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the managed instance the high-level patch compliance information was collected for.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group the managed instance belongs to.</p>"
        },
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline used to patch the instance.</p>"
        },
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the patch baseline snapshot used during the patching operation when this compliance data was collected.</p>"
        },
        "InstallOverrideList": {
          "shape": "InstallOverrideList",
          "documentation": "<p>An https URL or an Amazon S3 path-style URL to a list of patches to be installed. This patch installation list, which you maintain in an S3 bucket in YAML format and specify in the SSM document <code>AWS-RunPatchBaseline</code>, overrides the patches specified by the default patch baseline.</p> <p>For more information about the <code>InstallOverrideList</code> parameter, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-about-aws-runpatchbaseline.html\">About the SSM document AWS-RunPatchBaseline</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>Placeholder information. This field will always be empty in the current release of the service.</p>"
        },
        "InstalledCount": {
          "shape": "PatchInstalledCount",
          "documentation": "<p>The number of patches from the patch baseline that are installed on the instance.</p>"
        },
        "InstalledOtherCount": {
          "shape": "PatchInstalledOtherCount",
          "documentation": "<p>The number of patches not specified in the patch baseline that are installed on the instance.</p>"
        },
        "InstalledPendingRebootCount": {
          "shape": "PatchInstalledPendingRebootCount",
          "documentation": "<p>The number of patches installed by Patch Manager since the last time the instance was rebooted.</p>",
          "box": true
        },
        "InstalledRejectedCount": {
          "shape": "PatchInstalledRejectedCount",
          "documentation": "<p>The number of patches installed on an instance that are specified in a <code>RejectedPatches</code> list. Patches with a status of <i>InstalledRejected</i> were typically installed before they were added to a <code>RejectedPatches</code> list.</p> <note> <p>If <code>ALLOW_AS_DEPENDENCY</code> is the specified option for <code>RejectedPatchesAction</code>, the value of <code>InstalledRejectedCount</code> will always be <code>0</code> (zero).</p> </note>",
          "box": true
        },
        "MissingCount": {
          "shape": "PatchMissingCount",
          "documentation": "<p>The number of patches from the patch baseline that are applicable for the instance but aren't currently installed.</p>"
        },
        "FailedCount": {
          "shape": "PatchFailedCount",
          "documentation": "<p>The number of patches from the patch baseline that were attempted to be installed during the last patching operation, but failed to install.</p>"
        },
        "UnreportedNotApplicableCount": {
          "shape": "PatchUnreportedNotApplicableCount",
          "documentation": "<p>The number of patches beyond the supported limit of <code>NotApplicableCount</code> that are not reported by name to Systems Manager Inventory.</p>",
          "box": true
        },
        "NotApplicableCount": {
          "shape": "PatchNotApplicableCount",
          "documentation": "<p>The number of patches from the patch baseline that aren't applicable for the instance and therefore aren't installed on the instance. This number may be truncated if the list of patch names is very large. The number of patches beyond this limit are reported in <code>UnreportedNotApplicableCount</code>.</p>"
        },
        "OperationStartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the most recent patching operation was started on the instance.</p>"
        },
        "OperationEndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the most recent patching operation completed on the instance.</p>"
        },
        "Operation": {
          "shape": "PatchOperationType",
          "documentation": "<p>The type of patching operation that was performed: <code>SCAN</code> (assess patch compliance state) or <code>INSTALL</code> (install missing patches).</p>"
        },
        "LastNoRebootInstallOperationTime": {
          "shape": "DateTime",
          "documentation": "<p>The time of the last attempt to patch the instance with <code>NoReboot</code> specified as the reboot option.</p>"
        },
        "RebootOption": {
          "shape": "RebootOption",
          "documentation": "<p>Indicates the reboot option specified in the patch baseline.</p> <note> <p>Reboot options apply to <code>Install</code> operations only. Reboots are not attempted for Patch Manager <code>Scan</code> operations.</p> </note> <ul> <li> <p> <b>RebootIfNeeded</b>: Patch Manager tries to reboot the instance if it installed any patches, or if any patches are detected with a status of <code>InstalledPendingReboot</code>.</p> </li> <li> <p> <b>NoReboot</b>: Patch Manager attempts to install missing packages without trying to reboot the system. Patches installed with this option are assigned a status of <code>InstalledPendingReboot</code>. These patches might not be in effect until a reboot is performed.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Defines the high-level patch compliance state for a managed instance, providing information about the number of installed, missing, not applicable, and failed patches along with metadata about the operation when this information was gathered for the instance.</p>"
    },
    "InstancePatchStateFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values",
        "Type"
      ],
      "members": {
        "Key": {
          "shape": "InstancePatchStateFilterKey",
          "documentation": "<p>The key for the filter. Supported values are FailedCount, InstalledCount, InstalledOtherCount, MissingCount and NotApplicableCount.</p>"
        },
        "Values": {
          "shape": "InstancePatchStateFilterValues",
          "documentation": "<p>The value for the filter, must be an integer greater than or equal to 0.</p>"
        },
        "Type": {
          "shape": "InstancePatchStateOperatorType",
          "documentation": "<p>The type of comparison that should be performed for the value: Equal, NotEqual, LessThan or GreaterThan.</p>"
        }
      },
      "documentation": "<p>Defines a filter used in <a>DescribeInstancePatchStatesForPatchGroup</a> used to scope down the information returned by the API.</p>"
    },
    "InstancePatchStateFilterKey": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "InstancePatchStateFilterList": {
      "type": "list",
      "member": {
        "shape": "InstancePatchStateFilter"
      },
      "max": 4,
      "min": 0
    },
    "InstancePatchStateFilterValue": {
      "type": "string"
    },
    "InstancePatchStateFilterValues": {
      "type": "list",
      "member": {
        "shape": "InstancePatchStateFilterValue"
      },
      "max": 1,
      "min": 1
    },
    "InstancePatchStateList": {
      "type": "list",
      "member": {
        "shape": "InstancePatchState"
      }
    },
    "InstancePatchStateOperatorType": {
      "type": "string",
      "enum": [
        "Equal",
        "NotEqual",
        "LessThan",
        "GreaterThan"
      ]
    },
    "InstancePatchStatesList": {
      "type": "list",
      "member": {
        "shape": "InstancePatchState"
      },
      "max": 5,
      "min": 1
    },
    "InstanceTagName": {
      "type": "string",
      "max": 255
    },
    "InstancesCount": {
      "type": "integer"
    },
    "Integer": {
      "type": "integer"
    },
    "InventoryAggregator": {
      "type": "structure",
      "members": {
        "Expression": {
          "shape": "InventoryAggregatorExpression",
          "documentation": "<p>The inventory type and attribute name for aggregation.</p>"
        },
        "Aggregators": {
          "shape": "InventoryAggregatorList",
          "documentation": "<p>Nested aggregators to further refine aggregation for an inventory type.</p>"
        },
        "Groups": {
          "shape": "InventoryGroupList",
          "documentation": "<p>A user-defined set of one or more filters on which to aggregate inventory data. Groups return a count of resources that match and don't match the specified criteria.</p>"
        }
      },
      "documentation": "<p>Specifies the inventory type and attribute for the aggregation execution.</p>"
    },
    "InventoryAggregatorExpression": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "InventoryAggregatorList": {
      "type": "list",
      "member": {
        "shape": "InventoryAggregator"
      },
      "max": 10,
      "min": 1
    },
    "InventoryAttributeDataType": {
      "type": "string",
      "enum": [
        "string",
        "number"
      ]
    },
    "InventoryDeletionLastStatusMessage": {
      "type": "string"
    },
    "InventoryDeletionLastStatusUpdateTime": {
      "type": "timestamp"
    },
    "InventoryDeletionStartTime": {
      "type": "timestamp"
    },
    "InventoryDeletionStatus": {
      "type": "string",
      "enum": [
        "InProgress",
        "Complete"
      ]
    },
    "InventoryDeletionStatusItem": {
      "type": "structure",
      "members": {
        "DeletionId": {
          "shape": "UUID",
          "documentation": "<p>The deletion ID returned by the <code>DeleteInventory</code> action.</p>"
        },
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the inventory data type.</p>"
        },
        "DeletionStartTime": {
          "shape": "InventoryDeletionStartTime",
          "documentation": "<p>The UTC timestamp when the delete operation started.</p>"
        },
        "LastStatus": {
          "shape": "InventoryDeletionStatus",
          "documentation": "<p>The status of the operation. Possible values are InProgress and Complete.</p>"
        },
        "LastStatusMessage": {
          "shape": "InventoryDeletionLastStatusMessage",
          "documentation": "<p>Information about the status.</p>"
        },
        "DeletionSummary": {
          "shape": "InventoryDeletionSummary",
          "documentation": "<p>Information about the delete operation. For more information about this summary, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete\">Understanding the delete inventory summary</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "LastStatusUpdateTime": {
          "shape": "InventoryDeletionLastStatusUpdateTime",
          "documentation": "<p>The UTC timestamp of when the last status report.</p>"
        }
      },
      "documentation": "<p>Status information returned by the <code>DeleteInventory</code> action.</p>"
    },
    "InventoryDeletionSummary": {
      "type": "structure",
      "members": {
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of items to delete. This count does not change during the delete operation.</p>"
        },
        "RemainingCount": {
          "shape": "RemainingCount",
          "documentation": "<p>Remaining number of items to delete.</p>"
        },
        "SummaryItems": {
          "shape": "InventoryDeletionSummaryItems",
          "documentation": "<p>A list of counts and versions for deleted items.</p>"
        }
      },
      "documentation": "<p>Information about the delete operation.</p>"
    },
    "InventoryDeletionSummaryItem": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "InventoryItemSchemaVersion",
          "documentation": "<p>The inventory type version.</p>"
        },
        "Count": {
          "shape": "ResourceCount",
          "documentation": "<p>A count of the number of deleted items.</p>"
        },
        "RemainingCount": {
          "shape": "RemainingCount",
          "documentation": "<p>The remaining number of items to delete.</p>"
        }
      },
      "documentation": "<p>Either a count, remaining count, or a version number in a delete inventory summary.</p>"
    },
    "InventoryDeletionSummaryItems": {
      "type": "list",
      "member": {
        "shape": "InventoryDeletionSummaryItem"
      }
    },
    "InventoryDeletionsList": {
      "type": "list",
      "member": {
        "shape": "InventoryDeletionStatusItem"
      }
    },
    "InventoryFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "InventoryFilterKey",
          "documentation": "<p>The name of the filter key.</p>"
        },
        "Values": {
          "shape": "InventoryFilterValueList",
          "documentation": "<p>Inventory filter values. Example: inventory filter where instance IDs are specified as values Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g, i-1a2b3c4d5e6,Type=Equal </p>"
        },
        "Type": {
          "shape": "InventoryQueryOperatorType",
          "documentation": "<p>The type of filter.</p> <note> <p>The <code>Exists</code> filter must be used with aggregators. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-aggregate.html\">Aggregating inventory data</a> in the <i>AWS Systems Manager User Guide</i>.</p> </note>"
        }
      },
      "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    },
    "InventoryFilterKey": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "InventoryFilterList": {
      "type": "list",
      "member": {
        "shape": "InventoryFilter"
      },
      "max": 5,
      "min": 1
    },
    "InventoryFilterValue": {
      "type": "string"
    },
    "InventoryFilterValueList": {
      "type": "list",
      "member": {
        "shape": "InventoryFilterValue"
      },
      "max": 40,
      "min": 1
    },
    "InventoryGroup": {
      "type": "structure",
      "required": [
        "Name",
        "Filters"
      ],
      "members": {
        "Name": {
          "shape": "InventoryGroupName",
          "documentation": "<p>The name of the group.</p>"
        },
        "Filters": {
          "shape": "InventoryFilterList",
          "documentation": "<p>Filters define the criteria for the group. The <code>matchingCount</code> field displays the number of resources that match the criteria. The <code>notMatchingCount</code> field displays the number of resources that don't match the criteria. </p>"
        }
      },
      "documentation": "<p>A user-defined set of one or more filters on which to aggregate inventory data. Groups return a count of resources that match and don't match the specified criteria.</p>"
    },
    "InventoryGroupList": {
      "type": "list",
      "member": {
        "shape": "InventoryGroup"
      },
      "max": 15,
      "min": 1
    },
    "InventoryGroupName": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "InventoryItem": {
      "type": "structure",
      "required": [
        "TypeName",
        "SchemaVersion",
        "CaptureTime"
      ],
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>"
        },
        "SchemaVersion": {
          "shape": "InventoryItemSchemaVersion",
          "documentation": "<p>The schema version for the inventory item.</p>"
        },
        "CaptureTime": {
          "shape": "InventoryItemCaptureTime",
          "documentation": "<p>The time the inventory information was collected.</p>"
        },
        "ContentHash": {
          "shape": "InventoryItemContentHash",
          "documentation": "<p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>"
        },
        "Content": {
          "shape": "InventoryItemEntryList",
          "documentation": "<p>The inventory data of the inventory type.</p>"
        },
        "Context": {
          "shape": "InventoryItemContentContext",
          "documentation": "<p>A map of associated properties for a specified inventory type. For example, with this attribute, you can specify the <code>ExecutionId</code>, <code>ExecutionType</code>, <code>ComplianceType</code> properties of the <code>AWS:ComplianceItem</code> type.</p>"
        }
      },
      "documentation": "<p>Information collected from managed instances based on your inventory policy document</p>"
    },
    "InventoryItemAttribute": {
      "type": "structure",
      "required": [
        "Name",
        "DataType"
      ],
      "members": {
        "Name": {
          "shape": "InventoryItemAttributeName",
          "documentation": "<p>Name of the inventory item attribute.</p>"
        },
        "DataType": {
          "shape": "InventoryAttributeDataType",
          "documentation": "<p>The data type of the inventory item attribute. </p>"
        }
      },
      "documentation": "<p>Attributes are the entries within the inventory item content. It contains name and value.</p>"
    },
    "InventoryItemAttributeList": {
      "type": "list",
      "member": {
        "shape": "InventoryItemAttribute"
      },
      "max": 50,
      "min": 1
    },
    "InventoryItemAttributeName": {
      "type": "string"
    },
    "InventoryItemCaptureTime": {
      "type": "string",
      "pattern": "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"
    },
    "InventoryItemContentContext": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "max": 50,
      "min": 0
    },
    "InventoryItemContentHash": {
      "type": "string",
      "max": 256
    },
    "InventoryItemEntry": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "max": 50,
      "min": 0
    },
    "InventoryItemEntryList": {
      "type": "list",
      "member": {
        "shape": "InventoryItemEntry"
      },
      "max": 10000,
      "min": 0
    },
    "InventoryItemList": {
      "type": "list",
      "member": {
        "shape": "InventoryItem"
      },
      "max": 30,
      "min": 1
    },
    "InventoryItemSchema": {
      "type": "structure",
      "required": [
        "TypeName",
        "Attributes"
      ],
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>"
        },
        "Version": {
          "shape": "InventoryItemSchemaVersion",
          "documentation": "<p>The schema version for the inventory item.</p>"
        },
        "Attributes": {
          "shape": "InventoryItemAttributeList",
          "documentation": "<p>The schema attributes for inventory. This contains data type and attribute name.</p>"
        },
        "DisplayName": {
          "shape": "InventoryTypeDisplayName",
          "documentation": "<p>The alias name of the inventory type. The alias name is used for display purposes.</p>"
        }
      },
      "documentation": "<p>The inventory item schema definition. Users can use this to compose inventory query filters.</p>"
    },
    "InventoryItemSchemaResultList": {
      "type": "list",
      "member": {
        "shape": "InventoryItemSchema"
      }
    },
    "InventoryItemSchemaVersion": {
      "type": "string",
      "pattern": "^([0-9]{1,6})(\\.[0-9]{1,6})$"
    },
    "InventoryItemTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^(AWS|Custom):.*$"
    },
    "InventoryItemTypeNameFilter": {
      "type": "string",
      "max": 100,
      "min": 0
    },
    "InventoryQueryOperatorType": {
      "type": "string",
      "enum": [
        "Equal",
        "NotEqual",
        "BeginWith",
        "LessThan",
        "GreaterThan",
        "Exists"
      ]
    },
    "InventoryResultEntity": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "InventoryResultEntityId",
          "documentation": "<p>ID of the inventory result entity. For example, for managed instance inventory the result will be the managed instance ID. For EC2 instance inventory, the result will be the instance ID. </p>"
        },
        "Data": {
          "shape": "InventoryResultItemMap",
          "documentation": "<p>The data section in the inventory result entity JSON.</p>"
        }
      },
      "documentation": "<p>Inventory query results.</p>"
    },
    "InventoryResultEntityId": {
      "type": "string"
    },
    "InventoryResultEntityList": {
      "type": "list",
      "member": {
        "shape": "InventoryResultEntity"
      }
    },
    "InventoryResultItem": {
      "type": "structure",
      "required": [
        "TypeName",
        "SchemaVersion",
        "Content"
      ],
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The name of the inventory result item type.</p>"
        },
        "SchemaVersion": {
          "shape": "InventoryItemSchemaVersion",
          "documentation": "<p>The schema version for the inventory result item/</p>"
        },
        "CaptureTime": {
          "shape": "InventoryItemCaptureTime",
          "documentation": "<p>The time inventory item data was captured.</p>"
        },
        "ContentHash": {
          "shape": "InventoryItemContentHash",
          "documentation": "<p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>"
        },
        "Content": {
          "shape": "InventoryItemEntryList",
          "documentation": "<p>Contains all the inventory data of the item type. Results include attribute names and values. </p>"
        }
      },
      "documentation": "<p>The inventory result item.</p>"
    },
    "InventoryResultItemKey": {
      "type": "string"
    },
    "InventoryResultItemMap": {
      "type": "map",
      "key": {
        "shape": "InventoryResultItemKey"
      },
      "value": {
        "shape": "InventoryResultItem"
      }
    },
    "InventorySchemaDeleteOption": {
      "type": "string",
      "enum": [
        "DisableSchema",
        "DeleteSchema"
      ]
    },
    "InventoryTypeDisplayName": {
      "type": "string"
    },
    "InvocationTraceOutput": {
      "type": "string",
      "max": 2500
    },
    "IsSubTypeSchema": {
      "type": "boolean"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "LabelParameterVersionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Labels"
      ],
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The parameter name on which you want to attach one or more labels.</p>"
        },
        "ParameterVersion": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The specific version of the parameter on which you want to attach one or more labels. If no version is specified, the system attaches the label to the latest version.</p>",
          "box": true
        },
        "Labels": {
          "shape": "ParameterLabelList",
          "documentation": "<p>One or more labels to attach to the specified parameter version.</p>"
        }
      }
    },
    "LabelParameterVersionResult": {
      "type": "structure",
      "members": {
        "InvalidLabels": {
          "shape": "ParameterLabelList",
          "documentation": "<p>The label does not meet the requirements. For information about parameter label requirements, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html\">Labeling parameters</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "ParameterVersion": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The version of the parameter that has been labeled.</p>"
        }
      }
    },
    "LastResourceDataSyncMessage": {
      "type": "string"
    },
    "LastResourceDataSyncStatus": {
      "type": "string",
      "enum": [
        "Successful",
        "Failed",
        "InProgress"
      ]
    },
    "LastResourceDataSyncTime": {
      "type": "timestamp"
    },
    "LastSuccessfulResourceDataSyncTime": {
      "type": "timestamp"
    },
    "ListAssociationVersionsRequest": {
      "type": "structure",
      "required": [
        "AssociationId"
      ],
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The association ID for which you want to view all versions.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        }
      }
    },
    "ListAssociationVersionsResult": {
      "type": "structure",
      "members": {
        "AssociationVersions": {
          "shape": "AssociationVersionList",
          "documentation": "<p>Information about all versions of the association for the specified association ID.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "ListAssociationsRequest": {
      "type": "structure",
      "members": {
        "AssociationFilterList": {
          "shape": "AssociationFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "ListAssociationsResult": {
      "type": "structure",
      "members": {
        "Associations": {
          "shape": "AssociationList",
          "documentation": "<p>The associations.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "ListCommandInvocationsRequest": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>(Optional) The invocations for a specific command ID.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>(Optional) The command execution details for a specific instance ID.</p>"
        },
        "MaxResults": {
          "shape": "CommandMaxResults",
          "documentation": "<p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "Filters": {
          "shape": "CommandFilterList",
          "documentation": "<p>(Optional) One or more filters. Use a filter to return a more specific list of results.</p>"
        },
        "Details": {
          "shape": "Boolean",
          "documentation": "<p>(Optional) If set this returns the response of the command executions and any command output. By default this is set to False. </p>"
        }
      }
    },
    "ListCommandInvocationsResult": {
      "type": "structure",
      "members": {
        "CommandInvocations": {
          "shape": "CommandInvocationList",
          "documentation": "<p>(Optional) A list of all invocations. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "ListCommandsRequest": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "CommandId",
          "documentation": "<p>(Optional) If provided, lists only the specified command.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>(Optional) Lists commands issued against this instance ID.</p> <note> <p>You can't specify an instance ID in the same command that you specify <code>Status</code> = <code>Pending</code>. This is because the command has not reached the instance yet.</p> </note>"
        },
        "MaxResults": {
          "shape": "CommandMaxResults",
          "documentation": "<p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "Filters": {
          "shape": "CommandFilterList",
          "documentation": "<p>(Optional) One or more filters. Use a filter to return a more specific list of results. </p>"
        }
      }
    },
    "ListCommandsResult": {
      "type": "structure",
      "members": {
        "Commands": {
          "shape": "CommandList",
          "documentation": "<p>(Optional) The list of commands requested by the user. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "ListComplianceItemsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ComplianceStringFilterList",
          "documentation": "<p>One or more compliance filters. Use a filter to return a more specific list of results.</p>"
        },
        "ResourceIds": {
          "shape": "ComplianceResourceIdList",
          "documentation": "<p>The ID for the resources from which to get compliance information. Currently, you can only specify one resource ID.</p>"
        },
        "ResourceTypes": {
          "shape": "ComplianceResourceTypeList",
          "documentation": "<p>The type of resource from which to get compliance information. Currently, the only supported resource type is <code>ManagedInstance</code>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "ListComplianceItemsResult": {
      "type": "structure",
      "members": {
        "ComplianceItems": {
          "shape": "ComplianceItemList",
          "documentation": "<p>A list of compliance information for the specified resource ID. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "ListComplianceSummariesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ComplianceStringFilterList",
          "documentation": "<p>One or more compliance or inventory filters. Use a filter to return a more specific list of results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. Currently, you can specify null or 50. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "ListComplianceSummariesResult": {
      "type": "structure",
      "members": {
        "ComplianceSummaryItems": {
          "shape": "ComplianceSummaryItemList",
          "documentation": "<p>A list of compliant and non-compliant summary counts based on compliance types. For example, this call returns State Manager associations, patches, or custom compliance types according to the filter criteria that you specified.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "ListDocumentVersionsRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the document. You can specify an Amazon Resource Name (ARN).</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "ListDocumentVersionsResult": {
      "type": "structure",
      "members": {
        "DocumentVersions": {
          "shape": "DocumentVersionList",
          "documentation": "<p>The document versions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "ListDocumentsRequest": {
      "type": "structure",
      "members": {
        "DocumentFilterList": {
          "shape": "DocumentFilterList",
          "documentation": "<p>This data type is deprecated. Instead, use <code>Filters</code>.</p>"
        },
        "Filters": {
          "shape": "DocumentKeyValuesFilterList",
          "documentation": "<p>One or more DocumentKeyValuesFilter objects. Use a filter to return a more specific list of results. For keys, you can specify one or more key-value pair tags that have been applied to a document. Other valid keys include <code>Owner</code>, <code>Name</code>, <code>PlatformTypes</code>, <code>DocumentType</code>, and <code>TargetType</code>. For example, to return documents you own use <code>Key=Owner,Values=Self</code>. To specify a custom key-value pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        }
      }
    },
    "ListDocumentsResult": {
      "type": "structure",
      "members": {
        "DocumentIdentifiers": {
          "shape": "DocumentIdentifierList",
          "documentation": "<p>The names of the Systems Manager documents.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "ListInventoryEntriesRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "TypeName"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID for which you want inventory information.</p>"
        },
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The type of inventory item for which you want information.</p>"
        },
        "Filters": {
          "shape": "InventoryFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. (You received this token from a previous call.)</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "ListInventoryEntriesResult": {
      "type": "structure",
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>The type of inventory item returned by the request.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID targeted by the request to query inventory information.</p>"
        },
        "SchemaVersion": {
          "shape": "InventoryItemSchemaVersion",
          "documentation": "<p>The inventory schema version used by the instance(s).</p>"
        },
        "CaptureTime": {
          "shape": "InventoryItemCaptureTime",
          "documentation": "<p>The time that inventory information was collected for the instance(s).</p>"
        },
        "Entries": {
          "shape": "InventoryItemEntryList",
          "documentation": "<p>A list of inventory items on the instance(s).</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>"
        }
      }
    },
    "ListResourceComplianceSummariesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ComplianceStringFilterList",
          "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "ListResourceComplianceSummariesResult": {
      "type": "structure",
      "members": {
        "ResourceComplianceSummaryItems": {
          "shape": "ResourceComplianceSummaryItemList",
          "documentation": "<p>A summary count for specified or targeted managed instances. Summary count includes information about compliant and non-compliant State Manager associations, patch status, or custom items according to the filter criteria that you specify. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "ListResourceDataSyncRequest": {
      "type": "structure",
      "members": {
        "SyncType": {
          "shape": "ResourceDataSyncType",
          "documentation": "<p>View a list of resource data syncs according to the sync type. Specify <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3 buckets. Specify <code>SyncFromSource</code> to view resource data syncs from AWS Organizations or from multiple AWS Regions. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>",
          "box": true
        }
      }
    },
    "ListResourceDataSyncResult": {
      "type": "structure",
      "members": {
        "ResourceDataSyncItems": {
          "shape": "ResourceDataSyncItemList",
          "documentation": "<p>A list of your current Resource Data Sync configurations and their statuses.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of items to return. Use this token to get the next set of results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ResourceId"
      ],
      "members": {
        "ResourceType": {
          "shape": "ResourceTypeForTagging",
          "documentation": "<p>Returns a list of tags for a specific resource type.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource ID for which you want to see a list of tags.</p>"
        }
      }
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>A list of tags.</p>"
        }
      }
    },
    "LoggingInfo": {
      "type": "structure",
      "required": [
        "S3BucketName",
        "S3Region"
      ],
      "members": {
        "S3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of an S3 bucket where execution logs are stored .</p>"
        },
        "S3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>(Optional) The S3 bucket subfolder. </p>"
        },
        "S3Region": {
          "shape": "S3Region",
          "documentation": "<p>The Region where the S3 bucket is located.</p>"
        }
      },
      "documentation": "<p>Information about an S3 bucket to write instance-level logs to.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
    },
    "Long": {
      "type": "long"
    },
    "MaintenanceWindowAllowUnassociatedTargets": {
      "type": "boolean"
    },
    "MaintenanceWindowAutomationParameters": {
      "type": "structure",
      "members": {
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of an Automation document to use during task execution.</p>"
        },
        "Parameters": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>The parameters for the AUTOMATION task.</p> <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p>For AUTOMATION task types, Systems Manager ignores any values specified for these parameters.</p> </note>"
        }
      },
      "documentation": "<p>The parameters for an AUTOMATION task type.</p>"
    },
    "MaintenanceWindowCutoff": {
      "type": "integer",
      "max": 23,
      "min": 0
    },
    "MaintenanceWindowDescription": {
      "type": "string",
      "max": 128,
      "min": 1,
      "sensitive": true
    },
    "MaintenanceWindowDurationHours": {
      "type": "integer",
      "max": 24,
      "min": 1
    },
    "MaintenanceWindowEnabled": {
      "type": "boolean"
    },
    "MaintenanceWindowExecution": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window.</p>"
        },
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The status of the execution.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the Status. Only available for certain status values.</p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution started.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the execution finished.</p>"
        }
      },
      "documentation": "<p>Describes the information about an execution of a maintenance window. </p>"
    },
    "MaintenanceWindowExecutionId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"
    },
    "MaintenanceWindowExecutionList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowExecution"
      }
    },
    "MaintenanceWindowExecutionStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "IN_PROGRESS",
        "SUCCESS",
        "FAILED",
        "TIMED_OUT",
        "CANCELLING",
        "CANCELLED",
        "SKIPPED_OVERLAPPING"
      ]
    },
    "MaintenanceWindowExecutionStatusDetails": {
      "type": "string",
      "max": 250,
      "min": 0
    },
    "MaintenanceWindowExecutionTaskExecutionId": {
      "type": "string"
    },
    "MaintenanceWindowExecutionTaskId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"
    },
    "MaintenanceWindowExecutionTaskIdList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowExecutionTaskId"
      }
    },
    "MaintenanceWindowExecutionTaskIdentity": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that ran the task.</p>"
        },
        "TaskExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task execution in the maintenance window execution.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The status of the task execution.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the status of the task execution. Only available for certain status values.</p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the task execution started.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the task execution finished.</p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The ARN of the task that ran.</p>"
        },
        "TaskType": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The type of task that ran.</p>"
        }
      },
      "documentation": "<p>Information about a task execution performed as part of a maintenance window execution.</p>"
    },
    "MaintenanceWindowExecutionTaskIdentityList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowExecutionTaskIdentity"
      }
    },
    "MaintenanceWindowExecutionTaskInvocationId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"
    },
    "MaintenanceWindowExecutionTaskInvocationIdentity": {
      "type": "structure",
      "members": {
        "WindowExecutionId": {
          "shape": "MaintenanceWindowExecutionId",
          "documentation": "<p>The ID of the maintenance window execution that ran the task.</p>"
        },
        "TaskExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskId",
          "documentation": "<p>The ID of the specific task execution in the maintenance window execution.</p>"
        },
        "InvocationId": {
          "shape": "MaintenanceWindowExecutionTaskInvocationId",
          "documentation": "<p>The ID of the task invocation.</p>"
        },
        "ExecutionId": {
          "shape": "MaintenanceWindowExecutionTaskExecutionId",
          "documentation": "<p>The ID of the action performed in the service that actually handled the task invocation. If the task type is RUN_COMMAND, this value is the command ID.</p>"
        },
        "TaskType": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The task type.</p>"
        },
        "Parameters": {
          "shape": "MaintenanceWindowExecutionTaskInvocationParameters",
          "documentation": "<p>The parameters that were provided for the invocation when it was run.</p>"
        },
        "Status": {
          "shape": "MaintenanceWindowExecutionStatus",
          "documentation": "<p>The status of the task invocation.</p>"
        },
        "StatusDetails": {
          "shape": "MaintenanceWindowExecutionStatusDetails",
          "documentation": "<p>The details explaining the status of the task invocation. Only available for certain Status values. </p>"
        },
        "StartTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the invocation started.</p>"
        },
        "EndTime": {
          "shape": "DateTime",
          "documentation": "<p>The time the invocation finished.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>User-provided value that was specified when the target was registered with the maintenance window. This was also included in any CloudWatch events raised during the task invocation.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTaskTargetId",
          "documentation": "<p>The ID of the target definition in this maintenance window the invocation was performed for.</p>"
        }
      },
      "documentation": "<p>Describes the information about a task invocation for a particular target as part of a task execution performed as part of a maintenance window execution.</p>"
    },
    "MaintenanceWindowExecutionTaskInvocationIdentityList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowExecutionTaskInvocationIdentity"
      }
    },
    "MaintenanceWindowExecutionTaskInvocationParameters": {
      "type": "string",
      "sensitive": true
    },
    "MaintenanceWindowFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "MaintenanceWindowFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "Values": {
          "shape": "MaintenanceWindowFilterValues",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Filter used in the request. Supported filter keys are Name and Enabled.</p>"
    },
    "MaintenanceWindowFilterKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "MaintenanceWindowFilterList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowFilter"
      },
      "max": 5,
      "min": 0
    },
    "MaintenanceWindowFilterValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "MaintenanceWindowFilterValues": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowFilterValue"
      }
    },
    "MaintenanceWindowId": {
      "type": "string",
      "max": 20,
      "min": 20,
      "pattern": "^mw-[0-9a-f]{17}$"
    },
    "MaintenanceWindowIdentity": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>A description of the maintenance window.</p>"
        },
        "Enabled": {
          "shape": "MaintenanceWindowEnabled",
          "documentation": "<p>Indicates whether the maintenance window is enabled.</p>"
        },
        "Duration": {
          "shape": "MaintenanceWindowDurationHours",
          "documentation": "<p>The duration of the maintenance window in hours.</p>"
        },
        "Cutoff": {
          "shape": "MaintenanceWindowCutoff",
          "documentation": "<p>The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.</p>"
        },
        "Schedule": {
          "shape": "MaintenanceWindowSchedule",
          "documentation": "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
        },
        "ScheduleTimezone": {
          "shape": "MaintenanceWindowTimezone",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format.</p>"
        },
        "ScheduleOffset": {
          "shape": "MaintenanceWindowOffset",
          "documentation": "<p>The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.</p>",
          "box": true
        },
        "EndDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive.</p>"
        },
        "StartDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active.</p>"
        },
        "NextExecutionTime": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The next time the maintenance window will actually run, taking into account any specified times for the maintenance window to become active or inactive.</p>"
        }
      },
      "documentation": "<p>Information about the maintenance window.</p>"
    },
    "MaintenanceWindowIdentityForTarget": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        }
      },
      "documentation": "<p>The maintenance window to which the specified target belongs.</p>"
    },
    "MaintenanceWindowIdentityList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowIdentity"
      }
    },
    "MaintenanceWindowLambdaClientContext": {
      "type": "string",
      "max": 8000,
      "min": 1
    },
    "MaintenanceWindowLambdaParameters": {
      "type": "structure",
      "members": {
        "ClientContext": {
          "shape": "MaintenanceWindowLambdaClientContext",
          "documentation": "<p>Pass client-specific information to the Lambda function that you are invoking. You can then process the client information in your Lambda function as you choose through the context variable.</p>"
        },
        "Qualifier": {
          "shape": "MaintenanceWindowLambdaQualifier",
          "documentation": "<p>(Optional) Specify a Lambda function version or alias name. If you specify a function version, the action uses the qualified function ARN to invoke a specific Lambda function. If you specify an alias name, the action uses the alias ARN to invoke the Lambda function version to which the alias points.</p>"
        },
        "Payload": {
          "shape": "MaintenanceWindowLambdaPayload",
          "documentation": "<p>JSON to provide to your Lambda function as input.</p>"
        }
      },
      "documentation": "<p>The parameters for a LAMBDA task type.</p> <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p>For Lambda tasks, Systems Manager ignores any values specified for TaskParameters and LoggingInfo.</p> </note>"
    },
    "MaintenanceWindowLambdaPayload": {
      "type": "blob",
      "max": 4096,
      "sensitive": true
    },
    "MaintenanceWindowLambdaQualifier": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "MaintenanceWindowMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 10
    },
    "MaintenanceWindowName": {
      "type": "string",
      "max": 128,
      "min": 3,
      "pattern": "^[a-zA-Z0-9_\\-.]{3,128}$"
    },
    "MaintenanceWindowOffset": {
      "type": "integer",
      "max": 6,
      "min": 1
    },
    "MaintenanceWindowResourceType": {
      "type": "string",
      "enum": [
        "INSTANCE",
        "RESOURCE_GROUP"
      ]
    },
    "MaintenanceWindowRunCommandParameters": {
      "type": "structure",
      "members": {
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>Information about the commands to run.</p>"
        },
        "CloudWatchOutputConfig": {
          "shape": "CloudWatchOutputConfig"
        },
        "DocumentHash": {
          "shape": "DocumentHash",
          "documentation": "<p>The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated.</p>"
        },
        "DocumentHashType": {
          "shape": "DocumentHashType",
          "documentation": "<p>SHA-256 or SHA-1. SHA-1 hashes have been deprecated.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a specific version number. If you run commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example:</p> <p>--document-version \"\\$DEFAULT\"</p> <p>--document-version \"\\$LATEST\"</p> <p>--document-version \"3\"</p>"
        },
        "NotificationConfig": {
          "shape": "NotificationConfig",
          "documentation": "<p>Configurations for sending notifications about command status changes on a per-instance basis.</p>"
        },
        "OutputS3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the S3 bucket.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 bucket subfolder.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameters for the RUN_COMMAND task execution.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.</p>"
        },
        "TimeoutSeconds": {
          "shape": "TimeoutSeconds",
          "documentation": "<p>If this time is reached and the command has not already started running, it doesn't run.</p>",
          "box": true
        }
      },
      "documentation": "<p>The parameters for a RUN_COMMAND task type.</p> <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p>For Run Command tasks, Systems Manager uses specified values for <code>TaskParameters</code> and <code>LoggingInfo</code> only if no values are specified for <code>TaskInvocationParameters</code>. </p> </note>"
    },
    "MaintenanceWindowSchedule": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "MaintenanceWindowSearchMaxResults": {
      "type": "integer",
      "min": 1
    },
    "MaintenanceWindowStepFunctionsInput": {
      "type": "string",
      "max": 4096,
      "sensitive": true
    },
    "MaintenanceWindowStepFunctionsName": {
      "type": "string",
      "max": 80,
      "min": 1
    },
    "MaintenanceWindowStepFunctionsParameters": {
      "type": "structure",
      "members": {
        "Input": {
          "shape": "MaintenanceWindowStepFunctionsInput",
          "documentation": "<p>The inputs for the STEP_FUNCTIONS task.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowStepFunctionsName",
          "documentation": "<p>The name of the STEP_FUNCTIONS task.</p>"
        }
      },
      "documentation": "<p>The parameters for a STEP_FUNCTIONS task.</p> <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> <p>For Step Functions tasks, Systems Manager ignores any values specified for <code>TaskParameters</code> and <code>LoggingInfo</code>.</p> </note>"
    },
    "MaintenanceWindowStringDateTime": {
      "type": "string"
    },
    "MaintenanceWindowTarget": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window to register the target with.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The ID of the target.</p>"
        },
        "ResourceType": {
          "shape": "MaintenanceWindowResourceType",
          "documentation": "<p>The type of target that is being registered with the maintenance window.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets, either instances or tags.</p> <p>Specify instances using the following format:</p> <p> <code>Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;</code> </p> <p>Tags are specified using the following format:</p> <p> <code>Key=&lt;tag name&gt;,Values=&lt;tag value&gt;</code>.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>A user-provided value that will be included in any CloudWatch events that are raised while running tasks for these targets in this maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name for the maintenance window target.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>A description for the target.</p>"
        }
      },
      "documentation": "<p>The target registered with the maintenance window.</p>"
    },
    "MaintenanceWindowTargetId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"
    },
    "MaintenanceWindowTargetList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowTarget"
      }
    },
    "MaintenanceWindowTask": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window where the task is registered.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The task ID.</p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The resource that the task uses during execution. For RUN_COMMAND and AUTOMATION task types, <code>TaskArn</code> is the Systems Manager document name or ARN. For LAMBDA tasks, it's the function name or ARN. For STEP_FUNCTIONS tasks, it's the state machine ARN.</p>"
        },
        "Type": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The type of task. The type can be one of the following: RUN_COMMAND, AUTOMATION, LAMBDA, or STEP_FUNCTIONS.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParameters",
          "documentation": "<p>The parameters that should be passed to the task when it is run.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The priority of the task in the maintenance window. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.</p>"
        },
        "LoggingInfo": {
          "shape": "LoggingInfo",
          "documentation": "<p>Information about an S3 bucket to write task-level logs to.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets this task can be run for, in parallel.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed before this task stops being scheduled.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The task name.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>A description of the task.</p>"
        }
      },
      "documentation": "<p>Information about a task defined for a maintenance window.</p>"
    },
    "MaintenanceWindowTaskArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "MaintenanceWindowTaskId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}$"
    },
    "MaintenanceWindowTaskInvocationParameters": {
      "type": "structure",
      "members": {
        "RunCommand": {
          "shape": "MaintenanceWindowRunCommandParameters",
          "documentation": "<p>The parameters for a RUN_COMMAND task type.</p>"
        },
        "Automation": {
          "shape": "MaintenanceWindowAutomationParameters",
          "documentation": "<p>The parameters for an AUTOMATION task type.</p>"
        },
        "StepFunctions": {
          "shape": "MaintenanceWindowStepFunctionsParameters",
          "documentation": "<p>The parameters for a STEP_FUNCTIONS task type.</p>"
        },
        "Lambda": {
          "shape": "MaintenanceWindowLambdaParameters",
          "documentation": "<p>The parameters for a LAMBDA task type.</p>"
        }
      },
      "documentation": "<p>The parameters for task execution.</p>"
    },
    "MaintenanceWindowTaskList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowTask"
      }
    },
    "MaintenanceWindowTaskParameterName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "MaintenanceWindowTaskParameterValue": {
      "type": "string",
      "max": 255,
      "min": 1,
      "sensitive": true
    },
    "MaintenanceWindowTaskParameterValueExpression": {
      "type": "structure",
      "members": {
        "Values": {
          "shape": "MaintenanceWindowTaskParameterValueList",
          "documentation": "<p>This field contains an array of 0 or more strings, each 1 to 255 characters in length.</p>"
        }
      },
      "documentation": "<p>Defines the values for a task parameter.</p>",
      "sensitive": true
    },
    "MaintenanceWindowTaskParameterValueList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowTaskParameterValue"
      },
      "sensitive": true
    },
    "MaintenanceWindowTaskParameters": {
      "type": "map",
      "key": {
        "shape": "MaintenanceWindowTaskParameterName"
      },
      "value": {
        "shape": "MaintenanceWindowTaskParameterValueExpression"
      },
      "sensitive": true
    },
    "MaintenanceWindowTaskParametersList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowTaskParameters"
      },
      "sensitive": true
    },
    "MaintenanceWindowTaskPriority": {
      "type": "integer",
      "min": 0
    },
    "MaintenanceWindowTaskTargetId": {
      "type": "string",
      "max": 36
    },
    "MaintenanceWindowTaskType": {
      "type": "string",
      "enum": [
        "RUN_COMMAND",
        "AUTOMATION",
        "STEP_FUNCTIONS",
        "LAMBDA"
      ]
    },
    "MaintenanceWindowTimezone": {
      "type": "string"
    },
    "MaintenanceWindowsForTargetList": {
      "type": "list",
      "member": {
        "shape": "MaintenanceWindowIdentityForTarget"
      }
    },
    "ManagedInstanceId": {
      "type": "string",
      "pattern": "^mi-[0-9a-f]{17}$"
    },
    "MaxConcurrency": {
      "type": "string",
      "max": 7,
      "min": 1,
      "pattern": "^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"
    },
    "MaxErrors": {
      "type": "string",
      "max": 7,
      "min": 1,
      "pattern": "^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxResultsEC2Compatible": {
      "type": "integer",
      "max": 50,
      "min": 5
    },
    "ModifyDocumentPermissionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "PermissionType"
      ],
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document that you want to share.</p>"
        },
        "PermissionType": {
          "shape": "DocumentPermissionType",
          "documentation": "<p>The permission type for the document. The permission type can be <i>Share</i>.</p>"
        },
        "AccountIdsToAdd": {
          "shape": "AccountIdList",
          "documentation": "<p>The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or <i>All</i>.</p>"
        },
        "AccountIdsToRemove": {
          "shape": "AccountIdList",
          "documentation": "<p>The AWS user accounts that should no longer have access to the document. The AWS user account can either be a group of account IDs or <i>All</i>. This action has a higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add and the same ID to remove, the system removes access to the document.</p>"
        },
        "SharedDocumentVersion": {
          "shape": "SharedDocumentVersion",
          "documentation": "<p>(Optional) The version of the document to share. If it's not specified, the system choose the <code>Default</code> version to share.</p>"
        }
      }
    },
    "ModifyDocumentPermissionResponse": {
      "type": "structure",
      "members": {}
    },
    "NextToken": {
      "type": "string"
    },
    "NonCompliantSummary": {
      "type": "structure",
      "members": {
        "NonCompliantCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of compliance items that are not compliant.</p>"
        },
        "SeveritySummary": {
          "shape": "SeveritySummary",
          "documentation": "<p>A summary of the non-compliance severity by compliance type</p>"
        }
      },
      "documentation": "<p>A summary of resources that are not compliant. The summary is organized according to resource type.</p>"
    },
    "NormalStringMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "NotificationArn": {
      "type": "string"
    },
    "NotificationConfig": {
      "type": "structure",
      "members": {
        "NotificationArn": {
          "shape": "NotificationArn",
          "documentation": "<p>An Amazon Resource Name (ARN) for an Amazon Simple Notification Service (Amazon SNS) topic. Run Command pushes notifications about command status changes to this topic.</p>"
        },
        "NotificationEvents": {
          "shape": "NotificationEventList",
          "documentation": "<p>The different events for which you can receive notifications. These events include the following: All (events), InProgress, Success, TimedOut, Cancelled, Failed. To learn more about these events, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html\">Monitoring Systems Manager status changes using Amazon SNS notifications</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "NotificationType": {
          "shape": "NotificationType",
          "documentation": "<p>Command: Receive notification when the status of a command changes. Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. </p>"
        }
      },
      "documentation": "<p>Configurations for sending notifications.</p>"
    },
    "NotificationEvent": {
      "type": "string",
      "enum": [
        "All",
        "InProgress",
        "Success",
        "TimedOut",
        "Cancelled",
        "Failed"
      ]
    },
    "NotificationEventList": {
      "type": "list",
      "member": {
        "shape": "NotificationEvent"
      }
    },
    "NotificationType": {
      "type": "string",
      "enum": [
        "Command",
        "Invocation"
      ]
    },
    "OperatingSystem": {
      "type": "string",
      "enum": [
        "WINDOWS",
        "AMAZON_LINUX",
        "AMAZON_LINUX_2",
        "UBUNTU",
        "REDHAT_ENTERPRISE_LINUX",
        "SUSE",
        "CENTOS",
        "ORACLE_LINUX",
        "DEBIAN"
      ]
    },
    "OpsAggregator": {
      "type": "structure",
      "members": {
        "AggregatorType": {
          "shape": "OpsAggregatorType",
          "documentation": "<p>Either a Range or Count aggregator for limiting an OpsItem summary.</p>"
        },
        "TypeName": {
          "shape": "OpsDataTypeName",
          "documentation": "<p>The data type name to use for viewing counts of OpsItems.</p>"
        },
        "AttributeName": {
          "shape": "OpsDataAttributeName",
          "documentation": "<p>The name of an OpsItem attribute on which to limit the count of OpsItems.</p>"
        },
        "Values": {
          "shape": "OpsAggregatorValueMap",
          "documentation": "<p>The aggregator value.</p>"
        },
        "Filters": {
          "shape": "OpsFilterList",
          "documentation": "<p>The aggregator filters.</p>"
        },
        "Aggregators": {
          "shape": "OpsAggregatorList",
          "documentation": "<p>A nested aggregator for viewing counts of OpsItems.</p>"
        }
      },
      "documentation": "<p>One or more aggregators for viewing counts of OpsItems using different dimensions such as <code>Source</code>, <code>CreatedTime</code>, or <code>Source and CreatedTime</code>, to name a few.</p>"
    },
    "OpsAggregatorList": {
      "type": "list",
      "member": {
        "shape": "OpsAggregator"
      },
      "max": 12,
      "min": 1
    },
    "OpsAggregatorType": {
      "type": "string",
      "max": 20,
      "min": 1,
      "pattern": "^(range|count|sum)"
    },
    "OpsAggregatorValue": {
      "type": "string",
      "max": 2048,
      "min": 0
    },
    "OpsAggregatorValueKey": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "OpsAggregatorValueMap": {
      "type": "map",
      "key": {
        "shape": "OpsAggregatorValueKey"
      },
      "value": {
        "shape": "OpsAggregatorValue"
      },
      "max": 5,
      "min": 0
    },
    "OpsDataAttributeName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "OpsDataTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^(AWS|Custom):.*$"
    },
    "OpsEntity": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "OpsEntityId",
          "documentation": "<p>The query ID.</p>"
        },
        "Data": {
          "shape": "OpsEntityItemMap",
          "documentation": "<p>The data returned by the query.</p>"
        }
      },
      "documentation": "<p>The result of the query.</p>"
    },
    "OpsEntityId": {
      "type": "string"
    },
    "OpsEntityItem": {
      "type": "structure",
      "members": {
        "CaptureTime": {
          "shape": "OpsEntityItemCaptureTime",
          "documentation": "<p>The time OpsItem data was captured.</p>"
        },
        "Content": {
          "shape": "OpsEntityItemEntryList",
          "documentation": "<p>The detailed data content for an OpsItem summaries result item.</p>"
        }
      },
      "documentation": "<p>The OpsItem summaries result item.</p>"
    },
    "OpsEntityItemCaptureTime": {
      "type": "string",
      "pattern": "^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"
    },
    "OpsEntityItemEntry": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "max": 50,
      "min": 0
    },
    "OpsEntityItemEntryList": {
      "type": "list",
      "member": {
        "shape": "OpsEntityItemEntry"
      },
      "max": 10000,
      "min": 0
    },
    "OpsEntityItemKey": {
      "type": "string"
    },
    "OpsEntityItemMap": {
      "type": "map",
      "key": {
        "shape": "OpsEntityItemKey"
      },
      "value": {
        "shape": "OpsEntityItem"
      }
    },
    "OpsEntityList": {
      "type": "list",
      "member": {
        "shape": "OpsEntity"
      }
    },
    "OpsFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "OpsFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "Values": {
          "shape": "OpsFilterValueList",
          "documentation": "<p>The filter value.</p>"
        },
        "Type": {
          "shape": "OpsFilterOperatorType",
          "documentation": "<p>The type of filter.</p>"
        }
      },
      "documentation": "<p>A filter for viewing OpsItem summaries.</p>"
    },
    "OpsFilterKey": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "OpsFilterList": {
      "type": "list",
      "member": {
        "shape": "OpsFilter"
      },
      "max": 5,
      "min": 1
    },
    "OpsFilterOperatorType": {
      "type": "string",
      "enum": [
        "Equal",
        "NotEqual",
        "BeginWith",
        "LessThan",
        "GreaterThan",
        "Exists"
      ]
    },
    "OpsFilterValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "OpsFilterValueList": {
      "type": "list",
      "member": {
        "shape": "OpsFilterValue"
      },
      "max": 40,
      "min": 1
    },
    "OpsItem": {
      "type": "structure",
      "members": {
        "CreatedBy": {
          "shape": "String",
          "documentation": "<p>The ARN of the AWS account that created the OpsItem.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time the OpsItem was created.</p>"
        },
        "Description": {
          "shape": "OpsItemDescription",
          "documentation": "<p>The OpsItem description.</p>"
        },
        "LastModifiedBy": {
          "shape": "String",
          "documentation": "<p>The ARN of the AWS account that last updated the OpsItem.</p>"
        },
        "LastModifiedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time the OpsItem was last updated.</p>"
        },
        "Notifications": {
          "shape": "OpsItemNotifications",
          "documentation": "<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.</p>"
        },
        "Priority": {
          "shape": "OpsItemPriority",
          "documentation": "<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>"
        },
        "RelatedOpsItems": {
          "shape": "RelatedOpsItems",
          "documentation": "<p>One or more OpsItems that share something in common with the current OpsItem. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.</p>"
        },
        "Status": {
          "shape": "OpsItemStatus",
          "documentation": "<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or <code>Resolved</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html\">Editing OpsItem details</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "OpsItemId": {
          "shape": "OpsItemId",
          "documentation": "<p>The ID of the OpsItem.</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The version of this OpsItem. Each time the OpsItem is edited the version number increments by one.</p>"
        },
        "Title": {
          "shape": "OpsItemTitle",
          "documentation": "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
        },
        "Source": {
          "shape": "OpsItemSource",
          "documentation": "<p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager. The impacted resource is a subset of source.</p>"
        },
        "OperationalData": {
          "shape": "OpsItemOperationalData",
          "documentation": "<p>Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB.</p> <important> <p>Operational data keys <i>can't</i> begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.</p> </important> <p>You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the <a>DescribeOpsItems</a> API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the <a>GetOpsItem</a> API action).</p> <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in the request. Use the <code>/aws/automations</code> key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "Category": {
          "shape": "OpsItemCategory",
          "documentation": "<p>An OpsItem category. Category options include: Availability, Cost, Performance, Recovery, Security.</p>"
        },
        "Severity": {
          "shape": "OpsItemSeverity",
          "documentation": "<p>The severity of the OpsItem. Severity options range from 1 to 4.</p>"
        }
      },
      "documentation": "<p>Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">AWS Systems Manager OpsCenter</a> in the <i>AWS Systems Manager User Guide</i>. </p>"
    },
    "OpsItemCategory": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "OpsItemDataKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "OpsItemDataType": {
      "type": "string",
      "enum": [
        "SearchableString",
        "String"
      ]
    },
    "OpsItemDataValue": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "OpsItemDataValueString",
          "documentation": "<p>The value of the OperationalData key.</p>"
        },
        "Type": {
          "shape": "OpsItemDataType",
          "documentation": "<p>The type of key-value pair. Valid types include <code>SearchableString</code> and <code>String</code>.</p>"
        }
      },
      "documentation": "<p>An object that defines the value of the key and its type in the OperationalData map.</p>"
    },
    "OpsItemDataValueString": {
      "type": "string"
    },
    "OpsItemDescription": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "OpsItemFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values",
        "Operator"
      ],
      "members": {
        "Key": {
          "shape": "OpsItemFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "Values": {
          "shape": "OpsItemFilterValues",
          "documentation": "<p>The filter value.</p>"
        },
        "Operator": {
          "shape": "OpsItemFilterOperator",
          "documentation": "<p>The operator used by the filter call.</p>"
        }
      },
      "documentation": "<p>Describes an OpsItem filter.</p>"
    },
    "OpsItemFilterKey": {
      "type": "string",
      "enum": [
        "Status",
        "CreatedBy",
        "Source",
        "Priority",
        "Title",
        "OpsItemId",
        "CreatedTime",
        "LastModifiedTime",
        "OperationalData",
        "OperationalDataKey",
        "OperationalDataValue",
        "ResourceId",
        "AutomationId",
        "Category",
        "Severity"
      ]
    },
    "OpsItemFilterOperator": {
      "type": "string",
      "enum": [
        "Equal",
        "Contains",
        "GreaterThan",
        "LessThan"
      ]
    },
    "OpsItemFilterValue": {
      "type": "string"
    },
    "OpsItemFilterValues": {
      "type": "list",
      "member": {
        "shape": "OpsItemFilterValue"
      }
    },
    "OpsItemFilters": {
      "type": "list",
      "member": {
        "shape": "OpsItemFilter"
      }
    },
    "OpsItemId": {
      "type": "string",
      "pattern": "^(oi)-[0-9a-f]{12}$"
    },
    "OpsItemMaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "OpsItemNotification": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.</p>"
        }
      },
      "documentation": "<p>A notification about the OpsItem.</p>"
    },
    "OpsItemNotifications": {
      "type": "list",
      "member": {
        "shape": "OpsItemNotification"
      }
    },
    "OpsItemOperationalData": {
      "type": "map",
      "key": {
        "shape": "OpsItemDataKey"
      },
      "value": {
        "shape": "OpsItemDataValue"
      }
    },
    "OpsItemOpsDataKeysList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "OpsItemPriority": {
      "type": "integer",
      "max": 5,
      "min": 1
    },
    "OpsItemSeverity": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "OpsItemSource": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "OpsItemStatus": {
      "type": "string",
      "enum": [
        "Open",
        "InProgress",
        "Resolved"
      ]
    },
    "OpsItemSummaries": {
      "type": "list",
      "member": {
        "shape": "OpsItemSummary"
      }
    },
    "OpsItemSummary": {
      "type": "structure",
      "members": {
        "CreatedBy": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time the OpsItem was created.</p>"
        },
        "LastModifiedBy": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.</p>"
        },
        "LastModifiedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date and time the OpsItem was last updated.</p>"
        },
        "Priority": {
          "shape": "OpsItemPriority",
          "documentation": "<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>"
        },
        "Source": {
          "shape": "OpsItemSource",
          "documentation": "<p>The impacted AWS resource.</p>"
        },
        "Status": {
          "shape": "OpsItemStatus",
          "documentation": "<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or <code>Resolved</code>.</p>"
        },
        "OpsItemId": {
          "shape": "OpsItemId",
          "documentation": "<p>The ID of the OpsItem.</p>"
        },
        "Title": {
          "shape": "OpsItemTitle",
          "documentation": "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
        },
        "OperationalData": {
          "shape": "OpsItemOperationalData",
          "documentation": "<p>Operational data is custom data that provides useful reference details about the OpsItem. </p>"
        },
        "Category": {
          "shape": "OpsItemCategory",
          "documentation": "<p>A list of OpsItems by category.</p>"
        },
        "Severity": {
          "shape": "OpsItemSeverity",
          "documentation": "<p>A list of OpsItems by severity.</p>"
        }
      },
      "documentation": "<p>A count of OpsItems.</p>"
    },
    "OpsItemTitle": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "OpsResultAttribute": {
      "type": "structure",
      "required": [
        "TypeName"
      ],
      "members": {
        "TypeName": {
          "shape": "OpsDataTypeName",
          "documentation": "<p>Name of the data type. Valid value: AWS:OpsItem, AWS:EC2InstanceInformation, AWS:OpsItemTrendline, or AWS:ComplianceSummary.</p>"
        }
      },
      "documentation": "<p>The OpsItem data type to return.</p>"
    },
    "OpsResultAttributeList": {
      "type": "list",
      "member": {
        "shape": "OpsResultAttribute"
      },
      "min": 1
    },
    "OutputSource": {
      "type": "structure",
      "members": {
        "OutputSourceId": {
          "shape": "OutputSourceId",
          "documentation": "<p>The ID of the output source, for example the URL of an S3 bucket.</p>"
        },
        "OutputSourceType": {
          "shape": "OutputSourceType",
          "documentation": "<p>The type of source where the association execution details are stored, for example, Amazon S3.</p>"
        }
      },
      "documentation": "<p>Information about the source where the association execution details are stored.</p>"
    },
    "OutputSourceId": {
      "type": "string",
      "max": 36,
      "min": 36
    },
    "OutputSourceType": {
      "type": "string"
    },
    "OwnerInformation": {
      "type": "string",
      "max": 128,
      "min": 1,
      "sensitive": true
    },
    "PSParameterName": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "PSParameterSelector": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "PSParameterValue": {
      "type": "string"
    },
    "PSParameterVersion": {
      "type": "long"
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "Type": {
          "shape": "ParameterType",
          "documentation": "<p>The type of parameter. Valid values include the following: <code>String</code>, <code>StringList</code>, and <code>SecureString</code>.</p>"
        },
        "Value": {
          "shape": "PSParameterValue",
          "documentation": "<p>The parameter value.</p>"
        },
        "Version": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The parameter version.</p>"
        },
        "Selector": {
          "shape": "PSParameterSelector",
          "documentation": "<p>Either the version number or the label used to retrieve the parameter value. Specify selectors by using one of the following formats:</p> <p>parameter_name:version</p> <p>parameter_name:label</p>"
        },
        "SourceResult": {
          "shape": "String",
          "documentation": "<p>Applies to parameters that reference information in other AWS services. SourceResult is the raw result or response from the source.</p>"
        },
        "LastModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>Date the parameter was last changed or updated and the parameter version was created.</p>"
        },
        "ARN": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the parameter.</p>"
        },
        "DataType": {
          "shape": "ParameterDataType",
          "documentation": "<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The default is <code>text</code>.</p>"
        }
      },
      "documentation": "<p>An Systems Manager parameter in Parameter Store.</p>"
    },
    "ParameterDataType": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "ParameterDescription": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "ParameterHistory": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "Type": {
          "shape": "ParameterType",
          "documentation": "<p>The type of parameter used.</p>"
        },
        "KeyId": {
          "shape": "ParameterKeyId",
          "documentation": "<p>The ID of the query key used for this parameter.</p>"
        },
        "LastModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>Date the parameter was last changed or updated.</p>"
        },
        "LastModifiedUser": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>"
        },
        "Description": {
          "shape": "ParameterDescription",
          "documentation": "<p>Information about the parameter.</p>"
        },
        "Value": {
          "shape": "PSParameterValue",
          "documentation": "<p>The parameter value.</p>"
        },
        "AllowedPattern": {
          "shape": "AllowedPattern",
          "documentation": "<p>Parameter names can include the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>"
        },
        "Version": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The parameter version.</p>"
        },
        "Labels": {
          "shape": "ParameterLabelList",
          "documentation": "<p>Labels assigned to the parameter version.</p>"
        },
        "Tier": {
          "shape": "ParameterTier",
          "documentation": "<p>The parameter tier.</p>"
        },
        "Policies": {
          "shape": "ParameterPolicyList",
          "documentation": "<p>Information about the policies assigned to a parameter.</p> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html\">Assigning parameter policies</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "DataType": {
          "shape": "ParameterDataType",
          "documentation": "<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The default is <code>text</code>.</p>"
        }
      },
      "documentation": "<p>Information about parameter usage.</p>"
    },
    "ParameterHistoryList": {
      "type": "list",
      "member": {
        "shape": "ParameterHistory"
      }
    },
    "ParameterInlinePolicy": {
      "type": "structure",
      "members": {
        "PolicyText": {
          "shape": "String",
          "documentation": "<p>The JSON text of the policy.</p>"
        },
        "PolicyType": {
          "shape": "String",
          "documentation": "<p>The type of policy. Parameter Store supports the following policy types: Expiration, ExpirationNotification, and NoChangeNotification. </p>"
        },
        "PolicyStatus": {
          "shape": "String",
          "documentation": "<p>The status of the policy. Policies report the following statuses: Pending (the policy has not been enforced or applied yet), Finished (the policy was applied), Failed (the policy was not applied), or InProgress (the policy is being applied now). </p>"
        }
      },
      "documentation": "<p>One or more policies assigned to a parameter.</p>"
    },
    "ParameterKeyId": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([a-zA-Z0-9:/_-]+)$"
    },
    "ParameterLabel": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ParameterLabelList": {
      "type": "list",
      "member": {
        "shape": "ParameterLabel"
      },
      "max": 10,
      "min": 1
    },
    "ParameterList": {
      "type": "list",
      "member": {
        "shape": "Parameter"
      }
    },
    "ParameterMetadata": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The parameter name.</p>"
        },
        "Type": {
          "shape": "ParameterType",
          "documentation": "<p>The type of parameter. Valid parameter types include the following: <code>String</code>, <code>StringList</code>, and <code>SecureString</code>.</p>"
        },
        "KeyId": {
          "shape": "ParameterKeyId",
          "documentation": "<p>The ID of the query key used for this parameter.</p>"
        },
        "LastModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>Date the parameter was last changed or updated.</p>"
        },
        "LastModifiedUser": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>"
        },
        "Description": {
          "shape": "ParameterDescription",
          "documentation": "<p>Description of the parameter actions.</p>"
        },
        "AllowedPattern": {
          "shape": "AllowedPattern",
          "documentation": "<p>A parameter name can include only the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>"
        },
        "Version": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The parameter version.</p>"
        },
        "Tier": {
          "shape": "ParameterTier",
          "documentation": "<p>The parameter tier.</p>"
        },
        "Policies": {
          "shape": "ParameterPolicyList",
          "documentation": "<p>A list of policies associated with a parameter.</p>"
        },
        "DataType": {
          "shape": "ParameterDataType",
          "documentation": "<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The default is <code>text</code>.</p>"
        }
      },
      "documentation": "<p>Metadata includes information like the ARN of the last user and the date/time the parameter was last used.</p>"
    },
    "ParameterMetadataList": {
      "type": "list",
      "member": {
        "shape": "ParameterMetadata"
      }
    },
    "ParameterName": {
      "type": "string"
    },
    "ParameterNameList": {
      "type": "list",
      "member": {
        "shape": "PSParameterName"
      },
      "max": 10,
      "min": 1
    },
    "ParameterPolicies": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "ParameterPolicyList": {
      "type": "list",
      "member": {
        "shape": "ParameterInlinePolicy"
      }
    },
    "ParameterStringFilter": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "ParameterStringFilterKey",
          "documentation": "<p>The name of the filter.</p> <note> <p>The <code>ParameterStringFilter</code> object is used by the <a>DescribeParameters</a> and <a>GetParametersByPath</a> API actions. However, not all of the pattern values listed for <code>Key</code> can be used with both actions.</p> <p>For <code>DescribeActions</code>, all of the listed patterns are valid, with the exception of <code>Label</code>.</p> <p>For <code>GetParametersByPath</code>, the following patterns listed for <code>Key</code> are not valid: <code>tag</code>, <code>Name</code>, <code>Path</code>, and <code>Tier</code>.</p> <p>For examples of CLI commands demonstrating valid parameter filter constructions, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html\">Searching for Systems Manager parameters</a> in the <i>AWS Systems Manager User Guide</i>.</p> </note>"
        },
        "Option": {
          "shape": "ParameterStringQueryOption",
          "documentation": "<p>For all filters used with <a>DescribeParameters</a>, valid options include <code>Equals</code> and <code>BeginsWith</code>. The <code>Name</code> filter additionally supports the <code>Contains</code> option. (Exception: For filters using the key <code>Path</code>, valid options include <code>Recursive</code> and <code>OneLevel</code>.)</p> <p>For filters used with <a>GetParametersByPath</a>, valid options include <code>Equals</code> and <code>BeginsWith</code>. (Exception: For filters using <code>Label</code> as the Key name, the only valid option is <code>Equals</code>.)</p>"
        },
        "Values": {
          "shape": "ParameterStringFilterValueList",
          "documentation": "<p>The value you want to search for.</p>"
        }
      },
      "documentation": "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    },
    "ParameterStringFilterKey": {
      "type": "string",
      "max": 132,
      "min": 1,
      "pattern": "tag:.+|Name|Type|KeyId|Path|Label|Tier|DataType"
    },
    "ParameterStringFilterList": {
      "type": "list",
      "member": {
        "shape": "ParameterStringFilter"
      }
    },
    "ParameterStringFilterValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ParameterStringFilterValueList": {
      "type": "list",
      "member": {
        "shape": "ParameterStringFilterValue"
      },
      "max": 50,
      "min": 1
    },
    "ParameterStringQueryOption": {
      "type": "string",
      "max": 10,
      "min": 1
    },
    "ParameterTier": {
      "type": "string",
      "enum": [
        "Standard",
        "Advanced",
        "Intelligent-Tiering"
      ]
    },
    "ParameterType": {
      "type": "string",
      "enum": [
        "String",
        "StringList",
        "SecureString"
      ]
    },
    "ParameterValue": {
      "type": "string"
    },
    "ParameterValueList": {
      "type": "list",
      "member": {
        "shape": "ParameterValue"
      }
    },
    "Parameters": {
      "type": "map",
      "key": {
        "shape": "ParameterName"
      },
      "value": {
        "shape": "ParameterValueList"
      }
    },
    "ParametersFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "ParametersFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "Values": {
          "shape": "ParametersFilterValueList",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>This data type is deprecated. Instead, use <a>ParameterStringFilter</a>.</p>"
    },
    "ParametersFilterKey": {
      "type": "string",
      "enum": [
        "Name",
        "Type",
        "KeyId"
      ]
    },
    "ParametersFilterList": {
      "type": "list",
      "member": {
        "shape": "ParametersFilter"
      }
    },
    "ParametersFilterValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ParametersFilterValueList": {
      "type": "list",
      "member": {
        "shape": "ParametersFilterValue"
      },
      "max": 50,
      "min": 1
    },
    "Patch": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "PatchId",
          "documentation": "<p>The ID of the patch (this is different than the Microsoft Knowledge Base ID).</p>"
        },
        "ReleaseDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the patch was released.</p>"
        },
        "Title": {
          "shape": "PatchTitle",
          "documentation": "<p>The title of the patch.</p>"
        },
        "Description": {
          "shape": "PatchDescription",
          "documentation": "<p>The description of the patch.</p>"
        },
        "ContentUrl": {
          "shape": "PatchContentUrl",
          "documentation": "<p>The URL where more information can be obtained about the patch.</p>"
        },
        "Vendor": {
          "shape": "PatchVendor",
          "documentation": "<p>The name of the vendor providing the patch.</p>"
        },
        "ProductFamily": {
          "shape": "PatchProductFamily",
          "documentation": "<p>The product family the patch is applicable for (for example, Windows).</p>"
        },
        "Product": {
          "shape": "PatchProduct",
          "documentation": "<p>The specific product the patch is applicable for (for example, WindowsServer2016).</p>"
        },
        "Classification": {
          "shape": "PatchClassification",
          "documentation": "<p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>"
        },
        "MsrcSeverity": {
          "shape": "PatchMsrcSeverity",
          "documentation": "<p>The severity of the patch (for example Critical, Important, Moderate).</p>"
        },
        "KbNumber": {
          "shape": "PatchKbNumber",
          "documentation": "<p>The Microsoft Knowledge Base ID of the patch.</p>"
        },
        "MsrcNumber": {
          "shape": "PatchMsrcNumber",
          "documentation": "<p>The ID of the MSRC bulletin the patch is related to.</p>"
        },
        "Language": {
          "shape": "PatchLanguage",
          "documentation": "<p>The language of the patch if it's language-specific.</p>"
        }
      },
      "documentation": "<p>Represents metadata about a patch.</p>"
    },
    "PatchAction": {
      "type": "string",
      "enum": [
        "ALLOW_AS_DEPENDENCY",
        "BLOCK"
      ]
    },
    "PatchBaselineIdentity": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline.</p>"
        },
        "BaselineName": {
          "shape": "BaselineName",
          "documentation": "<p>The name of the patch baseline.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Defines the operating system the patch baseline applies to. The Default value is WINDOWS. </p>"
        },
        "BaselineDescription": {
          "shape": "BaselineDescription",
          "documentation": "<p>The description of the patch baseline.</p>"
        },
        "DefaultBaseline": {
          "shape": "DefaultBaseline",
          "documentation": "<p>Whether this is the default baseline. Note that Systems Manager supports creating multiple default patch baselines. For example, you can create a default patch baseline for each operating system.</p>"
        }
      },
      "documentation": "<p>Defines the basic information about a patch baseline.</p>"
    },
    "PatchBaselineIdentityList": {
      "type": "list",
      "member": {
        "shape": "PatchBaselineIdentity"
      }
    },
    "PatchBaselineMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "PatchClassification": {
      "type": "string"
    },
    "PatchComplianceData": {
      "type": "structure",
      "required": [
        "Title",
        "KBId",
        "Classification",
        "Severity",
        "State",
        "InstalledTime"
      ],
      "members": {
        "Title": {
          "shape": "PatchTitle",
          "documentation": "<p>The title of the patch.</p>"
        },
        "KBId": {
          "shape": "PatchKbNumber",
          "documentation": "<p>The operating system-specific ID of the patch.</p>"
        },
        "Classification": {
          "shape": "PatchClassification",
          "documentation": "<p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>"
        },
        "Severity": {
          "shape": "PatchSeverity",
          "documentation": "<p>The severity of the patch (for example, Critical, Important, Moderate).</p>"
        },
        "State": {
          "shape": "PatchComplianceDataState",
          "documentation": "<p>The state of the patch on the instance, such as INSTALLED or FAILED.</p> <p>For descriptions of each patch state, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-compliance-about.html#sysman-compliance-monitor-patch\">About patch compliance</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "InstalledTime": {
          "shape": "DateTime",
          "documentation": "<p>The date/time the patch was installed on the instance. Note that not all operating systems provide this level of information.</p>"
        }
      },
      "documentation": "<p>Information about the state of a patch on a particular instance as it relates to the patch baseline used to patch the instance.</p>"
    },
    "PatchComplianceDataList": {
      "type": "list",
      "member": {
        "shape": "PatchComplianceData"
      }
    },
    "PatchComplianceDataState": {
      "type": "string",
      "enum": [
        "INSTALLED",
        "INSTALLED_OTHER",
        "INSTALLED_PENDING_REBOOT",
        "INSTALLED_REJECTED",
        "MISSING",
        "NOT_APPLICABLE",
        "FAILED"
      ]
    },
    "PatchComplianceLevel": {
      "type": "string",
      "enum": [
        "CRITICAL",
        "HIGH",
        "MEDIUM",
        "LOW",
        "INFORMATIONAL",
        "UNSPECIFIED"
      ]
    },
    "PatchComplianceMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 10
    },
    "PatchContentUrl": {
      "type": "string"
    },
    "PatchDeploymentStatus": {
      "type": "string",
      "enum": [
        "APPROVED",
        "PENDING_APPROVAL",
        "EXPLICIT_APPROVED",
        "EXPLICIT_REJECTED"
      ]
    },
    "PatchDescription": {
      "type": "string"
    },
    "PatchFailedCount": {
      "type": "integer"
    },
    "PatchFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "PatchFilterKey",
          "documentation": "<p>The key for the filter.</p> <p>Run the <a>DescribePatchProperties</a> command to view lists of valid keys for each operating system type.</p>"
        },
        "Values": {
          "shape": "PatchFilterValueList",
          "documentation": "<p>The value for the filter key.</p> <p>Run the <a>DescribePatchProperties</a> command to view lists of valid values for each key based on operating system type.</p>"
        }
      },
      "documentation": "<p> Defines which patches should be included in a patch baseline.</p> <p>A patch filter consists of a key and a set of values. The filter key is a patch property. For example, the available filter keys for WINDOWS are PATCH_SET, PRODUCT, PRODUCT_FAMILY, CLASSIFICATION, and MSRC_SEVERITY. The filter values define a matching criterion for the patch property indicated by the key. For example, if the filter key is PRODUCT and the filter values are [\"Office 2013\", \"Office 2016\"], then the filter accepts all patches where product name is either \"Office 2013\" or \"Office 2016\". The filter values can be exact values for the patch property given as a key, or a wildcard (*), which matches all values.</p> <p>You can view lists of valid values for the patch properties by running the <code>DescribePatchProperties</code> command. For information about which patch properties can be used with each major operating system, see <a>DescribePatchProperties</a>.</p>"
    },
    "PatchFilterGroup": {
      "type": "structure",
      "required": [
        "PatchFilters"
      ],
      "members": {
        "PatchFilters": {
          "shape": "PatchFilterList",
          "documentation": "<p>The set of patch filters that make up the group.</p>"
        }
      },
      "documentation": "<p>A set of patch filters, typically used for approval rules.</p>"
    },
    "PatchFilterKey": {
      "type": "string",
      "enum": [
        "PATCH_SET",
        "PRODUCT",
        "PRODUCT_FAMILY",
        "CLASSIFICATION",
        "MSRC_SEVERITY",
        "PATCH_ID",
        "SECTION",
        "PRIORITY",
        "SEVERITY"
      ]
    },
    "PatchFilterList": {
      "type": "list",
      "member": {
        "shape": "PatchFilter"
      },
      "max": 4,
      "min": 0
    },
    "PatchFilterValue": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "PatchFilterValueList": {
      "type": "list",
      "member": {
        "shape": "PatchFilterValue"
      },
      "max": 20,
      "min": 1
    },
    "PatchGroup": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "PatchGroupList": {
      "type": "list",
      "member": {
        "shape": "PatchGroup"
      }
    },
    "PatchGroupPatchBaselineMapping": {
      "type": "structure",
      "members": {
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group registered with the patch baseline.</p>"
        },
        "BaselineIdentity": {
          "shape": "PatchBaselineIdentity",
          "documentation": "<p>The patch baseline the patch group is registered with.</p>"
        }
      },
      "documentation": "<p>The mapping between a patch group and the patch baseline the patch group is registered with.</p>"
    },
    "PatchGroupPatchBaselineMappingList": {
      "type": "list",
      "member": {
        "shape": "PatchGroupPatchBaselineMapping"
      }
    },
    "PatchId": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "PatchIdList": {
      "type": "list",
      "member": {
        "shape": "PatchId"
      },
      "max": 50,
      "min": 0
    },
    "PatchInstalledCount": {
      "type": "integer"
    },
    "PatchInstalledOtherCount": {
      "type": "integer"
    },
    "PatchInstalledPendingRebootCount": {
      "type": "integer"
    },
    "PatchInstalledRejectedCount": {
      "type": "integer"
    },
    "PatchKbNumber": {
      "type": "string"
    },
    "PatchLanguage": {
      "type": "string"
    },
    "PatchList": {
      "type": "list",
      "member": {
        "shape": "Patch"
      }
    },
    "PatchMissingCount": {
      "type": "integer"
    },
    "PatchMsrcNumber": {
      "type": "string"
    },
    "PatchMsrcSeverity": {
      "type": "string"
    },
    "PatchNotApplicableCount": {
      "type": "integer"
    },
    "PatchOperationType": {
      "type": "string",
      "enum": [
        "Scan",
        "Install"
      ]
    },
    "PatchOrchestratorFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "PatchOrchestratorFilterKey",
          "documentation": "<p>The key for the filter.</p>"
        },
        "Values": {
          "shape": "PatchOrchestratorFilterValues",
          "documentation": "<p>The value for the filter.</p>"
        }
      },
      "documentation": "<p>Defines a filter used in Patch Manager APIs.</p>"
    },
    "PatchOrchestratorFilterKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "PatchOrchestratorFilterList": {
      "type": "list",
      "member": {
        "shape": "PatchOrchestratorFilter"
      },
      "max": 5,
      "min": 0
    },
    "PatchOrchestratorFilterValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "PatchOrchestratorFilterValues": {
      "type": "list",
      "member": {
        "shape": "PatchOrchestratorFilterValue"
      }
    },
    "PatchProduct": {
      "type": "string"
    },
    "PatchProductFamily": {
      "type": "string"
    },
    "PatchPropertiesList": {
      "type": "list",
      "member": {
        "shape": "PatchPropertyEntry"
      }
    },
    "PatchProperty": {
      "type": "string",
      "enum": [
        "PRODUCT",
        "PRODUCT_FAMILY",
        "CLASSIFICATION",
        "MSRC_SEVERITY",
        "PRIORITY",
        "SEVERITY"
      ]
    },
    "PatchPropertyEntry": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "PatchRule": {
      "type": "structure",
      "required": [
        "PatchFilterGroup"
      ],
      "members": {
        "PatchFilterGroup": {
          "shape": "PatchFilterGroup",
          "documentation": "<p>The patch filter group that defines the criteria for the rule.</p>"
        },
        "ComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>A compliance severity level for all approved patches in a patch baseline.</p>"
        },
        "ApproveAfterDays": {
          "shape": "ApproveAfterDays",
          "documentation": "<p>The number of days after the release date of each patch matched by the rule that the patch is marked as approved in the patch baseline. For example, a value of <code>7</code> means that patches are approved seven days after they are released. Not supported on Ubuntu Server.</p>",
          "box": true
        },
        "ApproveUntilDate": {
          "shape": "PatchStringDateTime",
          "documentation": "<p>The cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Not supported on Ubuntu Server.</p> <p>Enter dates in the format <code>YYYY-MM-DD</code>. For example, <code>2020-12-31</code>.</p>",
          "box": true
        },
        "EnableNonSecurity": {
          "shape": "Boolean",
          "documentation": "<p>For instances identified by the approval rule filters, enables a patch baseline to apply non-security updates available in the specified repository. The default value is 'false'. Applies to Linux instances only.</p>",
          "box": true
        }
      },
      "documentation": "<p>Defines an approval rule for a patch baseline.</p>"
    },
    "PatchRuleGroup": {
      "type": "structure",
      "required": [
        "PatchRules"
      ],
      "members": {
        "PatchRules": {
          "shape": "PatchRuleList",
          "documentation": "<p>The rules that make up the rule group.</p>"
        }
      },
      "documentation": "<p>A set of rules defining the approval rules for a patch baseline.</p>"
    },
    "PatchRuleList": {
      "type": "list",
      "member": {
        "shape": "PatchRule"
      },
      "max": 10,
      "min": 0
    },
    "PatchSet": {
      "type": "string",
      "enum": [
        "OS",
        "APPLICATION"
      ]
    },
    "PatchSeverity": {
      "type": "string"
    },
    "PatchSource": {
      "type": "structure",
      "required": [
        "Name",
        "Products",
        "Configuration"
      ],
      "members": {
        "Name": {
          "shape": "PatchSourceName",
          "documentation": "<p>The name specified to identify the patch source.</p>"
        },
        "Products": {
          "shape": "PatchSourceProductList",
          "documentation": "<p>The specific operating system versions a patch repository applies to, such as \"Ubuntu16.04\", \"AmazonLinux2016.09\", \"RedhatEnterpriseLinux7.2\" or \"Suse12.7\". For lists of supported product values, see <a>PatchFilter</a>.</p>"
        },
        "Configuration": {
          "shape": "PatchSourceConfiguration",
          "documentation": "<p>The value of the yum repo configuration. For example:</p> <p> <code>[main]</code> </p> <p> <code>cachedir=/var/cache/yum/$basesearch$releasever</code> </p> <p> <code>keepcache=0</code> </p> <p> <code>debuglevel=2</code> </p>"
        }
      },
      "documentation": "<p>Information about the patches to use to update the instances, including target operating systems and source repository. Applies to Linux instances only.</p>"
    },
    "PatchSourceConfiguration": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "sensitive": true
    },
    "PatchSourceList": {
      "type": "list",
      "member": {
        "shape": "PatchSource"
      },
      "max": 20,
      "min": 0
    },
    "PatchSourceName": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\-.]{3,50}$"
    },
    "PatchSourceProduct": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "PatchSourceProductList": {
      "type": "list",
      "member": {
        "shape": "PatchSourceProduct"
      },
      "max": 20,
      "min": 1
    },
    "PatchStatus": {
      "type": "structure",
      "members": {
        "DeploymentStatus": {
          "shape": "PatchDeploymentStatus",
          "documentation": "<p>The approval status of a patch (APPROVED, PENDING_APPROVAL, EXPLICIT_APPROVED, EXPLICIT_REJECTED).</p>"
        },
        "ComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>The compliance severity level for a patch.</p>"
        },
        "ApprovalDate": {
          "shape": "DateTime",
          "documentation": "<p>The date the patch was approved (or will be approved if the status is PENDING_APPROVAL).</p>"
        }
      },
      "documentation": "<p>Information about the approval status of a patch.</p>"
    },
    "PatchStringDateTime": {
      "type": "string",
      "max": 10,
      "min": 1
    },
    "PatchTitle": {
      "type": "string"
    },
    "PatchUnreportedNotApplicableCount": {
      "type": "integer"
    },
    "PatchVendor": {
      "type": "string"
    },
    "PingStatus": {
      "type": "string",
      "enum": [
        "Online",
        "ConnectionLost",
        "Inactive"
      ]
    },
    "PlatformType": {
      "type": "string",
      "enum": [
        "Windows",
        "Linux"
      ]
    },
    "PlatformTypeList": {
      "type": "list",
      "member": {
        "shape": "PlatformType"
      }
    },
    "Product": {
      "type": "string"
    },
    "ProgressCounters": {
      "type": "structure",
      "members": {
        "TotalSteps": {
          "shape": "Integer",
          "documentation": "<p>The total number of steps run in all specified AWS Regions and accounts for the current Automation execution.</p>"
        },
        "SuccessSteps": {
          "shape": "Integer",
          "documentation": "<p>The total number of steps that successfully completed in all specified AWS Regions and accounts for the current Automation execution.</p>"
        },
        "FailedSteps": {
          "shape": "Integer",
          "documentation": "<p>The total number of steps that failed to run in all specified AWS Regions and accounts for the current Automation execution.</p>"
        },
        "CancelledSteps": {
          "shape": "Integer",
          "documentation": "<p>The total number of steps that the system cancelled in all specified AWS Regions and accounts for the current Automation execution.</p>"
        },
        "TimedOutSteps": {
          "shape": "Integer",
          "documentation": "<p>The total number of steps that timed out in all specified AWS Regions and accounts for the current Automation execution.</p>"
        }
      },
      "documentation": "<p>An aggregate of step execution statuses displayed in the AWS Console for a multi-Region and multi-account Automation execution.</p>"
    },
    "PutComplianceItemsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "ResourceType",
        "ComplianceType",
        "ExecutionSummary",
        "Items"
      ],
      "members": {
        "ResourceId": {
          "shape": "ComplianceResourceId",
          "documentation": "<p>Specify an ID for this resource. For a managed instance, this is the instance ID.</p>"
        },
        "ResourceType": {
          "shape": "ComplianceResourceType",
          "documentation": "<p>Specify the type of resource. <code>ManagedInstance</code> is currently the only supported resource type.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceTypeName",
          "documentation": "<p>Specify the compliance type. For example, specify Association (for a State Manager association), Patch, or Custom:<code>string</code>.</p>"
        },
        "ExecutionSummary": {
          "shape": "ComplianceExecutionSummary",
          "documentation": "<p>A summary of the call execution that includes an execution ID, the type of execution (for example, <code>Command</code>), and the date/time of the execution using a datetime object that is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>"
        },
        "Items": {
          "shape": "ComplianceItemEntryList",
          "documentation": "<p>Information about the compliance as defined by the resource type. For example, for a patch compliance type, <code>Items</code> includes information about the PatchSeverity, Classification, and so on.</p>"
        },
        "ItemContentHash": {
          "shape": "ComplianceItemContentHash",
          "documentation": "<p>MD5 or SHA-256 content hash. The content hash is used to determine if existing information should be overwritten or ignored. If the content hashes match, the request to put compliance information is ignored.</p>"
        },
        "UploadType": {
          "shape": "ComplianceUploadType",
          "documentation": "<p>The mode for uploading compliance items. You can specify <code>COMPLETE</code> or <code>PARTIAL</code>. In <code>COMPLETE</code> mode, the system overwrites all existing compliance information for the resource. You must provide a full list of compliance items each time you send the request.</p> <p>In <code>PARTIAL</code> mode, the system overwrites compliance information for a specific association. The association must be configured with <code>SyncCompliance</code> set to <code>MANUAL</code>. By default, all requests use <code>COMPLETE</code> mode.</p> <note> <p>This attribute is only valid for association compliance.</p> </note>",
          "box": true
        }
      }
    },
    "PutComplianceItemsResult": {
      "type": "structure",
      "members": {}
    },
    "PutInventoryMessage": {
      "type": "string"
    },
    "PutInventoryRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "Items"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>An instance ID where you want to add or update inventory items.</p>"
        },
        "Items": {
          "shape": "InventoryItemList",
          "documentation": "<p>The inventory items that you want to add or update on instances.</p>"
        }
      }
    },
    "PutInventoryResult": {
      "type": "structure",
      "members": {
        "Message": {
          "shape": "PutInventoryMessage",
          "documentation": "<p>Information about the request.</p>"
        }
      }
    },
    "PutParameterRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "PSParameterName",
          "documentation": "<p>The fully qualified name of the parameter that you want to add to the system. The fully qualified name includes the complete hierarchy of the parameter path and name. For parameters in a hierarchy, you must include a leading forward slash character (/) when you create or reference a parameter. For example: <code>/Dev/DBServer/MySQL/db-string13</code> </p> <p>Naming Constraints:</p> <ul> <li> <p>Parameter names are case sensitive.</p> </li> <li> <p>A parameter name must be unique within an AWS Region</p> </li> <li> <p>A parameter name can't be prefixed with \"aws\" or \"ssm\" (case-insensitive).</p> </li> <li> <p>Parameter names can include only the following symbols and letters: <code>a-zA-Z0-9_.-/</code> </p> </li> <li> <p>A parameter name can't include spaces.</p> </li> <li> <p>Parameter hierarchies are limited to a maximum depth of fifteen levels.</p> </li> </ul> <p>For additional information about valid values for parameter names, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html\">About requirements and constraints for parameter names</a> in the <i>AWS Systems Manager User Guide</i>.</p> <note> <p>The maximum length constraint listed below includes capacity for additional system attributes that are not part of the name. The maximum length for a parameter name, including the full length of the parameter ARN, is 1011 characters. For example, the length of the following parameter name is 65 characters, not 20 characters:</p> <p> <code>arn:aws:ssm:us-east-2:111122223333:parameter/ExampleParameterName</code> </p> </note>"
        },
        "Description": {
          "shape": "ParameterDescription",
          "documentation": "<p>Information about the parameter that you want to add to the system. Optional but recommended.</p> <important> <p>Do not enter personally identifiable information in this field.</p> </important>"
        },
        "Value": {
          "shape": "PSParameterValue",
          "documentation": "<p>The parameter value that you want to add to the system. Standard parameters have a value limit of 4 KB. Advanced parameters have a value limit of 8 KB.</p> <note> <p>Parameters can't be referenced or nested in the values of other parameters. You can't include <code>{{}}</code> or <code>{{ssm:<i>parameter-name</i>}}</code> in a parameter value.</p> </note>"
        },
        "Type": {
          "shape": "ParameterType",
          "documentation": "<p>The type of parameter that you want to add to the system.</p> <note> <p> <code>SecureString</code> is not currently supported for AWS CloudFormation templates or in the China Regions.</p> </note> <p>Items in a <code>StringList</code> must be separated by a comma (,). You can't use other punctuation or special character to escape items in the list. If you have a parameter value that requires a comma, then use the <code>String</code> data type.</p> <important> <p>Specifying a parameter type is not required when updating a parameter. You must specify a parameter type when creating a parameter.</p> </important>"
        },
        "KeyId": {
          "shape": "ParameterKeyId",
          "documentation": "<p>The KMS Key ID that you want to use to encrypt a parameter. Either the default AWS Key Management Service (AWS KMS) key automatically assigned to your AWS account or a custom key. Required for parameters that use the <code>SecureString</code> data type.</p> <p>If you don't specify a key ID, the system uses the default key associated with your AWS account.</p> <ul> <li> <p>To use your default AWS KMS key, choose the <code>SecureString</code> data type, and do <i>not</i> specify the <code>Key ID</code> when you create the parameter. The system automatically populates <code>Key ID</code> with your default KMS key.</p> </li> <li> <p>To use a custom KMS key, choose the <code>SecureString</code> data type with the <code>Key ID</code> parameter.</p> </li> </ul>"
        },
        "Overwrite": {
          "shape": "Boolean",
          "documentation": "<p>Overwrite an existing parameter. If not specified, will default to \"false\".</p>",
          "box": true
        },
        "AllowedPattern": {
          "shape": "AllowedPattern",
          "documentation": "<p>A regular expression used to validate the parameter value. For example, for String types with values restricted to numbers, you can specify the following: AllowedPattern=^\\d+$ </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a Systems Manager parameter to identify the type of resource to which it applies, the environment, or the type of configuration data referenced by the parameter. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=Resource,Value=S3bucket</code> </p> </li> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> <li> <p> <code>Key=ParameterType,Value=LicenseKey</code> </p> </li> </ul> <note> <p>To add tags to an existing Systems Manager parameter, use the <a>AddTagsToResource</a> action.</p> </note>"
        },
        "Tier": {
          "shape": "ParameterTier",
          "documentation": "<p>The parameter tier to assign to a parameter.</p> <p>Parameter Store offers a standard tier and an advanced tier for parameters. Standard parameters have a content size limit of 4 KB and can't be configured to use parameter policies. You can create a maximum of 10,000 standard parameters for each Region in an AWS account. Standard parameters are offered at no additional cost. </p> <p>Advanced parameters have a content size limit of 8 KB and can be configured to use parameter policies. You can create a maximum of 100,000 advanced parameters for each Region in an AWS account. Advanced parameters incur a charge. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html\">Standard and advanced parameter tiers</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>You can change a standard parameter to an advanced parameter any time. But you can't revert an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard parameter would result in data loss because the system would truncate the size of the parameter from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly, advanced parameters use a different form of encryption than standard parameters. </p> <p>If you no longer need an advanced parameter, or if you no longer want to incur charges for an advanced parameter, you must delete it and recreate it as a new standard parameter. </p> <p> <b>Using the Default Tier Configuration</b> </p> <p>In <code>PutParameter</code> requests, you can specify the tier to create the parameter in. Whenever you specify a tier in the request, Parameter Store creates or updates the parameter according to that request. However, if you do not specify a tier in a request, Parameter Store assigns the tier based on the current Parameter Store default tier configuration.</p> <p>The default tier when you begin using Parameter Store is the standard-parameter tier. If you use the advanced-parameter tier, you can specify one of the following as the default:</p> <ul> <li> <p> <b>Advanced</b>: With this option, Parameter Store evaluates all requests as advanced parameters. </p> </li> <li> <p> <b>Intelligent-Tiering</b>: With this option, Parameter Store evaluates each request to determine if the parameter is standard or advanced. </p> <p>If the request doesn't include any options that require an advanced parameter, the parameter is created in the standard-parameter tier. If one or more options requiring an advanced parameter are included in the request, Parameter Store create a parameter in the advanced-parameter tier.</p> <p>This approach helps control your parameter-related costs by always creating standard parameters unless an advanced parameter is necessary. </p> </li> </ul> <p>Options that require an advanced parameter include the following:</p> <ul> <li> <p>The content size of the parameter is more than 4 KB.</p> </li> <li> <p>The parameter uses a parameter policy.</p> </li> <li> <p>More than 10,000 parameters already exist in your AWS account in the current Region.</p> </li> </ul> <p>For more information about configuring the default tier option, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html\">Specifying a default parameter tier</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "Policies": {
          "shape": "ParameterPolicies",
          "documentation": "<p>One or more policies to apply to a parameter. This action takes a JSON array. Parameter Store supports the following policy types:</p> <p>Expiration: This policy deletes the parameter after it expires. When you create the policy, you specify the expiration date. You can update the expiration date and time by updating the policy. Updating the <i>parameter</i> does not affect the expiration date and time. When the expiration time is reached, Parameter Store deletes the parameter.</p> <p>ExpirationNotification: This policy triggers an event in Amazon CloudWatch Events that notifies you about the expiration. By using this policy, you can receive notification before or after the expiration time is reached, in units of days or hours.</p> <p>NoChangeNotification: This policy triggers a CloudWatch event if a parameter has not been modified for a specified period of time. This policy type is useful when, for example, a secret needs to be changed within a period of time, but it has not been changed.</p> <p>All existing policies are preserved until you send new policies or an empty policy. For more information about parameter policies, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html\">Assigning parameter policies</a>. </p>"
        },
        "DataType": {
          "shape": "ParameterDataType",
          "documentation": "<p>The data type for a <code>String</code> parameter. Supported data types include plain text and Amazon Machine Image IDs.</p> <p> <b>The following data type values are supported.</b> </p> <ul> <li> <p> <code>text</code> </p> </li> <li> <p> <code>aws:ec2:image</code> </p> </li> </ul> <p>When you create a <code>String</code> parameter and specify <code>aws:ec2:image</code>, Systems Manager validates the parameter value is in the required format, such as <code>ami-12345abcdeEXAMPLE</code>, and that the specified AMI is available in your AWS account. For more information, see <a href=\"http://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html\">Native parameter support for Amazon Machine Image IDs</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        }
      }
    },
    "PutParameterResult": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "PSParameterVersion",
          "documentation": "<p>The new version number of a parameter. If you edit a parameter value, Parameter Store automatically creates a new version and assigns this new version a unique ID. You can reference a parameter version ID in API actions or in Systems Manager documents (SSM documents). By default, if you don't specify a specific version, the system returns the latest parameter value when a parameter is called.</p>"
        },
        "Tier": {
          "shape": "ParameterTier",
          "documentation": "<p>The tier assigned to the parameter.</p>"
        }
      }
    },
    "RebootOption": {
      "type": "string",
      "enum": [
        "RebootIfNeeded",
        "NoReboot"
      ]
    },
    "Region": {
      "type": "string"
    },
    "Regions": {
      "type": "list",
      "member": {
        "shape": "Region"
      },
      "max": 50,
      "min": 1
    },
    "RegisterDefaultPatchBaselineRequest": {
      "type": "structure",
      "required": [
        "BaselineId"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline that should be the default patch baseline.</p>"
        }
      }
    },
    "RegisterDefaultPatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the default patch baseline.</p>"
        }
      }
    },
    "RegisterPatchBaselineForPatchGroupRequest": {
      "type": "structure",
      "required": [
        "BaselineId",
        "PatchGroup"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to register the patch group with.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group that should be registered with the patch baseline.</p>"
        }
      }
    },
    "RegisterPatchBaselineForPatchGroupResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline the patch group was registered with.</p>"
        },
        "PatchGroup": {
          "shape": "PatchGroup",
          "documentation": "<p>The name of the patch group registered with the patch baseline.</p>"
        }
      }
    },
    "RegisterTargetWithMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "ResourceType",
        "Targets"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the target should be registered with.</p>"
        },
        "ResourceType": {
          "shape": "MaintenanceWindowResourceType",
          "documentation": "<p>The type of target being registered with the maintenance window.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs.</p> <p>You can specify targets using instance IDs, resource group names, or tags that have been applied to instances.</p> <p> <b>Example 1</b>: Specify instance IDs</p> <p> <code>Key=InstanceIds,Values=<i>instance-id-1</i>,<i>instance-id-2</i>,<i>instance-id-3</i> </code> </p> <p> <b>Example 2</b>: Use tag key-pairs applied to instances</p> <p> <code>Key=tag:<i>my-tag-key</i>,Values=<i>my-tag-value-1</i>,<i>my-tag-value-2</i> </code> </p> <p> <b>Example 3</b>: Use tag-keys applied to instances</p> <p> <code>Key=tag-key,Values=<i>my-tag-key-1</i>,<i>my-tag-key-2</i> </code> </p> <p> <b>Example 4</b>: Use resource group names</p> <p> <code>Key=resource-groups:Name,Values=<i>resource-group-name</i> </code> </p> <p> <b>Example 5</b>: Use filters for resource group types</p> <p> <code>Key=resource-groups:ResourceTypeFilters,Values=<i>resource-type-1</i>,<i>resource-type-2</i> </code> </p> <note> <p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify resource types in the following format</p> <p> <code>Key=resource-groups:ResourceTypeFilters,Values=<i>AWS::EC2::INSTANCE</i>,<i>AWS::EC2::VPC</i> </code> </p> </note> <p>For more information about these examples formats, including the best use case for each one, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html\">Examples: Register targets with a maintenance window</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>An optional name for the target.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description for the target.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>User-provided idempotency token.</p>",
          "idempotencyToken": true
        }
      }
    },
    "RegisterTargetWithMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The ID of the target definition in this maintenance window.</p>"
        }
      }
    },
    "RegisterTaskWithMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "Targets",
        "TaskArn",
        "TaskType",
        "MaxConcurrency",
        "MaxErrors"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window the task should be added to.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets (either instances or maintenance window targets).</p> <p>Specify instances using the following format: </p> <p> <code>Key=InstanceIds,Values=&lt;instance-id-1&gt;,&lt;instance-id-2&gt;</code> </p> <p>Specify maintenance window targets using the following format:</p> <p> <code>Key=WindowTargetIds;,Values=&lt;window-target-id-1&gt;,&lt;window-target-id-2&gt;</code> </p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The ARN of the task to run.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run <code>RegisterTaskWithMaintenanceWindow</code>.</p> <p>For more information, see the following topics in the in the <i>AWS Systems Manager User Guide</i>:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions\">Using service-linked roles for Systems Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role\">Should I use a service-linked role or a custom service role to run maintenance window tasks? </a> </p> </li> </ul>"
        },
        "TaskType": {
          "shape": "MaintenanceWindowTaskType",
          "documentation": "<p>The type of task being registered.</p>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParameters",
          "documentation": "<p>The parameters that should be passed to the task when it is run.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "TaskInvocationParameters": {
          "shape": "MaintenanceWindowTaskInvocationParameters",
          "documentation": "<p>The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty. </p>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The priority of the task in the maintenance window, the lower the number the higher the priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the same priority scheduled in parallel.</p>",
          "box": true
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets this task can be run for in parallel.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed before this task stops being scheduled.</p>"
        },
        "LoggingInfo": {
          "shape": "LoggingInfo",
          "documentation": "<p>A structure containing information about an S3 bucket to write instance-level logs to. </p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>An optional name for the task.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description for the task.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>User-provided idempotency token.</p>",
          "idempotencyToken": true
        }
      }
    },
    "RegisterTaskWithMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The ID of the task in the maintenance window.</p>"
        }
      }
    },
    "RegistrationLimit": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "RegistrationsCount": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "RelatedOpsItem": {
      "type": "structure",
      "required": [
        "OpsItemId"
      ],
      "members": {
        "OpsItemId": {
          "shape": "String",
          "documentation": "<p>The ID of an OpsItem related to the current OpsItem.</p>"
        }
      },
      "documentation": "<p>An OpsItems that shares something in common with the current OpsItem. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.</p>"
    },
    "RelatedOpsItems": {
      "type": "list",
      "member": {
        "shape": "RelatedOpsItem"
      }
    },
    "RemainingCount": {
      "type": "integer"
    },
    "RemoveTagsFromResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ResourceId",
        "TagKeys"
      ],
      "members": {
        "ResourceType": {
          "shape": "ResourceTypeForTagging",
          "documentation": "<p>The type of resource from which you want to remove a tag.</p> <note> <p>The ManagedInstance type for this API action is only for on-premises managed instances. Specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.</p> </note>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource from which you want to remove tags. For example:</p> <p>ManagedInstance: mi-012345abcde</p> <p>MaintenanceWindow: mw-012345abcde</p> <p>PatchBaseline: pb-012345abcde</p> <p>For the Document and Parameter values, use the name of the resource.</p> <note> <p>The ManagedInstance type for this API action is only for on-premises managed instances. Specify the name of the managed instance in the following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.</p> </note>"
        },
        "TagKeys": {
          "shape": "KeyList",
          "documentation": "<p>Tag keys that you want to remove from the specified resource.</p>"
        }
      }
    },
    "RemoveTagsFromResourceResult": {
      "type": "structure",
      "members": {}
    },
    "ResetServiceSettingRequest": {
      "type": "structure",
      "required": [
        "SettingId"
      ],
      "members": {
        "SettingId": {
          "shape": "ServiceSettingId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be <code>/ssm/parameter-store/default-parameter-tier</code>, <code>/ssm/parameter-store/high-throughput-enabled</code>, or <code>/ssm/managed-instance/activation-tier</code>. For example, <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.</p>"
        }
      },
      "documentation": "<p>The request body of the ResetServiceSetting API action.</p>"
    },
    "ResetServiceSettingResult": {
      "type": "structure",
      "members": {
        "ServiceSetting": {
          "shape": "ServiceSetting",
          "documentation": "<p>The current, effective service setting after calling the ResetServiceSetting API action.</p>"
        }
      },
      "documentation": "<p>The result body of the ResetServiceSetting API action.</p>"
    },
    "ResolvedTargets": {
      "type": "structure",
      "members": {
        "ParameterValues": {
          "shape": "TargetParameterList",
          "documentation": "<p>A list of parameter values sent to targets that resolved during the Automation execution.</p>"
        },
        "Truncated": {
          "shape": "Boolean",
          "documentation": "<p>A boolean value indicating whether the resolved target list is truncated.</p>"
        }
      },
      "documentation": "<p>Information about targets that resolved during the Automation execution.</p>"
    },
    "ResourceComplianceSummaryItem": {
      "type": "structure",
      "members": {
        "ComplianceType": {
          "shape": "ComplianceTypeName",
          "documentation": "<p>The compliance type.</p>"
        },
        "ResourceType": {
          "shape": "ComplianceResourceType",
          "documentation": "<p>The resource type.</p>"
        },
        "ResourceId": {
          "shape": "ComplianceResourceId",
          "documentation": "<p>The resource ID.</p>"
        },
        "Status": {
          "shape": "ComplianceStatus",
          "documentation": "<p>The compliance status for the resource.</p>"
        },
        "OverallSeverity": {
          "shape": "ComplianceSeverity",
          "documentation": "<p>The highest severity item found for the resource. The resource is compliant for this item.</p>"
        },
        "ExecutionSummary": {
          "shape": "ComplianceExecutionSummary",
          "documentation": "<p>Information about the execution.</p>"
        },
        "CompliantSummary": {
          "shape": "CompliantSummary",
          "documentation": "<p>A list of items that are compliant for the resource.</p>"
        },
        "NonCompliantSummary": {
          "shape": "NonCompliantSummary",
          "documentation": "<p>A list of items that aren't compliant for the resource.</p>"
        }
      },
      "documentation": "<p>Compliance summary information for a specific resource. </p>"
    },
    "ResourceComplianceSummaryItemList": {
      "type": "list",
      "member": {
        "shape": "ResourceComplianceSummaryItem"
      }
    },
    "ResourceCount": {
      "type": "integer"
    },
    "ResourceCountByStatus": {
      "type": "string"
    },
    "ResourceDataSyncAWSKMSKeyARN": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "arn:.*"
    },
    "ResourceDataSyncAwsOrganizationsSource": {
      "type": "structure",
      "required": [
        "OrganizationSourceType"
      ],
      "members": {
        "OrganizationSourceType": {
          "shape": "ResourceDataSyncOrganizationSourceType",
          "documentation": "<p>If an AWS Organization is present, this is either <code>OrganizationalUnits</code> or <code>EntireOrganization</code>. For <code>OrganizationalUnits</code>, the data is aggregated from a set of organization units. For <code>EntireOrganization</code>, the data is aggregated from the entire AWS Organization. </p>"
        },
        "OrganizationalUnits": {
          "shape": "ResourceDataSyncOrganizationalUnitList",
          "documentation": "<p>The AWS Organizations organization units included in the sync.</p>"
        }
      },
      "documentation": "<p>Information about the AwsOrganizationsSource resource data sync source. A sync source of this type can synchronize data from AWS Organizations or, if an AWS Organization is not present, from multiple AWS Regions.</p>"
    },
    "ResourceDataSyncCreatedTime": {
      "type": "timestamp"
    },
    "ResourceDataSyncDestinationDataSharing": {
      "type": "structure",
      "members": {
        "DestinationDataSharingType": {
          "shape": "ResourceDataSyncDestinationDataSharingType",
          "documentation": "<p>The sharing data type. Only <code>Organization</code> is supported.</p>"
        }
      },
      "documentation": "<p>Synchronize Systems Manager Inventory data from multiple AWS accounts defined in AWS Organizations to a centralized S3 bucket. Data is synchronized to individual key prefixes in the central bucket. Each key prefix represents a different AWS account ID.</p>"
    },
    "ResourceDataSyncDestinationDataSharingType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncIncludeFutureRegions": {
      "type": "boolean"
    },
    "ResourceDataSyncItem": {
      "type": "structure",
      "members": {
        "SyncName": {
          "shape": "ResourceDataSyncName",
          "documentation": "<p>The name of the Resource Data Sync.</p>"
        },
        "SyncType": {
          "shape": "ResourceDataSyncType",
          "documentation": "<p>The type of resource data sync. If <code>SyncType</code> is <code>SyncToDestination</code>, then the resource data sync synchronizes data to an S3 bucket. If the <code>SyncType</code> is <code>SyncFromSource</code> then the resource data sync synchronizes data from AWS Organizations or from multiple AWS Regions.</p>"
        },
        "SyncSource": {
          "shape": "ResourceDataSyncSourceWithState",
          "documentation": "<p>Information about the source where the data was synchronized. </p>"
        },
        "S3Destination": {
          "shape": "ResourceDataSyncS3Destination",
          "documentation": "<p>Configuration information for the target S3 bucket.</p>"
        },
        "LastSyncTime": {
          "shape": "LastResourceDataSyncTime",
          "documentation": "<p>The last time the configuration attempted to sync (UTC).</p>"
        },
        "LastSuccessfulSyncTime": {
          "shape": "LastSuccessfulResourceDataSyncTime",
          "documentation": "<p>The last time the sync operations returned a status of <code>SUCCESSFUL</code> (UTC).</p>"
        },
        "SyncLastModifiedTime": {
          "shape": "ResourceDataSyncLastModifiedTime",
          "documentation": "<p>The date and time the resource data sync was changed. </p>"
        },
        "LastStatus": {
          "shape": "LastResourceDataSyncStatus",
          "documentation": "<p>The status reported by the last sync.</p>"
        },
        "SyncCreatedTime": {
          "shape": "ResourceDataSyncCreatedTime",
          "documentation": "<p>The date and time the configuration was created (UTC).</p>"
        },
        "LastSyncStatusMessage": {
          "shape": "LastResourceDataSyncMessage",
          "documentation": "<p>The status message details reported by the last sync.</p>"
        }
      },
      "documentation": "<p>Information about a Resource Data Sync configuration, including its current status and last successful sync.</p>"
    },
    "ResourceDataSyncItemList": {
      "type": "list",
      "member": {
        "shape": "ResourceDataSyncItem"
      }
    },
    "ResourceDataSyncLastModifiedTime": {
      "type": "timestamp"
    },
    "ResourceDataSyncName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncOrganizationSourceType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncOrganizationalUnit": {
      "type": "structure",
      "members": {
        "OrganizationalUnitId": {
          "shape": "ResourceDataSyncOrganizationalUnitId",
          "documentation": "<p>The AWS Organization unit ID data source for the sync.</p>"
        }
      },
      "documentation": "<p>The AWS Organizations organizational unit data source for the sync.</p>"
    },
    "ResourceDataSyncOrganizationalUnitId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"
    },
    "ResourceDataSyncOrganizationalUnitList": {
      "type": "list",
      "member": {
        "shape": "ResourceDataSyncOrganizationalUnit"
      },
      "max": 1000,
      "min": 1
    },
    "ResourceDataSyncS3BucketName": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ResourceDataSyncS3Destination": {
      "type": "structure",
      "required": [
        "BucketName",
        "SyncFormat",
        "Region"
      ],
      "members": {
        "BucketName": {
          "shape": "ResourceDataSyncS3BucketName",
          "documentation": "<p>The name of the S3 bucket where the aggregated data is stored.</p>"
        },
        "Prefix": {
          "shape": "ResourceDataSyncS3Prefix",
          "documentation": "<p>An Amazon S3 prefix for the bucket.</p>"
        },
        "SyncFormat": {
          "shape": "ResourceDataSyncS3Format",
          "documentation": "<p>A supported sync format. The following format is currently supported: JsonSerDe</p>"
        },
        "Region": {
          "shape": "ResourceDataSyncS3Region",
          "documentation": "<p>The AWS Region with the S3 bucket targeted by the Resource Data Sync.</p>"
        },
        "AWSKMSKeyARN": {
          "shape": "ResourceDataSyncAWSKMSKeyARN",
          "documentation": "<p>The ARN of an encryption key for a destination in Amazon S3. Must belong to the same Region as the destination S3 bucket.</p>"
        },
        "DestinationDataSharing": {
          "shape": "ResourceDataSyncDestinationDataSharing",
          "documentation": "<p>Enables destination data sharing. By default, this field is <code>null</code>.</p>"
        }
      },
      "documentation": "<p>Information about the target S3 bucket for the Resource Data Sync.</p>"
    },
    "ResourceDataSyncS3Format": {
      "type": "string",
      "enum": [
        "JsonSerDe"
      ]
    },
    "ResourceDataSyncS3Prefix": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ResourceDataSyncS3Region": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncSource": {
      "type": "structure",
      "required": [
        "SourceType",
        "SourceRegions"
      ],
      "members": {
        "SourceType": {
          "shape": "ResourceDataSyncSourceType",
          "documentation": "<p>The type of data source for the resource data sync. <code>SourceType</code> is either <code>AwsOrganizations</code> (if an organization is present in AWS Organizations) or <code>singleAccountMultiRegions</code>.</p>"
        },
        "AwsOrganizationsSource": {
          "shape": "ResourceDataSyncAwsOrganizationsSource",
          "documentation": "<p>Information about the AwsOrganizationsSource resource data sync source. A sync source of this type can synchronize data from AWS Organizations.</p>"
        },
        "SourceRegions": {
          "shape": "ResourceDataSyncSourceRegionList",
          "documentation": "<p>The <code>SyncSource</code> AWS Regions included in the resource data sync.</p>"
        },
        "IncludeFutureRegions": {
          "shape": "ResourceDataSyncIncludeFutureRegions",
          "documentation": "<p>Whether to automatically synchronize and aggregate data from new AWS Regions when those Regions come online.</p>"
        }
      },
      "documentation": "<p>Information about the source of the data included in the resource data sync.</p>"
    },
    "ResourceDataSyncSourceRegion": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncSourceRegionList": {
      "type": "list",
      "member": {
        "shape": "ResourceDataSyncSourceRegion"
      }
    },
    "ResourceDataSyncSourceType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncSourceWithState": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "ResourceDataSyncSourceType",
          "documentation": "<p>The type of data source for the resource data sync. <code>SourceType</code> is either <code>AwsOrganizations</code> (if an organization is present in AWS Organizations) or <code>singleAccountMultiRegions</code>.</p>"
        },
        "AwsOrganizationsSource": {
          "shape": "ResourceDataSyncAwsOrganizationsSource",
          "documentation": "<p>The field name in <code>SyncSource</code> for the <code>ResourceDataSyncAwsOrganizationsSource</code> type.</p>"
        },
        "SourceRegions": {
          "shape": "ResourceDataSyncSourceRegionList",
          "documentation": "<p>The <code>SyncSource</code> AWS Regions included in the resource data sync.</p>"
        },
        "IncludeFutureRegions": {
          "shape": "ResourceDataSyncIncludeFutureRegions",
          "documentation": "<p>Whether to automatically synchronize and aggregate data from new AWS Regions when those Regions come online.</p>"
        },
        "State": {
          "shape": "ResourceDataSyncState",
          "documentation": "<p>The data type name for including resource data sync state. There are four sync states:</p> <p> <code>OrganizationNotExists</code>: Your organization doesn't exist.</p> <p> <code>NoPermissions</code>: The system can't locate the service-linked role. This role is automatically created when a user creates a resource data sync in Explorer.</p> <p> <code>InvalidOrganizationalUnit</code>: You specified or selected an invalid unit in the resource data sync configuration.</p> <p> <code>TrustedAccessDisabled</code>: You disabled Systems Manager access in the organization in AWS Organizations.</p>"
        }
      },
      "documentation": "<p>The data type name for including resource data sync state. There are four sync states:</p> <p> <code>OrganizationNotExists</code> (Your organization doesn't exist)</p> <p> <code>NoPermissions</code> (The system can't locate the service-linked role. This role is automatically created when a user creates a resource data sync in Explorer.)</p> <p> <code>InvalidOrganizationalUnit</code> (You specified or selected an invalid unit in the resource data sync configuration.)</p> <p> <code>TrustedAccessDisabled</code> (You disabled Systems Manager access in the organization in AWS Organizations.)</p>"
    },
    "ResourceDataSyncState": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceDataSyncType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceId": {
      "type": "string"
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "ManagedInstance",
        "Document",
        "EC2Instance"
      ]
    },
    "ResourceTypeForTagging": {
      "type": "string",
      "enum": [
        "Document",
        "ManagedInstance",
        "MaintenanceWindow",
        "Parameter",
        "PatchBaseline",
        "OpsItem"
      ]
    },
    "ResponseCode": {
      "type": "integer"
    },
    "ResultAttribute": {
      "type": "structure",
      "required": [
        "TypeName"
      ],
      "members": {
        "TypeName": {
          "shape": "InventoryItemTypeName",
          "documentation": "<p>Name of the inventory item type. Valid value: AWS:InstanceInformation. Default Value: AWS:InstanceInformation.</p>"
        }
      },
      "documentation": "<p>The inventory item result attribute.</p>"
    },
    "ResultAttributeList": {
      "type": "list",
      "member": {
        "shape": "ResultAttribute"
      },
      "max": 1,
      "min": 1
    },
    "ResumeSessionRequest": {
      "type": "structure",
      "required": [
        "SessionId"
      ],
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the disconnected session to resume.</p>"
        }
      }
    },
    "ResumeSessionResponse": {
      "type": "structure",
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the session.</p>"
        },
        "TokenValue": {
          "shape": "TokenValue",
          "documentation": "<p>An encrypted token value containing session and caller information. Used to authenticate the connection to the instance.</p>"
        },
        "StreamUrl": {
          "shape": "StreamUrl",
          "documentation": "<p>A URL back to SSM Agent on the instance that the Session Manager client uses to send commands and receive output from the instance. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code>.</p> <p> <b>region</b> represents the Region identifier for an AWS Region supported by AWS Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region. For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href=\"http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region\">Systems Manager service endpoints</a> in the <i>AWS General Reference</i>.</p> <p> <b>session-id</b> represents the ID of a Session Manager session, such as <code>1a2b3c4dEXAMPLE</code>.</p>"
        }
      }
    },
    "S3BucketName": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "S3KeyPrefix": {
      "type": "string",
      "max": 500
    },
    "S3OutputLocation": {
      "type": "structure",
      "members": {
        "OutputS3Region": {
          "shape": "S3Region",
          "documentation": "<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.</p>"
        },
        "OutputS3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the S3 bucket.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 bucket subfolder.</p>"
        }
      },
      "documentation": "<p>An S3 bucket where you want to store the results of this request.</p>"
    },
    "S3OutputUrl": {
      "type": "structure",
      "members": {
        "OutputUrl": {
          "shape": "Url",
          "documentation": "<p>A URL for an S3 bucket where you want to store the results of this request.</p>"
        }
      },
      "documentation": "<p>A URL for the S3 bucket where you want to store the results of this request.</p>"
    },
    "S3Region": {
      "type": "string",
      "max": 20,
      "min": 3
    },
    "ScheduleExpression": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ScheduledWindowExecution": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window to be run.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window to be run.</p>"
        },
        "ExecutionTime": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The time, in ISO-8601 Extended format, that the maintenance window is scheduled to be run.</p>"
        }
      },
      "documentation": "<p>Information about a scheduled execution for a maintenance window.</p>"
    },
    "ScheduledWindowExecutionList": {
      "type": "list",
      "member": {
        "shape": "ScheduledWindowExecution"
      }
    },
    "SendAutomationSignalRequest": {
      "type": "structure",
      "required": [
        "AutomationExecutionId",
        "SignalType"
      ],
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The unique identifier for an existing Automation execution that you want to send the signal to.</p>"
        },
        "SignalType": {
          "shape": "SignalType",
          "documentation": "<p>The type of signal to send to an Automation execution. </p>"
        },
        "Payload": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>The data sent with the signal. The data schema depends on the type of signal used in the request.</p> <p>For <code>Approve</code> and <code>Reject</code> signal types, the payload is an optional comment that you can send with the signal type. For example:</p> <p> <code>Comment=\"Looks good\"</code> </p> <p>For <code>StartStep</code> and <code>Resume</code> signal types, you must send the name of the Automation step to start or resume as the payload. For example:</p> <p> <code>StepName=\"step1\"</code> </p> <p>For the <code>StopStep</code> signal type, you must send the step execution ID as the payload. For example:</p> <p> <code>StepExecutionId=\"97fff367-fc5a-4299-aed8-0123456789ab\"</code> </p>"
        }
      }
    },
    "SendAutomationSignalResult": {
      "type": "structure",
      "members": {}
    },
    "SendCommandRequest": {
      "type": "structure",
      "required": [
        "DocumentName"
      ],
      "members": {
        "InstanceIds": {
          "shape": "InstanceIdList",
          "documentation": "<p>The IDs of the instances where the command should run. Specifying instance IDs is most useful when you are targeting a limited number of instances, though you can specify up to 50 IDs.</p> <p>To target a larger number of instances, or if you prefer not to list individual instance IDs, we recommend using the <code>Targets</code> option instead. Using <code>Targets</code>, which accepts tag key-value pairs to identify the instances to send commands to, you can a send command to tens, hundreds, or thousands of instances at once.</p> <p>For more information about how to use targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html\">Using targets and rate controls to send commands to a fleet</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>An array of search criteria that targets instances using a <code>Key,Value</code> combination that you specify. Specifying targets is most useful when you want to send a command to a large number of instances at once. Using <code>Targets</code>, which accepts tag key-value pairs to identify instances, you can send a command to tens, hundreds, or thousands of instances at once.</p> <p>To send a command to a smaller number of instances, you can use the <code>InstanceIds</code> option instead.</p> <p>For more information about how to use targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html\">Sending commands to a fleet</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "DocumentName": {
          "shape": "DocumentARN",
          "documentation": "<p>Required. The name of the Systems Manager document to run. This can be a public document or a custom document.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a specific version number. If you run commands by using the AWS CLI, then you must escape the first two options by using a backslash. If you specify a version number, then you don't need to use the backslash. For example:</p> <p>--document-version \"\\$DEFAULT\"</p> <p>--document-version \"\\$LATEST\"</p> <p>--document-version \"3\"</p>"
        },
        "DocumentHash": {
          "shape": "DocumentHash",
          "documentation": "<p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>"
        },
        "DocumentHashType": {
          "shape": "DocumentHashType",
          "documentation": "<p>Sha256 or Sha1.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>"
        },
        "TimeoutSeconds": {
          "shape": "TimeoutSeconds",
          "documentation": "<p>If this time is reached and the command has not already started running, it will not run.</p>",
          "box": true
        },
        "Comment": {
          "shape": "Comment",
          "documentation": "<p>User-specified information about the command, such as a brief description of what the command should do.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The required and optional parameters specified in the document being run.</p>"
        },
        "OutputS3Region": {
          "shape": "S3Region",
          "documentation": "<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Region of the S3 bucket.</p>"
        },
        "OutputS3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the S3 bucket where command execution responses should be stored.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The directory structure within the S3 bucket where the responses should be stored.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>(Optional) The maximum number of instances that are allowed to run the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity\">Using concurrency controls</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 0. For more information about how to use MaxErrors, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors\">Using error controls</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.</p>"
        },
        "NotificationConfig": {
          "shape": "NotificationConfig",
          "documentation": "<p>Configurations for sending notifications.</p>"
        },
        "CloudWatchOutputConfig": {
          "shape": "CloudWatchOutputConfig",
          "documentation": "<p>Enables Systems Manager to send Run Command output to Amazon CloudWatch Logs. </p>"
        }
      }
    },
    "SendCommandResult": {
      "type": "structure",
      "members": {
        "Command": {
          "shape": "Command",
          "documentation": "<p>The request as it was received by Systems Manager. Also provides the command ID which can be used future references to this request.</p>"
        }
      }
    },
    "ServiceRole": {
      "type": "string"
    },
    "ServiceSetting": {
      "type": "structure",
      "members": {
        "SettingId": {
          "shape": "ServiceSettingId",
          "documentation": "<p>The ID of the service setting.</p>"
        },
        "SettingValue": {
          "shape": "ServiceSettingValue",
          "documentation": "<p>The value of the service setting.</p>"
        },
        "LastModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>The last time the service setting was modified.</p>"
        },
        "LastModifiedUser": {
          "shape": "String",
          "documentation": "<p>The ARN of the last modified user. This field is populated only if the setting value was overwritten.</p>"
        },
        "ARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the service setting.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the service setting. The value can be Default, Customized or PendingUpdate.</p> <ul> <li> <p>Default: The current setting uses a default value provisioned by the AWS service team.</p> </li> <li> <p>Customized: The current setting use a custom value specified by the customer.</p> </li> <li> <p>PendingUpdate: The current setting uses a default or custom value, but a setting change request is pending approval.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The service setting data structure.</p> <p> <code>ServiceSetting</code> is an account-level setting for an AWS service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an AWS service charges money to the account based on feature or service usage, then the AWS service team might create a default setting of \"false\". This means the user can't use this feature unless they change the setting to \"true\" and intentionally opt in for a paid feature.</p> <p>Services map a <code>SettingId</code> object to a setting value. AWS services teams define the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>, but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code> permission for the setting. Use the <a>UpdateServiceSetting</a> API action to change the default setting. Or, use the <a>ResetServiceSetting</a> to change the value back to the original value defined by the AWS service team.</p>"
    },
    "ServiceSettingId": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "ServiceSettingValue": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "Session": {
      "type": "structure",
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the session.</p>"
        },
        "Target": {
          "shape": "SessionTarget",
          "documentation": "<p>The instance that the Session Manager session connected to.</p>"
        },
        "Status": {
          "shape": "SessionStatus",
          "documentation": "<p>The status of the session. For example, \"Connected\" or \"Terminated\".</p>"
        },
        "StartDate": {
          "shape": "DateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, when the session began.</p>"
        },
        "EndDate": {
          "shape": "DateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, when the session was terminated.</p>"
        },
        "DocumentName": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the Session Manager SSM document used to define the parameters and plugin settings for the session. For example, <code>SSM-SessionManagerRunShell</code>.</p>"
        },
        "Owner": {
          "shape": "SessionOwner",
          "documentation": "<p>The ID of the AWS user account that started the session.</p>"
        },
        "Details": {
          "shape": "SessionDetails",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "OutputUrl": {
          "shape": "SessionManagerOutputUrl",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Information about a Session Manager connection to an instance.</p>"
    },
    "SessionDetails": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "SessionFilter": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "SessionFilterKey",
          "documentation": "<p>The name of the filter.</p>"
        },
        "value": {
          "shape": "SessionFilterValue",
          "documentation": "<p>The filter value. Valid values for each filter key are as follows:</p> <ul> <li> <p>InvokedAfter: Specify a timestamp to limit your results. For example, specify 2018-08-29T00:00:00Z to see sessions that started August 29, 2018, and later.</p> </li> <li> <p>InvokedBefore: Specify a timestamp to limit your results. For example, specify 2018-08-29T00:00:00Z to see sessions that started before August 29, 2018.</p> </li> <li> <p>Target: Specify an instance to which session connections have been made.</p> </li> <li> <p>Owner: Specify an AWS user account to see a list of sessions started by that user.</p> </li> <li> <p>Status: Specify a valid session status to see a list of all sessions with that status. Status values you can specify include:</p> <ul> <li> <p>Connected</p> </li> <li> <p>Connecting</p> </li> <li> <p>Disconnected</p> </li> <li> <p>Terminated</p> </li> <li> <p>Terminating</p> </li> <li> <p>Failed</p> </li> </ul> </li> </ul>"
        }
      },
      "documentation": "<p>Describes a filter for Session Manager information.</p>"
    },
    "SessionFilterKey": {
      "type": "string",
      "enum": [
        "InvokedAfter",
        "InvokedBefore",
        "Target",
        "Owner",
        "Status"
      ]
    },
    "SessionFilterList": {
      "type": "list",
      "member": {
        "shape": "SessionFilter"
      },
      "max": 5,
      "min": 1
    },
    "SessionFilterValue": {
      "type": "string",
      "max": 400,
      "min": 1
    },
    "SessionId": {
      "type": "string",
      "max": 96,
      "min": 1
    },
    "SessionList": {
      "type": "list",
      "member": {
        "shape": "Session"
      }
    },
    "SessionManagerCloudWatchOutputUrl": {
      "type": "string",
      "max": 2083,
      "min": 1
    },
    "SessionManagerOutputUrl": {
      "type": "structure",
      "members": {
        "S3OutputUrl": {
          "shape": "SessionManagerS3OutputUrl",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "CloudWatchOutputUrl": {
          "shape": "SessionManagerCloudWatchOutputUrl",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Reserved for future use.</p>"
    },
    "SessionManagerParameterName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "SessionManagerParameterValue": {
      "type": "string",
      "max": 65535,
      "min": 1
    },
    "SessionManagerParameterValueList": {
      "type": "list",
      "member": {
        "shape": "SessionManagerParameterValue"
      }
    },
    "SessionManagerParameters": {
      "type": "map",
      "key": {
        "shape": "SessionManagerParameterName"
      },
      "value": {
        "shape": "SessionManagerParameterValueList"
      }
    },
    "SessionManagerS3OutputUrl": {
      "type": "string",
      "max": 2083,
      "min": 1
    },
    "SessionMaxResults": {
      "type": "integer",
      "max": 200,
      "min": 1
    },
    "SessionOwner": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "SessionState": {
      "type": "string",
      "enum": [
        "Active",
        "History"
      ]
    },
    "SessionStatus": {
      "type": "string",
      "enum": [
        "Connected",
        "Connecting",
        "Disconnected",
        "Terminated",
        "Terminating",
        "Failed"
      ]
    },
    "SessionTarget": {
      "type": "string",
      "max": 400,
      "min": 1
    },
    "SeveritySummary": {
      "type": "structure",
      "members": {
        "CriticalCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of critical. Critical severity is determined by the organization that published the compliance items.</p>"
        },
        "HighCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of high. High severity is determined by the organization that published the compliance items.</p>"
        },
        "MediumCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of medium. Medium severity is determined by the organization that published the compliance items.</p>"
        },
        "LowCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of low. Low severity is determined by the organization that published the compliance items.</p>"
        },
        "InformationalCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of informational. Informational severity is determined by the organization that published the compliance items.</p>"
        },
        "UnspecifiedCount": {
          "shape": "ComplianceSummaryCount",
          "documentation": "<p>The total number of resources or compliance items that have a severity level of unspecified. Unspecified severity is determined by the organization that published the compliance items.</p>"
        }
      },
      "documentation": "<p>The number of managed instances found for each patch severity level defined in the request filter.</p>"
    },
    "SharedDocumentVersion": {
      "type": "string",
      "documentation": "<p>The document version shared with other accounts. You can share <code>Latest</code>, <code>Default</code> or <code>All versions</code>.</p>",
      "max": 8,
      "pattern": "([$]LATEST|[$]DEFAULT|[$]ALL)"
    },
    "SignalType": {
      "type": "string",
      "enum": [
        "Approve",
        "Reject",
        "StartStep",
        "StopStep",
        "Resume"
      ]
    },
    "SnapshotDownloadUrl": {
      "type": "string"
    },
    "SnapshotId": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
    },
    "StandardErrorContent": {
      "type": "string",
      "max": 8000
    },
    "StandardOutputContent": {
      "type": "string",
      "max": 24000
    },
    "StartAssociationsOnceRequest": {
      "type": "structure",
      "required": [
        "AssociationIds"
      ],
      "members": {
        "AssociationIds": {
          "shape": "AssociationIdList",
          "documentation": "<p>The association IDs that you want to run immediately and only one time.</p>"
        }
      }
    },
    "StartAssociationsOnceResult": {
      "type": "structure",
      "members": {}
    },
    "StartAutomationExecutionRequest": {
      "type": "structure",
      "required": [
        "DocumentName"
      ],
      "members": {
        "DocumentName": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Automation document to use for this execution.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The version of the Automation document to use for this execution.</p>",
          "box": true
        },
        "Parameters": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>A key-value map of execution parameters, which match the declared parameters in the Automation document.</p>"
        },
        "ClientToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>User-provided idempotency token. The token must be unique, is case insensitive, enforces the UUID format, and can't be reused.</p>"
        },
        "Mode": {
          "shape": "ExecutionMode",
          "documentation": "<p>The execution mode of the automation. Valid modes include the following: Auto and Interactive. The default mode is Auto.</p>"
        },
        "TargetParameterName": {
          "shape": "AutomationParameterKey",
          "documentation": "<p>The name of the parameter used as the target resource for the rate-controlled execution. Required if you specify targets.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>A key-value mapping to target resources. Required if you specify TargetParameterName.</p>"
        },
        "TargetMaps": {
          "shape": "TargetMaps",
          "documentation": "<p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps cannot be specified together.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run this task in parallel. You can specify a number, such as 10, or a percentage, such as 10%. The default value is 10.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops running the automation on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops running the automation when the fourth error is received. If you specify 0, then the system stops running the automation on additional targets after the first error result is returned. If you run an automation on 50 resources and set max-errors to 10%, then the system stops running the automation on additional targets when the sixth error is received.</p> <p>Executions that are already running an automation when max-errors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one at a time.</p>"
        },
        "TargetLocations": {
          "shape": "TargetLocations",
          "documentation": "<p>A location is a combination of AWS Regions and/or AWS accounts where you want to run the Automation. Use this action to start an Automation in multiple Regions and multiple accounts. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html\">Running Automation workflows in multiple AWS Regions and accounts</a> in the <i>AWS Systems Manager User Guide</i>. </p>",
          "box": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for an automation. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an automation to identify an environment or operating system. In this case, you could specify the following key name/value pairs:</p> <ul> <li> <p> <code>Key=environment,Value=test</code> </p> </li> <li> <p> <code>Key=OS,Value=Windows</code> </p> </li> </ul> <note> <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a> action.</p> </note>"
        }
      }
    },
    "StartAutomationExecutionResult": {
      "type": "structure",
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The unique ID of a newly scheduled automation execution.</p>"
        }
      }
    },
    "StartSessionRequest": {
      "type": "structure",
      "required": [
        "Target"
      ],
      "members": {
        "Target": {
          "shape": "SessionTarget",
          "documentation": "<p>The instance to connect to for the session.</p>"
        },
        "DocumentName": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the SSM document to define the parameters and plugin settings for the session. For example, <code>SSM-SessionManagerRunShell</code>. You can call the <a>GetDocument</a> API to verify the document exists before attempting to start a session. If no document name is provided, a shell to the instance is launched by default.</p>"
        },
        "Parameters": {
          "shape": "SessionManagerParameters",
          "documentation": "<p>Reserved for future use.</p>"
        }
      }
    },
    "StartSessionResponse": {
      "type": "structure",
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the session.</p>"
        },
        "TokenValue": {
          "shape": "TokenValue",
          "documentation": "<p>An encrypted token value containing session and caller information. Used to authenticate the connection to the instance.</p>"
        },
        "StreamUrl": {
          "shape": "StreamUrl",
          "documentation": "<p>A URL back to SSM Agent on the instance that the Session Manager client uses to send commands and receive output from the instance. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code> </p> <p> <b>region</b> represents the Region identifier for an AWS Region supported by AWS Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region. For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href=\"http://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region\">Systems Manager service endpoints</a> in the <i>AWS General Reference</i>.</p> <p> <b>session-id</b> represents the ID of a Session Manager session, such as <code>1a2b3c4dEXAMPLE</code>.</p>"
        }
      }
    },
    "StatusAdditionalInfo": {
      "type": "string",
      "max": 1024
    },
    "StatusDetails": {
      "type": "string",
      "max": 100,
      "min": 0
    },
    "StatusMessage": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "StatusName": {
      "type": "string"
    },
    "StepExecution": {
      "type": "structure",
      "members": {
        "StepName": {
          "shape": "String",
          "documentation": "<p>The name of this execution step.</p>"
        },
        "Action": {
          "shape": "AutomationActionName",
          "documentation": "<p>The action this step performs. The action determines the behavior of the step.</p>"
        },
        "TimeoutSeconds": {
          "shape": "Long",
          "documentation": "<p>The timeout seconds of the step.</p>",
          "box": true
        },
        "OnFailure": {
          "shape": "String",
          "documentation": "<p>The action to take if the step fails. The default value is Abort.</p>"
        },
        "MaxAttempts": {
          "shape": "Integer",
          "documentation": "<p>The maximum number of tries to run the action of the step. The default value is 1.</p>",
          "box": true
        },
        "ExecutionStartTime": {
          "shape": "DateTime",
          "documentation": "<p>If a step has begun execution, this contains the time the step started. If the step is in Pending status, this field is not populated.</p>"
        },
        "ExecutionEndTime": {
          "shape": "DateTime",
          "documentation": "<p>If a step has finished execution, this contains the time the execution ended. If the step has not yet concluded, this field is not populated.</p>"
        },
        "StepStatus": {
          "shape": "AutomationExecutionStatus",
          "documentation": "<p>The execution status for this step.</p>"
        },
        "ResponseCode": {
          "shape": "String",
          "documentation": "<p>The response code returned by the execution of the step.</p>"
        },
        "Inputs": {
          "shape": "NormalStringMap",
          "documentation": "<p>Fully-resolved values passed into the step before execution.</p>"
        },
        "Outputs": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>Returned values from the execution of the step.</p>"
        },
        "Response": {
          "shape": "String",
          "documentation": "<p>A message associated with the response code for an execution.</p>"
        },
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>If a step failed, this message explains why the execution failed.</p>"
        },
        "FailureDetails": {
          "shape": "FailureDetails",
          "documentation": "<p>Information about the Automation failure.</p>"
        },
        "StepExecutionId": {
          "shape": "String",
          "documentation": "<p>The unique ID of a step execution.</p>"
        },
        "OverriddenParameters": {
          "shape": "AutomationParameterMap",
          "documentation": "<p>A user-specified list of parameters to override when running a step.</p>"
        },
        "IsEnd": {
          "shape": "Boolean",
          "documentation": "<p>The flag which can be used to end automation no matter whether the step succeeds or fails.</p>",
          "box": true
        },
        "NextStep": {
          "shape": "String",
          "documentation": "<p>The next step after the step succeeds.</p>",
          "box": true
        },
        "IsCritical": {
          "shape": "Boolean",
          "documentation": "<p>The flag which can be used to help decide whether the failure of current step leads to the Automation failure.</p>",
          "box": true
        },
        "ValidNextSteps": {
          "shape": "ValidNextStepList",
          "documentation": "<p>Strategies used when step fails, we support Continue and Abort. Abort will fail the automation when the step fails. Continue will ignore the failure of current step and allow automation to run the next step. With conditional branching, we add step:stepName to support the automation to go to another specific step.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets for the step execution.</p>",
          "box": true
        },
        "TargetLocation": {
          "shape": "TargetLocation",
          "documentation": "<p>The combination of AWS Regions and accounts targeted by the current Automation execution.</p>",
          "box": true
        }
      },
      "documentation": "<p>Detailed information about an the execution state of an Automation step.</p>"
    },
    "StepExecutionFilter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "StepExecutionFilterKey",
          "documentation": "<p>One or more keys to limit the results. Valid filter keys include the following: StepName, Action, StepExecutionId, StepExecutionStatus, StartTimeBefore, StartTimeAfter.</p>"
        },
        "Values": {
          "shape": "StepExecutionFilterValueList",
          "documentation": "<p>The values of the filter key.</p>"
        }
      },
      "documentation": "<p>A filter to limit the amount of step execution information returned by the call.</p>"
    },
    "StepExecutionFilterKey": {
      "type": "string",
      "enum": [
        "StartTimeBefore",
        "StartTimeAfter",
        "StepExecutionStatus",
        "StepExecutionId",
        "StepName",
        "Action"
      ]
    },
    "StepExecutionFilterList": {
      "type": "list",
      "member": {
        "shape": "StepExecutionFilter"
      },
      "max": 6,
      "min": 1
    },
    "StepExecutionFilterValue": {
      "type": "string",
      "max": 150,
      "min": 1
    },
    "StepExecutionFilterValueList": {
      "type": "list",
      "member": {
        "shape": "StepExecutionFilterValue"
      },
      "max": 10,
      "min": 1
    },
    "StepExecutionList": {
      "type": "list",
      "member": {
        "shape": "StepExecution"
      }
    },
    "StopAutomationExecutionRequest": {
      "type": "structure",
      "required": [
        "AutomationExecutionId"
      ],
      "members": {
        "AutomationExecutionId": {
          "shape": "AutomationExecutionId",
          "documentation": "<p>The execution ID of the Automation to stop.</p>"
        },
        "Type": {
          "shape": "StopType",
          "documentation": "<p>The stop request type. Valid types include the following: Cancel and Complete. The default type is Cancel.</p>"
        }
      }
    },
    "StopAutomationExecutionResult": {
      "type": "structure",
      "members": {}
    },
    "StopType": {
      "type": "string",
      "enum": [
        "Complete",
        "Cancel"
      ]
    },
    "StreamUrl": {
      "type": "string"
    },
    "String": {
      "type": "string"
    },
    "StringDateTime": {
      "type": "string",
      "pattern": "^([\\-]?\\d{4}(?!\\d{2}\\b))((-?)((0[1-9]|1[0-2])(\\3([12]\\d|0[1-9]|3[01]))?|W([0-4]\\d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]\\d|[12]\\d{2}|3([0-5]\\d|6[1-6])))([T\\s]((([01]\\d|2[0-3])((:?)[0-5]\\d)?|24\\:?00)([\\.,]\\d(?!:))?)?(\\17[0-5]\\d([\\.,]\\d)?)?([zZ]|([\\-])([01]\\d|2[0-3]):?([0-5]\\d)?)?)?)?$"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
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
          "documentation": "<p>The name of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Metadata that you assign to your AWS resources. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment. In Systems Manager, you can apply tags to documents, managed instances, maintenance windows, Parameter Store parameters, and patch baselines.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 1000
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Target": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TargetKey",
          "documentation": "<p>User-defined criteria for sending commands that target instances that meet the criteria.</p>"
        },
        "Values": {
          "shape": "TargetValues",
          "documentation": "<p>User-defined criteria that maps to <code>Key</code>. For example, if you specified <code>tag:ServerRole</code>, you could specify <code>value:WebServer</code> to run a command on instances that include EC2 tags of <code>ServerRole,WebServer</code>. </p>"
        }
      },
      "documentation": "<p>An array of search criteria that targets instances using a Key,Value combination that you specify. </p> <p>Supported formats include the following.</p> <ul> <li> <p> <code>Key=InstanceIds,Values=<i>instance-id-1</i>,<i>instance-id-2</i>,<i>instance-id-3</i> </code> </p> </li> <li> <p> <code>Key=tag:<i>my-tag-key</i>,Values=<i>my-tag-value-1</i>,<i>my-tag-value-2</i> </code> </p> </li> <li> <p> <code>Key=tag-key,Values=<i>my-tag-key-1</i>,<i>my-tag-key-2</i> </code> </p> </li> <li> <p> <b>Run Command and Maintenance window targets only</b>: <code>Key=resource-groups:Name,Values=<i>resource-group-name</i> </code> </p> </li> <li> <p> <b>Maintenance window targets only</b>: <code>Key=resource-groups:ResourceTypeFilters,Values=<i>resource-type-1</i>,<i>resource-type-2</i> </code> </p> </li> <li> <p> <b>Automation targets only</b>: <code>Key=ResourceGroup;Values=<i>resource-group-name</i> </code> </p> </li> </ul> <p>For example:</p> <ul> <li> <p> <code>Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE</code> </p> </li> <li> <p> <code>Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3</code> </p> </li> <li> <p> <code>Key=tag-key,Values=Name,Instance-Type,CostCenter</code> </p> </li> <li> <p> <b>Run Command and Maintenance window targets only</b>: <code>Key=resource-groups:Name,Values=ProductionResourceGroup</code> </p> <p>This example demonstrates how to target all resources in the resource group <b>ProductionResourceGroup</b> in your maintenance window.</p> </li> <li> <p> <b>Maintenance window targets only</b>: <code>Key=resource-groups:ResourceTypeFilters,Values=<i>AWS::EC2::INSTANCE</i>,<i>AWS::EC2::VPC</i> </code> </p> <p>This example demonstrates how to target only EC2 instances and VPCs in your maintenance window.</p> </li> <li> <p> <b>Automation targets only</b>: <code>Key=ResourceGroup,Values=MyResourceGroup</code> </p> </li> <li> <p> <b>State Manager association targets only</b>: <code>Key=InstanceIds,Values=<i>*</i> </code> </p> <p>This example demonstrates how to target all managed instances in the AWS Region where the association was created.</p> </li> </ul> <p>For more information about how to send commands that target instances using <code>Key,Value</code> parameters, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting\">Targeting multiple instances</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
    },
    "TargetCount": {
      "type": "integer"
    },
    "TargetKey": {
      "type": "string",
      "max": 163,
      "min": 1,
      "pattern": "^[\\p{L}\\p{Z}\\p{N}_.:/=\\-@]*$|resource-groups:ResourceTypeFilters|resource-groups:Name"
    },
    "TargetLocation": {
      "type": "structure",
      "members": {
        "Accounts": {
          "shape": "Accounts",
          "documentation": "<p>The AWS accounts targeted by the current Automation execution.</p>"
        },
        "Regions": {
          "shape": "Regions",
          "documentation": "<p>The AWS Regions targeted by the current Automation execution.</p>"
        },
        "TargetLocationMaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of AWS accounts and AWS regions allowed to run the Automation concurrently </p>",
          "box": true
        },
        "TargetLocationMaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The maximum number of errors allowed before the system stops queueing additional Automation executions for the currently running Automation. </p>",
          "box": true
        },
        "ExecutionRoleName": {
          "shape": "ExecutionRoleName",
          "documentation": "<p>The Automation execution role used by the currently running Automation.</p>",
          "box": true
        }
      },
      "documentation": "<p>The combination of AWS Regions and accounts targeted by the current Automation execution.</p>"
    },
    "TargetLocations": {
      "type": "list",
      "member": {
        "shape": "TargetLocation"
      },
      "max": 100,
      "min": 1
    },
    "TargetMap": {
      "type": "map",
      "key": {
        "shape": "TargetMapKey"
      },
      "value": {
        "shape": "TargetMapValueList"
      },
      "max": 20,
      "min": 1
    },
    "TargetMapKey": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "TargetMapValue": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "TargetMapValueList": {
      "type": "list",
      "member": {
        "shape": "TargetMapValue"
      },
      "max": 25,
      "min": 0
    },
    "TargetMaps": {
      "type": "list",
      "member": {
        "shape": "TargetMap"
      },
      "max": 300,
      "min": 0
    },
    "TargetParameterList": {
      "type": "list",
      "member": {
        "shape": "ParameterValue"
      }
    },
    "TargetType": {
      "type": "string",
      "max": 200,
      "pattern": "^\\/[\\w\\.\\-\\:\\/]*$"
    },
    "TargetValue": {
      "type": "string"
    },
    "TargetValues": {
      "type": "list",
      "member": {
        "shape": "TargetValue"
      },
      "max": 50,
      "min": 0
    },
    "Targets": {
      "type": "list",
      "member": {
        "shape": "Target"
      },
      "max": 5,
      "min": 0
    },
    "TerminateSessionRequest": {
      "type": "structure",
      "required": [
        "SessionId"
      ],
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the session to terminate.</p>"
        }
      }
    },
    "TerminateSessionResponse": {
      "type": "structure",
      "members": {
        "SessionId": {
          "shape": "SessionId",
          "documentation": "<p>The ID of the session that has been terminated.</p>"
        }
      }
    },
    "TimeoutSeconds": {
      "type": "integer",
      "max": 2592000,
      "min": 30
    },
    "TokenValue": {
      "type": "string",
      "max": 300,
      "min": 0
    },
    "TotalCount": {
      "type": "integer"
    },
    "UUID": {
      "type": "string",
      "pattern": "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
    },
    "UpdateAssociationRequest": {
      "type": "structure",
      "required": [
        "AssociationId"
      ],
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The ID of the association you want to update. </p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>The document version you want update for the association. </p>"
        },
        "ScheduleExpression": {
          "shape": "ScheduleExpression",
          "documentation": "<p>The cron expression used to schedule the association that you want to update.</p>"
        },
        "OutputLocation": {
          "shape": "InstanceAssociationOutputLocation",
          "documentation": "<p>An S3 bucket where you want to store the results of this request.</p>"
        },
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the SSM document that contains the configuration information for the instance. You can specify Command or Automation documents.</p> <p>You can specify AWS-predefined documents, documents you created, or a document that is shared with you from another account.</p> <p>For SSM documents that are shared with you from other AWS accounts, you must specify the complete SSM document ARN, in the following format:</p> <p> <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i> </code> </p> <p>For example:</p> <p> <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code> </p> <p>For AWS-predefined documents and SSM documents you created in your account, you only need to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or <code>My-Document</code>.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets of the association.</p>"
        },
        "AssociationName": {
          "shape": "AssociationName",
          "documentation": "<p>The name of the association that you want to update.</p>"
        },
        "AssociationVersion": {
          "shape": "AssociationVersion",
          "documentation": "<p>This parameter is provided for concurrency control purposes. You must specify the latest association version in the service. If you want to ensure that this request succeeds, either specify <code>$LATEST</code>, or omit this parameter.</p>"
        },
        "AutomationTargetParameterName": {
          "shape": "AutomationTargetParameterName",
          "documentation": "<p>Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify either an absolute number of errors, for example 10, or a percentage of the target set, for example 10%. If you specify 3, for example, the system stops sending requests when the fourth error is received. If you specify 0, then the system stops sending requests after the first error is returned. If you run an association on 50 instances and set MaxError to 10%, then the system stops sending the request when the sixth error is received.</p> <p>Executions that are already running an association when MaxErrors is reached are allowed to complete, but some of these executions may fail as well. If you need to ensure that there won't be more than max-errors failed executions, set MaxConcurrency to 1 so that executions proceed one at a time.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. The default value is 100%, which means all targets run the association at the same time.</p> <p>If a new instance starts and attempts to run an association while Systems Manager is running MaxConcurrency associations, the association is allowed to run. During the next association interval, the new instance will process its association within the limit specified for MaxConcurrency.</p>"
        },
        "ComplianceSeverity": {
          "shape": "AssociationComplianceSeverity",
          "documentation": "<p>The severity level to assign to the association.</p>"
        },
        "SyncCompliance": {
          "shape": "AssociationSyncCompliance",
          "documentation": "<p>The mode for generating association compliance. You can specify <code>AUTO</code> or <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association execution to determine the compliance status. If the association execution runs successfully, then the association is <code>COMPLIANT</code>. If the association execution doesn't run successfully, the association is <code>NON-COMPLIANT</code>.</p> <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter for the <a>PutComplianceItems</a> API action. In this case, compliance data is not managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API action.</p> <p>By default, all associations use <code>AUTO</code> mode.</p>"
        },
        "ApplyOnlyAtCronInterval": {
          "shape": "ApplyOnlyAtCronInterval",
          "documentation": "<p>By default, when you update an association, the system runs it immediately after it is updated and then according to the schedule you specified. Specify this option if you don't want an association to run immediately after you update it.</p> <p>Also, if you specified this option when you created the association, you can reset it. To do so, specify the <code>no-apply-only-at-cron-interval</code> parameter when you update the association from the command line. This parameter forces the association to run immediately after updating it and according to the interval specified.</p>"
        }
      }
    },
    "UpdateAssociationResult": {
      "type": "structure",
      "members": {
        "AssociationDescription": {
          "shape": "AssociationDescription",
          "documentation": "<p>The description of the association that was updated.</p>"
        }
      }
    },
    "UpdateAssociationStatusRequest": {
      "type": "structure",
      "required": [
        "Name",
        "InstanceId",
        "AssociationStatus"
      ],
      "members": {
        "Name": {
          "shape": "DocumentARN",
          "documentation": "<p>The name of the Systems Manager document.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance.</p>"
        },
        "AssociationStatus": {
          "shape": "AssociationStatus",
          "documentation": "<p>The association status.</p>"
        }
      }
    },
    "UpdateAssociationStatusResult": {
      "type": "structure",
      "members": {
        "AssociationDescription": {
          "shape": "AssociationDescription",
          "documentation": "<p>Information about the association.</p>"
        }
      }
    },
    "UpdateDocumentDefaultVersionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "DocumentVersion"
      ],
      "members": {
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of a custom document that you want to set as the default version.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersionNumber",
          "documentation": "<p>The version of a custom document that you want to set as the default version.</p>"
        }
      }
    },
    "UpdateDocumentDefaultVersionResult": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "DocumentDefaultVersionDescription",
          "documentation": "<p>The description of a custom document that you want to set as the default version.</p>"
        }
      }
    },
    "UpdateDocumentRequest": {
      "type": "structure",
      "required": [
        "Content",
        "Name"
      ],
      "members": {
        "Content": {
          "shape": "DocumentContent",
          "documentation": "<p>A valid JSON or YAML string.</p>"
        },
        "Attachments": {
          "shape": "AttachmentsSourceList",
          "documentation": "<p>A list of key and value pairs that describe attachments to a version of a document.</p>"
        },
        "Name": {
          "shape": "DocumentName",
          "documentation": "<p>The name of the document that you want to update.</p>"
        },
        "VersionName": {
          "shape": "DocumentVersionName",
          "documentation": "<p>An optional field specifying the version of the artifact you are updating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and cannot be changed.</p>"
        },
        "DocumentVersion": {
          "shape": "DocumentVersion",
          "documentation": "<p>(Required) The latest version of the document that you want to update. The latest document version can be specified using the $LATEST variable or by the version number. Updating a previous version of a document is not supported.</p>"
        },
        "DocumentFormat": {
          "shape": "DocumentFormat",
          "documentation": "<p>Specify the document format for the new document version. Systems Manager supports JSON and YAML documents. JSON is the default format.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>Specify a new target type for the document.</p>"
        }
      }
    },
    "UpdateDocumentResult": {
      "type": "structure",
      "members": {
        "DocumentDescription": {
          "shape": "DocumentDescription",
          "documentation": "<p>A description of the document that was updated.</p>"
        }
      }
    },
    "UpdateMaintenanceWindowRequest": {
      "type": "structure",
      "required": [
        "WindowId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window to update.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description for the update request.</p>"
        },
        "StartDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone Database</a> on the IANA website.</p>"
        },
        "EndDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.</p>"
        },
        "Schedule": {
          "shape": "MaintenanceWindowSchedule",
          "documentation": "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
        },
        "ScheduleTimezone": {
          "shape": "MaintenanceWindowTimezone",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone Database</a> on the IANA website.</p>"
        },
        "ScheduleOffset": {
          "shape": "MaintenanceWindowOffset",
          "documentation": "<p>The number of days to wait after the date and time specified by a CRON expression before running the maintenance window.</p> <p>For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM.</p> <p> <code>cron(0 30 23 ? * TUE#3 *)</code> </p> <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days later.</p>",
          "box": true
        },
        "Duration": {
          "shape": "MaintenanceWindowDurationHours",
          "documentation": "<p>The duration of the maintenance window in hours.</p>",
          "box": true
        },
        "Cutoff": {
          "shape": "MaintenanceWindowCutoff",
          "documentation": "<p>The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.</p>",
          "box": true
        },
        "AllowUnassociatedTargets": {
          "shape": "MaintenanceWindowAllowUnassociatedTargets",
          "documentation": "<p>Whether targets must be registered with the maintenance window before tasks can be defined for those targets.</p>",
          "box": true
        },
        "Enabled": {
          "shape": "MaintenanceWindowEnabled",
          "documentation": "<p>Whether the maintenance window is enabled.</p>",
          "box": true
        },
        "Replace": {
          "shape": "Boolean",
          "documentation": "<p>If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null. </p>",
          "box": true
        }
      }
    },
    "UpdateMaintenanceWindowResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the created maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The name of the maintenance window.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description of the update.</p>"
        },
        "StartDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.</p>"
        },
        "EndDate": {
          "shape": "MaintenanceWindowStringDateTime",
          "documentation": "<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.</p>"
        },
        "Schedule": {
          "shape": "MaintenanceWindowSchedule",
          "documentation": "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
        },
        "ScheduleTimezone": {
          "shape": "MaintenanceWindowTimezone",
          "documentation": "<p>The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"etc/UTC\", or \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time Zone Database</a> on the IANA website.</p>"
        },
        "ScheduleOffset": {
          "shape": "MaintenanceWindowOffset",
          "documentation": "<p>The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.</p>",
          "box": true
        },
        "Duration": {
          "shape": "MaintenanceWindowDurationHours",
          "documentation": "<p>The duration of the maintenance window in hours.</p>"
        },
        "Cutoff": {
          "shape": "MaintenanceWindowCutoff",
          "documentation": "<p>The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.</p>"
        },
        "AllowUnassociatedTargets": {
          "shape": "MaintenanceWindowAllowUnassociatedTargets",
          "documentation": "<p>Whether targets must be registered with the maintenance window before tasks can be defined for those targets.</p>"
        },
        "Enabled": {
          "shape": "MaintenanceWindowEnabled",
          "documentation": "<p>Whether the maintenance window is enabled.</p>"
        }
      }
    },
    "UpdateMaintenanceWindowTargetRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "WindowTargetId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The maintenance window ID with which to modify the target.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The target ID to modify.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets to add or replace.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>A name for the update.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>An optional description for the update.</p>"
        },
        "Replace": {
          "shape": "Boolean",
          "documentation": "<p>If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.</p>",
          "box": true
        }
      }
    },
    "UpdateMaintenanceWindowTargetResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The maintenance window ID specified in the update request.</p>"
        },
        "WindowTargetId": {
          "shape": "MaintenanceWindowTargetId",
          "documentation": "<p>The target ID specified in the update request.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The updated targets.</p>"
        },
        "OwnerInformation": {
          "shape": "OwnerInformation",
          "documentation": "<p>The updated owner.</p>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The updated name.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>The updated description.</p>"
        }
      }
    },
    "UpdateMaintenanceWindowTaskRequest": {
      "type": "structure",
      "required": [
        "WindowId",
        "WindowTaskId"
      ],
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The maintenance window ID that contains the task to modify.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The task ID to modify.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The targets (either instances or tags) to modify. Instances are specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags are specified using Key=tag_name,Values=tag_value. </p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The task ARN to modify.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role for Systems Manager to assume when running a maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's service-linked role. If no service-linked role for Systems Manager exists in your account, it is created when you run <code>RegisterTaskWithMaintenanceWindow</code>.</p> <p>For more information, see the following topics in the in the <i>AWS Systems Manager User Guide</i>:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions\">Using service-linked roles for Systems Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role\">Should I use a service-linked role or a custom service role to run maintenance window tasks? </a> </p> </li> </ul>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParameters",
          "documentation": "<p>The parameters to modify.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note> <p>The map has the following format:</p> <p>Key: string, between 1 and 255 characters</p> <p>Value: an array of strings, each string is between 1 and 255 characters</p>"
        },
        "TaskInvocationParameters": {
          "shape": "MaintenanceWindowTaskInvocationParameters",
          "documentation": "<p>The parameters that the task should use during execution. Populate only the fields that match the task type. All other fields should be empty.</p> <important> <p>When you update a maintenance window task that has options specified in <code>TaskInvocationParameters</code>, you must provide again all the <code>TaskInvocationParameters</code> values that you want to retain. The values you do not specify again are removed. For example, suppose that when you registered a Run Command task, you specified <code>TaskInvocationParameters</code> values for <code>Comment</code>, <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p> </important>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The new task priority to specify. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.</p>",
          "box": true
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The new <code>MaxConcurrency</code> value you want to specify. <code>MaxConcurrency</code> is the number of targets that are allowed to run this task in parallel.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The new <code>MaxErrors</code> value to specify. <code>MaxErrors</code> is the maximum number of errors that are allowed before the task stops being scheduled.</p>"
        },
        "LoggingInfo": {
          "shape": "LoggingInfo",
          "documentation": "<p>The new logging location in Amazon S3 to specify.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The new task name to specify.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>The new task description to specify.</p>"
        },
        "Replace": {
          "shape": "Boolean",
          "documentation": "<p>If True, then all fields that are required by the RegisterTaskWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.</p>",
          "box": true
        }
      }
    },
    "UpdateMaintenanceWindowTaskResult": {
      "type": "structure",
      "members": {
        "WindowId": {
          "shape": "MaintenanceWindowId",
          "documentation": "<p>The ID of the maintenance window that was updated.</p>"
        },
        "WindowTaskId": {
          "shape": "MaintenanceWindowTaskId",
          "documentation": "<p>The task ID of the maintenance window that was updated.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The updated target values.</p>"
        },
        "TaskArn": {
          "shape": "MaintenanceWindowTaskArn",
          "documentation": "<p>The updated task ARN value.</p>"
        },
        "ServiceRoleArn": {
          "shape": "ServiceRole",
          "documentation": "<p>The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.</p>"
        },
        "TaskParameters": {
          "shape": "MaintenanceWindowTaskParameters",
          "documentation": "<p>The updated parameter values.</p> <note> <p> <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs, instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "TaskInvocationParameters": {
          "shape": "MaintenanceWindowTaskInvocationParameters",
          "documentation": "<p>The updated parameter values.</p>"
        },
        "Priority": {
          "shape": "MaintenanceWindowTaskPriority",
          "documentation": "<p>The updated priority value.</p>"
        },
        "MaxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The updated MaxConcurrency value.</p>"
        },
        "MaxErrors": {
          "shape": "MaxErrors",
          "documentation": "<p>The updated MaxErrors value.</p>"
        },
        "LoggingInfo": {
          "shape": "LoggingInfo",
          "documentation": "<p>The updated logging information in Amazon S3.</p> <note> <p> <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure. For information about how Systems Manager handles these options for the supported maintenance window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p> </note>"
        },
        "Name": {
          "shape": "MaintenanceWindowName",
          "documentation": "<p>The updated task name.</p>"
        },
        "Description": {
          "shape": "MaintenanceWindowDescription",
          "documentation": "<p>The updated task description.</p>"
        }
      }
    },
    "UpdateManagedInstanceRoleRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "IamRole"
      ],
      "members": {
        "InstanceId": {
          "shape": "ManagedInstanceId",
          "documentation": "<p>The ID of the managed instance where you want to update the role.</p>"
        },
        "IamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role you want to assign or change.</p>"
        }
      }
    },
    "UpdateManagedInstanceRoleResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateOpsItemRequest": {
      "type": "structure",
      "required": [
        "OpsItemId"
      ],
      "members": {
        "Description": {
          "shape": "OpsItemDescription",
          "documentation": "<p>Update the information about the OpsItem. Provide enough information so that users reading this OpsItem for the first time understand the issue. </p>"
        },
        "OperationalData": {
          "shape": "OpsItemOperationalData",
          "documentation": "<p>Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem object.</p> <p>Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB.</p> <important> <p>Operational data keys <i>can't</i> begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm.</p> </important> <p>You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the <a>DescribeOpsItems</a> API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the <a>GetOpsItem</a> API action).</p> <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in the request. Use the <code>/aws/automations</code> key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "OperationalDataToDelete": {
          "shape": "OpsItemOpsDataKeysList",
          "documentation": "<p>Keys that you want to remove from the OperationalData map.</p>"
        },
        "Notifications": {
          "shape": "OpsItemNotifications",
          "documentation": "<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.</p>"
        },
        "Priority": {
          "shape": "OpsItemPriority",
          "documentation": "<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>"
        },
        "RelatedOpsItems": {
          "shape": "RelatedOpsItems",
          "documentation": "<p>One or more OpsItems that share something in common with the current OpsItems. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.</p>"
        },
        "Status": {
          "shape": "OpsItemStatus",
          "documentation": "<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or <code>Resolved</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details\">Editing OpsItem details</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "OpsItemId": {
          "shape": "OpsItemId",
          "documentation": "<p>The ID of the OpsItem.</p>"
        },
        "Title": {
          "shape": "OpsItemTitle",
          "documentation": "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
        },
        "Category": {
          "shape": "OpsItemCategory",
          "documentation": "<p>Specify a new category for an OpsItem.</p>"
        },
        "Severity": {
          "shape": "OpsItemSeverity",
          "documentation": "<p>Specify a new severity for an OpsItem.</p>"
        }
      }
    },
    "UpdateOpsItemResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdatePatchBaselineRequest": {
      "type": "structure",
      "required": [
        "BaselineId"
      ],
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the patch baseline to update.</p>"
        },
        "Name": {
          "shape": "BaselineName",
          "documentation": "<p>The name of the patch baseline.</p>"
        },
        "GlobalFilters": {
          "shape": "PatchFilterGroup",
          "documentation": "<p>A set of global filters used to include patches in the baseline.</p>"
        },
        "ApprovalRules": {
          "shape": "PatchRuleGroup",
          "documentation": "<p>A set of rules used to include patches in the baseline.</p>"
        },
        "ApprovedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly approved patches for the baseline.</p> <p>For information about accepted formats for lists of approved patches and rejected patches, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "ApprovedPatchesComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>Assigns a new compliance severity level to an existing patch baseline.</p>"
        },
        "ApprovedPatchesEnableNonSecurity": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.</p>",
          "box": true
        },
        "RejectedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly rejected patches for the baseline.</p> <p>For information about accepted formats for lists of approved patches and rejected patches, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About package name formats for approved and rejected patch lists</a> in the <i>AWS Systems Manager User Guide</i>.</p>"
        },
        "RejectedPatchesAction": {
          "shape": "PatchAction",
          "documentation": "<p>The action for Patch Manager to take on patches included in the RejectedPackages list.</p> <ul> <li> <p> <b>ALLOW_AS_DEPENDENCY</b>: A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as <i>InstalledOther</i>. This is the default action if no option is specified.</p> </li> <li> <p> <b>BLOCK</b>: Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as <i>InstalledRejected</i>.</p> </li> </ul>"
        },
        "Description": {
          "shape": "BaselineDescription",
          "documentation": "<p>A description of the patch baseline.</p>"
        },
        "Sources": {
          "shape": "PatchSourceList",
          "documentation": "<p>Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.</p>"
        },
        "Replace": {
          "shape": "Boolean",
          "documentation": "<p>If True, then all fields that are required by the CreatePatchBaseline action are also required for this API request. Optional fields that are not specified are set to null.</p>",
          "box": true
        }
      }
    },
    "UpdatePatchBaselineResult": {
      "type": "structure",
      "members": {
        "BaselineId": {
          "shape": "BaselineId",
          "documentation": "<p>The ID of the deleted patch baseline.</p>"
        },
        "Name": {
          "shape": "BaselineName",
          "documentation": "<p>The name of the patch baseline.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system rule used by the updated patch baseline.</p>"
        },
        "GlobalFilters": {
          "shape": "PatchFilterGroup",
          "documentation": "<p>A set of global filters used to exclude patches from the baseline.</p>"
        },
        "ApprovalRules": {
          "shape": "PatchRuleGroup",
          "documentation": "<p>A set of rules used to include patches in the baseline.</p>"
        },
        "ApprovedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly approved patches for the baseline.</p>"
        },
        "ApprovedPatchesComplianceLevel": {
          "shape": "PatchComplianceLevel",
          "documentation": "<p>The compliance severity level assigned to the patch baseline after the update completed.</p>"
        },
        "ApprovedPatchesEnableNonSecurity": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.</p>",
          "box": true
        },
        "RejectedPatches": {
          "shape": "PatchIdList",
          "documentation": "<p>A list of explicitly rejected patches for the baseline.</p>"
        },
        "RejectedPatchesAction": {
          "shape": "PatchAction",
          "documentation": "<p>The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.</p>"
        },
        "CreatedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date when the patch baseline was created.</p>"
        },
        "ModifiedDate": {
          "shape": "DateTime",
          "documentation": "<p>The date when the patch baseline was last modified.</p>"
        },
        "Description": {
          "shape": "BaselineDescription",
          "documentation": "<p>A description of the Patch Baseline.</p>"
        },
        "Sources": {
          "shape": "PatchSourceList",
          "documentation": "<p>Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.</p>"
        }
      }
    },
    "UpdateResourceDataSyncRequest": {
      "type": "structure",
      "required": [
        "SyncName",
        "SyncType",
        "SyncSource"
      ],
      "members": {
        "SyncName": {
          "shape": "ResourceDataSyncName",
          "documentation": "<p>The name of the resource data sync you want to update.</p>"
        },
        "SyncType": {
          "shape": "ResourceDataSyncType",
          "documentation": "<p>The type of resource data sync. The supported <code>SyncType</code> is SyncFromSource.</p>"
        },
        "SyncSource": {
          "shape": "ResourceDataSyncSource",
          "documentation": "<p>Specify information about the data sources to synchronize.</p>"
        }
      }
    },
    "UpdateResourceDataSyncResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateServiceSettingRequest": {
      "type": "structure",
      "required": [
        "SettingId",
        "SettingValue"
      ],
      "members": {
        "SettingId": {
          "shape": "ServiceSettingId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service setting to reset. For example, <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>. The setting ID can be one of the following.</p> <ul> <li> <p> <code>/ssm/parameter-store/default-parameter-tier</code> </p> </li> <li> <p> <code>/ssm/parameter-store/high-throughput-enabled</code> </p> </li> <li> <p> <code>/ssm/managed-instance/activation-tier</code> </p> </li> </ul>"
        },
        "SettingValue": {
          "shape": "ServiceSettingValue",
          "documentation": "<p>The new value to specify for the service setting. For the <code>/ssm/parameter-store/default-parameter-tier</code> setting ID, the setting value can be one of the following.</p> <ul> <li> <p>Standard</p> </li> <li> <p>Advanced</p> </li> <li> <p>Intelligent-Tiering</p> </li> </ul> <p>For the <code>/ssm/parameter-store/high-throughput-enabled</code>, and <code>/ssm/managed-instance/activation-tier</code> setting IDs, the setting value can be true or false.</p>"
        }
      },
      "documentation": "<p>The request body of the UpdateServiceSetting API action.</p>"
    },
    "UpdateServiceSettingResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The result body of the UpdateServiceSetting API action.</p>"
    },
    "Url": {
      "type": "string"
    },
    "ValidNextStep": {
      "type": "string",
      "max": 65535,
      "min": 1
    },
    "ValidNextStepList": {
      "type": "list",
      "member": {
        "shape": "ValidNextStep"
      }
    },
    "Version": {
      "type": "string",
      "pattern": "^[0-9]{1,6}(\\.[0-9]{1,6}){2,3}$"
    }
  },
  "documentation": "<fullname>AWS Systems Manager</fullname> <p>AWS Systems Manager is a collection of capabilities that helps you automate management tasks such as collecting system inventory, applying operating system (OS) patches, automating the creation of Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale. Systems Manager lets you remotely and securely manage the configuration of your managed instances. A <i>managed instance</i> is any Amazon Elastic Compute Cloud instance (EC2 instance), or any on-premises server or virtual machine (VM) in your hybrid environment that has been configured for Systems Manager.</p> <p>This reference is intended to be used with the <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/\">AWS Systems Manager User Guide</a>.</p> <p>To get started, verify prerequisites and configure managed instances. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html\">Setting up AWS Systems Manager</a> in the <i>AWS Systems Manager User Guide</i>.</p> <p>For information about other API actions you can perform on EC2 instances, see the <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/\">Amazon EC2 API Reference</a>. For information about how to use a Query API, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html\">Making API requests</a>. </p>"
}
]===]))