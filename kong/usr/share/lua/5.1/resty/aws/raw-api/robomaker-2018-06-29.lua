local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-06-29",
    "endpointPrefix": "robomaker",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "RoboMaker",
    "serviceFullName": "AWS RoboMaker",
    "serviceId": "RoboMaker",
    "signatureVersion": "v4",
    "signingName": "robomaker",
    "uid": "robomaker-2018-06-29"
  },
  "operations": {
    "BatchDeleteWorlds": {
      "name": "BatchDeleteWorlds",
      "http": {
        "method": "POST",
        "requestUri": "/batchDeleteWorlds"
      },
      "input": {
        "shape": "BatchDeleteWorldsRequest"
      },
      "output": {
        "shape": "BatchDeleteWorldsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes one or more worlds in a batch operation.</p>"
    },
    "BatchDescribeSimulationJob": {
      "name": "BatchDescribeSimulationJob",
      "http": {
        "method": "POST",
        "requestUri": "/batchDescribeSimulationJob"
      },
      "input": {
        "shape": "BatchDescribeSimulationJobRequest"
      },
      "output": {
        "shape": "BatchDescribeSimulationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes one or more simulation jobs.</p>"
    },
    "CancelDeploymentJob": {
      "name": "CancelDeploymentJob",
      "http": {
        "method": "POST",
        "requestUri": "/cancelDeploymentJob"
      },
      "input": {
        "shape": "CancelDeploymentJobRequest"
      },
      "output": {
        "shape": "CancelDeploymentJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Cancels the specified deployment job.</p>"
    },
    "CancelSimulationJob": {
      "name": "CancelSimulationJob",
      "http": {
        "method": "POST",
        "requestUri": "/cancelSimulationJob"
      },
      "input": {
        "shape": "CancelSimulationJobRequest"
      },
      "output": {
        "shape": "CancelSimulationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Cancels the specified simulation job.</p>"
    },
    "CancelSimulationJobBatch": {
      "name": "CancelSimulationJobBatch",
      "http": {
        "method": "POST",
        "requestUri": "/cancelSimulationJobBatch"
      },
      "input": {
        "shape": "CancelSimulationJobBatchRequest"
      },
      "output": {
        "shape": "CancelSimulationJobBatchResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Cancels a simulation job batch. When you cancel a simulation job batch, you are also cancelling all of the active simulation jobs created as part of the batch. </p>"
    },
    "CancelWorldExportJob": {
      "name": "CancelWorldExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/cancelWorldExportJob"
      },
      "input": {
        "shape": "CancelWorldExportJobRequest"
      },
      "output": {
        "shape": "CancelWorldExportJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Cancels the specified export job.</p>"
    },
    "CancelWorldGenerationJob": {
      "name": "CancelWorldGenerationJob",
      "http": {
        "method": "POST",
        "requestUri": "/cancelWorldGenerationJob"
      },
      "input": {
        "shape": "CancelWorldGenerationJobRequest"
      },
      "output": {
        "shape": "CancelWorldGenerationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Cancels the specified world generator job.</p>"
    },
    "CreateDeploymentJob": {
      "name": "CreateDeploymentJob",
      "http": {
        "method": "POST",
        "requestUri": "/createDeploymentJob"
      },
      "input": {
        "shape": "CreateDeploymentJobRequest"
      },
      "output": {
        "shape": "CreateDeploymentJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentDeploymentException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Deploys a specific version of a robot application to robots in a fleet.</p> <p>The robot application must have a numbered <code>applicationVersion</code> for consistency reasons. To create a new version, use <code>CreateRobotApplicationVersion</code> or see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html\">Creating a Robot Application Version</a>. </p> <note> <p>After 90 days, deployment jobs expire and will be deleted. They will no longer be accessible. </p> </note>"
    },
    "CreateFleet": {
      "name": "CreateFleet",
      "http": {
        "method": "POST",
        "requestUri": "/createFleet"
      },
      "input": {
        "shape": "CreateFleetRequest"
      },
      "output": {
        "shape": "CreateFleetResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a fleet, a logical group of robots running the same robot application.</p>"
    },
    "CreateRobot": {
      "name": "CreateRobot",
      "http": {
        "method": "POST",
        "requestUri": "/createRobot"
      },
      "input": {
        "shape": "CreateRobotRequest"
      },
      "output": {
        "shape": "CreateRobotResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        }
      ],
      "documentation": "<p>Creates a robot.</p>"
    },
    "CreateRobotApplication": {
      "name": "CreateRobotApplication",
      "http": {
        "method": "POST",
        "requestUri": "/createRobotApplication"
      },
      "input": {
        "shape": "CreateRobotApplicationRequest"
      },
      "output": {
        "shape": "CreateRobotApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Creates a robot application. </p>"
    },
    "CreateRobotApplicationVersion": {
      "name": "CreateRobotApplicationVersion",
      "http": {
        "method": "POST",
        "requestUri": "/createRobotApplicationVersion"
      },
      "input": {
        "shape": "CreateRobotApplicationVersionRequest"
      },
      "output": {
        "shape": "CreateRobotApplicationVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a version of a robot application.</p>"
    },
    "CreateSimulationApplication": {
      "name": "CreateSimulationApplication",
      "http": {
        "method": "POST",
        "requestUri": "/createSimulationApplication"
      },
      "input": {
        "shape": "CreateSimulationApplicationRequest"
      },
      "output": {
        "shape": "CreateSimulationApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Creates a simulation application.</p>"
    },
    "CreateSimulationApplicationVersion": {
      "name": "CreateSimulationApplicationVersion",
      "http": {
        "method": "POST",
        "requestUri": "/createSimulationApplicationVersion"
      },
      "input": {
        "shape": "CreateSimulationApplicationVersionRequest"
      },
      "output": {
        "shape": "CreateSimulationApplicationVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a simulation application with a specific revision id.</p>"
    },
    "CreateSimulationJob": {
      "name": "CreateSimulationJob",
      "http": {
        "method": "POST",
        "requestUri": "/createSimulationJob"
      },
      "input": {
        "shape": "CreateSimulationJobRequest"
      },
      "output": {
        "shape": "CreateSimulationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a simulation job.</p> <note> <p>After 90 days, simulation jobs expire and will be deleted. They will no longer be accessible. </p> </note>"
    },
    "CreateWorldExportJob": {
      "name": "CreateWorldExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/createWorldExportJob"
      },
      "input": {
        "shape": "CreateWorldExportJobRequest"
      },
      "output": {
        "shape": "CreateWorldExportJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a world export job.</p>"
    },
    "CreateWorldGenerationJob": {
      "name": "CreateWorldGenerationJob",
      "http": {
        "method": "POST",
        "requestUri": "/createWorldGenerationJob"
      },
      "input": {
        "shape": "CreateWorldGenerationJobRequest"
      },
      "output": {
        "shape": "CreateWorldGenerationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates worlds using the specified template.</p>"
    },
    "CreateWorldTemplate": {
      "name": "CreateWorldTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/createWorldTemplate"
      },
      "input": {
        "shape": "CreateWorldTemplateRequest"
      },
      "output": {
        "shape": "CreateWorldTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a world template.</p>"
    },
    "DeleteFleet": {
      "name": "DeleteFleet",
      "http": {
        "method": "POST",
        "requestUri": "/deleteFleet"
      },
      "input": {
        "shape": "DeleteFleetRequest"
      },
      "output": {
        "shape": "DeleteFleetResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a fleet.</p>"
    },
    "DeleteRobot": {
      "name": "DeleteRobot",
      "http": {
        "method": "POST",
        "requestUri": "/deleteRobot"
      },
      "input": {
        "shape": "DeleteRobotRequest"
      },
      "output": {
        "shape": "DeleteRobotResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a robot.</p>"
    },
    "DeleteRobotApplication": {
      "name": "DeleteRobotApplication",
      "http": {
        "method": "POST",
        "requestUri": "/deleteRobotApplication"
      },
      "input": {
        "shape": "DeleteRobotApplicationRequest"
      },
      "output": {
        "shape": "DeleteRobotApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes a robot application.</p>"
    },
    "DeleteSimulationApplication": {
      "name": "DeleteSimulationApplication",
      "http": {
        "method": "POST",
        "requestUri": "/deleteSimulationApplication"
      },
      "input": {
        "shape": "DeleteSimulationApplicationRequest"
      },
      "output": {
        "shape": "DeleteSimulationApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes a simulation application.</p>"
    },
    "DeleteWorldTemplate": {
      "name": "DeleteWorldTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/deleteWorldTemplate"
      },
      "input": {
        "shape": "DeleteWorldTemplateRequest"
      },
      "output": {
        "shape": "DeleteWorldTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes a world template.</p>"
    },
    "DeregisterRobot": {
      "name": "DeregisterRobot",
      "http": {
        "method": "POST",
        "requestUri": "/deregisterRobot"
      },
      "input": {
        "shape": "DeregisterRobotRequest"
      },
      "output": {
        "shape": "DeregisterRobotResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters a robot.</p>"
    },
    "DescribeDeploymentJob": {
      "name": "DescribeDeploymentJob",
      "http": {
        "method": "POST",
        "requestUri": "/describeDeploymentJob"
      },
      "input": {
        "shape": "DescribeDeploymentJobRequest"
      },
      "output": {
        "shape": "DescribeDeploymentJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a deployment job.</p>"
    },
    "DescribeFleet": {
      "name": "DescribeFleet",
      "http": {
        "method": "POST",
        "requestUri": "/describeFleet"
      },
      "input": {
        "shape": "DescribeFleetRequest"
      },
      "output": {
        "shape": "DescribeFleetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a fleet.</p>"
    },
    "DescribeRobot": {
      "name": "DescribeRobot",
      "http": {
        "method": "POST",
        "requestUri": "/describeRobot"
      },
      "input": {
        "shape": "DescribeRobotRequest"
      },
      "output": {
        "shape": "DescribeRobotResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a robot.</p>"
    },
    "DescribeRobotApplication": {
      "name": "DescribeRobotApplication",
      "http": {
        "method": "POST",
        "requestUri": "/describeRobotApplication"
      },
      "input": {
        "shape": "DescribeRobotApplicationRequest"
      },
      "output": {
        "shape": "DescribeRobotApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a robot application.</p>"
    },
    "DescribeSimulationApplication": {
      "name": "DescribeSimulationApplication",
      "http": {
        "method": "POST",
        "requestUri": "/describeSimulationApplication"
      },
      "input": {
        "shape": "DescribeSimulationApplicationRequest"
      },
      "output": {
        "shape": "DescribeSimulationApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a simulation application.</p>"
    },
    "DescribeSimulationJob": {
      "name": "DescribeSimulationJob",
      "http": {
        "method": "POST",
        "requestUri": "/describeSimulationJob"
      },
      "input": {
        "shape": "DescribeSimulationJobRequest"
      },
      "output": {
        "shape": "DescribeSimulationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a simulation job.</p>"
    },
    "DescribeSimulationJobBatch": {
      "name": "DescribeSimulationJobBatch",
      "http": {
        "method": "POST",
        "requestUri": "/describeSimulationJobBatch"
      },
      "input": {
        "shape": "DescribeSimulationJobBatchRequest"
      },
      "output": {
        "shape": "DescribeSimulationJobBatchResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a simulation job batch.</p>"
    },
    "DescribeWorld": {
      "name": "DescribeWorld",
      "http": {
        "method": "POST",
        "requestUri": "/describeWorld"
      },
      "input": {
        "shape": "DescribeWorldRequest"
      },
      "output": {
        "shape": "DescribeWorldResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a world.</p>"
    },
    "DescribeWorldExportJob": {
      "name": "DescribeWorldExportJob",
      "http": {
        "method": "POST",
        "requestUri": "/describeWorldExportJob"
      },
      "input": {
        "shape": "DescribeWorldExportJobRequest"
      },
      "output": {
        "shape": "DescribeWorldExportJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a world export job.</p>"
    },
    "DescribeWorldGenerationJob": {
      "name": "DescribeWorldGenerationJob",
      "http": {
        "method": "POST",
        "requestUri": "/describeWorldGenerationJob"
      },
      "input": {
        "shape": "DescribeWorldGenerationJobRequest"
      },
      "output": {
        "shape": "DescribeWorldGenerationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes a world generation job.</p>"
    },
    "DescribeWorldTemplate": {
      "name": "DescribeWorldTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/describeWorldTemplate"
      },
      "input": {
        "shape": "DescribeWorldTemplateRequest"
      },
      "output": {
        "shape": "DescribeWorldTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes a world template.</p>"
    },
    "GetWorldTemplateBody": {
      "name": "GetWorldTemplateBody",
      "http": {
        "method": "POST",
        "requestUri": "/getWorldTemplateBody"
      },
      "input": {
        "shape": "GetWorldTemplateBodyRequest"
      },
      "output": {
        "shape": "GetWorldTemplateBodyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the world template body.</p>"
    },
    "ListDeploymentJobs": {
      "name": "ListDeploymentJobs",
      "http": {
        "method": "POST",
        "requestUri": "/listDeploymentJobs"
      },
      "input": {
        "shape": "ListDeploymentJobsRequest"
      },
      "output": {
        "shape": "ListDeploymentJobsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs. </p>"
    },
    "ListFleets": {
      "name": "ListFleets",
      "http": {
        "method": "POST",
        "requestUri": "/listFleets"
      },
      "input": {
        "shape": "ListFleetsRequest"
      },
      "output": {
        "shape": "ListFleetsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns a list of fleets. You can optionally provide filters to retrieve specific fleets. </p>"
    },
    "ListRobotApplications": {
      "name": "ListRobotApplications",
      "http": {
        "method": "POST",
        "requestUri": "/listRobotApplications"
      },
      "input": {
        "shape": "ListRobotApplicationsRequest"
      },
      "output": {
        "shape": "ListRobotApplicationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.</p>"
    },
    "ListRobots": {
      "name": "ListRobots",
      "http": {
        "method": "POST",
        "requestUri": "/listRobots"
      },
      "input": {
        "shape": "ListRobotsRequest"
      },
      "output": {
        "shape": "ListRobotsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns a list of robots. You can optionally provide filters to retrieve specific robots.</p>"
    },
    "ListSimulationApplications": {
      "name": "ListSimulationApplications",
      "http": {
        "method": "POST",
        "requestUri": "/listSimulationApplications"
      },
      "input": {
        "shape": "ListSimulationApplicationsRequest"
      },
      "output": {
        "shape": "ListSimulationApplicationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications. </p>"
    },
    "ListSimulationJobBatches": {
      "name": "ListSimulationJobBatches",
      "http": {
        "method": "POST",
        "requestUri": "/listSimulationJobBatches"
      },
      "input": {
        "shape": "ListSimulationJobBatchesRequest"
      },
      "output": {
        "shape": "ListSimulationJobBatchesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns a list simulation job batches. You can optionally provide filters to retrieve specific simulation batch jobs. </p>"
    },
    "ListSimulationJobs": {
      "name": "ListSimulationJobs",
      "http": {
        "method": "POST",
        "requestUri": "/listSimulationJobs"
      },
      "input": {
        "shape": "ListSimulationJobsRequest"
      },
      "output": {
        "shape": "ListSimulationJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists all tags on a AWS RoboMaker resource.</p>"
    },
    "ListWorldExportJobs": {
      "name": "ListWorldExportJobs",
      "http": {
        "method": "POST",
        "requestUri": "/listWorldExportJobs"
      },
      "input": {
        "shape": "ListWorldExportJobsRequest"
      },
      "output": {
        "shape": "ListWorldExportJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists world export jobs.</p>"
    },
    "ListWorldGenerationJobs": {
      "name": "ListWorldGenerationJobs",
      "http": {
        "method": "POST",
        "requestUri": "/listWorldGenerationJobs"
      },
      "input": {
        "shape": "ListWorldGenerationJobsRequest"
      },
      "output": {
        "shape": "ListWorldGenerationJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists world generator jobs.</p>"
    },
    "ListWorldTemplates": {
      "name": "ListWorldTemplates",
      "http": {
        "method": "POST",
        "requestUri": "/listWorldTemplates"
      },
      "input": {
        "shape": "ListWorldTemplatesRequest"
      },
      "output": {
        "shape": "ListWorldTemplatesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists world templates.</p>"
    },
    "ListWorlds": {
      "name": "ListWorlds",
      "http": {
        "method": "POST",
        "requestUri": "/listWorlds"
      },
      "input": {
        "shape": "ListWorldsRequest"
      },
      "output": {
        "shape": "ListWorldsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists worlds.</p>"
    },
    "RegisterRobot": {
      "name": "RegisterRobot",
      "http": {
        "method": "POST",
        "requestUri": "/registerRobot"
      },
      "input": {
        "shape": "RegisterRobotRequest"
      },
      "output": {
        "shape": "RegisterRobotResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers a robot with a fleet.</p>"
    },
    "RestartSimulationJob": {
      "name": "RestartSimulationJob",
      "http": {
        "method": "POST",
        "requestUri": "/restartSimulationJob"
      },
      "input": {
        "shape": "RestartSimulationJobRequest"
      },
      "output": {
        "shape": "RestartSimulationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Restarts a running simulation job.</p>"
    },
    "StartSimulationJobBatch": {
      "name": "StartSimulationJobBatch",
      "http": {
        "method": "POST",
        "requestUri": "/startSimulationJobBatch"
      },
      "input": {
        "shape": "StartSimulationJobBatchRequest"
      },
      "output": {
        "shape": "StartSimulationJobBatchResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts a new simulation job batch. The batch is defined using one or more <code>SimulationJobRequest</code> objects. </p>"
    },
    "SyncDeploymentJob": {
      "name": "SyncDeploymentJob",
      "http": {
        "method": "POST",
        "requestUri": "/syncDeploymentJob"
      },
      "input": {
        "shape": "SyncDeploymentJobRequest"
      },
      "output": {
        "shape": "SyncDeploymentJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentDeploymentException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Adds or edits tags for a AWS RoboMaker resource.</p> <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty strings. </p> <p>For information about the rules that apply to tag keys and tag values, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html\">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>. </p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the specified AWS RoboMaker resource.</p> <p>To remove a tag, specify the tag key. To change the tag value of an existing tag key, use <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html\"> <code>TagResource</code> </a>. </p>"
    },
    "UpdateRobotApplication": {
      "name": "UpdateRobotApplication",
      "http": {
        "method": "POST",
        "requestUri": "/updateRobotApplication"
      },
      "input": {
        "shape": "UpdateRobotApplicationRequest"
      },
      "output": {
        "shape": "UpdateRobotApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates a robot application.</p>"
    },
    "UpdateSimulationApplication": {
      "name": "UpdateSimulationApplication",
      "http": {
        "method": "POST",
        "requestUri": "/updateSimulationApplication"
      },
      "input": {
        "shape": "UpdateSimulationApplicationRequest"
      },
      "output": {
        "shape": "UpdateSimulationApplicationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates a simulation application.</p>"
    },
    "UpdateWorldTemplate": {
      "name": "UpdateWorldTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/updateWorldTemplate"
      },
      "input": {
        "shape": "UpdateWorldTemplateRequest"
      },
      "output": {
        "shape": "UpdateWorldTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates a world template.</p>"
    }
  },
  "shapes": {
    "Architecture": {
      "type": "string",
      "enum": [
        "X86_64",
        "ARM64",
        "ARMHF"
      ]
    },
    "Arn": {
      "type": "string",
      "max": 1224,
      "min": 1,
      "pattern": "arn:.*"
    },
    "Arns": {
      "type": "list",
      "member": {
        "shape": "Arn"
      },
      "max": 100,
      "min": 1
    },
    "BatchDeleteWorldsRequest": {
      "type": "structure",
      "required": [
        "worlds"
      ],
      "members": {
        "worlds": {
          "shape": "Arns",
          "documentation": "<p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>"
        }
      }
    },
    "BatchDeleteWorldsResponse": {
      "type": "structure",
      "members": {
        "unprocessedWorlds": {
          "shape": "Arns",
          "documentation": "<p>A list of unprocessed worlds associated with the call. These worlds were not deleted.</p>"
        }
      }
    },
    "BatchDescribeSimulationJobRequest": {
      "type": "structure",
      "required": [
        "jobs"
      ],
      "members": {
        "jobs": {
          "shape": "Arns",
          "documentation": "<p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>"
        }
      }
    },
    "BatchDescribeSimulationJobResponse": {
      "type": "structure",
      "members": {
        "jobs": {
          "shape": "SimulationJobs",
          "documentation": "<p>A list of simulation jobs.</p>"
        },
        "unprocessedJobs": {
          "shape": "Arns",
          "documentation": "<p>A list of unprocessed simulation job Amazon Resource Names (ARNs).</p>"
        }
      }
    },
    "BatchPolicy": {
      "type": "structure",
      "members": {
        "timeoutInSeconds": {
          "shape": "BatchTimeoutInSeconds",
          "documentation": "<p>The amount of time, in seconds, to wait for the batch to complete. </p> <p>If a batch times out, and there are pending requests that were failing due to an internal failure (like <code>InternalServiceError</code>), they will be moved to the failed list and the batch status will be <code>Failed</code>. If the pending requests were failing for any other reason, the failed pending requests will be moved to the failed list and the batch status will be <code>TimedOut</code>. </p>"
        },
        "maxConcurrency": {
          "shape": "MaxConcurrency",
          "documentation": "<p>The number of active simulation jobs create as part of the batch that can be in an active state at the same time. </p> <p>Active states include: <code>Pending</code>,<code>Preparing</code>, <code>Running</code>, <code>Restarting</code>, <code>RunningFailed</code> and <code>Terminating</code>. All other states are terminal states. </p>"
        }
      },
      "documentation": "<p>Information about the batch policy.</p>"
    },
    "BatchTimeoutInSeconds": {
      "type": "long"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxedBoolean": {
      "type": "boolean"
    },
    "CancelDeploymentJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The deployment job ARN to cancel.</p>"
        }
      }
    },
    "CancelDeploymentJobResponse": {
      "type": "structure",
      "members": {}
    },
    "CancelSimulationJobBatchRequest": {
      "type": "structure",
      "required": [
        "batch"
      ],
      "members": {
        "batch": {
          "shape": "Arn",
          "documentation": "<p>The id of the batch to cancel.</p>"
        }
      }
    },
    "CancelSimulationJobBatchResponse": {
      "type": "structure",
      "members": {}
    },
    "CancelSimulationJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The simulation job ARN to cancel.</p>"
        }
      }
    },
    "CancelSimulationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "CancelWorldExportJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world export job to cancel.</p>"
        }
      }
    },
    "CancelWorldExportJobResponse": {
      "type": "structure",
      "members": {}
    },
    "CancelWorldGenerationJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>"
        }
      }
    },
    "CancelWorldGenerationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "ClientRequestToken": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z0-9_\\-=]*"
    },
    "Command": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.\\-]*"
    },
    "Compute": {
      "type": "structure",
      "members": {
        "simulationUnitLimit": {
          "shape": "SimulationUnit",
          "documentation": "<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are only billed for the SU utilization you consume up to the maximim value provided. The default is 15. </p>"
        }
      },
      "documentation": "<p>Compute information for the simulation job.</p>"
    },
    "ComputeResponse": {
      "type": "structure",
      "members": {
        "simulationUnitLimit": {
          "shape": "SimulationUnit",
          "documentation": "<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are only billed for the SU utilization you consume up to the maximim value provided. The default is 15. </p>"
        }
      },
      "documentation": "<p>Compute information for the simulation job</p>"
    },
    "CreateDeploymentJobRequest": {
      "type": "structure",
      "required": [
        "clientRequestToken",
        "fleet",
        "deploymentApplicationConfigs"
      ],
      "members": {
        "deploymentConfig": {
          "shape": "DeploymentConfig",
          "documentation": "<p>The requested deployment configuration.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>"
        },
        "deploymentApplicationConfigs": {
          "shape": "DeploymentApplicationConfigs",
          "documentation": "<p>The deployment application configuration.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the deployment job.</p>"
        }
      }
    },
    "CreateDeploymentJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The target fleet for the deployment job.</p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the deployment job.</p>"
        },
        "deploymentApplicationConfigs": {
          "shape": "DeploymentApplicationConfigs",
          "documentation": "<p>The deployment application configuration.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The failure reason of the deployment job if it failed.</p>"
        },
        "failureCode": {
          "shape": "DeploymentJobErrorCode",
          "documentation": "<p>The failure code of the simulation job if it failed:</p> <dl> <dt>BadPermissionError</dt> <dd> <p>AWS Greengrass requires a service-level role permission to access other services. The role must include the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor\"> <code>AWSGreengrassResourceAccessRolePolicy</code> managed policy</a>. </p> </dd> <dt>ExtractingBundleFailure</dt> <dd> <p>The robot application could not be extracted from the bundle.</p> </dd> <dt>FailureThresholdBreached</dt> <dd> <p>The percentage of robots that could not be updated exceeded the percentage set for the deployment.</p> </dd> <dt>GreengrassDeploymentFailed</dt> <dd> <p>The robot application could not be deployed to the robot.</p> </dd> <dt>GreengrassGroupVersionDoesNotExist</dt> <dd> <p>The AWS Greengrass group or version associated with a robot is missing.</p> </dd> <dt>InternalServerError</dt> <dd> <p>An internal error has occurred. Retry your request, but if the problem persists, contact us with details.</p> </dd> <dt>MissingRobotApplicationArchitecture</dt> <dd> <p>The robot application does not have a source that matches the architecture of the robot.</p> </dd> <dt>MissingRobotDeploymentResource</dt> <dd> <p>One or more of the resources specified for the robot application are missing. For example, does the robot application have the correct launch package and launch file?</p> </dd> <dt>PostLaunchFileFailure</dt> <dd> <p>The post-launch script failed.</p> </dd> <dt>PreLaunchFileFailure</dt> <dd> <p>The pre-launch script failed.</p> </dd> <dt>ResourceNotFound</dt> <dd> <p>One or more deployment resources are missing. For example, do robot application source bundles still exist? </p> </dd> <dt>RobotDeploymentNoResponse</dt> <dd> <p>There is no response from the robot. It might not be powered on or connected to the internet.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"
        },
        "deploymentConfig": {
          "shape": "DeploymentConfig",
          "documentation": "<p>The deployment configuration.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the deployment job.</p>"
        }
      }
    },
    "CreateFleetRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the fleet.</p>"
        }
      }
    },
    "CreateFleetResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the fleet.</p>"
        }
      }
    },
    "CreateRobotApplicationRequest": {
      "type": "structure",
      "required": [
        "name",
        "sources",
        "robotSoftwareSuite"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "sources": {
          "shape": "SourceConfigs",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribuition) used by the robot application.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the robot application.</p>"
        }
      }
    },
    "CreateRobotApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the robot application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the robot application.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the robot application.</p>"
        }
      }
    },
    "CreateRobotApplicationVersionRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the robot application.</p>"
        },
        "currentRevisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The current revision id for the robot application. If you provide a value and it matches the latest revision ID, a new version will be created.</p>"
        }
      }
    },
    "CreateRobotApplicationVersionResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the robot application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the robot application.</p>"
        }
      }
    },
    "CreateRobotRequest": {
      "type": "structure",
      "required": [
        "name",
        "architecture",
        "greengrassGroupId"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name for the robot.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The target architecture of the robot.</p>"
        },
        "greengrassGroupId": {
          "shape": "Id",
          "documentation": "<p>The Greengrass group id.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the robot.</p>"
        }
      }
    },
    "CreateRobotResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"
        },
        "greengrassGroupId": {
          "shape": "Id",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Greengrass group associated with the robot.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The target architecture of the robot.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the robot.</p>"
        }
      }
    },
    "CreateSimulationApplicationRequest": {
      "type": "structure",
      "required": [
        "name",
        "sources",
        "simulationSoftwareSuite",
        "robotSoftwareSuite"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "sources": {
          "shape": "SourceConfigs",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the simulation application.</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the simulation application.</p>"
        }
      }
    },
    "CreateSimulationApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about the robot software suite (ROS distribution).</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the simulation application.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the simulation application.</p>"
        }
      }
    },
    "CreateSimulationApplicationVersionRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the simulation application.</p>"
        },
        "currentRevisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The current revision id for the simulation application. If you provide a value and it matches the latest revision ID, a new version will be created.</p>"
        }
      }
    },
    "CreateSimulationApplicationVersionResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about the robot software suite (ROS distribution).</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision ID of the simulation application.</p>"
        }
      }
    },
    "CreateSimulationJobRequest": {
      "type": "structure",
      "required": [
        "maxJobDurationInSeconds",
        "iamRole"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "outputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Location for output files generated by the simulation job.</p>"
        },
        "loggingConfig": {
          "shape": "LoggingConfig",
          "documentation": "<p>The logging configuration.</p>"
        },
        "maxJobDurationInSeconds": {
          "shape": "JobDuration",
          "documentation": "<p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will transition to <code>Completed</code>.</p>"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role name that allows the simulation instance to call the AWS APIs that are specified in its associated policies on your behalf. This is how credentials are passed in to your simulation job. </p>"
        },
        "failureBehavior": {
          "shape": "FailureBehavior",
          "documentation": "<p>The failure behavior the simulation job.</p> <dl> <dt>Continue</dt> <dd> <p>Restart the simulation job in the same host instance.</p> </dd> <dt>Fail</dt> <dd> <p>Stop the simulation job and terminate the instance.</p> </dd> </dl>"
        },
        "robotApplications": {
          "shape": "RobotApplicationConfigs",
          "documentation": "<p>The robot application to use in the simulation job.</p>"
        },
        "simulationApplications": {
          "shape": "SimulationApplicationConfigs",
          "documentation": "<p>The simulation application to use in the simulation job.</p>"
        },
        "dataSources": {
          "shape": "DataSourceConfigs",
          "documentation": "<p>Specify data sources to mount read-only files from S3 into your simulation. These files are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p> <note> <p>There is a limit of 100 files and a combined size of 25GB for all <code>DataSourceConfig</code> objects. </p> </note>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the simulation job.</p>"
        },
        "vpcConfig": {
          "shape": "VPCConfig",
          "documentation": "<p>If your simulation job accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and one subnet ID. </p>"
        },
        "compute": {
          "shape": "Compute",
          "documentation": "<p>Compute information for the simulation job.</p>"
        }
      }
    },
    "CreateSimulationJobRequests": {
      "type": "list",
      "member": {
        "shape": "SimulationJobRequest"
      },
      "max": 1000,
      "min": 1
    },
    "CreateSimulationJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"
        },
        "status": {
          "shape": "SimulationJobStatus",
          "documentation": "<p>The status of the simulation job.</p>"
        },
        "lastStartedAt": {
          "shape": "LastStartedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last started.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last updated.</p>"
        },
        "failureBehavior": {
          "shape": "FailureBehavior",
          "documentation": "<p>the failure behavior for the simulation job.</p>"
        },
        "failureCode": {
          "shape": "SimulationJobErrorCode",
          "documentation": "<p>The failure code of the simulation job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>RobotApplicationCrash</dt> <dd> <p>Robot application exited abnormally.</p> </dd> <dt>SimulationApplicationCrash</dt> <dd> <p> Simulation application exited abnormally.</p> </dd> <dt>BadPermissionsRobotApplication</dt> <dd> <p>Robot application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsSimulationApplication</dt> <dd> <p>Simulation application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsS3Output</dt> <dd> <p>Unable to publish outputs to customer-provided S3 bucket.</p> </dd> <dt>BadPermissionsCloudwatchLogs</dt> <dd> <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p> </dd> <dt>SubnetIpLimitExceeded</dt> <dd> <p>Subnet IP limit exceeded.</p> </dd> <dt>ENILimitExceeded</dt> <dd> <p>ENI limit exceeded.</p> </dd> <dt>BadPermissionsUserCredentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Simulation job output files location.</p>"
        },
        "loggingConfig": {
          "shape": "LoggingConfig",
          "documentation": "<p>The logging configuration.</p>"
        },
        "maxJobDurationInSeconds": {
          "shape": "JobDuration",
          "documentation": "<p>The maximum simulation job duration in seconds. </p>"
        },
        "simulationTimeMillis": {
          "shape": "SimulationTimeMillis",
          "documentation": "<p>The simulation job execution duration in milliseconds.</p>"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that allows the simulation job to call the AWS APIs that are specified in its associated policies on your behalf.</p>"
        },
        "robotApplications": {
          "shape": "RobotApplicationConfigs",
          "documentation": "<p>The robot application used by the simulation job.</p>"
        },
        "simulationApplications": {
          "shape": "SimulationApplicationConfigs",
          "documentation": "<p>The simulation application used by the simulation job.</p>"
        },
        "dataSources": {
          "shape": "DataSources",
          "documentation": "<p>The data sources for the simulation job.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the simulation job.</p>"
        },
        "vpcConfig": {
          "shape": "VPCConfigResponse",
          "documentation": "<p>Information about the vpc configuration.</p>"
        },
        "compute": {
          "shape": "ComputeResponse",
          "documentation": "<p>Compute information for the simulation job.</p>"
        }
      }
    },
    "CreateWorldExportJobRequest": {
      "type": "structure",
      "required": [
        "worlds",
        "outputLocation",
        "iamRole"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "worlds": {
          "shape": "Arns",
          "documentation": "<p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put the export.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world export job.</p>"
        }
      }
    },
    "CreateWorldExportJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world export job.</p>"
        },
        "status": {
          "shape": "WorldExportJobStatus",
          "documentation": "<p>The status of the world export job.</p> <dl> <dt>Pending</dt> <dd> <p>The world export job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world export job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world export job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world export job failed. See <code>failureCode</code> for more information. </p> </dd> <dt>Canceled</dt> <dd> <p>The world export job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world export job is being cancelled.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
        },
        "failureCode": {
          "shape": "WorldExportJobErrorCode",
          "documentation": "<p>The failure code of the world export job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>LimitExceeded</dt> <dd> <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p> </dd> <dt>ResourceNotFound</dt> <dd> <p>The specified resource could not be found. </p> </dd> <dt>RequestThrottled</dt> <dd> <p>The request was throttled.</p> </dd> <dt>InvalidInput</dt> <dd> <p>An input parameter in the request is not valid.</p> </dd> </dl>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put the export. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world export job.</p>"
        }
      }
    },
    "CreateWorldGenerationJobRequest": {
      "type": "structure",
      "required": [
        "template",
        "worldCount"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template describing the worlds you want to create.</p>"
        },
        "worldCount": {
          "shape": "WorldCount",
          "documentation": "<p>Information about the world count.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world generator job.</p>"
        }
      }
    },
    "CreateWorldGenerationJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world generator job.</p>"
        },
        "status": {
          "shape": "WorldGenerationJobStatus",
          "documentation": "<p>The status of the world generator job.</p> <dl> <dt>Pending</dt> <dd> <p>The world generator job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world generator job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world generator job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world generator job failed. See <code>failureCode</code> for more information. </p> </dd> <dt>PartialFailed</dt> <dd> <p>Some worlds did not generate.</p> </dd> <dt>Canceled</dt> <dd> <p>The world generator job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world generator job is being cancelled.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world generator job was created.</p>"
        },
        "failureCode": {
          "shape": "WorldGenerationJobErrorCode",
          "documentation": "<p>The failure code of the world generator job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>LimitExceeded</dt> <dd> <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p> </dd> <dt>ResourceNotFound</dt> <dd> <p>The specified resource could not be found. </p> </dd> <dt>RequestThrottled</dt> <dd> <p>The request was throttled.</p> </dd> <dt>InvalidInput</dt> <dd> <p>An input parameter in the request is not valid.</p> </dd> </dl>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        },
        "worldCount": {
          "shape": "WorldCount",
          "documentation": "<p>Information about the world count. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world generator job.</p>"
        }
      }
    },
    "CreateWorldTemplateRequest": {
      "type": "structure",
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the world template.</p>"
        },
        "templateBody": {
          "shape": "Json",
          "documentation": "<p>The world template body.</p>"
        },
        "templateLocation": {
          "shape": "TemplateLocation",
          "documentation": "<p>The location of the world template.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world template.</p>"
        }
      }
    },
    "CreateWorldTemplateResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world template.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the world template.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world template.</p>"
        }
      }
    },
    "CreatedAt": {
      "type": "timestamp"
    },
    "DataSource": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the data source.</p>"
        },
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The S3 bucket where the data files are located.</p>"
        },
        "s3Keys": {
          "shape": "S3KeyOutputs",
          "documentation": "<p>The list of S3 keys identifying the data source files.</p>"
        }
      },
      "documentation": "<p>Information about a data source.</p>"
    },
    "DataSourceConfig": {
      "type": "structure",
      "required": [
        "name",
        "s3Bucket",
        "s3Keys"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the data source.</p>"
        },
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The S3 bucket where the data files are located.</p>"
        },
        "s3Keys": {
          "shape": "S3Keys",
          "documentation": "<p>The list of S3 keys identifying the data source files.</p>"
        }
      },
      "documentation": "<p>Information about a data source.</p>"
    },
    "DataSourceConfigs": {
      "type": "list",
      "member": {
        "shape": "DataSourceConfig"
      },
      "max": 5,
      "min": 1
    },
    "DataSourceNames": {
      "type": "list",
      "member": {
        "shape": "Name"
      }
    },
    "DataSources": {
      "type": "list",
      "member": {
        "shape": "DataSource"
      }
    },
    "DeleteFleetRequest": {
      "type": "structure",
      "required": [
        "fleet"
      ],
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        }
      }
    },
    "DeleteFleetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRobotApplicationRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the the robot application.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application to delete.</p>"
        }
      }
    },
    "DeleteRobotApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRobotRequest": {
      "type": "structure",
      "required": [
        "robot"
      ],
      "members": {
        "robot": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        }
      }
    },
    "DeleteRobotResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSimulationApplicationRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the simulation application to delete.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application to delete.</p>"
        }
      }
    },
    "DeleteSimulationApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteWorldTemplateRequest": {
      "type": "structure",
      "required": [
        "template"
      ],
      "members": {
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template you want to delete.</p>"
        }
      }
    },
    "DeleteWorldTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DeploymentApplicationConfig": {
      "type": "structure",
      "required": [
        "application",
        "applicationVersion",
        "launchConfig"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot application.</p>"
        },
        "applicationVersion": {
          "shape": "DeploymentVersion",
          "documentation": "<p>The version of the application.</p>"
        },
        "launchConfig": {
          "shape": "DeploymentLaunchConfig",
          "documentation": "<p>The launch configuration.</p>"
        }
      },
      "documentation": "<p>Information about a deployment application configuration.</p>"
    },
    "DeploymentApplicationConfigs": {
      "type": "list",
      "member": {
        "shape": "DeploymentApplicationConfig"
      },
      "max": 1,
      "min": 1
    },
    "DeploymentConfig": {
      "type": "structure",
      "members": {
        "concurrentDeploymentPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of robots receiving the deployment at the same time.</p>"
        },
        "failureThresholdPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of deployments that need to fail before stopping deployment.</p>"
        },
        "robotDeploymentTimeoutInSeconds": {
          "shape": "DeploymentTimeout",
          "documentation": "<p>The amount of time, in seconds, to wait for deployment to a single robot to complete. Choose a time between 1 minute and 7 days. The default is 5 hours.</p>"
        },
        "downloadConditionFile": {
          "shape": "S3Object",
          "documentation": "<p>The download condition file.</p>"
        }
      },
      "documentation": "<p>Information about a deployment configuration.</p>"
    },
    "DeploymentJob": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the deployment job.</p>"
        },
        "deploymentApplicationConfigs": {
          "shape": "DeploymentApplicationConfigs",
          "documentation": "<p>The deployment application configuration.</p>"
        },
        "deploymentConfig": {
          "shape": "DeploymentConfig",
          "documentation": "<p>The deployment configuration.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>A short description of the reason why the deployment job failed.</p>"
        },
        "failureCode": {
          "shape": "DeploymentJobErrorCode",
          "documentation": "<p>The deployment job failure code.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"
        }
      },
      "documentation": "<p>Information about a deployment job.</p>"
    },
    "DeploymentJobErrorCode": {
      "type": "string",
      "enum": [
        "ResourceNotFound",
        "EnvironmentSetupError",
        "EtagMismatch",
        "FailureThresholdBreached",
        "RobotDeploymentAborted",
        "RobotDeploymentNoResponse",
        "RobotAgentConnectionTimeout",
        "GreengrassDeploymentFailed",
        "InvalidGreengrassGroup",
        "MissingRobotArchitecture",
        "MissingRobotApplicationArchitecture",
        "MissingRobotDeploymentResource",
        "GreengrassGroupVersionDoesNotExist",
        "LambdaDeleted",
        "ExtractingBundleFailure",
        "PreLaunchFileFailure",
        "PostLaunchFileFailure",
        "BadPermissionError",
        "DownloadConditionFailed",
        "InternalServerError"
      ]
    },
    "DeploymentJobs": {
      "type": "list",
      "member": {
        "shape": "DeploymentJob"
      },
      "max": 200,
      "min": 0
    },
    "DeploymentLaunchConfig": {
      "type": "structure",
      "required": [
        "packageName",
        "launchFile"
      ],
      "members": {
        "packageName": {
          "shape": "Command",
          "documentation": "<p>The package name.</p>"
        },
        "preLaunchFile": {
          "shape": "Path",
          "documentation": "<p>The deployment pre-launch file. This file will be executed prior to the launch file.</p>"
        },
        "launchFile": {
          "shape": "Command",
          "documentation": "<p>The launch file name.</p>"
        },
        "postLaunchFile": {
          "shape": "Path",
          "documentation": "<p>The deployment post-launch file. This file will be executed after the launch file.</p>"
        },
        "environmentVariables": {
          "shape": "EnvironmentVariableMap",
          "documentation": "<p>An array of key/value pairs specifying environment variables for the robot application</p>"
        }
      },
      "documentation": "<p>Configuration information for a deployment launch.</p>"
    },
    "DeploymentStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Preparing",
        "InProgress",
        "Failed",
        "Succeeded",
        "Canceled"
      ]
    },
    "DeploymentTimeout": {
      "type": "long"
    },
    "DeploymentVersion": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[0-9]*"
    },
    "DeregisterRobotRequest": {
      "type": "structure",
      "required": [
        "fleet",
        "robot"
      ],
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "robot": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        }
      }
    },
    "DeregisterRobotResponse": {
      "type": "structure",
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "robot": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        }
      }
    },
    "DescribeDeploymentJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"
        }
      }
    },
    "DescribeDeploymentJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the deployment job.</p>"
        },
        "deploymentConfig": {
          "shape": "DeploymentConfig",
          "documentation": "<p>The deployment configuration.</p>"
        },
        "deploymentApplicationConfigs": {
          "shape": "DeploymentApplicationConfigs",
          "documentation": "<p>The deployment application configuration.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>A short description of the reason why the deployment job failed.</p>"
        },
        "failureCode": {
          "shape": "DeploymentJobErrorCode",
          "documentation": "<p>The deployment job failure code.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"
        },
        "robotDeploymentSummary": {
          "shape": "RobotDeploymentSummary",
          "documentation": "<p>A list of robot deployment summaries.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified deployment job.</p>"
        }
      }
    },
    "DescribeFleetRequest": {
      "type": "structure",
      "required": [
        "fleet"
      ],
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        }
      }
    },
    "DescribeFleetResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "robots": {
          "shape": "Robots",
          "documentation": "<p>A list of robots.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"
        },
        "lastDeploymentStatus": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the last deployment.</p>"
        },
        "lastDeploymentJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"
        },
        "lastDeploymentTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time of the last deployment.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified fleet.</p>"
        }
      }
    },
    "DescribeRobotApplicationRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot application.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application to describe.</p>"
        }
      }
    },
    "DescribeRobotApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the robot application.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the robot application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot application was last updated.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified robot application.</p>"
        }
      }
    },
    "DescribeRobotRequest": {
      "type": "structure",
      "required": [
        "robot"
      ],
      "members": {
        "robot": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot to be described.</p>"
        }
      }
    },
    "DescribeRobotResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot.</p>"
        },
        "fleetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "status": {
          "shape": "RobotStatus",
          "documentation": "<p>The status of the fleet.</p>"
        },
        "greengrassGroupId": {
          "shape": "Id",
          "documentation": "<p>The Greengrass group id.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The target architecture of the robot application.</p>"
        },
        "lastDeploymentJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"
        },
        "lastDeploymentTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time of the last deployment job.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified robot.</p>"
        }
      }
    },
    "DescribeSimulationApplicationRequest": {
      "type": "structure",
      "required": [
        "application"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the simulation application.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application to describe.</p>"
        }
      }
    },
    "DescribeSimulationApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot simulation application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about the robot software suite (ROS distribution).</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the simulation application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation application was last updated.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified simulation application.</p>"
        }
      }
    },
    "DescribeSimulationJobBatchRequest": {
      "type": "structure",
      "required": [
        "batch"
      ],
      "members": {
        "batch": {
          "shape": "Arn",
          "documentation": "<p>The id of the batch to describe.</p>"
        }
      }
    },
    "DescribeSimulationJobBatchResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the batch.</p>"
        },
        "status": {
          "shape": "SimulationJobBatchStatus",
          "documentation": "<p>The status of the batch.</p> <dl> <dt>Pending</dt> <dd> <p>The simulation job batch request is pending.</p> </dd> <dt>InProgress</dt> <dd> <p>The simulation job batch is in progress. </p> </dd> <dt>Failed</dt> <dd> <p>The simulation job batch failed. One or more simulation job requests could not be completed due to an internal failure (like <code>InternalServiceError</code>). See <code>failureCode</code> and <code>failureReason</code> for more information.</p> </dd> <dt>Completed</dt> <dd> <p>The simulation batch job completed. A batch is complete when (1) there are no pending simulation job requests in the batch and none of the failed simulation job requests are due to <code>InternalServiceError</code> and (2) when all created simulation jobs have reached a terminal state (for example, <code>Completed</code> or <code>Failed</code>). </p> </dd> <dt>Canceled</dt> <dd> <p>The simulation batch job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The simulation batch job is being cancelled.</p> </dd> <dt>Completing</dt> <dd> <p>The simulation batch job is completing.</p> </dd> <dt>TimingOut</dt> <dd> <p>The simulation job batch is timing out.</p> <p>If a batch timing out, and there are pending requests that were failing due to an internal failure (like <code>InternalServiceError</code>), the batch status will be <code>Failed</code>. If there are no such failing request, the batch status will be <code>TimedOut</code>. </p> </dd> <dt>TimedOut</dt> <dd> <p>The simulation batch job timed out.</p> </dd> </dl>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch was last updated.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch was created.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "batchPolicy": {
          "shape": "BatchPolicy",
          "documentation": "<p>The batch policy.</p>"
        },
        "failureCode": {
          "shape": "SimulationJobBatchErrorCode",
          "documentation": "<p>The failure code of the simulation job batch.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason the simulation job batch failed.</p>"
        },
        "failedRequests": {
          "shape": "FailedCreateSimulationJobRequests",
          "documentation": "<p>A list of failed create simulation job requests. The request failed to be created into a simulation job. Failed requests do not have a simulation job ID. </p>"
        },
        "pendingRequests": {
          "shape": "CreateSimulationJobRequests",
          "documentation": "<p>A list of pending simulation job requests. These requests have not yet been created into simulation jobs.</p>"
        },
        "createdRequests": {
          "shape": "SimulationJobSummaries",
          "documentation": "<p>A list of created simulation job summaries.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the simulation job batch.</p>"
        }
      }
    },
    "DescribeSimulationJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>"
        }
      }
    },
    "DescribeSimulationJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation job.</p>"
        },
        "status": {
          "shape": "SimulationJobStatus",
          "documentation": "<p>The status of the simulation job.</p>"
        },
        "lastStartedAt": {
          "shape": "LastStartedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last started.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last updated.</p>"
        },
        "failureBehavior": {
          "shape": "FailureBehavior",
          "documentation": "<p>The failure behavior for the simulation job.</p>"
        },
        "failureCode": {
          "shape": "SimulationJobErrorCode",
          "documentation": "<p>The failure code of the simulation job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>RobotApplicationCrash</dt> <dd> <p>Robot application exited abnormally.</p> </dd> <dt>SimulationApplicationCrash</dt> <dd> <p> Simulation application exited abnormally.</p> </dd> <dt>BadPermissionsRobotApplication</dt> <dd> <p>Robot application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsSimulationApplication</dt> <dd> <p>Simulation application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsS3Output</dt> <dd> <p>Unable to publish outputs to customer-provided S3 bucket.</p> </dd> <dt>BadPermissionsCloudwatchLogs</dt> <dd> <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p> </dd> <dt>SubnetIpLimitExceeded</dt> <dd> <p>Subnet IP limit exceeded.</p> </dd> <dt>ENILimitExceeded</dt> <dd> <p>ENI limit exceeded.</p> </dd> <dt>BadPermissionsUserCredentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>Details about why the simulation job failed. For more information about troubleshooting, see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html\">Troubleshooting</a>.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Location for output files generated by the simulation job.</p>"
        },
        "loggingConfig": {
          "shape": "LoggingConfig",
          "documentation": "<p>The logging configuration.</p>"
        },
        "maxJobDurationInSeconds": {
          "shape": "JobDuration",
          "documentation": "<p>The maximum job duration in seconds. The value must be 8 days (691,200 seconds) or less.</p>"
        },
        "simulationTimeMillis": {
          "shape": "SimulationTimeMillis",
          "documentation": "<p>The simulation job execution duration in milliseconds.</p>"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified in its associated policies on your behalf.</p>"
        },
        "robotApplications": {
          "shape": "RobotApplicationConfigs",
          "documentation": "<p>A list of robot applications.</p>"
        },
        "simulationApplications": {
          "shape": "SimulationApplicationConfigs",
          "documentation": "<p>A list of simulation applications.</p>"
        },
        "dataSources": {
          "shape": "DataSources",
          "documentation": "<p>The data sources for the simulation job.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified simulation job.</p>"
        },
        "vpcConfig": {
          "shape": "VPCConfigResponse",
          "documentation": "<p>The VPC configuration.</p>"
        },
        "networkInterface": {
          "shape": "NetworkInterface",
          "documentation": "<p>The network interface information for the simulation job.</p>"
        },
        "compute": {
          "shape": "ComputeResponse",
          "documentation": "<p>Compute information for the simulation job.</p>"
        }
      }
    },
    "DescribeWorldExportJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world export job to describe.</p>"
        }
      }
    },
    "DescribeWorldExportJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world export job.</p>"
        },
        "status": {
          "shape": "WorldExportJobStatus",
          "documentation": "<p>The status of the world export job.</p> <dl> <dt>Pending</dt> <dd> <p>The world export job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world export job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world export job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world export job failed. See <code>failureCode</code> and <code>failureReason</code> for more information. </p> </dd> <dt>Canceled</dt> <dd> <p>The world export job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world export job is being cancelled.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
        },
        "failureCode": {
          "shape": "WorldExportJobErrorCode",
          "documentation": "<p>The failure code of the world export job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>LimitExceeded</dt> <dd> <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p> </dd> <dt>ResourceNotFound</dt> <dd> <p>The specified resource could not be found. </p> </dd> <dt>RequestThrottled</dt> <dd> <p>The request was throttled.</p> </dd> <dt>InvalidInput</dt> <dd> <p>An input parameter in the request is not valid.</p> </dd> </dl>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason why the world export job failed.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "worlds": {
          "shape": "Arns",
          "documentation": "<p>A list of Amazon Resource Names (arns) that correspond to worlds to be exported.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put the export.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world export job.</p>"
        }
      }
    },
    "DescribeWorldGenerationJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world generation job to describe.</p>"
        }
      }
    },
    "DescribeWorldGenerationJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world generation job.</p>"
        },
        "status": {
          "shape": "WorldGenerationJobStatus",
          "documentation": "<p>The status of the world generation job:</p> <dl> <dt>Pending</dt> <dd> <p>The world generation job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world generation job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world generation job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world generation job failed. See <code>failureCode</code> for more information. </p> </dd> <dt>PartialFailed</dt> <dd> <p>Some worlds did not generate.</p> </dd> <dt>Canceled</dt> <dd> <p>The world generation job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world generation job is being cancelled.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world generation job was created.</p>"
        },
        "failureCode": {
          "shape": "WorldGenerationJobErrorCode",
          "documentation": "<p>The failure code of the world generation job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>LimitExceeded</dt> <dd> <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p> </dd> <dt>ResourceNotFound</dt> <dd> <p>The specified resource could not be found. </p> </dd> <dt>RequestThrottled</dt> <dd> <p>The request was throttled.</p> </dd> <dt>InvalidInput</dt> <dd> <p>An input parameter in the request is not valid.</p> </dd> </dl>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason why the world generation job failed.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        },
        "worldCount": {
          "shape": "WorldCount",
          "documentation": "<p>Information about the world count.</p>"
        },
        "finishedWorldsSummary": {
          "shape": "FinishedWorldsSummary",
          "documentation": "<p>Summary information about finished worlds.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world generation job.</p>"
        }
      }
    },
    "DescribeWorldRequest": {
      "type": "structure",
      "required": [
        "world"
      ],
      "members": {
        "world": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world you want to describe.</p>"
        }
      }
    },
    "DescribeWorldResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world.</p>"
        },
        "generationJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world generation job that generated the world.</p>"
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The world template.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world.</p>"
        }
      }
    },
    "DescribeWorldTemplateRequest": {
      "type": "structure",
      "required": [
        "template"
      ],
      "members": {
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template you want to describe.</p>"
        }
      }
    },
    "DescribeWorldTemplateResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world template.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the world template.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world template was last updated.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the world template.</p>"
        }
      }
    },
    "EnvironmentVariableKey": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[A-Z_][A-Z0-9_]*"
    },
    "EnvironmentVariableMap": {
      "type": "map",
      "key": {
        "shape": "EnvironmentVariableKey"
      },
      "value": {
        "shape": "EnvironmentVariableValue"
      },
      "max": 16,
      "min": 0
    },
    "EnvironmentVariableValue": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": ".*"
    },
    "FailedAt": {
      "type": "timestamp"
    },
    "FailedCreateSimulationJobRequest": {
      "type": "structure",
      "members": {
        "request": {
          "shape": "SimulationJobRequest",
          "documentation": "<p>The simulation job request.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The failure reason of the simulation job request.</p>"
        },
        "failureCode": {
          "shape": "SimulationJobErrorCode",
          "documentation": "<p>The failure code.</p>"
        },
        "failedAt": {
          "shape": "FailedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch failed.</p>"
        }
      },
      "documentation": "<p>Information about a failed create simulation job request.</p>"
    },
    "FailedCreateSimulationJobRequests": {
      "type": "list",
      "member": {
        "shape": "FailedCreateSimulationJobRequest"
      }
    },
    "FailureBehavior": {
      "type": "string",
      "enum": [
        "Fail",
        "Continue"
      ]
    },
    "FailureSummary": {
      "type": "structure",
      "members": {
        "totalFailureCount": {
          "shape": "Integer",
          "documentation": "<p>The total number of failures.</p>"
        },
        "failures": {
          "shape": "WorldFailures",
          "documentation": "<p>The worlds that failed.</p>"
        }
      },
      "documentation": "<p>Information about worlds that failed.</p>"
    },
    "Filter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the filter.</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>A list of values.</p>"
        }
      },
      "documentation": "<p>Information about a filter.</p>"
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "Name"
      },
      "max": 1,
      "min": 1
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      },
      "max": 1,
      "min": 1
    },
    "FinishedWorldsSummary": {
      "type": "structure",
      "members": {
        "finishedCount": {
          "shape": "Integer",
          "documentation": "<p>The total number of finished worlds.</p>"
        },
        "succeededWorlds": {
          "shape": "Arns",
          "documentation": "<p>A list of worlds that succeeded.</p>"
        },
        "failureSummary": {
          "shape": "FailureSummary",
          "documentation": "<p>Information about worlds that failed.</p>"
        }
      },
      "documentation": "<p>Information about worlds that finished.</p>"
    },
    "Fleet": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"
        },
        "lastDeploymentStatus": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the last fleet deployment.</p>"
        },
        "lastDeploymentJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"
        },
        "lastDeploymentTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time of the last deployment.</p>"
        }
      },
      "documentation": "<p>Information about a fleet.</p>"
    },
    "Fleets": {
      "type": "list",
      "member": {
        "shape": "Fleet"
      },
      "max": 200,
      "min": 0
    },
    "FloorplanCount": {
      "type": "integer"
    },
    "GenericInteger": {
      "type": "integer"
    },
    "GenericString": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": ".*"
    },
    "GetWorldTemplateBodyRequest": {
      "type": "structure",
      "members": {
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        },
        "generationJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world generator job.</p>"
        }
      }
    },
    "GetWorldTemplateBodyResponse": {
      "type": "structure",
      "members": {
        "templateBody": {
          "shape": "Json",
          "documentation": "<p>The world template body.</p>"
        }
      }
    },
    "IamRole": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "arn:aws:iam::\\w+:role/.*"
    },
    "Id": {
      "type": "string",
      "max": 1224,
      "min": 1,
      "pattern": ".*"
    },
    "Integer": {
      "type": "integer"
    },
    "InteriorCountPerFloorplan": {
      "type": "integer"
    },
    "JobDuration": {
      "type": "long"
    },
    "Json": {
      "type": "string",
      "max": 262144,
      "min": 1,
      "pattern": "[\\S\\s]+"
    },
    "LastStartedAt": {
      "type": "timestamp"
    },
    "LastUpdatedAt": {
      "type": "timestamp"
    },
    "LaunchConfig": {
      "type": "structure",
      "required": [
        "packageName",
        "launchFile"
      ],
      "members": {
        "packageName": {
          "shape": "Command",
          "documentation": "<p>The package name.</p>"
        },
        "launchFile": {
          "shape": "Command",
          "documentation": "<p>The launch file name.</p>"
        },
        "environmentVariables": {
          "shape": "EnvironmentVariableMap",
          "documentation": "<p>The environment variables for the application launch.</p>"
        },
        "portForwardingConfig": {
          "shape": "PortForwardingConfig",
          "documentation": "<p>The port forwarding configuration.</p>"
        },
        "streamUI": {
          "shape": "Boolean",
          "documentation": "<p>Boolean indicating whether a streaming session will be configured for the application. If <code>True</code>, AWS RoboMaker will configure a connection so you can interact with your application as it is running in the simulation. You must configure and luanch the component. It must have a graphical user interface. </p>"
        }
      },
      "documentation": "<p>Information about a launch configuration.</p>"
    },
    "ListDeploymentJobsRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p> <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListDeploymentJobs</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListDeploymentJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 200. If this parameter is not used, then <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code> value if applicable. </p>"
        }
      }
    },
    "ListDeploymentJobsResponse": {
      "type": "structure",
      "members": {
        "deploymentJobs": {
          "shape": "DeploymentJobs",
          "documentation": "<p>A list of deployment jobs that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListDeploymentJobs</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListFleetsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListFleets</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListFleets</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListFleets</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 200. If this parameter is not used, then <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p> <p>The filter name <code>name</code> is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.</p>"
        }
      }
    },
    "ListFleetsResponse": {
      "type": "structure",
      "members": {
        "fleetDetails": {
          "shape": "Fleets",
          "documentation": "<p>A list of fleet details meeting the request criteria.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListFleets</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListRobotApplicationsRequest": {
      "type": "structure",
      "members": {
        "versionQualifier": {
          "shape": "VersionQualifier",
          "documentation": "<p>The version qualifier of the robot application.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListRobotApplications</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListRobotApplications</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListRobotApplications</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListRobotApplications</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p> <p>The filter name <code>name</code> is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.</p>"
        }
      }
    },
    "ListRobotApplicationsResponse": {
      "type": "structure",
      "members": {
        "robotApplicationSummaries": {
          "shape": "RobotApplicationSummaries",
          "documentation": "<p>A list of robot application summaries that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListRobotApplications</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListRobotsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListRobots</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListRobots</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListRobots</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 200. If this parameter is not used, then <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p> <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status <code>Registered</code> or the status <code>Available</code>.</p>"
        }
      }
    },
    "ListRobotsResponse": {
      "type": "structure",
      "members": {
        "robots": {
          "shape": "Robots",
          "documentation": "<p>A list of robots that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListRobots</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListSimulationApplicationsRequest": {
      "type": "structure",
      "members": {
        "versionQualifier": {
          "shape": "VersionQualifier",
          "documentation": "<p>The version qualifier of the simulation application.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationApplications</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListSimulationApplications</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListSimulationApplications</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListSimulationApplications</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional list of filters to limit results.</p> <p>The filter name <code>name</code> is supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters.</p>"
        }
      }
    },
    "ListSimulationApplicationsResponse": {
      "type": "structure",
      "members": {
        "simulationApplicationSummaries": {
          "shape": "SimulationApplicationSummaries",
          "documentation": "<p>A list of simulation application summaries that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationApplications</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListSimulationJobBatchesRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationJobBatches</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListSimulationJobBatches</code> request with the returned <code>nextToken</code> value. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p>"
        }
      }
    },
    "ListSimulationJobBatchesResponse": {
      "type": "structure",
      "members": {
        "simulationJobBatchSummaries": {
          "shape": "SimulationJobBatchSummaries",
          "documentation": "<p>A list of simulation job batch summaries.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationJobBatches</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListSimulationJobsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationJobs</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListSimulationJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 1000. If this parameter is not used, then <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results.</p> <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and <code>robotApplicationName</code> are supported. When filtering, you must use the complete value of the filtered item. You can use up to three filters, but they must be for the same named item. For example, if you are looking for items with the status <code>Preparing</code> or the status <code>Running</code>.</p>"
        }
      }
    },
    "ListSimulationJobsResponse": {
      "type": "structure",
      "required": [
        "simulationJobSummaries"
      ],
      "members": {
        "simulationJobSummaries": {
          "shape": "SimulationJobSummaries",
          "documentation": "<p>A list of simulation job summaries that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListSimulationJobs</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of all tags added to the specified resource.</p>"
        }
      }
    },
    "ListWorldExportJobsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldExportJobs</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListWorldExportJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results. You can use <code>generationJobId</code> and <code>templateId</code>.</p>"
        }
      }
    },
    "ListWorldExportJobsResponse": {
      "type": "structure",
      "required": [
        "worldExportJobSummaries"
      ],
      "members": {
        "worldExportJobSummaries": {
          "shape": "WorldExportJobSummaries",
          "documentation": "<p>Summary information for world export jobs.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldExportJobsRequest</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListWorldGenerationJobsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListWorldGeneratorJobs</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results. You can use <code>status</code> and <code>templateId</code>.</p>"
        }
      }
    },
    "ListWorldGenerationJobsResponse": {
      "type": "structure",
      "required": [
        "worldGenerationJobSummaries"
      ],
      "members": {
        "worldGenerationJobSummaries": {
          "shape": "WorldGenerationJobSummaries",
          "documentation": "<p>Summary information for world generator jobs.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldGeneratorJobsRequest</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListWorldTemplatesRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldTemplates</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListWorldTemplates</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        }
      }
    },
    "ListWorldTemplatesResponse": {
      "type": "structure",
      "members": {
        "templateSummaries": {
          "shape": "TemplateSummaries",
          "documentation": "<p>Summary information for templates.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorldTemplates</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "ListWorldsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorlds</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>When this parameter is used, <code>ListWorlds</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListWorlds</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>Optional filters to limit results. You can use <code>status</code>.</p>"
        }
      }
    },
    "ListWorldsResponse": {
      "type": "structure",
      "members": {
        "worldSummaries": {
          "shape": "WorldSummaries",
          "documentation": "<p>Summary information for worlds.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's <code>nextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListWorlds</code> again and assign that token to the request object's <code>nextToken</code> parameter. If there are no remaining results, the previous response object's NextToken parameter is set to null. </p>"
        }
      }
    },
    "LoggingConfig": {
      "type": "structure",
      "required": [
        "recordAllRosTopics"
      ],
      "members": {
        "recordAllRosTopics": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A boolean indicating whether to record all ROS topics.</p>"
        }
      },
      "documentation": "<p>The logging configuration.</p>"
    },
    "MaxConcurrency": {
      "type": "integer"
    },
    "MaxResults": {
      "type": "integer"
    },
    "Name": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[a-zA-Z0-9_\\-]*"
    },
    "NetworkInterface": {
      "type": "structure",
      "members": {
        "networkInterfaceId": {
          "shape": "GenericString",
          "documentation": "<p>The ID of the network interface.</p>"
        },
        "privateIpAddress": {
          "shape": "GenericString",
          "documentation": "<p>The IPv4 address of the network interface within the subnet.</p>"
        },
        "publicIpAddress": {
          "shape": "GenericString",
          "documentation": "<p>The IPv4 public address of the network interface.</p>"
        }
      },
      "documentation": "<p>Describes a network interface.</p>"
    },
    "NonEmptyString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": ".+"
    },
    "NonSystemPort": {
      "type": "integer",
      "max": 65535,
      "min": 1024
    },
    "OutputLocation": {
      "type": "structure",
      "members": {
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The S3 bucket for output.</p>"
        },
        "s3Prefix": {
          "shape": "S3Key",
          "documentation": "<p>The S3 folder in the <code>s3Bucket</code> where output files will be placed.</p>"
        }
      },
      "documentation": "<p>The output location.</p>"
    },
    "PaginationToken": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.\\-\\/+=]*"
    },
    "Path": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": ".*"
    },
    "PercentDone": {
      "type": "float",
      "max": 100,
      "min": 0
    },
    "Percentage": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Port": {
      "type": "integer",
      "max": 65535,
      "min": 1
    },
    "PortForwardingConfig": {
      "type": "structure",
      "members": {
        "portMappings": {
          "shape": "PortMappingList",
          "documentation": "<p>The port mappings for the configuration.</p>"
        }
      },
      "documentation": "<p>Configuration information for port forwarding.</p>"
    },
    "PortMapping": {
      "type": "structure",
      "required": [
        "jobPort",
        "applicationPort"
      ],
      "members": {
        "jobPort": {
          "shape": "Port",
          "documentation": "<p>The port number on the simulation job instance to use as a remote connection point. </p>"
        },
        "applicationPort": {
          "shape": "NonSystemPort",
          "documentation": "<p>The port number on the application.</p>"
        },
        "enableOnPublicIp": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean indicating whether to enable this port mapping on public IP.</p>"
        }
      },
      "documentation": "<p>An object representing a port mapping.</p>"
    },
    "PortMappingList": {
      "type": "list",
      "member": {
        "shape": "PortMapping"
      },
      "max": 10,
      "min": 0
    },
    "ProgressDetail": {
      "type": "structure",
      "members": {
        "currentProgress": {
          "shape": "RobotDeploymentStep",
          "documentation": "<p>The current progress status.</p> <dl> <dt>Validating</dt> <dd> <p>Validating the deployment.</p> </dd> <dt>DownloadingExtracting</dt> <dd> <p>Downloading and extracting the bundle on the robot.</p> </dd> <dt>ExecutingPreLaunch</dt> <dd> <p>Executing pre-launch script(s) if provided.</p> </dd> <dt>Launching</dt> <dd> <p>Launching the robot application.</p> </dd> <dt>ExecutingPostLaunch</dt> <dd> <p>Executing post-launch script(s) if provided.</p> </dd> <dt>Finished</dt> <dd> <p>Deployment is complete.</p> </dd> </dl>"
        },
        "percentDone": {
          "shape": "PercentDone",
          "documentation": "<p>Precentage of the step that is done. This currently only applies to the <code>Downloading/Extracting</code> step of the deployment. It is empty for other steps.</p>"
        },
        "estimatedTimeRemainingSeconds": {
          "shape": "GenericInteger",
          "documentation": "<p>Estimated amount of time in seconds remaining in the step. This currently only applies to the <code>Downloading/Extracting</code> step of the deployment. It is empty for other steps.</p>"
        },
        "targetResource": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deployment job.</p>"
        }
      },
      "documentation": "<p>Information about the progress of a deployment job.</p>"
    },
    "RegisterRobotRequest": {
      "type": "structure",
      "required": [
        "fleet",
        "robot"
      ],
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "robot": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        }
      }
    },
    "RegisterRobotResponse": {
      "type": "structure",
      "members": {
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet that the robot will join.</p>"
        },
        "robot": {
          "shape": "Arn",
          "documentation": "<p>Information about the robot registration.</p>"
        }
      }
    },
    "RenderingEngine": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "RenderingEngineType",
          "documentation": "<p>The name of the rendering engine.</p>"
        },
        "version": {
          "shape": "RenderingEngineVersionType",
          "documentation": "<p>The version of the rendering engine.</p>"
        }
      },
      "documentation": "<p>Information about a rendering engine.</p>"
    },
    "RenderingEngineType": {
      "type": "string",
      "enum": [
        "OGRE"
      ]
    },
    "RenderingEngineVersionType": {
      "type": "string",
      "max": 4,
      "min": 1,
      "pattern": "1.x"
    },
    "RestartSimulationJobRequest": {
      "type": "structure",
      "required": [
        "job"
      ],
      "members": {
        "job": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"
        }
      }
    },
    "RestartSimulationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "RevisionId": {
      "type": "string",
      "max": 40,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.\\-]*"
    },
    "Robot": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot.</p>"
        },
        "fleetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "status": {
          "shape": "RobotStatus",
          "documentation": "<p>The status of the robot.</p>"
        },
        "greenGrassGroupId": {
          "shape": "Id",
          "documentation": "<p>The Greengrass group associated with the robot.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot was created.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The architecture of the robot.</p>"
        },
        "lastDeploymentJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the last deployment job.</p>"
        },
        "lastDeploymentTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time of the last deployment.</p>"
        }
      },
      "documentation": "<p>Information about a robot.</p>"
    },
    "RobotApplicationConfig": {
      "type": "structure",
      "required": [
        "application",
        "launchConfig"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the robot application.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "launchConfig": {
          "shape": "LaunchConfig",
          "documentation": "<p>The launch configuration for the robot application.</p>"
        }
      },
      "documentation": "<p>Application configuration information for a robot.</p>"
    },
    "RobotApplicationConfigs": {
      "type": "list",
      "member": {
        "shape": "RobotApplicationConfig"
      },
      "max": 1,
      "min": 1
    },
    "RobotApplicationNames": {
      "type": "list",
      "member": {
        "shape": "Name"
      }
    },
    "RobotApplicationSummaries": {
      "type": "list",
      "member": {
        "shape": "RobotApplicationSummary"
      },
      "max": 100,
      "min": 0
    },
    "RobotApplicationSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the robot.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot application was last updated.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about a robot software suite (ROS distribution).</p>"
        }
      },
      "documentation": "<p>Summary information for a robot application.</p>"
    },
    "RobotDeployment": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The robot deployment Amazon Resource Name (ARN).</p>"
        },
        "deploymentStartTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the deployment was started.</p>"
        },
        "deploymentFinishTime": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the deployment finished.</p>"
        },
        "status": {
          "shape": "RobotStatus",
          "documentation": "<p>The status of the robot deployment.</p>"
        },
        "progressDetail": {
          "shape": "ProgressDetail",
          "documentation": "<p>Information about how the deployment is progressing.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>A short description of the reason why the robot deployment failed.</p>"
        },
        "failureCode": {
          "shape": "DeploymentJobErrorCode",
          "documentation": "<p>The robot deployment failure code.</p>"
        }
      },
      "documentation": "<p>Information about a robot deployment.</p>"
    },
    "RobotDeploymentStep": {
      "type": "string",
      "enum": [
        "Validating",
        "DownloadingExtracting",
        "ExecutingDownloadCondition",
        "ExecutingPreLaunch",
        "Launching",
        "ExecutingPostLaunch",
        "Finished"
      ]
    },
    "RobotDeploymentSummary": {
      "type": "list",
      "member": {
        "shape": "RobotDeployment"
      }
    },
    "RobotSoftwareSuite": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "RobotSoftwareSuiteType",
          "documentation": "<p>The name of the robot software suite (ROS distribution).</p>"
        },
        "version": {
          "shape": "RobotSoftwareSuiteVersionType",
          "documentation": "<p>The version of the robot software suite (ROS distribution).</p>"
        }
      },
      "documentation": "<p>Information about a robot software suite (ROS distribution).</p>"
    },
    "RobotSoftwareSuiteType": {
      "type": "string",
      "enum": [
        "ROS",
        "ROS2"
      ]
    },
    "RobotSoftwareSuiteVersionType": {
      "type": "string",
      "enum": [
        "Kinetic",
        "Melodic",
        "Dashing"
      ]
    },
    "RobotStatus": {
      "type": "string",
      "enum": [
        "Available",
        "Registered",
        "PendingNewDeployment",
        "Deploying",
        "Failed",
        "InSync",
        "NoResponse"
      ]
    },
    "Robots": {
      "type": "list",
      "member": {
        "shape": "Robot"
      },
      "max": 1000,
      "min": 0
    },
    "S3Bucket": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "[a-z0-9][a-z0-9.\\-]*[a-z0-9]"
    },
    "S3Etag": {
      "type": "string"
    },
    "S3Key": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": ".*"
    },
    "S3KeyOutput": {
      "type": "structure",
      "members": {
        "s3Key": {
          "shape": "S3Key",
          "documentation": "<p>The S3 key.</p>"
        },
        "etag": {
          "shape": "S3Etag",
          "documentation": "<p>The etag for the object.</p>"
        }
      },
      "documentation": "<p>Information about S3 keys.</p>"
    },
    "S3KeyOutputs": {
      "type": "list",
      "member": {
        "shape": "S3KeyOutput"
      }
    },
    "S3Keys": {
      "type": "list",
      "member": {
        "shape": "S3Key"
      },
      "max": 100,
      "min": 1
    },
    "S3Object": {
      "type": "structure",
      "required": [
        "bucket",
        "key"
      ],
      "members": {
        "bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The bucket containing the object.</p>"
        },
        "key": {
          "shape": "S3Key",
          "documentation": "<p>The key of the object.</p>"
        },
        "etag": {
          "shape": "S3Etag",
          "documentation": "<p>The etag of the object.</p>"
        }
      },
      "documentation": "<p>Information about an S3 object.</p>"
    },
    "SecurityGroups": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 5,
      "min": 1
    },
    "SimulationApplicationConfig": {
      "type": "structure",
      "required": [
        "application",
        "launchConfig"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the simulation application.</p>"
        },
        "applicationVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application.</p>"
        },
        "launchConfig": {
          "shape": "LaunchConfig",
          "documentation": "<p>The launch configuration for the simulation application.</p>"
        },
        "worldConfigs": {
          "shape": "WorldConfigs",
          "documentation": "<p>A list of world configurations.</p>"
        }
      },
      "documentation": "<p>Information about a simulation application configuration.</p>"
    },
    "SimulationApplicationConfigs": {
      "type": "list",
      "member": {
        "shape": "SimulationApplicationConfig"
      },
      "max": 1,
      "min": 1
    },
    "SimulationApplicationNames": {
      "type": "list",
      "member": {
        "shape": "Name"
      }
    },
    "SimulationApplicationSummaries": {
      "type": "list",
      "member": {
        "shape": "SimulationApplicationSummary"
      },
      "max": 100,
      "min": 0
    },
    "SimulationApplicationSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the simulation application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation application was last updated.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about a robot software suite (ROS distribution).</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>Information about a simulation software suite.</p>"
        }
      },
      "documentation": "<p>Summary information for a simulation application.</p>"
    },
    "SimulationJob": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation job.</p>"
        },
        "status": {
          "shape": "SimulationJobStatus",
          "documentation": "<p>Status of the simulation job.</p>"
        },
        "lastStartedAt": {
          "shape": "LastStartedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last started.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last updated.</p>"
        },
        "failureBehavior": {
          "shape": "FailureBehavior",
          "documentation": "<p>The failure behavior the simulation job.</p> <dl> <dt>Continue</dt> <dd> <p>Restart the simulation job in the same host instance.</p> </dd> <dt>Fail</dt> <dd> <p>Stop the simulation job and terminate the instance.</p> </dd> </dl>"
        },
        "failureCode": {
          "shape": "SimulationJobErrorCode",
          "documentation": "<p>The failure code of the simulation job if it failed.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason why the simulation job failed.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique identifier for this <code>SimulationJob</code> request.</p>"
        },
        "outputLocation": {
          "shape": "OutputLocation",
          "documentation": "<p>Location for output files generated by the simulation job.</p>"
        },
        "loggingConfig": {
          "shape": "LoggingConfig",
          "documentation": "<p>The logging configuration.</p>"
        },
        "maxJobDurationInSeconds": {
          "shape": "JobDuration",
          "documentation": "<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200 seconds) or less.</p>"
        },
        "simulationTimeMillis": {
          "shape": "SimulationTimeMillis",
          "documentation": "<p>The simulation job execution duration in milliseconds.</p>"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified in its associated policies on your behalf. This is how credentials are passed in to your simulation job. </p>"
        },
        "robotApplications": {
          "shape": "RobotApplicationConfigs",
          "documentation": "<p>A list of robot applications.</p>"
        },
        "simulationApplications": {
          "shape": "SimulationApplicationConfigs",
          "documentation": "<p>A list of simulation applications.</p>"
        },
        "dataSources": {
          "shape": "DataSources",
          "documentation": "<p>The data sources for the simulation job.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the simulation job.</p>"
        },
        "vpcConfig": {
          "shape": "VPCConfigResponse",
          "documentation": "<p>VPC configuration information.</p>"
        },
        "networkInterface": {
          "shape": "NetworkInterface",
          "documentation": "<p>Information about a network interface.</p>"
        },
        "compute": {
          "shape": "ComputeResponse",
          "documentation": "<p>Compute information for the simulation job</p>"
        }
      },
      "documentation": "<p>Information about a simulation job.</p>"
    },
    "SimulationJobBatchErrorCode": {
      "type": "string",
      "enum": [
        "InternalServiceError"
      ]
    },
    "SimulationJobBatchStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "InProgress",
        "Failed",
        "Completed",
        "Canceled",
        "Canceling",
        "Completing",
        "TimingOut",
        "TimedOut"
      ]
    },
    "SimulationJobBatchSummaries": {
      "type": "list",
      "member": {
        "shape": "SimulationJobBatchSummary"
      }
    },
    "SimulationJobBatchSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the batch.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch was last updated.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch was created.</p>"
        },
        "status": {
          "shape": "SimulationJobBatchStatus",
          "documentation": "<p>The status of the simulation job batch.</p> <dl> <dt>Pending</dt> <dd> <p>The simulation job batch request is pending.</p> </dd> <dt>InProgress</dt> <dd> <p>The simulation job batch is in progress. </p> </dd> <dt>Failed</dt> <dd> <p>The simulation job batch failed. One or more simulation job requests could not be completed due to an internal failure (like <code>InternalServiceError</code>). See <code>failureCode</code> and <code>failureReason</code> for more information.</p> </dd> <dt>Completed</dt> <dd> <p>The simulation batch job completed. A batch is complete when (1) there are no pending simulation job requests in the batch and none of the failed simulation job requests are due to <code>InternalServiceError</code> and (2) when all created simulation jobs have reached a terminal state (for example, <code>Completed</code> or <code>Failed</code>). </p> </dd> <dt>Canceled</dt> <dd> <p>The simulation batch job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The simulation batch job is being cancelled.</p> </dd> <dt>Completing</dt> <dd> <p>The simulation batch job is completing.</p> </dd> <dt>TimingOut</dt> <dd> <p>The simulation job batch is timing out.</p> <p>If a batch timing out, and there are pending requests that were failing due to an internal failure (like <code>InternalServiceError</code>), the batch status will be <code>Failed</code>. If there are no such failing request, the batch status will be <code>TimedOut</code>. </p> </dd> <dt>TimedOut</dt> <dd> <p>The simulation batch job timed out.</p> </dd> </dl>"
        },
        "failedRequestCount": {
          "shape": "Integer",
          "documentation": "<p>The number of failed simulation job requests.</p>"
        },
        "pendingRequestCount": {
          "shape": "Integer",
          "documentation": "<p>The number of pending simulation job requests.</p>"
        },
        "createdRequestCount": {
          "shape": "Integer",
          "documentation": "<p>The number of created simulation job requests.</p>"
        }
      },
      "documentation": "<p>Information about a simulation job batch.</p>"
    },
    "SimulationJobErrorCode": {
      "type": "string",
      "enum": [
        "InternalServiceError",
        "RobotApplicationCrash",
        "SimulationApplicationCrash",
        "BadPermissionsRobotApplication",
        "BadPermissionsSimulationApplication",
        "BadPermissionsS3Object",
        "BadPermissionsS3Output",
        "BadPermissionsCloudwatchLogs",
        "SubnetIpLimitExceeded",
        "ENILimitExceeded",
        "BadPermissionsUserCredentials",
        "InvalidBundleRobotApplication",
        "InvalidBundleSimulationApplication",
        "InvalidS3Resource",
        "LimitExceeded",
        "MismatchedEtag",
        "RobotApplicationVersionMismatchedEtag",
        "SimulationApplicationVersionMismatchedEtag",
        "ResourceNotFound",
        "RequestThrottled",
        "BatchTimedOut",
        "BatchCanceled",
        "InvalidInput",
        "WrongRegionS3Bucket",
        "WrongRegionS3Output",
        "WrongRegionRobotApplication",
        "WrongRegionSimulationApplication"
      ]
    },
    "SimulationJobRequest": {
      "type": "structure",
      "required": [
        "maxJobDurationInSeconds"
      ],
      "members": {
        "outputLocation": {
          "shape": "OutputLocation"
        },
        "loggingConfig": {
          "shape": "LoggingConfig"
        },
        "maxJobDurationInSeconds": {
          "shape": "JobDuration",
          "documentation": "<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200 seconds) or less.</p>"
        },
        "iamRole": {
          "shape": "IamRole",
          "documentation": "<p>The IAM role name that allows the simulation instance to call the AWS APIs that are specified in its associated policies on your behalf. This is how credentials are passed in to your simulation job. </p>"
        },
        "failureBehavior": {
          "shape": "FailureBehavior",
          "documentation": "<p>The failure behavior the simulation job.</p> <dl> <dt>Continue</dt> <dd> <p>Restart the simulation job in the same host instance.</p> </dd> <dt>Fail</dt> <dd> <p>Stop the simulation job and terminate the instance.</p> </dd> </dl>"
        },
        "useDefaultApplications": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Boolean indicating whether to use default simulation tool applications.</p>"
        },
        "robotApplications": {
          "shape": "RobotApplicationConfigs",
          "documentation": "<p>The robot applications to use in the simulation job.</p>"
        },
        "simulationApplications": {
          "shape": "SimulationApplicationConfigs",
          "documentation": "<p>The simulation applications to use in the simulation job.</p>"
        },
        "dataSources": {
          "shape": "DataSourceConfigs",
          "documentation": "<p>Specify data sources to mount read-only files from S3 into your simulation. These files are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p> <note> <p>There is a limit of 100 files and a combined size of 25GB for all <code>DataSourceConfig</code> objects. </p> </note>"
        },
        "vpcConfig": {
          "shape": "VPCConfig"
        },
        "compute": {
          "shape": "Compute",
          "documentation": "<p>Compute information for the simulation job</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the simulation job request.</p>"
        }
      },
      "documentation": "<p>Information about a simulation job request.</p>"
    },
    "SimulationJobStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Preparing",
        "Running",
        "Restarting",
        "Completed",
        "Failed",
        "RunningFailed",
        "Terminating",
        "Terminated",
        "Canceled"
      ]
    },
    "SimulationJobSummaries": {
      "type": "list",
      "member": {
        "shape": "SimulationJobSummary"
      },
      "max": 100,
      "min": 0
    },
    "SimulationJobSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the simulation job.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job was last updated.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation job.</p>"
        },
        "status": {
          "shape": "SimulationJobStatus",
          "documentation": "<p>The status of the simulation job.</p>"
        },
        "simulationApplicationNames": {
          "shape": "SimulationApplicationNames",
          "documentation": "<p>A list of simulation job simulation application names.</p>"
        },
        "robotApplicationNames": {
          "shape": "RobotApplicationNames",
          "documentation": "<p>A list of simulation job robot application names.</p>"
        },
        "dataSourceNames": {
          "shape": "DataSourceNames",
          "documentation": "<p>The names of the data sources.</p>"
        }
      },
      "documentation": "<p>Summary information for a simulation job.</p>"
    },
    "SimulationJobs": {
      "type": "list",
      "member": {
        "shape": "SimulationJob"
      }
    },
    "SimulationSoftwareSuite": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SimulationSoftwareSuiteType",
          "documentation": "<p>The name of the simulation software suite.</p>"
        },
        "version": {
          "shape": "SimulationSoftwareSuiteVersionType",
          "documentation": "<p>The version of the simulation software suite.</p>"
        }
      },
      "documentation": "<p>Information about a simulation software suite.</p>"
    },
    "SimulationSoftwareSuiteType": {
      "type": "string",
      "enum": [
        "Gazebo",
        "RosbagPlay"
      ]
    },
    "SimulationSoftwareSuiteVersionType": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "7|9|Kinetic|Melodic|Dashing"
    },
    "SimulationTimeMillis": {
      "type": "long"
    },
    "SimulationUnit": {
      "type": "integer",
      "max": 15,
      "min": 1
    },
    "Source": {
      "type": "structure",
      "members": {
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The s3 bucket name.</p>"
        },
        "s3Key": {
          "shape": "S3Key",
          "documentation": "<p>The s3 object key.</p>"
        },
        "etag": {
          "shape": "S3Etag",
          "documentation": "<p>A hash of the object specified by <code>s3Bucket</code> and <code>s3Key</code>.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The taget processor architecture for the application.</p>"
        }
      },
      "documentation": "<p>Information about a source.</p>"
    },
    "SourceConfig": {
      "type": "structure",
      "members": {
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The Amazon S3 bucket name.</p>"
        },
        "s3Key": {
          "shape": "S3Key",
          "documentation": "<p>The s3 object key.</p>"
        },
        "architecture": {
          "shape": "Architecture",
          "documentation": "<p>The target processor architecture for the application.</p>"
        }
      },
      "documentation": "<p>Information about a source configuration.</p>"
    },
    "SourceConfigs": {
      "type": "list",
      "member": {
        "shape": "SourceConfig"
      }
    },
    "Sources": {
      "type": "list",
      "member": {
        "shape": "Source"
      }
    },
    "StartSimulationJobBatchRequest": {
      "type": "structure",
      "required": [
        "createSimulationJobRequests"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "batchPolicy": {
          "shape": "BatchPolicy",
          "documentation": "<p>The batch policy.</p>"
        },
        "createSimulationJobRequests": {
          "shape": "CreateSimulationJobRequests",
          "documentation": "<p>A list of simulation job requests to create in the batch.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the deployment job batch.</p>"
        }
      }
    },
    "StartSimulationJobBatchResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the batch.</p>"
        },
        "status": {
          "shape": "SimulationJobBatchStatus",
          "documentation": "<p>The status of the simulation job batch.</p> <dl> <dt>Pending</dt> <dd> <p>The simulation job batch request is pending.</p> </dd> <dt>InProgress</dt> <dd> <p>The simulation job batch is in progress. </p> </dd> <dt>Failed</dt> <dd> <p>The simulation job batch failed. One or more simulation job requests could not be completed due to an internal failure (like <code>InternalServiceError</code>). See <code>failureCode</code> and <code>failureReason</code> for more information.</p> </dd> <dt>Completed</dt> <dd> <p>The simulation batch job completed. A batch is complete when (1) there are no pending simulation job requests in the batch and none of the failed simulation job requests are due to <code>InternalServiceError</code> and (2) when all created simulation jobs have reached a terminal state (for example, <code>Completed</code> or <code>Failed</code>). </p> </dd> <dt>Canceled</dt> <dd> <p>The simulation batch job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The simulation batch job is being cancelled.</p> </dd> <dt>Completing</dt> <dd> <p>The simulation batch job is completing.</p> </dd> <dt>TimingOut</dt> <dd> <p>The simulation job batch is timing out.</p> <p>If a batch timing out, and there are pending requests that were failing due to an internal failure (like <code>InternalServiceError</code>), the batch status will be <code>Failed</code>. If there are no such failing request, the batch status will be <code>TimedOut</code>. </p> </dd> <dt>TimedOut</dt> <dd> <p>The simulation batch job timed out.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation job batch was created.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "batchPolicy": {
          "shape": "BatchPolicy",
          "documentation": "<p>The batch policy.</p>"
        },
        "failureCode": {
          "shape": "SimulationJobBatchErrorCode",
          "documentation": "<p>The failure code if the simulation job batch failed.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason the simulation job batch failed.</p>"
        },
        "failedRequests": {
          "shape": "FailedCreateSimulationJobRequests",
          "documentation": "<p>A list of failed simulation job requests. The request failed to be created into a simulation job. Failed requests do not have a simulation job ID. </p>"
        },
        "pendingRequests": {
          "shape": "CreateSimulationJobRequests",
          "documentation": "<p>A list of pending simulation job requests. These requests have not yet been created into simulation jobs.</p>"
        },
        "createdRequests": {
          "shape": "SimulationJobSummaries",
          "documentation": "<p>A list of created simulation job request summaries.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the deployment job batch.</p>"
        }
      }
    },
    "Subnets": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 16,
      "min": 1
    },
    "SyncDeploymentJobRequest": {
      "type": "structure",
      "required": [
        "clientRequestToken",
        "fleet"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The target fleet for the synchronization.</p>"
        }
      }
    },
    "SyncDeploymentJobResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the synchronization request.</p>"
        },
        "fleet": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "status": {
          "shape": "DeploymentStatus",
          "documentation": "<p>The status of the synchronization job.</p>"
        },
        "deploymentConfig": {
          "shape": "DeploymentConfig",
          "documentation": "<p>Information about the deployment configuration.</p>"
        },
        "deploymentApplicationConfigs": {
          "shape": "DeploymentApplicationConfigs",
          "documentation": "<p>Information about the deployment application configurations.</p>"
        },
        "failureReason": {
          "shape": "GenericString",
          "documentation": "<p>The failure reason if the job fails.</p>"
        },
        "failureCode": {
          "shape": "DeploymentJobErrorCode",
          "documentation": "<p>The failure code if the job fails:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>RobotApplicationCrash</dt> <dd> <p>Robot application exited abnormally.</p> </dd> <dt>SimulationApplicationCrash</dt> <dd> <p> Simulation application exited abnormally.</p> </dd> <dt>BadPermissionsRobotApplication</dt> <dd> <p>Robot application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsSimulationApplication</dt> <dd> <p>Simulation application bundle could not be downloaded.</p> </dd> <dt>BadPermissionsS3Output</dt> <dd> <p>Unable to publish outputs to customer-provided S3 bucket.</p> </dd> <dt>BadPermissionsCloudwatchLogs</dt> <dd> <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p> </dd> <dt>SubnetIpLimitExceeded</dt> <dd> <p>Subnet IP limit exceeded.</p> </dd> <dt>ENILimitExceeded</dt> <dd> <p>ENI limit exceeded.</p> </dd> <dt>BadPermissionsUserCredentials</dt> <dd> <p>Unable to use the Role provided.</p> </dd> <dt>InvalidBundleRobotApplication</dt> <dd> <p>Robot bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>InvalidBundleSimulationApplication</dt> <dd> <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other issue).</p> </dd> <dt>RobotApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for RobotApplication does not match value during version creation.</p> </dd> <dt>SimulationApplicationVersionMismatchedEtag</dt> <dd> <p>Etag for SimulationApplication does not match value during version creation.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the fleet was created.</p>"
        }
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9 _.\\-\\/+=:]*"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to the resource.</p>"
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
      "pattern": "[a-zA-Z0-9 _.\\-\\/+=:]*"
    },
    "TemplateLocation": {
      "type": "structure",
      "required": [
        "s3Bucket",
        "s3Key"
      ],
      "members": {
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The Amazon S3 bucket name.</p>"
        },
        "s3Key": {
          "shape": "S3Key",
          "documentation": "<p>The list of S3 keys identifying the data source files.</p>"
        }
      },
      "documentation": "<p>Information about a template location.</p>"
    },
    "TemplateName": {
      "type": "string",
      "max": 255,
      "min": 0,
      "pattern": ".*"
    },
    "TemplateSummaries": {
      "type": "list",
      "member": {
        "shape": "TemplateSummary"
      }
    },
    "TemplateSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the template was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the template was last updated.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the template.</p>"
        }
      },
      "documentation": "<p>Summary information for a template.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing tags.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A map that contains tag keys and tag values that will be unattached from the resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateRobotApplicationRequest": {
      "type": "structure",
      "required": [
        "application",
        "sources",
        "robotSoftwareSuite"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the robot application.</p>"
        },
        "sources": {
          "shape": "SourceConfigs",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the robot application.</p>"
        },
        "currentRevisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id for the robot application.</p>"
        }
      }
    },
    "UpdateRobotApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the updated robot application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the robot application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the robot application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>The robot software suite (ROS distribution) used by the robot application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the robot application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the robot application.</p>"
        }
      }
    },
    "UpdateSimulationApplicationRequest": {
      "type": "structure",
      "required": [
        "application",
        "sources",
        "simulationSoftwareSuite",
        "robotSoftwareSuite"
      ],
      "members": {
        "application": {
          "shape": "Arn",
          "documentation": "<p>The application information for the simulation application.</p>"
        },
        "sources": {
          "shape": "SourceConfigs",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about the robot software suite (ROS distribution).</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "currentRevisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id for the robot application.</p>"
        }
      }
    },
    "UpdateSimulationApplicationResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the updated simulation application.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the simulation application.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the robot application.</p>"
        },
        "sources": {
          "shape": "Sources",
          "documentation": "<p>The sources of the simulation application.</p>"
        },
        "simulationSoftwareSuite": {
          "shape": "SimulationSoftwareSuite",
          "documentation": "<p>The simulation software suite used by the simulation application.</p>"
        },
        "robotSoftwareSuite": {
          "shape": "RobotSoftwareSuite",
          "documentation": "<p>Information about the robot software suite (ROS distribution).</p>"
        },
        "renderingEngine": {
          "shape": "RenderingEngine",
          "documentation": "<p>The rendering engine for the simulation application.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the simulation application was last updated.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>The revision id of the simulation application.</p>"
        }
      }
    },
    "UpdateWorldTemplateRequest": {
      "type": "structure",
      "required": [
        "template"
      ],
      "members": {
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template to update.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the template.</p>"
        },
        "templateBody": {
          "shape": "Json",
          "documentation": "<p>The world template body.</p>"
        },
        "templateLocation": {
          "shape": "TemplateLocation",
          "documentation": "<p>The location of the world template.</p>"
        }
      }
    },
    "UpdateWorldTemplateResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        },
        "name": {
          "shape": "TemplateName",
          "documentation": "<p>The name of the world template.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world template was last updated.</p>"
        }
      }
    },
    "VPCConfig": {
      "type": "structure",
      "required": [
        "subnets"
      ],
      "members": {
        "subnets": {
          "shape": "Subnets",
          "documentation": "<p>A list of one or more subnet IDs in your VPC.</p>"
        },
        "securityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>A list of one or more security groups IDs in your VPC.</p>"
        },
        "assignPublicIp": {
          "shape": "Boolean",
          "documentation": "<p>A boolean indicating whether to assign a public IP address.</p>"
        }
      },
      "documentation": "<p>If your simulation job accesses resources in a VPC, you provide this parameter identifying the list of security group IDs and subnet IDs. These must belong to the same VPC. You must provide at least one security group and two subnet IDs.</p>"
    },
    "VPCConfigResponse": {
      "type": "structure",
      "members": {
        "subnets": {
          "shape": "Subnets",
          "documentation": "<p>A list of subnet IDs associated with the simulation job.</p>"
        },
        "securityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>A list of security group IDs associated with the simulation job.</p>"
        },
        "vpcId": {
          "shape": "GenericString",
          "documentation": "<p>The VPC ID associated with your simulation job.</p>"
        },
        "assignPublicIp": {
          "shape": "Boolean",
          "documentation": "<p>A boolean indicating if a public IP was assigned.</p>"
        }
      },
      "documentation": "<p>VPC configuration associated with your simulation job.</p>"
    },
    "Version": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "(\\$LATEST)|[0-9]*"
    },
    "VersionQualifier": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "ALL"
    },
    "WorldConfig": {
      "type": "structure",
      "members": {
        "world": {
          "shape": "Arn",
          "documentation": "<p>The world generated by Simulation WorldForge.</p>"
        }
      },
      "documentation": "<p>Configuration information for a world.</p>"
    },
    "WorldConfigs": {
      "type": "list",
      "member": {
        "shape": "WorldConfig"
      },
      "max": 1,
      "min": 0
    },
    "WorldCount": {
      "type": "structure",
      "members": {
        "floorplanCount": {
          "shape": "FloorplanCount",
          "documentation": "<p>The number of unique floorplans.</p>"
        },
        "interiorCountPerFloorplan": {
          "shape": "InteriorCountPerFloorplan",
          "documentation": "<p>The number of unique interiors per floorplan.</p>"
        }
      },
      "documentation": "<p>The number of worlds that will be created. You can configure the number of unique floorplans and the number of unique interiors for each floor plan. For example, if you want 1 world with 20 unique interiors, you set <code>floorplanCount = 1</code> and <code>interiorCountPerFloorplan = 20</code>. This will result in 20 worlds (<code>floorplanCount</code> * <code>interiorCountPerFloorplan)</code>. </p> <p>If you set <code>floorplanCount = 4</code> and <code>interiorCountPerFloorplan = 5</code>, there will be 20 worlds with 5 unique floor plans. </p>"
    },
    "WorldExportJobErrorCode": {
      "type": "string",
      "enum": [
        "InternalServiceError",
        "LimitExceeded",
        "ResourceNotFound",
        "RequestThrottled",
        "InvalidInput",
        "AccessDenied"
      ]
    },
    "WorldExportJobStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Running",
        "Completed",
        "Failed",
        "Canceling",
        "Canceled"
      ]
    },
    "WorldExportJobSummaries": {
      "type": "list",
      "member": {
        "shape": "WorldExportJobSummary"
      },
      "max": 100,
      "min": 0
    },
    "WorldExportJobSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world export job.</p>"
        },
        "status": {
          "shape": "WorldExportJobStatus",
          "documentation": "<p>The status of the world export job.</p> <dl> <dt>Pending</dt> <dd> <p>The world export job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world export job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world export job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world export job failed. See <code>failureCode</code> for more information. </p> </dd> <dt>Canceled</dt> <dd> <p>The world export job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world export job is being cancelled.</p> </dd> </dl>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
        },
        "worlds": {
          "shape": "Arns",
          "documentation": "<p>A list of worlds.</p>"
        }
      },
      "documentation": "<p>Information about a world export job.</p>"
    },
    "WorldFailure": {
      "type": "structure",
      "members": {
        "failureCode": {
          "shape": "WorldGenerationJobErrorCode",
          "documentation": "<p>The failure code of the world export job if it failed:</p> <dl> <dt>InternalServiceError</dt> <dd> <p>Internal service error.</p> </dd> <dt>LimitExceeded</dt> <dd> <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p> </dd> <dt>ResourceNotFound</dt> <dd> <p>The specified resource could not be found. </p> </dd> <dt>RequestThrottled</dt> <dd> <p>The request was throttled.</p> </dd> <dt>InvalidInput</dt> <dd> <p>An input parameter in the request is not valid.</p> </dd> </dl>"
        },
        "sampleFailureReason": {
          "shape": "GenericString",
          "documentation": "<p>The sample reason why the world failed. World errors are aggregated. A sample is used as the <code>sampleFailureReason</code>. </p>"
        },
        "failureCount": {
          "shape": "Integer",
          "documentation": "<p>The number of failed worlds.</p>"
        }
      },
      "documentation": "<p>Information about a failed world.</p>"
    },
    "WorldFailures": {
      "type": "list",
      "member": {
        "shape": "WorldFailure"
      },
      "max": 100,
      "min": 0
    },
    "WorldGenerationJobErrorCode": {
      "type": "string",
      "enum": [
        "InternalServiceError",
        "LimitExceeded",
        "ResourceNotFound",
        "RequestThrottled",
        "InvalidInput",
        "AllWorldGenerationFailed"
      ]
    },
    "WorldGenerationJobStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Running",
        "Completed",
        "Failed",
        "PartialFailed",
        "Canceling",
        "Canceled"
      ]
    },
    "WorldGenerationJobSummaries": {
      "type": "list",
      "member": {
        "shape": "WorldGenerationJobSummary"
      },
      "max": 100,
      "min": 0
    },
    "WorldGenerationJobSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world generator job.</p>"
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world generator job was created.</p>"
        },
        "status": {
          "shape": "WorldGenerationJobStatus",
          "documentation": "<p>The status of the world generator job:</p> <dl> <dt>Pending</dt> <dd> <p>The world generator job request is pending.</p> </dd> <dt>Running</dt> <dd> <p>The world generator job is running. </p> </dd> <dt>Completed</dt> <dd> <p>The world generator job completed. </p> </dd> <dt>Failed</dt> <dd> <p>The world generator job failed. See <code>failureCode</code> for more information. </p> </dd> <dt>PartialFailed</dt> <dd> <p>Some worlds did not generate.</p> </dd> <dt>Canceled</dt> <dd> <p>The world generator job was cancelled.</p> </dd> <dt>Canceling</dt> <dd> <p>The world generator job is being cancelled.</p> </dd> </dl>"
        },
        "worldCount": {
          "shape": "WorldCount",
          "documentation": "<p>Information about the world count.</p>"
        },
        "succeededWorldCount": {
          "shape": "Integer",
          "documentation": "<p>The number of worlds that were generated.</p>"
        },
        "failedWorldCount": {
          "shape": "Integer",
          "documentation": "<p>The number of worlds that failed.</p>"
        }
      },
      "documentation": "<p>Information about a world generator job.</p>"
    },
    "WorldSummaries": {
      "type": "list",
      "member": {
        "shape": "WorldSummary"
      }
    },
    "WorldSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the world.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the world was created.</p>"
        },
        "generationJob": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world generation job.</p>"
        },
        "template": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (arn) of the world template.</p>"
        }
      },
      "documentation": "<p>Information about a world.</p>"
    }
  },
  "documentation": "<p>This section provides documentation for the AWS RoboMaker API operations.</p>"
}
]===]))