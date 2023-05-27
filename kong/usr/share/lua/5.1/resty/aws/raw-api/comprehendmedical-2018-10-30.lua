local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-10-30",
    "endpointPrefix": "comprehendmedical",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "ComprehendMedical",
    "serviceFullName": "AWS Comprehend Medical",
    "serviceId": "ComprehendMedical",
    "signatureVersion": "v4",
    "signingName": "comprehendmedical",
    "targetPrefix": "ComprehendMedical_20181030",
    "uid": "comprehendmedical-2018-10-30"
  },
  "operations": {
    "DescribeEntitiesDetectionV2Job": {
      "name": "DescribeEntitiesDetectionV2Job",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEntitiesDetectionV2JobRequest"
      },
      "output": {
        "shape": "DescribeEntitiesDetectionV2JobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.</p>"
    },
    "DescribeICD10CMInferenceJob": {
      "name": "DescribeICD10CMInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeICD10CMInferenceJobRequest"
      },
      "output": {
        "shape": "DescribeICD10CMInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the properties associated with an InferICD10CM job. Use this operation to get the status of an inference job.</p>"
    },
    "DescribePHIDetectionJob": {
      "name": "DescribePHIDetectionJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePHIDetectionJobRequest"
      },
      "output": {
        "shape": "DescribePHIDetectionJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.</p>"
    },
    "DescribeRxNormInferenceJob": {
      "name": "DescribeRxNormInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRxNormInferenceJobRequest"
      },
      "output": {
        "shape": "DescribeRxNormInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the properties associated with an InferRxNorm job. Use this operation to get the status of an inference job.</p>"
    },
    "DetectEntities": {
      "name": "DetectEntities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetectEntitiesRequest"
      },
      "output": {
        "shape": "DetectEntitiesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidEncodingException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        }
      ],
      "documentation": "<p>The <code>DetectEntities</code> operation is deprecated. You should use the <a>DetectEntitiesV2</a> operation instead.</p> <p> Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .</p>",
      "deprecated": true,
      "deprecatedMessage": "This operation is deprecated, use DetectEntitiesV2 instead."
    },
    "DetectEntitiesV2": {
      "name": "DetectEntitiesV2",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetectEntitiesV2Request"
      },
      "output": {
        "shape": "DetectEntitiesV2Response"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidEncodingException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        }
      ],
      "documentation": "<p>Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. Amazon Comprehend Medical only detects medical entities in English language texts.</p> <p>The <code>DetectEntitiesV2</code> operation replaces the <a>DetectEntities</a> operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the <code>DetectEntitiesV2</code> operation in all new applications.</p> <p>The <code>DetectEntitiesV2</code> operation returns the <code>Acuity</code> and <code>Direction</code> entities as attributes instead of types. </p>"
    },
    "DetectPHI": {
      "name": "DetectPHI",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetectPHIRequest"
      },
      "output": {
        "shape": "DetectPHIResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidEncodingException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        }
      ],
      "documentation": "<p> Inspects the clinical text for protected health information (PHI) entities and returns the entity category, location, and confidence score for each entity. Amazon Comprehend Medical only detects entities in English language texts.</p>"
    },
    "InferICD10CM": {
      "name": "InferICD10CM",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InferICD10CMRequest"
      },
      "output": {
        "shape": "InferICD10CMResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidEncodingException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        }
      ],
      "documentation": "<p>InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in English language texts.</p>"
    },
    "InferRxNorm": {
      "name": "InferRxNorm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InferRxNormRequest"
      },
      "output": {
        "shape": "InferRxNormResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidEncodingException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        }
      ],
      "documentation": "<p>InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine. Amazon Comprehend Medical only detects medical entities in English language texts.</p>"
    },
    "ListEntitiesDetectionV2Jobs": {
      "name": "ListEntitiesDetectionV2Jobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEntitiesDetectionV2JobsRequest"
      },
      "output": {
        "shape": "ListEntitiesDetectionV2JobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of medical entity detection jobs that you have submitted.</p>"
    },
    "ListICD10CMInferenceJobs": {
      "name": "ListICD10CMInferenceJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListICD10CMInferenceJobsRequest"
      },
      "output": {
        "shape": "ListICD10CMInferenceJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of InferICD10CM jobs that you have submitted.</p>"
    },
    "ListPHIDetectionJobs": {
      "name": "ListPHIDetectionJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPHIDetectionJobsRequest"
      },
      "output": {
        "shape": "ListPHIDetectionJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of protected health information (PHI) detection jobs that you have submitted.</p>"
    },
    "ListRxNormInferenceJobs": {
      "name": "ListRxNormInferenceJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRxNormInferenceJobsRequest"
      },
      "output": {
        "shape": "ListRxNormInferenceJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of InferRxNorm jobs that you have submitted.</p>"
    },
    "StartEntitiesDetectionV2Job": {
      "name": "StartEntitiesDetectionV2Job",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartEntitiesDetectionV2JobRequest"
      },
      "output": {
        "shape": "StartEntitiesDetectionV2JobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts an asynchronous medical entity detection job for a collection of documents. Use the <code>DescribeEntitiesDetectionV2Job</code> operation to track the status of a job.</p>"
    },
    "StartICD10CMInferenceJob": {
      "name": "StartICD10CMInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartICD10CMInferenceJobRequest"
      },
      "output": {
        "shape": "StartICD10CMInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM ontology. Use the <code>DescribeICD10CMInferenceJob</code> operation to track the status of a job.</p>"
    },
    "StartPHIDetectionJob": {
      "name": "StartPHIDetectionJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartPHIDetectionJobRequest"
      },
      "output": {
        "shape": "StartPHIDetectionJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts an asynchronous job to detect protected health information (PHI). Use the <code>DescribePHIDetectionJob</code> operation to track the status of a job.</p>"
    },
    "StartRxNormInferenceJob": {
      "name": "StartRxNormInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartRxNormInferenceJobRequest"
      },
      "output": {
        "shape": "StartRxNormInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts an asynchronous job to detect medication entities and link them to the RxNorm ontology. Use the <code>DescribeRxNormInferenceJob</code> operation to track the status of a job.</p>"
    },
    "StopEntitiesDetectionV2Job": {
      "name": "StopEntitiesDetectionV2Job",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopEntitiesDetectionV2JobRequest"
      },
      "output": {
        "shape": "StopEntitiesDetectionV2JobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops a medical entities detection job in progress.</p>"
    },
    "StopICD10CMInferenceJob": {
      "name": "StopICD10CMInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopICD10CMInferenceJobRequest"
      },
      "output": {
        "shape": "StopICD10CMInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops an InferICD10CM inference job in progress.</p>"
    },
    "StopPHIDetectionJob": {
      "name": "StopPHIDetectionJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopPHIDetectionJobRequest"
      },
      "output": {
        "shape": "StopPHIDetectionJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops a protected health information (PHI) detection job in progress.</p>"
    },
    "StopRxNormInferenceJob": {
      "name": "StopRxNormInferenceJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopRxNormInferenceJobRequest"
      },
      "output": {
        "shape": "StopRxNormInferenceJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops an InferRxNorm inference job in progress.</p>"
    }
  },
  "shapes": {
    "AnyLengthString": {
      "type": "string"
    },
    "Attribute": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "EntitySubType",
          "documentation": "<p> The type of attribute. </p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p> The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized as an attribute. </p>"
        },
        "RelationshipScore": {
          "shape": "Float",
          "documentation": "<p> The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this entity. </p>"
        },
        "RelationshipType": {
          "shape": "RelationshipType",
          "documentation": "<p>The type of relationship between the entity and attribute. Type for the relationship is <code>OVERLAP</code>, indicating that the entity occurred at the same time as the <code>Date_Expression</code>. </p>"
        },
        "Id": {
          "shape": "Integer",
          "documentation": "<p> The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier. </p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p> The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string. </p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p> The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.</p>"
        },
        "Text": {
          "shape": "String",
          "documentation": "<p> The segment of input text extracted as this attribute.</p>"
        },
        "Category": {
          "shape": "EntityType",
          "documentation": "<p> The category of attribute. </p>"
        },
        "Traits": {
          "shape": "TraitList",
          "documentation": "<p> Contextual information for this attribute. </p>"
        }
      },
      "documentation": "<p> An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken. It contains information about the attribute such as id, begin and end offset within the input text, and the segment of the input text. </p>"
    },
    "AttributeList": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      }
    },
    "AttributeName": {
      "type": "string",
      "enum": [
        "SIGN",
        "SYMPTOM",
        "DIAGNOSIS",
        "NEGATION"
      ]
    },
    "BoundedLengthString": {
      "type": "string",
      "max": 20000,
      "min": 1
    },
    "ClientRequestTokenString": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9-]+$"
    },
    "ComprehendMedicalAsyncJobFilter": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>Filters on the name of the job.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>Filters the list of jobs based on job status. Returns only jobs with the specified status.</p>"
        },
        "SubmitTimeBefore": {
          "shape": "Timestamp",
          "documentation": "<p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>"
        },
        "SubmitTimeAfter": {
          "shape": "Timestamp",
          "documentation": "<p>Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>"
        }
      },
      "documentation": "<p>Provides information for filtering a list of detection jobs.</p>"
    },
    "ComprehendMedicalAsyncJobProperties": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier assigned to the detection job.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The name that you assigned to the detection job.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>The current status of the detection job. If the status is <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>"
        },
        "Message": {
          "shape": "AnyLengthString",
          "documentation": "<p>A description of the status of a job.</p>"
        },
        "SubmitTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the detection job was submitted for processing.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the detection job completed.</p>"
        },
        "ExpirationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that job metadata is deleted from the server. Output files in your S3 bucket will not be deleted. After the metadata is deleted, the job will no longer appear in the results of the <code>ListEntitiesDetectionV2Job</code> or the <code>ListPHIDetectionJobs</code> operation.</p>"
        },
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>The input data configuration that you supplied when you created the detection job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>The output data configuration that you supplied when you created the detection job.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>The language code of the input documents.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) that gives Amazon Comprehend Medical read access to your input data.</p>"
        },
        "ManifestFilePath": {
          "shape": "ManifestFilePath",
          "documentation": "<p>The path to the file that describes the results of a batch job.</p>"
        },
        "KMSKey": {
          "shape": "KMSKey",
          "documentation": "<p>The AWS Key Management Service key, if any, used to encrypt the output files. </p>"
        },
        "ModelVersion": {
          "shape": "ModelVersion",
          "documentation": "<p>The version of the model used to analyze the documents. The version number looks like X.X.X. You can use this information to track the model used for a particular batch of documents.</p>"
        }
      },
      "documentation": "<p>Provides information about a detection job.</p>"
    },
    "ComprehendMedicalAsyncJobPropertiesList": {
      "type": "list",
      "member": {
        "shape": "ComprehendMedicalAsyncJobProperties"
      }
    },
    "DescribeEntitiesDetectionV2JobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier that Amazon Comprehend Medical generated for the job. The <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its response.</p>"
        }
      }
    },
    "DescribeEntitiesDetectionV2JobResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobProperties": {
          "shape": "ComprehendMedicalAsyncJobProperties",
          "documentation": "<p>An object that contains the properties associated with a detection job.</p>"
        }
      }
    },
    "DescribeICD10CMInferenceJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier that Amazon Comprehend Medical generated for the job. <code>The StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>"
        }
      }
    },
    "DescribeICD10CMInferenceJobResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobProperties": {
          "shape": "ComprehendMedicalAsyncJobProperties",
          "documentation": "<p>An object that contains the properties associated with a detection job.</p>"
        }
      }
    },
    "DescribePHIDetectionJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier that Amazon Comprehend Medical generated for the job. The <code>StartPHIDetectionJob</code> operation returns this identifier in its response.</p>"
        }
      }
    },
    "DescribePHIDetectionJobResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobProperties": {
          "shape": "ComprehendMedicalAsyncJobProperties",
          "documentation": "<p>An object that contains the properties associated with a detection job.</p>"
        }
      }
    },
    "DescribeRxNormInferenceJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier that Amazon Comprehend Medical generated for the job. The StartRxNormInferenceJob operation returns this identifier in its response.</p>"
        }
      }
    },
    "DescribeRxNormInferenceJobResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobProperties": {
          "shape": "ComprehendMedicalAsyncJobProperties",
          "documentation": "<p>An object that contains the properties associated with a detection job.</p>"
        }
      }
    },
    "DetectEntitiesRequest": {
      "type": "structure",
      "required": [
        "Text"
      ],
      "members": {
        "Text": {
          "shape": "BoundedLengthString",
          "documentation": "<p> A UTF-8 text string containing the clinical content being examined for entities. Each string must contain fewer than 20,000 bytes of characters.</p>"
        }
      }
    },
    "DetectEntitiesResponse": {
      "type": "structure",
      "required": [
        "Entities",
        "ModelVersion"
      ],
      "members": {
        "Entities": {
          "shape": "EntityList",
          "documentation": "<p> The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned.</p>"
        },
        "UnmappedAttributes": {
          "shape": "UnmappedAttributeList",
          "documentation": "<p> Attributes extracted from the input text that we were unable to relate to an entity.</p>"
        },
        "PaginationToken": {
          "shape": "String",
          "documentation": "<p> If the result of the previous request to <code>DetectEntities</code> was truncated, include the <code>PaginationToken</code> to fetch the next page of entities.</p>"
        },
        "ModelVersion": {
          "shape": "String",
          "documentation": "<p>The version of the model used to analyze the documents. The version number looks like X.X.X. You can use this information to track the model used for a particular batch of documents.</p>"
        }
      }
    },
    "DetectEntitiesV2Request": {
      "type": "structure",
      "required": [
        "Text"
      ],
      "members": {
        "Text": {
          "shape": "BoundedLengthString",
          "documentation": "<p>A UTF-8 string containing the clinical content being examined for entities. Each string must contain fewer than 20,000 bytes of characters.</p>"
        }
      }
    },
    "DetectEntitiesV2Response": {
      "type": "structure",
      "required": [
        "Entities",
        "ModelVersion"
      ],
      "members": {
        "Entities": {
          "shape": "EntityList",
          "documentation": "<p>The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence in the detection and analysis. Attributes and traits of the entity are also returned.</p>"
        },
        "UnmappedAttributes": {
          "shape": "UnmappedAttributeList",
          "documentation": "<p>Attributes extracted from the input text that couldn't be related to an entity.</p>"
        },
        "PaginationToken": {
          "shape": "String",
          "documentation": "<p>If the result to the <code>DetectEntitiesV2</code> operation was truncated, include the <code>PaginationToken</code> to fetch the next page of entities.</p>"
        },
        "ModelVersion": {
          "shape": "String",
          "documentation": "<p>The version of the model used to analyze the documents. The version number looks like X.X.X. You can use this information to track the model used for a particular batch of documents.</p>"
        }
      }
    },
    "DetectPHIRequest": {
      "type": "structure",
      "required": [
        "Text"
      ],
      "members": {
        "Text": {
          "shape": "BoundedLengthString",
          "documentation": "<p> A UTF-8 text string containing the clinical content being examined for PHI entities. Each string must contain fewer than 20,000 bytes of characters.</p>"
        }
      }
    },
    "DetectPHIResponse": {
      "type": "structure",
      "required": [
        "Entities",
        "ModelVersion"
      ],
      "members": {
        "Entities": {
          "shape": "EntityList",
          "documentation": "<p> The collection of PHI entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in its detection. </p>"
        },
        "PaginationToken": {
          "shape": "String",
          "documentation": "<p> If the result of the previous request to <code>DetectPHI</code> was truncated, include the <code>PaginationToken</code> to fetch the next page of PHI entities. </p>"
        },
        "ModelVersion": {
          "shape": "String",
          "documentation": "<p>The version of the model used to analyze the documents. The version number looks like X.X.X. You can use this information to track the model used for a particular batch of documents.</p>"
        }
      }
    },
    "Entity": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Integer",
          "documentation": "<p> The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier. </p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p> The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string. </p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p> The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string. </p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detection.</p>"
        },
        "Text": {
          "shape": "String",
          "documentation": "<p> The segment of input text extracted as this entity.</p>"
        },
        "Category": {
          "shape": "EntityType",
          "documentation": "<p> The category of the entity.</p>"
        },
        "Type": {
          "shape": "EntitySubType",
          "documentation": "<p> Describes the specific type of entity with category of entities.</p>"
        },
        "Traits": {
          "shape": "TraitList",
          "documentation": "<p>Contextual information for the entity.</p>"
        },
        "Attributes": {
          "shape": "AttributeList",
          "documentation": "<p> The extracted attributes that relate to this entity.</p>"
        }
      },
      "documentation": "<p> Provides information about an extracted medical entity.</p>"
    },
    "EntityList": {
      "type": "list",
      "member": {
        "shape": "Entity"
      }
    },
    "EntitySubType": {
      "type": "string",
      "enum": [
        "NAME",
        "DOSAGE",
        "ROUTE_OR_MODE",
        "FORM",
        "FREQUENCY",
        "DURATION",
        "GENERIC_NAME",
        "BRAND_NAME",
        "STRENGTH",
        "RATE",
        "ACUITY",
        "TEST_NAME",
        "TEST_VALUE",
        "TEST_UNITS",
        "PROCEDURE_NAME",
        "TREATMENT_NAME",
        "DATE",
        "AGE",
        "CONTACT_POINT",
        "EMAIL",
        "IDENTIFIER",
        "URL",
        "ADDRESS",
        "PROFESSION",
        "SYSTEM_ORGAN_SITE",
        "DIRECTION",
        "QUALITY",
        "QUANTITY",
        "TIME_EXPRESSION",
        "TIME_TO_MEDICATION_NAME",
        "TIME_TO_DX_NAME",
        "TIME_TO_TEST_NAME",
        "TIME_TO_PROCEDURE_NAME",
        "TIME_TO_TREATMENT_NAME"
      ]
    },
    "EntityType": {
      "type": "string",
      "enum": [
        "MEDICATION",
        "MEDICAL_CONDITION",
        "PROTECTED_HEALTH_INFORMATION",
        "TEST_TREATMENT_PROCEDURE",
        "ANATOMY",
        "TIME_EXPRESSION"
      ]
    },
    "Float": {
      "type": "float"
    },
    "ICD10CMAttribute": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "ICD10CMAttributeType",
          "documentation": "<p>The type of attribute. InferICD10CM detects entities of the type <code>DX_NAME</code>. </p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized as an attribute.</p>"
        },
        "RelationshipScore": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this entity.</p>"
        },
        "Id": {
          "shape": "Integer",
          "documentation": "<p>The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier.</p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string.</p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.</p>"
        },
        "Text": {
          "shape": "String",
          "documentation": "<p>The segment of input text which contains the detected attribute.</p>"
        },
        "Traits": {
          "shape": "ICD10CMTraitList",
          "documentation": "<p>The contextual information for the attribute. The traits recognized by InferICD10CM are <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and <code>NEGATION</code>.</p>"
        }
      },
      "documentation": "<p>The detected attributes that relate to an entity. This includes an extracted segment of the text that is an attribute of an entity, or otherwise related to an entity. InferICD10CM detects the following attributes: <code>Direction</code>, <code>System, Organ or Site</code>, and <code>Acuity</code>.</p>"
    },
    "ICD10CMAttributeList": {
      "type": "list",
      "member": {
        "shape": "ICD10CMAttribute"
      }
    },
    "ICD10CMAttributeType": {
      "type": "string",
      "enum": [
        "ACUITY",
        "DIRECTION",
        "SYSTEM_ORGAN_SITE",
        "QUALITY",
        "QUANTITY"
      ]
    },
    "ICD10CMConcept": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "String",
          "documentation": "<p>The long description of the ICD-10-CM code in the ontology.</p>"
        },
        "Code": {
          "shape": "String",
          "documentation": "<p>The ICD-10-CM code that identifies the concept found in the knowledge base from the Centers for Disease Control.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately linked to an ICD-10-CM concept.</p>"
        }
      },
      "documentation": "<p> The ICD-10-CM concepts that the entity could refer to, along with a score indicating the likelihood of the match.</p>"
    },
    "ICD10CMConceptList": {
      "type": "list",
      "member": {
        "shape": "ICD10CMConcept"
      }
    },
    "ICD10CMEntity": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Integer",
          "documentation": "<p>The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier.</p>"
        },
        "Text": {
          "shape": "OntologyLinkingBoundedLengthString",
          "documentation": "<p>The segment of input text that is matched to the detected entity.</p>"
        },
        "Category": {
          "shape": "ICD10CMEntityCategory",
          "documentation": "<p> The category of the entity. InferICD10CM detects entities in the <code>MEDICAL_CONDITION</code> category. </p>"
        },
        "Type": {
          "shape": "ICD10CMEntityType",
          "documentation": "<p>Describes the specific type of entity with category of entities. InferICD10CM detects entities of the type <code>DX_NAME</code>.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detection.</p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string.</p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string.</p>"
        },
        "Attributes": {
          "shape": "ICD10CMAttributeList",
          "documentation": "<p>The detected attributes that relate to the entity. An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the nature of a medical condition.</p>"
        },
        "Traits": {
          "shape": "ICD10CMTraitList",
          "documentation": "<p>Provides Contextual information for the entity. The traits recognized by InferICD10CM are <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and <code>NEGATION.</code> </p>"
        },
        "ICD10CMConcepts": {
          "shape": "ICD10CMConceptList",
          "documentation": "<p>The ICD-10-CM concepts that the entity could refer to, along with a score indicating the likelihood of the match.</p>"
        }
      },
      "documentation": "<p>The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned. </p>"
    },
    "ICD10CMEntityCategory": {
      "type": "string",
      "enum": [
        "MEDICAL_CONDITION"
      ]
    },
    "ICD10CMEntityList": {
      "type": "list",
      "member": {
        "shape": "ICD10CMEntity"
      }
    },
    "ICD10CMEntityType": {
      "type": "string",
      "enum": [
        "DX_NAME"
      ]
    },
    "ICD10CMTrait": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ICD10CMTraitName",
          "documentation": "<p>Provides a name or contextual description about the trait.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized as a trait.</p>"
        }
      },
      "documentation": "<p>Contextual information for the entity. The traits recognized by InferICD10CM are <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and <code>NEGATION</code>.</p>"
    },
    "ICD10CMTraitList": {
      "type": "list",
      "member": {
        "shape": "ICD10CMTrait"
      }
    },
    "ICD10CMTraitName": {
      "type": "string",
      "enum": [
        "NEGATION",
        "DIAGNOSIS",
        "SIGN",
        "SYMPTOM"
      ]
    },
    "IamRoleArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"
    },
    "InferICD10CMRequest": {
      "type": "structure",
      "required": [
        "Text"
      ],
      "members": {
        "Text": {
          "shape": "OntologyLinkingBoundedLengthString",
          "documentation": "<p>The input text used for analysis. The input for InferICD10CM is a string from 1 to 10000 characters.</p>"
        }
      }
    },
    "InferICD10CMResponse": {
      "type": "structure",
      "required": [
        "Entities"
      ],
      "members": {
        "Entities": {
          "shape": "ICD10CMEntityList",
          "documentation": "<p>The medical conditions detected in the text linked to ICD-10-CM concepts. If the action is successful, the service sends back an HTTP 200 response, as well as the entities detected.</p>"
        },
        "PaginationToken": {
          "shape": "String",
          "documentation": "<p>If the result of the previous request to <code>InferICD10CM</code> was truncated, include the <code>PaginationToken</code> to fetch the next page of medical condition entities. </p>"
        },
        "ModelVersion": {
          "shape": "String",
          "documentation": "<p>The version of the model used to analyze the documents, in the format <i>n</i>.<i>n</i>.<i>n</i> You can use this information to track the model used for a particular batch of documents.</p>"
        }
      }
    },
    "InferRxNormRequest": {
      "type": "structure",
      "required": [
        "Text"
      ],
      "members": {
        "Text": {
          "shape": "OntologyLinkingBoundedLengthString",
          "documentation": "<p>The input text used for analysis. The input for InferRxNorm is a string from 1 to 10000 characters.</p>"
        }
      }
    },
    "InferRxNormResponse": {
      "type": "structure",
      "required": [
        "Entities"
      ],
      "members": {
        "Entities": {
          "shape": "RxNormEntityList",
          "documentation": "<p>The medication entities detected in the text linked to RxNorm concepts. If the action is successful, the service sends back an HTTP 200 response, as well as the entities detected.</p>"
        },
        "PaginationToken": {
          "shape": "String",
          "documentation": "<p>If the result of the previous request to <code>InferRxNorm</code> was truncated, include the <code>PaginationToken</code> to fetch the next page of medication entities.</p>"
        },
        "ModelVersion": {
          "shape": "String",
          "documentation": "<p>The version of the model used to analyze the documents, in the format <i>n</i>.<i>n</i>.<i>n</i> You can use this information to track the model used for a particular batch of documents.</p>"
        }
      }
    },
    "InputDataConfig": {
      "type": "structure",
      "required": [
        "S3Bucket"
      ],
      "members": {
        "S3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The URI of the S3 bucket that contains the input data. The bucket must be in the same region as the API endpoint that you are calling.</p> <p>Each file in the document collection must be less than 40 KB. You can store a maximum of 30 GB in the bucket.</p>"
        },
        "S3Key": {
          "shape": "S3Key",
          "documentation": "<p>The path to the input data files in the S3 bucket.</p>"
        }
      },
      "documentation": "<p>The input properties for an entities detection job. This includes the name of the S3 bucket and the path to the files to be analyzed. See <a>batch-manifest</a> for more information. </p>"
    },
    "Integer": {
      "type": "integer"
    },
    "JobId": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "JobName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "JobStatus": {
      "type": "string",
      "enum": [
        "SUBMITTED",
        "IN_PROGRESS",
        "COMPLETED",
        "PARTIAL_SUCCESS",
        "FAILED",
        "STOP_REQUESTED",
        "STOPPED"
      ]
    },
    "KMSKey": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": ".*"
    },
    "LanguageCode": {
      "type": "string",
      "enum": [
        "en"
      ]
    },
    "ListEntitiesDetectionV2JobsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "ComprehendMedicalAsyncJobFilter",
          "documentation": "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or the date and time that they were submitted. You can only set one filter at a time.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>The maximum number of results to return in each page. The default is 100.</p>"
        }
      }
    },
    "ListEntitiesDetectionV2JobsResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobPropertiesList": {
          "shape": "ComprehendMedicalAsyncJobPropertiesList",
          "documentation": "<p>A list containing the properties of each job returned.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        }
      }
    },
    "ListICD10CMInferenceJobsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "ComprehendMedicalAsyncJobFilter",
          "documentation": "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or the date and time that they were submitted. You can only set one filter at a time.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>The maximum number of results to return in each page. The default is 100.</p>"
        }
      }
    },
    "ListICD10CMInferenceJobsResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobPropertiesList": {
          "shape": "ComprehendMedicalAsyncJobPropertiesList",
          "documentation": "<p>A list containing the properties of each job that is returned.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        }
      }
    },
    "ListPHIDetectionJobsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "ComprehendMedicalAsyncJobFilter",
          "documentation": "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or the date and time that they were submitted. You can only set one filter at a time.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>The maximum number of results to return in each page. The default is 100.</p>"
        }
      }
    },
    "ListPHIDetectionJobsResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobPropertiesList": {
          "shape": "ComprehendMedicalAsyncJobPropertiesList",
          "documentation": "<p>A list containing the properties of each job returned.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        }
      }
    },
    "ListRxNormInferenceJobsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "ComprehendMedicalAsyncJobFilter",
          "documentation": "<p>Filters the jobs that are returned. You can filter jobs based on their names, status, or the date and time that they were submitted. You can only set one filter at a time.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        }
      }
    },
    "ListRxNormInferenceJobsResponse": {
      "type": "structure",
      "members": {
        "ComprehendMedicalAsyncJobPropertiesList": {
          "shape": "ComprehendMedicalAsyncJobPropertiesList",
          "documentation": "<p>The maximum number of results to return in each page. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Identifies the next page of results to return.</p>"
        }
      }
    },
    "ManifestFilePath": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "MaxResultsInteger": {
      "type": "integer",
      "max": 500,
      "min": 1
    },
    "ModelVersion": {
      "type": "string"
    },
    "OntologyLinkingBoundedLengthString": {
      "type": "string",
      "max": 10000,
      "min": 1
    },
    "OutputDataConfig": {
      "type": "structure",
      "required": [
        "S3Bucket"
      ],
      "members": {
        "S3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output.</p>"
        },
        "S3Key": {
          "shape": "S3Key",
          "documentation": "<p>The path to the output data files in the S3 bucket. Amazon Comprehend Medical creates an output directory using the job ID so that the output from one job does not overwrite the output of another.</p>"
        }
      },
      "documentation": "<p>The output properties for a detection job.</p>"
    },
    "RelationshipType": {
      "type": "string",
      "enum": [
        "EVERY",
        "WITH_DOSAGE",
        "ADMINISTERED_VIA",
        "FOR",
        "NEGATIVE",
        "OVERLAP",
        "DOSAGE",
        "ROUTE_OR_MODE",
        "FORM",
        "FREQUENCY",
        "DURATION",
        "STRENGTH",
        "RATE",
        "ACUITY",
        "TEST_VALUE",
        "TEST_UNITS",
        "DIRECTION",
        "SYSTEM_ORGAN_SITE"
      ]
    },
    "RxNormAttribute": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "RxNormAttributeType",
          "documentation": "<p>The type of attribute. The types of attributes recognized by InferRxNorm are <code>BRAND_NAME</code> and <code>GENERIC_NAME</code>.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Comprehend Medical has that the segment of text is correctly recognized as an attribute.</p>"
        },
        "RelationshipScore": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that the attribute is accurately linked to an entity.</p>"
        },
        "Id": {
          "shape": "Integer",
          "documentation": "<p>The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier.</p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string.</p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.</p>"
        },
        "Text": {
          "shape": "String",
          "documentation": "<p>The segment of input text which corresponds to the detected attribute.</p>"
        },
        "Traits": {
          "shape": "RxNormTraitList",
          "documentation": "<p>Contextual information for the attribute. InferRxNorm recognizes the trait <code>NEGATION</code> for attributes, i.e. that the patient is not taking a specific dose or form of a medication.</p>"
        }
      },
      "documentation": "<p>The extracted attributes that relate to this entity. The attributes recognized by InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>, <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>.</p>"
    },
    "RxNormAttributeList": {
      "type": "list",
      "member": {
        "shape": "RxNormAttribute"
      }
    },
    "RxNormAttributeType": {
      "type": "string",
      "enum": [
        "DOSAGE",
        "DURATION",
        "FORM",
        "FREQUENCY",
        "RATE",
        "ROUTE_OR_MODE",
        "STRENGTH"
      ]
    },
    "RxNormConcept": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the RxNorm concept.</p>"
        },
        "Code": {
          "shape": "String",
          "documentation": "<p>RxNorm concept ID, also known as the RxCUI.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately linked to the reported RxNorm concept.</p>"
        }
      },
      "documentation": "<p>The RxNorm concept that the entity could refer to, along with a score indicating the likelihood of the match.</p>"
    },
    "RxNormConceptList": {
      "type": "list",
      "member": {
        "shape": "RxNormConcept"
      }
    },
    "RxNormEntity": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Integer",
          "documentation": "<p>The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier.</p>"
        },
        "Text": {
          "shape": "OntologyLinkingBoundedLengthString",
          "documentation": "<p>The segment of input text extracted from which the entity was detected.</p>"
        },
        "Category": {
          "shape": "RxNormEntityCategory",
          "documentation": "<p>The category of the entity. The recognized categories are <code>GENERIC</code> or <code>BRAND_NAME</code>.</p>"
        },
        "Type": {
          "shape": "RxNormEntityType",
          "documentation": "<p> Describes the specific type of entity. For InferRxNorm, the recognized entity type is <code>MEDICATION</code>.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected entity.</p>"
        },
        "BeginOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string.</p>"
        },
        "EndOffset": {
          "shape": "Integer",
          "documentation": "<p>The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string.</p>"
        },
        "Attributes": {
          "shape": "RxNormAttributeList",
          "documentation": "<p>The extracted attributes that relate to the entity. The attributes recognized by InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>, <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>, and <code>STRENGTH</code>.</p>"
        },
        "Traits": {
          "shape": "RxNormTraitList",
          "documentation": "<p> Contextual information for the entity.</p>"
        },
        "RxNormConcepts": {
          "shape": "RxNormConceptList",
          "documentation": "<p> The RxNorm concepts that the entity could refer to, along with a score indicating the likelihood of the match.</p>"
        }
      },
      "documentation": "<p>The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned. </p>"
    },
    "RxNormEntityCategory": {
      "type": "string",
      "enum": [
        "MEDICATION"
      ]
    },
    "RxNormEntityList": {
      "type": "list",
      "member": {
        "shape": "RxNormEntity"
      }
    },
    "RxNormEntityType": {
      "type": "string",
      "enum": [
        "BRAND_NAME",
        "GENERIC_NAME"
      ]
    },
    "RxNormTrait": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "RxNormTraitName",
          "documentation": "<p>Provides a name or contextual description about the trait.</p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected trait.</p>"
        }
      },
      "documentation": "<p>The contextual information for the entity. InferRxNorm recognizes the trait <code>NEGATION</code>, which is any indication that the patient is not taking a medication. </p>"
    },
    "RxNormTraitList": {
      "type": "list",
      "member": {
        "shape": "RxNormTrait"
      }
    },
    "RxNormTraitName": {
      "type": "string",
      "enum": [
        "NEGATION"
      ]
    },
    "S3Bucket": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "^[0-9a-z\\.\\-_]*(?!\\.)$"
    },
    "S3Key": {
      "type": "string",
      "max": 1024,
      "pattern": ".*"
    },
    "StartEntitiesDetectionV2JobRequest": {
      "type": "structure",
      "required": [
        "InputDataConfig",
        "OutputDataConfig",
        "DataAccessRoleArn",
        "LanguageCode"
      ],
      "members": {
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Specifies the format and location of the input data for the job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>Specifies where to send the output files.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The identifier of the job.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>",
          "idempotencyToken": true
        },
        "KMSKey": {
          "shape": "KMSKey",
          "documentation": "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a key, the files are written in plain text.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>The language of the input documents. All documents must be in the same language.</p>"
        }
      }
    },
    "StartEntitiesDetectionV2JobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of a job, use this identifier with the <code>DescribeEntitiesDetectionV2Job</code> operation.</p>"
        }
      }
    },
    "StartICD10CMInferenceJobRequest": {
      "type": "structure",
      "required": [
        "InputDataConfig",
        "OutputDataConfig",
        "DataAccessRoleArn",
        "LanguageCode"
      ],
      "members": {
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Specifies the format and location of the input data for the job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>Specifies where to send the output files.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The identifier of the job.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>",
          "idempotencyToken": true
        },
        "KMSKey": {
          "shape": "KMSKey",
          "documentation": "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a key, the files are written in plain text.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>The language of the input documents. All documents must be in the same language.</p>"
        }
      }
    },
    "StartICD10CMInferenceJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of a job, use this identifier with the <code>StartICD10CMInferenceJob</code> operation.</p>"
        }
      }
    },
    "StartPHIDetectionJobRequest": {
      "type": "structure",
      "required": [
        "InputDataConfig",
        "OutputDataConfig",
        "DataAccessRoleArn",
        "LanguageCode"
      ],
      "members": {
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Specifies the format and location of the input data for the job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>Specifies where to send the output files.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The identifier of the job.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>",
          "idempotencyToken": true
        },
        "KMSKey": {
          "shape": "KMSKey",
          "documentation": "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a key, the files are written in plain text.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>The language of the input documents. All documents must be in the same language.</p>"
        }
      }
    },
    "StartPHIDetectionJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of a job, use this identifier with the <code>DescribePHIDetectionJob</code> operation.</p>"
        }
      }
    },
    "StartRxNormInferenceJobRequest": {
      "type": "structure",
      "required": [
        "InputDataConfig",
        "OutputDataConfig",
        "DataAccessRoleArn",
        "LanguageCode"
      ],
      "members": {
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Specifies the format and location of the input data for the job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>Specifies where to send the output files.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. For more information, see <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med\"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The identifier of the job.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>",
          "idempotencyToken": true
        },
        "KMSKey": {
          "shape": "KMSKey",
          "documentation": "<p>An AWS Key Management Service key to encrypt your output files. If you do not specify a key, the files are written in plain text.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>The language of the input documents. All documents must be in the same language.</p>"
        }
      }
    },
    "StartRxNormInferenceJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the job.</p>"
        }
      }
    },
    "StopEntitiesDetectionV2JobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the medical entities job to stop.</p>"
        }
      }
    },
    "StopEntitiesDetectionV2JobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the medical entities detection job that was stopped.</p>"
        }
      }
    },
    "StopICD10CMInferenceJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the job.</p>"
        }
      }
    },
    "StopICD10CMInferenceJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of job, use this identifier with the <code>DescribeICD10CMInferenceJob</code> operation.</p>"
        }
      }
    },
    "StopPHIDetectionJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the PHI detection job to stop.</p>"
        }
      }
    },
    "StopPHIDetectionJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the PHI detection job that was stopped.</p>"
        }
      }
    },
    "StopRxNormInferenceJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier of the job.</p>"
        }
      }
    },
    "StopRxNormInferenceJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of job, use this identifier with the <code>DescribeRxNormInferenceJob</code> operation.</p>"
        }
      }
    },
    "String": {
      "type": "string",
      "min": 1
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Trait": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AttributeName",
          "documentation": "<p> Provides a name or contextual description about the trait. </p>"
        },
        "Score": {
          "shape": "Float",
          "documentation": "<p> The level of confidence that Amazon Comprehend Medical has in the accuracy of this trait.</p>"
        }
      },
      "documentation": "<p> Provides contextual information about the extracted entity. </p>"
    },
    "TraitList": {
      "type": "list",
      "member": {
        "shape": "Trait"
      }
    },
    "UnmappedAttribute": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "EntityType",
          "documentation": "<p> The type of the attribute, could be one of the following values: \"MEDICATION\", \"MEDICAL_CONDITION\", \"ANATOMY\", \"TEST_AND_TREATMENT_PROCEDURE\" or \"PROTECTED_HEALTH_INFORMATION\". </p>"
        },
        "Attribute": {
          "shape": "Attribute",
          "documentation": "<p> The specific attribute that has been extracted but not mapped to an entity. </p>"
        }
      },
      "documentation": "<p> An attribute that we extracted, but were unable to relate to an entity. </p>"
    },
    "UnmappedAttributeList": {
      "type": "list",
      "member": {
        "shape": "UnmappedAttribute"
      }
    }
  },
  "documentation": "<p> Amazon Comprehend Medical extracts structured information from unstructured clinical text. Use these actions to gain insight in your documents. </p>"
}
]===]))