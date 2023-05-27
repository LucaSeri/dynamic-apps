local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-10-06",
    "endpointPrefix": "codedeploy",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "CodeDeploy",
    "serviceFullName": "AWS CodeDeploy",
    "serviceId": "CodeDeploy",
    "signatureVersion": "v4",
    "targetPrefix": "CodeDeploy_20141006",
    "uid": "codedeploy-2014-10-06"
  },
  "operations": {
    "AddTagsToOnPremisesInstances": {
      "name": "AddTagsToOnPremisesInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToOnPremisesInstancesInput"
      },
      "errors": [
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "TagRequiredException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TagLimitExceededException"
        },
        {
          "shape": "InstanceLimitExceededException"
        },
        {
          "shape": "InstanceNotRegisteredException"
        }
      ],
      "documentation": "<p>Adds tags to on-premises instances.</p>"
    },
    "BatchGetApplicationRevisions": {
      "name": "BatchGetApplicationRevisions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetApplicationRevisionsInput"
      },
      "output": {
        "shape": "BatchGetApplicationRevisionsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "RevisionRequiredException"
        },
        {
          "shape": "InvalidRevisionException"
        },
        {
          "shape": "BatchLimitExceededException"
        }
      ],
      "documentation": "<p>Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.</p>"
    },
    "BatchGetApplications": {
      "name": "BatchGetApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetApplicationsInput"
      },
      "output": {
        "shape": "BatchGetApplicationsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "BatchLimitExceededException"
        }
      ],
      "documentation": "<p>Gets information about one or more applications. The maximum number of applications that can be returned is 100.</p>"
    },
    "BatchGetDeploymentGroups": {
      "name": "BatchGetDeploymentGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetDeploymentGroupsInput"
      },
      "output": {
        "shape": "BatchGetDeploymentGroupsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "BatchLimitExceededException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        }
      ],
      "documentation": "<p>Gets information about one or more deployment groups.</p>"
    },
    "BatchGetDeploymentInstances": {
      "name": "BatchGetDeploymentInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetDeploymentInstancesInput"
      },
      "output": {
        "shape": "BatchGetDeploymentInstancesOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "InstanceIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "BatchLimitExceededException"
        },
        {
          "shape": "InvalidComputePlatformException"
        }
      ],
      "documentation": "<note> <p> This method works, but is deprecated. Use <code>BatchGetDeploymentTargets</code> instead. </p> </note> <p> Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer <code>BatchGetDeploymentTargets</code> works with all compute platforms. The maximum number of instances that can be returned is 25.</p>",
      "deprecated": true,
      "deprecatedMessage": "This operation is deprecated, use BatchGetDeploymentTargets instead."
    },
    "BatchGetDeploymentTargets": {
      "name": "BatchGetDeploymentTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetDeploymentTargetsInput"
      },
      "output": {
        "shape": "BatchGetDeploymentTargetsOutput"
      },
      "errors": [
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentNotStartedException"
        },
        {
          "shape": "DeploymentTargetIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentTargetIdException"
        },
        {
          "shape": "DeploymentTargetDoesNotExistException"
        },
        {
          "shape": "DeploymentTargetListSizeExceededException"
        },
        {
          "shape": "InstanceDoesNotExistException"
        }
      ],
      "documentation": "<p> Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated <code>BatchGetDeploymentInstances</code>. The maximum number of targets that can be returned is 25.</p> <p> The type of targets returned depends on the deployment's compute platform or deployment method: </p> <ul> <li> <p> <b>EC2/On-premises</b>: Information about EC2 instance targets. </p> </li> <li> <p> <b>AWS Lambda</b>: Information about Lambda functions targets. </p> </li> <li> <p> <b>Amazon ECS</b>: Information about Amazon ECS service targets. </p> </li> <li> <p> <b>CloudFormation</b>: Information about targets of blue/green deployments initiated by a CloudFormation stack update.</p> </li> </ul>"
    },
    "BatchGetDeployments": {
      "name": "BatchGetDeployments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetDeploymentsInput"
      },
      "output": {
        "shape": "BatchGetDeploymentsOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "BatchLimitExceededException"
        }
      ],
      "documentation": "<p>Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.</p>"
    },
    "BatchGetOnPremisesInstances": {
      "name": "BatchGetOnPremisesInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetOnPremisesInstancesInput"
      },
      "output": {
        "shape": "BatchGetOnPremisesInstancesOutput"
      },
      "errors": [
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "BatchLimitExceededException"
        }
      ],
      "documentation": "<p>Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.</p>"
    },
    "ContinueDeployment": {
      "name": "ContinueDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ContinueDeploymentInput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentAlreadyCompletedException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "DeploymentIsNotInReadyStateException"
        },
        {
          "shape": "UnsupportedActionForDeploymentTypeException"
        },
        {
          "shape": "InvalidDeploymentWaitTypeException"
        },
        {
          "shape": "InvalidDeploymentStatusException"
        }
      ],
      "documentation": "<p>For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) </p>"
    },
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationInput"
      },
      "output": {
        "shape": "CreateApplicationOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationAlreadyExistsException"
        },
        {
          "shape": "ApplicationLimitExceededException"
        },
        {
          "shape": "InvalidComputePlatformException"
        },
        {
          "shape": "InvalidTagsToAddException"
        }
      ],
      "documentation": "<p>Creates an application.</p>"
    },
    "CreateDeployment": {
      "name": "CreateDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDeploymentInput"
      },
      "output": {
        "shape": "CreateDeploymentOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "RevisionRequiredException"
        },
        {
          "shape": "RevisionDoesNotExistException"
        },
        {
          "shape": "InvalidRevisionException"
        },
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "DescriptionTooLongException"
        },
        {
          "shape": "DeploymentLimitExceededException"
        },
        {
          "shape": "InvalidTargetInstancesException"
        },
        {
          "shape": "InvalidAutoRollbackConfigException"
        },
        {
          "shape": "InvalidLoadBalancerInfoException"
        },
        {
          "shape": "InvalidFileExistsBehaviorException"
        },
        {
          "shape": "InvalidRoleException"
        },
        {
          "shape": "InvalidAutoScalingGroupException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidUpdateOutdatedInstancesOnlyValueException"
        },
        {
          "shape": "InvalidIgnoreApplicationStopFailuresValueException"
        },
        {
          "shape": "InvalidGitHubAccountTokenException"
        },
        {
          "shape": "InvalidTrafficRoutingConfigurationException"
        }
      ],
      "documentation": "<p>Deploys an application revision through the specified deployment group.</p>"
    },
    "CreateDeploymentConfig": {
      "name": "CreateDeploymentConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDeploymentConfigInput"
      },
      "output": {
        "shape": "CreateDeploymentConfigOutput"
      },
      "errors": [
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigNameRequiredException"
        },
        {
          "shape": "DeploymentConfigAlreadyExistsException"
        },
        {
          "shape": "InvalidMinimumHealthyHostValueException"
        },
        {
          "shape": "DeploymentConfigLimitExceededException"
        },
        {
          "shape": "InvalidComputePlatformException"
        },
        {
          "shape": "InvalidTrafficRoutingConfigurationException"
        }
      ],
      "documentation": "<p> Creates a deployment configuration. </p>"
    },
    "CreateDeploymentGroup": {
      "name": "CreateDeploymentGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDeploymentGroupInput"
      },
      "output": {
        "shape": "CreateDeploymentGroupOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "DeploymentGroupAlreadyExistsException"
        },
        {
          "shape": "InvalidEC2TagException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "InvalidAutoScalingGroupException"
        },
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "RoleRequiredException"
        },
        {
          "shape": "InvalidRoleException"
        },
        {
          "shape": "DeploymentGroupLimitExceededException"
        },
        {
          "shape": "LifecycleHookLimitExceededException"
        },
        {
          "shape": "InvalidTriggerConfigException"
        },
        {
          "shape": "TriggerTargetsLimitExceededException"
        },
        {
          "shape": "InvalidAlarmConfigException"
        },
        {
          "shape": "AlarmsLimitExceededException"
        },
        {
          "shape": "InvalidAutoRollbackConfigException"
        },
        {
          "shape": "InvalidLoadBalancerInfoException"
        },
        {
          "shape": "InvalidDeploymentStyleException"
        },
        {
          "shape": "InvalidBlueGreenDeploymentConfigurationException"
        },
        {
          "shape": "InvalidEC2TagCombinationException"
        },
        {
          "shape": "InvalidOnPremisesTagCombinationException"
        },
        {
          "shape": "TagSetListLimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidECSServiceException"
        },
        {
          "shape": "InvalidTargetGroupPairException"
        },
        {
          "shape": "ECSServiceMappingLimitExceededException"
        },
        {
          "shape": "InvalidTagsToAddException"
        },
        {
          "shape": "InvalidTrafficRoutingConfigurationException"
        }
      ],
      "documentation": "<p>Creates a deployment group to which application revisions are deployed.</p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationInput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "InvalidRoleException"
        }
      ],
      "documentation": "<p>Deletes an application.</p>"
    },
    "DeleteDeploymentConfig": {
      "name": "DeleteDeploymentConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDeploymentConfigInput"
      },
      "errors": [
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigNameRequiredException"
        },
        {
          "shape": "DeploymentConfigInUseException"
        },
        {
          "shape": "InvalidOperationException"
        }
      ],
      "documentation": "<p>Deletes a deployment configuration.</p> <note> <p>A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.</p> </note>"
    },
    "DeleteDeploymentGroup": {
      "name": "DeleteDeploymentGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDeploymentGroupInput"
      },
      "output": {
        "shape": "DeleteDeploymentGroupOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "InvalidRoleException"
        }
      ],
      "documentation": "<p>Deletes a deployment group.</p>"
    },
    "DeleteGitHubAccountToken": {
      "name": "DeleteGitHubAccountToken",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGitHubAccountTokenInput"
      },
      "output": {
        "shape": "DeleteGitHubAccountTokenOutput"
      },
      "errors": [
        {
          "shape": "GitHubAccountTokenNameRequiredException"
        },
        {
          "shape": "GitHubAccountTokenDoesNotExistException"
        },
        {
          "shape": "InvalidGitHubAccountTokenNameException"
        },
        {
          "shape": "ResourceValidationException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Deletes a GitHub account connection.</p>"
    },
    "DeleteResourcesByExternalId": {
      "name": "DeleteResourcesByExternalId",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourcesByExternalIdInput"
      },
      "output": {
        "shape": "DeleteResourcesByExternalIdOutput"
      },
      "errors": [],
      "documentation": "<p>Deletes resources linked to an external ID.</p>"
    },
    "DeregisterOnPremisesInstance": {
      "name": "DeregisterOnPremisesInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterOnPremisesInstanceInput"
      },
      "errors": [
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        }
      ],
      "documentation": "<p>Deregisters an on-premises instance.</p>"
    },
    "GetApplication": {
      "name": "GetApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetApplicationInput"
      },
      "output": {
        "shape": "GetApplicationOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        }
      ],
      "documentation": "<p>Gets information about an application.</p>"
    },
    "GetApplicationRevision": {
      "name": "GetApplicationRevision",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetApplicationRevisionInput"
      },
      "output": {
        "shape": "GetApplicationRevisionOutput"
      },
      "errors": [
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "RevisionDoesNotExistException"
        },
        {
          "shape": "RevisionRequiredException"
        },
        {
          "shape": "InvalidRevisionException"
        }
      ],
      "documentation": "<p>Gets information about an application revision.</p>"
    },
    "GetDeployment": {
      "name": "GetDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeploymentInput"
      },
      "output": {
        "shape": "GetDeploymentOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        }
      ],
      "documentation": "<p>Gets information about a deployment.</p> <note> <p> The <code>content</code> property of the <code>appSpecContent</code> object in the returned revision is always null. Use <code>GetApplicationRevision</code> and the <code>sha256</code> property of the returned <code>appSpecContent</code> object to get the content of the deployment’s AppSpec file. </p> </note>"
    },
    "GetDeploymentConfig": {
      "name": "GetDeploymentConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeploymentConfigInput"
      },
      "output": {
        "shape": "GetDeploymentConfigOutput"
      },
      "errors": [
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigNameRequiredException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "InvalidComputePlatformException"
        }
      ],
      "documentation": "<p>Gets information about a deployment configuration.</p>"
    },
    "GetDeploymentGroup": {
      "name": "GetDeploymentGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeploymentGroupInput"
      },
      "output": {
        "shape": "GetDeploymentGroupOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        }
      ],
      "documentation": "<p>Gets information about a deployment group.</p>"
    },
    "GetDeploymentInstance": {
      "name": "GetDeploymentInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeploymentInstanceInput"
      },
      "output": {
        "shape": "GetDeploymentInstanceOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "InstanceIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "InstanceDoesNotExistException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "InvalidComputePlatformException"
        }
      ],
      "documentation": "<p>Gets information about an instance as part of a deployment.</p>",
      "deprecated": true,
      "deprecatedMessage": "This operation is deprecated, use GetDeploymentTarget instead."
    },
    "GetDeploymentTarget": {
      "name": "GetDeploymentTarget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeploymentTargetInput"
      },
      "output": {
        "shape": "GetDeploymentTargetOutput"
      },
      "errors": [
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentNotStartedException"
        },
        {
          "shape": "DeploymentTargetIdRequiredException"
        },
        {
          "shape": "InvalidDeploymentTargetIdException"
        },
        {
          "shape": "DeploymentTargetDoesNotExistException"
        },
        {
          "shape": "InvalidInstanceNameException"
        }
      ],
      "documentation": "<p> Returns information about a deployment target. </p>"
    },
    "GetOnPremisesInstance": {
      "name": "GetOnPremisesInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOnPremisesInstanceInput"
      },
      "output": {
        "shape": "GetOnPremisesInstanceOutput"
      },
      "errors": [
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "InstanceNotRegisteredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        }
      ],
      "documentation": "<p> Gets information about an on-premises instance. </p>"
    },
    "ListApplicationRevisions": {
      "name": "ListApplicationRevisions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationRevisionsInput"
      },
      "output": {
        "shape": "ListApplicationRevisionsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "InvalidSortByException"
        },
        {
          "shape": "InvalidSortOrderException"
        },
        {
          "shape": "InvalidBucketNameFilterException"
        },
        {
          "shape": "InvalidKeyPrefixFilterException"
        },
        {
          "shape": "BucketNameFilterRequiredException"
        },
        {
          "shape": "InvalidDeployedStateFilterException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists information about revisions for an application.</p>"
    },
    "ListApplications": {
      "name": "ListApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationsInput"
      },
      "output": {
        "shape": "ListApplicationsOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists the applications registered with the IAM user or AWS account.</p>"
    },
    "ListDeploymentConfigs": {
      "name": "ListDeploymentConfigs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeploymentConfigsInput"
      },
      "output": {
        "shape": "ListDeploymentConfigsOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists the deployment configurations with the IAM user or AWS account.</p>"
    },
    "ListDeploymentGroups": {
      "name": "ListDeploymentGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeploymentGroupsInput"
      },
      "output": {
        "shape": "ListDeploymentGroupsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists the deployment groups for an application registered with the IAM user or AWS account.</p>"
    },
    "ListDeploymentInstances": {
      "name": "ListDeploymentInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeploymentInstancesInput"
      },
      "output": {
        "shape": "ListDeploymentInstancesOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentNotStartedException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "InvalidInstanceStatusException"
        },
        {
          "shape": "InvalidInstanceTypeException"
        },
        {
          "shape": "InvalidDeploymentInstanceTypeException"
        },
        {
          "shape": "InvalidTargetFilterNameException"
        },
        {
          "shape": "InvalidComputePlatformException"
        }
      ],
      "documentation": "<note> <p> The newer <code>BatchGetDeploymentTargets</code> should be used instead because it works with all compute types. <code>ListDeploymentInstances</code> throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda. </p> </note> <p> Lists the instance for a deployment associated with the IAM user or AWS account. </p>",
      "deprecated": true,
      "deprecatedMessage": "This operation is deprecated, use ListDeploymentTargets instead."
    },
    "ListDeploymentTargets": {
      "name": "ListDeploymentTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeploymentTargetsInput"
      },
      "output": {
        "shape": "ListDeploymentTargetsOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentNotStartedException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "InvalidInstanceStatusException"
        },
        {
          "shape": "InvalidInstanceTypeException"
        },
        {
          "shape": "InvalidDeploymentInstanceTypeException"
        }
      ],
      "documentation": "<p> Returns an array of target IDs that are associated a deployment. </p>"
    },
    "ListDeployments": {
      "name": "ListDeployments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeploymentsInput"
      },
      "output": {
        "shape": "ListDeploymentsOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "InvalidTimeRangeException"
        },
        {
          "shape": "InvalidDeploymentStatusException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidExternalIdException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.</p>"
    },
    "ListGitHubAccountTokenNames": {
      "name": "ListGitHubAccountTokenNames",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGitHubAccountTokenNamesInput"
      },
      "output": {
        "shape": "ListGitHubAccountTokenNamesOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ResourceValidationException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Lists the names of stored connections to GitHub accounts.</p>"
    },
    "ListOnPremisesInstances": {
      "name": "ListOnPremisesInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOnPremisesInstancesInput"
      },
      "output": {
        "shape": "ListOnPremisesInstancesOutput"
      },
      "errors": [
        {
          "shape": "InvalidRegistrationStatusException"
        },
        {
          "shape": "InvalidTagFilterException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Gets a list of names for one or more on-premises instances.</p> <p>Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "ArnNotSupportedException"
        },
        {
          "shape": "InvalidArnException"
        },
        {
          "shape": "ResourceArnRequiredException"
        }
      ],
      "documentation": "<p> Returns a list of tags for the resource identified by a specified Amazon Resource Name (ARN). Tags are used to organize and categorize your CodeDeploy resources. </p>"
    },
    "PutLifecycleEventHookExecutionStatus": {
      "name": "PutLifecycleEventHookExecutionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutLifecycleEventHookExecutionStatusInput"
      },
      "output": {
        "shape": "PutLifecycleEventHookExecutionStatusOutput"
      },
      "errors": [
        {
          "shape": "InvalidLifecycleEventHookExecutionStatusException"
        },
        {
          "shape": "InvalidLifecycleEventHookExecutionIdException"
        },
        {
          "shape": "LifecycleEventAlreadyCompletedException"
        },
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "UnsupportedActionForDeploymentTypeException"
        }
      ],
      "documentation": "<p> Sets the result of a Lambda validation function. The function validates lifecycle hooks during a deployment that uses the AWS Lambda or Amazon ECS compute platform. For AWS Lambda deployments, the available lifecycle hooks are <code>BeforeAllowTraffic</code> and <code>AfterAllowTraffic</code>. For Amazon ECS deployments, the available lifecycle hooks are <code>BeforeInstall</code>, <code>AfterInstall</code>, <code>AfterAllowTestTraffic</code>, <code>BeforeAllowTraffic</code>, and <code>AfterAllowTraffic</code>. Lambda validation functions return <code>Succeeded</code> or <code>Failed</code>. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda\">AppSpec 'hooks' Section for an AWS Lambda Deployment </a> and <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs\">AppSpec 'hooks' Section for an Amazon ECS Deployment</a>.</p>"
    },
    "RegisterApplicationRevision": {
      "name": "RegisterApplicationRevision",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterApplicationRevisionInput"
      },
      "errors": [
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "DescriptionTooLongException"
        },
        {
          "shape": "RevisionRequiredException"
        },
        {
          "shape": "InvalidRevisionException"
        }
      ],
      "documentation": "<p>Registers with AWS CodeDeploy a revision for the specified application.</p>"
    },
    "RegisterOnPremisesInstance": {
      "name": "RegisterOnPremisesInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterOnPremisesInstanceInput"
      },
      "errors": [
        {
          "shape": "InstanceNameAlreadyRegisteredException"
        },
        {
          "shape": "IamArnRequiredException"
        },
        {
          "shape": "IamSessionArnAlreadyRegisteredException"
        },
        {
          "shape": "IamUserArnAlreadyRegisteredException"
        },
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "IamUserArnRequiredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "InvalidIamSessionArnException"
        },
        {
          "shape": "InvalidIamUserArnException"
        },
        {
          "shape": "MultipleIamArnsProvidedException"
        }
      ],
      "documentation": "<p>Registers an on-premises instance.</p> <note> <p>Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.</p> </note>"
    },
    "RemoveTagsFromOnPremisesInstances": {
      "name": "RemoveTagsFromOnPremisesInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromOnPremisesInstancesInput"
      },
      "errors": [
        {
          "shape": "InstanceNameRequiredException"
        },
        {
          "shape": "InvalidInstanceNameException"
        },
        {
          "shape": "TagRequiredException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "TagLimitExceededException"
        },
        {
          "shape": "InstanceLimitExceededException"
        },
        {
          "shape": "InstanceNotRegisteredException"
        }
      ],
      "documentation": "<p>Removes one or more tags from one or more on-premises instances.</p>"
    },
    "SkipWaitTimeForInstanceTermination": {
      "name": "SkipWaitTimeForInstanceTermination",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SkipWaitTimeForInstanceTerminationInput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentAlreadyCompletedException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "DeploymentNotStartedException"
        },
        {
          "shape": "UnsupportedActionForDeploymentTypeException"
        }
      ],
      "documentation": "<p>In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.</p>",
      "deprecated": true,
      "deprecatedMessage": "This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead."
    },
    "StopDeployment": {
      "name": "StopDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDeploymentInput"
      },
      "output": {
        "shape": "StopDeploymentOutput"
      },
      "errors": [
        {
          "shape": "DeploymentIdRequiredException"
        },
        {
          "shape": "DeploymentDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "DeploymentAlreadyCompletedException"
        },
        {
          "shape": "InvalidDeploymentIdException"
        },
        {
          "shape": "UnsupportedActionForDeploymentTypeException"
        }
      ],
      "documentation": "<p>Attempts to stop an ongoing deployment.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceArnRequiredException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "TagRequiredException"
        },
        {
          "shape": "InvalidTagsToAddException"
        },
        {
          "shape": "ArnNotSupportedException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p> Associates the list of tags in the input <code>Tags</code> parameter with the resource identified by the <code>ResourceArn</code> input parameter. </p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceArnRequiredException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "TagRequiredException"
        },
        {
          "shape": "InvalidTagsToAddException"
        },
        {
          "shape": "ArnNotSupportedException"
        },
        {
          "shape": "InvalidArnException"
        }
      ],
      "documentation": "<p> Disassociates a resource from a list of tags. The resource is identified by the <code>ResourceArn</code> input parameter. The tags are identified by the list of keys in the <code>TagKeys</code> input parameter. </p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationInput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationAlreadyExistsException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        }
      ],
      "documentation": "<p>Changes the name of an application.</p>"
    },
    "UpdateDeploymentGroup": {
      "name": "UpdateDeploymentGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDeploymentGroupInput"
      },
      "output": {
        "shape": "UpdateDeploymentGroupOutput"
      },
      "errors": [
        {
          "shape": "ApplicationNameRequiredException"
        },
        {
          "shape": "InvalidApplicationNameException"
        },
        {
          "shape": "ApplicationDoesNotExistException"
        },
        {
          "shape": "InvalidDeploymentGroupNameException"
        },
        {
          "shape": "DeploymentGroupAlreadyExistsException"
        },
        {
          "shape": "DeploymentGroupNameRequiredException"
        },
        {
          "shape": "DeploymentGroupDoesNotExistException"
        },
        {
          "shape": "InvalidEC2TagException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "InvalidAutoScalingGroupException"
        },
        {
          "shape": "InvalidDeploymentConfigNameException"
        },
        {
          "shape": "DeploymentConfigDoesNotExistException"
        },
        {
          "shape": "InvalidRoleException"
        },
        {
          "shape": "LifecycleHookLimitExceededException"
        },
        {
          "shape": "InvalidTriggerConfigException"
        },
        {
          "shape": "TriggerTargetsLimitExceededException"
        },
        {
          "shape": "InvalidAlarmConfigException"
        },
        {
          "shape": "AlarmsLimitExceededException"
        },
        {
          "shape": "InvalidAutoRollbackConfigException"
        },
        {
          "shape": "InvalidLoadBalancerInfoException"
        },
        {
          "shape": "InvalidDeploymentStyleException"
        },
        {
          "shape": "InvalidBlueGreenDeploymentConfigurationException"
        },
        {
          "shape": "InvalidEC2TagCombinationException"
        },
        {
          "shape": "InvalidOnPremisesTagCombinationException"
        },
        {
          "shape": "TagSetListLimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidECSServiceException"
        },
        {
          "shape": "InvalidTargetGroupPairException"
        },
        {
          "shape": "ECSServiceMappingLimitExceededException"
        },
        {
          "shape": "InvalidTrafficRoutingConfigurationException"
        }
      ],
      "documentation": "<p>Changes information about a deployment group.</p>"
    }
  },
  "shapes": {
    "AddTagsToOnPremisesInstancesInput": {
      "type": "structure",
      "required": [
        "tags",
        "instanceNames"
      ],
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tag key-value pairs to add to the on-premises instances.</p> <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only tags are not allowed.</p>"
        },
        "instanceNames": {
          "shape": "InstanceNameList",
          "documentation": "<p>The names of the on-premises instances to which to add tags.</p>"
        }
      },
      "documentation": "<p>Represents the input of, and adds tags to, an on-premises instance operation.</p>"
    },
    "AdditionalDeploymentStatusInfo": {
      "type": "string",
      "deprecated": true,
      "deprecatedMessage": "AdditionalDeploymentStatusInfo is deprecated, use DeploymentStatusMessageList instead."
    },
    "Alarm": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AlarmName",
          "documentation": "<p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used only once in a list of alarms.</p>"
        }
      },
      "documentation": "<p>Information about an alarm.</p>"
    },
    "AlarmConfiguration": {
      "type": "structure",
      "members": {
        "enabled": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the alarm configuration is enabled.</p>"
        },
        "ignorePollAlarmFailure": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p> <ul> <li> <p> <code>true</code>: The deployment proceeds even if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> <li> <p> <code>false</code>: The deployment stops if alarm status information can't be retrieved from Amazon CloudWatch.</p> </li> </ul>"
        },
        "alarms": {
          "shape": "AlarmList",
          "documentation": "<p>A list of alarms configured for the deployment group. A maximum of 10 alarms can be added to a deployment group.</p>"
        }
      },
      "documentation": "<p>Information about alarms associated with the deployment group.</p>"
    },
    "AlarmList": {
      "type": "list",
      "member": {
        "shape": "Alarm"
      }
    },
    "AlarmName": {
      "type": "string"
    },
    "AppSpecContent": {
      "type": "structure",
      "members": {
        "content": {
          "shape": "RawStringContent",
          "documentation": "<p> The YAML-formatted or JSON-formatted revision string. </p> <p> For an AWS Lambda deployment, the content includes a Lambda function name, the alias for its original version, and the alias for its replacement version. The deployment shifts traffic from the original version of the Lambda function to the replacement version. </p> <p> For an Amazon ECS deployment, the content includes the task name, information about the load balancer that serves traffic to the container, and more. </p> <p> For both types of deployments, the content can specify Lambda functions that run at specified hooks, such as <code>BeforeInstall</code>, during a deployment. </p>"
        },
        "sha256": {
          "shape": "RawStringSha256",
          "documentation": "<p> The SHA256 hash value of the revision content. </p>"
        }
      },
      "documentation": "<p> A revision for an AWS Lambda or Amazon ECS deployment that is a YAML-formatted or JSON-formatted string. For AWS Lambda and Amazon ECS deployments, the revision is the same as the AppSpec file. This method replaces the deprecated <code>RawString</code> data type. </p>"
    },
    "ApplicationId": {
      "type": "string"
    },
    "ApplicationInfo": {
      "type": "structure",
      "members": {
        "applicationId": {
          "shape": "ApplicationId",
          "documentation": "<p>The application ID.</p>"
        },
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "createTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the application was created.</p>"
        },
        "linkedToGitHub": {
          "shape": "Boolean",
          "documentation": "<p>True if the user has authenticated with GitHub for the specified application. Otherwise, false.</p>"
        },
        "gitHubAccountName": {
          "shape": "GitHubAccountTokenName",
          "documentation": "<p>The name for a connection to a GitHub account.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p>The destination platform type for deployment of the application (<code>Lambda</code> or <code>Server</code>).</p>"
        }
      },
      "documentation": "<p>Information about an application.</p>"
    },
    "ApplicationName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ApplicationRevisionSortBy": {
      "type": "string",
      "enum": [
        "registerTime",
        "firstUsedTime",
        "lastUsedTime"
      ]
    },
    "ApplicationsInfoList": {
      "type": "list",
      "member": {
        "shape": "ApplicationInfo"
      }
    },
    "ApplicationsList": {
      "type": "list",
      "member": {
        "shape": "ApplicationName"
      }
    },
    "Arn": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "AutoRollbackConfiguration": {
      "type": "structure",
      "members": {
        "enabled": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a defined automatic rollback configuration is currently enabled.</p>"
        },
        "events": {
          "shape": "AutoRollbackEventsList",
          "documentation": "<p>The event type or types that trigger a rollback.</p>"
        }
      },
      "documentation": "<p>Information about a configuration for automatically rolling back to a previous version of an application revision when a deployment is not completed successfully.</p>"
    },
    "AutoRollbackEvent": {
      "type": "string",
      "enum": [
        "DEPLOYMENT_FAILURE",
        "DEPLOYMENT_STOP_ON_ALARM",
        "DEPLOYMENT_STOP_ON_REQUEST"
      ]
    },
    "AutoRollbackEventsList": {
      "type": "list",
      "member": {
        "shape": "AutoRollbackEvent"
      }
    },
    "AutoScalingGroup": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AutoScalingGroupName",
          "documentation": "<p>The Auto Scaling group name.</p>"
        },
        "hook": {
          "shape": "AutoScalingGroupHook",
          "documentation": "<p>An Auto Scaling lifecycle event hook name.</p>"
        }
      },
      "documentation": "<p>Information about an Auto Scaling group.</p>"
    },
    "AutoScalingGroupHook": {
      "type": "string"
    },
    "AutoScalingGroupList": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroup"
      }
    },
    "AutoScalingGroupName": {
      "type": "string"
    },
    "AutoScalingGroupNameList": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroupName"
      }
    },
    "BatchGetApplicationRevisionsInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "revisions"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application about which to get revision information.</p>"
        },
        "revisions": {
          "shape": "RevisionLocationList",
          "documentation": "<p>An array of <code>RevisionLocation</code> objects that specify information to get about the application revisions, including type and location. The maximum number of <code>RevisionLocation</code> objects you can specify is 25.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>BatchGetApplicationRevisions</code> operation.</p>"
    },
    "BatchGetApplicationRevisionsOutput": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application that corresponds to the revisions.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>Information about errors that might have occurred during the API call.</p>"
        },
        "revisions": {
          "shape": "RevisionInfoList",
          "documentation": "<p>Additional information about the revisions, including the type and location.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>BatchGetApplicationRevisions</code> operation.</p>"
    },
    "BatchGetApplicationsInput": {
      "type": "structure",
      "required": [
        "applicationNames"
      ],
      "members": {
        "applicationNames": {
          "shape": "ApplicationsList",
          "documentation": "<p>A list of application names separated by spaces. The maximum number of application names you can specify is 100.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>BatchGetApplications</code> operation.</p>"
    },
    "BatchGetApplicationsOutput": {
      "type": "structure",
      "members": {
        "applicationsInfo": {
          "shape": "ApplicationsInfoList",
          "documentation": "<p>Information about the applications.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>BatchGetApplications</code> operation.</p>"
    },
    "BatchGetDeploymentGroupsInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "deploymentGroupNames"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the applicable IAM user or AWS account.</p>"
        },
        "deploymentGroupNames": {
          "shape": "DeploymentGroupsList",
          "documentation": "<p>The names of the deployment groups.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>BatchGetDeploymentGroups</code> operation.</p>"
    },
    "BatchGetDeploymentGroupsOutput": {
      "type": "structure",
      "members": {
        "deploymentGroupsInfo": {
          "shape": "DeploymentGroupInfoList",
          "documentation": "<p>Information about the deployment groups.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>Information about errors that might have occurred during the API call.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>BatchGetDeploymentGroups</code> operation.</p>"
    },
    "BatchGetDeploymentInstancesInput": {
      "type": "structure",
      "required": [
        "deploymentId",
        "instanceIds"
      ],
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "instanceIds": {
          "shape": "InstancesList",
          "documentation": "<p>The unique IDs of instances used in the deployment. The maximum number of instance IDs you can specify is 25.</p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>BatchGetDeploymentInstances</code> operation. </p>"
    },
    "BatchGetDeploymentInstancesOutput": {
      "type": "structure",
      "members": {
        "instancesSummary": {
          "shape": "InstanceSummaryList",
          "documentation": "<p>Information about the instance.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>Information about errors that might have occurred during the API call.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>BatchGetDeploymentInstances</code> operation.</p>"
    },
    "BatchGetDeploymentTargetsInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "targetIds": {
          "shape": "TargetIdList",
          "documentation": "<p> The unique IDs of the deployment targets. The compute platform of the deployment determines the type of the targets and their formats. The maximum number of deployment target IDs you can specify is 25.</p> <ul> <li> <p> For deployments that use the EC2/On-premises compute platform, the target IDs are EC2 or on-premises instances IDs, and their target type is <code>instanceTarget</code>. </p> </li> <li> <p> For deployments that use the AWS Lambda compute platform, the target IDs are the names of Lambda functions, and their target type is <code>instanceTarget</code>. </p> </li> <li> <p> For deployments that use the Amazon ECS compute platform, the target IDs are pairs of Amazon ECS clusters and services specified using the format <code>&lt;clustername&gt;:&lt;servicename&gt;</code>. Their target type is <code>ecsTarget</code>. </p> </li> <li> <p> For deployments that are deployed with AWS CloudFormation, the target IDs are CloudFormation stack IDs. Their target type is <code>cloudFormationTarget</code>. </p> </li> </ul>"
        }
      }
    },
    "BatchGetDeploymentTargetsOutput": {
      "type": "structure",
      "members": {
        "deploymentTargets": {
          "shape": "DeploymentTargetList",
          "documentation": "<p> A list of target objects for a deployment. Each target object contains details about the target, such as its status and lifecycle events. The type of the target objects depends on the deployment' compute platform. </p> <ul> <li> <p> <b>EC2/On-premises</b>: Each target object is an EC2 or on-premises instance. </p> </li> <li> <p> <b>AWS Lambda</b>: The target object is a specific version of an AWS Lambda function. </p> </li> <li> <p> <b>Amazon ECS</b>: The target object is an Amazon ECS service. </p> </li> <li> <p> <b>CloudFormation</b>: The target object is an AWS CloudFormation blue/green deployment. </p> </li> </ul>"
        }
      }
    },
    "BatchGetDeploymentsInput": {
      "type": "structure",
      "required": [
        "deploymentIds"
      ],
      "members": {
        "deploymentIds": {
          "shape": "DeploymentsList",
          "documentation": "<p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs you can specify is 25.</p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>BatchGetDeployments</code> operation. </p>"
    },
    "BatchGetDeploymentsOutput": {
      "type": "structure",
      "members": {
        "deploymentsInfo": {
          "shape": "DeploymentsInfoList",
          "documentation": "<p> Information about the deployments. </p>"
        }
      },
      "documentation": "<p> Represents the output of a <code>BatchGetDeployments</code> operation. </p>"
    },
    "BatchGetOnPremisesInstancesInput": {
      "type": "structure",
      "required": [
        "instanceNames"
      ],
      "members": {
        "instanceNames": {
          "shape": "InstanceNameList",
          "documentation": "<p>The names of the on-premises instances about which to get information. The maximum number of instance names you can specify is 25.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>BatchGetOnPremisesInstances</code> operation.</p>"
    },
    "BatchGetOnPremisesInstancesOutput": {
      "type": "structure",
      "members": {
        "instanceInfos": {
          "shape": "InstanceInfoList",
          "documentation": "<p>Information about the on-premises instances.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>BatchGetOnPremisesInstances</code> operation.</p>"
    },
    "BlueGreenDeploymentConfiguration": {
      "type": "structure",
      "members": {
        "terminateBlueInstancesOnDeploymentSuccess": {
          "shape": "BlueInstanceTerminationOption",
          "documentation": "<p>Information about whether to terminate instances in the original fleet during a blue/green deployment.</p>"
        },
        "deploymentReadyOption": {
          "shape": "DeploymentReadyOption",
          "documentation": "<p>Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.</p>"
        },
        "greenFleetProvisioningOption": {
          "shape": "GreenFleetProvisioningOption",
          "documentation": "<p>Information about how instances are provisioned for a replacement environment in a blue/green deployment.</p>"
        }
      },
      "documentation": "<p>Information about blue/green deployment options for a deployment group.</p>"
    },
    "BlueInstanceTerminationOption": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "InstanceAction",
          "documentation": "<p>The action to take on instances in the original environment after a successful blue/green deployment.</p> <ul> <li> <p> <code>TERMINATE</code>: Instances are terminated after a specified wait time.</p> </li> <li> <p> <code>KEEP_ALIVE</code>: Instances are left running after they are deregistered from the load balancer and removed from the deployment group.</p> </li> </ul>"
        },
        "terminationWaitTimeInMinutes": {
          "shape": "Duration",
          "documentation": "<p>For an Amazon EC2 deployment, the number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.</p> <p> For an Amazon ECS deployment, the number of minutes before deleting the original (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts traffic from the original (blue) task set to a replacement (green) task set. </p> <p> The maximum setting is 2880 minutes (2 days). </p>"
        }
      },
      "documentation": "<p>Information about whether instances in the original environment are terminated when a blue/green deployment is successful. <code>BlueInstanceTerminationOption</code> does not apply to Lambda deployments. </p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BundleType": {
      "type": "string",
      "enum": [
        "tar",
        "tgz",
        "zip",
        "YAML",
        "JSON"
      ]
    },
    "CloudFormationResourceType": {
      "type": "string"
    },
    "CloudFormationTarget": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p>The unique ID of an AWS CloudFormation blue/green deployment.</p>"
        },
        "targetId": {
          "shape": "TargetId",
          "documentation": "<p> The unique ID of a deployment target that has a type of <code>CloudFormationTarget</code>. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Time",
          "documentation": "<p> The date and time when the target application was updated by an AWS CloudFormation blue/green deployment. </p>"
        },
        "lifecycleEvents": {
          "shape": "LifecycleEventList",
          "documentation": "<p> The lifecycle events of the AWS CloudFormation blue/green deployment to this target application. </p>"
        },
        "status": {
          "shape": "TargetStatus",
          "documentation": "<p> The status of an AWS CloudFormation blue/green deployment's target application. </p>"
        },
        "resourceType": {
          "shape": "CloudFormationResourceType",
          "documentation": "<p>The resource type for the AWS CloudFormation blue/green deployment.</p>"
        },
        "targetVersionWeight": {
          "shape": "TrafficWeight",
          "documentation": "<p>The percentage of production traffic that the target version of an AWS CloudFormation blue/green deployment receives.</p>"
        }
      },
      "documentation": "<p> Information about the target to be updated by an AWS CloudFormation blue/green deployment. This target type is used for all deployments initiated by a CloudFormation stack update.</p>"
    },
    "CommitId": {
      "type": "string"
    },
    "ComputePlatform": {
      "type": "string",
      "enum": [
        "Server",
        "Lambda",
        "ECS"
      ]
    },
    "ContinueDeploymentInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a blue/green deployment for which you want to start rerouting traffic to the replacement environment. </p>"
        },
        "deploymentWaitType": {
          "shape": "DeploymentWaitType",
          "documentation": "<p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code> indicates that the traffic is shifted, but the original target is not terminated. </p>"
        }
      }
    },
    "CreateApplicationInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application. This name must be unique with the applicable IAM user or AWS account.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p> The destination platform type for the deployment (<code>Lambda</code>, <code>Server</code>, or <code>ECS</code>).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p> The metadata that you apply to CodeDeploy applications to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define. </p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>CreateApplication</code> operation.</p>"
    },
    "CreateApplicationOutput": {
      "type": "structure",
      "members": {
        "applicationId": {
          "shape": "ApplicationId",
          "documentation": "<p>A unique application ID.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>CreateApplication</code> operation.</p>"
    },
    "CreateDeploymentConfigInput": {
      "type": "structure",
      "required": [
        "deploymentConfigName"
      ],
      "members": {
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The name of the deployment configuration to create.</p>"
        },
        "minimumHealthyHosts": {
          "shape": "MinimumHealthyHosts",
          "documentation": "<p>The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value.</p> <p>The type parameter takes either of the following values:</p> <ul> <li> <p>HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.</p> </li> <li> <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instances and rounds up fractional instances.</p> </li> </ul> <p>The value parameter takes an integer.</p> <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.</p>"
        },
        "trafficRoutingConfig": {
          "shape": "TrafficRoutingConfig",
          "documentation": "<p>The configuration that specifies how the deployment traffic is routed.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p>The destination platform type for the deployment (<code>Lambda</code>, <code>Server</code>, or <code>ECS</code>).</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>CreateDeploymentConfig</code> operation.</p>"
    },
    "CreateDeploymentConfigOutput": {
      "type": "structure",
      "members": {
        "deploymentConfigId": {
          "shape": "DeploymentConfigId",
          "documentation": "<p>A unique deployment configuration ID.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>CreateDeploymentConfig</code> operation.</p>"
    },
    "CreateDeploymentGroupInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "deploymentGroupName",
        "serviceRoleArn"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The name of a new deployment group for the specified application.</p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>If specified, the deployment configuration name can be either one of the predefined configurations provided with AWS CodeDeploy or a custom deployment configuration that you create by calling the create deployment configuration operation.</p> <p> <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It is used if a configuration isn't specified for the deployment or deployment group.</p> <p>For more information about the predefined deployment configurations in AWS CodeDeploy, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html\">Working with Deployment Configurations in CodeDeploy</a> in the <i>AWS CodeDeploy User Guide</i>.</p>"
        },
        "ec2TagFilters": {
          "shape": "EC2TagFilterList",
          "documentation": "<p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags. Cannot be used in the same call as ec2TagSet.</p>"
        },
        "onPremisesInstanceTagFilters": {
          "shape": "TagFilterList",
          "documentation": "<p>The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags. Cannot be used in the same call as <code>OnPremisesTagSet</code>.</p>"
        },
        "autoScalingGroups": {
          "shape": "AutoScalingGroupNameList",
          "documentation": "<p>A list of associated Amazon EC2 Auto Scaling groups.</p>"
        },
        "serviceRoleArn": {
          "shape": "Role",
          "documentation": "<p>A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy to act on the user's behalf when interacting with AWS services.</p>"
        },
        "triggerConfigurations": {
          "shape": "TriggerConfigList",
          "documentation": "<p>Information about triggers to create when the deployment group is created. For examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html\">Create a Trigger for an AWS CodeDeploy Event</a> in the <i>AWS CodeDeploy User Guide</i>.</p>"
        },
        "alarmConfiguration": {
          "shape": "AlarmConfiguration",
          "documentation": "<p>Information to add about Amazon CloudWatch alarms when the deployment group is created.</p>"
        },
        "autoRollbackConfiguration": {
          "shape": "AutoRollbackConfiguration",
          "documentation": "<p>Configuration information for an automatic rollback that is added when a deployment group is created.</p>"
        },
        "deploymentStyle": {
          "shape": "DeploymentStyle",
          "documentation": "<p>Information about the type of deployment, in-place or blue/green, that you want to run and whether to route deployment traffic behind a load balancer.</p>"
        },
        "blueGreenDeploymentConfiguration": {
          "shape": "BlueGreenDeploymentConfiguration",
          "documentation": "<p>Information about blue/green deployment options for a deployment group.</p>"
        },
        "loadBalancerInfo": {
          "shape": "LoadBalancerInfo",
          "documentation": "<p>Information about the load balancer used in a deployment.</p>"
        },
        "ec2TagSet": {
          "shape": "EC2TagSet",
          "documentation": "<p>Information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same call as <code>ec2TagFilters</code>.</p>"
        },
        "ecsServices": {
          "shape": "ECSServiceList",
          "documentation": "<p> The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format <code>&lt;clustername&gt;:&lt;servicename&gt;</code>. </p>"
        },
        "onPremisesTagSet": {
          "shape": "OnPremisesTagSet",
          "documentation": "<p>Information about groups of tags applied to on-premises instances. The deployment group includes only on-premises instances identified by all of the tag groups. Cannot be used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p> The metadata that you apply to CodeDeploy deployment groups to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define. </p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>CreateDeploymentGroup</code> operation.</p>"
    },
    "CreateDeploymentGroupOutput": {
      "type": "structure",
      "members": {
        "deploymentGroupId": {
          "shape": "DeploymentGroupId",
          "documentation": "<p>A unique deployment group ID.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>CreateDeploymentGroup</code> operation.</p>"
    },
    "CreateDeploymentInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The name of the deployment group.</p>"
        },
        "revision": {
          "shape": "RevisionLocation",
          "documentation": "<p> The type and location of the revision to deploy. </p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The name of a deployment configuration associated with the IAM user or AWS account.</p> <p>If not specified, the value configured in the deployment group is used as the default. If the deployment group does not have a deployment configuration associated with it, <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A comment about the deployment.</p>"
        },
        "ignoreApplicationStopFailures": {
          "shape": "Boolean",
          "documentation": "<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if <code>ApplicationStop</code> fails, the deployment continues with <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code> fails, the deployment continues with <code>ApplicationStop</code>. </p> <p> If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted. </p> <p> During a deployment, the AWS CodeDeploy agent runs the scripts specified for <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail. </p> <p> If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use <code>ignoreApplicationStopFailures</code> to specify that the <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and <code>AfterBlockTraffic</code> failures should be ignored. </p>"
        },
        "targetInstances": {
          "shape": "TargetInstances",
          "documentation": "<p> Information about the instances that belong to the replacement environment in a blue/green deployment. </p>"
        },
        "autoRollbackConfiguration": {
          "shape": "AutoRollbackConfiguration",
          "documentation": "<p>Configuration information for an automatic rollback that is added when a deployment is created.</p>"
        },
        "updateOutdatedInstancesOnly": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether to deploy to all instances or only to instances that are not running the latest application revision. </p>"
        },
        "fileExistsBehavior": {
          "shape": "FileExistsBehavior",
          "documentation": "<p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <p>The <code>fileExistsBehavior</code> parameter takes any of the following values:</p> <ul> <li> <p>DISALLOW: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p>OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p>RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input of a <code>CreateDeployment</code> operation.</p>"
    },
    "CreateDeploymentOutput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        }
      },
      "documentation": "<p> Represents the output of a <code>CreateDeployment</code> operation. </p>"
    },
    "DeleteApplicationInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeleteApplication</code> operation.</p>"
    },
    "DeleteDeploymentConfigInput": {
      "type": "structure",
      "required": [
        "deploymentConfigName"
      ],
      "members": {
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The name of a deployment configuration associated with the IAM user or AWS account.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeleteDeploymentConfig</code> operation.</p>"
    },
    "DeleteDeploymentGroupInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "deploymentGroupName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The name of a deployment group for the specified application.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeleteDeploymentGroup</code> operation.</p>"
    },
    "DeleteDeploymentGroupOutput": {
      "type": "structure",
      "members": {
        "hooksNotCleanedUp": {
          "shape": "AutoScalingGroupList",
          "documentation": "<p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>DeleteDeploymentGroup</code> operation.</p>"
    },
    "DeleteGitHubAccountTokenInput": {
      "type": "structure",
      "members": {
        "tokenName": {
          "shape": "GitHubAccountTokenName",
          "documentation": "<p>The name of the GitHub account connection to delete.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeleteGitHubAccount</code> operation.</p>"
    },
    "DeleteGitHubAccountTokenOutput": {
      "type": "structure",
      "members": {
        "tokenName": {
          "shape": "GitHubAccountTokenName",
          "documentation": "<p>The name of the GitHub account connection that was deleted.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>DeleteGitHubAccountToken</code> operation.</p>"
    },
    "DeleteResourcesByExternalIdInput": {
      "type": "structure",
      "members": {
        "externalId": {
          "shape": "ExternalId",
          "documentation": "<p>The unique ID of an external resource (for example, a CloudFormation stack ID) that is linked to one or more CodeDeploy resources.</p>"
        }
      }
    },
    "DeleteResourcesByExternalIdOutput": {
      "type": "structure",
      "members": {}
    },
    "DeploymentConfigId": {
      "type": "string"
    },
    "DeploymentConfigInfo": {
      "type": "structure",
      "members": {
        "deploymentConfigId": {
          "shape": "DeploymentConfigId",
          "documentation": "<p>The deployment configuration ID.</p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The deployment configuration name.</p>"
        },
        "minimumHealthyHosts": {
          "shape": "MinimumHealthyHosts",
          "documentation": "<p>Information about the number or percentage of minimum healthy instance.</p>"
        },
        "createTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the deployment configuration was created.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p>The destination platform type for the deployment (<code>Lambda</code>, <code>Server</code>, or <code>ECS</code>).</p>"
        },
        "trafficRoutingConfig": {
          "shape": "TrafficRoutingConfig",
          "documentation": "<p>The configuration that specifies how the deployment traffic is routed. Used for deployments with a Lambda or ECS compute platform only.</p>"
        }
      },
      "documentation": "<p>Information about a deployment configuration.</p>"
    },
    "DeploymentConfigName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "DeploymentConfigsList": {
      "type": "list",
      "member": {
        "shape": "DeploymentConfigName"
      }
    },
    "DeploymentCreator": {
      "type": "string",
      "enum": [
        "user",
        "autoscaling",
        "codeDeployRollback",
        "CodeDeploy",
        "CloudFormation",
        "CloudFormationRollback"
      ]
    },
    "DeploymentGroupId": {
      "type": "string"
    },
    "DeploymentGroupInfo": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "deploymentGroupId": {
          "shape": "DeploymentGroupId",
          "documentation": "<p>The deployment group ID.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The deployment group name.</p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The deployment configuration name.</p>"
        },
        "ec2TagFilters": {
          "shape": "EC2TagFilterList",
          "documentation": "<p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances with any of the specified tags.</p>"
        },
        "onPremisesInstanceTagFilters": {
          "shape": "TagFilterList",
          "documentation": "<p>The on-premises instance tags on which to filter. The deployment group includes on-premises instances with any of the specified tags.</p>"
        },
        "autoScalingGroups": {
          "shape": "AutoScalingGroupList",
          "documentation": "<p>A list of associated Auto Scaling groups.</p>"
        },
        "serviceRoleArn": {
          "shape": "Role",
          "documentation": "<p>A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make calls to AWS services on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html\">Create a Service Role for AWS CodeDeploy</a> in the <i>AWS CodeDeploy User Guide</i>.</p>"
        },
        "targetRevision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the deployment group's target revision, including type and location.</p>"
        },
        "triggerConfigurations": {
          "shape": "TriggerConfigList",
          "documentation": "<p>Information about triggers associated with the deployment group.</p>"
        },
        "alarmConfiguration": {
          "shape": "AlarmConfiguration",
          "documentation": "<p>A list of alarms associated with the deployment group.</p>"
        },
        "autoRollbackConfiguration": {
          "shape": "AutoRollbackConfiguration",
          "documentation": "<p>Information about the automatic rollback configuration associated with the deployment group.</p>"
        },
        "deploymentStyle": {
          "shape": "DeploymentStyle",
          "documentation": "<p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>"
        },
        "blueGreenDeploymentConfiguration": {
          "shape": "BlueGreenDeploymentConfiguration",
          "documentation": "<p>Information about blue/green deployment options for a deployment group.</p>"
        },
        "loadBalancerInfo": {
          "shape": "LoadBalancerInfo",
          "documentation": "<p>Information about the load balancer to use in a deployment.</p>"
        },
        "lastSuccessfulDeployment": {
          "shape": "LastDeploymentInfo",
          "documentation": "<p>Information about the most recent successful deployment to the deployment group.</p>"
        },
        "lastAttemptedDeployment": {
          "shape": "LastDeploymentInfo",
          "documentation": "<p>Information about the most recent attempted deployment to the deployment group.</p>"
        },
        "ec2TagSet": {
          "shape": "EC2TagSet",
          "documentation": "<p>Information about groups of tags applied to an EC2 instance. The deployment group includes only EC2 instances identified by all of the tag groups. Cannot be used in the same call as ec2TagFilters.</p>"
        },
        "onPremisesTagSet": {
          "shape": "OnPremisesTagSet",
          "documentation": "<p>Information about groups of tags applied to an on-premises instance. The deployment group includes only on-premises instances identified by all the tag groups. Cannot be used in the same call as onPremisesInstanceTagFilters.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p>The destination platform type for the deployment (<code>Lambda</code>, <code>Server</code>, or <code>ECS</code>).</p>"
        },
        "ecsServices": {
          "shape": "ECSServiceList",
          "documentation": "<p> The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format <code>&lt;clustername&gt;:&lt;servicename&gt;</code>. </p>"
        }
      },
      "documentation": "<p>Information about a deployment group.</p>"
    },
    "DeploymentGroupInfoList": {
      "type": "list",
      "member": {
        "shape": "DeploymentGroupInfo"
      }
    },
    "DeploymentGroupName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "DeploymentGroupsList": {
      "type": "list",
      "member": {
        "shape": "DeploymentGroupName"
      }
    },
    "DeploymentId": {
      "type": "string"
    },
    "DeploymentInfo": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p> The deployment group name. </p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p> The deployment configuration name. </p>"
        },
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "previousRevision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the application revision that was deployed to the deployment group before the most recent successful deployment.</p>"
        },
        "revision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the location of stored application artifacts and the service from which to retrieve them.</p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The current state of the deployment as a whole.</p>"
        },
        "errorInformation": {
          "shape": "ErrorInformation",
          "documentation": "<p>Information about any error associated with this deployment.</p>"
        },
        "createTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the deployment was created.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the deployment was deployed to the deployment group.</p> <p>In some cases, the reported value of the start time might be later than the complete time. This is due to differences in the clock settings of backend servers that participate in the deployment process.</p>"
        },
        "completeTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the deployment was complete.</p>"
        },
        "deploymentOverview": {
          "shape": "DeploymentOverview",
          "documentation": "<p>A summary of the deployment status of the instances in the deployment.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A comment about the deployment.</p>"
        },
        "creator": {
          "shape": "DeploymentCreator",
          "documentation": "<p>The means by which the deployment was created:</p> <ul> <li> <p> <code>user</code>: A user created the deployment.</p> </li> <li> <p> <code>autoscaling</code>: Amazon EC2 Auto Scaling created the deployment.</p> </li> <li> <p> <code>codeDeployRollback</code>: A rollback process created the deployment.</p> </li> </ul>"
        },
        "ignoreApplicationStopFailures": {
          "shape": "Boolean",
          "documentation": "<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if <code>ApplicationStop</code> fails, the deployment continues with DownloadBundle. If <code>BeforeBlockTraffic</code> fails, the deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code> fails, the deployment continues with <code>ApplicationStop</code>. </p> <p> If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted. </p> <p> During a deployment, the AWS CodeDeploy agent runs the scripts specified for <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail. </p> <p> If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use <code>ignoreApplicationStopFailures</code> to specify that the <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and <code>AfterBlockTraffic</code> failures should be ignored. </p>"
        },
        "autoRollbackConfiguration": {
          "shape": "AutoRollbackConfiguration",
          "documentation": "<p>Information about the automatic rollback configuration associated with the deployment.</p>"
        },
        "updateOutdatedInstancesOnly": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether only instances that are not running the latest application revision are to be deployed to.</p>"
        },
        "rollbackInfo": {
          "shape": "RollbackInfo",
          "documentation": "<p>Information about a deployment rollback.</p>"
        },
        "deploymentStyle": {
          "shape": "DeploymentStyle",
          "documentation": "<p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>"
        },
        "targetInstances": {
          "shape": "TargetInstances",
          "documentation": "<p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>"
        },
        "instanceTerminationWaitTimeStarted": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the wait period set for the termination of instances in the original environment has started. Status is 'false' if the KEEP_ALIVE option is specified. Otherwise, 'true' as soon as the termination wait period starts.</p>"
        },
        "blueGreenDeploymentConfiguration": {
          "shape": "BlueGreenDeploymentConfiguration",
          "documentation": "<p>Information about blue/green deployment options for this deployment.</p>"
        },
        "loadBalancerInfo": {
          "shape": "LoadBalancerInfo",
          "documentation": "<p>Information about the load balancer used in the deployment.</p>"
        },
        "additionalDeploymentStatusInfo": {
          "shape": "AdditionalDeploymentStatusInfo",
          "documentation": "<p>Provides information about the results of a deployment, such as whether instances in the original environment in a blue/green deployment were not terminated.</p>"
        },
        "fileExistsBehavior": {
          "shape": "FileExistsBehavior",
          "documentation": "<p>Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment.</p> <ul> <li> <p> <code>DISALLOW</code>: The deployment fails. This is also the default behavior if no option is specified.</p> </li> <li> <p> <code>OVERWRITE</code>: The version of the file from the application revision currently being deployed replaces the version already on the instance.</p> </li> <li> <p> <code>RETAIN</code>: The version of the file already on the instance is kept and used as part of the new deployment.</p> </li> </ul>"
        },
        "deploymentStatusMessages": {
          "shape": "DeploymentStatusMessageList",
          "documentation": "<p>Messages that contain information about the status of a deployment.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p>The destination platform type for the deployment (<code>Lambda</code>, <code>Server</code>, or <code>ECS</code>).</p>"
        },
        "externalId": {
          "shape": "ExternalId",
          "documentation": "<p>The unique ID for an external resource (for example, a CloudFormation stack ID) that is linked to this deployment.</p>"
        }
      },
      "documentation": "<p>Information about a deployment.</p>"
    },
    "DeploymentOption": {
      "type": "string",
      "enum": [
        "WITH_TRAFFIC_CONTROL",
        "WITHOUT_TRAFFIC_CONTROL"
      ]
    },
    "DeploymentOverview": {
      "type": "structure",
      "members": {
        "Pending": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in the deployment in a pending state.</p>"
        },
        "InProgress": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in which the deployment is in progress.</p>"
        },
        "Succeeded": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in the deployment to which revisions have been successfully deployed.</p>"
        },
        "Failed": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in the deployment in a failed state.</p>"
        },
        "Skipped": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in the deployment in a skipped state.</p>"
        },
        "Ready": {
          "shape": "InstanceCount",
          "documentation": "<p>The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.</p>"
        }
      },
      "documentation": "<p>Information about the deployment status of the instances in the deployment.</p>"
    },
    "DeploymentReadyAction": {
      "type": "string",
      "enum": [
        "CONTINUE_DEPLOYMENT",
        "STOP_DEPLOYMENT"
      ]
    },
    "DeploymentReadyOption": {
      "type": "structure",
      "members": {
        "actionOnTimeout": {
          "shape": "DeploymentReadyAction",
          "documentation": "<p>Information about when to reroute traffic from an original environment to a replacement environment in a blue/green deployment.</p> <ul> <li> <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment.</p> </li> <li> <p>STOP_DEPLOYMENT: Do not register new instances with a load balancer unless traffic rerouting is started using <a>ContinueDeployment</a>. If traffic rerouting is not started before the end of the specified wait period, the deployment status is changed to Stopped.</p> </li> </ul>"
        },
        "waitTimeInMinutes": {
          "shape": "Duration",
          "documentation": "<p>The number of minutes to wait before the status of a blue/green deployment is changed to Stopped if rerouting is not started manually. Applies only to the <code>STOP_DEPLOYMENT</code> option for <code>actionOnTimeout</code>.</p>"
        }
      },
      "documentation": "<p>Information about how traffic is rerouted to instances in a replacement environment in a blue/green deployment.</p>"
    },
    "DeploymentStatus": {
      "type": "string",
      "enum": [
        "Created",
        "Queued",
        "InProgress",
        "Baking",
        "Succeeded",
        "Failed",
        "Stopped",
        "Ready"
      ]
    },
    "DeploymentStatusList": {
      "type": "list",
      "member": {
        "shape": "DeploymentStatus"
      }
    },
    "DeploymentStatusMessageList": {
      "type": "list",
      "member": {
        "shape": "ErrorMessage"
      }
    },
    "DeploymentStyle": {
      "type": "structure",
      "members": {
        "deploymentType": {
          "shape": "DeploymentType",
          "documentation": "<p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>"
        },
        "deploymentOption": {
          "shape": "DeploymentOption",
          "documentation": "<p>Indicates whether to route deployment traffic behind a load balancer.</p>"
        }
      },
      "documentation": "<p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>"
    },
    "DeploymentTarget": {
      "type": "structure",
      "members": {
        "deploymentTargetType": {
          "shape": "DeploymentTargetType",
          "documentation": "<p>The deployment type that is specific to the deployment's compute platform or deployments initiated by a CloudFormation stack update.</p>"
        },
        "instanceTarget": {
          "shape": "InstanceTarget",
          "documentation": "<p> Information about the target for a deployment that uses the EC2/On-premises compute platform. </p>"
        },
        "lambdaTarget": {
          "shape": "LambdaTarget",
          "documentation": "<p> Information about the target for a deployment that uses the AWS Lambda compute platform. </p>"
        },
        "ecsTarget": {
          "shape": "ECSTarget",
          "documentation": "<p> Information about the target for a deployment that uses the Amazon ECS compute platform. </p>"
        },
        "cloudFormationTarget": {
          "shape": "CloudFormationTarget"
        }
      },
      "documentation": "<p> Information about the deployment target. </p>"
    },
    "DeploymentTargetList": {
      "type": "list",
      "member": {
        "shape": "DeploymentTarget"
      }
    },
    "DeploymentTargetType": {
      "type": "string",
      "enum": [
        "InstanceTarget",
        "LambdaTarget",
        "ECSTarget",
        "CloudFormationTarget"
      ]
    },
    "DeploymentType": {
      "type": "string",
      "enum": [
        "IN_PLACE",
        "BLUE_GREEN"
      ]
    },
    "DeploymentWaitType": {
      "type": "string",
      "enum": [
        "READY_WAIT",
        "TERMINATION_WAIT"
      ]
    },
    "DeploymentsInfoList": {
      "type": "list",
      "member": {
        "shape": "DeploymentInfo"
      }
    },
    "DeploymentsList": {
      "type": "list",
      "member": {
        "shape": "DeploymentId"
      }
    },
    "DeregisterOnPremisesInstanceInput": {
      "type": "structure",
      "required": [
        "instanceName"
      ],
      "members": {
        "instanceName": {
          "shape": "InstanceName",
          "documentation": "<p>The name of the on-premises instance to deregister.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeregisterOnPremisesInstance</code> operation.</p>"
    },
    "Description": {
      "type": "string"
    },
    "Diagnostics": {
      "type": "structure",
      "members": {
        "errorCode": {
          "shape": "LifecycleErrorCode",
          "documentation": "<p>The associated error code:</p> <ul> <li> <p>Success: The specified script ran.</p> </li> <li> <p>ScriptMissing: The specified script was not found in the specified location.</p> </li> <li> <p>ScriptNotExecutable: The specified script is not a recognized executable file type.</p> </li> <li> <p>ScriptTimedOut: The specified script did not finish running in the specified time period.</p> </li> <li> <p>ScriptFailed: The specified script failed to run as expected.</p> </li> <li> <p>UnknownError: The specified script did not run for an unknown reason.</p> </li> </ul>"
        },
        "scriptName": {
          "shape": "ScriptName",
          "documentation": "<p>The name of the script.</p>"
        },
        "message": {
          "shape": "LifecycleMessage",
          "documentation": "<p>The message associated with the error.</p>"
        },
        "logTail": {
          "shape": "LogTail",
          "documentation": "<p>The last portion of the diagnostic log.</p> <p>If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.</p>"
        }
      },
      "documentation": "<p>Diagnostic information about executable scripts that are part of a deployment.</p>"
    },
    "Duration": {
      "type": "integer"
    },
    "EC2TagFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "Key",
          "documentation": "<p>The tag filter key.</p>"
        },
        "Value": {
          "shape": "Value",
          "documentation": "<p>The tag filter value.</p>"
        },
        "Type": {
          "shape": "EC2TagFilterType",
          "documentation": "<p>The tag filter type:</p> <ul> <li> <p> <code>KEY_ONLY</code>: Key only.</p> </li> <li> <p> <code>VALUE_ONLY</code>: Value only.</p> </li> <li> <p> <code>KEY_AND_VALUE</code>: Key and value.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about an EC2 tag filter.</p>"
    },
    "EC2TagFilterList": {
      "type": "list",
      "member": {
        "shape": "EC2TagFilter"
      }
    },
    "EC2TagFilterType": {
      "type": "string",
      "enum": [
        "KEY_ONLY",
        "VALUE_ONLY",
        "KEY_AND_VALUE"
      ]
    },
    "EC2TagSet": {
      "type": "structure",
      "members": {
        "ec2TagSetList": {
          "shape": "EC2TagSetList",
          "documentation": "<p>A list that contains other lists of EC2 instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.</p>"
        }
      },
      "documentation": "<p>Information about groups of EC2 instance tags.</p>"
    },
    "EC2TagSetList": {
      "type": "list",
      "member": {
        "shape": "EC2TagFilterList"
      }
    },
    "ECSClusterName": {
      "type": "string"
    },
    "ECSService": {
      "type": "structure",
      "members": {
        "serviceName": {
          "shape": "ECSServiceName",
          "documentation": "<p> The name of the target Amazon ECS service. </p>"
        },
        "clusterName": {
          "shape": "ECSClusterName",
          "documentation": "<p> The name of the cluster that the Amazon ECS service is associated with. </p>"
        }
      },
      "documentation": "<p> Contains the service and cluster names used to identify an Amazon ECS deployment's target. </p>"
    },
    "ECSServiceList": {
      "type": "list",
      "member": {
        "shape": "ECSService"
      }
    },
    "ECSServiceName": {
      "type": "string"
    },
    "ECSTarget": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "targetId": {
          "shape": "TargetId",
          "documentation": "<p> The unique ID of a deployment target that has a type of <code>ecsTarget</code>. </p>"
        },
        "targetArn": {
          "shape": "TargetArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the target. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Time",
          "documentation": "<p> The date and time when the target Amazon ECS application was updated by a deployment. </p>"
        },
        "lifecycleEvents": {
          "shape": "LifecycleEventList",
          "documentation": "<p> The lifecycle events of the deployment to this target Amazon ECS application. </p>"
        },
        "status": {
          "shape": "TargetStatus",
          "documentation": "<p> The status an Amazon ECS deployment's target ECS application. </p>"
        },
        "taskSetsInfo": {
          "shape": "ECSTaskSetList",
          "documentation": "<p> The <code>ECSTaskSet</code> objects associated with the ECS target. </p>"
        }
      },
      "documentation": "<p> Information about the target of an Amazon ECS deployment. </p>"
    },
    "ECSTaskSet": {
      "type": "structure",
      "members": {
        "identifer": {
          "shape": "ECSTaskSetIdentifier",
          "documentation": "<p> A unique ID of an <code>ECSTaskSet</code>. </p>"
        },
        "desiredCount": {
          "shape": "ECSTaskSetCount",
          "documentation": "<p> The number of tasks in a task set. During a deployment that uses the Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a new task set and uses this value to determine how many tasks to create. After the updated task set is created, CodeDeploy shifts traffic to the new task set. </p>"
        },
        "pendingCount": {
          "shape": "ECSTaskSetCount",
          "documentation": "<p> The number of tasks in the task set that are in the <code>PENDING</code> status during an Amazon ECS deployment. A task in the <code>PENDING</code> state is preparing to enter the <code>RUNNING</code> state. A task set enters the <code>PENDING</code> status when it launches for the first time, or when it is restarted after being in the <code>STOPPED</code> state. </p>"
        },
        "runningCount": {
          "shape": "ECSTaskSetCount",
          "documentation": "<p> The number of tasks in the task set that are in the <code>RUNNING</code> status during an Amazon ECS deployment. A task in the <code>RUNNING</code> state is running and ready for use. </p>"
        },
        "status": {
          "shape": "ECSTaskSetStatus",
          "documentation": "<p> The status of the task set. There are three valid task set statuses: </p> <ul> <li> <p> <code>PRIMARY</code>: Indicates the task set is serving production traffic. </p> </li> <li> <p> <code>ACTIVE</code>: Indicates the task set is not serving production traffic. </p> </li> <li> <p> <code>DRAINING</code>: Indicates the tasks in the task set are being stopped and their corresponding targets are being deregistered from their target group. </p> </li> </ul>"
        },
        "trafficWeight": {
          "shape": "TrafficWeight",
          "documentation": "<p> The percentage of traffic served by this task set. </p>"
        },
        "targetGroup": {
          "shape": "TargetGroupInfo",
          "documentation": "<p> The target group associated with the task set. The target group is used by AWS CodeDeploy to manage traffic to a task set. </p>"
        },
        "taskSetLabel": {
          "shape": "TargetLabel",
          "documentation": "<p> A label that identifies whether the ECS task set is an original target (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>"
        }
      },
      "documentation": "<p> Information about a set of Amazon ECS tasks in an AWS CodeDeploy deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic. An AWS CodeDeploy application that uses the Amazon ECS compute platform deploys a containerized application in an Amazon ECS service as a task set. </p>"
    },
    "ECSTaskSetCount": {
      "type": "long"
    },
    "ECSTaskSetIdentifier": {
      "type": "string"
    },
    "ECSTaskSetList": {
      "type": "list",
      "member": {
        "shape": "ECSTaskSet"
      }
    },
    "ECSTaskSetStatus": {
      "type": "string"
    },
    "ELBInfo": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ELBName",
          "documentation": "<p>For blue/green deployments, the name of the load balancer that is used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment is complete.</p>"
        }
      },
      "documentation": "<p>Information about a load balancer in Elastic Load Balancing to use in a deployment. Instances are registered directly with a load balancer, and traffic is routed to the load balancer.</p>"
    },
    "ELBInfoList": {
      "type": "list",
      "member": {
        "shape": "ELBInfo"
      }
    },
    "ELBName": {
      "type": "string"
    },
    "ETag": {
      "type": "string"
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "AGENT_ISSUE",
        "ALARM_ACTIVE",
        "APPLICATION_MISSING",
        "AUTOSCALING_VALIDATION_ERROR",
        "AUTO_SCALING_CONFIGURATION",
        "AUTO_SCALING_IAM_ROLE_PERMISSIONS",
        "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND",
        "CUSTOMER_APPLICATION_UNHEALTHY",
        "DEPLOYMENT_GROUP_MISSING",
        "ECS_UPDATE_ERROR",
        "ELASTIC_LOAD_BALANCING_INVALID",
        "ELB_INVALID_INSTANCE",
        "HEALTH_CONSTRAINTS",
        "HEALTH_CONSTRAINTS_INVALID",
        "HOOK_EXECUTION_FAILURE",
        "IAM_ROLE_MISSING",
        "IAM_ROLE_PERMISSIONS",
        "INTERNAL_ERROR",
        "INVALID_ECS_SERVICE",
        "INVALID_LAMBDA_CONFIGURATION",
        "INVALID_LAMBDA_FUNCTION",
        "INVALID_REVISION",
        "MANUAL_STOP",
        "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION",
        "MISSING_ELB_INFORMATION",
        "MISSING_GITHUB_TOKEN",
        "NO_EC2_SUBSCRIPTION",
        "NO_INSTANCES",
        "OVER_MAX_INSTANCES",
        "RESOURCE_LIMIT_EXCEEDED",
        "REVISION_MISSING",
        "THROTTLED",
        "TIMEOUT",
        "CLOUDFORMATION_STACK_FAILURE"
      ]
    },
    "ErrorInformation": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "ErrorCode",
          "documentation": "<p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html\">Error Codes for AWS CodeDeploy</a> in the <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide\">AWS CodeDeploy User Guide</a>.</p> <p>The error code:</p> <ul> <li> <p>APPLICATION_MISSING: The application was missing. This error code is most likely raised if the application is deleted after the deployment is created, but before it is started.</p> </li> <li> <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code is most likely raised if the deployment group is deleted after the deployment is created, but before it is started.</p> </li> <li> <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed within the instance health constraints specified.</p> </li> <li> <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p> </li> <li> <p>IAM_ROLE_PERMISSIONS: The service role does not have the correct permissions.</p> </li> <li> <p>INTERNAL_ERROR: There was an internal error.</p> </li> <li> <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to Amazon EC2.</p> </li> <li> <p>NO_INSTANCES: No instances were specified, or no instances can be found.</p> </li> <li> <p>OVER_MAX_INSTANCES: The maximum number of instances was exceeded.</p> </li> <li> <p>THROTTLED: The operation was throttled because the calling account exceeded the throttling limits of one or more AWS services.</p> </li> <li> <p>TIMEOUT: The deployment has timed out.</p> </li> <li> <p>REVISION_MISSING: The revision ID was missing. This error code is most likely raised if the revision is deleted after the deployment is created, but before it is started.</p> </li> </ul>"
        },
        "message": {
          "shape": "ErrorMessage",
          "documentation": "<p>An accompanying error message.</p>"
        }
      },
      "documentation": "<p>Information about a deployment error.</p>"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "ExternalId": {
      "type": "string"
    },
    "FileExistsBehavior": {
      "type": "string",
      "enum": [
        "DISALLOW",
        "OVERWRITE",
        "RETAIN"
      ]
    },
    "FilterValue": {
      "type": "string"
    },
    "FilterValueList": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      }
    },
    "GenericRevisionInfo": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "Description",
          "documentation": "<p>A comment about the revision.</p>"
        },
        "deploymentGroups": {
          "shape": "DeploymentGroupsList",
          "documentation": "<p>The deployment groups for which this is the current target revision.</p>"
        },
        "firstUsedTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the revision was first used by AWS CodeDeploy.</p>"
        },
        "lastUsedTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the revision was last used by AWS CodeDeploy.</p>"
        },
        "registerTime": {
          "shape": "Timestamp",
          "documentation": "<p>When the revision was registered with AWS CodeDeploy.</p>"
        }
      },
      "documentation": "<p>Information about an application revision.</p>"
    },
    "GetApplicationInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetApplication</code> operation.</p>"
    },
    "GetApplicationOutput": {
      "type": "structure",
      "members": {
        "application": {
          "shape": "ApplicationInfo",
          "documentation": "<p>Information about the application.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetApplication</code> operation.</p>"
    },
    "GetApplicationRevisionInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "revision"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application that corresponds to the revision.</p>"
        },
        "revision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the application revision to get, including type and location.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetApplicationRevision</code> operation.</p>"
    },
    "GetApplicationRevisionOutput": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application that corresponds to the revision.</p>"
        },
        "revision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Additional information about the revision, including type and location.</p>"
        },
        "revisionInfo": {
          "shape": "GenericRevisionInfo",
          "documentation": "<p>General information about the revision.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetApplicationRevision</code> operation.</p>"
    },
    "GetDeploymentConfigInput": {
      "type": "structure",
      "required": [
        "deploymentConfigName"
      ],
      "members": {
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The name of a deployment configuration associated with the IAM user or AWS account.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetDeploymentConfig</code> operation.</p>"
    },
    "GetDeploymentConfigOutput": {
      "type": "structure",
      "members": {
        "deploymentConfigInfo": {
          "shape": "DeploymentConfigInfo",
          "documentation": "<p>Information about the deployment configuration.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetDeploymentConfig</code> operation.</p>"
    },
    "GetDeploymentGroupInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "deploymentGroupName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The name of a deployment group for the specified application.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetDeploymentGroup</code> operation.</p>"
    },
    "GetDeploymentGroupOutput": {
      "type": "structure",
      "members": {
        "deploymentGroupInfo": {
          "shape": "DeploymentGroupInfo",
          "documentation": "<p>Information about the deployment group.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetDeploymentGroup</code> operation.</p>"
    },
    "GetDeploymentInput": {
      "type": "structure",
      "required": [
        "deploymentId"
      ],
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment associated with the IAM user or AWS account. </p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetDeployment</code> operation.</p>"
    },
    "GetDeploymentInstanceInput": {
      "type": "structure",
      "required": [
        "deploymentId",
        "instanceId"
      ],
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "instanceId": {
          "shape": "InstanceId",
          "documentation": "<p> The unique ID of an instance in the deployment group. </p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>GetDeploymentInstance</code> operation. </p>"
    },
    "GetDeploymentInstanceOutput": {
      "type": "structure",
      "members": {
        "instanceSummary": {
          "shape": "InstanceSummary",
          "documentation": "<p> Information about the instance. </p>"
        }
      },
      "documentation": "<p> Represents the output of a <code>GetDeploymentInstance</code> operation. </p>"
    },
    "GetDeploymentOutput": {
      "type": "structure",
      "members": {
        "deploymentInfo": {
          "shape": "DeploymentInfo",
          "documentation": "<p>Information about the deployment.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetDeployment</code> operation.</p>"
    },
    "GetDeploymentTargetInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "targetId": {
          "shape": "TargetId",
          "documentation": "<p> The unique ID of a deployment target. </p>"
        }
      }
    },
    "GetDeploymentTargetOutput": {
      "type": "structure",
      "members": {
        "deploymentTarget": {
          "shape": "DeploymentTarget",
          "documentation": "<p> A deployment target that contains information about a deployment such as its status, lifecycle events, and when it was last updated. It also contains metadata about the deployment target. The deployment target metadata depends on the deployment target's type (<code>instanceTarget</code>, <code>lambdaTarget</code>, or <code>ecsTarget</code>). </p>"
        }
      }
    },
    "GetOnPremisesInstanceInput": {
      "type": "structure",
      "required": [
        "instanceName"
      ],
      "members": {
        "instanceName": {
          "shape": "InstanceName",
          "documentation": "<p> The name of the on-premises instance about which to get information. </p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>GetOnPremisesInstance</code> operation. </p>"
    },
    "GetOnPremisesInstanceOutput": {
      "type": "structure",
      "members": {
        "instanceInfo": {
          "shape": "InstanceInfo",
          "documentation": "<p> Information about the on-premises instance. </p>"
        }
      },
      "documentation": "<p> Represents the output of a <code>GetOnPremisesInstance</code> operation. </p>"
    },
    "GitHubAccountTokenName": {
      "type": "string"
    },
    "GitHubAccountTokenNameList": {
      "type": "list",
      "member": {
        "shape": "GitHubAccountTokenName"
      }
    },
    "GitHubLocation": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "Repository",
          "documentation": "<p>The GitHub account and repository pair that stores a reference to the commit that represents the bundled artifacts for the application revision. </p> <p>Specified as account/repository.</p>"
        },
        "commitId": {
          "shape": "CommitId",
          "documentation": "<p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the application revision.</p>"
        }
      },
      "documentation": "<p>Information about the location of application artifacts stored in GitHub.</p>"
    },
    "GreenFleetProvisioningAction": {
      "type": "string",
      "enum": [
        "DISCOVER_EXISTING",
        "COPY_AUTO_SCALING_GROUP"
      ]
    },
    "GreenFleetProvisioningOption": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "GreenFleetProvisioningAction",
          "documentation": "<p>The method used to add instances to a replacement environment.</p> <ul> <li> <p> <code>DISCOVER_EXISTING</code>: Use instances that already exist or will be created manually.</p> </li> <li> <p> <code>COPY_AUTO_SCALING_GROUP</code>: Use settings from a specified Auto Scaling group to define and create instances in a new Auto Scaling group.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>"
    },
    "IamSessionArn": {
      "type": "string"
    },
    "IamUserArn": {
      "type": "string"
    },
    "InstanceAction": {
      "type": "string",
      "enum": [
        "TERMINATE",
        "KEEP_ALIVE"
      ]
    },
    "InstanceArn": {
      "type": "string"
    },
    "InstanceCount": {
      "type": "long"
    },
    "InstanceId": {
      "type": "string"
    },
    "InstanceInfo": {
      "type": "structure",
      "members": {
        "instanceName": {
          "shape": "InstanceName",
          "documentation": "<p>The name of the on-premises instance.</p>"
        },
        "iamSessionArn": {
          "shape": "IamSessionArn",
          "documentation": "<p>The ARN of the IAM session associated with the on-premises instance.</p>"
        },
        "iamUserArn": {
          "shape": "IamUserArn",
          "documentation": "<p>The IAM user ARN associated with the on-premises instance.</p>"
        },
        "instanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the on-premises instance.</p>"
        },
        "registerTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the on-premises instance was registered.</p>"
        },
        "deregisterTime": {
          "shape": "Timestamp",
          "documentation": "<p>If the on-premises instance was deregistered, the time at which the on-premises instance was deregistered.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags currently associated with the on-premises instance.</p>"
        }
      },
      "documentation": "<p>Information about an on-premises instance.</p>"
    },
    "InstanceInfoList": {
      "type": "list",
      "member": {
        "shape": "InstanceInfo"
      }
    },
    "InstanceName": {
      "type": "string"
    },
    "InstanceNameList": {
      "type": "list",
      "member": {
        "shape": "InstanceName"
      }
    },
    "InstanceStatus": {
      "type": "string",
      "deprecated": true,
      "deprecatedMessage": "InstanceStatus is deprecated, use TargetStatus instead.",
      "enum": [
        "Pending",
        "InProgress",
        "Succeeded",
        "Failed",
        "Skipped",
        "Unknown",
        "Ready"
      ]
    },
    "InstanceStatusList": {
      "type": "list",
      "member": {
        "shape": "InstanceStatus"
      }
    },
    "InstanceSummary": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "instanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The instance ID.</p>"
        },
        "status": {
          "shape": "InstanceStatus",
          "documentation": "<p>The deployment status for this instance:</p> <ul> <li> <p> <code>Pending</code>: The deployment is pending for this instance.</p> </li> <li> <p> <code>In Progress</code>: The deployment is in progress for this instance.</p> </li> <li> <p> <code>Succeeded</code>: The deployment has succeeded for this instance.</p> </li> <li> <p> <code>Failed</code>: The deployment has failed for this instance.</p> </li> <li> <p> <code>Skipped</code>: The deployment has been skipped for this instance.</p> </li> <li> <p> <code>Unknown</code>: The deployment status is unknown for this instance.</p> </li> </ul>"
        },
        "lastUpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the instance information was last updated.</p>"
        },
        "lifecycleEvents": {
          "shape": "LifecycleEventList",
          "documentation": "<p>A list of lifecycle events for this instance.</p>"
        },
        "instanceType": {
          "shape": "InstanceType",
          "documentation": "<p>Information about which environment an instance belongs to in a blue/green deployment.</p> <ul> <li> <p>BLUE: The instance is part of the original environment.</p> </li> <li> <p>GREEN: The instance is part of the replacement environment.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about an instance in a deployment.</p>",
      "deprecated": true,
      "deprecatedMessage": "InstanceSummary is deprecated, use DeploymentTarget instead."
    },
    "InstanceSummaryList": {
      "type": "list",
      "member": {
        "shape": "InstanceSummary"
      }
    },
    "InstanceTarget": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "targetId": {
          "shape": "TargetId",
          "documentation": "<p> The unique ID of a deployment target that has a type of <code>instanceTarget</code>. </p>"
        },
        "targetArn": {
          "shape": "TargetArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the target. </p>"
        },
        "status": {
          "shape": "TargetStatus",
          "documentation": "<p> The status an EC2/On-premises deployment's target instance. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Time",
          "documentation": "<p> The date and time when the target instance was updated by a deployment. </p>"
        },
        "lifecycleEvents": {
          "shape": "LifecycleEventList",
          "documentation": "<p> The lifecycle events of the deployment to this target instance. </p>"
        },
        "instanceLabel": {
          "shape": "TargetLabel",
          "documentation": "<p> A label that identifies whether the instance is an original target (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>"
        }
      },
      "documentation": "<p> A target Amazon EC2 or on-premises instance during a deployment that uses the EC2/On-premises compute platform. </p>"
    },
    "InstanceType": {
      "type": "string",
      "enum": [
        "Blue",
        "Green"
      ]
    },
    "InstanceTypeList": {
      "type": "list",
      "member": {
        "shape": "InstanceType"
      }
    },
    "InstancesList": {
      "type": "list",
      "member": {
        "shape": "InstanceId"
      }
    },
    "Key": {
      "type": "string"
    },
    "LambdaFunctionAlias": {
      "type": "string"
    },
    "LambdaFunctionInfo": {
      "type": "structure",
      "members": {
        "functionName": {
          "shape": "LambdaFunctionName",
          "documentation": "<p> The name of a Lambda function. </p>"
        },
        "functionAlias": {
          "shape": "LambdaFunctionAlias",
          "documentation": "<p> The alias of a Lambda function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html\">AWS Lambda Function Aliases</a> in the <i>AWS Lambda Developer Guide</i>.</p>"
        },
        "currentVersion": {
          "shape": "Version",
          "documentation": "<p> The version of a Lambda function that production traffic points to. </p>"
        },
        "targetVersion": {
          "shape": "Version",
          "documentation": "<p> The version of a Lambda function that production traffic points to after the Lambda function is deployed. </p>"
        },
        "targetVersionWeight": {
          "shape": "TrafficWeight",
          "documentation": "<p> The percentage of production traffic that the target version of a Lambda function receives. </p>"
        }
      },
      "documentation": "<p> Information about a Lambda function specified in a deployment. </p>"
    },
    "LambdaFunctionName": {
      "type": "string"
    },
    "LambdaTarget": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "targetId": {
          "shape": "TargetId",
          "documentation": "<p> The unique ID of a deployment target that has a type of <code>lambdaTarget</code>. </p>"
        },
        "targetArn": {
          "shape": "TargetArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the target. </p>"
        },
        "status": {
          "shape": "TargetStatus",
          "documentation": "<p> The status an AWS Lambda deployment's target Lambda function. </p>"
        },
        "lastUpdatedAt": {
          "shape": "Time",
          "documentation": "<p> The date and time when the target Lambda function was updated by a deployment. </p>"
        },
        "lifecycleEvents": {
          "shape": "LifecycleEventList",
          "documentation": "<p> The lifecycle events of the deployment to this target Lambda function. </p>"
        },
        "lambdaFunctionInfo": {
          "shape": "LambdaFunctionInfo",
          "documentation": "<p> A <code>LambdaFunctionInfo</code> object that describes a target Lambda function. </p>"
        }
      },
      "documentation": "<p> Information about the target AWS Lambda function during an AWS Lambda deployment. </p>"
    },
    "LastDeploymentInfo": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the most recent deployment.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the most recent deployment to the deployment group was complete.</p>"
        },
        "createTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the most recent deployment to the deployment group started.</p>"
        }
      },
      "documentation": "<p>Information about the most recent attempted or successful deployment to a deployment group.</p>"
    },
    "LifecycleErrorCode": {
      "type": "string",
      "enum": [
        "Success",
        "ScriptMissing",
        "ScriptNotExecutable",
        "ScriptTimedOut",
        "ScriptFailed",
        "UnknownError"
      ]
    },
    "LifecycleEvent": {
      "type": "structure",
      "members": {
        "lifecycleEventName": {
          "shape": "LifecycleEventName",
          "documentation": "<p>The deployment lifecycle event name, such as <code>ApplicationStop</code>, <code>BeforeInstall</code>, <code>AfterInstall</code>, <code>ApplicationStart</code>, or <code>ValidateService</code>.</p>"
        },
        "diagnostics": {
          "shape": "Diagnostics",
          "documentation": "<p>Diagnostic information about the deployment lifecycle event.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the deployment lifecycle event started.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when the deployment lifecycle event ended.</p>"
        },
        "status": {
          "shape": "LifecycleEventStatus",
          "documentation": "<p>The deployment lifecycle event status:</p> <ul> <li> <p>Pending: The deployment lifecycle event is pending.</p> </li> <li> <p>InProgress: The deployment lifecycle event is in progress.</p> </li> <li> <p>Succeeded: The deployment lifecycle event ran successfully.</p> </li> <li> <p>Failed: The deployment lifecycle event has failed.</p> </li> <li> <p>Skipped: The deployment lifecycle event has been skipped.</p> </li> <li> <p>Unknown: The deployment lifecycle event is unknown.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about a deployment lifecycle event.</p>"
    },
    "LifecycleEventHookExecutionId": {
      "type": "string"
    },
    "LifecycleEventList": {
      "type": "list",
      "member": {
        "shape": "LifecycleEvent"
      }
    },
    "LifecycleEventName": {
      "type": "string"
    },
    "LifecycleEventStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Succeeded",
        "Failed",
        "Skipped",
        "Unknown"
      ]
    },
    "LifecycleMessage": {
      "type": "string"
    },
    "ListApplicationRevisionsInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p> The name of an AWS CodeDeploy application associated with the IAM user or AWS account. </p>"
        },
        "sortBy": {
          "shape": "ApplicationRevisionSortBy",
          "documentation": "<p>The column name to use to sort the list results:</p> <ul> <li> <p> <code>registerTime</code>: Sort by the time the revisions were registered with AWS CodeDeploy.</p> </li> <li> <p> <code>firstUsedTime</code>: Sort by the time the revisions were first used in a deployment.</p> </li> <li> <p> <code>lastUsedTime</code>: Sort by the time the revisions were last used in a deployment.</p> </li> </ul> <p> If not specified or set to null, the results are returned in an arbitrary order. </p>"
        },
        "sortOrder": {
          "shape": "SortOrder",
          "documentation": "<p> The order in which to sort the list results: </p> <ul> <li> <p> <code>ascending</code>: ascending order.</p> </li> <li> <p> <code>descending</code>: descending order.</p> </li> </ul> <p>If not specified, the results are sorted in ascending order.</p> <p>If set to null, the results are sorted in an arbitrary order.</p>"
        },
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p> An Amazon S3 bucket name to limit the search for revisions. </p> <p> If set to null, all of the user's buckets are searched. </p>"
        },
        "s3KeyPrefix": {
          "shape": "S3Key",
          "documentation": "<p> A key prefix for the set of Amazon S3 objects to limit the search for revisions. </p>"
        },
        "deployed": {
          "shape": "ListStateFilterAction",
          "documentation": "<p> Whether to list revisions based on whether the revision is the target revision of a deployment group: </p> <ul> <li> <p> <code>include</code>: List revisions that are target revisions of a deployment group.</p> </li> <li> <p> <code>exclude</code>: Do not list revisions that are target revisions of a deployment group.</p> </li> <li> <p> <code>ignore</code>: List all revisions.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous <code>ListApplicationRevisions</code> call. It can be used to return the next set of applications in the list.</p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>ListApplicationRevisions</code> operation. </p>"
    },
    "ListApplicationRevisionsOutput": {
      "type": "structure",
      "members": {
        "revisions": {
          "shape": "RevisionLocationList",
          "documentation": "<p>A list of locations that contain the matching revisions.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListApplicationRevisions</code> operation.</p>"
    },
    "ListApplicationsInput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous list applications call. It can be used to return the next set of applications in the list.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListApplications</code> operation.</p>"
    },
    "ListApplicationsOutput": {
      "type": "structure",
      "members": {
        "applications": {
          "shape": "ApplicationsList",
          "documentation": "<p>A list of application names.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list applications call to return the next set of applications in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a ListApplications operation.</p>"
    },
    "ListDeploymentConfigsInput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It can be used to return the next set of deployment configurations in the list. </p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListDeploymentConfigs</code> operation.</p>"
    },
    "ListDeploymentConfigsOutput": {
      "type": "structure",
      "members": {
        "deploymentConfigsList": {
          "shape": "DeploymentConfigsList",
          "documentation": "<p>A list of deployment configurations, including built-in configurations such as <code>CodeDeployDefault.OneAtATime</code>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment configurations call to return the next set of deployment configurations in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListDeploymentConfigs</code> operation.</p>"
    },
    "ListDeploymentGroupsInput": {
      "type": "structure",
      "required": [
        "applicationName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous list deployment groups call. It can be used to return the next set of deployment groups in the list.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListDeploymentGroups</code> operation.</p>"
    },
    "ListDeploymentGroupsOutput": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "deploymentGroups": {
          "shape": "DeploymentGroupsList",
          "documentation": "<p>A list of deployment group names.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment groups call to return the next set of deployment groups in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListDeploymentGroups</code> operation.</p>"
    },
    "ListDeploymentInstancesInput": {
      "type": "structure",
      "required": [
        "deploymentId"
      ],
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous list deployment instances call. It can be used to return the next set of deployment instances in the list.</p>"
        },
        "instanceStatusFilter": {
          "shape": "InstanceStatusList",
          "documentation": "<p>A subset of instances to list by status:</p> <ul> <li> <p> <code>Pending</code>: Include those instances with pending deployments.</p> </li> <li> <p> <code>InProgress</code>: Include those instances where deployments are still in progress.</p> </li> <li> <p> <code>Succeeded</code>: Include those instances with successful deployments.</p> </li> <li> <p> <code>Failed</code>: Include those instances with failed deployments.</p> </li> <li> <p> <code>Skipped</code>: Include those instances with skipped deployments.</p> </li> <li> <p> <code>Unknown</code>: Include those instances with deployments in an unknown state.</p> </li> </ul>"
        },
        "instanceTypeFilter": {
          "shape": "InstanceTypeList",
          "documentation": "<p>The set of instances in a blue/green deployment, either those in the original environment (\"BLUE\") or those in the replacement environment (\"GREEN\"), for which you want to view instance information.</p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>ListDeploymentInstances</code> operation. </p>"
    },
    "ListDeploymentInstancesOutput": {
      "type": "structure",
      "members": {
        "instancesList": {
          "shape": "InstancesList",
          "documentation": "<p>A list of instance IDs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployment instances call to return the next set of deployment instances in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListDeploymentInstances</code> operation.</p>"
    },
    "ListDeploymentTargetsInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> A token identifier returned from the previous <code>ListDeploymentTargets</code> call. It can be used to return the next set of deployment targets in the list. </p>"
        },
        "targetFilters": {
          "shape": "TargetFilters",
          "documentation": "<p> A key used to filter the returned targets. The two valid values are:</p> <ul> <li> <p> <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>, <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or <code>Unknown</code>. </p> </li> <li> <p> <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter string can be <code>Blue</code> or <code>Green</code>. </p> </li> </ul>"
        }
      }
    },
    "ListDeploymentTargetsOutput": {
      "type": "structure",
      "members": {
        "targetIds": {
          "shape": "TargetIdList",
          "documentation": "<p> The unique IDs of deployment targets. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> If a large amount of information is returned, a token identifier is also returned. It can be used in a subsequent <code>ListDeploymentTargets</code> call to return the next set of deployment targets in the list. </p>"
        }
      }
    },
    "ListDeploymentsInput": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p> <note> <p>If <code>applicationName</code> is specified, then <code>deploymentGroupName</code> must be specified. If it is not specified, then <code>deploymentGroupName</code> must not be specified. </p> </note>"
        },
        "deploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The name of a deployment group for the specified application.</p> <note> <p>If <code>deploymentGroupName</code> is specified, then <code>applicationName</code> must be specified. If it is not specified, then <code>applicationName</code> must not be specified. </p> </note>"
        },
        "externalId": {
          "shape": "ExternalId",
          "documentation": "<p>The unique ID of an external resource for returning deployments linked to the external resource.</p>"
        },
        "includeOnlyStatuses": {
          "shape": "DeploymentStatusList",
          "documentation": "<p>A subset of deployments to list by status:</p> <ul> <li> <p> <code>Created</code>: Include created deployments in the resulting list.</p> </li> <li> <p> <code>Queued</code>: Include queued deployments in the resulting list.</p> </li> <li> <p> <code>In Progress</code>: Include in-progress deployments in the resulting list.</p> </li> <li> <p> <code>Succeeded</code>: Include successful deployments in the resulting list.</p> </li> <li> <p> <code>Failed</code>: Include failed deployments in the resulting list.</p> </li> <li> <p> <code>Stopped</code>: Include stopped deployments in the resulting list.</p> </li> </ul>"
        },
        "createTimeRange": {
          "shape": "TimeRange",
          "documentation": "<p>A time range (start and end) for returning a subset of the list of deployments.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous list deployments call. It can be used to return the next set of deployments in the list.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListDeployments</code> operation.</p>"
    },
    "ListDeploymentsOutput": {
      "type": "structure",
      "members": {
        "deployments": {
          "shape": "DeploymentsList",
          "documentation": "<p>A list of deployment IDs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list deployments call to return the next set of deployments in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListDeployments</code> operation.</p>"
    },
    "ListGitHubAccountTokenNamesInput": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code> call. It can be used to return the next set of names in the list. </p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListGitHubAccountTokenNames</code> operation.</p>"
    },
    "ListGitHubAccountTokenNamesOutput": {
      "type": "structure",
      "members": {
        "tokenNameList": {
          "shape": "GitHubAccountTokenNameList",
          "documentation": "<p>A list of names of connections to GitHub accounts.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent <code>ListGitHubAccountTokenNames</code> call to return the next set of names in the list. </p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>ListGitHubAccountTokenNames</code> operation.</p>"
    },
    "ListOnPremisesInstancesInput": {
      "type": "structure",
      "members": {
        "registrationStatus": {
          "shape": "RegistrationStatus",
          "documentation": "<p>The registration status of the on-premises instances:</p> <ul> <li> <p> <code>Deregistered</code>: Include deregistered on-premises instances in the resulting list.</p> </li> <li> <p> <code>Registered</code>: Include registered on-premises instances in the resulting list.</p> </li> </ul>"
        },
        "tagFilters": {
          "shape": "TagFilterList",
          "documentation": "<p>The on-premises instance tags that are used to restrict the on-premises instance names returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>ListOnPremisesInstances</code> operation.</p>"
    },
    "ListOnPremisesInstancesOutput": {
      "type": "structure",
      "members": {
        "instanceNames": {
          "shape": "InstanceNameList",
          "documentation": "<p>The list of matching on-premises instance names.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.</p>"
        }
      },
      "documentation": "<p>Represents the output of the list on-premises instances operation.</p>"
    },
    "ListStateFilterAction": {
      "type": "string",
      "enum": [
        "include",
        "exclude",
        "ignore"
      ]
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the tags associated with the resource that is identified by the <code>ResourceArn</code>. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can be used to return the next set of applications in the list.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p> A list of tags returned by <code>ListTagsForResource</code>. The tags are associated with the resource identified by the input <code>ResourceArn</code> parameter. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list application revisions call to return the next set of application revisions in the list.</p>"
        }
      }
    },
    "ListenerArn": {
      "type": "string"
    },
    "ListenerArnList": {
      "type": "list",
      "member": {
        "shape": "ListenerArn"
      }
    },
    "LoadBalancerInfo": {
      "type": "structure",
      "members": {
        "elbInfoList": {
          "shape": "ELBInfoList",
          "documentation": "<p>An array that contains information about the load balancer to use for load balancing in a deployment. In Elastic Load Balancing, load balancers are used with Classic Load Balancers.</p> <note> <p> Adding more than one load balancer to the array is not supported. </p> </note>"
        },
        "targetGroupInfoList": {
          "shape": "TargetGroupInfoList",
          "documentation": "<p>An array that contains information about the target group to use for load balancing in a deployment. In Elastic Load Balancing, target groups are used with Application Load Balancers.</p> <note> <p> Adding more than one target group to the array is not supported. </p> </note>"
        },
        "targetGroupPairInfoList": {
          "shape": "TargetGroupPairInfoList",
          "documentation": "<p> The target group pair information. This is an array of <code>TargeGroupPairInfo</code> objects with a maximum size of one. </p>"
        }
      },
      "documentation": "<p>Information about the Elastic Load Balancing load balancer or target group used in a deployment.</p>"
    },
    "LogTail": {
      "type": "string"
    },
    "Message": {
      "type": "string"
    },
    "MinimumHealthyHosts": {
      "type": "structure",
      "members": {
        "value": {
          "shape": "MinimumHealthyHostsValue",
          "documentation": "<p>The minimum healthy instance value.</p>"
        },
        "type": {
          "shape": "MinimumHealthyHostsType",
          "documentation": "<p>The minimum healthy instance type:</p> <ul> <li> <p> <code>HOST_COUNT</code>: The minimum number of healthy instances as an absolute value.</p> </li> <li> <p> <code>FLEET_PERCENT</code>: The minimum number of healthy instances as a percentage of the total number of instances in the deployment.</p> </li> </ul> <p>In an example of nine instances, if a HOST_COUNT of six is specified, deploy to up to three instances at a time. The deployment is successful if six or more instances are deployed to successfully. Otherwise, the deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up to five instances at a time. The deployment is successful if four or more instances are deployed to successfully. Otherwise, the deployment fails.</p> <note> <p>In a call to the <code>GetDeploymentConfig</code>, CodeDeployDefault.OneAtATime returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. (You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy attempts to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment is still successful.</p> </note> <p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html\">AWS CodeDeploy Instance Health</a> in the <i>AWS CodeDeploy User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Information about minimum healthy instance.</p>"
    },
    "MinimumHealthyHostsType": {
      "type": "string",
      "enum": [
        "HOST_COUNT",
        "FLEET_PERCENT"
      ]
    },
    "MinimumHealthyHostsValue": {
      "type": "integer"
    },
    "NextToken": {
      "type": "string"
    },
    "NullableBoolean": {
      "type": "boolean"
    },
    "OnPremisesTagSet": {
      "type": "structure",
      "members": {
        "onPremisesTagSetList": {
          "shape": "OnPremisesTagSetList",
          "documentation": "<p>A list that contains other lists of on-premises instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.</p>"
        }
      },
      "documentation": "<p>Information about groups of on-premises instance tags.</p>"
    },
    "OnPremisesTagSetList": {
      "type": "list",
      "member": {
        "shape": "TagFilterList"
      }
    },
    "Percentage": {
      "type": "integer"
    },
    "PutLifecycleEventHookExecutionStatusInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. Pass this ID to a Lambda function that validates a deployment lifecycle event. </p>"
        },
        "lifecycleEventHookExecutionId": {
          "shape": "LifecycleEventHookExecutionId",
          "documentation": "<p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is specified in the <code>hooks</code> section of the AppSpec file. </p>"
        },
        "status": {
          "shape": "LifecycleEventStatus",
          "documentation": "<p>The result of a Lambda function that validates a deployment lifecycle event (<code>Succeeded</code> or <code>Failed</code>).</p>"
        }
      }
    },
    "PutLifecycleEventHookExecutionStatusOutput": {
      "type": "structure",
      "members": {
        "lifecycleEventHookExecutionId": {
          "shape": "LifecycleEventHookExecutionId",
          "documentation": "<p>The execution ID of the lifecycle event hook. A hook is specified in the <code>hooks</code> section of the deployment's AppSpec file.</p>"
        }
      }
    },
    "RawString": {
      "type": "structure",
      "members": {
        "content": {
          "shape": "RawStringContent",
          "documentation": "<p>The YAML-formatted or JSON-formatted revision string. It includes information about which Lambda function to update and optional Lambda functions that validate deployment lifecycle events.</p>"
        },
        "sha256": {
          "shape": "RawStringSha256",
          "documentation": "<p>The SHA256 hash value of the revision content.</p>"
        }
      },
      "documentation": "<p>A revision for an AWS Lambda deployment that is a YAML-formatted or JSON-formatted string. For AWS Lambda deployments, the revision is the same as the AppSpec file.</p>",
      "deprecated": true,
      "deprecatedMessage": "RawString and String revision type are deprecated, use AppSpecContent type instead."
    },
    "RawStringContent": {
      "type": "string"
    },
    "RawStringSha256": {
      "type": "string"
    },
    "RegisterApplicationRevisionInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "revision"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS account.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A comment about the revision.</p>"
        },
        "revision": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the application revision to register, including type and location.</p>"
        }
      },
      "documentation": "<p>Represents the input of a RegisterApplicationRevision operation.</p>"
    },
    "RegisterOnPremisesInstanceInput": {
      "type": "structure",
      "required": [
        "instanceName"
      ],
      "members": {
        "instanceName": {
          "shape": "InstanceName",
          "documentation": "<p>The name of the on-premises instance to register.</p>"
        },
        "iamSessionArn": {
          "shape": "IamSessionArn",
          "documentation": "<p>The ARN of the IAM session to associate with the on-premises instance.</p>"
        },
        "iamUserArn": {
          "shape": "IamUserArn",
          "documentation": "<p>The ARN of the IAM user to associate with the on-premises instance.</p>"
        }
      },
      "documentation": "<p>Represents the input of the register on-premises instance operation.</p>"
    },
    "RegistrationStatus": {
      "type": "string",
      "enum": [
        "Registered",
        "Deregistered"
      ]
    },
    "RemoveTagsFromOnPremisesInstancesInput": {
      "type": "structure",
      "required": [
        "tags",
        "instanceNames"
      ],
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tag key-value pairs to remove from the on-premises instances.</p>"
        },
        "instanceNames": {
          "shape": "InstanceNameList",
          "documentation": "<p>The names of the on-premises instances from which to remove tags.</p>"
        }
      },
      "documentation": "<p>Represents the input of a <code>RemoveTagsFromOnPremisesInstances</code> operation.</p>"
    },
    "Repository": {
      "type": "string"
    },
    "RevisionInfo": {
      "type": "structure",
      "members": {
        "revisionLocation": {
          "shape": "RevisionLocation",
          "documentation": "<p>Information about the location and type of an application revision.</p>"
        },
        "genericRevisionInfo": {
          "shape": "GenericRevisionInfo",
          "documentation": "<p>Information about an application revision, including usage details and associated deployment groups.</p>"
        }
      },
      "documentation": "<p>Information about an application revision.</p>"
    },
    "RevisionInfoList": {
      "type": "list",
      "member": {
        "shape": "RevisionInfo"
      }
    },
    "RevisionLocation": {
      "type": "structure",
      "members": {
        "revisionType": {
          "shape": "RevisionLocationType",
          "documentation": "<p>The type of application revision:</p> <ul> <li> <p>S3: An application revision stored in Amazon S3.</p> </li> <li> <p>GitHub: An application revision stored in GitHub (EC2/On-premises deployments only).</p> </li> <li> <p>String: A YAML-formatted or JSON-formatted string (AWS Lambda deployments only).</p> </li> <li> <p>AppSpecContent: An <code>AppSpecContent</code> object that contains the contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML stored as a RawString.</p> </li> </ul>"
        },
        "s3Location": {
          "shape": "S3Location",
          "documentation": "<p>Information about the location of a revision stored in Amazon S3. </p>"
        },
        "gitHubLocation": {
          "shape": "GitHubLocation",
          "documentation": "<p>Information about the location of application artifacts stored in GitHub.</p>"
        },
        "string": {
          "shape": "RawString",
          "documentation": "<p>Information about the location of an AWS Lambda deployment revision stored as a RawString.</p>"
        },
        "appSpecContent": {
          "shape": "AppSpecContent",
          "documentation": "<p> The content of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML and stored as a RawString. </p>"
        }
      },
      "documentation": "<p>Information about the location of an application revision.</p>"
    },
    "RevisionLocationList": {
      "type": "list",
      "member": {
        "shape": "RevisionLocation"
      }
    },
    "RevisionLocationType": {
      "type": "string",
      "enum": [
        "S3",
        "GitHub",
        "String",
        "AppSpecContent"
      ]
    },
    "Role": {
      "type": "string"
    },
    "RollbackInfo": {
      "type": "structure",
      "members": {
        "rollbackDeploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p>The ID of the deployment rollback.</p>"
        },
        "rollbackTriggeringDeploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p>The deployment ID of the deployment that was underway and triggered a rollback deployment because it failed or was stopped.</p>"
        },
        "rollbackMessage": {
          "shape": "Description",
          "documentation": "<p>Information that describes the status of a deployment rollback (for example, whether the deployment can't be rolled back, is in progress, failed, or succeeded). </p>"
        }
      },
      "documentation": "<p>Information about a deployment rollback.</p>"
    },
    "S3Bucket": {
      "type": "string"
    },
    "S3Key": {
      "type": "string"
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The name of the Amazon S3 bucket where the application revision is stored.</p>"
        },
        "key": {
          "shape": "S3Key",
          "documentation": "<p>The name of the Amazon S3 object that represents the bundled artifacts for the application revision.</p>"
        },
        "bundleType": {
          "shape": "BundleType",
          "documentation": "<p>The file type of the application revision. Must be one of the following:</p> <ul> <li> <p> <code>tar</code>: A tar archive file.</p> </li> <li> <p> <code>tgz</code>: A compressed tar archive file.</p> </li> <li> <p> <code>zip</code>: A zip archive file.</p> </li> </ul>"
        },
        "version": {
          "shape": "VersionId",
          "documentation": "<p>A specific version of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the version is not specified, the system uses the most recent version by default.</p>"
        },
        "eTag": {
          "shape": "ETag",
          "documentation": "<p>The ETag of the Amazon S3 object that represents the bundled artifacts for the application revision.</p> <p>If the ETag is not specified as an input parameter, ETag validation of the object is skipped.</p>"
        }
      },
      "documentation": "<p>Information about the location of application artifacts stored in Amazon S3.</p>"
    },
    "ScriptName": {
      "type": "string"
    },
    "SkipWaitTimeForInstanceTerminationInput": {
      "type": "structure",
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a blue/green deployment for which you want to skip the instance termination wait time. </p>"
        }
      }
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "ascending",
        "descending"
      ]
    },
    "StopDeploymentInput": {
      "type": "structure",
      "required": [
        "deploymentId"
      ],
      "members": {
        "deploymentId": {
          "shape": "DeploymentId",
          "documentation": "<p> The unique ID of a deployment. </p>"
        },
        "autoRollbackEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Indicates, when a deployment is stopped, whether instances that have been updated should be rolled back to the previous version of the application revision. </p>"
        }
      },
      "documentation": "<p> Represents the input of a <code>StopDeployment</code> operation. </p>"
    },
    "StopDeploymentOutput": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "StopStatus",
          "documentation": "<p>The status of the stop deployment operation:</p> <ul> <li> <p>Pending: The stop operation is pending.</p> </li> <li> <p>Succeeded: The stop operation was successful.</p> </li> </ul>"
        },
        "statusMessage": {
          "shape": "Message",
          "documentation": "<p>An accompanying status message.</p>"
        }
      },
      "documentation": "<p> Represents the output of a <code>StopDeployment</code> operation. </p>"
    },
    "StopStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Succeeded"
      ]
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "Key",
          "documentation": "<p>The tag's key.</p>"
        },
        "Value": {
          "shape": "Value",
          "documentation": "<p>The tag's value.</p>"
        }
      },
      "documentation": "<p>Information about a tag.</p>"
    },
    "TagFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "Key",
          "documentation": "<p>The on-premises instance tag filter key.</p>"
        },
        "Value": {
          "shape": "Value",
          "documentation": "<p>The on-premises instance tag filter value.</p>"
        },
        "Type": {
          "shape": "TagFilterType",
          "documentation": "<p>The on-premises instance tag filter type:</p> <ul> <li> <p>KEY_ONLY: Key only.</p> </li> <li> <p>VALUE_ONLY: Value only.</p> </li> <li> <p>KEY_AND_VALUE: Key and value.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about an on-premises instance tag filter.</p>"
    },
    "TagFilterList": {
      "type": "list",
      "member": {
        "shape": "TagFilter"
      }
    },
    "TagFilterType": {
      "type": "string",
      "enum": [
        "KEY_ONLY",
        "VALUE_ONLY",
        "KEY_AND_VALUE"
      ]
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "Key"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p> A list of tags that <code>TagResource</code> associates with a resource. The resource is identified by the <code>ResourceArn</code> input parameter. </p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TargetArn": {
      "type": "string"
    },
    "TargetFilterName": {
      "type": "string",
      "enum": [
        "TargetStatus",
        "ServerInstanceLabel"
      ]
    },
    "TargetFilters": {
      "type": "map",
      "key": {
        "shape": "TargetFilterName"
      },
      "value": {
        "shape": "FilterValueList"
      }
    },
    "TargetGroupInfo": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "TargetGroupName",
          "documentation": "<p>For blue/green deployments, the name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment are registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment is complete. </p>"
        }
      },
      "documentation": "<p>Information about a target group in Elastic Load Balancing to use in a deployment. Instances are registered as targets in a target group, and traffic is routed to the target group.</p>"
    },
    "TargetGroupInfoList": {
      "type": "list",
      "member": {
        "shape": "TargetGroupInfo"
      }
    },
    "TargetGroupName": {
      "type": "string"
    },
    "TargetGroupPairInfo": {
      "type": "structure",
      "members": {
        "targetGroups": {
          "shape": "TargetGroupInfoList",
          "documentation": "<p> One pair of target groups. One is associated with the original task set. The second is associated with the task set that serves traffic after the deployment is complete. </p>"
        },
        "prodTrafficRoute": {
          "shape": "TrafficRoute",
          "documentation": "<p> The path used by a load balancer to route production traffic when an Amazon ECS deployment is complete. </p>"
        },
        "testTrafficRoute": {
          "shape": "TrafficRoute",
          "documentation": "<p> An optional path used by a load balancer to route test traffic after an Amazon ECS deployment. Validation can occur while test traffic is served during a deployment. </p>"
        }
      },
      "documentation": "<p> Information about two target groups and how traffic is routed during an Amazon ECS deployment. An optional test traffic route can be specified. </p>"
    },
    "TargetGroupPairInfoList": {
      "type": "list",
      "member": {
        "shape": "TargetGroupPairInfo"
      }
    },
    "TargetId": {
      "type": "string"
    },
    "TargetIdList": {
      "type": "list",
      "member": {
        "shape": "TargetId"
      }
    },
    "TargetInstances": {
      "type": "structure",
      "members": {
        "tagFilters": {
          "shape": "EC2TagFilterList",
          "documentation": "<p>The tag filter key, type, and value used to identify Amazon EC2 instances in a replacement environment for a blue/green deployment. Cannot be used in the same call as <code>ec2TagSet</code>.</p>"
        },
        "autoScalingGroups": {
          "shape": "AutoScalingGroupNameList",
          "documentation": "<p>The names of one or more Auto Scaling groups to identify a replacement environment for a blue/green deployment.</p>"
        },
        "ec2TagSet": {
          "shape": "EC2TagSet",
          "documentation": "<p>Information about the groups of EC2 instance tags that an instance must be identified by in order for it to be included in the replacement environment for a blue/green deployment. Cannot be used in the same call as <code>tagFilters</code>.</p>"
        }
      },
      "documentation": "<p>Information about the instances to be used in the replacement environment in a blue/green deployment.</p>"
    },
    "TargetLabel": {
      "type": "string",
      "enum": [
        "Blue",
        "Green"
      ]
    },
    "TargetStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Succeeded",
        "Failed",
        "Skipped",
        "Unknown",
        "Ready"
      ]
    },
    "Time": {
      "type": "timestamp"
    },
    "TimeBasedCanary": {
      "type": "structure",
      "members": {
        "canaryPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of traffic to shift in the first increment of a <code>TimeBasedCanary</code> deployment.</p>"
        },
        "canaryInterval": {
          "shape": "WaitTimeInMins",
          "documentation": "<p>The number of minutes between the first and second traffic shifts of a <code>TimeBasedCanary</code> deployment.</p>"
        }
      },
      "documentation": "<p>A configuration that shifts traffic from one version of a Lambda function or ECS task set to another in two increments. The original and target Lambda function versions or ECS task sets are specified in the deployment's AppSpec file.</p>"
    },
    "TimeBasedLinear": {
      "type": "structure",
      "members": {
        "linearPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of traffic that is shifted at the start of each increment of a <code>TimeBasedLinear</code> deployment.</p>"
        },
        "linearInterval": {
          "shape": "WaitTimeInMins",
          "documentation": "<p>The number of minutes between each incremental traffic shift of a <code>TimeBasedLinear</code> deployment.</p>"
        }
      },
      "documentation": "<p>A configuration that shifts traffic from one version of a Lambda function or ECS task set to another in equal increments, with an equal number of minutes between each increment. The original and target Lambda function versions or ECS task sets are specified in the deployment's AppSpec file.</p>"
    },
    "TimeRange": {
      "type": "structure",
      "members": {
        "start": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the time range.</p> <note> <p>Specify null to leave the start time open-ended.</p> </note>"
        },
        "end": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the time range.</p> <note> <p>Specify null to leave the end time open-ended.</p> </note>"
        }
      },
      "documentation": "<p>Information about a time range.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TrafficRoute": {
      "type": "structure",
      "members": {
        "listenerArns": {
          "shape": "ListenerArnList",
          "documentation": "<p> The Amazon Resource Name (ARN) of one listener. The listener identifies the route between a target group and a load balancer. This is an array of strings with a maximum size of one. </p>"
        }
      },
      "documentation": "<p> Information about a listener. The listener contains the path used to route traffic that is received from the load balancer to a target group. </p>"
    },
    "TrafficRoutingConfig": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "TrafficRoutingType",
          "documentation": "<p>The type of traffic shifting (<code>TimeBasedCanary</code> or <code>TimeBasedLinear</code>) used by a deployment configuration.</p>"
        },
        "timeBasedCanary": {
          "shape": "TimeBasedCanary",
          "documentation": "<p>A configuration that shifts traffic from one version of a Lambda function or ECS task set to another in two increments. The original and target Lambda function versions or ECS task sets are specified in the deployment's AppSpec file.</p>"
        },
        "timeBasedLinear": {
          "shape": "TimeBasedLinear",
          "documentation": "<p>A configuration that shifts traffic from one version of a Lambda function or ECS task set to another in equal increments, with an equal number of minutes between each increment. The original and target Lambda function versions or ECS task sets are specified in the deployment's AppSpec file.</p>"
        }
      },
      "documentation": "<p>The configuration that specifies how traffic is shifted from one version of a Lambda function to another version during an AWS Lambda deployment, or from one Amazon ECS task set to another during an Amazon ECS deployment.</p>"
    },
    "TrafficRoutingType": {
      "type": "string",
      "enum": [
        "TimeBasedCanary",
        "TimeBasedLinear",
        "AllAtOnce"
      ]
    },
    "TrafficWeight": {
      "type": "double"
    },
    "TriggerConfig": {
      "type": "structure",
      "members": {
        "triggerName": {
          "shape": "TriggerName",
          "documentation": "<p>The name of the notification trigger.</p>"
        },
        "triggerTargetArn": {
          "shape": "TriggerTargetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic through which notifications about deployment or instance events are sent.</p>"
        },
        "triggerEvents": {
          "shape": "TriggerEventTypeList",
          "documentation": "<p>The event type or types for which notifications are triggered.</p>"
        }
      },
      "documentation": "<p>Information about notification triggers for the deployment group.</p>"
    },
    "TriggerConfigList": {
      "type": "list",
      "member": {
        "shape": "TriggerConfig"
      }
    },
    "TriggerEventType": {
      "type": "string",
      "enum": [
        "DeploymentStart",
        "DeploymentSuccess",
        "DeploymentFailure",
        "DeploymentStop",
        "DeploymentRollback",
        "DeploymentReady",
        "InstanceStart",
        "InstanceSuccess",
        "InstanceFailure",
        "InstanceReady"
      ]
    },
    "TriggerEventTypeList": {
      "type": "list",
      "member": {
        "shape": "TriggerEventType"
      }
    },
    "TriggerName": {
      "type": "string"
    },
    "TriggerTargetArn": {
      "type": "string"
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the tags with the keys in the <code>TagKeys</code> input parameter. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified by the keys are disassociated from the resource specified by the <code>ResourceArn</code> input parameter. </p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "UpdateApplicationInput": {
      "type": "structure",
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The current name of the application you want to change.</p>"
        },
        "newApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The new name to give the application.</p>"
        }
      },
      "documentation": "<p>Represents the input of an <code>UpdateApplication</code> operation.</p>"
    },
    "UpdateDeploymentGroupInput": {
      "type": "structure",
      "required": [
        "applicationName",
        "currentDeploymentGroupName"
      ],
      "members": {
        "applicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name that corresponds to the deployment group to update.</p>"
        },
        "currentDeploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The current name of the deployment group.</p>"
        },
        "newDeploymentGroupName": {
          "shape": "DeploymentGroupName",
          "documentation": "<p>The new name of the deployment group, if you want to change it.</p>"
        },
        "deploymentConfigName": {
          "shape": "DeploymentConfigName",
          "documentation": "<p>The replacement deployment configuration name to use, if you want to change it.</p>"
        },
        "ec2TagFilters": {
          "shape": "EC2TagFilterList",
          "documentation": "<p>The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>"
        },
        "onPremisesInstanceTagFilters": {
          "shape": "TagFilterList",
          "documentation": "<p>The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.</p>"
        },
        "autoScalingGroups": {
          "shape": "AutoScalingGroupNameList",
          "documentation": "<p>The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.</p>"
        },
        "serviceRoleArn": {
          "shape": "Role",
          "documentation": "<p>A replacement ARN for the service role, if you want to change it.</p>"
        },
        "triggerConfigurations": {
          "shape": "TriggerConfigList",
          "documentation": "<p>Information about triggers to change when the deployment group is updated. For examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html\">Edit a Trigger in a CodeDeploy Deployment Group</a> in the <i>AWS CodeDeploy User Guide</i>.</p>"
        },
        "alarmConfiguration": {
          "shape": "AlarmConfiguration",
          "documentation": "<p>Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.</p>"
        },
        "autoRollbackConfiguration": {
          "shape": "AutoRollbackConfiguration",
          "documentation": "<p>Information for an automatic rollback configuration that is added or changed when a deployment group is updated.</p>"
        },
        "deploymentStyle": {
          "shape": "DeploymentStyle",
          "documentation": "<p>Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>"
        },
        "blueGreenDeploymentConfiguration": {
          "shape": "BlueGreenDeploymentConfiguration",
          "documentation": "<p>Information about blue/green deployment options for a deployment group.</p>"
        },
        "loadBalancerInfo": {
          "shape": "LoadBalancerInfo",
          "documentation": "<p>Information about the load balancer used in a deployment.</p>"
        },
        "ec2TagSet": {
          "shape": "EC2TagSet",
          "documentation": "<p>Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.</p>"
        },
        "ecsServices": {
          "shape": "ECSServiceList",
          "documentation": "<p> The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format <code>&lt;clustername&gt;:&lt;servicename&gt;</code>. </p>"
        },
        "onPremisesTagSet": {
          "shape": "OnPremisesTagSet",
          "documentation": "<p>Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.</p>"
        }
      },
      "documentation": "<p>Represents the input of an <code>UpdateDeploymentGroup</code> operation.</p>"
    },
    "UpdateDeploymentGroupOutput": {
      "type": "structure",
      "members": {
        "hooksNotCleanedUp": {
          "shape": "AutoScalingGroupList",
          "documentation": "<p>If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.</p>"
        }
      },
      "documentation": "<p>Represents the output of an <code>UpdateDeploymentGroup</code> operation.</p>"
    },
    "Value": {
      "type": "string"
    },
    "Version": {
      "type": "string"
    },
    "VersionId": {
      "type": "string"
    },
    "WaitTimeInMins": {
      "type": "integer"
    }
  },
  "documentation": "<fullname>AWS CodeDeploy</fullname> <p>AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS Lambda functions, or applications in an Amazon ECS service.</p> <p>You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, updated applications in an Amazon ECS service, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy.</p> <p>AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.</p> <p> <b>AWS CodeDeploy Components</b> </p> <p>Use the information in this guide to help you work with the following AWS CodeDeploy components:</p> <ul> <li> <p> <b>Application</b>: A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.</p> </li> <li> <p> <b>Deployment group</b>: A set of individual instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS service and network details. A Lambda deployment group specifies how to route traffic to a new version of a Lambda function. An Amazon ECS deployment group specifies the service created in Amazon ECS to deploy, a load balancer, and a listener to reroute production traffic to an updated containerized application. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups can specify optional trigger, alarm, and rollback settings.</p> </li> <li> <p> <b>Deployment configuration</b>: A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.</p> </li> <li> <p> <b>Deployment</b>: The process and the components used when updating a Lambda function, a containerized application in an Amazon ECS service, or of installing content on one or more instances. </p> </li> <li> <p> <b>Application revisions</b>: For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to be updated and one or more functions to validate deployment lifecycle events. For an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS task definition, container, and port where production traffic is rerouted. For an EC2/On-premises deployment, this is an archive file that contains source content—source code, webpages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.</p> </li> </ul> <p>This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, to get details about a Lambda function deployment, and to get details about Amazon ECS service deployments.</p> <p> <b>AWS CodeDeploy Information Resources</b> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide\">AWS CodeDeploy User Guide</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codedeploy/latest/APIReference/\">AWS CodeDeploy API Reference Guide</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html\">AWS CLI Reference for AWS CodeDeploy</a> </p> </li> <li> <p> <a href=\"https://forums.aws.amazon.com/forum.jspa?forumID=179\">AWS CodeDeploy Developer Forum</a> </p> </li> </ul>"
}
]===]))