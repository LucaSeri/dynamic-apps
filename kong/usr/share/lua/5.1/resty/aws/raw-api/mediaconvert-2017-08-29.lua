local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2017-08-29",
    "endpointPrefix": "mediaconvert",
    "signingName": "mediaconvert",
    "serviceFullName": "AWS Elemental MediaConvert",
    "serviceId": "MediaConvert",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "mediaconvert-2017-08-29",
    "signatureVersion": "v4",
    "serviceAbbreviation": "MediaConvert"
  },
  "operations": {
    "AssociateCertificate": {
      "name": "AssociateCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/certificates",
        "responseCode": 201
      },
      "input": {
        "shape": "AssociateCertificateRequest"
      },
      "output": {
        "shape": "AssociateCertificateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and cannot fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested does not exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service could not complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert."
    },
    "CancelJob": {
      "name": "CancelJob",
      "http": {
        "method": "DELETE",
        "requestUri": "/2017-08-29/jobs/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "CancelJobRequest"
      },
      "output": {
        "shape": "CancelJobResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Permanently cancel a job. Once you have canceled a job, you can't start it again."
    },
    "CreateJob": {
      "name": "CreateJob",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/jobs",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateJobRequest"
      },
      "output": {
        "shape": "CreateJobResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    },
    "CreateJobTemplate": {
      "name": "CreateJobTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/jobTemplates",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateJobTemplateRequest"
      },
      "output": {
        "shape": "CreateJobTemplateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    },
    "CreatePreset": {
      "name": "CreatePreset",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/presets",
        "responseCode": 201
      },
      "input": {
        "shape": "CreatePresetRequest"
      },
      "output": {
        "shape": "CreatePresetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
    },
    "CreateQueue": {
      "name": "CreateQueue",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/queues",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateQueueRequest"
      },
      "output": {
        "shape": "CreateQueueResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html"
    },
    "DeleteJobTemplate": {
      "name": "DeleteJobTemplate",
      "http": {
        "method": "DELETE",
        "requestUri": "/2017-08-29/jobTemplates/{name}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteJobTemplateRequest"
      },
      "output": {
        "shape": "DeleteJobTemplateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Permanently delete a job template you have created."
    },
    "DeletePreset": {
      "name": "DeletePreset",
      "http": {
        "method": "DELETE",
        "requestUri": "/2017-08-29/presets/{name}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeletePresetRequest"
      },
      "output": {
        "shape": "DeletePresetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Permanently delete a preset you have created."
    },
    "DeleteQueue": {
      "name": "DeleteQueue",
      "http": {
        "method": "DELETE",
        "requestUri": "/2017-08-29/queues/{name}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteQueueRequest"
      },
      "output": {
        "shape": "DeleteQueueResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Permanently delete a queue you have created."
    },
    "DescribeEndpoints": {
      "name": "DescribeEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/endpoints",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeEndpointsRequest"
      },
      "output": {
        "shape": "DescribeEndpointsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "InternalServiceException"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "AccessDeniedException"
        },
        {
          "shape": "NotFoundException",
          "documentation": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "LimitExceededException"
        },
        {
          "shape": "ConflictException",
          "documentation": "ResourceInUseException"
        }
      ],
      "documentation": "Send an request with an empty body to the regional API endpoint to get your account API endpoint."
    },
    "DisassociateCertificate": {
      "name": "DisassociateCertificate",
      "http": {
        "method": "DELETE",
        "requestUri": "/2017-08-29/certificates/{arn}",
        "responseCode": 202
      },
      "input": {
        "shape": "DisassociateCertificateRequest"
      },
      "output": {
        "shape": "DisassociateCertificateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and cannot fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested does not exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service could not complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource."
    },
    "GetJob": {
      "name": "GetJob",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/jobs/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetJobRequest"
      },
      "output": {
        "shape": "GetJobResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve the JSON for a specific completed transcoding job."
    },
    "GetJobTemplate": {
      "name": "GetJobTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/jobTemplates/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetJobTemplateRequest"
      },
      "output": {
        "shape": "GetJobTemplateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve the JSON for a specific job template."
    },
    "GetPreset": {
      "name": "GetPreset",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/presets/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetPresetRequest"
      },
      "output": {
        "shape": "GetPresetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve the JSON for a specific preset."
    },
    "GetQueue": {
      "name": "GetQueue",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/queues/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetQueueRequest"
      },
      "output": {
        "shape": "GetQueueResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve the JSON for a specific queue."
    },
    "ListJobTemplates": {
      "name": "ListJobTemplates",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/jobTemplates",
        "responseCode": 200
      },
      "input": {
        "shape": "ListJobTemplatesRequest"
      },
      "output": {
        "shape": "ListJobTemplatesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array"
    },
    "ListJobs": {
      "name": "ListJobs",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/jobs",
        "responseCode": 200
      },
      "input": {
        "shape": "ListJobsRequest"
      },
      "output": {
        "shape": "ListJobsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array."
    },
    "ListPresets": {
      "name": "ListPresets",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/presets",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPresetsRequest"
      },
      "output": {
        "shape": "ListPresetsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array."
    },
    "ListQueues": {
      "name": "ListQueues",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/queues",
        "responseCode": 200
      },
      "input": {
        "shape": "ListQueuesRequest"
      },
      "output": {
        "shape": "ListQueuesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array."
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/2017-08-29/tags/{arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Retrieve the tags for a MediaConvert resource."
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/2017-08-29/tags",
        "responseCode": 200
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "PUT",
        "requestUri": "/2017-08-29/tags/{arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html"
    },
    "UpdateJobTemplate": {
      "name": "UpdateJobTemplate",
      "http": {
        "method": "PUT",
        "requestUri": "/2017-08-29/jobTemplates/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateJobTemplateRequest"
      },
      "output": {
        "shape": "UpdateJobTemplateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Modify one of your existing job templates."
    },
    "UpdatePreset": {
      "name": "UpdatePreset",
      "http": {
        "method": "PUT",
        "requestUri": "/2017-08-29/presets/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdatePresetRequest"
      },
      "output": {
        "shape": "UpdatePresetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Modify one of your existing presets."
    },
    "UpdateQueue": {
      "name": "UpdateQueue",
      "http": {
        "method": "PUT",
        "requestUri": "/2017-08-29/queues/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateQueueRequest"
      },
      "output": {
        "shape": "UpdateQueueResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The service can't process your request because of a problem in the request. Please check your request form and syntax."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "The service encountered an unexpected condition and can't fulfill your request."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have permissions for this action with the credentials you sent."
        },
        {
          "shape": "NotFoundException",
          "documentation": "The resource you requested doesn't exist."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "Too many requests have been sent in too short of a time. The service limits the rate at which it will accept requests."
        },
        {
          "shape": "ConflictException",
          "documentation": "The service couldn't complete your request because there is a conflict with the current state of the resource."
        }
      ],
      "documentation": "Modify one of your existing queues."
    }
  },
  "shapes": {
    "AacAudioDescriptionBroadcasterMix": {
      "type": "string",
      "documentation": "Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains \"broadcaster mixed AD\". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.",
      "enum": [
        "BROADCASTER_MIXED_AD",
        "NORMAL"
      ]
    },
    "AacCodecProfile": {
      "type": "string",
      "documentation": "AAC Profile.",
      "enum": [
        "LC",
        "HEV1",
        "HEV2"
      ]
    },
    "AacCodingMode": {
      "type": "string",
      "documentation": "Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. \"1.0 - Audio Description (Receiver Mix)\" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.",
      "enum": [
        "AD_RECEIVER_MIX",
        "CODING_MODE_1_0",
        "CODING_MODE_1_1",
        "CODING_MODE_2_0",
        "CODING_MODE_5_1"
      ]
    },
    "AacRateControlMode": {
      "type": "string",
      "documentation": "Rate Control Mode.",
      "enum": [
        "CBR",
        "VBR"
      ]
    },
    "AacRawFormat": {
      "type": "string",
      "documentation": "Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose \"No container\" for the output container.",
      "enum": [
        "LATM_LOAS",
        "NONE"
      ]
    },
    "AacSettings": {
      "type": "structure",
      "members": {
        "AudioDescriptionBroadcasterMix": {
          "shape": "AacAudioDescriptionBroadcasterMix",
          "locationName": "audioDescriptionBroadcasterMix",
          "documentation": "Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains \"broadcaster mixed AD\". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType."
        },
        "Bitrate": {
          "shape": "__integerMin6000Max1024000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. The set of valid values for this setting is: 6000, 8000, 10000, 12000, 14000, 16000, 20000, 24000, 28000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 384000, 448000, 512000, 576000, 640000, 768000, 896000, 1024000. The value you set is also constrained by the values that you choose for Profile (codecProfile), Bitrate control mode (codingMode), and Sample rate (sampleRate). Default values depend on Bitrate control mode and Profile."
        },
        "CodecProfile": {
          "shape": "AacCodecProfile",
          "locationName": "codecProfile",
          "documentation": "AAC Profile."
        },
        "CodingMode": {
          "shape": "AacCodingMode",
          "locationName": "codingMode",
          "documentation": "Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. \"1.0 - Audio Description (Receiver Mix)\" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E."
        },
        "RateControlMode": {
          "shape": "AacRateControlMode",
          "locationName": "rateControlMode",
          "documentation": "Rate Control Mode."
        },
        "RawFormat": {
          "shape": "AacRawFormat",
          "locationName": "rawFormat",
          "documentation": "Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose \"No container\" for the output container."
        },
        "SampleRate": {
          "shape": "__integerMin8000Max96000",
          "locationName": "sampleRate",
          "documentation": "Sample rate in Hz. Valid values depend on rate control mode and profile."
        },
        "Specification": {
          "shape": "AacSpecification",
          "locationName": "specification",
          "documentation": "Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers."
        },
        "VbrQuality": {
          "shape": "AacVbrQuality",
          "locationName": "vbrQuality",
          "documentation": "VBR Quality Level - Only used if rate_control_mode is VBR."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to \"VBR\" or \"CBR\".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode."
    },
    "AacSpecification": {
      "type": "string",
      "documentation": "Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.",
      "enum": [
        "MPEG2",
        "MPEG4"
      ]
    },
    "AacVbrQuality": {
      "type": "string",
      "documentation": "VBR Quality Level - Only used if rate_control_mode is VBR.",
      "enum": [
        "LOW",
        "MEDIUM_LOW",
        "MEDIUM_HIGH",
        "HIGH"
      ]
    },
    "Ac3BitstreamMode": {
      "type": "string",
      "documentation": "Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E).",
      "enum": [
        "COMPLETE_MAIN",
        "COMMENTARY",
        "DIALOGUE",
        "EMERGENCY",
        "HEARING_IMPAIRED",
        "MUSIC_AND_EFFECTS",
        "VISUALLY_IMPAIRED",
        "VOICE_OVER"
      ]
    },
    "Ac3CodingMode": {
      "type": "string",
      "documentation": "Dolby Digital coding mode. Determines number of channels.",
      "enum": [
        "CODING_MODE_1_0",
        "CODING_MODE_1_1",
        "CODING_MODE_2_0",
        "CODING_MODE_3_2_LFE"
      ]
    },
    "Ac3DynamicRangeCompressionProfile": {
      "type": "string",
      "documentation": "If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.",
      "enum": [
        "FILM_STANDARD",
        "NONE"
      ]
    },
    "Ac3LfeFilter": {
      "type": "string",
      "documentation": "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Ac3MetadataControl": {
      "type": "string",
      "documentation": "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.",
      "enum": [
        "FOLLOW_INPUT",
        "USE_CONFIGURED"
      ]
    },
    "Ac3Settings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin64000Max640000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode."
        },
        "BitstreamMode": {
          "shape": "Ac3BitstreamMode",
          "locationName": "bitstreamMode",
          "documentation": "Specify the bitstream mode for the AC-3 stream that the encoder emits. For more information about the AC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
        },
        "CodingMode": {
          "shape": "Ac3CodingMode",
          "locationName": "codingMode",
          "documentation": "Dolby Digital coding mode. Determines number of channels."
        },
        "Dialnorm": {
          "shape": "__integerMin1Max31",
          "locationName": "dialnorm",
          "documentation": "Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through."
        },
        "DynamicRangeCompressionProfile": {
          "shape": "Ac3DynamicRangeCompressionProfile",
          "locationName": "dynamicRangeCompressionProfile",
          "documentation": "If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification."
        },
        "LfeFilter": {
          "shape": "Ac3LfeFilter",
          "locationName": "lfeFilter",
          "documentation": "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
        },
        "MetadataControl": {
          "shape": "Ac3MetadataControl",
          "locationName": "metadataControl",
          "documentation": "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
        },
        "SampleRate": {
          "shape": "__integerMin48000Max48000",
          "locationName": "sampleRate",
          "documentation": "This value is always 48000. It represents the sample rate in Hz."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3."
    },
    "AccelerationMode": {
      "type": "string",
      "documentation": "Specify whether the service runs your job with accelerated transcoding. Choose DISABLED if you don't want accelerated transcoding. Choose ENABLED if you want your job to run with accelerated transcoding and to fail if your input files or your job settings aren't compatible with accelerated transcoding. Choose PREFERRED if you want your job to run with accelerated transcoding if the job is compatible with the feature and to run at standard speed if it's not.",
      "enum": [
        "DISABLED",
        "ENABLED",
        "PREFERRED"
      ]
    },
    "AccelerationSettings": {
      "type": "structure",
      "members": {
        "Mode": {
          "shape": "AccelerationMode",
          "locationName": "mode",
          "documentation": "Specify the conditions when the service will run your job with accelerated transcoding."
        }
      },
      "documentation": "Accelerated transcoding can significantly speed up jobs with long, visually complex content.",
      "required": [
        "Mode"
      ]
    },
    "AccelerationStatus": {
      "type": "string",
      "documentation": "Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED.",
      "enum": [
        "NOT_APPLICABLE",
        "IN_PROGRESS",
        "ACCELERATED",
        "NOT_ACCELERATED"
      ]
    },
    "AfdSignaling": {
      "type": "string",
      "documentation": "This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.",
      "enum": [
        "NONE",
        "AUTO",
        "FIXED"
      ]
    },
    "AiffSettings": {
      "type": "structure",
      "members": {
        "BitDepth": {
          "shape": "__integerMin16Max24",
          "locationName": "bitDepth",
          "documentation": "Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track."
        },
        "Channels": {
          "shape": "__integerMin1Max64",
          "locationName": "channels",
          "documentation": "Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64."
        },
        "SampleRate": {
          "shape": "__integerMin8000Max192000",
          "locationName": "sampleRate",
          "documentation": "Sample rate in hz."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF."
    },
    "AlphaBehavior": {
      "type": "string",
      "documentation": "Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs.",
      "enum": [
        "DISCARD",
        "REMAP_TO_LUMA"
      ]
    },
    "AncillaryConvert608To708": {
      "type": "string",
      "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.",
      "enum": [
        "UPCONVERT",
        "DISABLED"
      ]
    },
    "AncillarySourceSettings": {
      "type": "structure",
      "members": {
        "Convert608To708": {
          "shape": "AncillaryConvert608To708",
          "locationName": "convert608To708",
          "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
        },
        "SourceAncillaryChannelNumber": {
          "shape": "__integerMin1Max4",
          "locationName": "sourceAncillaryChannelNumber",
          "documentation": "Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough."
        },
        "TerminateCaptions": {
          "shape": "AncillaryTerminateCaptions",
          "locationName": "terminateCaptions",
          "documentation": "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
        }
      },
      "documentation": "Settings for ancillary captions source."
    },
    "AncillaryTerminateCaptions": {
      "type": "string",
      "documentation": "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.",
      "enum": [
        "END_OF_INPUT",
        "DISABLED"
      ]
    },
    "AntiAlias": {
      "type": "string",
      "documentation": "The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "AssociateCertificateRequest": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The ARN of the ACM certificate that you want to associate with your MediaConvert resource."
        }
      },
      "required": [
        "Arn"
      ]
    },
    "AssociateCertificateResponse": {
      "type": "structure",
      "members": {}
    },
    "AudioChannelTag": {
      "type": "string",
      "documentation": "You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS).",
      "enum": [
        "L",
        "R",
        "C",
        "LFE",
        "LS",
        "RS",
        "LC",
        "RC",
        "CS",
        "LSD",
        "RSD",
        "TCS",
        "VHL",
        "VHC",
        "VHR"
      ]
    },
    "AudioChannelTaggingSettings": {
      "type": "structure",
      "members": {
        "ChannelTag": {
          "shape": "AudioChannelTag",
          "locationName": "channelTag",
          "documentation": "You can add a tag for this mono-channel audio track to mimic its placement in a multi-channel layout.  For example, if this track is the left surround channel, choose Left surround (LS)."
        }
      },
      "documentation": "When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel."
    },
    "AudioCodec": {
      "type": "string",
      "documentation": "Type of Audio codec.",
      "enum": [
        "AAC",
        "MP2",
        "MP3",
        "WAV",
        "AIFF",
        "AC3",
        "EAC3",
        "EAC3_ATMOS",
        "VORBIS",
        "OPUS",
        "PASSTHROUGH"
      ]
    },
    "AudioCodecSettings": {
      "type": "structure",
      "members": {
        "AacSettings": {
          "shape": "AacSettings",
          "locationName": "aacSettings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to \"VBR\" or \"CBR\".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode."
        },
        "Ac3Settings": {
          "shape": "Ac3Settings",
          "locationName": "ac3Settings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3."
        },
        "AiffSettings": {
          "shape": "AiffSettings",
          "locationName": "aiffSettings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF."
        },
        "Codec": {
          "shape": "AudioCodec",
          "locationName": "codec",
          "documentation": "Type of Audio codec."
        },
        "Eac3AtmosSettings": {
          "shape": "Eac3AtmosSettings",
          "locationName": "eac3AtmosSettings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS."
        },
        "Eac3Settings": {
          "shape": "Eac3Settings",
          "locationName": "eac3Settings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3."
        },
        "Mp2Settings": {
          "shape": "Mp2Settings",
          "locationName": "mp2Settings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2."
        },
        "Mp3Settings": {
          "shape": "Mp3Settings",
          "locationName": "mp3Settings",
          "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3."
        },
        "OpusSettings": {
          "shape": "OpusSettings",
          "locationName": "opusSettings",
          "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS."
        },
        "VorbisSettings": {
          "shape": "VorbisSettings",
          "locationName": "vorbisSettings",
          "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis."
        },
        "WavSettings": {
          "shape": "WavSettings",
          "locationName": "wavSettings",
          "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV."
        }
      },
      "documentation": "Audio codec settings (CodecSettings) under (AudioDescriptions) contains the group of settings related to audio encoding. The settings in this group vary depending on the value that you choose for Audio codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AAC, AacSettings * MP2, Mp2Settings * MP3, Mp3Settings * WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings * EAC3_ATMOS, Eac3AtmosSettings * VORBIS, VorbisSettings * OPUS, OpusSettings"
    },
    "AudioDefaultSelection": {
      "type": "string",
      "documentation": "Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.",
      "enum": [
        "DEFAULT",
        "NOT_DEFAULT"
      ]
    },
    "AudioDescription": {
      "type": "structure",
      "members": {
        "AudioChannelTaggingSettings": {
          "shape": "AudioChannelTaggingSettings",
          "locationName": "audioChannelTaggingSettings",
          "documentation": "When you mimic a multi-channel audio layout with multiple mono-channel tracks, you can tag each channel layout manually. For example, you would tag the tracks that contain your left, right, and center audio with Left (L), Right (R), and Center (C), respectively. When you don't specify a value, MediaConvert labels your track as Center (C) by default. To use audio layout tagging, your output must be in a QuickTime (.mov) container; your audio codec must be AAC, WAV, or AIFF; and you must set up your audio track to have only one channel."
        },
        "AudioNormalizationSettings": {
          "shape": "AudioNormalizationSettings",
          "locationName": "audioNormalizationSettings",
          "documentation": "Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard."
        },
        "AudioSourceName": {
          "shape": "__string",
          "locationName": "audioSourceName",
          "documentation": "Specifies which audio data to use from each input. In the simplest case, specify an \"Audio Selector\":#inputs-audio_selector by name based on its order within each input. For example if you specify \"Audio Selector 3\", then the third audio selector will be used from each input. If an input does not have an \"Audio Selector 3\", then the audio selector marked as \"default\" in that input will be used. If there is no audio selector marked as \"default\", silence will be inserted for the duration of that input. Alternatively, an \"Audio Selector Group\":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then \"Audio Selector 1\" will be chosen automatically."
        },
        "AudioType": {
          "shape": "__integerMin0Max255",
          "locationName": "audioType",
          "documentation": "Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved."
        },
        "AudioTypeControl": {
          "shape": "AudioTypeControl",
          "locationName": "audioTypeControl",
          "documentation": "When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD."
        },
        "CodecSettings": {
          "shape": "AudioCodecSettings",
          "locationName": "codecSettings",
          "documentation": "Audio codec settings (CodecSettings) under (AudioDescriptions) contains the group of settings related to audio encoding. The settings in this group vary depending on the value that you choose for Audio codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AAC, AacSettings * MP2, Mp2Settings * MP3, Mp3Settings * WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings * EAC3_ATMOS, Eac3AtmosSettings * VORBIS, VorbisSettings * OPUS, OpusSettings"
        },
        "CustomLanguageCode": {
          "shape": "__stringPatternAZaZ23AZaZ",
          "locationName": "customLanguageCode",
          "documentation": "Specify the language for this audio output track. The service puts this language code into your output audio track when you set Language code control (AudioLanguageCodeControl) to Use configured (USE_CONFIGURED). The service also uses your specified custom language code when you set Language code control (AudioLanguageCodeControl) to Follow input (FOLLOW_INPUT), but your input file doesn't specify a language code. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input."
        },
        "LanguageCodeControl": {
          "shape": "AudioLanguageCodeControl",
          "locationName": "languageCodeControl",
          "documentation": "Specify which source for language code takes precedence for this audio track. When you choose Follow input (FOLLOW_INPUT), the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code (languageCode or customLanguageCode). When you choose Use configured (USE_CONFIGURED), the service uses the language code that you specify."
        },
        "RemixSettings": {
          "shape": "RemixSettings",
          "locationName": "remixSettings",
          "documentation": "Advanced audio remixing settings."
        },
        "StreamName": {
          "shape": "__stringPatternWS",
          "locationName": "streamName",
          "documentation": "Specify a label for this output audio stream. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
        }
      },
      "documentation": "Description of audio output"
    },
    "AudioLanguageCodeControl": {
      "type": "string",
      "documentation": "Specify which source for language code takes precedence for this audio track. When you choose Follow input (FOLLOW_INPUT), the service uses the language code from the input track if it's present. If there's no languge code on the input track, the service uses the code that you specify in the setting Language code (languageCode or customLanguageCode). When you choose Use configured (USE_CONFIGURED), the service uses the language code that you specify.",
      "enum": [
        "FOLLOW_INPUT",
        "USE_CONFIGURED"
      ]
    },
    "AudioNormalizationAlgorithm": {
      "type": "string",
      "documentation": "Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1.",
      "enum": [
        "ITU_BS_1770_1",
        "ITU_BS_1770_2",
        "ITU_BS_1770_3",
        "ITU_BS_1770_4"
      ]
    },
    "AudioNormalizationAlgorithmControl": {
      "type": "string",
      "documentation": "When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.",
      "enum": [
        "CORRECT_AUDIO",
        "MEASURE_ONLY"
      ]
    },
    "AudioNormalizationLoudnessLogging": {
      "type": "string",
      "documentation": "If set to LOG, log each output's audio track loudness to a CSV file.",
      "enum": [
        "LOG",
        "DONT_LOG"
      ]
    },
    "AudioNormalizationPeakCalculation": {
      "type": "string",
      "documentation": "If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.",
      "enum": [
        "TRUE_PEAK",
        "NONE"
      ]
    },
    "AudioNormalizationSettings": {
      "type": "structure",
      "members": {
        "Algorithm": {
          "shape": "AudioNormalizationAlgorithm",
          "locationName": "algorithm",
          "documentation": "Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1."
        },
        "AlgorithmControl": {
          "shape": "AudioNormalizationAlgorithmControl",
          "locationName": "algorithmControl",
          "documentation": "When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted."
        },
        "CorrectionGateLevel": {
          "shape": "__integerMinNegative70Max0",
          "locationName": "correctionGateLevel",
          "documentation": "Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected."
        },
        "LoudnessLogging": {
          "shape": "AudioNormalizationLoudnessLogging",
          "locationName": "loudnessLogging",
          "documentation": "If set to LOG, log each output's audio track loudness to a CSV file."
        },
        "PeakCalculation": {
          "shape": "AudioNormalizationPeakCalculation",
          "locationName": "peakCalculation",
          "documentation": "If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness."
        },
        "TargetLkfs": {
          "shape": "__doubleMinNegative59Max0",
          "locationName": "targetLkfs",
          "documentation": "When you use Audio normalization (AudioNormalizationSettings), optionally use this setting to specify a target loudness. If you don't specify a value here, the encoder chooses a value for you, based on the algorithm that you choose for Algorithm (algorithm). If you choose algorithm 1770-1, the encoder will choose -24 LKFS; otherwise, the encoder will choose -23 LKFS."
        }
      },
      "documentation": "Advanced audio normalization settings. Ignore these settings unless you need to comply with a loudness standard."
    },
    "AudioSelector": {
      "type": "structure",
      "members": {
        "CustomLanguageCode": {
          "shape": "__stringMin3Max3PatternAZaZ3",
          "locationName": "customLanguageCode",
          "documentation": "Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code"
        },
        "DefaultSelection": {
          "shape": "AudioDefaultSelection",
          "locationName": "defaultSelection",
          "documentation": "Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio."
        },
        "ExternalAudioFileInput": {
          "shape": "__stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE",
          "locationName": "externalAudioFileInput",
          "documentation": "Specifies audio data from an external file source."
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "Selects a specific language code from within an audio source."
        },
        "Offset": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "offset",
          "documentation": "Specifies a time delta in milliseconds to offset the audio from the input video."
        },
        "Pids": {
          "shape": "__listOf__integerMin1Max2147483647",
          "locationName": "pids",
          "documentation": "Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101)."
        },
        "ProgramSelection": {
          "shape": "__integerMin0Max8",
          "locationName": "programSelection",
          "documentation": "Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track."
        },
        "RemixSettings": {
          "shape": "RemixSettings",
          "locationName": "remixSettings",
          "documentation": "Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other."
        },
        "SelectorType": {
          "shape": "AudioSelectorType",
          "locationName": "selectorType",
          "documentation": "Specifies the type of the audio selector."
        },
        "Tracks": {
          "shape": "__listOf__integerMin1Max2147483647",
          "locationName": "tracks",
          "documentation": "Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type \"1,2,3\" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, \"tracks\": [1,2,3]."
        }
      },
      "documentation": "Selector for Audio"
    },
    "AudioSelectorGroup": {
      "type": "structure",
      "members": {
        "AudioSelectorNames": {
          "shape": "__listOf__stringMin1",
          "locationName": "audioSelectorNames",
          "documentation": "Name of an Audio Selector within the same input to include in the group.  Audio selector names are standardized, based on their order within the input (e.g., \"Audio Selector 1\"). The audio selector name parameter can be repeated to add any number of audio selectors to the group."
        }
      },
      "documentation": "Group of Audio Selectors"
    },
    "AudioSelectorType": {
      "type": "string",
      "documentation": "Specifies the type of the audio selector.",
      "enum": [
        "PID",
        "TRACK",
        "LANGUAGE_CODE"
      ]
    },
    "AudioTypeControl": {
      "type": "string",
      "documentation": "When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.",
      "enum": [
        "FOLLOW_INPUT",
        "USE_CONFIGURED"
      ]
    },
    "Av1AdaptiveQuantization": {
      "type": "string",
      "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.",
      "enum": [
        "OFF",
        "LOW",
        "MEDIUM",
        "HIGH",
        "HIGHER",
        "MAX"
      ]
    },
    "Av1FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Av1FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "Av1QvbrSettings": {
      "type": "structure",
      "members": {
        "QvbrQualityLevel": {
          "shape": "__integerMin1Max10",
          "locationName": "qvbrQualityLevel",
          "documentation": "Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within av1Settings. Specify the general target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
        },
        "QvbrQualityLevelFineTune": {
          "shape": "__doubleMin0Max1",
          "locationName": "qvbrQualityLevelFineTune",
          "documentation": "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
        }
      },
      "documentation": "Settings for quality-defined variable bitrate encoding with the AV1 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
    },
    "Av1RateControlMode": {
      "type": "string",
      "documentation": "'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'",
      "enum": [
        "QVBR"
      ]
    },
    "Av1Settings": {
      "type": "structure",
      "members": {
        "AdaptiveQuantization": {
          "shape": "Av1AdaptiveQuantization",
          "locationName": "adaptiveQuantization",
          "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality."
        },
        "FramerateControl": {
          "shape": "Av1FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "Av1FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "Specify the GOP length (keyframe interval) in frames. With AV1, MediaConvert doesn't support GOP length in seconds. This value must be greater than zero and preferably equal to 1 + ((numberBFrames + 1) * x), where x is an integer value."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "maxBitrate",
          "documentation": "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
        },
        "NumberBFramesBetweenReferenceFrames": {
          "shape": "__integerMin7Max15",
          "locationName": "numberBFramesBetweenReferenceFrames",
          "documentation": "Specify the number of B-frames. With AV1, MediaConvert supports only 7 or 15."
        },
        "QvbrSettings": {
          "shape": "Av1QvbrSettings",
          "locationName": "qvbrSettings",
          "documentation": "Settings for quality-defined variable bitrate encoding with the AV1 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
        },
        "RateControlMode": {
          "shape": "Av1RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "'With AV1 outputs, for rate control mode, MediaConvert supports only quality-defined variable bitrate (QVBR). You can''t use CBR or VBR.'"
        },
        "Slices": {
          "shape": "__integerMin1Max32",
          "locationName": "slices",
          "documentation": "Specify the number of slices per picture. This value must be 1, 2, 4, 8, 16, or 32. For progressive pictures, this value must be less than or equal to the number of macroblock rows. For interlaced pictures, this value must be less than or equal to half the number of macroblock rows."
        },
        "SpatialAdaptiveQuantization": {
          "shape": "Av1SpatialAdaptiveQuantization",
          "locationName": "spatialAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on spatial variation of content complexity."
        }
      },
      "documentation": "Required when you set Codec, under VideoDescription>CodecSettings to the value AV1."
    },
    "Av1SpatialAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on spatial variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "AvailBlanking": {
      "type": "structure",
      "members": {
        "AvailBlankingImage": {
          "shape": "__stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG",
          "locationName": "availBlankingImage",
          "documentation": "Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported."
        }
      },
      "documentation": "Settings for Avail Blanking"
    },
    "BillingTagsSource": {
      "type": "string",
      "documentation": "The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up.",
      "enum": [
        "QUEUE",
        "PRESET",
        "JOB_TEMPLATE",
        "JOB"
      ]
    },
    "BurninDestinationSettings": {
      "type": "structure",
      "members": {
        "Alignment": {
          "shape": "BurninSubtitleAlignment",
          "locationName": "alignment",
          "documentation": "If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "BackgroundColor": {
          "shape": "BurninSubtitleBackgroundColor",
          "locationName": "backgroundColor",
          "documentation": "Specifies the color of the rectangle behind the captions.\nAll burn-in and DVB-Sub font settings must match."
        },
        "BackgroundOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "backgroundOpacity",
          "documentation": "Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match."
        },
        "FontColor": {
          "shape": "BurninSubtitleFontColor",
          "locationName": "fontColor",
          "documentation": "Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "FontOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "fontOpacity",
          "documentation": "Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.\nAll burn-in and DVB-Sub font settings must match."
        },
        "FontResolution": {
          "shape": "__integerMin96Max600",
          "locationName": "fontResolution",
          "documentation": "Font resolution in DPI (dots per inch); default is 96 dpi.\nAll burn-in and DVB-Sub font settings must match."
        },
        "FontScript": {
          "shape": "FontScript",
          "locationName": "fontScript",
          "documentation": "Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use \"AUTOMATIC\" or leave unset. This is used to help determine the appropriate font for rendering burn-in captions."
        },
        "FontSize": {
          "shape": "__integerMin0Max96",
          "locationName": "fontSize",
          "documentation": "A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match."
        },
        "OutlineColor": {
          "shape": "BurninSubtitleOutlineColor",
          "locationName": "outlineColor",
          "documentation": "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "OutlineSize": {
          "shape": "__integerMin0Max10",
          "locationName": "outlineSize",
          "documentation": "Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "ShadowColor": {
          "shape": "BurninSubtitleShadowColor",
          "locationName": "shadowColor",
          "documentation": "Specifies the color of the shadow cast by the captions.\nAll burn-in and DVB-Sub font settings must match."
        },
        "ShadowOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "shadowOpacity",
          "documentation": "Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match."
        },
        "ShadowXOffset": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "shadowXOffset",
          "documentation": "Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match."
        },
        "ShadowYOffset": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "shadowYOffset",
          "documentation": "Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match."
        },
        "TeletextSpacing": {
          "shape": "BurninSubtitleTeletextSpacing",
          "locationName": "teletextSpacing",
          "documentation": "Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption."
        },
        "XPosition": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "xPosition",
          "documentation": "Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "YPosition": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "yPosition",
          "documentation": "Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        }
      },
      "documentation": "Burn-In Destination Settings."
    },
    "BurninSubtitleAlignment": {
      "type": "string",
      "documentation": "If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "CENTERED",
        "LEFT"
      ]
    },
    "BurninSubtitleBackgroundColor": {
      "type": "string",
      "documentation": "Specifies the color of the rectangle behind the captions.\nAll burn-in and DVB-Sub font settings must match.",
      "enum": [
        "NONE",
        "BLACK",
        "WHITE"
      ]
    },
    "BurninSubtitleFontColor": {
      "type": "string",
      "documentation": "Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "WHITE",
        "BLACK",
        "YELLOW",
        "RED",
        "GREEN",
        "BLUE"
      ]
    },
    "BurninSubtitleOutlineColor": {
      "type": "string",
      "documentation": "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "BLACK",
        "WHITE",
        "YELLOW",
        "RED",
        "GREEN",
        "BLUE"
      ]
    },
    "BurninSubtitleShadowColor": {
      "type": "string",
      "documentation": "Specifies the color of the shadow cast by the captions.\nAll burn-in and DVB-Sub font settings must match.",
      "enum": [
        "NONE",
        "BLACK",
        "WHITE"
      ]
    },
    "BurninSubtitleTeletextSpacing": {
      "type": "string",
      "documentation": "Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.",
      "enum": [
        "FIXED_GRID",
        "PROPORTIONAL"
      ]
    },
    "CancelJobRequest": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "The Job ID of the job to be cancelled.",
          "location": "uri"
        }
      },
      "required": [
        "Id"
      ]
    },
    "CancelJobResponse": {
      "type": "structure",
      "members": {}
    },
    "CaptionDescription": {
      "type": "structure",
      "members": {
        "CaptionSelectorName": {
          "shape": "__stringMin1",
          "locationName": "captionSelectorName",
          "documentation": "Specifies which \"Caption Selector\":#inputs-caption_selector to use from each input when generating captions. The name should be of the format \"Caption Selector <N>\", which denotes that the Nth Caption Selector will be used from each input."
        },
        "CustomLanguageCode": {
          "shape": "__stringPatternAZaZ23AZaZ",
          "locationName": "customLanguageCode",
          "documentation": "Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
        },
        "DestinationSettings": {
          "shape": "CaptionDestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext."
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text."
        },
        "LanguageDescription": {
          "shape": "__string",
          "locationName": "languageDescription",
          "documentation": "Specify a label for this set of output captions. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
        }
      },
      "documentation": "Description of Caption output"
    },
    "CaptionDescriptionPreset": {
      "type": "structure",
      "members": {
        "CustomLanguageCode": {
          "shape": "__stringPatternAZaZ23AZaZ",
          "locationName": "customLanguageCode",
          "documentation": "Specify the language for this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information when automatically selecting the font script for rendering the captions text. For all outputs, you can use an ISO 639-2 or ISO 639-3 code. For streaming outputs, you can also use any other code in the full RFC-5646 specification. Streaming outputs are those that are in one of the following output groups: CMAF, DASH ISO, Apple HLS, or Microsoft Smooth Streaming."
        },
        "DestinationSettings": {
          "shape": "CaptionDestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext."
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "Specify the language of this captions output track. For most captions output formats, the encoder puts this language information in the output captions metadata. If your output captions format is DVB-Sub or Burn in, the encoder uses this language information to choose the font language for rendering the captions text."
        },
        "LanguageDescription": {
          "shape": "__string",
          "locationName": "languageDescription",
          "documentation": "Specify a label for this set of output captions. For example, \"English\", \"Director commentary\", or \"track_2\". For streaming outputs, MediaConvert passes this information into destination manifests for display on the end-viewer's player device. For outputs in other output groups, the service ignores this setting."
        }
      },
      "documentation": "Caption Description for preset"
    },
    "CaptionDestinationSettings": {
      "type": "structure",
      "members": {
        "BurninDestinationSettings": {
          "shape": "BurninDestinationSettings",
          "locationName": "burninDestinationSettings",
          "documentation": "Burn-In Destination Settings."
        },
        "DestinationType": {
          "shape": "CaptionDestinationType",
          "locationName": "destinationType",
          "documentation": "Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Other options are embedded with SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT. If you are using SCTE-20, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED) to create an output that complies with the SCTE-43 spec. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20)."
        },
        "DvbSubDestinationSettings": {
          "shape": "DvbSubDestinationSettings",
          "locationName": "dvbSubDestinationSettings",
          "documentation": "DVB-Sub Destination Settings"
        },
        "EmbeddedDestinationSettings": {
          "shape": "EmbeddedDestinationSettings",
          "locationName": "embeddedDestinationSettings",
          "documentation": "Settings specific to embedded/ancillary caption outputs, including 608/708 Channel destination number."
        },
        "ImscDestinationSettings": {
          "shape": "ImscDestinationSettings",
          "locationName": "imscDestinationSettings",
          "documentation": "Settings specific to IMSC caption outputs."
        },
        "SccDestinationSettings": {
          "shape": "SccDestinationSettings",
          "locationName": "sccDestinationSettings",
          "documentation": "Settings for SCC caption output."
        },
        "TeletextDestinationSettings": {
          "shape": "TeletextDestinationSettings",
          "locationName": "teletextDestinationSettings",
          "documentation": "Settings for Teletext caption output"
        },
        "TtmlDestinationSettings": {
          "shape": "TtmlDestinationSettings",
          "locationName": "ttmlDestinationSettings",
          "documentation": "Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough)."
        }
      },
      "documentation": "Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext."
    },
    "CaptionDestinationType": {
      "type": "string",
      "documentation": "Specify the format for this set of captions on this output. The default format is embedded without SCTE-20. Other options are embedded with SCTE-20, burn-in, DVB-sub, IMSC, SCC, SRT, teletext, TTML, and web-VTT. If you are using SCTE-20, choose SCTE-20 plus embedded (SCTE20_PLUS_EMBEDDED) to create an output that complies with the SCTE-43 spec. To create a non-compliant output where the embedded captions come first, choose Embedded plus SCTE-20 (EMBEDDED_PLUS_SCTE20).",
      "enum": [
        "BURN_IN",
        "DVB_SUB",
        "EMBEDDED",
        "EMBEDDED_PLUS_SCTE20",
        "IMSC",
        "SCTE20_PLUS_EMBEDDED",
        "SCC",
        "SRT",
        "SMI",
        "TELETEXT",
        "TTML",
        "WEBVTT"
      ]
    },
    "CaptionSelector": {
      "type": "structure",
      "members": {
        "CustomLanguageCode": {
          "shape": "__stringMin3Max3PatternAZaZ3",
          "locationName": "customLanguageCode",
          "documentation": "The specific language to extract from source, using the ISO 639-2 or ISO 639-3 three-letter language code. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions."
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions."
        },
        "SourceSettings": {
          "shape": "CaptionSourceSettings",
          "locationName": "sourceSettings",
          "documentation": "If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
        }
      },
      "documentation": "Set up captions in your outputs by first selecting them from your input here."
    },
    "CaptionSourceFramerate": {
      "type": "structure",
      "members": {
        "FramerateDenominator": {
          "shape": "__integerMin1Max1001",
          "locationName": "framerateDenominator",
          "documentation": "Specify the denominator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate numerator (framerateNumerator)."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max60000",
          "locationName": "framerateNumerator",
          "documentation": "Specify the numerator of the fraction that represents the frame rate for the setting Caption source frame rate (CaptionSourceFramerate). Use this setting along with the setting Framerate denominator (framerateDenominator)."
        }
      },
      "documentation": "Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction, using the settings Framerate numerator (framerateNumerator) and Framerate denominator (framerateDenominator). For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps."
    },
    "CaptionSourceSettings": {
      "type": "structure",
      "members": {
        "AncillarySourceSettings": {
          "shape": "AncillarySourceSettings",
          "locationName": "ancillarySourceSettings",
          "documentation": "Settings for ancillary captions source."
        },
        "DvbSubSourceSettings": {
          "shape": "DvbSubSourceSettings",
          "locationName": "dvbSubSourceSettings",
          "documentation": "DVB Sub Source Settings"
        },
        "EmbeddedSourceSettings": {
          "shape": "EmbeddedSourceSettings",
          "locationName": "embeddedSourceSettings",
          "documentation": "Settings for embedded captions Source"
        },
        "FileSourceSettings": {
          "shape": "FileSourceSettings",
          "locationName": "fileSourceSettings",
          "documentation": "If your input captions are SCC, SMI, SRT, STL, TTML, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
        },
        "SourceType": {
          "shape": "CaptionSourceType",
          "locationName": "sourceType",
          "documentation": "Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format."
        },
        "TeletextSourceSettings": {
          "shape": "TeletextSourceSettings",
          "locationName": "teletextSourceSettings",
          "documentation": "Settings specific to Teletext caption sources, including Page number."
        },
        "TrackSourceSettings": {
          "shape": "TrackSourceSettings",
          "locationName": "trackSourceSettings",
          "documentation": "Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings."
        }
      },
      "documentation": "If your input captions are SCC, TTML, STL, SMI, SRT, or IMSC in an xml file, specify the URI of the input captions source file. If your input captions are IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
    },
    "CaptionSourceType": {
      "type": "string",
      "documentation": "Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.",
      "enum": [
        "ANCILLARY",
        "DVB_SUB",
        "EMBEDDED",
        "SCTE20",
        "SCC",
        "TTML",
        "STL",
        "SRT",
        "SMI",
        "TELETEXT",
        "NULL_SOURCE",
        "IMSC"
      ]
    },
    "ChannelMapping": {
      "type": "structure",
      "members": {
        "OutputChannels": {
          "shape": "__listOfOutputChannelMapping",
          "locationName": "outputChannels",
          "documentation": "List of output channels"
        }
      },
      "documentation": "Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel. Units are in dB. Acceptable values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification)."
    },
    "CmafAdditionalManifest": {
      "type": "structure",
      "members": {
        "ManifestNameModifier": {
          "shape": "__stringMin1",
          "locationName": "manifestNameModifier",
          "documentation": "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests."
        },
        "SelectedOutputs": {
          "shape": "__listOf__stringMin1",
          "locationName": "selectedOutputs",
          "documentation": "Specify the outputs that you want this additional top-level manifest to reference."
        }
      },
      "documentation": "Specify the details for each pair of HLS and DASH additional manifests that you want the service to generate for this CMAF output group. Each pair of manifests can reference a different subset of outputs in the group."
    },
    "CmafClientCache": {
      "type": "string",
      "documentation": "When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "CmafCodecSpecification": {
      "type": "string",
      "documentation": "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.",
      "enum": [
        "RFC_6381",
        "RFC_4281"
      ]
    },
    "CmafEncryptionSettings": {
      "type": "structure",
      "members": {
        "ConstantInitializationVector": {
          "shape": "__stringMin32Max32Pattern09aFAF32",
          "locationName": "constantInitializationVector",
          "documentation": "This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default."
        },
        "EncryptionMethod": {
          "shape": "CmafEncryptionType",
          "locationName": "encryptionMethod",
          "documentation": "Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or AES_CTR (AES-CTR)."
        },
        "InitializationVectorInManifest": {
          "shape": "CmafInitializationVectorInManifest",
          "locationName": "initializationVectorInManifest",
          "documentation": "When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests."
        },
        "SpekeKeyProvider": {
          "shape": "SpekeKeyProviderCmaf",
          "locationName": "spekeKeyProvider",
          "documentation": "If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead."
        },
        "StaticKeyProvider": {
          "shape": "StaticKeyProvider",
          "locationName": "staticKeyProvider",
          "documentation": "Use these settings to set up encryption with a static key provider."
        },
        "Type": {
          "shape": "CmafKeyProviderType",
          "locationName": "type",
          "documentation": "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
        }
      },
      "documentation": "Settings for CMAF encryption"
    },
    "CmafEncryptionType": {
      "type": "string",
      "documentation": "Specify the encryption scheme that you want the service to use when encrypting your CMAF segments. Choose AES-CBC subsample (SAMPLE-AES) or AES_CTR (AES-CTR).",
      "enum": [
        "SAMPLE_AES",
        "AES_CTR"
      ]
    },
    "CmafGroupSettings": {
      "type": "structure",
      "members": {
        "AdditionalManifests": {
          "shape": "__listOfCmafAdditionalManifest",
          "locationName": "additionalManifests",
          "documentation": "By default, the service creates one top-level .m3u8 HLS manifest and one top -level .mpd DASH manifest for each CMAF output group in your job. These default manifests reference every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here. For each additional manifest that you specify, the service creates one HLS manifest and one DASH manifest."
        },
        "BaseUrl": {
          "shape": "__string",
          "locationName": "baseUrl",
          "documentation": "A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file."
        },
        "ClientCache": {
          "shape": "CmafClientCache",
          "locationName": "clientCache",
          "documentation": "When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay."
        },
        "CodecSpecification": {
          "shape": "CmafCodecSpecification",
          "locationName": "codecSpecification",
          "documentation": "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
        },
        "Destination": {
          "shape": "__stringPatternS3",
          "locationName": "destination",
          "documentation": "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
        },
        "DestinationSettings": {
          "shape": "DestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Settings associated with the destination. Will vary based on the type of destination"
        },
        "Encryption": {
          "shape": "CmafEncryptionSettings",
          "locationName": "encryption",
          "documentation": "DRM settings."
        },
        "FragmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "fragmentLength",
          "documentation": "Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types."
        },
        "ManifestCompression": {
          "shape": "CmafManifestCompression",
          "locationName": "manifestCompression",
          "documentation": "When set to GZIP, compresses HLS playlist."
        },
        "ManifestDurationFormat": {
          "shape": "CmafManifestDurationFormat",
          "locationName": "manifestDurationFormat",
          "documentation": "Indicates whether the output manifest should use floating point values for segment duration."
        },
        "MinBufferTime": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "minBufferTime",
          "documentation": "Minimum time of initially buffered media that is needed to ensure smooth playout."
        },
        "MinFinalSegmentLength": {
          "shape": "__doubleMin0Max2147483647",
          "locationName": "minFinalSegmentLength",
          "documentation": "Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds."
        },
        "MpdProfile": {
          "shape": "CmafMpdProfile",
          "locationName": "mpdProfile",
          "documentation": "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
        },
        "SegmentControl": {
          "shape": "CmafSegmentControl",
          "locationName": "segmentControl",
          "documentation": "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
        },
        "SegmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "segmentLength",
          "documentation": "Use this setting to specify the length, in seconds, of each individual CMAF segment. This value applies to the whole package; that is, to every output in the output group. Note that segments end on the first keyframe after this number of seconds, so the actual segment length might be slightly longer. If you set Segment control (CmafSegmentControl) to single file, the service puts the content of each output in a single file that has metadata that marks these segments. If you set it to segmented files, the service creates multiple files for each output, each with the content of one segment."
        },
        "StreamInfResolution": {
          "shape": "CmafStreamInfResolution",
          "locationName": "streamInfResolution",
          "documentation": "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
        },
        "WriteDashManifest": {
          "shape": "CmafWriteDASHManifest",
          "locationName": "writeDashManifest",
          "documentation": "When set to ENABLED, a DASH MPD manifest will be generated for this output."
        },
        "WriteHlsManifest": {
          "shape": "CmafWriteHLSManifest",
          "locationName": "writeHlsManifest",
          "documentation": "When set to ENABLED, an Apple HLS manifest will be generated for this output."
        },
        "WriteSegmentTimelineInRepresentation": {
          "shape": "CmafWriteSegmentTimelineInRepresentation",
          "locationName": "writeSegmentTimelineInRepresentation",
          "documentation": "When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element."
        }
      },
      "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output."
    },
    "CmafInitializationVectorInManifest": {
      "type": "string",
      "documentation": "When you use DRM with CMAF outputs, choose whether the service writes the 128-bit encryption initialization vector in the HLS and DASH manifests.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "CmafKeyProviderType": {
      "type": "string",
      "documentation": "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.",
      "enum": [
        "SPEKE",
        "STATIC_KEY"
      ]
    },
    "CmafManifestCompression": {
      "type": "string",
      "documentation": "When set to GZIP, compresses HLS playlist.",
      "enum": [
        "GZIP",
        "NONE"
      ]
    },
    "CmafManifestDurationFormat": {
      "type": "string",
      "documentation": "Indicates whether the output manifest should use floating point values for segment duration.",
      "enum": [
        "FLOATING_POINT",
        "INTEGER"
      ]
    },
    "CmafMpdProfile": {
      "type": "string",
      "documentation": "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).",
      "enum": [
        "MAIN_PROFILE",
        "ON_DEMAND_PROFILE"
      ]
    },
    "CmafSegmentControl": {
      "type": "string",
      "documentation": "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.",
      "enum": [
        "SINGLE_FILE",
        "SEGMENTED_FILES"
      ]
    },
    "CmafStreamInfResolution": {
      "type": "string",
      "documentation": "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "CmafWriteDASHManifest": {
      "type": "string",
      "documentation": "When set to ENABLED, a DASH MPD manifest will be generated for this output.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "CmafWriteHLSManifest": {
      "type": "string",
      "documentation": "When set to ENABLED, an Apple HLS manifest will be generated for this output.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "CmafWriteSegmentTimelineInRepresentation": {
      "type": "string",
      "documentation": "When you enable Precise segment duration in DASH manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "CmfcScte35Esam": {
      "type": "string",
      "documentation": "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).",
      "enum": [
        "INSERT",
        "NONE"
      ]
    },
    "CmfcScte35Source": {
      "type": "string",
      "documentation": "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.",
      "enum": [
        "PASSTHROUGH",
        "NONE"
      ]
    },
    "CmfcSettings": {
      "type": "structure",
      "members": {
        "Scte35Esam": {
          "shape": "CmfcScte35Esam",
          "locationName": "scte35Esam",
          "documentation": "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
        },
        "Scte35Source": {
          "shape": "CmfcScte35Source",
          "locationName": "scte35Source",
          "documentation": "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
        }
      },
      "documentation": "Settings for MP4 segments in CMAF"
    },
    "ColorCorrector": {
      "type": "structure",
      "members": {
        "Brightness": {
          "shape": "__integerMin1Max100",
          "locationName": "brightness",
          "documentation": "Brightness level."
        },
        "ColorSpaceConversion": {
          "shape": "ColorSpaceConversion",
          "locationName": "colorSpaceConversion",
          "documentation": "Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses Elemental tone mapping technology to approximate the outcome of manually regrading from HDR to SDR."
        },
        "Contrast": {
          "shape": "__integerMin1Max100",
          "locationName": "contrast",
          "documentation": "Contrast level."
        },
        "Hdr10Metadata": {
          "shape": "Hdr10Metadata",
          "locationName": "hdr10Metadata",
          "documentation": "Use these settings when you convert to the HDR 10 color space. Specify the SMPTE ST 2086 Mastering Display Color Volume static metadata that you want signaled in the output. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator. When you set Color space conversion (ColorSpaceConversion) to HDR 10 (FORCE_HDR10), these settings are required. You must set values for Max frame average light level (maxFrameAverageLightLevel) and Max content light level (maxContentLightLevel); these settings don't have a default value. The default values for the other HDR 10 metadata settings are defined by the P3D65 color space. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
        },
        "Hue": {
          "shape": "__integerMinNegative180Max180",
          "locationName": "hue",
          "documentation": "Hue in degrees."
        },
        "Saturation": {
          "shape": "__integerMin1Max100",
          "locationName": "saturation",
          "documentation": "Saturation level."
        }
      },
      "documentation": "Settings for color correction."
    },
    "ColorMetadata": {
      "type": "string",
      "documentation": "Choose Insert (INSERT) for this setting to include color metadata in this output. Choose Ignore (IGNORE) to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default.",
      "enum": [
        "IGNORE",
        "INSERT"
      ]
    },
    "ColorSpace": {
      "type": "string",
      "documentation": "If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value Follow (FOLLOW). The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct values in the input HDR 10 metadata (Hdr10Metadata) settings. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr.",
      "enum": [
        "FOLLOW",
        "REC_601",
        "REC_709",
        "HDR10",
        "HLG_2020"
      ]
    },
    "ColorSpaceConversion": {
      "type": "string",
      "documentation": "Specify the color space you want for this output. The service supports conversion between HDR formats, between SDR formats, from SDR to HDR, and from HDR to SDR. SDR to HDR conversion doesn't upgrade the dynamic range. The converted video has an HDR format, but visually appears the same as an unconverted output. HDR to SDR conversion uses Elemental tone mapping technology to approximate the outcome of manually regrading from HDR to SDR.",
      "enum": [
        "NONE",
        "FORCE_601",
        "FORCE_709",
        "FORCE_HDR10",
        "FORCE_HLG_2020"
      ]
    },
    "ColorSpaceUsage": {
      "type": "string",
      "documentation": "There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings.",
      "enum": [
        "FORCE",
        "FALLBACK"
      ]
    },
    "Commitment": {
      "type": "string",
      "documentation": "The length of the term of your reserved queue pricing plan commitment.",
      "enum": [
        "ONE_YEAR"
      ]
    },
    "ContainerSettings": {
      "type": "structure",
      "members": {
        "CmfcSettings": {
          "shape": "CmfcSettings",
          "locationName": "cmfcSettings",
          "documentation": "Settings for MP4 segments in CMAF"
        },
        "Container": {
          "shape": "ContainerType",
          "locationName": "container",
          "documentation": "Container for this output. Some containers require a container settings object. If not specified, the default object will be created."
        },
        "F4vSettings": {
          "shape": "F4vSettings",
          "locationName": "f4vSettings",
          "documentation": "Settings for F4v container"
        },
        "M2tsSettings": {
          "shape": "M2tsSettings",
          "locationName": "m2tsSettings",
          "documentation": "MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset."
        },
        "M3u8Settings": {
          "shape": "M3u8Settings",
          "locationName": "m3u8Settings",
          "documentation": "Settings for TS segments in HLS"
        },
        "MovSettings": {
          "shape": "MovSettings",
          "locationName": "movSettings",
          "documentation": "Settings for MOV Container."
        },
        "Mp4Settings": {
          "shape": "Mp4Settings",
          "locationName": "mp4Settings",
          "documentation": "Settings for MP4 container. You can create audio-only AAC outputs with this container."
        },
        "MpdSettings": {
          "shape": "MpdSettings",
          "locationName": "mpdSettings",
          "documentation": "Settings for MP4 segments in DASH"
        },
        "MxfSettings": {
          "shape": "MxfSettings",
          "locationName": "mxfSettings",
          "documentation": "MXF settings"
        }
      },
      "documentation": "Container specific settings."
    },
    "ContainerType": {
      "type": "string",
      "documentation": "Container for this output. Some containers require a container settings object. If not specified, the default object will be created.",
      "enum": [
        "F4V",
        "ISMV",
        "M2TS",
        "M3U8",
        "CMFC",
        "MOV",
        "MP4",
        "MPD",
        "MXF",
        "WEBM",
        "RAW"
      ]
    },
    "CreateJobRequest": {
      "type": "structure",
      "members": {
        "AccelerationSettings": {
          "shape": "AccelerationSettings",
          "locationName": "accelerationSettings",
          "documentation": "Optional. Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
        },
        "BillingTagsSource": {
          "shape": "BillingTagsSource",
          "locationName": "billingTagsSource",
          "documentation": "Optional. Choose a tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up. Any transcoding outputs that don't have an associated tag will appear in your billing report unsorted. If you don't choose a valid value for this field, your job outputs will appear on the billing report unsorted."
        },
        "ClientRequestToken": {
          "shape": "__string",
          "locationName": "clientRequestToken",
          "documentation": "Optional. Idempotency token for CreateJob operation.",
          "idempotencyToken": true
        },
        "HopDestinations": {
          "shape": "__listOfHopDestination",
          "locationName": "hopDestinations",
          "documentation": "Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide."
        },
        "JobTemplate": {
          "shape": "__string",
          "locationName": "jobTemplate",
          "documentation": "Optional. When you create a job, you can either specify a job template or specify the transcoding settings individually."
        },
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Optional. Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html."
        },
        "Role": {
          "shape": "__string",
          "locationName": "role",
          "documentation": "Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html."
        },
        "Settings": {
          "shape": "JobSettings",
          "locationName": "settings",
          "documentation": "JobSettings contains all the transcode settings for a job."
        },
        "SimulateReservedQueue": {
          "shape": "SimulateReservedQueue",
          "locationName": "simulateReservedQueue",
          "documentation": "Optional. Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default."
        },
        "StatusUpdateInterval": {
          "shape": "StatusUpdateInterval",
          "locationName": "statusUpdateInterval",
          "documentation": "Optional. Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "Optional. The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
        },
        "UserMetadata": {
          "shape": "__mapOf__string",
          "locationName": "userMetadata",
          "documentation": "Optional. User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs."
        }
      },
      "required": [
        "Role",
        "Settings"
      ]
    },
    "CreateJobResponse": {
      "type": "structure",
      "members": {
        "Job": {
          "shape": "Job",
          "locationName": "job",
          "documentation": "Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
        }
      }
    },
    "CreateJobTemplateRequest": {
      "type": "structure",
      "members": {
        "AccelerationSettings": {
          "shape": "AccelerationSettings",
          "locationName": "accelerationSettings",
          "documentation": "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
        },
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "Optional. A category for the job template you are creating"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "Optional. A description of the job template you are creating."
        },
        "HopDestinations": {
          "shape": "__listOfHopDestination",
          "locationName": "hopDestinations",
          "documentation": "Optional. Use queue hopping to avoid overly long waits in the backlog of the queue that you submit your job to. Specify an alternate queue and the maximum time that your job will wait in the initial queue before hopping. For more information about this feature, see the AWS Elemental MediaConvert User Guide."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the job template you are creating."
        },
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue."
        },
        "Settings": {
          "shape": "JobTemplateSettings",
          "locationName": "settings",
          "documentation": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
        },
        "StatusUpdateInterval": {
          "shape": "StatusUpdateInterval",
          "locationName": "statusUpdateInterval",
          "documentation": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
        }
      },
      "required": [
        "Settings",
        "Name"
      ]
    },
    "CreateJobTemplateResponse": {
      "type": "structure",
      "members": {
        "JobTemplate": {
          "shape": "JobTemplate",
          "locationName": "jobTemplate",
          "documentation": "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
        }
      }
    },
    "CreatePresetRequest": {
      "type": "structure",
      "members": {
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "Optional. A category for the preset you are creating."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "Optional. A description of the preset you are creating."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the preset you are creating."
        },
        "Settings": {
          "shape": "PresetSettings",
          "locationName": "settings",
          "documentation": "Settings for preset"
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
        }
      },
      "required": [
        "Settings",
        "Name"
      ]
    },
    "CreatePresetResponse": {
      "type": "structure",
      "members": {
        "Preset": {
          "shape": "Preset",
          "locationName": "preset",
          "documentation": "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
        }
      }
    },
    "CreateQueueRequest": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "Optional. A description of the queue that you are creating."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the queue that you are creating."
        },
        "PricingPlan": {
          "shape": "PricingPlan",
          "locationName": "pricingPlan",
          "documentation": "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment. When you use the API to create a queue, the default is on-demand."
        },
        "ReservationPlanSettings": {
          "shape": "ReservationPlanSettings",
          "locationName": "reservationPlanSettings",
          "documentation": "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
        },
        "Status": {
          "shape": "QueueStatus",
          "locationName": "status",
          "documentation": "Initial state of the queue. If you create a paused queue, then jobs in that queue won't begin."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
        }
      },
      "required": [
        "Name"
      ]
    },
    "CreateQueueResponse": {
      "type": "structure",
      "members": {
        "Queue": {
          "shape": "Queue",
          "locationName": "queue",
          "documentation": "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
        }
      }
    },
    "DashAdditionalManifest": {
      "type": "structure",
      "members": {
        "ManifestNameModifier": {
          "shape": "__stringMin1",
          "locationName": "manifestNameModifier",
          "documentation": "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your DASH group is film-name.mpd. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.mpd."
        },
        "SelectedOutputs": {
          "shape": "__listOf__stringMin1",
          "locationName": "selectedOutputs",
          "documentation": "Specify the outputs that you want this additional top-level manifest to reference."
        }
      },
      "documentation": "Specify the details for each additional DASH manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
    },
    "DashIsoEncryptionSettings": {
      "type": "structure",
      "members": {
        "PlaybackDeviceCompatibility": {
          "shape": "DashIsoPlaybackDeviceCompatibility",
          "locationName": "playbackDeviceCompatibility",
          "documentation": "This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted."
        },
        "SpekeKeyProvider": {
          "shape": "SpekeKeyProvider",
          "locationName": "spekeKeyProvider",
          "documentation": "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
        }
      },
      "documentation": "Specifies DRM settings for DASH outputs."
    },
    "DashIsoGroupSettings": {
      "type": "structure",
      "members": {
        "AdditionalManifests": {
          "shape": "__listOfDashAdditionalManifest",
          "locationName": "additionalManifests",
          "documentation": "By default, the service creates one .mpd DASH manifest for each DASH ISO output group in your job. This default manifest references every output in the output group. To create additional DASH manifests that reference a subset of the outputs in the output group, specify a list of them here."
        },
        "BaseUrl": {
          "shape": "__string",
          "locationName": "baseUrl",
          "documentation": "A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file."
        },
        "Destination": {
          "shape": "__stringPatternS3",
          "locationName": "destination",
          "documentation": "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
        },
        "DestinationSettings": {
          "shape": "DestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Settings associated with the destination. Will vary based on the type of destination"
        },
        "Encryption": {
          "shape": "DashIsoEncryptionSettings",
          "locationName": "encryption",
          "documentation": "DRM settings."
        },
        "FragmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "fragmentLength",
          "documentation": "Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types."
        },
        "HbbtvCompliance": {
          "shape": "DashIsoHbbtvCompliance",
          "locationName": "hbbtvCompliance",
          "documentation": "Supports HbbTV specification as indicated"
        },
        "MinBufferTime": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "minBufferTime",
          "documentation": "Minimum time of initially buffered media that is needed to ensure smooth playout."
        },
        "MpdProfile": {
          "shape": "DashIsoMpdProfile",
          "locationName": "mpdProfile",
          "documentation": "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE)."
        },
        "SegmentControl": {
          "shape": "DashIsoSegmentControl",
          "locationName": "segmentControl",
          "documentation": "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created."
        },
        "SegmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "segmentLength",
          "documentation": "Length of mpd segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer. When Emit Single File is checked, the segmentation is internal to a single output file and it does not cause the creation of many output files as in other output types."
        },
        "WriteSegmentTimelineInRepresentation": {
          "shape": "DashIsoWriteSegmentTimelineInRepresentation",
          "locationName": "writeSegmentTimelineInRepresentation",
          "documentation": "If you get an HTTP error in the 400 range when you play back your DASH output, enable this setting and run your transcoding job again. When you enable this setting, the service writes precise segment durations in the DASH manifest. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When you don't enable this setting, the service writes approximate segment durations in your DASH manifest."
        }
      },
      "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS."
    },
    "DashIsoHbbtvCompliance": {
      "type": "string",
      "documentation": "Supports HbbTV specification as indicated",
      "enum": [
        "HBBTV_1_5",
        "NONE"
      ]
    },
    "DashIsoMpdProfile": {
      "type": "string",
      "documentation": "Specify whether your DASH profile is on-demand or main. When you choose Main profile (MAIN_PROFILE), the service signals  urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When you choose On-demand (ON_DEMAND_PROFILE), the service signals urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you choose On-demand, you must also set the output group setting Segment control (SegmentControl) to Single file (SINGLE_FILE).",
      "enum": [
        "MAIN_PROFILE",
        "ON_DEMAND_PROFILE"
      ]
    },
    "DashIsoPlaybackDeviceCompatibility": {
      "type": "string",
      "documentation": "This setting can improve the compatibility of your output with video players on obsolete devices. It applies only to DASH H.264 outputs with DRM encryption. Choose Unencrypted SEI (UNENCRYPTED_SEI) only to correct problems with playback on older devices. Otherwise, keep the default setting CENC v1 (CENC_V1). If you choose Unencrypted SEI, for that output, the service will exclude the access unit delimiter and will leave the SEI NAL units unencrypted.",
      "enum": [
        "CENC_V1",
        "UNENCRYPTED_SEI"
      ]
    },
    "DashIsoSegmentControl": {
      "type": "string",
      "documentation": "When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.",
      "enum": [
        "SINGLE_FILE",
        "SEGMENTED_FILES"
      ]
    },
    "DashIsoWriteSegmentTimelineInRepresentation": {
      "type": "string",
      "documentation": "When you enable Precise segment duration in manifests (writeSegmentTimelineInRepresentation), your DASH manifest shows precise segment durations. The segment duration information appears inside the SegmentTimeline element, inside SegmentTemplate at the Representation level. When this feature isn't enabled, the segment durations in your DASH manifest are approximate. The segment duration information appears in the duration attribute of the SegmentTemplate element.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "DecryptionMode": {
      "type": "string",
      "documentation": "Specify the encryption mode that you used to encrypt your input files.",
      "enum": [
        "AES_CTR",
        "AES_CBC",
        "AES_GCM"
      ]
    },
    "DeinterlaceAlgorithm": {
      "type": "string",
      "documentation": "Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame.",
      "enum": [
        "INTERPOLATE",
        "INTERPOLATE_TICKER",
        "BLEND",
        "BLEND_TICKER"
      ]
    },
    "Deinterlacer": {
      "type": "structure",
      "members": {
        "Algorithm": {
          "shape": "DeinterlaceAlgorithm",
          "locationName": "algorithm",
          "documentation": "Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame."
        },
        "Control": {
          "shape": "DeinterlacerControl",
          "locationName": "control",
          "documentation": "- When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video."
        },
        "Mode": {
          "shape": "DeinterlacerMode",
          "locationName": "mode",
          "documentation": "Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive."
        }
      },
      "documentation": "Settings for deinterlacer"
    },
    "DeinterlacerControl": {
      "type": "string",
      "documentation": "- When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.",
      "enum": [
        "FORCE_ALL_FRAMES",
        "NORMAL"
      ]
    },
    "DeinterlacerMode": {
      "type": "string",
      "documentation": "Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.",
      "enum": [
        "DEINTERLACE",
        "INVERSE_TELECINE",
        "ADAPTIVE"
      ]
    },
    "DeleteJobTemplateRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the job template to be deleted.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "DeleteJobTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DeletePresetRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the preset to be deleted.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "DeletePresetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteQueueRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the queue that you want to delete.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "DeleteQueueResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeEndpointsMode": {
      "type": "string",
      "documentation": "Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.",
      "enum": [
        "DEFAULT",
        "GET_ONLY"
      ]
    },
    "DescribeEndpointsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "Optional. Max number of endpoints, up to twenty, that will be returned at one time."
        },
        "Mode": {
          "shape": "DescribeEndpointsMode",
          "locationName": "mode",
          "documentation": "Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist."
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string, provided with the response to a previous request, to request the next batch of endpoints."
        }
      },
      "documentation": "DescribeEndpointsRequest"
    },
    "DescribeEndpointsResponse": {
      "type": "structure",
      "members": {
        "Endpoints": {
          "shape": "__listOfEndpoint",
          "locationName": "endpoints",
          "documentation": "List of endpoints"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string to request the next batch of endpoints."
        }
      }
    },
    "DestinationSettings": {
      "type": "structure",
      "members": {
        "S3Settings": {
          "shape": "S3DestinationSettings",
          "locationName": "s3Settings",
          "documentation": "Settings associated with S3 destination"
        }
      },
      "documentation": "Settings associated with the destination. Will vary based on the type of destination"
    },
    "DisassociateCertificateRequest": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The ARN of the ACM certificate that you want to disassociate from your MediaConvert resource.",
          "location": "uri"
        }
      },
      "required": [
        "Arn"
      ]
    },
    "DisassociateCertificateResponse": {
      "type": "structure",
      "members": {}
    },
    "DolbyVision": {
      "type": "structure",
      "members": {
        "L6Metadata": {
          "shape": "DolbyVisionLevel6Metadata",
          "locationName": "l6Metadata",
          "documentation": "Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values."
        },
        "L6Mode": {
          "shape": "DolbyVisionLevel6Mode",
          "locationName": "l6Mode",
          "documentation": "Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies."
        },
        "Profile": {
          "shape": "DolbyVisionProfile",
          "locationName": "profile",
          "documentation": "In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data."
        }
      },
      "documentation": "Settings for Dolby Vision"
    },
    "DolbyVisionLevel6Metadata": {
      "type": "structure",
      "members": {
        "MaxCll": {
          "shape": "__integerMin0Max65535",
          "locationName": "maxCll",
          "documentation": "Maximum Content Light Level. Static HDR metadata that corresponds to the brightest pixel in the entire stream. Measured in nits."
        },
        "MaxFall": {
          "shape": "__integerMin0Max65535",
          "locationName": "maxFall",
          "documentation": "Maximum Frame-Average Light Level. Static HDR metadata that corresponds to the highest frame-average brightness in the entire stream. Measured in nits."
        }
      },
      "documentation": "Use these settings when you set DolbyVisionLevel6Mode to SPECIFY to override the MaxCLL and MaxFALL values in your input with new values."
    },
    "DolbyVisionLevel6Mode": {
      "type": "string",
      "documentation": "Use Dolby Vision Mode to choose how the service will handle Dolby Vision MaxCLL and MaxFALL properies.",
      "enum": [
        "PASSTHROUGH",
        "RECALCULATE",
        "SPECIFY"
      ]
    },
    "DolbyVisionProfile": {
      "type": "string",
      "documentation": "In the current MediaConvert implementation, the Dolby Vision profile is always 5 (PROFILE_5). Therefore, all of your inputs must contain Dolby Vision frame interleaved data.",
      "enum": [
        "PROFILE_5"
      ]
    },
    "DropFrameTimecode": {
      "type": "string",
      "documentation": "Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "DvbNitSettings": {
      "type": "structure",
      "members": {
        "NetworkId": {
          "shape": "__integerMin0Max65535",
          "locationName": "networkId",
          "documentation": "The numeric value placed in the Network Information Table (NIT)."
        },
        "NetworkName": {
          "shape": "__stringMin1Max256",
          "locationName": "networkName",
          "documentation": "The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters."
        },
        "NitInterval": {
          "shape": "__integerMin25Max10000",
          "locationName": "nitInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        }
      },
      "documentation": "Inserts DVB Network Information Table (NIT) at the specified table repetition interval."
    },
    "DvbSdtSettings": {
      "type": "structure",
      "members": {
        "OutputSdt": {
          "shape": "OutputSdt",
          "locationName": "outputSdt",
          "documentation": "Selects method of inserting SDT information into output stream.  \"Follow input SDT\" copies SDT information from input stream to  output stream. \"Follow input SDT if present\" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter \"SDT  Manually\" means user will enter the SDT information. \"No SDT\" means output  stream will not contain SDT information."
        },
        "SdtInterval": {
          "shape": "__integerMin25Max2000",
          "locationName": "sdtInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        },
        "ServiceName": {
          "shape": "__stringMin1Max256",
          "locationName": "serviceName",
          "documentation": "The service name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters."
        },
        "ServiceProviderName": {
          "shape": "__stringMin1Max256",
          "locationName": "serviceProviderName",
          "documentation": "The service provider name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters."
        }
      },
      "documentation": "Inserts DVB Service Description Table (NIT) at the specified table repetition interval."
    },
    "DvbSubDestinationSettings": {
      "type": "structure",
      "members": {
        "Alignment": {
          "shape": "DvbSubtitleAlignment",
          "locationName": "alignment",
          "documentation": "If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "BackgroundColor": {
          "shape": "DvbSubtitleBackgroundColor",
          "locationName": "backgroundColor",
          "documentation": "Specifies the color of the rectangle behind the captions.\nAll burn-in and DVB-Sub font settings must match."
        },
        "BackgroundOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "backgroundOpacity",
          "documentation": "Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match."
        },
        "FontColor": {
          "shape": "DvbSubtitleFontColor",
          "locationName": "fontColor",
          "documentation": "Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "FontOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "fontOpacity",
          "documentation": "Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.\nAll burn-in and DVB-Sub font settings must match."
        },
        "FontResolution": {
          "shape": "__integerMin96Max600",
          "locationName": "fontResolution",
          "documentation": "Font resolution in DPI (dots per inch); default is 96 dpi.\nAll burn-in and DVB-Sub font settings must match."
        },
        "FontScript": {
          "shape": "FontScript",
          "locationName": "fontScript",
          "documentation": "Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use \"AUTOMATIC\" or leave unset. This is used to help determine the appropriate font for rendering DVB-Sub captions."
        },
        "FontSize": {
          "shape": "__integerMin0Max96",
          "locationName": "fontSize",
          "documentation": "A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match."
        },
        "OutlineColor": {
          "shape": "DvbSubtitleOutlineColor",
          "locationName": "outlineColor",
          "documentation": "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "OutlineSize": {
          "shape": "__integerMin0Max10",
          "locationName": "outlineSize",
          "documentation": "Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "ShadowColor": {
          "shape": "DvbSubtitleShadowColor",
          "locationName": "shadowColor",
          "documentation": "Specifies the color of the shadow cast by the captions.\nAll burn-in and DVB-Sub font settings must match."
        },
        "ShadowOpacity": {
          "shape": "__integerMin0Max255",
          "locationName": "shadowOpacity",
          "documentation": "Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match."
        },
        "ShadowXOffset": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "shadowXOffset",
          "documentation": "Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match."
        },
        "ShadowYOffset": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "shadowYOffset",
          "documentation": "Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match."
        },
        "SubtitlingType": {
          "shape": "DvbSubtitlingType",
          "locationName": "subtitlingType",
          "documentation": "Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue."
        },
        "TeletextSpacing": {
          "shape": "DvbSubtitleTeletextSpacing",
          "locationName": "teletextSpacing",
          "documentation": "Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption."
        },
        "XPosition": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "xPosition",
          "documentation": "Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        },
        "YPosition": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "yPosition",
          "documentation": "Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match."
        }
      },
      "documentation": "DVB-Sub Destination Settings"
    },
    "DvbSubSourceSettings": {
      "type": "structure",
      "members": {
        "Pid": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "pid",
          "documentation": "When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors."
        }
      },
      "documentation": "DVB Sub Source Settings"
    },
    "DvbSubtitleAlignment": {
      "type": "string",
      "documentation": "If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "CENTERED",
        "LEFT"
      ]
    },
    "DvbSubtitleBackgroundColor": {
      "type": "string",
      "documentation": "Specifies the color of the rectangle behind the captions.\nAll burn-in and DVB-Sub font settings must match.",
      "enum": [
        "NONE",
        "BLACK",
        "WHITE"
      ]
    },
    "DvbSubtitleFontColor": {
      "type": "string",
      "documentation": "Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "WHITE",
        "BLACK",
        "YELLOW",
        "RED",
        "GREEN",
        "BLUE"
      ]
    },
    "DvbSubtitleOutlineColor": {
      "type": "string",
      "documentation": "Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.",
      "enum": [
        "BLACK",
        "WHITE",
        "YELLOW",
        "RED",
        "GREEN",
        "BLUE"
      ]
    },
    "DvbSubtitleShadowColor": {
      "type": "string",
      "documentation": "Specifies the color of the shadow cast by the captions.\nAll burn-in and DVB-Sub font settings must match.",
      "enum": [
        "NONE",
        "BLACK",
        "WHITE"
      ]
    },
    "DvbSubtitleTeletextSpacing": {
      "type": "string",
      "documentation": "Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.",
      "enum": [
        "FIXED_GRID",
        "PROPORTIONAL"
      ]
    },
    "DvbSubtitlingType": {
      "type": "string",
      "documentation": "Specify whether your DVB subtitles are standard or for hearing impaired. Choose hearing impaired if your subtitles include audio descriptions and dialogue. Choose standard if your subtitles include only dialogue.",
      "enum": [
        "HEARING_IMPAIRED",
        "STANDARD"
      ]
    },
    "DvbTdtSettings": {
      "type": "structure",
      "members": {
        "TdtInterval": {
          "shape": "__integerMin1000Max30000",
          "locationName": "tdtInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        }
      },
      "documentation": "Inserts DVB Time and Date Table (TDT) at the specified table repetition interval."
    },
    "Eac3AtmosBitstreamMode": {
      "type": "string",
      "documentation": "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).",
      "enum": [
        "COMPLETE_MAIN"
      ]
    },
    "Eac3AtmosCodingMode": {
      "type": "string",
      "documentation": "The coding mode for Dolby Digital Plus JOC (Atmos) is always 9.1.6 (CODING_MODE_9_1_6).",
      "enum": [
        "CODING_MODE_9_1_6"
      ]
    },
    "Eac3AtmosDialogueIntelligence": {
      "type": "string",
      "documentation": "Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Eac3AtmosDynamicRangeCompressionLine": {
      "type": "string",
      "documentation": "Specify the absolute peak level for a signal with dynamic range compression.",
      "enum": [
        "NONE",
        "FILM_STANDARD",
        "FILM_LIGHT",
        "MUSIC_STANDARD",
        "MUSIC_LIGHT",
        "SPEECH"
      ]
    },
    "Eac3AtmosDynamicRangeCompressionRf": {
      "type": "string",
      "documentation": "Specify how the service limits the audio dynamic range when compressing the audio.",
      "enum": [
        "NONE",
        "FILM_STANDARD",
        "FILM_LIGHT",
        "MUSIC_STANDARD",
        "MUSIC_LIGHT",
        "SPEECH"
      ]
    },
    "Eac3AtmosMeteringMode": {
      "type": "string",
      "documentation": "Choose how the service meters the loudness of your audio.",
      "enum": [
        "LEQ_A",
        "ITU_BS_1770_1",
        "ITU_BS_1770_2",
        "ITU_BS_1770_3",
        "ITU_BS_1770_4"
      ]
    },
    "Eac3AtmosSettings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin384000Max768000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second.\nValid values: 384k, 448k, 640k, 768k"
        },
        "BitstreamMode": {
          "shape": "Eac3AtmosBitstreamMode",
          "locationName": "bitstreamMode",
          "documentation": "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
        },
        "CodingMode": {
          "shape": "Eac3AtmosCodingMode",
          "locationName": "codingMode",
          "documentation": "The coding mode for Dolby Digital Plus JOC (Atmos) is always 9.1.6 (CODING_MODE_9_1_6)."
        },
        "DialogueIntelligence": {
          "shape": "Eac3AtmosDialogueIntelligence",
          "locationName": "dialogueIntelligence",
          "documentation": "Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis."
        },
        "DynamicRangeCompressionLine": {
          "shape": "Eac3AtmosDynamicRangeCompressionLine",
          "locationName": "dynamicRangeCompressionLine",
          "documentation": "Specify the absolute peak level for a signal with dynamic range compression."
        },
        "DynamicRangeCompressionRf": {
          "shape": "Eac3AtmosDynamicRangeCompressionRf",
          "locationName": "dynamicRangeCompressionRf",
          "documentation": "Specify how the service limits the audio dynamic range when compressing the audio."
        },
        "LoRoCenterMixLevel": {
          "shape": "__doubleMinNegative6Max3",
          "locationName": "loRoCenterMixLevel",
          "documentation": "Specify a value for the following Dolby Atmos setting: Left only/Right only center mix\n(Lo/Ro center). MediaConvert uses this value for downmixing. How the service uses this\nvalue depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).\nValid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0."
        },
        "LoRoSurroundMixLevel": {
          "shape": "__doubleMinNegative60MaxNegative1",
          "locationName": "loRoSurroundMixLevel",
          "documentation": "Specify a value for the following Dolby Atmos setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel."
        },
        "LtRtCenterMixLevel": {
          "shape": "__doubleMinNegative6Max3",
          "locationName": "ltRtCenterMixLevel",
          "documentation": "Specify a value for the following Dolby Atmos setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0."
        },
        "LtRtSurroundMixLevel": {
          "shape": "__doubleMinNegative60MaxNegative1",
          "locationName": "ltRtSurroundMixLevel",
          "documentation": "Specify a value for the following Dolby Atmos setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3AtmosStereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel."
        },
        "MeteringMode": {
          "shape": "Eac3AtmosMeteringMode",
          "locationName": "meteringMode",
          "documentation": "Choose how the service meters the loudness of your audio."
        },
        "SampleRate": {
          "shape": "__integerMin48000Max48000",
          "locationName": "sampleRate",
          "documentation": "This value is always 48000. It represents the sample rate in Hz."
        },
        "SpeechThreshold": {
          "shape": "__integerMin1Max100",
          "locationName": "speechThreshold",
          "documentation": "Specify the percentage of audio content that must be speech before the encoder uses the measured speech loudness as the overall program loudness."
        },
        "StereoDownmix": {
          "shape": "Eac3AtmosStereoDownmix",
          "locationName": "stereoDownmix",
          "documentation": "Choose how the service does stereo downmixing."
        },
        "SurroundExMode": {
          "shape": "Eac3AtmosSurroundExMode",
          "locationName": "surroundExMode",
          "documentation": "Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3_ATMOS."
    },
    "Eac3AtmosStereoDownmix": {
      "type": "string",
      "documentation": "Choose how the service does stereo downmixing.",
      "enum": [
        "NOT_INDICATED",
        "STEREO",
        "SURROUND",
        "DPL2"
      ]
    },
    "Eac3AtmosSurroundExMode": {
      "type": "string",
      "documentation": "Specify whether your input audio has an additional center rear surround channel matrix encoded into your left and right surround channels.",
      "enum": [
        "NOT_INDICATED",
        "ENABLED",
        "DISABLED"
      ]
    },
    "Eac3AttenuationControl": {
      "type": "string",
      "documentation": "If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.",
      "enum": [
        "ATTENUATE_3_DB",
        "NONE"
      ]
    },
    "Eac3BitstreamMode": {
      "type": "string",
      "documentation": "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E).",
      "enum": [
        "COMPLETE_MAIN",
        "COMMENTARY",
        "EMERGENCY",
        "HEARING_IMPAIRED",
        "VISUALLY_IMPAIRED"
      ]
    },
    "Eac3CodingMode": {
      "type": "string",
      "documentation": "Dolby Digital Plus coding mode. Determines number of channels.",
      "enum": [
        "CODING_MODE_1_0",
        "CODING_MODE_2_0",
        "CODING_MODE_3_2"
      ]
    },
    "Eac3DcFilter": {
      "type": "string",
      "documentation": "Activates a DC highpass filter for all input channels.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Eac3DynamicRangeCompressionLine": {
      "type": "string",
      "documentation": "Specify the absolute peak level for a signal with dynamic range compression.",
      "enum": [
        "NONE",
        "FILM_STANDARD",
        "FILM_LIGHT",
        "MUSIC_STANDARD",
        "MUSIC_LIGHT",
        "SPEECH"
      ]
    },
    "Eac3DynamicRangeCompressionRf": {
      "type": "string",
      "documentation": "Specify how the service limits the audio dynamic range when compressing the audio.",
      "enum": [
        "NONE",
        "FILM_STANDARD",
        "FILM_LIGHT",
        "MUSIC_STANDARD",
        "MUSIC_LIGHT",
        "SPEECH"
      ]
    },
    "Eac3LfeControl": {
      "type": "string",
      "documentation": "When encoding 3/2 audio, controls whether the LFE channel is enabled",
      "enum": [
        "LFE",
        "NO_LFE"
      ]
    },
    "Eac3LfeFilter": {
      "type": "string",
      "documentation": "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Eac3MetadataControl": {
      "type": "string",
      "documentation": "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.",
      "enum": [
        "FOLLOW_INPUT",
        "USE_CONFIGURED"
      ]
    },
    "Eac3PassthroughControl": {
      "type": "string",
      "documentation": "When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.",
      "enum": [
        "WHEN_POSSIBLE",
        "NO_PASSTHROUGH"
      ]
    },
    "Eac3PhaseControl": {
      "type": "string",
      "documentation": "Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.",
      "enum": [
        "SHIFT_90_DEGREES",
        "NO_SHIFT"
      ]
    },
    "Eac3Settings": {
      "type": "structure",
      "members": {
        "AttenuationControl": {
          "shape": "Eac3AttenuationControl",
          "locationName": "attenuationControl",
          "documentation": "If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode."
        },
        "Bitrate": {
          "shape": "__integerMin64000Max640000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. Valid bitrates depend on the coding mode."
        },
        "BitstreamMode": {
          "shape": "Eac3BitstreamMode",
          "locationName": "bitstreamMode",
          "documentation": "Specify the bitstream mode for the E-AC-3 stream that the encoder emits. For more information about the EAC3 bitstream mode, see ATSC A/52-2012 (Annex E)."
        },
        "CodingMode": {
          "shape": "Eac3CodingMode",
          "locationName": "codingMode",
          "documentation": "Dolby Digital Plus coding mode. Determines number of channels."
        },
        "DcFilter": {
          "shape": "Eac3DcFilter",
          "locationName": "dcFilter",
          "documentation": "Activates a DC highpass filter for all input channels."
        },
        "Dialnorm": {
          "shape": "__integerMin1Max31",
          "locationName": "dialnorm",
          "documentation": "Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through."
        },
        "DynamicRangeCompressionLine": {
          "shape": "Eac3DynamicRangeCompressionLine",
          "locationName": "dynamicRangeCompressionLine",
          "documentation": "Specify the absolute peak level for a signal with dynamic range compression."
        },
        "DynamicRangeCompressionRf": {
          "shape": "Eac3DynamicRangeCompressionRf",
          "locationName": "dynamicRangeCompressionRf",
          "documentation": "Specify how the service limits the audio dynamic range when compressing the audio."
        },
        "LfeControl": {
          "shape": "Eac3LfeControl",
          "locationName": "lfeControl",
          "documentation": "When encoding 3/2 audio, controls whether the LFE channel is enabled"
        },
        "LfeFilter": {
          "shape": "Eac3LfeFilter",
          "locationName": "lfeFilter",
          "documentation": "Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode."
        },
        "LoRoCenterMixLevel": {
          "shape": "__doubleMinNegative60Max3",
          "locationName": "loRoCenterMixLevel",
          "documentation": "Specify a value for the following Dolby Digital Plus setting: Left only/Right only center mix (Lo/Ro center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only center (loRoCenterMixLevel)."
        },
        "LoRoSurroundMixLevel": {
          "shape": "__doubleMinNegative60MaxNegative1",
          "locationName": "loRoSurroundMixLevel",
          "documentation": "Specify a value for the following Dolby Digital Plus setting: Left only/Right only (Lo/Ro surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left only/Right only surround (loRoSurroundMixLevel)."
        },
        "LtRtCenterMixLevel": {
          "shape": "__doubleMinNegative60Max3",
          "locationName": "ltRtCenterMixLevel",
          "documentation": "Specify a value for the following Dolby Digital Plus setting: Left total/Right total center mix (Lt/Rt center). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total center (ltRtCenterMixLevel)."
        },
        "LtRtSurroundMixLevel": {
          "shape": "__doubleMinNegative60MaxNegative1",
          "locationName": "ltRtSurroundMixLevel",
          "documentation": "Specify a value for the following Dolby Digital Plus setting: Left total/Right total surround mix (Lt/Rt surround). MediaConvert uses this value for downmixing. How the service uses this value depends on the value that you choose for Stereo downmix (Eac3StereoDownmix). Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the channel. This setting applies only if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Left total/Right total surround (ltRtSurroundMixLevel)."
        },
        "MetadataControl": {
          "shape": "Eac3MetadataControl",
          "locationName": "metadataControl",
          "documentation": "When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used."
        },
        "PassthroughControl": {
          "shape": "Eac3PassthroughControl",
          "locationName": "passthroughControl",
          "documentation": "When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding."
        },
        "PhaseControl": {
          "shape": "Eac3PhaseControl",
          "locationName": "phaseControl",
          "documentation": "Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode."
        },
        "SampleRate": {
          "shape": "__integerMin48000Max48000",
          "locationName": "sampleRate",
          "documentation": "This value is always 48000. It represents the sample rate in Hz."
        },
        "StereoDownmix": {
          "shape": "Eac3StereoDownmix",
          "locationName": "stereoDownmix",
          "documentation": "Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Stereo downmix (Eac3StereoDownmix)."
        },
        "SurroundExMode": {
          "shape": "Eac3SurroundExMode",
          "locationName": "surroundExMode",
          "documentation": "When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels."
        },
        "SurroundMode": {
          "shape": "Eac3SurroundMode",
          "locationName": "surroundMode",
          "documentation": "When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3."
    },
    "Eac3StereoDownmix": {
      "type": "string",
      "documentation": "Choose how the service does stereo downmixing. This setting only applies if you keep the default value of 3/2 - L, R, C, Ls, Rs (CODING_MODE_3_2) for the setting Coding mode (Eac3CodingMode). If you choose a different value for Coding mode, the service ignores Stereo downmix (Eac3StereoDownmix).",
      "enum": [
        "NOT_INDICATED",
        "LO_RO",
        "LT_RT",
        "DPL2"
      ]
    },
    "Eac3SurroundExMode": {
      "type": "string",
      "documentation": "When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.",
      "enum": [
        "NOT_INDICATED",
        "ENABLED",
        "DISABLED"
      ]
    },
    "Eac3SurroundMode": {
      "type": "string",
      "documentation": "When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.",
      "enum": [
        "NOT_INDICATED",
        "ENABLED",
        "DISABLED"
      ]
    },
    "EmbeddedConvert608To708": {
      "type": "string",
      "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.",
      "enum": [
        "UPCONVERT",
        "DISABLED"
      ]
    },
    "EmbeddedDestinationSettings": {
      "type": "structure",
      "members": {
        "Destination608ChannelNumber": {
          "shape": "__integerMin1Max4",
          "locationName": "destination608ChannelNumber",
          "documentation": "Ignore this setting unless your input captions are SCC format and your output captions are embedded in the video stream. Specify a CC number for each captions channel in this output. If you have two channels, choose CC numbers that aren't in the same field. For example, choose 1 and 3. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded."
        },
        "Destination708ServiceNumber": {
          "shape": "__integerMin1Max6",
          "locationName": "destination708ServiceNumber",
          "documentation": "Ignore this setting unless your input captions are SCC format and you want both 608 and 708 captions embedded in your output stream. Optionally, specify the 708 service number for each output captions channel. Choose a different number for each channel. To use this setting, also set Force 608 to 708 upconvert (Convert608To708) to Upconvert (UPCONVERT) in your input captions selector settings. If you choose to upconvert but don't specify a 708 service number, MediaConvert uses the number that you specify for CC channel number (destination608ChannelNumber) for the 708 service number. For more information, see https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded."
        }
      },
      "documentation": "Settings specific to embedded/ancillary caption outputs, including 608/708 Channel destination number."
    },
    "EmbeddedSourceSettings": {
      "type": "structure",
      "members": {
        "Convert608To708": {
          "shape": "EmbeddedConvert608To708",
          "locationName": "convert608To708",
          "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
        },
        "Source608ChannelNumber": {
          "shape": "__integerMin1Max4",
          "locationName": "source608ChannelNumber",
          "documentation": "Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough."
        },
        "Source608TrackNumber": {
          "shape": "__integerMin1Max1",
          "locationName": "source608TrackNumber",
          "documentation": "Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'."
        },
        "TerminateCaptions": {
          "shape": "EmbeddedTerminateCaptions",
          "locationName": "terminateCaptions",
          "documentation": "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting."
        }
      },
      "documentation": "Settings for embedded captions Source"
    },
    "EmbeddedTerminateCaptions": {
      "type": "string",
      "documentation": "By default, the service terminates any unterminated captions at the end of each input. If you want the caption to continue onto your next input, disable this setting.",
      "enum": [
        "END_OF_INPUT",
        "DISABLED"
      ]
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Url": {
          "shape": "__string",
          "locationName": "url",
          "documentation": "URL of endpoint"
        }
      },
      "documentation": "Describes an account-specific API endpoint."
    },
    "EsamManifestConfirmConditionNotification": {
      "type": "structure",
      "members": {
        "MccXml": {
          "shape": "__stringPatternSNManifestConfirmConditionNotificationNS",
          "locationName": "mccXml",
          "documentation": "Provide your ESAM ManifestConfirmConditionNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest Conditioning instructions in the message that you supply."
        }
      },
      "documentation": "ESAM ManifestConfirmConditionNotification defined by OC-SP-ESAM-API-I03-131025."
    },
    "EsamSettings": {
      "type": "structure",
      "members": {
        "ManifestConfirmConditionNotification": {
          "shape": "EsamManifestConfirmConditionNotification",
          "locationName": "manifestConfirmConditionNotification",
          "documentation": "Specifies an ESAM ManifestConfirmConditionNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning instructions that you provide in the setting MCC XML (mccXml)."
        },
        "ResponseSignalPreroll": {
          "shape": "__integerMin0Max30000",
          "locationName": "responseSignalPreroll",
          "documentation": "Specifies the stream distance, in milliseconds, between the SCTE 35 messages that the transcoder places and the splice points that they refer to. If the time between the start of the asset and the SCTE-35 message is less than this value, then the transcoder places the SCTE-35 marker at the beginning of the stream."
        },
        "SignalProcessingNotification": {
          "shape": "EsamSignalProcessingNotification",
          "locationName": "signalProcessingNotification",
          "documentation": "Specifies an ESAM SignalProcessingNotification XML as per OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing instructions that you provide in the setting SCC XML (sccXml)."
        }
      },
      "documentation": "Settings for Event Signaling And Messaging (ESAM). If you don't do ad insertion, you can ignore these settings."
    },
    "EsamSignalProcessingNotification": {
      "type": "structure",
      "members": {
        "SccXml": {
          "shape": "__stringPatternSNSignalProcessingNotificationNS",
          "locationName": "sccXml",
          "documentation": "Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. Form the XML document as per OC-SP-ESAM-API-I03-131025. The transcoder will use the signal processing instructions in the message that you supply. Provide your ESAM SignalProcessingNotification XML document inside your JSON job settings. For your MPEG2-TS file outputs, if you want the service to place SCTE-35 markers at the insertion points you specify in the XML document, you must also enable SCTE-35 ESAM (scte35Esam). Note that you can either specify an ESAM XML document or enable SCTE-35 passthrough. You can't do both."
        }
      },
      "documentation": "ESAM SignalProcessingNotification data defined by OC-SP-ESAM-API-I03-131025."
    },
    "F4vMoovPlacement": {
      "type": "string",
      "documentation": "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.",
      "enum": [
        "PROGRESSIVE_DOWNLOAD",
        "NORMAL"
      ]
    },
    "F4vSettings": {
      "type": "structure",
      "members": {
        "MoovPlacement": {
          "shape": "F4vMoovPlacement",
          "locationName": "moovPlacement",
          "documentation": "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
        }
      },
      "documentation": "Settings for F4v container"
    },
    "FileGroupSettings": {
      "type": "structure",
      "members": {
        "Destination": {
          "shape": "__stringPatternS3",
          "locationName": "destination",
          "documentation": "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
        },
        "DestinationSettings": {
          "shape": "DestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Settings associated with the destination. Will vary based on the type of destination"
        }
      },
      "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS."
    },
    "FileSourceConvert608To708": {
      "type": "string",
      "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708.",
      "enum": [
        "UPCONVERT",
        "DISABLED"
      ]
    },
    "FileSourceSettings": {
      "type": "structure",
      "members": {
        "Convert608To708": {
          "shape": "FileSourceConvert608To708",
          "locationName": "convert608To708",
          "documentation": "Specify whether this set of input captions appears in your outputs in both 608 and 708 format. If you choose Upconvert (UPCONVERT), MediaConvert includes the captions data in two ways: it passes the 608 data through using the 608 compatibility bytes fields of the 708 wrapper, and it also translates the 608 data into 708."
        },
        "Framerate": {
          "shape": "CaptionSourceFramerate",
          "locationName": "framerate",
          "documentation": "Ignore this setting unless your input captions format is SCC. To have the service compensate for differing frame rates between your input captions and input video, specify the frame rate of the captions file. Specify this value as a fraction, using the settings Framerate numerator (framerateNumerator) and Framerate denominator (framerateDenominator). For example, you might specify 24 / 1 for 24 fps, 25 / 1 for 25 fps, 24000 / 1001 for 23.976 fps, or 30000 / 1001 for 29.97 fps."
        },
        "SourceFile": {
          "shape": "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMI",
          "locationName": "sourceFile",
          "documentation": "External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', 'xml', and 'smi'."
        },
        "TimeDelta": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "timeDelta",
          "documentation": "Specifies a time delta in seconds to offset the captions from the source file."
        }
      },
      "documentation": "If your input captions are SCC, SMI, SRT, STL, TTML, or IMSC 1.1 in an xml file, specify the URI of the input caption source file. If your caption source is IMSC in an IMF package, use TrackSourceSettings instead of FileSoureSettings."
    },
    "FontScript": {
      "type": "string",
      "documentation": "Provide the font script, using an ISO 15924 script code, if the LanguageCode is not sufficient for determining the script type. Where LanguageCode or CustomLanguageCode is sufficient, use \"AUTOMATIC\" or leave unset.",
      "enum": [
        "AUTOMATIC",
        "HANS",
        "HANT"
      ]
    },
    "FrameCaptureSettings": {
      "type": "structure",
      "members": {
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places."
        },
        "MaxCaptures": {
          "shape": "__integerMin1Max10000000",
          "locationName": "maxCaptures",
          "documentation": "Maximum number of captures (encoded jpg output files)."
        },
        "Quality": {
          "shape": "__integerMin1Max100",
          "locationName": "quality",
          "documentation": "JPEG Quality - a higher value equals higher quality."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE."
    },
    "GetJobRequest": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "the job ID of the job.",
          "location": "uri"
        }
      },
      "required": [
        "Id"
      ]
    },
    "GetJobResponse": {
      "type": "structure",
      "members": {
        "Job": {
          "shape": "Job",
          "locationName": "job",
          "documentation": "Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
        }
      }
    },
    "GetJobTemplateRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the job template.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "GetJobTemplateResponse": {
      "type": "structure",
      "members": {
        "JobTemplate": {
          "shape": "JobTemplate",
          "locationName": "jobTemplate",
          "documentation": "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
        }
      }
    },
    "GetPresetRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the preset.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "GetPresetResponse": {
      "type": "structure",
      "members": {
        "Preset": {
          "shape": "Preset",
          "locationName": "preset",
          "documentation": "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
        }
      }
    },
    "GetQueueRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the queue that you want information about.",
          "location": "uri"
        }
      },
      "required": [
        "Name"
      ]
    },
    "GetQueueResponse": {
      "type": "structure",
      "members": {
        "Queue": {
          "shape": "Queue",
          "locationName": "queue",
          "documentation": "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
        }
      }
    },
    "H264AdaptiveQuantization": {
      "type": "string",
      "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.",
      "enum": [
        "OFF",
        "LOW",
        "MEDIUM",
        "HIGH",
        "HIGHER",
        "MAX"
      ]
    },
    "H264CodecLevel": {
      "type": "string",
      "documentation": "Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).",
      "enum": [
        "AUTO",
        "LEVEL_1",
        "LEVEL_1_1",
        "LEVEL_1_2",
        "LEVEL_1_3",
        "LEVEL_2",
        "LEVEL_2_1",
        "LEVEL_2_2",
        "LEVEL_3",
        "LEVEL_3_1",
        "LEVEL_3_2",
        "LEVEL_4",
        "LEVEL_4_1",
        "LEVEL_4_2",
        "LEVEL_5",
        "LEVEL_5_1",
        "LEVEL_5_2"
      ]
    },
    "H264CodecProfile": {
      "type": "string",
      "documentation": "H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.",
      "enum": [
        "BASELINE",
        "HIGH",
        "HIGH_10BIT",
        "HIGH_422",
        "HIGH_422_10BIT",
        "MAIN"
      ]
    },
    "H264DynamicSubGop": {
      "type": "string",
      "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).",
      "enum": [
        "ADAPTIVE",
        "STATIC"
      ]
    },
    "H264EntropyEncoding": {
      "type": "string",
      "documentation": "Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.",
      "enum": [
        "CABAC",
        "CAVLC"
      ]
    },
    "H264FieldEncoding": {
      "type": "string",
      "documentation": "Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs.",
      "enum": [
        "PAFF",
        "FORCE_FIELD"
      ]
    },
    "H264FlickerAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "H264FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "H264GopBReference": {
      "type": "string",
      "documentation": "If enable, use reference B frames for GOP structures that have B frames > 1.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264GopSizeUnits": {
      "type": "string",
      "documentation": "Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.",
      "enum": [
        "FRAMES",
        "SECONDS"
      ]
    },
    "H264InterlaceMode": {
      "type": "string",
      "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type, as follows.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose.",
      "enum": [
        "PROGRESSIVE",
        "TOP_FIELD",
        "BOTTOM_FIELD",
        "FOLLOW_TOP_FIELD",
        "FOLLOW_BOTTOM_FIELD"
      ]
    },
    "H264ParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "H264QualityTuningLevel": {
      "type": "string",
      "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.",
      "enum": [
        "SINGLE_PASS",
        "SINGLE_PASS_HQ",
        "MULTI_PASS_HQ"
      ]
    },
    "H264QvbrSettings": {
      "type": "structure",
      "members": {
        "MaxAverageBitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "maxAverageBitrate",
          "documentation": "Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output."
        },
        "QvbrQualityLevel": {
          "shape": "__integerMin1Max10",
          "locationName": "qvbrQualityLevel",
          "documentation": "Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within h264Settings. Specify the general target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
        },
        "QvbrQualityLevelFineTune": {
          "shape": "__doubleMin0Max1",
          "locationName": "qvbrQualityLevelFineTune",
          "documentation": "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
        }
      },
      "documentation": "Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
    },
    "H264RateControlMode": {
      "type": "string",
      "documentation": "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).",
      "enum": [
        "VBR",
        "CBR",
        "QVBR"
      ]
    },
    "H264RepeatPps": {
      "type": "string",
      "documentation": "Places a PPS header on each encoded picture, even if repeated.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264SceneChangeDetect": {
      "type": "string",
      "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.",
      "enum": [
        "DISABLED",
        "ENABLED",
        "TRANSITION_DETECTION"
      ]
    },
    "H264Settings": {
      "type": "structure",
      "members": {
        "AdaptiveQuantization": {
          "shape": "H264AdaptiveQuantization",
          "locationName": "adaptiveQuantization",
          "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality."
        },
        "Bitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
        },
        "CodecLevel": {
          "shape": "H264CodecLevel",
          "locationName": "codecLevel",
          "documentation": "Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO)."
        },
        "CodecProfile": {
          "shape": "H264CodecProfile",
          "locationName": "codecProfile",
          "documentation": "H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License."
        },
        "DynamicSubGop": {
          "shape": "H264DynamicSubGop",
          "locationName": "dynamicSubGop",
          "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
        },
        "EntropyEncoding": {
          "shape": "H264EntropyEncoding",
          "locationName": "entropyEncoding",
          "documentation": "Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC."
        },
        "FieldEncoding": {
          "shape": "H264FieldEncoding",
          "locationName": "fieldEncoding",
          "documentation": "Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs."
        },
        "FlickerAdaptiveQuantization": {
          "shape": "H264FlickerAdaptiveQuantization",
          "locationName": "flickerAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame to reduce flicker or 'pop' on I-frames."
        },
        "FramerateControl": {
          "shape": "H264FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "H264FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "Frame rate numerator - frame rate is a fraction, e.g. 24000 / 1001 = 23.976 fps."
        },
        "GopBReference": {
          "shape": "H264GopBReference",
          "locationName": "gopBReference",
          "documentation": "If enable, use reference B frames for GOP structures that have B frames > 1."
        },
        "GopClosedCadence": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "gopClosedCadence",
          "documentation": "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "GOP Length (keyframe interval) in frames or seconds. Must be greater than zero."
        },
        "GopSizeUnits": {
          "shape": "H264GopSizeUnits",
          "locationName": "gopSizeUnits",
          "documentation": "Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time."
        },
        "HrdBufferInitialFillPercentage": {
          "shape": "__integerMin0Max100",
          "locationName": "hrdBufferInitialFillPercentage",
          "documentation": "Percentage of the buffer that should initially be filled (HRD buffer model)."
        },
        "HrdBufferSize": {
          "shape": "__integerMin0Max1152000000",
          "locationName": "hrdBufferSize",
          "documentation": "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
        },
        "InterlaceMode": {
          "shape": "H264InterlaceMode",
          "locationName": "interlaceMode",
          "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type, as follows.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "maxBitrate",
          "documentation": "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
        },
        "MinIInterval": {
          "shape": "__integerMin0Max30",
          "locationName": "minIInterval",
          "documentation": "Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1"
        },
        "NumberBFramesBetweenReferenceFrames": {
          "shape": "__integerMin0Max7",
          "locationName": "numberBFramesBetweenReferenceFrames",
          "documentation": "Number of B-frames between reference frames."
        },
        "NumberReferenceFrames": {
          "shape": "__integerMin1Max6",
          "locationName": "numberReferenceFrames",
          "documentation": "Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding."
        },
        "ParControl": {
          "shape": "H264ParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "QualityTuningLevel": {
          "shape": "H264QualityTuningLevel",
          "locationName": "qualityTuningLevel",
          "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
        },
        "QvbrSettings": {
          "shape": "H264QvbrSettings",
          "locationName": "qvbrSettings",
          "documentation": "Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
        },
        "RateControlMode": {
          "shape": "H264RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
        },
        "RepeatPps": {
          "shape": "H264RepeatPps",
          "locationName": "repeatPps",
          "documentation": "Places a PPS header on each encoded picture, even if repeated."
        },
        "SceneChangeDetect": {
          "shape": "H264SceneChangeDetect",
          "locationName": "sceneChangeDetect",
          "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
        },
        "Slices": {
          "shape": "__integerMin1Max32",
          "locationName": "slices",
          "documentation": "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
        },
        "SlowPal": {
          "shape": "H264SlowPal",
          "locationName": "slowPal",
          "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly."
        },
        "Softness": {
          "shape": "__integerMin0Max128",
          "locationName": "softness",
          "documentation": "Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image."
        },
        "SpatialAdaptiveQuantization": {
          "shape": "H264SpatialAdaptiveQuantization",
          "locationName": "spatialAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on spatial variation of content complexity."
        },
        "Syntax": {
          "shape": "H264Syntax",
          "locationName": "syntax",
          "documentation": "Produces a bitstream compliant with SMPTE RP-2027."
        },
        "Telecine": {
          "shape": "H264Telecine",
          "locationName": "telecine",
          "documentation": "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i."
        },
        "TemporalAdaptiveQuantization": {
          "shape": "H264TemporalAdaptiveQuantization",
          "locationName": "temporalAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on temporal variation of content complexity."
        },
        "UnregisteredSeiTimecode": {
          "shape": "H264UnregisteredSeiTimecode",
          "locationName": "unregisteredSeiTimecode",
          "documentation": "Inserts timecode for each frame as 4 bytes of an unregistered SEI message."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264."
    },
    "H264SlowPal": {
      "type": "string",
      "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264SpatialAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on spatial variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264Syntax": {
      "type": "string",
      "documentation": "Produces a bitstream compliant with SMPTE RP-2027.",
      "enum": [
        "DEFAULT",
        "RP2027"
      ]
    },
    "H264Telecine": {
      "type": "string",
      "documentation": "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.",
      "enum": [
        "NONE",
        "SOFT",
        "HARD"
      ]
    },
    "H264TemporalAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on temporal variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H264UnregisteredSeiTimecode": {
      "type": "string",
      "documentation": "Inserts timecode for each frame as 4 bytes of an unregistered SEI message.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265AdaptiveQuantization": {
      "type": "string",
      "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.",
      "enum": [
        "OFF",
        "LOW",
        "MEDIUM",
        "HIGH",
        "HIGHER",
        "MAX"
      ]
    },
    "H265AlternateTransferFunctionSei": {
      "type": "string",
      "documentation": "Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265CodecLevel": {
      "type": "string",
      "documentation": "H.265 Level.",
      "enum": [
        "AUTO",
        "LEVEL_1",
        "LEVEL_2",
        "LEVEL_2_1",
        "LEVEL_3",
        "LEVEL_3_1",
        "LEVEL_4",
        "LEVEL_4_1",
        "LEVEL_5",
        "LEVEL_5_1",
        "LEVEL_5_2",
        "LEVEL_6",
        "LEVEL_6_1",
        "LEVEL_6_2"
      ]
    },
    "H265CodecProfile": {
      "type": "string",
      "documentation": "Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so \"Main/High\" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.",
      "enum": [
        "MAIN_MAIN",
        "MAIN_HIGH",
        "MAIN10_MAIN",
        "MAIN10_HIGH",
        "MAIN_422_8BIT_MAIN",
        "MAIN_422_8BIT_HIGH",
        "MAIN_422_10BIT_MAIN",
        "MAIN_422_10BIT_HIGH"
      ]
    },
    "H265DynamicSubGop": {
      "type": "string",
      "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).",
      "enum": [
        "ADAPTIVE",
        "STATIC"
      ]
    },
    "H265FlickerAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "H265FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "H265GopBReference": {
      "type": "string",
      "documentation": "If enable, use reference B frames for GOP structures that have B frames > 1.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265GopSizeUnits": {
      "type": "string",
      "documentation": "Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.",
      "enum": [
        "FRAMES",
        "SECONDS"
      ]
    },
    "H265InterlaceMode": {
      "type": "string",
      "documentation": "Choose the scan line type for the output. Choose Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Choose Top Field First (TOP_FIELD) or Bottom Field First (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Choose Follow, Default Top (FOLLOW_TOP_FIELD) or Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) to create an interlaced output with the same field polarity as the source. If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\". If the source is progressive, your output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose. If you don't choose a value, the service will default to Progressive (PROGRESSIVE).",
      "enum": [
        "PROGRESSIVE",
        "TOP_FIELD",
        "BOTTOM_FIELD",
        "FOLLOW_TOP_FIELD",
        "FOLLOW_BOTTOM_FIELD"
      ]
    },
    "H265ParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "H265QualityTuningLevel": {
      "type": "string",
      "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.",
      "enum": [
        "SINGLE_PASS",
        "SINGLE_PASS_HQ",
        "MULTI_PASS_HQ"
      ]
    },
    "H265QvbrSettings": {
      "type": "structure",
      "members": {
        "MaxAverageBitrate": {
          "shape": "__integerMin1000Max1466400000",
          "locationName": "maxAverageBitrate",
          "documentation": "Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value that you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output."
        },
        "QvbrQualityLevel": {
          "shape": "__integerMin1Max10",
          "locationName": "qvbrQualityLevel",
          "documentation": "Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within h265Settings. Specify the general target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9. Optionally, to specify a value between whole numbers, also provide a value for the setting qvbrQualityLevelFineTune. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33."
        },
        "QvbrQualityLevelFineTune": {
          "shape": "__doubleMin0Max1",
          "locationName": "qvbrQualityLevelFineTune",
          "documentation": "Optional. Specify a value here to set the QVBR quality to a level that is between whole numbers. For example, if you want your QVBR quality level to be 7.33, set qvbrQualityLevel to 7 and set qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality level to the nearest third of a whole number. For example, if you set qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your actual QVBR quality level is 7.33."
        }
      },
      "documentation": "Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
    },
    "H265RateControlMode": {
      "type": "string",
      "documentation": "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).",
      "enum": [
        "VBR",
        "CBR",
        "QVBR"
      ]
    },
    "H265SampleAdaptiveOffsetFilterMode": {
      "type": "string",
      "documentation": "Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content",
      "enum": [
        "DEFAULT",
        "ADAPTIVE",
        "OFF"
      ]
    },
    "H265SceneChangeDetect": {
      "type": "string",
      "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.",
      "enum": [
        "DISABLED",
        "ENABLED",
        "TRANSITION_DETECTION"
      ]
    },
    "H265Settings": {
      "type": "structure",
      "members": {
        "AdaptiveQuantization": {
          "shape": "H265AdaptiveQuantization",
          "locationName": "adaptiveQuantization",
          "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality."
        },
        "AlternateTransferFunctionSei": {
          "shape": "H265AlternateTransferFunctionSei",
          "locationName": "alternateTransferFunctionSei",
          "documentation": "Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF)."
        },
        "Bitrate": {
          "shape": "__integerMin1000Max1466400000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
        },
        "CodecLevel": {
          "shape": "H265CodecLevel",
          "locationName": "codecLevel",
          "documentation": "H.265 Level."
        },
        "CodecProfile": {
          "shape": "H265CodecProfile",
          "locationName": "codecProfile",
          "documentation": "Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so \"Main/High\" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License."
        },
        "DynamicSubGop": {
          "shape": "H265DynamicSubGop",
          "locationName": "dynamicSubGop",
          "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
        },
        "FlickerAdaptiveQuantization": {
          "shape": "H265FlickerAdaptiveQuantization",
          "locationName": "flickerAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame to reduce flicker or 'pop' on I-frames."
        },
        "FramerateControl": {
          "shape": "H265FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "H265FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "Frame rate denominator."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "Frame rate numerator - frame rate is a fraction, e.g. 24000 / 1001 = 23.976 fps."
        },
        "GopBReference": {
          "shape": "H265GopBReference",
          "locationName": "gopBReference",
          "documentation": "If enable, use reference B frames for GOP structures that have B frames > 1."
        },
        "GopClosedCadence": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "gopClosedCadence",
          "documentation": "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "GOP Length (keyframe interval) in frames or seconds. Must be greater than zero."
        },
        "GopSizeUnits": {
          "shape": "H265GopSizeUnits",
          "locationName": "gopSizeUnits",
          "documentation": "Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time."
        },
        "HrdBufferInitialFillPercentage": {
          "shape": "__integerMin0Max100",
          "locationName": "hrdBufferInitialFillPercentage",
          "documentation": "Percentage of the buffer that should initially be filled (HRD buffer model)."
        },
        "HrdBufferSize": {
          "shape": "__integerMin0Max1466400000",
          "locationName": "hrdBufferSize",
          "documentation": "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
        },
        "InterlaceMode": {
          "shape": "H265InterlaceMode",
          "locationName": "interlaceMode",
          "documentation": "Choose the scan line type for the output. Choose Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Choose Top Field First (TOP_FIELD) or Bottom Field First (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Choose Follow, Default Top (FOLLOW_TOP_FIELD) or Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) to create an interlaced output with the same field polarity as the source. If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\". If the source is progressive, your output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose. If you don't choose a value, the service will default to Progressive (PROGRESSIVE)."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max1466400000",
          "locationName": "maxBitrate",
          "documentation": "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR."
        },
        "MinIInterval": {
          "shape": "__integerMin0Max30",
          "locationName": "minIInterval",
          "documentation": "Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1"
        },
        "NumberBFramesBetweenReferenceFrames": {
          "shape": "__integerMin0Max7",
          "locationName": "numberBFramesBetweenReferenceFrames",
          "documentation": "Number of B-frames between reference frames."
        },
        "NumberReferenceFrames": {
          "shape": "__integerMin1Max6",
          "locationName": "numberReferenceFrames",
          "documentation": "Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding."
        },
        "ParControl": {
          "shape": "H265ParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "QualityTuningLevel": {
          "shape": "H265QualityTuningLevel",
          "locationName": "qualityTuningLevel",
          "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
        },
        "QvbrSettings": {
          "shape": "H265QvbrSettings",
          "locationName": "qvbrSettings",
          "documentation": "Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode."
        },
        "RateControlMode": {
          "shape": "H265RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR)."
        },
        "SampleAdaptiveOffsetFilterMode": {
          "shape": "H265SampleAdaptiveOffsetFilterMode",
          "locationName": "sampleAdaptiveOffsetFilterMode",
          "documentation": "Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content"
        },
        "SceneChangeDetect": {
          "shape": "H265SceneChangeDetect",
          "locationName": "sceneChangeDetect",
          "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default. If this output uses QVBR, choose Transition detection (TRANSITION_DETECTION) for further video quality improvement. For more information about QVBR, see https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr."
        },
        "Slices": {
          "shape": "__integerMin1Max32",
          "locationName": "slices",
          "documentation": "Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures."
        },
        "SlowPal": {
          "shape": "H265SlowPal",
          "locationName": "slowPal",
          "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly."
        },
        "SpatialAdaptiveQuantization": {
          "shape": "H265SpatialAdaptiveQuantization",
          "locationName": "spatialAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on spatial variation of content complexity."
        },
        "Telecine": {
          "shape": "H265Telecine",
          "locationName": "telecine",
          "documentation": "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i."
        },
        "TemporalAdaptiveQuantization": {
          "shape": "H265TemporalAdaptiveQuantization",
          "locationName": "temporalAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on temporal variation of content complexity."
        },
        "TemporalIds": {
          "shape": "H265TemporalIds",
          "locationName": "temporalIds",
          "documentation": "Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output."
        },
        "Tiles": {
          "shape": "H265Tiles",
          "locationName": "tiles",
          "documentation": "Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures."
        },
        "UnregisteredSeiTimecode": {
          "shape": "H265UnregisteredSeiTimecode",
          "locationName": "unregisteredSeiTimecode",
          "documentation": "Inserts timecode for each frame as 4 bytes of an unregistered SEI message."
        },
        "WriteMp4PackagingType": {
          "shape": "H265WriteMp4PackagingType",
          "locationName": "writeMp4PackagingType",
          "documentation": "If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples."
        }
      },
      "documentation": "Settings for H265 codec"
    },
    "H265SlowPal": {
      "type": "string",
      "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265SpatialAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on spatial variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265Telecine": {
      "type": "string",
      "documentation": "This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.",
      "enum": [
        "NONE",
        "SOFT",
        "HARD"
      ]
    },
    "H265TemporalAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on temporal variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265TemporalIds": {
      "type": "string",
      "documentation": "Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265Tiles": {
      "type": "string",
      "documentation": "Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265UnregisteredSeiTimecode": {
      "type": "string",
      "documentation": "Inserts timecode for each frame as 4 bytes of an unregistered SEI message.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "H265WriteMp4PackagingType": {
      "type": "string",
      "documentation": "If the location of parameter set NAL units doesn't matter in your workflow, ignore this setting. Use this setting only with CMAF or DASH outputs, or with standalone file outputs in an MPEG-4 container (MP4 outputs). Choose HVC1 to mark your output as HVC1. This makes your output compliant with the following specification: ISO IECJTC1 SC29 N13798 Text ISO/IEC FDIS 14496-15 3rd Edition. For these outputs, the service stores parameter set NAL units in the sample headers but not in the samples directly. For MP4 outputs, when you choose HVC1, your output video might not work properly with some downstream systems and video players. The service defaults to marking your output as HEV1. For these outputs, the service writes parameter set NAL units directly into the samples.",
      "enum": [
        "HVC1",
        "HEV1"
      ]
    },
    "Hdr10Metadata": {
      "type": "structure",
      "members": {
        "BluePrimaryX": {
          "shape": "__integerMin0Max50000",
          "locationName": "bluePrimaryX",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "BluePrimaryY": {
          "shape": "__integerMin0Max50000",
          "locationName": "bluePrimaryY",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "GreenPrimaryX": {
          "shape": "__integerMin0Max50000",
          "locationName": "greenPrimaryX",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "GreenPrimaryY": {
          "shape": "__integerMin0Max50000",
          "locationName": "greenPrimaryY",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "MaxContentLightLevel": {
          "shape": "__integerMin0Max65535",
          "locationName": "maxContentLightLevel",
          "documentation": "Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.  This setting doesn't have a default value; you must specify a value that is suitable for the content."
        },
        "MaxFrameAverageLightLevel": {
          "shape": "__integerMin0Max65535",
          "locationName": "maxFrameAverageLightLevel",
          "documentation": "Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter. This setting doesn't have a default value; you must specify a value that is suitable for the content."
        },
        "MaxLuminance": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "maxLuminance",
          "documentation": "Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter."
        },
        "MinLuminance": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "minLuminance",
          "documentation": "Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter"
        },
        "RedPrimaryX": {
          "shape": "__integerMin0Max50000",
          "locationName": "redPrimaryX",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "RedPrimaryY": {
          "shape": "__integerMin0Max50000",
          "locationName": "redPrimaryY",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "WhitePointX": {
          "shape": "__integerMin0Max50000",
          "locationName": "whitePointX",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        },
        "WhitePointY": {
          "shape": "__integerMin0Max50000",
          "locationName": "whitePointY",
          "documentation": "HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction."
        }
      },
      "documentation": "Use these settings to specify static color calibration metadata, as defined by SMPTE ST 2086. These values don't affect the pixel values that are encoded in the video stream. They are intended to help the downstream video player display content in a way that reflects the intentions of the the content creator."
    },
    "HlsAdMarkers": {
      "type": "string",
      "enum": [
        "ELEMENTAL",
        "ELEMENTAL_SCTE35"
      ]
    },
    "HlsAdditionalManifest": {
      "type": "structure",
      "members": {
        "ManifestNameModifier": {
          "shape": "__stringMin1",
          "locationName": "manifestNameModifier",
          "documentation": "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests."
        },
        "SelectedOutputs": {
          "shape": "__listOf__stringMin1",
          "locationName": "selectedOutputs",
          "documentation": "Specify the outputs that you want this additional top-level manifest to reference."
        }
      },
      "documentation": "Specify the details for each additional HLS manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
    },
    "HlsAudioOnlyContainer": {
      "type": "string",
      "documentation": "Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create a raw audio-only file with no container. Regardless of the value that you specify here, if this output has video, the service will place outputs into an MPEG2-TS container.",
      "enum": [
        "AUTOMATIC",
        "M2TS"
      ]
    },
    "HlsAudioOnlyHeader": {
      "type": "string",
      "documentation": "Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "HlsAudioTrackType": {
      "type": "string",
      "documentation": "Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO",
      "enum": [
        "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT",
        "ALTERNATE_AUDIO_AUTO_SELECT",
        "ALTERNATE_AUDIO_NOT_AUTO_SELECT",
        "AUDIO_ONLY_VARIANT_STREAM"
      ]
    },
    "HlsCaptionLanguageMapping": {
      "type": "structure",
      "members": {
        "CaptionChannel": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "captionChannel",
          "documentation": "Caption channel."
        },
        "CustomLanguageCode": {
          "shape": "__stringMin3Max3PatternAZaZ3",
          "locationName": "customLanguageCode",
          "documentation": "Specify the language for this captions channel, using the ISO 639-2 or ISO 639-3 three-letter language code"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "locationName": "languageCode",
          "documentation": "Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php."
        },
        "LanguageDescription": {
          "shape": "__string",
          "locationName": "languageDescription",
          "documentation": "Caption language description."
        }
      },
      "documentation": "Caption Language Mapping"
    },
    "HlsCaptionLanguageSetting": {
      "type": "string",
      "documentation": "Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.",
      "enum": [
        "INSERT",
        "OMIT",
        "NONE"
      ]
    },
    "HlsClientCache": {
      "type": "string",
      "documentation": "When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "HlsCodecSpecification": {
      "type": "string",
      "documentation": "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.",
      "enum": [
        "RFC_6381",
        "RFC_4281"
      ]
    },
    "HlsDirectoryStructure": {
      "type": "string",
      "documentation": "Indicates whether segments should be placed in subdirectories.",
      "enum": [
        "SINGLE_DIRECTORY",
        "SUBDIRECTORY_PER_STREAM"
      ]
    },
    "HlsEncryptionSettings": {
      "type": "structure",
      "members": {
        "ConstantInitializationVector": {
          "shape": "__stringMin32Max32Pattern09aFAF32",
          "locationName": "constantInitializationVector",
          "documentation": "This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default."
        },
        "EncryptionMethod": {
          "shape": "HlsEncryptionType",
          "locationName": "encryptionMethod",
          "documentation": "Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption."
        },
        "InitializationVectorInManifest": {
          "shape": "HlsInitializationVectorInManifest",
          "locationName": "initializationVectorInManifest",
          "documentation": "The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest."
        },
        "OfflineEncrypted": {
          "shape": "HlsOfflineEncrypted",
          "locationName": "offlineEncrypted",
          "documentation": "Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection."
        },
        "SpekeKeyProvider": {
          "shape": "SpekeKeyProvider",
          "locationName": "spekeKeyProvider",
          "documentation": "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
        },
        "StaticKeyProvider": {
          "shape": "StaticKeyProvider",
          "locationName": "staticKeyProvider",
          "documentation": "Use these settings to set up encryption with a static key provider."
        },
        "Type": {
          "shape": "HlsKeyProviderType",
          "locationName": "type",
          "documentation": "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html."
        }
      },
      "documentation": "Settings for HLS encryption"
    },
    "HlsEncryptionType": {
      "type": "string",
      "documentation": "Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.",
      "enum": [
        "AES128",
        "SAMPLE_AES"
      ]
    },
    "HlsGroupSettings": {
      "type": "structure",
      "members": {
        "AdMarkers": {
          "shape": "__listOfHlsAdMarkers",
          "locationName": "adMarkers",
          "documentation": "Choose one or more ad marker types to decorate your Apple HLS manifest. This setting does not determine whether SCTE-35 markers appear in the outputs themselves."
        },
        "AdditionalManifests": {
          "shape": "__listOfHlsAdditionalManifest",
          "locationName": "additionalManifests",
          "documentation": "By default, the service creates one top-level .m3u8 HLS manifest for each HLS output group in your job. This default manifest references every output in the output group. To create additional top-level manifests that reference a subset of the outputs in the output group, specify a list of them here."
        },
        "AudioOnlyHeader": {
          "shape": "HlsAudioOnlyHeader",
          "locationName": "audioOnlyHeader",
          "documentation": "Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments."
        },
        "BaseUrl": {
          "shape": "__string",
          "locationName": "baseUrl",
          "documentation": "A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file."
        },
        "CaptionLanguageMappings": {
          "shape": "__listOfHlsCaptionLanguageMapping",
          "locationName": "captionLanguageMappings",
          "documentation": "Language to be used on Caption outputs"
        },
        "CaptionLanguageSetting": {
          "shape": "HlsCaptionLanguageSetting",
          "locationName": "captionLanguageSetting",
          "documentation": "Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest."
        },
        "ClientCache": {
          "shape": "HlsClientCache",
          "locationName": "clientCache",
          "documentation": "When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay."
        },
        "CodecSpecification": {
          "shape": "HlsCodecSpecification",
          "locationName": "codecSpecification",
          "documentation": "Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation."
        },
        "Destination": {
          "shape": "__stringPatternS3",
          "locationName": "destination",
          "documentation": "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
        },
        "DestinationSettings": {
          "shape": "DestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Settings associated with the destination. Will vary based on the type of destination"
        },
        "DirectoryStructure": {
          "shape": "HlsDirectoryStructure",
          "locationName": "directoryStructure",
          "documentation": "Indicates whether segments should be placed in subdirectories."
        },
        "Encryption": {
          "shape": "HlsEncryptionSettings",
          "locationName": "encryption",
          "documentation": "DRM settings."
        },
        "ManifestCompression": {
          "shape": "HlsManifestCompression",
          "locationName": "manifestCompression",
          "documentation": "When set to GZIP, compresses HLS playlist."
        },
        "ManifestDurationFormat": {
          "shape": "HlsManifestDurationFormat",
          "locationName": "manifestDurationFormat",
          "documentation": "Indicates whether the output manifest should use floating point values for segment duration."
        },
        "MinFinalSegmentLength": {
          "shape": "__doubleMin0Max2147483647",
          "locationName": "minFinalSegmentLength",
          "documentation": "Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds."
        },
        "MinSegmentLength": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "minSegmentLength",
          "documentation": "When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed."
        },
        "OutputSelection": {
          "shape": "HlsOutputSelection",
          "locationName": "outputSelection",
          "documentation": "Indicates whether the .m3u8 manifest file should be generated for this HLS output group."
        },
        "ProgramDateTime": {
          "shape": "HlsProgramDateTime",
          "locationName": "programDateTime",
          "documentation": "Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset."
        },
        "ProgramDateTimePeriod": {
          "shape": "__integerMin0Max3600",
          "locationName": "programDateTimePeriod",
          "documentation": "Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds."
        },
        "SegmentControl": {
          "shape": "HlsSegmentControl",
          "locationName": "segmentControl",
          "documentation": "When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback."
        },
        "SegmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "segmentLength",
          "documentation": "Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer."
        },
        "SegmentsPerSubdirectory": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "segmentsPerSubdirectory",
          "documentation": "Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect."
        },
        "StreamInfResolution": {
          "shape": "HlsStreamInfResolution",
          "locationName": "streamInfResolution",
          "documentation": "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest."
        },
        "TimedMetadataId3Frame": {
          "shape": "HlsTimedMetadataId3Frame",
          "locationName": "timedMetadataId3Frame",
          "documentation": "Indicates ID3 frame that has the timecode."
        },
        "TimedMetadataId3Period": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "timedMetadataId3Period",
          "documentation": "Timed Metadata interval in seconds."
        },
        "TimestampDeltaMilliseconds": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "timestampDeltaMilliseconds",
          "documentation": "Provides an extra millisecond delta offset to fine tune the timestamps."
        }
      },
      "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS."
    },
    "HlsIFrameOnlyManifest": {
      "type": "string",
      "documentation": "When set to INCLUDE, writes I-Frame Only Manifest in addition to the HLS manifest",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "HlsInitializationVectorInManifest": {
      "type": "string",
      "documentation": "The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "HlsKeyProviderType": {
      "type": "string",
      "documentation": "Specify whether your DRM encryption key is static or from a key provider that follows the SPEKE standard. For more information about SPEKE, see https://docs.aws.amazon.com/speke/latest/documentation/what-is-speke.html.",
      "enum": [
        "SPEKE",
        "STATIC_KEY"
      ]
    },
    "HlsManifestCompression": {
      "type": "string",
      "documentation": "When set to GZIP, compresses HLS playlist.",
      "enum": [
        "GZIP",
        "NONE"
      ]
    },
    "HlsManifestDurationFormat": {
      "type": "string",
      "documentation": "Indicates whether the output manifest should use floating point values for segment duration.",
      "enum": [
        "FLOATING_POINT",
        "INTEGER"
      ]
    },
    "HlsOfflineEncrypted": {
      "type": "string",
      "documentation": "Enable this setting to insert the EXT-X-SESSION-KEY element into the master playlist. This allows for offline Apple HLS FairPlay content protection.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "HlsOutputSelection": {
      "type": "string",
      "documentation": "Indicates whether the .m3u8 manifest file should be generated for this HLS output group.",
      "enum": [
        "MANIFESTS_AND_SEGMENTS",
        "SEGMENTS_ONLY"
      ]
    },
    "HlsProgramDateTime": {
      "type": "string",
      "documentation": "Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "HlsSegmentControl": {
      "type": "string",
      "documentation": "When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.",
      "enum": [
        "SINGLE_FILE",
        "SEGMENTED_FILES"
      ]
    },
    "HlsSettings": {
      "type": "structure",
      "members": {
        "AudioGroupId": {
          "shape": "__string",
          "locationName": "audioGroupId",
          "documentation": "Specifies the group to which the audio Rendition belongs."
        },
        "AudioOnlyContainer": {
          "shape": "HlsAudioOnlyContainer",
          "locationName": "audioOnlyContainer",
          "documentation": "Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create an audio-only file in a raw container. Regardless of the value that you specify here, if this output has video, the service will place the output into an MPEG2-TS container."
        },
        "AudioRenditionSets": {
          "shape": "__string",
          "locationName": "audioRenditionSets",
          "documentation": "List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','."
        },
        "AudioTrackType": {
          "shape": "HlsAudioTrackType",
          "locationName": "audioTrackType",
          "documentation": "Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO"
        },
        "IFrameOnlyManifest": {
          "shape": "HlsIFrameOnlyManifest",
          "locationName": "iFrameOnlyManifest",
          "documentation": "When set to INCLUDE, writes I-Frame Only Manifest in addition to the HLS manifest"
        },
        "SegmentModifier": {
          "shape": "__string",
          "locationName": "segmentModifier",
          "documentation": "Use this setting to add an identifying string to the filename of each segment. The service adds this string between the name modifier and segment index number. You can use format identifiers in the string. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/using-variables-in-your-job-settings.html"
        }
      },
      "documentation": "Settings for HLS output groups"
    },
    "HlsStreamInfResolution": {
      "type": "string",
      "documentation": "Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "HlsTimedMetadataId3Frame": {
      "type": "string",
      "documentation": "Indicates ID3 frame that has the timecode.",
      "enum": [
        "NONE",
        "PRIV",
        "TDRL"
      ]
    },
    "HopDestination": {
      "type": "structure",
      "members": {
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Optional. When you set up a job to use queue hopping, you can specify a different relative priority for the job in the destination queue. If you don't specify, the relative priority will remain the same as in the previous queue."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "Optional unless the job is submitted on the default queue. When you set up a job to use queue hopping, you can specify a destination queue. This queue cannot be the original queue to which the job is submitted. If the original queue isn't the default queue and you don't specify the destination queue, the job will move to the default queue."
        },
        "WaitMinutes": {
          "shape": "__integer",
          "locationName": "waitMinutes",
          "documentation": "Required for setting up a job to use queue hopping. Minimum wait time in minutes until the job can hop to the destination queue. Valid range is 1 to 1440 minutes, inclusive."
        }
      },
      "documentation": "Optional. Configuration for a destination queue to which the job can hop once a customer-defined minimum wait time has passed."
    },
    "Id3Insertion": {
      "type": "structure",
      "members": {
        "Id3": {
          "shape": "__stringPatternAZaZ0902",
          "locationName": "id3",
          "documentation": "Use ID3 tag (Id3) to provide a tag value in base64-encode format."
        },
        "Timecode": {
          "shape": "__stringPattern010920405090509092",
          "locationName": "timecode",
          "documentation": "Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format."
        }
      },
      "documentation": "To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create multiple instances of ID3 insertion (Id3Insertion)."
    },
    "ImageInserter": {
      "type": "structure",
      "members": {
        "InsertableImages": {
          "shape": "__listOfInsertableImage",
          "locationName": "insertableImages",
          "documentation": "Specify the images that you want to overlay on your video. The images must be PNG or TGA files."
        }
      },
      "documentation": "Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input or output individually. This setting is disabled by default."
    },
    "ImscDestinationSettings": {
      "type": "structure",
      "members": {
        "StylePassthrough": {
          "shape": "ImscStylePassthrough",
          "locationName": "stylePassthrough",
          "documentation": "Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions."
        }
      },
      "documentation": "Settings specific to IMSC caption outputs."
    },
    "ImscStylePassthrough": {
      "type": "string",
      "documentation": "Keep this setting enabled to have MediaConvert use the font style and position information from the captions source in the output. This option is available only when your input captions are IMSC, SMPTE-TT, or TTML. Disable this setting for simplified output captions.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Input": {
      "type": "structure",
      "members": {
        "AudioSelectorGroups": {
          "shape": "__mapOfAudioSelectorGroup",
          "locationName": "audioSelectorGroups",
          "documentation": "Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See \"Audio Selector Group\":#inputs-audio_selector_group for more information."
        },
        "AudioSelectors": {
          "shape": "__mapOfAudioSelector",
          "locationName": "audioSelectors",
          "documentation": "Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input."
        },
        "CaptionSelectors": {
          "shape": "__mapOfCaptionSelector",
          "locationName": "captionSelectors",
          "documentation": "Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input."
        },
        "Crop": {
          "shape": "Rectangle",
          "locationName": "crop",
          "documentation": "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop)."
        },
        "DeblockFilter": {
          "shape": "InputDeblockFilter",
          "locationName": "deblockFilter",
          "documentation": "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs."
        },
        "DecryptionSettings": {
          "shape": "InputDecryptionSettings",
          "locationName": "decryptionSettings",
          "documentation": "Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content."
        },
        "DenoiseFilter": {
          "shape": "InputDenoiseFilter",
          "locationName": "denoiseFilter",
          "documentation": "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs."
        },
        "FileInput": {
          "shape": "__stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLL",
          "locationName": "fileInput",
          "documentation": "Specify the source file for your transcoding job. You can use multiple inputs in a single job. The service concatenates these inputs, in the order that you specify them in the job, to create the outputs. If your input format is IMF, specify your input by providing the path to your CPL. For example, \"s3://bucket/vf/cpl.xml\". If the CPL is in an incomplete IMP, make sure to use *Supplemental IMPs* (SupplementalImps) to specify any supplemental IMPs that contain assets referenced by the CPL."
        },
        "FilterEnable": {
          "shape": "InputFilterEnable",
          "locationName": "filterEnable",
          "documentation": "Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type."
        },
        "FilterStrength": {
          "shape": "__integerMinNegative5Max5",
          "locationName": "filterStrength",
          "documentation": "Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0."
        },
        "ImageInserter": {
          "shape": "ImageInserter",
          "locationName": "imageInserter",
          "documentation": "Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default."
        },
        "InputClippings": {
          "shape": "__listOfInputClipping",
          "locationName": "inputClippings",
          "documentation": "(InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them."
        },
        "Position": {
          "shape": "Rectangle",
          "locationName": "position",
          "documentation": "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior)."
        },
        "ProgramNumber": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "programNumber",
          "documentation": "Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default."
        },
        "PsiControl": {
          "shape": "InputPsiControl",
          "locationName": "psiControl",
          "documentation": "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data."
        },
        "SupplementalImps": {
          "shape": "__listOf__stringPatternS3ASSETMAPXml",
          "locationName": "supplementalImps",
          "documentation": "Provide a list of any necessary supplemental IMPs. You need supplemental IMPs if the CPL that you're using for your input is in an incomplete IMP. Specify either the supplemental IMP directories with a trailing slash or the ASSETMAP.xml files. For example [\"s3://bucket/ov/\", \"s3://bucket/vf2/ASSETMAP.xml\"]. You don't need to specify the IMP that contains your input CPL, because the service automatically detects it."
        },
        "TimecodeSource": {
          "shape": "InputTimecodeSource",
          "locationName": "timecodeSource",
          "documentation": "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
        },
        "TimecodeStart": {
          "shape": "__stringMin11Max11Pattern01D20305D205D",
          "locationName": "timecodeStart",
          "documentation": "Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
        },
        "VideoSelector": {
          "shape": "VideoSelector",
          "locationName": "videoSelector",
          "documentation": "Selector for video."
        }
      },
      "documentation": "Specifies media input"
    },
    "InputClipping": {
      "type": "structure",
      "members": {
        "EndTimecode": {
          "shape": "__stringPattern010920405090509092",
          "locationName": "endTimecode",
          "documentation": "Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for timecode source under input settings (InputTimecodeSource). For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to end six minutes into the video, use 01:06:00:00."
        },
        "StartTimecode": {
          "shape": "__stringPattern010920405090509092",
          "locationName": "startTimecode",
          "documentation": "Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:05:00:00."
        }
      },
      "documentation": "To transcode only portions of your input (clips), include one Input clipping (one instance of InputClipping in the JSON job file) for each input clip. All input clips you specify will be included in every output of the job."
    },
    "InputDeblockFilter": {
      "type": "string",
      "documentation": "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "InputDecryptionSettings": {
      "type": "structure",
      "members": {
        "DecryptionMode": {
          "shape": "DecryptionMode",
          "locationName": "decryptionMode",
          "documentation": "Specify the encryption mode that you used to encrypt your input files."
        },
        "EncryptedDecryptionKey": {
          "shape": "__stringMin24Max512PatternAZaZ0902",
          "locationName": "encryptedDecryptionKey",
          "documentation": "Warning! Don't provide your encryption key in plaintext. Your job settings could be intercepted, making your encrypted content vulnerable. Specify the encrypted version of the data key that you used to encrypt your content. The data key must be encrypted by AWS Key Management Service (KMS). The key can be 128, 192, or 256 bits."
        },
        "InitializationVector": {
          "shape": "__stringMin16Max24PatternAZaZ0922AZaZ0916",
          "locationName": "initializationVector",
          "documentation": "Specify the initialization vector that you used when you encrypted your content before uploading it to Amazon S3. You can use a 16-byte initialization vector with any encryption mode. Or, you can use a 12-byte initialization vector with GCM or CTR. MediaConvert accepts only initialization vectors that are base64-encoded."
        },
        "KmsKeyRegion": {
          "shape": "__stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912",
          "locationName": "kmsKeyRegion",
          "documentation": "Specify the AWS Region for AWS Key Management Service (KMS) that you used to encrypt your data key, if that Region is different from the one you are using for AWS Elemental MediaConvert."
        }
      },
      "documentation": "Settings for decrypting any input files that you encrypt before you upload them to Amazon S3. MediaConvert can decrypt files only when you use AWS Key Management Service (KMS) to encrypt the data key that you use to encrypt your content."
    },
    "InputDenoiseFilter": {
      "type": "string",
      "documentation": "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "InputFilterEnable": {
      "type": "string",
      "documentation": "Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type.",
      "enum": [
        "AUTO",
        "DISABLE",
        "FORCE"
      ]
    },
    "InputPsiControl": {
      "type": "string",
      "documentation": "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.",
      "enum": [
        "IGNORE_PSI",
        "USE_PSI"
      ]
    },
    "InputRotate": {
      "type": "string",
      "documentation": "Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata.",
      "enum": [
        "DEGREE_0",
        "DEGREES_90",
        "DEGREES_180",
        "DEGREES_270",
        "AUTO"
      ]
    },
    "InputTemplate": {
      "type": "structure",
      "members": {
        "AudioSelectorGroups": {
          "shape": "__mapOfAudioSelectorGroup",
          "locationName": "audioSelectorGroups",
          "documentation": "Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See \"Audio Selector Group\":#inputs-audio_selector_group for more information."
        },
        "AudioSelectors": {
          "shape": "__mapOfAudioSelector",
          "locationName": "audioSelectors",
          "documentation": "Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use multiple Audio selectors per input."
        },
        "CaptionSelectors": {
          "shape": "__mapOfCaptionSelector",
          "locationName": "captionSelectors",
          "documentation": "Use captions selectors to specify the captions data from your input that you use in your outputs. You can use up to 20 captions selectors per input."
        },
        "Crop": {
          "shape": "Rectangle",
          "locationName": "crop",
          "documentation": "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame. If you specify a value here, it will override any value that you specify in the output setting Cropping selection (crop)."
        },
        "DeblockFilter": {
          "shape": "InputDeblockFilter",
          "locationName": "deblockFilter",
          "documentation": "Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manually controllable for MPEG2 and uncompressed video inputs."
        },
        "DenoiseFilter": {
          "shape": "InputDenoiseFilter",
          "locationName": "denoiseFilter",
          "documentation": "Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs."
        },
        "FilterEnable": {
          "shape": "InputFilterEnable",
          "locationName": "filterEnable",
          "documentation": "Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type."
        },
        "FilterStrength": {
          "shape": "__integerMinNegative5Max5",
          "locationName": "filterStrength",
          "documentation": "Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0."
        },
        "ImageInserter": {
          "shape": "ImageInserter",
          "locationName": "imageInserter",
          "documentation": "Enable the image inserter feature to include a graphic overlay on your video. Enable or disable this feature for each input individually. This setting is disabled by default."
        },
        "InputClippings": {
          "shape": "__listOfInputClipping",
          "locationName": "inputClippings",
          "documentation": "(InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them."
        },
        "Position": {
          "shape": "Rectangle",
          "locationName": "position",
          "documentation": "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black. If you specify a value here, it will override any value that you specify in the output setting Selection placement (position). If you specify a value here, this will override any AFD values in your input, even if you set Respond to AFD (RespondToAfd) to Respond (RESPOND). If you specify a value here, this will ignore anything that you specify for the setting Scaling Behavior (scalingBehavior)."
        },
        "ProgramNumber": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "programNumber",
          "documentation": "Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default."
        },
        "PsiControl": {
          "shape": "InputPsiControl",
          "locationName": "psiControl",
          "documentation": "Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data."
        },
        "TimecodeSource": {
          "shape": "InputTimecodeSource",
          "locationName": "timecodeSource",
          "documentation": "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
        },
        "TimecodeStart": {
          "shape": "__stringMin11Max11Pattern01D20305D205D",
          "locationName": "timecodeStart",
          "documentation": "Specify the timecode that you want the service to use for this input's initial frame. To use this setting, you must set the Timecode source setting, located under the input settings (InputTimecodeSource), to Specified start (SPECIFIEDSTART). For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode."
        },
        "VideoSelector": {
          "shape": "VideoSelector",
          "locationName": "videoSelector",
          "documentation": "Selector for video."
        }
      },
      "documentation": "Specified video input in a template."
    },
    "InputTimecodeSource": {
      "type": "string",
      "documentation": "Use this Timecode source setting, located under the input settings (InputTimecodeSource), to specify how the service counts input video frames. This input frame count affects only the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Choose Embedded (EMBEDDED) to use the timecodes in your input video. Choose Start at zero (ZEROBASED) to start the first frame at zero. Choose Specified start (SPECIFIEDSTART) to start the first frame at the timecode that you specify in the setting Start timecode (timecodeStart). If you don't specify a value for Timecode source, the service will use Embedded by default. For more information about timecodes, see https://docs.aws.amazon.com/console/mediaconvert/timecode.",
      "enum": [
        "EMBEDDED",
        "ZEROBASED",
        "SPECIFIEDSTART"
      ]
    },
    "InsertableImage": {
      "type": "structure",
      "members": {
        "Duration": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "duration",
          "documentation": "Specify the time, in milliseconds, for the image to remain on the output video. This duration includes fade-in time but not fade-out time."
        },
        "FadeIn": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "fadeIn",
          "documentation": "Specify the length of time, in milliseconds, between the Start time that you specify for the image insertion and the time that the image appears at full opacity. Full opacity is the level that you specify for the opacity setting. If you don't specify a value for Fade-in, the image will appear abruptly at the overlay start time."
        },
        "FadeOut": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "fadeOut",
          "documentation": "Specify the length of time, in milliseconds, between the end of the time that you have specified for the image overlay Duration and when the overlaid image has faded to total transparency. If you don't specify a value for Fade-out, the image will disappear abruptly at the end of the inserted image duration."
        },
        "Height": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "height",
          "documentation": "Specify the height of the inserted image in pixels. If you specify a value that's larger than the video resolution height, the service will crop your overlaid image to fit. To use the native height of the image, keep this setting blank."
        },
        "ImageInserterInput": {
          "shape": "__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA",
          "locationName": "imageInserterInput",
          "documentation": "Specify the HTTP, HTTPS, or Amazon S3 location of the image that you want to overlay on the video. Use a PNG or TGA file."
        },
        "ImageX": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "imageX",
          "documentation": "Specify the distance, in pixels, between the inserted image and the left edge of the video frame. Required for any image overlay that you specify."
        },
        "ImageY": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "imageY",
          "documentation": "Specify the distance, in pixels, between the overlaid image and the top edge of the video frame. Required for any image overlay that you specify."
        },
        "Layer": {
          "shape": "__integerMin0Max99",
          "locationName": "layer",
          "documentation": "Specify how overlapping inserted images appear. Images with higher values for Layer appear on top of images with lower values for Layer."
        },
        "Opacity": {
          "shape": "__integerMin0Max100",
          "locationName": "opacity",
          "documentation": "Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50."
        },
        "StartTime": {
          "shape": "__stringPattern01D20305D205D",
          "locationName": "startTime",
          "documentation": "Specify the timecode of the frame that you want the overlay to first appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format. Remember to take into account your timecode source settings."
        },
        "Width": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "width",
          "documentation": "Specify the width of the inserted image in pixels. If you specify a value that's larger than the video resolution width, the service will crop your overlaid image to fit. To use the native width of the image, keep this setting blank."
        }
      },
      "documentation": "Settings that specify how your still graphic overlay appears."
    },
    "Job": {
      "type": "structure",
      "members": {
        "AccelerationSettings": {
          "shape": "AccelerationSettings",
          "locationName": "accelerationSettings",
          "documentation": "Accelerated transcoding can significantly speed up jobs with long, visually complex content."
        },
        "AccelerationStatus": {
          "shape": "AccelerationStatus",
          "locationName": "accelerationStatus",
          "documentation": "Describes whether the current job is running with accelerated transcoding. For jobs that have Acceleration (AccelerationMode) set to DISABLED, AccelerationStatus is always NOT_APPLICABLE. For jobs that have Acceleration (AccelerationMode) set to ENABLED or PREFERRED, AccelerationStatus is one of the other states. AccelerationStatus is IN_PROGRESS initially, while the service determines whether the input files and job settings are compatible with accelerated transcoding. If they are, AcclerationStatus is ACCELERATED. If your input files and job settings aren't compatible with accelerated transcoding, the service either fails your job or runs it without accelerated transcoding, depending on how you set Acceleration (AccelerationMode). When the service runs your job without accelerated transcoding, AccelerationStatus is NOT_ACCELERATED."
        },
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "An identifier for this resource that is unique within all of AWS."
        },
        "BillingTagsSource": {
          "shape": "BillingTagsSource",
          "locationName": "billingTagsSource",
          "documentation": "The tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up."
        },
        "CreatedAt": {
          "shape": "__timestampUnix",
          "locationName": "createdAt",
          "documentation": "The time, in Unix epoch format in seconds, when the job got created."
        },
        "CurrentPhase": {
          "shape": "JobPhase",
          "locationName": "currentPhase",
          "documentation": "A job's phase can be PROBING, TRANSCODING OR UPLOADING"
        },
        "ErrorCode": {
          "shape": "__integer",
          "locationName": "errorCode",
          "documentation": "Error code for the job"
        },
        "ErrorMessage": {
          "shape": "__string",
          "locationName": "errorMessage",
          "documentation": "Error message of Job"
        },
        "HopDestinations": {
          "shape": "__listOfHopDestination",
          "locationName": "hopDestinations",
          "documentation": "Optional list of hop destinations."
        },
        "Id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources"
        },
        "JobPercentComplete": {
          "shape": "__integer",
          "locationName": "jobPercentComplete",
          "documentation": "An estimate of how far your job has progressed. This estimate is shown as a percentage of the total time from when your job leaves its queue to when your output files appear in your output Amazon S3 bucket. AWS Elemental MediaConvert provides jobPercentComplete in CloudWatch STATUS_UPDATE events and in the response to GetJob and ListJobs requests. The jobPercentComplete estimate is reliable for the following input containers: Quicktime, Transport Stream, MP4, and MXF. For some jobs, the service can't provide information about job progress. In those cases, jobPercentComplete returns a null value."
        },
        "JobTemplate": {
          "shape": "__string",
          "locationName": "jobTemplate",
          "documentation": "The job template that the job is created from, if it is created from a job template."
        },
        "Messages": {
          "shape": "JobMessages",
          "locationName": "messages",
          "documentation": "Provides messages from the service about jobs that you have already successfully submitted."
        },
        "OutputGroupDetails": {
          "shape": "__listOfOutputGroupDetail",
          "locationName": "outputGroupDetails",
          "documentation": "List of output group details"
        },
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Relative priority on the job."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html"
        },
        "QueueTransitions": {
          "shape": "__listOfQueueTransition",
          "locationName": "queueTransitions",
          "documentation": "The job's queue hopping history."
        },
        "RetryCount": {
          "shape": "__integer",
          "locationName": "retryCount",
          "documentation": "The number of times that the service automatically attempted to process your job after encountering an error."
        },
        "Role": {
          "shape": "__string",
          "locationName": "role",
          "documentation": "The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html"
        },
        "Settings": {
          "shape": "JobSettings",
          "locationName": "settings",
          "documentation": "JobSettings contains all the transcode settings for a job."
        },
        "SimulateReservedQueue": {
          "shape": "SimulateReservedQueue",
          "locationName": "simulateReservedQueue",
          "documentation": "Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default."
        },
        "Status": {
          "shape": "JobStatus",
          "locationName": "status",
          "documentation": "A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR."
        },
        "StatusUpdateInterval": {
          "shape": "StatusUpdateInterval",
          "locationName": "statusUpdateInterval",
          "documentation": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
        },
        "Timing": {
          "shape": "Timing",
          "locationName": "timing",
          "documentation": "Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds."
        },
        "UserMetadata": {
          "shape": "__mapOf__string",
          "locationName": "userMetadata",
          "documentation": "User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs."
        }
      },
      "documentation": "Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html",
      "required": [
        "Role",
        "Settings"
      ]
    },
    "JobMessages": {
      "type": "structure",
      "members": {
        "Info": {
          "shape": "__listOf__string",
          "locationName": "info",
          "documentation": "List of messages that are informational only and don't indicate a problem with your job."
        },
        "Warning": {
          "shape": "__listOf__string",
          "locationName": "warning",
          "documentation": "List of messages that warn about conditions that might cause your job not to run or to fail."
        }
      },
      "documentation": "Provides messages from the service about jobs that you have already successfully submitted."
    },
    "JobPhase": {
      "type": "string",
      "documentation": "A job's phase can be PROBING, TRANSCODING OR UPLOADING",
      "enum": [
        "PROBING",
        "TRANSCODING",
        "UPLOADING"
      ]
    },
    "JobSettings": {
      "type": "structure",
      "members": {
        "AdAvailOffset": {
          "shape": "__integerMinNegative1000Max1000",
          "locationName": "adAvailOffset",
          "documentation": "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time."
        },
        "AvailBlanking": {
          "shape": "AvailBlanking",
          "locationName": "availBlanking",
          "documentation": "Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails."
        },
        "Esam": {
          "shape": "EsamSettings",
          "locationName": "esam",
          "documentation": "Settings for Event Signaling And Messaging (ESAM)."
        },
        "Inputs": {
          "shape": "__listOfInput",
          "locationName": "inputs",
          "documentation": "Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output."
        },
        "MotionImageInserter": {
          "shape": "MotionImageInserter",
          "locationName": "motionImageInserter",
          "documentation": "Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups."
        },
        "NielsenConfiguration": {
          "shape": "NielsenConfiguration",
          "locationName": "nielsenConfiguration",
          "documentation": "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
        },
        "OutputGroups": {
          "shape": "__listOfOutputGroup",
          "locationName": "outputGroups",
          "documentation": "(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings"
        },
        "TimecodeConfig": {
          "shape": "TimecodeConfig",
          "locationName": "timecodeConfig",
          "documentation": "Contains settings used to acquire and adjust timecode information from inputs."
        },
        "TimedMetadataInsertion": {
          "shape": "TimedMetadataInsertion",
          "locationName": "timedMetadataInsertion",
          "documentation": "Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects."
        }
      },
      "documentation": "JobSettings contains all the transcode settings for a job."
    },
    "JobStatus": {
      "type": "string",
      "documentation": "A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.",
      "enum": [
        "SUBMITTED",
        "PROGRESSING",
        "COMPLETE",
        "CANCELED",
        "ERROR"
      ]
    },
    "JobTemplate": {
      "type": "structure",
      "members": {
        "AccelerationSettings": {
          "shape": "AccelerationSettings",
          "locationName": "accelerationSettings",
          "documentation": "Accelerated transcoding can significantly speed up jobs with long, visually complex content."
        },
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "An identifier for this resource that is unique within all of AWS."
        },
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "An optional category you create to organize your job templates."
        },
        "CreatedAt": {
          "shape": "__timestampUnix",
          "locationName": "createdAt",
          "documentation": "The timestamp in epoch seconds for Job template creation."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "An optional description you create for each job template."
        },
        "HopDestinations": {
          "shape": "__listOfHopDestination",
          "locationName": "hopDestinations",
          "documentation": "Optional list of hop destinations."
        },
        "LastUpdated": {
          "shape": "__timestampUnix",
          "locationName": "lastUpdated",
          "documentation": "The timestamp in epoch seconds when the Job template was last updated."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "A name you create for each job template. Each name must be unique within your account."
        },
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Relative priority on the job."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue."
        },
        "Settings": {
          "shape": "JobTemplateSettings",
          "locationName": "settings",
          "documentation": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
        },
        "StatusUpdateInterval": {
          "shape": "StatusUpdateInterval",
          "locationName": "statusUpdateInterval",
          "documentation": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
        },
        "Type": {
          "shape": "Type",
          "locationName": "type",
          "documentation": "A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user."
        }
      },
      "documentation": "A job template is a pre-made set of encoding instructions that you can use to quickly create a job.",
      "required": [
        "Settings",
        "Name"
      ]
    },
    "JobTemplateListBy": {
      "type": "string",
      "documentation": "Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.",
      "enum": [
        "NAME",
        "CREATION_DATE",
        "SYSTEM"
      ]
    },
    "JobTemplateSettings": {
      "type": "structure",
      "members": {
        "AdAvailOffset": {
          "shape": "__integerMinNegative1000Max1000",
          "locationName": "adAvailOffset",
          "documentation": "When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time."
        },
        "AvailBlanking": {
          "shape": "AvailBlanking",
          "locationName": "availBlanking",
          "documentation": "Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails."
        },
        "Esam": {
          "shape": "EsamSettings",
          "locationName": "esam",
          "documentation": "Settings for Event Signaling And Messaging (ESAM)."
        },
        "Inputs": {
          "shape": "__listOfInputTemplate",
          "locationName": "inputs",
          "documentation": "Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template."
        },
        "MotionImageInserter": {
          "shape": "MotionImageInserter",
          "locationName": "motionImageInserter",
          "documentation": "Overlay motion graphics on top of your video. The motion graphics that you specify here appear on all outputs in all output groups."
        },
        "NielsenConfiguration": {
          "shape": "NielsenConfiguration",
          "locationName": "nielsenConfiguration",
          "documentation": "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
        },
        "OutputGroups": {
          "shape": "__listOfOutputGroup",
          "locationName": "outputGroups",
          "documentation": "(OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings"
        },
        "TimecodeConfig": {
          "shape": "TimecodeConfig",
          "locationName": "timecodeConfig",
          "documentation": "Contains settings used to acquire and adjust timecode information from inputs."
        },
        "TimedMetadataInsertion": {
          "shape": "TimedMetadataInsertion",
          "locationName": "timedMetadataInsertion",
          "documentation": "Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects."
        }
      },
      "documentation": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
    },
    "LanguageCode": {
      "type": "string",
      "documentation": "Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php.",
      "enum": [
        "ENG",
        "SPA",
        "FRA",
        "DEU",
        "GER",
        "ZHO",
        "ARA",
        "HIN",
        "JPN",
        "RUS",
        "POR",
        "ITA",
        "URD",
        "VIE",
        "KOR",
        "PAN",
        "ABK",
        "AAR",
        "AFR",
        "AKA",
        "SQI",
        "AMH",
        "ARG",
        "HYE",
        "ASM",
        "AVA",
        "AVE",
        "AYM",
        "AZE",
        "BAM",
        "BAK",
        "EUS",
        "BEL",
        "BEN",
        "BIH",
        "BIS",
        "BOS",
        "BRE",
        "BUL",
        "MYA",
        "CAT",
        "KHM",
        "CHA",
        "CHE",
        "NYA",
        "CHU",
        "CHV",
        "COR",
        "COS",
        "CRE",
        "HRV",
        "CES",
        "DAN",
        "DIV",
        "NLD",
        "DZO",
        "ENM",
        "EPO",
        "EST",
        "EWE",
        "FAO",
        "FIJ",
        "FIN",
        "FRM",
        "FUL",
        "GLA",
        "GLG",
        "LUG",
        "KAT",
        "ELL",
        "GRN",
        "GUJ",
        "HAT",
        "HAU",
        "HEB",
        "HER",
        "HMO",
        "HUN",
        "ISL",
        "IDO",
        "IBO",
        "IND",
        "INA",
        "ILE",
        "IKU",
        "IPK",
        "GLE",
        "JAV",
        "KAL",
        "KAN",
        "KAU",
        "KAS",
        "KAZ",
        "KIK",
        "KIN",
        "KIR",
        "KOM",
        "KON",
        "KUA",
        "KUR",
        "LAO",
        "LAT",
        "LAV",
        "LIM",
        "LIN",
        "LIT",
        "LUB",
        "LTZ",
        "MKD",
        "MLG",
        "MSA",
        "MAL",
        "MLT",
        "GLV",
        "MRI",
        "MAR",
        "MAH",
        "MON",
        "NAU",
        "NAV",
        "NDE",
        "NBL",
        "NDO",
        "NEP",
        "SME",
        "NOR",
        "NOB",
        "NNO",
        "OCI",
        "OJI",
        "ORI",
        "ORM",
        "OSS",
        "PLI",
        "FAS",
        "POL",
        "PUS",
        "QUE",
        "QAA",
        "RON",
        "ROH",
        "RUN",
        "SMO",
        "SAG",
        "SAN",
        "SRD",
        "SRB",
        "SNA",
        "III",
        "SND",
        "SIN",
        "SLK",
        "SLV",
        "SOM",
        "SOT",
        "SUN",
        "SWA",
        "SSW",
        "SWE",
        "TGL",
        "TAH",
        "TGK",
        "TAM",
        "TAT",
        "TEL",
        "THA",
        "BOD",
        "TIR",
        "TON",
        "TSO",
        "TSN",
        "TUR",
        "TUK",
        "TWI",
        "UIG",
        "UKR",
        "UZB",
        "VEN",
        "VOL",
        "WLN",
        "CYM",
        "FRY",
        "WOL",
        "XHO",
        "YID",
        "YOR",
        "ZHA",
        "ZUL",
        "ORJ",
        "QPC",
        "TNG"
      ]
    },
    "ListJobTemplatesRequest": {
      "type": "structure",
      "members": {
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "Optionally, specify a job template category to limit responses to only job templates from that category.",
          "location": "querystring"
        },
        "ListBy": {
          "shape": "JobTemplateListBy",
          "locationName": "listBy",
          "documentation": "Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.",
          "location": "querystring"
        },
        "MaxResults": {
          "shape": "__integerMin1Max20",
          "locationName": "maxResults",
          "documentation": "Optional. Number of job templates, up to twenty, that will be returned at one time.",
          "location": "querystring"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string, provided with the response to a previous request, to request the next batch of job templates.",
          "location": "querystring"
        },
        "Order": {
          "shape": "Order",
          "locationName": "order",
          "documentation": "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
          "location": "querystring"
        }
      }
    },
    "ListJobTemplatesResponse": {
      "type": "structure",
      "members": {
        "JobTemplates": {
          "shape": "__listOfJobTemplate",
          "locationName": "jobTemplates",
          "documentation": "List of Job templates."
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string to request the next batch of job templates."
        }
      }
    },
    "ListJobsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__integerMin1Max20",
          "locationName": "maxResults",
          "documentation": "Optional. Number of jobs, up to twenty, that will be returned at one time.",
          "location": "querystring"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Optional. Use this string, provided with the response to a previous request, to request the next batch of jobs.",
          "location": "querystring"
        },
        "Order": {
          "shape": "Order",
          "locationName": "order",
          "documentation": "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
          "location": "querystring"
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "Optional. Provide a queue name to get back only jobs from that queue.",
          "location": "querystring"
        },
        "Status": {
          "shape": "JobStatus",
          "locationName": "status",
          "documentation": "Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.",
          "location": "querystring"
        }
      }
    },
    "ListJobsResponse": {
      "type": "structure",
      "members": {
        "Jobs": {
          "shape": "__listOfJob",
          "locationName": "jobs",
          "documentation": "List of jobs"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string to request the next batch of jobs."
        }
      }
    },
    "ListPresetsRequest": {
      "type": "structure",
      "members": {
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "Optionally, specify a preset category to limit responses to only presets from that category.",
          "location": "querystring"
        },
        "ListBy": {
          "shape": "PresetListBy",
          "locationName": "listBy",
          "documentation": "Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.",
          "location": "querystring"
        },
        "MaxResults": {
          "shape": "__integerMin1Max20",
          "locationName": "maxResults",
          "documentation": "Optional. Number of presets, up to twenty, that will be returned at one time",
          "location": "querystring"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string, provided with the response to a previous request, to request the next batch of presets.",
          "location": "querystring"
        },
        "Order": {
          "shape": "Order",
          "locationName": "order",
          "documentation": "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
          "location": "querystring"
        }
      }
    },
    "ListPresetsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string to request the next batch of presets."
        },
        "Presets": {
          "shape": "__listOfPreset",
          "locationName": "presets",
          "documentation": "List of presets"
        }
      }
    },
    "ListQueuesRequest": {
      "type": "structure",
      "members": {
        "ListBy": {
          "shape": "QueueListBy",
          "locationName": "listBy",
          "documentation": "Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.",
          "location": "querystring"
        },
        "MaxResults": {
          "shape": "__integerMin1Max20",
          "locationName": "maxResults",
          "documentation": "Optional. Number of queues, up to twenty, that will be returned at one time.",
          "location": "querystring"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string, provided with the response to a previous request, to request the next batch of queues.",
          "location": "querystring"
        },
        "Order": {
          "shape": "Order",
          "locationName": "order",
          "documentation": "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
          "location": "querystring"
        }
      }
    },
    "ListQueuesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "Use this string to request the next batch of queues."
        },
        "Queues": {
          "shape": "__listOfQueue",
          "locationName": "queues",
          "documentation": "List of queues."
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.",
          "location": "uri"
        }
      },
      "required": [
        "Arn"
      ]
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "ResourceTags": {
          "shape": "ResourceTags",
          "locationName": "resourceTags",
          "documentation": "The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource."
        }
      }
    },
    "M2tsAudioBufferModel": {
      "type": "string",
      "documentation": "Selects between the DVB and ATSC buffer models for Dolby Digital audio.",
      "enum": [
        "DVB",
        "ATSC"
      ]
    },
    "M2tsBufferModel": {
      "type": "string",
      "documentation": "Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.",
      "enum": [
        "MULTIPLEX",
        "NONE"
      ]
    },
    "M2tsEbpAudioInterval": {
      "type": "string",
      "documentation": "When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).",
      "enum": [
        "VIDEO_AND_FIXED_INTERVALS",
        "VIDEO_INTERVAL"
      ]
    },
    "M2tsEbpPlacement": {
      "type": "string",
      "documentation": "Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).",
      "enum": [
        "VIDEO_AND_AUDIO_PIDS",
        "VIDEO_PID"
      ]
    },
    "M2tsEsRateInPes": {
      "type": "string",
      "documentation": "Controls whether to include the ES Rate field in the PES header.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "M2tsForceTsVideoEbpOrder": {
      "type": "string",
      "documentation": "Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE).",
      "enum": [
        "FORCE",
        "DEFAULT"
      ]
    },
    "M2tsNielsenId3": {
      "type": "string",
      "documentation": "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.",
      "enum": [
        "INSERT",
        "NONE"
      ]
    },
    "M2tsPcrControl": {
      "type": "string",
      "documentation": "When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.",
      "enum": [
        "PCR_EVERY_PES_PACKET",
        "CONFIGURED_PCR_PERIOD"
      ]
    },
    "M2tsRateMode": {
      "type": "string",
      "documentation": "When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.",
      "enum": [
        "VBR",
        "CBR"
      ]
    },
    "M2tsScte35Esam": {
      "type": "structure",
      "members": {
        "Scte35EsamPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "scte35EsamPid",
          "documentation": "Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM."
        }
      },
      "documentation": "Settings for SCTE-35 signals from ESAM. Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
    },
    "M2tsScte35Source": {
      "type": "string",
      "documentation": "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam).",
      "enum": [
        "PASSTHROUGH",
        "NONE"
      ]
    },
    "M2tsSegmentationMarkers": {
      "type": "string",
      "documentation": "Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.",
      "enum": [
        "NONE",
        "RAI_SEGSTART",
        "RAI_ADAPT",
        "PSI_SEGSTART",
        "EBP",
        "EBP_LEGACY"
      ]
    },
    "M2tsSegmentationStyle": {
      "type": "string",
      "documentation": "The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of \"reset_cadence\" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of \"maintain_cadence\" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.",
      "enum": [
        "MAINTAIN_CADENCE",
        "RESET_CADENCE"
      ]
    },
    "M2tsSettings": {
      "type": "structure",
      "members": {
        "AudioBufferModel": {
          "shape": "M2tsAudioBufferModel",
          "locationName": "audioBufferModel",
          "documentation": "Selects between the DVB and ATSC buffer models for Dolby Digital audio."
        },
        "AudioFramesPerPes": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "audioFramesPerPes",
          "documentation": "The number of audio frames to insert for each PES packet."
        },
        "AudioPids": {
          "shape": "__listOf__integerMin32Max8182",
          "locationName": "audioPids",
          "documentation": "Specify the packet identifiers (PIDs) for any elementary audio streams you include in this output. Specify multiple PIDs as a JSON array. Default is the range 482-492."
        },
        "Bitrate": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "bitrate",
          "documentation": "Specify the output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000."
        },
        "BufferModel": {
          "shape": "M2tsBufferModel",
          "locationName": "bufferModel",
          "documentation": "Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions."
        },
        "DvbNitSettings": {
          "shape": "DvbNitSettings",
          "locationName": "dvbNitSettings",
          "documentation": "Inserts DVB Network Information Table (NIT) at the specified table repetition interval."
        },
        "DvbSdtSettings": {
          "shape": "DvbSdtSettings",
          "locationName": "dvbSdtSettings",
          "documentation": "Inserts DVB Service Description Table (NIT) at the specified table repetition interval."
        },
        "DvbSubPids": {
          "shape": "__listOf__integerMin32Max8182",
          "locationName": "dvbSubPids",
          "documentation": "Specify the packet identifiers (PIDs) for DVB subtitle data included in this output. Specify multiple PIDs as a JSON array. Default is the range 460-479."
        },
        "DvbTdtSettings": {
          "shape": "DvbTdtSettings",
          "locationName": "dvbTdtSettings",
          "documentation": "Inserts DVB Time and Date Table (TDT) at the specified table repetition interval."
        },
        "DvbTeletextPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "dvbTeletextPid",
          "documentation": "Specify the packet identifier (PID) for DVB teletext data you include in this output. Default is 499."
        },
        "EbpAudioInterval": {
          "shape": "M2tsEbpAudioInterval",
          "locationName": "ebpAudioInterval",
          "documentation": "When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
        },
        "EbpPlacement": {
          "shape": "M2tsEbpPlacement",
          "locationName": "ebpPlacement",
          "documentation": "Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY)."
        },
        "EsRateInPes": {
          "shape": "M2tsEsRateInPes",
          "locationName": "esRateInPes",
          "documentation": "Controls whether to include the ES Rate field in the PES header."
        },
        "ForceTsVideoEbpOrder": {
          "shape": "M2tsForceTsVideoEbpOrder",
          "locationName": "forceTsVideoEbpOrder",
          "documentation": "Keep the default value (DEFAULT) unless you know that your audio EBP markers are incorrectly appearing before your video EBP markers. To correct this problem, set this value to Force (FORCE)."
        },
        "FragmentTime": {
          "shape": "__doubleMin0",
          "locationName": "fragmentTime",
          "documentation": "The length, in seconds, of each fragment. Only used with EBP markers."
        },
        "MaxPcrInterval": {
          "shape": "__integerMin0Max500",
          "locationName": "maxPcrInterval",
          "documentation": "Specify the maximum time, in milliseconds, between Program Clock References (PCRs) inserted into the transport stream."
        },
        "MinEbpInterval": {
          "shape": "__integerMin0Max10000",
          "locationName": "minEbpInterval",
          "documentation": "When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is \"stretched\" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate."
        },
        "NielsenId3": {
          "shape": "M2tsNielsenId3",
          "locationName": "nielsenId3",
          "documentation": "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
        },
        "NullPacketBitrate": {
          "shape": "__doubleMin0",
          "locationName": "nullPacketBitrate",
          "documentation": "Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets."
        },
        "PatInterval": {
          "shape": "__integerMin0Max1000",
          "locationName": "patInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        },
        "PcrControl": {
          "shape": "M2tsPcrControl",
          "locationName": "pcrControl",
          "documentation": "When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream."
        },
        "PcrPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "pcrPid",
          "documentation": "Specify the packet identifier (PID) for the program clock reference (PCR) in this output. If you do not specify a value, the service will use the value for Video PID (VideoPid)."
        },
        "PmtInterval": {
          "shape": "__integerMin0Max1000",
          "locationName": "pmtInterval",
          "documentation": "Specify the number of milliseconds between instances of the program map table (PMT) in the output transport stream."
        },
        "PmtPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "pmtPid",
          "documentation": "Specify the packet identifier (PID) for the program map table (PMT) itself. Default is 480."
        },
        "PrivateMetadataPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "privateMetadataPid",
          "documentation": "Specify the packet identifier (PID) of the private metadata stream. Default is 503."
        },
        "ProgramNumber": {
          "shape": "__integerMin0Max65535",
          "locationName": "programNumber",
          "documentation": "Use Program number (programNumber) to specify the program number used in the program map table (PMT) for this output. Default is 1. Program numbers and program map tables are parts of MPEG-2 transport stream containers, used for organizing data."
        },
        "RateMode": {
          "shape": "M2tsRateMode",
          "locationName": "rateMode",
          "documentation": "When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate."
        },
        "Scte35Esam": {
          "shape": "M2tsScte35Esam",
          "locationName": "scte35Esam",
          "documentation": "Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
        },
        "Scte35Pid": {
          "shape": "__integerMin32Max8182",
          "locationName": "scte35Pid",
          "documentation": "Specify the packet identifier (PID) of the SCTE-35 stream in the transport stream."
        },
        "Scte35Source": {
          "shape": "M2tsScte35Source",
          "locationName": "scte35Source",
          "documentation": "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam)."
        },
        "SegmentationMarkers": {
          "shape": "M2tsSegmentationMarkers",
          "locationName": "segmentationMarkers",
          "documentation": "Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format."
        },
        "SegmentationStyle": {
          "shape": "M2tsSegmentationStyle",
          "locationName": "segmentationStyle",
          "documentation": "The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of \"reset_cadence\" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of \"maintain_cadence\" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule."
        },
        "SegmentationTime": {
          "shape": "__doubleMin0",
          "locationName": "segmentationTime",
          "documentation": "Specify the length, in seconds, of each segment. Required unless markers is set to _none_."
        },
        "TimedMetadataPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "timedMetadataPid",
          "documentation": "Specify the packet identifier (PID) for timed metadata in this output. Default is 502."
        },
        "TransportStreamId": {
          "shape": "__integerMin0Max65535",
          "locationName": "transportStreamId",
          "documentation": "Specify the ID for the transport stream itself in the program map table for this output. Transport stream IDs and program map tables are parts of MPEG-2 transport stream containers, used for organizing data."
        },
        "VideoPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "videoPid",
          "documentation": "Specify the packet identifier (PID) of the elementary video stream in the transport stream."
        }
      },
      "documentation": "MPEG-2 TS container settings. These apply to outputs in a File output group when the output's container (ContainerType) is MPEG-2 Transport Stream (M2TS). In these assets, data is organized by the program map table (PMT). Each transport stream program contains subsets of data, including audio, video, and metadata. Each of these subsets of data has a numerical label called a packet identifier (PID). Each transport stream program corresponds to one MediaConvert output. The PMT lists the types of data in a program along with their PID. Downstream systems and players use the program map table to look up the PID for each type of data it accesses and then uses the PIDs to locate specific data within the asset."
    },
    "M3u8NielsenId3": {
      "type": "string",
      "documentation": "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.",
      "enum": [
        "INSERT",
        "NONE"
      ]
    },
    "M3u8PcrControl": {
      "type": "string",
      "documentation": "When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.",
      "enum": [
        "PCR_EVERY_PES_PACKET",
        "CONFIGURED_PCR_PERIOD"
      ]
    },
    "M3u8Scte35Source": {
      "type": "string",
      "documentation": "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml).",
      "enum": [
        "PASSTHROUGH",
        "NONE"
      ]
    },
    "M3u8Settings": {
      "type": "structure",
      "members": {
        "AudioFramesPerPes": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "audioFramesPerPes",
          "documentation": "The number of audio frames to insert for each PES packet."
        },
        "AudioPids": {
          "shape": "__listOf__integerMin32Max8182",
          "locationName": "audioPids",
          "documentation": "Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation."
        },
        "NielsenId3": {
          "shape": "M3u8NielsenId3",
          "locationName": "nielsenId3",
          "documentation": "If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output."
        },
        "PatInterval": {
          "shape": "__integerMin0Max1000",
          "locationName": "patInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        },
        "PcrControl": {
          "shape": "M3u8PcrControl",
          "locationName": "pcrControl",
          "documentation": "When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream."
        },
        "PcrPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "pcrPid",
          "documentation": "Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID."
        },
        "PmtInterval": {
          "shape": "__integerMin0Max1000",
          "locationName": "pmtInterval",
          "documentation": "The number of milliseconds between instances of this table in the output transport stream."
        },
        "PmtPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "pmtPid",
          "documentation": "Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream."
        },
        "PrivateMetadataPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "privateMetadataPid",
          "documentation": "Packet Identifier (PID) of the private metadata stream in the transport stream."
        },
        "ProgramNumber": {
          "shape": "__integerMin0Max65535",
          "locationName": "programNumber",
          "documentation": "The value of the program number field in the Program Map Table."
        },
        "Scte35Pid": {
          "shape": "__integerMin32Max8182",
          "locationName": "scte35Pid",
          "documentation": "Packet Identifier (PID) of the SCTE-35 stream in the transport stream."
        },
        "Scte35Source": {
          "shape": "M3u8Scte35Source",
          "locationName": "scte35Source",
          "documentation": "For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE) if you don't want manifest conditioning. Choose Passthrough (PASSTHROUGH) and choose Ad markers (adMarkers) if you do want manifest conditioning. In both cases, also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml)."
        },
        "TimedMetadata": {
          "shape": "TimedMetadata",
          "locationName": "timedMetadata",
          "documentation": "Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output."
        },
        "TimedMetadataPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "timedMetadataPid",
          "documentation": "Packet Identifier (PID) of the timed metadata stream in the transport stream."
        },
        "TransportStreamId": {
          "shape": "__integerMin0Max65535",
          "locationName": "transportStreamId",
          "documentation": "The value of the transport stream ID field in the Program Map Table."
        },
        "VideoPid": {
          "shape": "__integerMin32Max8182",
          "locationName": "videoPid",
          "documentation": "Packet Identifier (PID) of the elementary video stream in the transport stream."
        }
      },
      "documentation": "Settings for TS segments in HLS"
    },
    "MotionImageInserter": {
      "type": "structure",
      "members": {
        "Framerate": {
          "shape": "MotionImageInsertionFramerate",
          "locationName": "framerate",
          "documentation": "If your motion graphic asset is a .mov file, keep this setting unspecified. If your motion graphic asset is a series of .png files, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. Make sure that the number of images in your series matches the frame rate and your intended overlay duration. For example, if you want a 30-second overlay at 30 fps, you should have 900 .png images. This overlay frame rate doesn't need to match the frame rate of the underlying video."
        },
        "Input": {
          "shape": "__stringMin14Max1285PatternS3Mov09PngHttpsMov09Png",
          "locationName": "input",
          "documentation": "Specify the .mov file or series of .png files that you want to overlay on your video. For .png files, provide the file name of the first file in the series. Make sure that the names of the .png files end with sequential numbers that specify the order that they are played in. For example, overlay_000.png, overlay_001.png, overlay_002.png, and so on. The sequence must start at zero, and each image file name must have the same number of digits. Pad your initial file names with enough zeros to complete the sequence. For example, if the first image is overlay_0.png, there can be only 10 images in the sequence, with the last image being overlay_9.png. But if the first image is overlay_00.png, there can be 100 images in the sequence."
        },
        "InsertionMode": {
          "shape": "MotionImageInsertionMode",
          "locationName": "insertionMode",
          "documentation": "Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files."
        },
        "Offset": {
          "shape": "MotionImageInsertionOffset",
          "locationName": "offset",
          "documentation": "Use Offset to specify the placement of your motion graphic overlay on the video frame. Specify in pixels, from the upper-left corner of the frame. If you don't specify an offset, the service scales your overlay to the full size of the frame. Otherwise, the service inserts the overlay at its native resolution and scales the size up or down with any video scaling."
        },
        "Playback": {
          "shape": "MotionImagePlayback",
          "locationName": "playback",
          "documentation": "Specify whether your motion graphic overlay repeats on a loop or plays only once."
        },
        "StartTime": {
          "shape": "__stringMin11Max11Pattern01D20305D205D",
          "locationName": "startTime",
          "documentation": "Specify when the motion overlay begins. Use timecode format (HH:MM:SS:FF or HH:MM:SS;FF). Make sure that the timecode you provide here takes into account how you have set up your timecode configuration under both job settings and input settings. The simplest way to do that is to set both to start at 0. If you need to set up your job to follow timecodes embedded in your source that don't start at zero, make sure that you specify a start time that is after the first embedded timecode. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/setting-up-timecode.html Find job-wide and input timecode configuration settings in your JSON job settings specification at settings>timecodeConfig>source and settings>inputs>timecodeSource."
        }
      },
      "documentation": "Overlay motion graphics on top of your video at the time that you specify."
    },
    "MotionImageInsertionFramerate": {
      "type": "structure",
      "members": {
        "FramerateDenominator": {
          "shape": "__integerMin1Max17895697",
          "locationName": "framerateDenominator",
          "documentation": "The bottom of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 1."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483640",
          "locationName": "framerateNumerator",
          "documentation": "The top of the fraction that expresses your overlay frame rate. For example, if your frame rate is 24 fps, set this value to 24."
        }
      },
      "documentation": "For motion overlays that don't have a built-in frame rate, specify the frame rate of the overlay in frames per second, as a fraction. For example, specify 24 fps as 24/1. The overlay frame rate doesn't need to match the frame rate of the underlying video."
    },
    "MotionImageInsertionMode": {
      "type": "string",
      "documentation": "Choose the type of motion graphic asset that you are providing for your overlay. You can choose either a .mov file or a series of .png files.",
      "enum": [
        "MOV",
        "PNG"
      ]
    },
    "MotionImageInsertionOffset": {
      "type": "structure",
      "members": {
        "ImageX": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "imageX",
          "documentation": "Set the distance, in pixels, between the overlay and the left edge of the video frame."
        },
        "ImageY": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "imageY",
          "documentation": "Set the distance, in pixels, between the overlay and the top edge of the video frame."
        }
      },
      "documentation": "Specify the offset between the upper-left corner of the video frame and the top left corner of the overlay."
    },
    "MotionImagePlayback": {
      "type": "string",
      "documentation": "Specify whether your motion graphic overlay repeats on a loop or plays only once.",
      "enum": [
        "ONCE",
        "REPEAT"
      ]
    },
    "MovClapAtom": {
      "type": "string",
      "documentation": "When enabled, include 'clap' atom if appropriate for the video output settings.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "MovCslgAtom": {
      "type": "string",
      "documentation": "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "MovMpeg2FourCCControl": {
      "type": "string",
      "documentation": "When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.",
      "enum": [
        "XDCAM",
        "MPEG"
      ]
    },
    "MovPaddingControl": {
      "type": "string",
      "documentation": "If set to OMNEON, inserts Omneon-compatible padding",
      "enum": [
        "OMNEON",
        "NONE"
      ]
    },
    "MovReference": {
      "type": "string",
      "documentation": "Always keep the default value (SELF_CONTAINED) for this setting.",
      "enum": [
        "SELF_CONTAINED",
        "EXTERNAL"
      ]
    },
    "MovSettings": {
      "type": "structure",
      "members": {
        "ClapAtom": {
          "shape": "MovClapAtom",
          "locationName": "clapAtom",
          "documentation": "When enabled, include 'clap' atom if appropriate for the video output settings."
        },
        "CslgAtom": {
          "shape": "MovCslgAtom",
          "locationName": "cslgAtom",
          "documentation": "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
        },
        "Mpeg2FourCCControl": {
          "shape": "MovMpeg2FourCCControl",
          "locationName": "mpeg2FourCCControl",
          "documentation": "When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2."
        },
        "PaddingControl": {
          "shape": "MovPaddingControl",
          "locationName": "paddingControl",
          "documentation": "If set to OMNEON, inserts Omneon-compatible padding"
        },
        "Reference": {
          "shape": "MovReference",
          "locationName": "reference",
          "documentation": "Always keep the default value (SELF_CONTAINED) for this setting."
        }
      },
      "documentation": "Settings for MOV Container."
    },
    "Mp2Settings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin32000Max384000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second."
        },
        "Channels": {
          "shape": "__integerMin1Max2",
          "locationName": "channels",
          "documentation": "Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2."
        },
        "SampleRate": {
          "shape": "__integerMin32000Max48000",
          "locationName": "sampleRate",
          "documentation": "Sample rate in hz."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2."
    },
    "Mp3RateControlMode": {
      "type": "string",
      "documentation": "Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR).",
      "enum": [
        "CBR",
        "VBR"
      ]
    },
    "Mp3Settings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin16000Max320000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second."
        },
        "Channels": {
          "shape": "__integerMin1Max2",
          "locationName": "channels",
          "documentation": "Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2."
        },
        "RateControlMode": {
          "shape": "Mp3RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "Specify whether the service encodes this MP3 audio output with a constant bitrate (CBR) or a variable bitrate (VBR)."
        },
        "SampleRate": {
          "shape": "__integerMin22050Max48000",
          "locationName": "sampleRate",
          "documentation": "Sample rate in hz."
        },
        "VbrQuality": {
          "shape": "__integerMin0Max9",
          "locationName": "vbrQuality",
          "documentation": "Required when you set Bitrate control mode (rateControlMode) to VBR. Specify the audio quality of this MP3 output from 0 (highest quality) to 9 (lowest quality)."
        }
      },
      "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value MP3."
    },
    "Mp4CslgAtom": {
      "type": "string",
      "documentation": "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "Mp4FreeSpaceBox": {
      "type": "string",
      "documentation": "Inserts a free-space box immediately after the moov box.",
      "enum": [
        "INCLUDE",
        "EXCLUDE"
      ]
    },
    "Mp4MoovPlacement": {
      "type": "string",
      "documentation": "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.",
      "enum": [
        "PROGRESSIVE_DOWNLOAD",
        "NORMAL"
      ]
    },
    "Mp4Settings": {
      "type": "structure",
      "members": {
        "CslgAtom": {
          "shape": "Mp4CslgAtom",
          "locationName": "cslgAtom",
          "documentation": "When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools."
        },
        "CttsVersion": {
          "shape": "__integerMin0Max1",
          "locationName": "cttsVersion",
          "documentation": "Ignore this setting unless compliance to the CTTS box version specification matters in your workflow. Specify a value of 1 to set your CTTS box version to 1 and make your output compliant with the specification. When you specify a value of 1, you must also set CSLG atom (cslgAtom) to the value INCLUDE. Keep the default value 0 to set your CTTS box version to 0. This can provide backward compatibility for some players and packagers."
        },
        "FreeSpaceBox": {
          "shape": "Mp4FreeSpaceBox",
          "locationName": "freeSpaceBox",
          "documentation": "Inserts a free-space box immediately after the moov box."
        },
        "MoovPlacement": {
          "shape": "Mp4MoovPlacement",
          "locationName": "moovPlacement",
          "documentation": "If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end."
        },
        "Mp4MajorBrand": {
          "shape": "__string",
          "locationName": "mp4MajorBrand",
          "documentation": "Overrides the \"Major Brand\" field in the output file. Usually not necessary to specify."
        }
      },
      "documentation": "Settings for MP4 container. You can create audio-only AAC outputs with this container."
    },
    "MpdCaptionContainerType": {
      "type": "string",
      "documentation": "Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.",
      "enum": [
        "RAW",
        "FRAGMENTED_MP4"
      ]
    },
    "MpdScte35Esam": {
      "type": "string",
      "documentation": "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).",
      "enum": [
        "INSERT",
        "NONE"
      ]
    },
    "MpdScte35Source": {
      "type": "string",
      "documentation": "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.",
      "enum": [
        "PASSTHROUGH",
        "NONE"
      ]
    },
    "MpdSettings": {
      "type": "structure",
      "members": {
        "CaptionContainerType": {
          "shape": "MpdCaptionContainerType",
          "locationName": "captionContainerType",
          "documentation": "Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files."
        },
        "Scte35Esam": {
          "shape": "MpdScte35Esam",
          "locationName": "scte35Esam",
          "documentation": "Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml)."
        },
        "Scte35Source": {
          "shape": "MpdScte35Source",
          "locationName": "scte35Source",
          "documentation": "Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output."
        }
      },
      "documentation": "Settings for MP4 segments in DASH"
    },
    "Mpeg2AdaptiveQuantization": {
      "type": "string",
      "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.",
      "enum": [
        "OFF",
        "LOW",
        "MEDIUM",
        "HIGH"
      ]
    },
    "Mpeg2CodecLevel": {
      "type": "string",
      "documentation": "Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.",
      "enum": [
        "AUTO",
        "LOW",
        "MAIN",
        "HIGH1440",
        "HIGH"
      ]
    },
    "Mpeg2CodecProfile": {
      "type": "string",
      "documentation": "Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.",
      "enum": [
        "MAIN",
        "PROFILE_422"
      ]
    },
    "Mpeg2DynamicSubGop": {
      "type": "string",
      "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).",
      "enum": [
        "ADAPTIVE",
        "STATIC"
      ]
    },
    "Mpeg2FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Mpeg2FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "Mpeg2GopSizeUnits": {
      "type": "string",
      "documentation": "Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.",
      "enum": [
        "FRAMES",
        "SECONDS"
      ]
    },
    "Mpeg2InterlaceMode": {
      "type": "string",
      "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose.",
      "enum": [
        "PROGRESSIVE",
        "TOP_FIELD",
        "BOTTOM_FIELD",
        "FOLLOW_TOP_FIELD",
        "FOLLOW_BOTTOM_FIELD"
      ]
    },
    "Mpeg2IntraDcPrecision": {
      "type": "string",
      "documentation": "Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.",
      "enum": [
        "AUTO",
        "INTRA_DC_PRECISION_8",
        "INTRA_DC_PRECISION_9",
        "INTRA_DC_PRECISION_10",
        "INTRA_DC_PRECISION_11"
      ]
    },
    "Mpeg2ParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Mpeg2QualityTuningLevel": {
      "type": "string",
      "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding.",
      "enum": [
        "SINGLE_PASS",
        "MULTI_PASS"
      ]
    },
    "Mpeg2RateControlMode": {
      "type": "string",
      "documentation": "Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the bitrate is variable (vbr) or constant (cbr).",
      "enum": [
        "VBR",
        "CBR"
      ]
    },
    "Mpeg2SceneChangeDetect": {
      "type": "string",
      "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "Mpeg2Settings": {
      "type": "structure",
      "members": {
        "AdaptiveQuantization": {
          "shape": "Mpeg2AdaptiveQuantization",
          "locationName": "adaptiveQuantization",
          "documentation": "Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality."
        },
        "Bitrate": {
          "shape": "__integerMin1000Max288000000",
          "locationName": "bitrate",
          "documentation": "Specify the average bitrate in bits per second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000."
        },
        "CodecLevel": {
          "shape": "Mpeg2CodecLevel",
          "locationName": "codecLevel",
          "documentation": "Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output."
        },
        "CodecProfile": {
          "shape": "Mpeg2CodecProfile",
          "locationName": "codecProfile",
          "documentation": "Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output."
        },
        "DynamicSubGop": {
          "shape": "Mpeg2DynamicSubGop",
          "locationName": "dynamicSubGop",
          "documentation": "Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames)."
        },
        "FramerateControl": {
          "shape": "Mpeg2FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "Mpeg2FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max1001",
          "locationName": "framerateDenominator",
          "documentation": "Frame rate denominator."
        },
        "FramerateNumerator": {
          "shape": "__integerMin24Max60000",
          "locationName": "framerateNumerator",
          "documentation": "Frame rate numerator - frame rate is a fraction, e.g. 24000 / 1001 = 23.976 fps."
        },
        "GopClosedCadence": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "gopClosedCadence",
          "documentation": "Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "GOP Length (keyframe interval) in frames or seconds. Must be greater than zero."
        },
        "GopSizeUnits": {
          "shape": "Mpeg2GopSizeUnits",
          "locationName": "gopSizeUnits",
          "documentation": "Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time."
        },
        "HrdBufferInitialFillPercentage": {
          "shape": "__integerMin0Max100",
          "locationName": "hrdBufferInitialFillPercentage",
          "documentation": "Percentage of the buffer that should initially be filled (HRD buffer model)."
        },
        "HrdBufferSize": {
          "shape": "__integerMin0Max47185920",
          "locationName": "hrdBufferSize",
          "documentation": "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
        },
        "InterlaceMode": {
          "shape": "Mpeg2InterlaceMode",
          "locationName": "interlaceMode",
          "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose."
        },
        "IntraDcPrecision": {
          "shape": "Mpeg2IntraDcPrecision",
          "locationName": "intraDcPrecision",
          "documentation": "Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max300000000",
          "locationName": "maxBitrate",
          "documentation": "Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000."
        },
        "MinIInterval": {
          "shape": "__integerMin0Max30",
          "locationName": "minIInterval",
          "documentation": "Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1"
        },
        "NumberBFramesBetweenReferenceFrames": {
          "shape": "__integerMin0Max7",
          "locationName": "numberBFramesBetweenReferenceFrames",
          "documentation": "Number of B-frames between reference frames."
        },
        "ParControl": {
          "shape": "Mpeg2ParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "QualityTuningLevel": {
          "shape": "Mpeg2QualityTuningLevel",
          "locationName": "qualityTuningLevel",
          "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, single-pass encoding."
        },
        "RateControlMode": {
          "shape": "Mpeg2RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the bitrate is variable (vbr) or constant (cbr)."
        },
        "SceneChangeDetect": {
          "shape": "Mpeg2SceneChangeDetect",
          "locationName": "sceneChangeDetect",
          "documentation": "Enable this setting to insert I-frames at scene changes that the service automatically detects. This improves video quality and is enabled by default."
        },
        "SlowPal": {
          "shape": "Mpeg2SlowPal",
          "locationName": "slowPal",
          "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly."
        },
        "Softness": {
          "shape": "__integerMin0Max128",
          "locationName": "softness",
          "documentation": "Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image."
        },
        "SpatialAdaptiveQuantization": {
          "shape": "Mpeg2SpatialAdaptiveQuantization",
          "locationName": "spatialAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on spatial variation of content complexity."
        },
        "Syntax": {
          "shape": "Mpeg2Syntax",
          "locationName": "syntax",
          "documentation": "Produces a Type D-10 compatible bitstream (SMPTE 356M-2001)."
        },
        "Telecine": {
          "shape": "Mpeg2Telecine",
          "locationName": "telecine",
          "documentation": "Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player."
        },
        "TemporalAdaptiveQuantization": {
          "shape": "Mpeg2TemporalAdaptiveQuantization",
          "locationName": "temporalAdaptiveQuantization",
          "documentation": "Adjust quantization within each frame based on temporal variation of content complexity."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2."
    },
    "Mpeg2SlowPal": {
      "type": "string",
      "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "Mpeg2SpatialAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on spatial variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "Mpeg2Syntax": {
      "type": "string",
      "documentation": "Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).",
      "enum": [
        "DEFAULT",
        "D_10"
      ]
    },
    "Mpeg2Telecine": {
      "type": "string",
      "documentation": "Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.",
      "enum": [
        "NONE",
        "SOFT",
        "HARD"
      ]
    },
    "Mpeg2TemporalAdaptiveQuantization": {
      "type": "string",
      "documentation": "Adjust quantization within each frame based on temporal variation of content complexity.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "MsSmoothAdditionalManifest": {
      "type": "structure",
      "members": {
        "ManifestNameModifier": {
          "shape": "__stringMin1",
          "locationName": "manifestNameModifier",
          "documentation": "Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your Microsoft Smooth group is film-name.ismv. If you enter \"-no-premium\" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.ismv."
        },
        "SelectedOutputs": {
          "shape": "__listOf__stringMin1",
          "locationName": "selectedOutputs",
          "documentation": "Specify the outputs that you want this additional top-level manifest to reference."
        }
      },
      "documentation": "Specify the details for each additional Microsoft Smooth Streaming manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group."
    },
    "MsSmoothAudioDeduplication": {
      "type": "string",
      "documentation": "COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.",
      "enum": [
        "COMBINE_DUPLICATE_STREAMS",
        "NONE"
      ]
    },
    "MsSmoothEncryptionSettings": {
      "type": "structure",
      "members": {
        "SpekeKeyProvider": {
          "shape": "SpekeKeyProvider",
          "locationName": "spekeKeyProvider",
          "documentation": "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
        }
      },
      "documentation": "If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider."
    },
    "MsSmoothGroupSettings": {
      "type": "structure",
      "members": {
        "AdditionalManifests": {
          "shape": "__listOfMsSmoothAdditionalManifest",
          "locationName": "additionalManifests",
          "documentation": "By default, the service creates one .ism Microsoft Smooth Streaming manifest for each Microsoft Smooth Streaming output group in your job. This default manifest references every output in the output group. To create additional manifests that reference a subset of the outputs in the output group, specify a list of them here."
        },
        "AudioDeduplication": {
          "shape": "MsSmoothAudioDeduplication",
          "locationName": "audioDeduplication",
          "documentation": "COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream."
        },
        "Destination": {
          "shape": "__stringPatternS3",
          "locationName": "destination",
          "documentation": "Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file."
        },
        "DestinationSettings": {
          "shape": "DestinationSettings",
          "locationName": "destinationSettings",
          "documentation": "Settings associated with the destination. Will vary based on the type of destination"
        },
        "Encryption": {
          "shape": "MsSmoothEncryptionSettings",
          "locationName": "encryption",
          "documentation": "If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider."
        },
        "FragmentLength": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "fragmentLength",
          "documentation": "Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and frame rate."
        },
        "ManifestEncoding": {
          "shape": "MsSmoothManifestEncoding",
          "locationName": "manifestEncoding",
          "documentation": "Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16."
        }
      },
      "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS."
    },
    "MsSmoothManifestEncoding": {
      "type": "string",
      "documentation": "Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.",
      "enum": [
        "UTF8",
        "UTF16"
      ]
    },
    "MxfAfdSignaling": {
      "type": "string",
      "documentation": "Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy (NO_COPY) to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings.",
      "enum": [
        "NO_COPY",
        "COPY_FROM_VIDEO"
      ]
    },
    "MxfSettings": {
      "type": "structure",
      "members": {
        "AfdSignaling": {
          "shape": "MxfAfdSignaling",
          "locationName": "afdSignaling",
          "documentation": "Optional. When you have AFD signaling set up in your output video stream, use this setting to choose whether to also include it in the MXF wrapper. Choose Don't copy (NO_COPY) to exclude AFD signaling from the MXF wrapper. Choose Copy from video stream (COPY_FROM_VIDEO) to copy the AFD values from the video stream for this output to the MXF wrapper. Regardless of which option you choose, the AFD values remain in the video stream. Related settings: To set up your output to include or exclude AFD values, see AfdSignaling, under VideoDescription. On the console, find AFD signaling under the output's video encoding settings."
        }
      },
      "documentation": "MXF settings"
    },
    "NexGuardFileMarkerSettings": {
      "type": "structure",
      "members": {
        "License": {
          "shape": "__stringMin1Max100000",
          "locationName": "license",
          "documentation": "Use the base64 license string that Nagra provides you. Enter it directly in your JSON job specification or in the console. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job."
        },
        "Payload": {
          "shape": "__integerMin0Max4194303",
          "locationName": "payload",
          "documentation": "Specify the payload ID that you want associated with this output. Valid values vary depending on your Nagra NexGuard forensic watermarking workflow. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job. For PreRelease Content (NGPR/G2), specify an integer from 1 through 4,194,303. You must generate a unique ID for each asset you watermark, and keep a record of which ID you have assigned to each asset. Neither Nagra nor MediaConvert keep track of the relationship between output files and your IDs. For OTT Streaming, create two adaptive bitrate (ABR) stacks for each asset. Do this by setting up two output groups. For one output group, set the value of Payload ID (payload) to 0 in every output. For the other output group, set Payload ID (payload) to 1 in every output."
        },
        "Preset": {
          "shape": "__stringMin1Max256",
          "locationName": "preset",
          "documentation": "Enter one of the watermarking preset strings that Nagra provides you. Required when you include Nagra NexGuard File Marker watermarking (NexGuardWatermarkingSettings) in your job."
        },
        "Strength": {
          "shape": "WatermarkingStrength",
          "locationName": "strength",
          "documentation": "Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value."
        }
      },
      "documentation": "For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows."
    },
    "NielsenConfiguration": {
      "type": "structure",
      "members": {
        "BreakoutCode": {
          "shape": "__integerMin0Max0",
          "locationName": "breakoutCode",
          "documentation": "Nielsen has discontinued the use of breakout code functionality. If you must include this property, set the value to zero."
        },
        "DistributorId": {
          "shape": "__string",
          "locationName": "distributorId",
          "documentation": "Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen."
        }
      },
      "documentation": "Settings for your Nielsen configuration. If you don't do Nielsen measurement and analytics, ignore these settings. When you enable Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM to ID3 tagging for all outputs in the job. To enable Nielsen configuration programmatically, include an instance of nielsenConfiguration in your JSON job specification. Even if you don't include any children of nielsenConfiguration, you still enable the setting."
    },
    "NoiseFilterPostTemporalSharpening": {
      "type": "string",
      "documentation": "Optional. When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), you can use this setting to apply sharpening. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply filtering, depending on input type and quality. When you set Noise reducer to Temporal, your output bandwidth is reduced. When Post temporal sharpening is also enabled, that bandwidth reduction is smaller.",
      "enum": [
        "DISABLED",
        "ENABLED",
        "AUTO"
      ]
    },
    "NoiseReducer": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "NoiseReducerFilter",
          "locationName": "filter",
          "documentation": "Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion."
        },
        "FilterSettings": {
          "shape": "NoiseReducerFilterSettings",
          "locationName": "filterSettings",
          "documentation": "Settings for a noise reducer filter"
        },
        "SpatialFilterSettings": {
          "shape": "NoiseReducerSpatialFilterSettings",
          "locationName": "spatialFilterSettings",
          "documentation": "Noise reducer filter settings for spatial filter."
        },
        "TemporalFilterSettings": {
          "shape": "NoiseReducerTemporalFilterSettings",
          "locationName": "temporalFilterSettings",
          "documentation": "Noise reducer filter settings for temporal filter."
        }
      },
      "documentation": "Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter)."
    },
    "NoiseReducerFilter": {
      "type": "string",
      "documentation": "Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral preserves edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) do convolution filtering. * Conserve does min/max noise reduction. * Spatial does frequency-domain filtering based on JND principles. * Temporal optimizes video quality for complex motion.",
      "enum": [
        "BILATERAL",
        "MEAN",
        "GAUSSIAN",
        "LANCZOS",
        "SHARPEN",
        "CONSERVE",
        "SPATIAL",
        "TEMPORAL"
      ]
    },
    "NoiseReducerFilterSettings": {
      "type": "structure",
      "members": {
        "Strength": {
          "shape": "__integerMin0Max3",
          "locationName": "strength",
          "documentation": "Relative strength of noise reducing filter. Higher values produce stronger filtering."
        }
      },
      "documentation": "Settings for a noise reducer filter"
    },
    "NoiseReducerSpatialFilterSettings": {
      "type": "structure",
      "members": {
        "PostFilterSharpenStrength": {
          "shape": "__integerMin0Max3",
          "locationName": "postFilterSharpenStrength",
          "documentation": "Specify strength of post noise reduction sharpening filter, with 0 disabling the filter and 3 enabling it at maximum strength."
        },
        "Speed": {
          "shape": "__integerMinNegative2Max3",
          "locationName": "speed",
          "documentation": "The speed of the filter, from -2 (lower speed) to 3 (higher speed), with 0 being the nominal value."
        },
        "Strength": {
          "shape": "__integerMin0Max16",
          "locationName": "strength",
          "documentation": "Relative strength of noise reducing filter. Higher values produce stronger filtering."
        }
      },
      "documentation": "Noise reducer filter settings for spatial filter."
    },
    "NoiseReducerTemporalFilterSettings": {
      "type": "structure",
      "members": {
        "AggressiveMode": {
          "shape": "__integerMin0Max4",
          "locationName": "aggressiveMode",
          "documentation": "Use Aggressive mode for content that has complex motion. Higher values produce stronger temporal filtering. This filters highly complex scenes more aggressively and creates better VQ for low bitrate outputs."
        },
        "PostTemporalSharpening": {
          "shape": "NoiseFilterPostTemporalSharpening",
          "locationName": "postTemporalSharpening",
          "documentation": "Optional. When you set Noise reducer (noiseReducer) to Temporal (TEMPORAL), you can use this setting to apply sharpening. The default behavior, Auto (AUTO), allows the transcoder to determine whether to apply filtering, depending on input type and quality. When you set Noise reducer to Temporal, your output bandwidth is reduced. When Post temporal sharpening is also enabled, that bandwidth reduction is smaller."
        },
        "Speed": {
          "shape": "__integerMinNegative1Max3",
          "locationName": "speed",
          "documentation": "The speed of the filter (higher number is faster). Low setting reduces bit rate at the cost of transcode time, high setting improves transcode time at the cost of bit rate."
        },
        "Strength": {
          "shape": "__integerMin0Max16",
          "locationName": "strength",
          "documentation": "Specify the strength of the noise reducing filter on this output. Higher values produce stronger filtering. We recommend the following value ranges, depending on the result that you want: * 0-2 for complexity reduction with minimal sharpness loss * 2-8 for complexity reduction with image preservation * 8-16 for a high level of complexity reduction"
        }
      },
      "documentation": "Noise reducer filter settings for temporal filter."
    },
    "OpusSettings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin32000Max192000",
          "locationName": "bitrate",
          "documentation": "Optional. Specify the average bitrate in bits per second. Valid values are multiples of 8000, from 32000 through 192000. The default value is 96000, which we recommend for quality and bandwidth."
        },
        "Channels": {
          "shape": "__integerMin1Max2",
          "locationName": "channels",
          "documentation": "Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2."
        },
        "SampleRate": {
          "shape": "__integerMin16000Max48000",
          "locationName": "sampleRate",
          "documentation": "Optional. Sample rate in hz. Valid values are 16000, 24000, and 48000. The default value is 48000."
        }
      },
      "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value OPUS."
    },
    "Order": {
      "type": "string",
      "documentation": "Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "Output": {
      "type": "structure",
      "members": {
        "AudioDescriptions": {
          "shape": "__listOfAudioDescription",
          "locationName": "audioDescriptions",
          "documentation": "(AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings."
        },
        "CaptionDescriptions": {
          "shape": "__listOfCaptionDescription",
          "locationName": "captionDescriptions",
          "documentation": "(CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings."
        },
        "ContainerSettings": {
          "shape": "ContainerSettings",
          "locationName": "containerSettings",
          "documentation": "Container specific settings."
        },
        "Extension": {
          "shape": "__string",
          "locationName": "extension",
          "documentation": "Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM container, webm * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)"
        },
        "NameModifier": {
          "shape": "__stringMin1",
          "locationName": "nameModifier",
          "documentation": "Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group."
        },
        "OutputSettings": {
          "shape": "OutputSettings",
          "locationName": "outputSettings",
          "documentation": "Specific settings for this type of output."
        },
        "Preset": {
          "shape": "__stringMin0",
          "locationName": "preset",
          "documentation": "Use Preset (Preset) to specifiy a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both."
        },
        "VideoDescription": {
          "shape": "VideoDescription",
          "locationName": "videoDescription",
          "documentation": "(VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output."
        }
      },
      "documentation": "An output object describes the settings for a single output file or stream in an output group."
    },
    "OutputChannelMapping": {
      "type": "structure",
      "members": {
        "InputChannels": {
          "shape": "__listOf__integerMinNegative60Max6",
          "locationName": "inputChannels",
          "documentation": "List of input channels"
        }
      },
      "documentation": "OutputChannel mapping settings."
    },
    "OutputDetail": {
      "type": "structure",
      "members": {
        "DurationInMs": {
          "shape": "__integer",
          "locationName": "durationInMs",
          "documentation": "Duration in milliseconds"
        },
        "VideoDetails": {
          "shape": "VideoDetail",
          "locationName": "videoDetails",
          "documentation": "Contains details about the output's video stream"
        }
      },
      "documentation": "Details regarding output"
    },
    "OutputGroup": {
      "type": "structure",
      "members": {
        "CustomName": {
          "shape": "__string",
          "locationName": "customName",
          "documentation": "Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "Name of the output group"
        },
        "OutputGroupSettings": {
          "shape": "OutputGroupSettings",
          "locationName": "outputGroupSettings",
          "documentation": "Output Group settings, including type"
        },
        "Outputs": {
          "shape": "__listOfOutput",
          "locationName": "outputs",
          "documentation": "This object holds groups of encoding settings, one group of settings per output."
        }
      },
      "documentation": "Group of outputs"
    },
    "OutputGroupDetail": {
      "type": "structure",
      "members": {
        "OutputDetails": {
          "shape": "__listOfOutputDetail",
          "locationName": "outputDetails",
          "documentation": "Details about the output"
        }
      },
      "documentation": "Contains details about the output groups specified in the job settings."
    },
    "OutputGroupSettings": {
      "type": "structure",
      "members": {
        "CmafGroupSettings": {
          "shape": "CmafGroupSettings",
          "locationName": "cmafGroupSettings",
          "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output."
        },
        "DashIsoGroupSettings": {
          "shape": "DashIsoGroupSettings",
          "locationName": "dashIsoGroupSettings",
          "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS."
        },
        "FileGroupSettings": {
          "shape": "FileGroupSettings",
          "locationName": "fileGroupSettings",
          "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS."
        },
        "HlsGroupSettings": {
          "shape": "HlsGroupSettings",
          "locationName": "hlsGroupSettings",
          "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS."
        },
        "MsSmoothGroupSettings": {
          "shape": "MsSmoothGroupSettings",
          "locationName": "msSmoothGroupSettings",
          "documentation": "Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS."
        },
        "Type": {
          "shape": "OutputGroupType",
          "locationName": "type",
          "documentation": "Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)"
        }
      },
      "documentation": "Output Group settings, including type"
    },
    "OutputGroupType": {
      "type": "string",
      "documentation": "Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)",
      "enum": [
        "HLS_GROUP_SETTINGS",
        "DASH_ISO_GROUP_SETTINGS",
        "FILE_GROUP_SETTINGS",
        "MS_SMOOTH_GROUP_SETTINGS",
        "CMAF_GROUP_SETTINGS"
      ]
    },
    "OutputSdt": {
      "type": "string",
      "documentation": "Selects method of inserting SDT information into output stream.  \"Follow input SDT\" copies SDT information from input stream to  output stream. \"Follow input SDT if present\" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter \"SDT  Manually\" means user will enter the SDT information. \"No SDT\" means output  stream will not contain SDT information.",
      "enum": [
        "SDT_FOLLOW",
        "SDT_FOLLOW_IF_PRESENT",
        "SDT_MANUAL",
        "SDT_NONE"
      ]
    },
    "OutputSettings": {
      "type": "structure",
      "members": {
        "HlsSettings": {
          "shape": "HlsSettings",
          "locationName": "hlsSettings",
          "documentation": "Settings for HLS output groups"
        }
      },
      "documentation": "Specific settings for this type of output."
    },
    "PartnerWatermarking": {
      "type": "structure",
      "members": {
        "NexguardFileMarkerSettings": {
          "shape": "NexGuardFileMarkerSettings",
          "locationName": "nexguardFileMarkerSettings",
          "documentation": "For forensic video watermarking, MediaConvert supports Nagra NexGuard File Marker watermarking. MediaConvert supports both PreRelease Content (NGPR/G2) and OTT Streaming workflows."
        }
      },
      "documentation": "If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output."
    },
    "Preset": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "An identifier for this resource that is unique within all of AWS."
        },
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "An optional category you create to organize your presets."
        },
        "CreatedAt": {
          "shape": "__timestampUnix",
          "locationName": "createdAt",
          "documentation": "The timestamp in epoch seconds for preset creation."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "An optional description you create for each preset."
        },
        "LastUpdated": {
          "shape": "__timestampUnix",
          "locationName": "lastUpdated",
          "documentation": "The timestamp in epoch seconds when the preset was last updated."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "A name you create for each preset. Each name must be unique within your account."
        },
        "Settings": {
          "shape": "PresetSettings",
          "locationName": "settings",
          "documentation": "Settings for preset"
        },
        "Type": {
          "shape": "Type",
          "locationName": "type",
          "documentation": "A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user."
        }
      },
      "documentation": "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.",
      "required": [
        "Settings",
        "Name"
      ]
    },
    "PresetListBy": {
      "type": "string",
      "documentation": "Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.",
      "enum": [
        "NAME",
        "CREATION_DATE",
        "SYSTEM"
      ]
    },
    "PresetSettings": {
      "type": "structure",
      "members": {
        "AudioDescriptions": {
          "shape": "__listOfAudioDescription",
          "locationName": "audioDescriptions",
          "documentation": "(AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings."
        },
        "CaptionDescriptions": {
          "shape": "__listOfCaptionDescriptionPreset",
          "locationName": "captionDescriptions",
          "documentation": "Caption settings for this preset. There can be multiple caption settings in a single output."
        },
        "ContainerSettings": {
          "shape": "ContainerSettings",
          "locationName": "containerSettings",
          "documentation": "Container specific settings."
        },
        "VideoDescription": {
          "shape": "VideoDescription",
          "locationName": "videoDescription",
          "documentation": "(VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec that you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output."
        }
      },
      "documentation": "Settings for preset"
    },
    "PricingPlan": {
      "type": "string",
      "documentation": "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.",
      "enum": [
        "ON_DEMAND",
        "RESERVED"
      ]
    },
    "ProresCodecProfile": {
      "type": "string",
      "documentation": "Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes codec to use for this output.",
      "enum": [
        "APPLE_PRORES_422",
        "APPLE_PRORES_422_HQ",
        "APPLE_PRORES_422_LT",
        "APPLE_PRORES_422_PROXY"
      ]
    },
    "ProresFramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "ProresFramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "ProresInterlaceMode": {
      "type": "string",
      "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose.",
      "enum": [
        "PROGRESSIVE",
        "TOP_FIELD",
        "BOTTOM_FIELD",
        "FOLLOW_TOP_FIELD",
        "FOLLOW_BOTTOM_FIELD"
      ]
    },
    "ProresParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "ProresSettings": {
      "type": "structure",
      "members": {
        "CodecProfile": {
          "shape": "ProresCodecProfile",
          "locationName": "codecProfile",
          "documentation": "Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes codec to use for this output."
        },
        "FramerateControl": {
          "shape": "ProresFramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "ProresFramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use duplicate drop conversion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "Frame rate denominator."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator."
        },
        "InterlaceMode": {
          "shape": "ProresInterlaceMode",
          "locationName": "interlaceMode",
          "documentation": "Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.\n  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of \"top field first\" and \"bottom field first\".\n  - If the source is progressive, the output will be interlaced with \"top field first\" or \"bottom field first\" polarity, depending on which of the Follow options you chose."
        },
        "ParControl": {
          "shape": "ProresParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "SlowPal": {
          "shape": "ProresSlowPal",
          "locationName": "slowPal",
          "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly."
        },
        "Telecine": {
          "shape": "ProresTelecine",
          "locationName": "telecine",
          "documentation": "Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES."
    },
    "ProresSlowPal": {
      "type": "string",
      "documentation": "Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "ProresTelecine": {
      "type": "string",
      "documentation": "Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.",
      "enum": [
        "NONE",
        "HARD"
      ]
    },
    "Queue": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "An identifier for this resource that is unique within all of AWS."
        },
        "CreatedAt": {
          "shape": "__timestampUnix",
          "locationName": "createdAt",
          "documentation": "The timestamp in epoch seconds for when you created the queue."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "An optional description that you create for each queue."
        },
        "LastUpdated": {
          "shape": "__timestampUnix",
          "locationName": "lastUpdated",
          "documentation": "The timestamp in epoch seconds for when you most recently updated the queue."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "A name that you create for each queue. Each name must be unique within your account."
        },
        "PricingPlan": {
          "shape": "PricingPlan",
          "locationName": "pricingPlan",
          "documentation": "Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment."
        },
        "ProgressingJobsCount": {
          "shape": "__integer",
          "locationName": "progressingJobsCount",
          "documentation": "The estimated number of jobs with a PROGRESSING status."
        },
        "ReservationPlan": {
          "shape": "ReservationPlan",
          "locationName": "reservationPlan",
          "documentation": "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
        },
        "Status": {
          "shape": "QueueStatus",
          "locationName": "status",
          "documentation": "Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error."
        },
        "SubmittedJobsCount": {
          "shape": "__integer",
          "locationName": "submittedJobsCount",
          "documentation": "The estimated number of jobs with a SUBMITTED status."
        },
        "Type": {
          "shape": "Type",
          "locationName": "type",
          "documentation": "Specifies whether this on-demand queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues."
        }
      },
      "documentation": "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html.",
      "required": [
        "Name"
      ]
    },
    "QueueListBy": {
      "type": "string",
      "documentation": "Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.",
      "enum": [
        "NAME",
        "CREATION_DATE"
      ]
    },
    "QueueStatus": {
      "type": "string",
      "documentation": "Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error.",
      "enum": [
        "ACTIVE",
        "PAUSED"
      ]
    },
    "QueueTransition": {
      "type": "structure",
      "members": {
        "DestinationQueue": {
          "shape": "__string",
          "locationName": "destinationQueue",
          "documentation": "The queue that the job was on after the transition."
        },
        "SourceQueue": {
          "shape": "__string",
          "locationName": "sourceQueue",
          "documentation": "The queue that the job was on before the transition."
        },
        "Timestamp": {
          "shape": "__timestampUnix",
          "locationName": "timestamp",
          "documentation": "The time, in Unix epoch format, that the job moved from the source queue to the destination queue."
        }
      },
      "documentation": "Description of the source and destination queues between which the job has moved, along with the timestamp of the move"
    },
    "Rectangle": {
      "type": "structure",
      "members": {
        "Height": {
          "shape": "__integerMin2Max2147483647",
          "locationName": "height",
          "documentation": "Height of rectangle in pixels. Specify only even numbers."
        },
        "Width": {
          "shape": "__integerMin2Max2147483647",
          "locationName": "width",
          "documentation": "Width of rectangle in pixels. Specify only even numbers."
        },
        "X": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "x",
          "documentation": "The distance, in pixels, between the rectangle and the left edge of the video frame. Specify only even numbers."
        },
        "Y": {
          "shape": "__integerMin0Max2147483647",
          "locationName": "y",
          "documentation": "The distance, in pixels, between the rectangle and the top edge of the video frame. Specify only even numbers."
        }
      },
      "documentation": "Use Rectangle to identify a specific area of the video frame."
    },
    "RemixSettings": {
      "type": "structure",
      "members": {
        "ChannelMapping": {
          "shape": "ChannelMapping",
          "locationName": "channelMapping",
          "documentation": "Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel. Units are in dB. Acceptable values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification)."
        },
        "ChannelsIn": {
          "shape": "__integerMin1Max64",
          "locationName": "channelsIn",
          "documentation": "Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different."
        },
        "ChannelsOut": {
          "shape": "__integerMin1Max64",
          "locationName": "channelsOut",
          "documentation": "Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8... 64. (1 and even numbers to 64.)"
        }
      },
      "documentation": "Use Manual audio remixing (RemixSettings) to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides."
    },
    "RenewalType": {
      "type": "string",
      "documentation": "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term.",
      "enum": [
        "AUTO_RENEW",
        "EXPIRE"
      ]
    },
    "ReservationPlan": {
      "type": "structure",
      "members": {
        "Commitment": {
          "shape": "Commitment",
          "locationName": "commitment",
          "documentation": "The length of the term of your reserved queue pricing plan commitment."
        },
        "ExpiresAt": {
          "shape": "__timestampUnix",
          "locationName": "expiresAt",
          "documentation": "The timestamp in epoch seconds for when the current pricing plan term for this reserved queue expires."
        },
        "PurchasedAt": {
          "shape": "__timestampUnix",
          "locationName": "purchasedAt",
          "documentation": "The timestamp in epoch seconds for when you set up the current pricing plan for this reserved queue."
        },
        "RenewalType": {
          "shape": "RenewalType",
          "locationName": "renewalType",
          "documentation": "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term."
        },
        "ReservedSlots": {
          "shape": "__integer",
          "locationName": "reservedSlots",
          "documentation": "Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. When you increase this number, you extend your existing commitment with a new 12-month commitment for a larger number of RTS. The new commitment begins when you purchase the additional capacity. You can't decrease the number of RTS in your reserved queue."
        },
        "Status": {
          "shape": "ReservationPlanStatus",
          "locationName": "status",
          "documentation": "Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED."
        }
      },
      "documentation": "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues."
    },
    "ReservationPlanSettings": {
      "type": "structure",
      "members": {
        "Commitment": {
          "shape": "Commitment",
          "locationName": "commitment",
          "documentation": "The length of the term of your reserved queue pricing plan commitment."
        },
        "RenewalType": {
          "shape": "RenewalType",
          "locationName": "renewalType",
          "documentation": "Specifies whether the term of your reserved queue pricing plan is automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of the term. When your term is auto renewed, you extend your commitment by 12 months from the auto renew date. You can cancel this commitment."
        },
        "ReservedSlots": {
          "shape": "__integer",
          "locationName": "reservedSlots",
          "documentation": "Specifies the number of reserved transcode slots (RTS) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. You can't decrease the number of RTS in your reserved queue. You can increase the number of RTS by extending your existing commitment with a new 12-month commitment for the larger number. The new commitment begins when you purchase the additional capacity. You can't cancel your commitment or revert to your original commitment after you increase the capacity."
        }
      },
      "documentation": "Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.",
      "required": [
        "Commitment",
        "ReservedSlots",
        "RenewalType"
      ]
    },
    "ReservationPlanStatus": {
      "type": "string",
      "documentation": "Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.",
      "enum": [
        "ACTIVE",
        "EXPIRED"
      ]
    },
    "ResourceTags": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "The tags for the resource."
        }
      },
      "documentation": "The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource."
    },
    "RespondToAfd": {
      "type": "string",
      "documentation": "Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.",
      "enum": [
        "NONE",
        "RESPOND",
        "PASSTHROUGH"
      ]
    },
    "S3DestinationAccessControl": {
      "type": "structure",
      "members": {
        "CannedAcl": {
          "shape": "S3ObjectCannedAcl",
          "locationName": "cannedAcl",
          "documentation": "Choose an Amazon S3 canned ACL for MediaConvert to apply to this output."
        }
      },
      "documentation": "Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE."
    },
    "S3DestinationSettings": {
      "type": "structure",
      "members": {
        "AccessControl": {
          "shape": "S3DestinationAccessControl",
          "locationName": "accessControl",
          "documentation": "Optional. Have MediaConvert automatically apply Amazon S3 access control for the outputs in this output group. When you don't use this setting, S3 automatically applies the default access control list PRIVATE."
        },
        "Encryption": {
          "shape": "S3EncryptionSettings",
          "locationName": "encryption",
          "documentation": "Settings for how your job outputs are encrypted as they are uploaded to Amazon S3."
        }
      },
      "documentation": "Settings associated with S3 destination"
    },
    "S3EncryptionSettings": {
      "type": "structure",
      "members": {
        "EncryptionType": {
          "shape": "S3ServerSideEncryptionType",
          "locationName": "encryptionType",
          "documentation": "Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3 (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting  KMS ARN (kmsKeyArn)."
        },
        "KmsKeyArn": {
          "shape": "__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912",
          "locationName": "kmsKeyArn",
          "documentation": "Optionally, specify the customer master key (CMK) that you want to use to encrypt the data key that AWS uses to encrypt your output content. Enter the Amazon Resource Name (ARN) of the CMK. To use this setting, you must also set Server-side encryption (S3ServerSideEncryptionType) to AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). If you set Server-side encryption to AWS KMS but don't specify a CMK here, AWS uses the AWS managed CMK associated with Amazon S3."
        }
      },
      "documentation": "Settings for how your job outputs are encrypted as they are uploaded to Amazon S3."
    },
    "S3ObjectCannedAcl": {
      "type": "string",
      "documentation": "Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.",
      "enum": [
        "PUBLIC_READ",
        "AUTHENTICATED_READ",
        "BUCKET_OWNER_READ",
        "BUCKET_OWNER_FULL_CONTROL"
      ]
    },
    "S3ServerSideEncryptionType": {
      "type": "string",
      "documentation": "Specify how you want your data keys managed. AWS uses data keys to encrypt your content. AWS also encrypts the data keys themselves, using a customer master key (CMK), and then stores the encrypted data keys alongside your encrypted content. Use this setting to specify which AWS service manages the CMK. For simplest set up, choose Amazon S3 (SERVER_SIDE_ENCRYPTION_S3). If you want your master key to be managed by AWS Key Management Service (KMS), choose AWS KMS (SERVER_SIDE_ENCRYPTION_KMS). By default, when you choose AWS KMS, KMS uses the AWS managed customer master key (CMK) associated with Amazon S3 to encrypt your data keys. You can optionally choose to specify a different, customer managed CMK. Do so by specifying the Amazon Resource Name (ARN) of the key for the setting  KMS ARN (kmsKeyArn).",
      "enum": [
        "SERVER_SIDE_ENCRYPTION_S3",
        "SERVER_SIDE_ENCRYPTION_KMS"
      ]
    },
    "ScalingBehavior": {
      "type": "string",
      "documentation": "Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output.",
      "enum": [
        "DEFAULT",
        "STRETCH_TO_OUTPUT"
      ]
    },
    "SccDestinationFramerate": {
      "type": "string",
      "documentation": "Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).",
      "enum": [
        "FRAMERATE_23_97",
        "FRAMERATE_24",
        "FRAMERATE_25",
        "FRAMERATE_29_97_DROPFRAME",
        "FRAMERATE_29_97_NON_DROPFRAME"
      ]
    },
    "SccDestinationSettings": {
      "type": "structure",
      "members": {
        "Framerate": {
          "shape": "SccDestinationFramerate",
          "locationName": "framerate",
          "documentation": "Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a frame rate that matches the frame rate of the associated video. If the video frame rate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME)."
        }
      },
      "documentation": "Settings for SCC caption output."
    },
    "SimulateReservedQueue": {
      "type": "string",
      "documentation": "Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "SpekeKeyProvider": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "__stringPatternArnAwsUsGovAcm",
          "locationName": "certificateArn",
          "documentation": "If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here."
        },
        "ResourceId": {
          "shape": "__string",
          "locationName": "resourceId",
          "documentation": "Specify the resource ID that your SPEKE-compliant key provider uses to identify this content."
        },
        "SystemIds": {
          "shape": "__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12",
          "locationName": "systemIds",
          "documentation": "Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id. See\n https://dashif.org/identifiers/content_protection/ for more details."
        },
        "Url": {
          "shape": "__stringPatternHttps",
          "locationName": "url",
          "documentation": "Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content."
        }
      },
      "documentation": "If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead."
    },
    "SpekeKeyProviderCmaf": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "__stringPatternArnAwsUsGovAcm",
          "locationName": "certificateArn",
          "documentation": "If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here."
        },
        "DashSignaledSystemIds": {
          "shape": "__listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12",
          "locationName": "dashSignaledSystemIds",
          "documentation": "Specify the DRM system IDs that you want signaled in the DASH manifest that MediaConvert creates as part of this CMAF package. The DASH manifest can currently signal up to three system IDs. For more information, see https://dashif.org/identifiers/content_protection/."
        },
        "HlsSignaledSystemIds": {
          "shape": "__listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12",
          "locationName": "hlsSignaledSystemIds",
          "documentation": "Specify the DRM system ID that you want signaled in the HLS manifest that MediaConvert creates as part of this CMAF package. The HLS manifest can currently signal only one system ID. For more information, see https://dashif.org/identifiers/content_protection/."
        },
        "ResourceId": {
          "shape": "__stringPatternW",
          "locationName": "resourceId",
          "documentation": "Specify the resource ID that your SPEKE-compliant key provider uses to identify this content."
        },
        "Url": {
          "shape": "__stringPatternHttps",
          "locationName": "url",
          "documentation": "Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content."
        }
      },
      "documentation": "If your output group type is CMAF, use these settings when doing DRM encryption with a SPEKE-compliant key provider. If your output group type is HLS, DASH, or Microsoft Smooth, use the SpekeKeyProvider settings instead."
    },
    "StaticKeyProvider": {
      "type": "structure",
      "members": {
        "KeyFormat": {
          "shape": "__stringPatternIdentityAZaZ26AZaZ09163",
          "locationName": "keyFormat",
          "documentation": "Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'."
        },
        "KeyFormatVersions": {
          "shape": "__stringPatternDD",
          "locationName": "keyFormatVersions",
          "documentation": "Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3)."
        },
        "StaticKeyValue": {
          "shape": "__stringPatternAZaZ0932",
          "locationName": "staticKeyValue",
          "documentation": "Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue)."
        },
        "Url": {
          "shape": "__string",
          "locationName": "url",
          "documentation": "Relates to DRM implementation. The location of the license server used for protecting content."
        }
      },
      "documentation": "Use these settings to set up encryption with a static key provider."
    },
    "StatusUpdateInterval": {
      "type": "string",
      "documentation": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.",
      "enum": [
        "SECONDS_10",
        "SECONDS_12",
        "SECONDS_15",
        "SECONDS_20",
        "SECONDS_30",
        "SECONDS_60",
        "SECONDS_120",
        "SECONDS_180",
        "SECONDS_240",
        "SECONDS_300",
        "SECONDS_360",
        "SECONDS_420",
        "SECONDS_480",
        "SECONDS_540",
        "SECONDS_600"
      ]
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key."
        }
      },
      "required": [
        "Arn",
        "Tags"
      ]
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TeletextDestinationSettings": {
      "type": "structure",
      "members": {
        "PageNumber": {
          "shape": "__stringMin3Max3Pattern1809aFAF09aEAE",
          "locationName": "pageNumber",
          "documentation": "Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field."
        },
        "PageTypes": {
          "shape": "__listOfTeletextPageType",
          "locationName": "pageTypes",
          "documentation": "Specify the page types for this Teletext page. If you don't specify a value here, the service sets the page type to the default value Subtitle (PAGE_TYPE_SUBTITLE). If you pass through the entire set of Teletext data, don't use this field. When you pass through a set of Teletext pages, your output has the same page types as your input."
        }
      },
      "documentation": "Settings for Teletext caption output"
    },
    "TeletextPageType": {
      "type": "string",
      "documentation": "A page type as defined in the standard ETSI EN 300 468, Table 94",
      "enum": [
        "PAGE_TYPE_INITIAL",
        "PAGE_TYPE_SUBTITLE",
        "PAGE_TYPE_ADDL_INFO",
        "PAGE_TYPE_PROGRAM_SCHEDULE",
        "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"
      ]
    },
    "TeletextSourceSettings": {
      "type": "structure",
      "members": {
        "PageNumber": {
          "shape": "__stringMin3Max3Pattern1809aFAF09aEAE",
          "locationName": "pageNumber",
          "documentation": "Use Page Number (PageNumber) to specify the three-digit hexadecimal page number that will be used for Teletext captions. Do not use this setting if you are passing through teletext from the input source to output."
        }
      },
      "documentation": "Settings specific to Teletext caption sources, including Page number."
    },
    "TimecodeBurnin": {
      "type": "structure",
      "members": {
        "FontSize": {
          "shape": "__integerMin10Max48",
          "locationName": "fontSize",
          "documentation": "Use Font Size (FontSize) to set the font size of any burned-in timecode. Valid values are 10, 16, 32, 48."
        },
        "Position": {
          "shape": "TimecodeBurninPosition",
          "locationName": "position",
          "documentation": "Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video."
        },
        "Prefix": {
          "shape": "__stringPattern",
          "locationName": "prefix",
          "documentation": "Use Prefix (Prefix) to place ASCII characters before any burned-in timecode. For example, a prefix of \"EZ-\" will result in the timecode \"EZ-00:00:00:00\". Provide either the characters themselves or the ASCII code equivalents. The supported range of characters is 0x20 through 0x7e. This includes letters, numbers, and all special characters represented on a standard English keyboard."
        }
      },
      "documentation": "Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output."
    },
    "TimecodeBurninPosition": {
      "type": "string",
      "documentation": "Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.",
      "enum": [
        "TOP_CENTER",
        "TOP_LEFT",
        "TOP_RIGHT",
        "MIDDLE_LEFT",
        "MIDDLE_CENTER",
        "MIDDLE_RIGHT",
        "BOTTOM_LEFT",
        "BOTTOM_CENTER",
        "BOTTOM_RIGHT"
      ]
    },
    "TimecodeConfig": {
      "type": "structure",
      "members": {
        "Anchor": {
          "shape": "__stringPattern010920405090509092",
          "locationName": "anchor",
          "documentation": "If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores frame rate conversion. System behavior for Anchor Timecode varies depending on your setting for Source (TimecodeSource). * If Source (TimecodeSource) is set to Specified Start (SPECIFIEDSTART), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Source (TimecodeSource) is set to Start at 0 (ZEROBASED)  the  first frame is 00:00:00:00. * If Source (TimecodeSource) is set to Embedded (EMBEDDED), the  first frame is the timecode value on the first input frame of the input."
        },
        "Source": {
          "shape": "TimecodeSource",
          "locationName": "source",
          "documentation": "Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value."
        },
        "Start": {
          "shape": "__stringPattern010920405090509092",
          "locationName": "start",
          "documentation": "Only use when you set Source (TimecodeSource) to Specified start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF)."
        },
        "TimestampOffset": {
          "shape": "__stringPattern0940191020191209301",
          "locationName": "timestampOffset",
          "documentation": "Only applies to outputs that support program-date-time stamp. Use Timestamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format \"yyyy-mm-dd\".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings. For example, if the date part of your timecodes is 2002-1-25 and you want to change it to one year later, set Timestamp offset (TimestampOffset) to 2003-1-25."
        }
      },
      "documentation": "These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping."
    },
    "TimecodeSource": {
      "type": "string",
      "documentation": "Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value.",
      "enum": [
        "EMBEDDED",
        "ZEROBASED",
        "SPECIFIEDSTART"
      ]
    },
    "TimedMetadata": {
      "type": "string",
      "documentation": "Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output.",
      "enum": [
        "PASSTHROUGH",
        "NONE"
      ]
    },
    "TimedMetadataInsertion": {
      "type": "structure",
      "members": {
        "Id3Insertions": {
          "shape": "__listOfId3Insertion",
          "locationName": "id3Insertions",
          "documentation": "Id3Insertions contains the array of Id3Insertion instances."
        }
      },
      "documentation": "Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects."
    },
    "Timing": {
      "type": "structure",
      "members": {
        "FinishTime": {
          "shape": "__timestampUnix",
          "locationName": "finishTime",
          "documentation": "The time, in Unix epoch format, that the transcoding job finished"
        },
        "StartTime": {
          "shape": "__timestampUnix",
          "locationName": "startTime",
          "documentation": "The time, in Unix epoch format, that transcoding for the job began."
        },
        "SubmitTime": {
          "shape": "__timestampUnix",
          "locationName": "submitTime",
          "documentation": "The time, in Unix epoch format, that you submitted the job."
        }
      },
      "documentation": "Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds."
    },
    "TrackSourceSettings": {
      "type": "structure",
      "members": {
        "TrackNumber": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "trackNumber",
          "documentation": "Use this setting to select a single captions track from a source. Track numbers correspond to the order in the captions source file. For IMF sources, track numbering is based on the order that the captions appear in the CPL. For example, use 1 to select the captions asset that is listed first in the CPL. To include more than one captions track in your job outputs, create multiple input captions selectors. Specify one track per selector."
        }
      },
      "documentation": "Settings specific to caption sources that are specified by track number. Currently, this is only IMSC captions in an IMF package. If your caption source is IMSC 1.1 in a separate xml file, use FileSourceSettings instead of TrackSourceSettings."
    },
    "TtmlDestinationSettings": {
      "type": "structure",
      "members": {
        "StylePassthrough": {
          "shape": "TtmlStylePassthrough",
          "locationName": "stylePassthrough",
          "documentation": "Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT) to the TTML output."
        }
      },
      "documentation": "Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough)."
    },
    "TtmlStylePassthrough": {
      "type": "string",
      "documentation": "Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT) to the TTML output.",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Type": {
      "type": "string",
      "enum": [
        "SYSTEM",
        "CUSTOM"
      ]
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.",
          "location": "uri"
        },
        "TagKeys": {
          "shape": "__listOf__string",
          "locationName": "tagKeys",
          "documentation": "The keys of the tags that you want to remove from the resource."
        }
      },
      "required": [
        "Arn"
      ]
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateJobTemplateRequest": {
      "type": "structure",
      "members": {
        "AccelerationSettings": {
          "shape": "AccelerationSettings",
          "locationName": "accelerationSettings",
          "documentation": "Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide."
        },
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "The new category for the job template, if you are changing it."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "The new description for the job template, if you are changing it."
        },
        "HopDestinations": {
          "shape": "__listOfHopDestination",
          "locationName": "hopDestinations",
          "documentation": "Optional list of hop destinations."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the job template you are modifying",
          "location": "uri"
        },
        "Priority": {
          "shape": "__integerMinNegative50Max50",
          "locationName": "priority",
          "documentation": "Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0."
        },
        "Queue": {
          "shape": "__string",
          "locationName": "queue",
          "documentation": "The new queue for the job template, if you are changing it."
        },
        "Settings": {
          "shape": "JobTemplateSettings",
          "locationName": "settings",
          "documentation": "JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it."
        },
        "StatusUpdateInterval": {
          "shape": "StatusUpdateInterval",
          "locationName": "statusUpdateInterval",
          "documentation": "Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error."
        }
      },
      "required": [
        "Name"
      ]
    },
    "UpdateJobTemplateResponse": {
      "type": "structure",
      "members": {
        "JobTemplate": {
          "shape": "JobTemplate",
          "locationName": "jobTemplate",
          "documentation": "A job template is a pre-made set of encoding instructions that you can use to quickly create a job."
        }
      }
    },
    "UpdatePresetRequest": {
      "type": "structure",
      "members": {
        "Category": {
          "shape": "__string",
          "locationName": "category",
          "documentation": "The new category for the preset, if you are changing it."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "The new description for the preset, if you are changing it."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the preset you are modifying.",
          "location": "uri"
        },
        "Settings": {
          "shape": "PresetSettings",
          "locationName": "settings",
          "documentation": "Settings for preset"
        }
      },
      "required": [
        "Name"
      ]
    },
    "UpdatePresetResponse": {
      "type": "structure",
      "members": {
        "Preset": {
          "shape": "Preset",
          "locationName": "preset",
          "documentation": "A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process."
        }
      }
    },
    "UpdateQueueRequest": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "The new description for the queue, if you are changing it."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the queue that you are modifying.",
          "location": "uri"
        },
        "ReservationPlanSettings": {
          "shape": "ReservationPlanSettings",
          "locationName": "reservationPlanSettings",
          "documentation": "The new details of your pricing plan for your reserved queue. When you set up a new pricing plan to replace an expired one, you enter into another 12-month commitment. When you add capacity to your queue by increasing the number of RTS, you extend the term of your commitment to 12 months from when you add capacity. After you make these commitments, you can't cancel them."
        },
        "Status": {
          "shape": "QueueStatus",
          "locationName": "status",
          "documentation": "Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error."
        }
      },
      "required": [
        "Name"
      ]
    },
    "UpdateQueueResponse": {
      "type": "structure",
      "members": {
        "Queue": {
          "shape": "Queue",
          "locationName": "queue",
          "documentation": "You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html."
        }
      }
    },
    "VideoCodec": {
      "type": "string",
      "documentation": "Type of video codec",
      "enum": [
        "FRAME_CAPTURE",
        "AV1",
        "H_264",
        "H_265",
        "MPEG2",
        "PRORES",
        "VP8",
        "VP9"
      ]
    },
    "VideoCodecSettings": {
      "type": "structure",
      "members": {
        "Av1Settings": {
          "shape": "Av1Settings",
          "locationName": "av1Settings",
          "documentation": "Required when you set Codec, under VideoDescription>CodecSettings to the value AV1."
        },
        "Codec": {
          "shape": "VideoCodec",
          "locationName": "codec",
          "documentation": "Specifies the video codec. This must be equal to one of the enum values defined by the object  VideoCodec."
        },
        "FrameCaptureSettings": {
          "shape": "FrameCaptureSettings",
          "locationName": "frameCaptureSettings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE."
        },
        "H264Settings": {
          "shape": "H264Settings",
          "locationName": "h264Settings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264."
        },
        "H265Settings": {
          "shape": "H265Settings",
          "locationName": "h265Settings",
          "documentation": "Settings for H265 codec"
        },
        "Mpeg2Settings": {
          "shape": "Mpeg2Settings",
          "locationName": "mpeg2Settings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2."
        },
        "ProresSettings": {
          "shape": "ProresSettings",
          "locationName": "proresSettings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES."
        },
        "Vp8Settings": {
          "shape": "Vp8Settings",
          "locationName": "vp8Settings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8."
        },
        "Vp9Settings": {
          "shape": "Vp9Settings",
          "locationName": "vp9Settings",
          "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9."
        }
      },
      "documentation": "Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * FRAME_CAPTURE, FrameCaptureSettings * AV1, Av1Settings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VP8, Vp8Settings * VP9, Vp9Settings"
    },
    "VideoDescription": {
      "type": "structure",
      "members": {
        "AfdSignaling": {
          "shape": "AfdSignaling",
          "locationName": "afdSignaling",
          "documentation": "This setting only applies to H.264, H.265, and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data."
        },
        "AntiAlias": {
          "shape": "AntiAlias",
          "locationName": "antiAlias",
          "documentation": "The anti-alias filter is automatically applied to all outputs. The service no longer accepts the value DISABLED for AntiAlias. If you specify that in your job, the service will ignore the setting."
        },
        "CodecSettings": {
          "shape": "VideoCodecSettings",
          "locationName": "codecSettings",
          "documentation": "Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value that you choose for Video codec (Codec). For each codec enum that you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * FRAME_CAPTURE, FrameCaptureSettings * AV1, Av1Settings * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * VP8, Vp8Settings * VP9, Vp9Settings"
        },
        "ColorMetadata": {
          "shape": "ColorMetadata",
          "locationName": "colorMetadata",
          "documentation": "Choose Insert (INSERT) for this setting to include color metadata in this output. Choose Ignore (IGNORE) to exclude color metadata from this output. If you don't specify a value, the service sets this to Insert by default."
        },
        "Crop": {
          "shape": "Rectangle",
          "locationName": "crop",
          "documentation": "Use Cropping selection (crop) to specify the video area that the service will include in the output video frame."
        },
        "DropFrameTimecode": {
          "shape": "DropFrameTimecode",
          "locationName": "dropFrameTimecode",
          "documentation": "Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled."
        },
        "FixedAfd": {
          "shape": "__integerMin0Max15",
          "locationName": "fixedAfd",
          "documentation": "Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output."
        },
        "Height": {
          "shape": "__integerMin32Max8192",
          "locationName": "height",
          "documentation": "Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height."
        },
        "Position": {
          "shape": "Rectangle",
          "locationName": "position",
          "documentation": "Use Selection placement (position) to define the video area in your output frame. The area outside of the rectangle that you specify here is black."
        },
        "RespondToAfd": {
          "shape": "RespondToAfd",
          "locationName": "respondToAfd",
          "documentation": "Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output."
        },
        "ScalingBehavior": {
          "shape": "ScalingBehavior",
          "locationName": "scalingBehavior",
          "documentation": "Specify how the service handles outputs that have a different aspect ratio from the input aspect ratio. Choose Stretch to output (STRETCH_TO_OUTPUT) to have the service stretch your video image to fit. Keep the setting Default (DEFAULT) to have the service letterbox your video instead. This setting overrides any value that you specify for the setting Selection placement (position) in this output."
        },
        "Sharpness": {
          "shape": "__integerMin0Max100",
          "locationName": "sharpness",
          "documentation": "Use Sharpness (Sharpness) setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content."
        },
        "TimecodeInsertion": {
          "shape": "VideoTimecodeInsertion",
          "locationName": "timecodeInsertion",
          "documentation": "Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does."
        },
        "VideoPreprocessors": {
          "shape": "VideoPreprocessor",
          "locationName": "videoPreprocessors",
          "documentation": "Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default."
        },
        "Width": {
          "shape": "__integerMin32Max8192",
          "locationName": "width",
          "documentation": "Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width."
        }
      },
      "documentation": "Settings for video outputs"
    },
    "VideoDetail": {
      "type": "structure",
      "members": {
        "HeightInPx": {
          "shape": "__integer",
          "locationName": "heightInPx",
          "documentation": "Height in pixels for the output"
        },
        "WidthInPx": {
          "shape": "__integer",
          "locationName": "widthInPx",
          "documentation": "Width in pixels for the output"
        }
      },
      "documentation": "Contains details about the output's video stream"
    },
    "VideoPreprocessor": {
      "type": "structure",
      "members": {
        "ColorCorrector": {
          "shape": "ColorCorrector",
          "locationName": "colorCorrector",
          "documentation": "Enable the Color corrector (ColorCorrector) feature if necessary. Enable or disable this feature for each output individually. This setting is disabled by default."
        },
        "Deinterlacer": {
          "shape": "Deinterlacer",
          "locationName": "deinterlacer",
          "documentation": "Use Deinterlacer (Deinterlacer) to produce smoother motion and a clearer picture."
        },
        "DolbyVision": {
          "shape": "DolbyVision",
          "locationName": "dolbyVision",
          "documentation": "Enable Dolby Vision feature to produce Dolby Vision compatible video output."
        },
        "ImageInserter": {
          "shape": "ImageInserter",
          "locationName": "imageInserter",
          "documentation": "Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default."
        },
        "NoiseReducer": {
          "shape": "NoiseReducer",
          "locationName": "noiseReducer",
          "documentation": "Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default."
        },
        "PartnerWatermarking": {
          "shape": "PartnerWatermarking",
          "locationName": "partnerWatermarking",
          "documentation": "If you work with a third party video watermarking partner, use the group of settings that correspond with your watermarking partner to include watermarks in your output."
        },
        "TimecodeBurnin": {
          "shape": "TimecodeBurnin",
          "locationName": "timecodeBurnin",
          "documentation": "Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output."
        }
      },
      "documentation": "Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default."
    },
    "VideoSelector": {
      "type": "structure",
      "members": {
        "AlphaBehavior": {
          "shape": "AlphaBehavior",
          "locationName": "alphaBehavior",
          "documentation": "Ignore this setting unless this input is a QuickTime animation with an alpha channel. Use this setting to create separate Key and Fill outputs. In each output, specify which part of the input MediaConvert uses. Leave this setting at the default value DISCARD to delete the alpha channel and preserve the video. Set it to REMAP_TO_LUMA to delete the video and map the alpha channel to the luma channel of your outputs."
        },
        "ColorSpace": {
          "shape": "ColorSpace",
          "locationName": "colorSpace",
          "documentation": "If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value Follow (FOLLOW). The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, specify the accurate color space here. If your input video is HDR 10 and the SMPTE ST 2086 Mastering Display Color Volume static metadata isn't present in your video stream, or if that metadata is present but not accurate, choose Force HDR 10 (FORCE_HDR10) here and specify correct values in the input HDR 10 metadata (Hdr10Metadata) settings. For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
        },
        "ColorSpaceUsage": {
          "shape": "ColorSpaceUsage",
          "locationName": "colorSpaceUsage",
          "documentation": "There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings."
        },
        "Hdr10Metadata": {
          "shape": "Hdr10Metadata",
          "locationName": "hdr10Metadata",
          "documentation": "Use these settings to provide HDR 10 metadata that is missing or inaccurate in your input video. Appropriate values vary depending on the input video and must be provided by a color grader. The color grader generates these values during the HDR 10 mastering process. The valid range for each of these settings is 0 to 50,000. Each increment represents 0.00002 in CIE1931 color coordinate. Related settings - When you specify these values, you must also set Color space (ColorSpace) to HDR 10 (HDR10). To specify whether the the values you specify here take precedence over the values in the metadata of your input file, set Color space usage (ColorSpaceUsage). To specify whether color metadata is included in an output, set Color metadata (ColorMetadata). For more information about MediaConvert HDR jobs, see https://docs.aws.amazon.com/console/mediaconvert/hdr."
        },
        "Pid": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "pid",
          "documentation": "Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container."
        },
        "ProgramNumber": {
          "shape": "__integerMinNegative2147483648Max2147483647",
          "locationName": "programNumber",
          "documentation": "Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported."
        },
        "Rotate": {
          "shape": "InputRotate",
          "locationName": "rotate",
          "documentation": "Use Rotate (InputRotate) to specify how the service rotates your video. You can choose automatic rotation or specify a rotation. You can specify a clockwise rotation of 0, 90, 180, or 270 degrees. If your input video container is .mov or .mp4 and your input has rotation metadata, you can choose Automatic to have the service rotate your video according to the rotation specified in the metadata. The rotation must be within one degree of 90, 180, or 270 degrees. If the rotation metadata specifies any other rotation, the service will default to no rotation. By default, the service does no rotation, even if your input video has rotation metadata. The service doesn't pass through rotation metadata."
        }
      },
      "documentation": "Selector for video."
    },
    "VideoTimecodeInsertion": {
      "type": "string",
      "documentation": "Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input frame rate is identical to the output frame rate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does.",
      "enum": [
        "DISABLED",
        "PIC_TIMING_SEI"
      ]
    },
    "VorbisSettings": {
      "type": "structure",
      "members": {
        "Channels": {
          "shape": "__integerMin1Max2",
          "locationName": "channels",
          "documentation": "Optional. Specify the number of channels in this output audio track. Choosing Mono on the console gives you 1 output channel; choosing Stereo gives you 2. In the API, valid values are 1 and 2. The default value is 2."
        },
        "SampleRate": {
          "shape": "__integerMin22050Max48000",
          "locationName": "sampleRate",
          "documentation": "Optional. Specify the audio sample rate in Hz. Valid values are 22050, 32000, 44100, and 48000. The default value is 48000."
        },
        "VbrQuality": {
          "shape": "__integerMinNegative1Max10",
          "locationName": "vbrQuality",
          "documentation": "Optional. Specify the variable audio quality of this Vorbis output from -1 (lowest quality, ~45 kbit/s) to 10 (highest quality, ~500 kbit/s). The default value is 4 (~128 kbit/s). Values 5 and 6 are approximately 160 and 192 kbit/s, respectively."
        }
      },
      "documentation": "Required when you set Codec, under AudioDescriptions>CodecSettings, to the value Vorbis."
    },
    "Vp8FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Vp8FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "Vp8ParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Vp8QualityTuningLevel": {
      "type": "string",
      "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.",
      "enum": [
        "MULTI_PASS",
        "MULTI_PASS_HQ"
      ]
    },
    "Vp8RateControlMode": {
      "type": "string",
      "documentation": "With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode.",
      "enum": [
        "VBR"
      ]
    },
    "Vp8Settings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "bitrate",
          "documentation": "Target bitrate in bits/second. For example, enter five megabits per second as 5000000."
        },
        "FramerateControl": {
          "shape": "Vp8FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "Vp8FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "GOP Length (keyframe interval) in frames. Must be greater than zero."
        },
        "HrdBufferSize": {
          "shape": "__integerMin0Max47185920",
          "locationName": "hrdBufferSize",
          "documentation": "Optional. Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max1152000000",
          "locationName": "maxBitrate",
          "documentation": "Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate."
        },
        "ParControl": {
          "shape": "Vp8ParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "QualityTuningLevel": {
          "shape": "Vp8QualityTuningLevel",
          "locationName": "qualityTuningLevel",
          "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
        },
        "RateControlMode": {
          "shape": "Vp8RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "With the VP8 codec, you can use only the variable bitrate (VBR) rate control mode."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP8."
    },
    "Vp9FramerateControl": {
      "type": "string",
      "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Vp9FramerateConversionAlgorithm": {
      "type": "string",
      "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion.",
      "enum": [
        "DUPLICATE_DROP",
        "INTERPOLATE"
      ]
    },
    "Vp9ParControl": {
      "type": "string",
      "documentation": "Optional. Specify how the service determines the pixel aspect ratio (PAR) for this output. The default behavior, Follow source (INITIALIZE_FROM_SOURCE), uses the PAR from your input video for your output. To specify a different PAR in the console, choose any value other than Follow source. To specify a different PAR by editing the JSON job specification, choose SPECIFIED. When you choose SPECIFIED for this setting, you must also specify values for the parNumerator and parDenominator settings.",
      "enum": [
        "INITIALIZE_FROM_SOURCE",
        "SPECIFIED"
      ]
    },
    "Vp9QualityTuningLevel": {
      "type": "string",
      "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding.",
      "enum": [
        "MULTI_PASS",
        "MULTI_PASS_HQ"
      ]
    },
    "Vp9RateControlMode": {
      "type": "string",
      "documentation": "With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode.",
      "enum": [
        "VBR"
      ]
    },
    "Vp9Settings": {
      "type": "structure",
      "members": {
        "Bitrate": {
          "shape": "__integerMin1000Max480000000",
          "locationName": "bitrate",
          "documentation": "Target bitrate in bits/second. For example, enter five megabits per second as 5000000."
        },
        "FramerateControl": {
          "shape": "Vp9FramerateControl",
          "locationName": "framerateControl",
          "documentation": "If you are using the console, use the Framerate setting to specify the frame rate for this output. If you want to keep the same frame rate as the input video, choose Follow source. If you want to do frame rate conversion, choose a frame rate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your frame rate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the frame rate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the frame rate from the input. Choose SPECIFIED if you want the service to use the frame rate you specify in the settings FramerateNumerator and FramerateDenominator."
        },
        "FramerateConversionAlgorithm": {
          "shape": "Vp9FramerateConversionAlgorithm",
          "locationName": "framerateConversionAlgorithm",
          "documentation": "Optional. Specify how the transcoder performs framerate conversion. The default behavior is to use Drop duplicate (DUPLICATE_DROP) conversion. When you choose Interpolate (INTERPOLATE) instead, the conversion produces smoother motion."
        },
        "FramerateDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateDenominator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "FramerateNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "framerateNumerator",
          "documentation": "When you use the API for transcode jobs that use frame rate conversion, specify the frame rate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator. When you use the console for transcode jobs that use frame rate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976."
        },
        "GopSize": {
          "shape": "__doubleMin0",
          "locationName": "gopSize",
          "documentation": "GOP Length (keyframe interval) in frames. Must be greater than zero."
        },
        "HrdBufferSize": {
          "shape": "__integerMin0Max47185920",
          "locationName": "hrdBufferSize",
          "documentation": "Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000."
        },
        "MaxBitrate": {
          "shape": "__integerMin1000Max480000000",
          "locationName": "maxBitrate",
          "documentation": "Ignore this setting unless you set qualityTuningLevel to MULTI_PASS. Optional. Specify the maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. The default behavior uses twice the target bitrate as the maximum bitrate."
        },
        "ParControl": {
          "shape": "Vp9ParControl",
          "locationName": "parControl",
          "documentation": "Optional. Specify how the service determines the pixel aspect ratio for this output. The default behavior is to use the same pixel aspect ratio as your input video."
        },
        "ParDenominator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parDenominator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parDenominator is 33."
        },
        "ParNumerator": {
          "shape": "__integerMin1Max2147483647",
          "locationName": "parNumerator",
          "documentation": "Required when you set Pixel aspect ratio (parControl) to SPECIFIED. On the console, this corresponds to any value other than Follow source. When you specify an output pixel aspect ratio (PAR) that is different from your input video PAR, provide your output PAR as a ratio. For example, for D1/DV NTSC widescreen, you would specify the ratio 40:33. In this example, the value for parNumerator is 40."
        },
        "QualityTuningLevel": {
          "shape": "Vp9QualityTuningLevel",
          "locationName": "qualityTuningLevel",
          "documentation": "Optional. Use Quality tuning level (qualityTuningLevel) to choose how you want to trade off encoding speed for output video quality. The default behavior is faster, lower quality, multi-pass encoding."
        },
        "RateControlMode": {
          "shape": "Vp9RateControlMode",
          "locationName": "rateControlMode",
          "documentation": "With the VP9 codec, you can use only the variable bitrate (VBR) rate control mode."
        }
      },
      "documentation": "Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value VP9."
    },
    "WatermarkingStrength": {
      "type": "string",
      "documentation": "Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.",
      "enum": [
        "LIGHTEST",
        "LIGHTER",
        "DEFAULT",
        "STRONGER",
        "STRONGEST"
      ]
    },
    "WavFormat": {
      "type": "string",
      "documentation": "The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.",
      "enum": [
        "RIFF",
        "RF64"
      ]
    },
    "WavSettings": {
      "type": "structure",
      "members": {
        "BitDepth": {
          "shape": "__integerMin16Max24",
          "locationName": "bitDepth",
          "documentation": "Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track."
        },
        "Channels": {
          "shape": "__integerMin1Max64",
          "locationName": "channels",
          "documentation": "Specify the number of channels in this output audio track. Valid values are 1 and even numbers up to 64. For example, 1, 2, 4, 6, and so on, up to 64."
        },
        "Format": {
          "shape": "WavFormat",
          "locationName": "format",
          "documentation": "The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64."
        },
        "SampleRate": {
          "shape": "__integerMin8000Max192000",
          "locationName": "sampleRate",
          "documentation": "Sample rate in Hz."
        }
      },
      "documentation": "Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV."
    },
    "__doubleMin0": {
      "type": "double"
    },
    "__doubleMin0Max1": {
      "type": "double"
    },
    "__doubleMin0Max2147483647": {
      "type": "double"
    },
    "__doubleMinNegative59Max0": {
      "type": "double"
    },
    "__doubleMinNegative60Max3": {
      "type": "double"
    },
    "__doubleMinNegative60MaxNegative1": {
      "type": "double"
    },
    "__doubleMinNegative6Max3": {
      "type": "double"
    },
    "__integer": {
      "type": "integer"
    },
    "__integerMin0Max0": {
      "type": "integer",
      "min": 0,
      "max": 0
    },
    "__integerMin0Max1": {
      "type": "integer",
      "min": 0,
      "max": 1
    },
    "__integerMin0Max10": {
      "type": "integer",
      "min": 0,
      "max": 10
    },
    "__integerMin0Max100": {
      "type": "integer",
      "min": 0,
      "max": 100
    },
    "__integerMin0Max1000": {
      "type": "integer",
      "min": 0,
      "max": 1000
    },
    "__integerMin0Max10000": {
      "type": "integer",
      "min": 0,
      "max": 10000
    },
    "__integerMin0Max1152000000": {
      "type": "integer",
      "min": 0,
      "max": 1152000000
    },
    "__integerMin0Max128": {
      "type": "integer",
      "min": 0,
      "max": 128
    },
    "__integerMin0Max1466400000": {
      "type": "integer",
      "min": 0,
      "max": 1466400000
    },
    "__integerMin0Max15": {
      "type": "integer",
      "min": 0,
      "max": 15
    },
    "__integerMin0Max16": {
      "type": "integer",
      "min": 0,
      "max": 16
    },
    "__integerMin0Max2147483647": {
      "type": "integer",
      "min": 0,
      "max": 2147483647
    },
    "__integerMin0Max255": {
      "type": "integer",
      "min": 0,
      "max": 255
    },
    "__integerMin0Max3": {
      "type": "integer",
      "min": 0,
      "max": 3
    },
    "__integerMin0Max30": {
      "type": "integer",
      "min": 0,
      "max": 30
    },
    "__integerMin0Max30000": {
      "type": "integer",
      "min": 0,
      "max": 30000
    },
    "__integerMin0Max3600": {
      "type": "integer",
      "min": 0,
      "max": 3600
    },
    "__integerMin0Max4": {
      "type": "integer",
      "min": 0,
      "max": 4
    },
    "__integerMin0Max4194303": {
      "type": "integer",
      "min": 0,
      "max": 4194303
    },
    "__integerMin0Max47185920": {
      "type": "integer",
      "min": 0,
      "max": 47185920
    },
    "__integerMin0Max500": {
      "type": "integer",
      "min": 0,
      "max": 500
    },
    "__integerMin0Max50000": {
      "type": "integer",
      "min": 0,
      "max": 50000
    },
    "__integerMin0Max65535": {
      "type": "integer",
      "min": 0,
      "max": 65535
    },
    "__integerMin0Max7": {
      "type": "integer",
      "min": 0,
      "max": 7
    },
    "__integerMin0Max8": {
      "type": "integer",
      "min": 0,
      "max": 8
    },
    "__integerMin0Max9": {
      "type": "integer",
      "min": 0,
      "max": 9
    },
    "__integerMin0Max96": {
      "type": "integer",
      "min": 0,
      "max": 96
    },
    "__integerMin0Max99": {
      "type": "integer",
      "min": 0,
      "max": 99
    },
    "__integerMin1000Max1152000000": {
      "type": "integer",
      "min": 1000,
      "max": 1152000000
    },
    "__integerMin1000Max1466400000": {
      "type": "integer",
      "min": 1000,
      "max": 1466400000
    },
    "__integerMin1000Max288000000": {
      "type": "integer",
      "min": 1000,
      "max": 288000000
    },
    "__integerMin1000Max30000": {
      "type": "integer",
      "min": 1000,
      "max": 30000
    },
    "__integerMin1000Max300000000": {
      "type": "integer",
      "min": 1000,
      "max": 300000000
    },
    "__integerMin1000Max480000000": {
      "type": "integer",
      "min": 1000,
      "max": 480000000
    },
    "__integerMin10Max48": {
      "type": "integer",
      "min": 10,
      "max": 48
    },
    "__integerMin16000Max320000": {
      "type": "integer",
      "min": 16000,
      "max": 320000
    },
    "__integerMin16000Max48000": {
      "type": "integer",
      "min": 16000,
      "max": 48000
    },
    "__integerMin16Max24": {
      "type": "integer",
      "min": 16,
      "max": 24
    },
    "__integerMin1Max1": {
      "type": "integer",
      "min": 1,
      "max": 1
    },
    "__integerMin1Max10": {
      "type": "integer",
      "min": 1,
      "max": 10
    },
    "__integerMin1Max100": {
      "type": "integer",
      "min": 1,
      "max": 100
    },
    "__integerMin1Max10000000": {
      "type": "integer",
      "min": 1,
      "max": 10000000
    },
    "__integerMin1Max1001": {
      "type": "integer",
      "min": 1,
      "max": 1001
    },
    "__integerMin1Max17895697": {
      "type": "integer",
      "min": 1,
      "max": 17895697
    },
    "__integerMin1Max2": {
      "type": "integer",
      "min": 1,
      "max": 2
    },
    "__integerMin1Max20": {
      "type": "integer",
      "min": 1,
      "max": 20
    },
    "__integerMin1Max2147483640": {
      "type": "integer",
      "min": 1,
      "max": 2147483640
    },
    "__integerMin1Max2147483647": {
      "type": "integer",
      "min": 1,
      "max": 2147483647
    },
    "__integerMin1Max31": {
      "type": "integer",
      "min": 1,
      "max": 31
    },
    "__integerMin1Max32": {
      "type": "integer",
      "min": 1,
      "max": 32
    },
    "__integerMin1Max4": {
      "type": "integer",
      "min": 1,
      "max": 4
    },
    "__integerMin1Max6": {
      "type": "integer",
      "min": 1,
      "max": 6
    },
    "__integerMin1Max60000": {
      "type": "integer",
      "min": 1,
      "max": 60000
    },
    "__integerMin1Max64": {
      "type": "integer",
      "min": 1,
      "max": 64
    },
    "__integerMin22050Max48000": {
      "type": "integer",
      "min": 22050,
      "max": 48000
    },
    "__integerMin24Max60000": {
      "type": "integer",
      "min": 24,
      "max": 60000
    },
    "__integerMin25Max10000": {
      "type": "integer",
      "min": 25,
      "max": 10000
    },
    "__integerMin25Max2000": {
      "type": "integer",
      "min": 25,
      "max": 2000
    },
    "__integerMin2Max2147483647": {
      "type": "integer",
      "min": 2,
      "max": 2147483647
    },
    "__integerMin32000Max192000": {
      "type": "integer",
      "min": 32000,
      "max": 192000
    },
    "__integerMin32000Max384000": {
      "type": "integer",
      "min": 32000,
      "max": 384000
    },
    "__integerMin32000Max48000": {
      "type": "integer",
      "min": 32000,
      "max": 48000
    },
    "__integerMin32Max8182": {
      "type": "integer",
      "min": 32,
      "max": 8182
    },
    "__integerMin32Max8192": {
      "type": "integer",
      "min": 32,
      "max": 8192
    },
    "__integerMin384000Max768000": {
      "type": "integer",
      "min": 384000,
      "max": 768000
    },
    "__integerMin48000Max48000": {
      "type": "integer",
      "min": 48000,
      "max": 48000
    },
    "__integerMin6000Max1024000": {
      "type": "integer",
      "min": 6000,
      "max": 1024000
    },
    "__integerMin64000Max640000": {
      "type": "integer",
      "min": 64000,
      "max": 640000
    },
    "__integerMin7Max15": {
      "type": "integer",
      "min": 7,
      "max": 15
    },
    "__integerMin8000Max192000": {
      "type": "integer",
      "min": 8000,
      "max": 192000
    },
    "__integerMin8000Max96000": {
      "type": "integer",
      "min": 8000,
      "max": 96000
    },
    "__integerMin96Max600": {
      "type": "integer",
      "min": 96,
      "max": 600
    },
    "__integerMinNegative1000Max1000": {
      "type": "integer",
      "min": -1000,
      "max": 1000
    },
    "__integerMinNegative180Max180": {
      "type": "integer",
      "min": -180,
      "max": 180
    },
    "__integerMinNegative1Max10": {
      "type": "integer",
      "min": -1,
      "max": 10
    },
    "__integerMinNegative1Max3": {
      "type": "integer",
      "min": -1,
      "max": 3
    },
    "__integerMinNegative2147483648Max2147483647": {
      "type": "integer",
      "min": -2147483648,
      "max": 2147483647
    },
    "__integerMinNegative2Max3": {
      "type": "integer",
      "min": -2,
      "max": 3
    },
    "__integerMinNegative50Max50": {
      "type": "integer",
      "min": -50,
      "max": 50
    },
    "__integerMinNegative5Max5": {
      "type": "integer",
      "min": -5,
      "max": 5
    },
    "__integerMinNegative60Max6": {
      "type": "integer",
      "min": -60,
      "max": 6
    },
    "__integerMinNegative70Max0": {
      "type": "integer",
      "min": -70,
      "max": 0
    },
    "__listOfAudioDescription": {
      "type": "list",
      "member": {
        "shape": "AudioDescription"
      }
    },
    "__listOfCaptionDescription": {
      "type": "list",
      "member": {
        "shape": "CaptionDescription"
      }
    },
    "__listOfCaptionDescriptionPreset": {
      "type": "list",
      "member": {
        "shape": "CaptionDescriptionPreset"
      }
    },
    "__listOfCmafAdditionalManifest": {
      "type": "list",
      "member": {
        "shape": "CmafAdditionalManifest"
      }
    },
    "__listOfDashAdditionalManifest": {
      "type": "list",
      "member": {
        "shape": "DashAdditionalManifest"
      }
    },
    "__listOfEndpoint": {
      "type": "list",
      "member": {
        "shape": "Endpoint"
      }
    },
    "__listOfHlsAdMarkers": {
      "type": "list",
      "member": {
        "shape": "HlsAdMarkers"
      }
    },
    "__listOfHlsAdditionalManifest": {
      "type": "list",
      "member": {
        "shape": "HlsAdditionalManifest"
      }
    },
    "__listOfHlsCaptionLanguageMapping": {
      "type": "list",
      "member": {
        "shape": "HlsCaptionLanguageMapping"
      }
    },
    "__listOfHopDestination": {
      "type": "list",
      "member": {
        "shape": "HopDestination"
      }
    },
    "__listOfId3Insertion": {
      "type": "list",
      "member": {
        "shape": "Id3Insertion"
      }
    },
    "__listOfInput": {
      "type": "list",
      "member": {
        "shape": "Input"
      }
    },
    "__listOfInputClipping": {
      "type": "list",
      "member": {
        "shape": "InputClipping"
      }
    },
    "__listOfInputTemplate": {
      "type": "list",
      "member": {
        "shape": "InputTemplate"
      }
    },
    "__listOfInsertableImage": {
      "type": "list",
      "member": {
        "shape": "InsertableImage"
      }
    },
    "__listOfJob": {
      "type": "list",
      "member": {
        "shape": "Job"
      }
    },
    "__listOfJobTemplate": {
      "type": "list",
      "member": {
        "shape": "JobTemplate"
      }
    },
    "__listOfMsSmoothAdditionalManifest": {
      "type": "list",
      "member": {
        "shape": "MsSmoothAdditionalManifest"
      }
    },
    "__listOfOutput": {
      "type": "list",
      "member": {
        "shape": "Output"
      }
    },
    "__listOfOutputChannelMapping": {
      "type": "list",
      "member": {
        "shape": "OutputChannelMapping"
      }
    },
    "__listOfOutputDetail": {
      "type": "list",
      "member": {
        "shape": "OutputDetail"
      }
    },
    "__listOfOutputGroup": {
      "type": "list",
      "member": {
        "shape": "OutputGroup"
      }
    },
    "__listOfOutputGroupDetail": {
      "type": "list",
      "member": {
        "shape": "OutputGroupDetail"
      }
    },
    "__listOfPreset": {
      "type": "list",
      "member": {
        "shape": "Preset"
      }
    },
    "__listOfQueue": {
      "type": "list",
      "member": {
        "shape": "Queue"
      }
    },
    "__listOfQueueTransition": {
      "type": "list",
      "member": {
        "shape": "QueueTransition"
      }
    },
    "__listOfTeletextPageType": {
      "type": "list",
      "member": {
        "shape": "TeletextPageType"
      }
    },
    "__listOf__integerMin1Max2147483647": {
      "type": "list",
      "member": {
        "shape": "__integerMin1Max2147483647"
      }
    },
    "__listOf__integerMin32Max8182": {
      "type": "list",
      "member": {
        "shape": "__integerMin32Max8182"
      }
    },
    "__listOf__integerMinNegative60Max6": {
      "type": "list",
      "member": {
        "shape": "__integerMinNegative60Max6"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__listOf__stringMin1": {
      "type": "list",
      "member": {
        "shape": "__stringMin1"
      }
    },
    "__listOf__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12": {
      "type": "list",
      "member": {
        "shape": "__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12"
      }
    },
    "__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12": {
      "type": "list",
      "member": {
        "shape": "__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12"
      }
    },
    "__listOf__stringPatternS3ASSETMAPXml": {
      "type": "list",
      "member": {
        "shape": "__stringPatternS3ASSETMAPXml"
      }
    },
    "__mapOfAudioSelector": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "AudioSelector"
      }
    },
    "__mapOfAudioSelectorGroup": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "AudioSelectorGroup"
      }
    },
    "__mapOfCaptionSelector": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "CaptionSelector"
      }
    },
    "__mapOf__string": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    },
    "__stringMin0": {
      "type": "string",
      "min": 0
    },
    "__stringMin1": {
      "type": "string",
      "min": 1
    },
    "__stringMin11Max11Pattern01D20305D205D": {
      "type": "string",
      "min": 11,
      "max": 11,
      "pattern": "^((([0-1]\\d)|(2[0-3]))(:[0-5]\\d){2}([:;][0-5]\\d))$"
    },
    "__stringMin14Max1285PatternS3Mov09PngHttpsMov09Png": {
      "type": "string",
      "min": 14,
      "max": 1285,
      "pattern": "^((s3://(.*)(\\.mov|[0-9]+\\.png))|(https?://(.*)(\\.mov|[0-9]+\\.png)(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringMin14PatternS3BmpBMPPngPNGHttpsBmpBMPPngPNG": {
      "type": "string",
      "min": 14,
      "pattern": "^((s3://(.*?)\\.(bmp|BMP|png|PNG))|(https?://(.*?)\\.(bmp|BMP|png|PNG)(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringMin14PatternS3BmpBMPPngPNGTgaTGAHttpsBmpBMPPngPNGTgaTGA": {
      "type": "string",
      "min": 14,
      "pattern": "^((s3://(.*?)\\.(bmp|BMP|png|PNG|tga|TGA))|(https?://(.*?)\\.(bmp|BMP|png|PNG|tga|TGA)(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMIHttpsSccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTXmlXMLSmiSMI": {
      "type": "string",
      "min": 14,
      "pattern": "^((s3://(.*?)\\.(scc|SCC|ttml|TTML|dfxp|DFXP|stl|STL|srt|SRT|xml|XML|smi|SMI))|(https?://(.*?)\\.(scc|SCC|ttml|TTML|dfxp|DFXP|stl|STL|srt|SRT|xml|XML|smi|SMI)(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringMin16Max24PatternAZaZ0922AZaZ0916": {
      "type": "string",
      "min": 16,
      "max": 24,
      "pattern": "^[A-Za-z0-9+\\/]{22}==$|^[A-Za-z0-9+\\/]{16}$"
    },
    "__stringMin1Max100000": {
      "type": "string",
      "min": 1,
      "max": 100000
    },
    "__stringMin1Max256": {
      "type": "string",
      "min": 1,
      "max": 256
    },
    "__stringMin24Max512PatternAZaZ0902": {
      "type": "string",
      "min": 24,
      "max": 512,
      "pattern": "^[A-Za-z0-9+\\/]+={0,2}$"
    },
    "__stringMin32Max32Pattern09aFAF32": {
      "type": "string",
      "min": 32,
      "max": 32,
      "pattern": "^[0-9a-fA-F]{32}$"
    },
    "__stringMin36Max36Pattern09aFAF809aFAF409aFAF409aFAF409aFAF12": {
      "type": "string",
      "min": 36,
      "max": 36,
      "pattern": "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
    },
    "__stringMin3Max3Pattern1809aFAF09aEAE": {
      "type": "string",
      "min": 3,
      "max": 3,
      "pattern": "^[1-8][0-9a-fA-F][0-9a-eA-E]$"
    },
    "__stringMin3Max3PatternAZaZ3": {
      "type": "string",
      "min": 3,
      "max": 3,
      "pattern": "^[A-Za-z]{3}$"
    },
    "__stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912": {
      "type": "string",
      "min": 9,
      "max": 19,
      "pattern": "^[a-z-]{2,6}-(east|west|central|((north|south)(east|west)?))-[1-9]{1,2}$"
    },
    "__stringPattern": {
      "type": "string",
      "pattern": "^[ -~]+$"
    },
    "__stringPattern010920405090509092": {
      "type": "string",
      "pattern": "^([01][0-9]|2[0-4]):[0-5][0-9]:[0-5][0-9][:;][0-9]{2}$"
    },
    "__stringPattern01D20305D205D": {
      "type": "string",
      "pattern": "^((([0-1]\\d)|(2[0-3]))(:[0-5]\\d){2}([:;][0-5]\\d))$"
    },
    "__stringPattern0940191020191209301": {
      "type": "string",
      "pattern": "^([0-9]{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"
    },
    "__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12": {
      "type": "string",
      "pattern": "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"
    },
    "__stringPatternAZaZ0902": {
      "type": "string",
      "pattern": "^[A-Za-z0-9+\\/]+={0,2}$"
    },
    "__stringPatternAZaZ0932": {
      "type": "string",
      "pattern": "^[A-Za-z0-9]{32}$"
    },
    "__stringPatternAZaZ23AZaZ": {
      "type": "string",
      "pattern": "^[A-Za-z]{2,3}(-[A-Za-z-]+)?$"
    },
    "__stringPatternArnAwsUsGovAcm": {
      "type": "string",
      "pattern": "^arn:aws(-us-gov)?:acm:"
    },
    "__stringPatternArnAwsUsGovCnKmsAZ26EastWestCentralNorthSouthEastWest1912D12KeyAFAF098AFAF094AFAF094AFAF094AFAF0912": {
      "type": "string",
      "pattern": "^arn:aws(-us-gov|-cn)?:kms:[a-z-]{2,6}-(east|west|central|((north|south)(east|west)?))-[1-9]{1,2}:\\d{12}:key/[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"
    },
    "__stringPatternDD": {
      "type": "string",
      "pattern": "^(\\d+(\\/\\d+)*)$"
    },
    "__stringPatternHttps": {
      "type": "string",
      "pattern": "^https:\\/\\/"
    },
    "__stringPatternIdentityAZaZ26AZaZ09163": {
      "type": "string",
      "pattern": "^(identity|[A-Za-z]{2,6}(\\.[A-Za-z0-9-]{1,63})+)$"
    },
    "__stringPatternS3": {
      "type": "string",
      "pattern": "^s3:\\/\\/"
    },
    "__stringPatternS3ASSETMAPXml": {
      "type": "string",
      "pattern": "^s3:\\/\\/.*\\/(ASSETMAP.xml)?$"
    },
    "__stringPatternS3MM2PPMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLLHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLL": {
      "type": "string",
      "pattern": "^((s3://([^\\/]+\\/+)+([^\\/\\.]+|(([^\\/]*)\\.([mM]2[pP]|[mM]2[vV]|[mM][pP][eE][gG]|[mM][pP]3|[aA][vV][iI]|[mM][pP]4|[fF][lL][vV]|[mM][pP][tT]|[mM][pP][gG]|[mM]4[vV]|[tT][rR][pP]|[fF]4[vV]|[mM]2[tT][sS]|[tT][sS]|264|[hH]264|[mM][kK][vV]|[mM][kK][aA]|[mM][oO][vV]|[mM][tT][sS]|[mM]2[tT]|[wW][mM][vV]|[aA][sS][fF]|[vV][oO][bB]|3[gG][pP]|3[gG][pP][pP]|[mM][xX][fF]|[dD][iI][vV][xX]|[xX][vV][iI][dD]|[rR][aA][wW]|[dD][vV]|[gG][xX][fF]|[mM]1[vV]|3[gG]2|[vV][mM][fF]|[mM]3[uU]8|[wW][eE][bB][mM]|[lL][cC][hH]|[gG][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF][hH][dD]|[wW][aA][vV]|[yY]4[mM]|[xX][mM][lL]))))|(https?://([^\\/]+\\/+)+([^\\/\\.]+|(([^\\/]*)\\.([mM]2[vV]|[mM][pP][eE][gG]|[mM][pP]3|[aA][vV][iI]|[mM][pP]4|[fF][lL][vV]|[mM][pP][tT]|[mM][pP][gG]|[mM]4[vV]|[tT][rR][pP]|[fF]4[vV]|[mM]2[tT][sS]|[tT][sS]|264|[hH]264|[mM][kK][vV]|[mM][kK][aA]|[mM][oO][vV]|[mM][tT][sS]|[mM]2[tT]|[wW][mM][vV]|[aA][sS][fF]|[vV][oO][bB]|3[gG][pP]|3[gG][pP][pP]|[mM][xX][fF]|[dD][iI][vV][xX]|[xX][vV][iI][dD]|[rR][aA][wW]|[dD][vV]|[gG][xX][fF]|[mM]1[vV]|3[gG]2|[vV][mM][fF]|[mM]3[uU]8|[wW][eE][bB][mM]|[lL][cC][hH]|[gG][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF][hH][dD]|[wW][aA][vV]|[yY]4[mM]|[xX][mM][lL])))(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringPatternS3MM2PPWWEEBBMMMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEEHttpsMM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMKKAAMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE": {
      "type": "string",
      "pattern": "^((s3://([^\\/]+\\/+)+([^\\/\\.]+|(([^\\/]*)\\.([mM]2[pP]|[wW][eE][bB][mM]|[mM]2[vV]|[mM][pP][eE][gG]|[mM][pP]3|[aA][vV][iI]|[mM][pP]4|[fF][lL][vV]|[mM][pP][tT]|[mM][pP][gG]|[mM]4[vV]|[tT][rR][pP]|[fF]4[vV]|[mM]2[tT][sS]|[tT][sS]|264|[hH]264|[mM][kK][vV]|[mM][kK][aA]|[mM][oO][vV]|[mM][tT][sS]|[mM]2[tT]|[wW][mM][vV]|[aA][sS][fF]|[vV][oO][bB]|3[gG][pP]|3[gG][pP][pP]|[mM][xX][fF]|[dD][iI][vV][xX]|[xX][vV][iI][dD]|[rR][aA][wW]|[dD][vV]|[gG][xX][fF]|[mM]1[vV]|3[gG]2|[vV][mM][fF]|[mM]3[uU]8|[lL][cC][hH]|[gG][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF][hH][dD]|[wW][aA][vV]|[yY]4[mM]|[aA][aA][cC]|[aA][iI][fF][fF]|[mM][pP]2|[aA][cC]3|[eE][cC]3|[dD][tT][sS][eE]))))|(https?://([^\\/]+\\/+)+([^\\/\\.]+|(([^\\/]*)\\.([mM]2[vV]|[mM][pP][eE][gG]|[mM][pP]3|[aA][vV][iI]|[mM][pP]4|[fF][lL][vV]|[mM][pP][tT]|[mM][pP][gG]|[mM]4[vV]|[tT][rR][pP]|[fF]4[vV]|[mM]2[tT][sS]|[tT][sS]|264|[hH]264|[mM][kK][vV]|[mM][kK][aA]|[mM][oO][vV]|[mM][tT][sS]|[mM]2[tT]|[wW][mM][vV]|[aA][sS][fF]|[vV][oO][bB]|3[gG][pP]|3[gG][pP][pP]|[mM][xX][fF]|[dD][iI][vV][xX]|[xX][vV][iI][dD]|[rR][aA][wW]|[dD][vV]|[gG][xX][fF]|[mM]1[vV]|3[gG]2|[vV][mM][fF]|[mM]3[uU]8|[lL][cC][hH]|[gG][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF]_[mM][pP][eE][gG]2|[mM][xX][fF][hH][dD]|[wW][aA][vV]|[yY]4[mM]|[aA][aA][cC]|[aA][iI][fF][fF]|[mM][pP]2|[aA][cC]3|[eE][cC]3|[dD][tT][sS][eE])))(\\?([^&=]+=[^&]+&)*[^&=]+=[^&]+)?))$"
    },
    "__stringPatternSNManifestConfirmConditionNotificationNS": {
      "type": "string",
      "pattern": "^\\s*<(.|\\n)*ManifestConfirmConditionNotification(.|\\n)*>\\s*$"
    },
    "__stringPatternSNSignalProcessingNotificationNS": {
      "type": "string",
      "pattern": "^\\s*<(.|\\n)*SignalProcessingNotification(.|\\n)*>\\s*$"
    },
    "__stringPatternW": {
      "type": "string",
      "pattern": "^[\\w-]+$"
    },
    "__stringPatternWS": {
      "type": "string",
      "pattern": "^[\\w\\s]*$"
    },
    "__timestampUnix": {
      "type": "timestamp",
      "timestampFormat": "unixTimestamp"
    }
  },
  "documentation": "AWS Elemental MediaConvert"
}
]===]))