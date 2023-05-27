local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-05-23",
    "endpointPrefix": "kinesisanalytics",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Kinesis Analytics V2",
    "serviceFullName": "Amazon Kinesis Analytics",
    "serviceId": "Kinesis Analytics V2",
    "signatureVersion": "v4",
    "signingName": "kinesisanalytics",
    "targetPrefix": "KinesisAnalytics_20180523",
    "uid": "kinesisanalyticsv2-2018-05-23"
  },
  "operations": {
    "AddApplicationCloudWatchLoggingOption": {
      "name": "AddApplicationCloudWatchLoggingOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationCloudWatchLoggingOptionRequest"
      },
      "output": {
        "shape": "AddApplicationCloudWatchLoggingOptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Adds an Amazon CloudWatch log stream to monitor application configuration errors.</p>"
    },
    "AddApplicationInput": {
      "name": "AddApplicationInput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationInputRequest"
      },
      "output": {
        "shape": "AddApplicationInputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p> Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application. </p> <p>You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see <a>CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version. </p>"
    },
    "AddApplicationInputProcessingConfiguration": {
      "name": "AddApplicationInputProcessingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationInputProcessingConfigurationRequest"
      },
      "output": {
        "shape": "AddApplicationInputProcessingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Adds an <a>InputProcessingConfiguration</a> to an SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is <a href=\"https://aws.amazon.com/documentation/lambda/\">AWS Lambda</a>.</p>"
    },
    "AddApplicationOutput": {
      "name": "AddApplicationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationOutputRequest"
      },
      "output": {
        "shape": "AddApplicationOutputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application.</p> <p>If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. </p> <p> Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p>"
    },
    "AddApplicationReferenceDataSource": {
      "name": "AddApplicationReferenceDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationReferenceDataSourceRequest"
      },
      "output": {
        "shape": "AddApplicationReferenceDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application.</p> <p>Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.</p>"
    },
    "AddApplicationVpcConfiguration": {
      "name": "AddApplicationVpcConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationVpcConfigurationRequest"
      },
      "output": {
        "shape": "AddApplicationVpcConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely.</p> <p>Note the following about VPC configurations for Kinesis Data Analytics applications:</p> <ul> <li> <p>VPC configurations are not supported for SQL applications.</p> </li> <li> <p>When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.</p> </li> </ul>"
    },
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationRequest"
      },
      "output": {
        "shape": "CreateApplicationResponse"
      },
      "errors": [
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates an Amazon Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html\">Creating an Application</a>. </p>"
    },
    "CreateApplicationSnapshot": {
      "name": "CreateApplicationSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationSnapshotRequest"
      },
      "output": {
        "shape": "CreateApplicationSnapshotResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Creates a snapshot of the application's state data.</p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationRequest"
      },
      "output": {
        "shape": "DeleteApplicationResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.</p>"
    },
    "DeleteApplicationCloudWatchLoggingOption": {
      "name": "DeleteApplicationCloudWatchLoggingOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationCloudWatchLoggingOptionRequest"
      },
      "output": {
        "shape": "DeleteApplicationCloudWatchLoggingOptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application. </p>"
    },
    "DeleteApplicationInputProcessingConfiguration": {
      "name": "DeleteApplicationInputProcessingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationInputProcessingConfigurationRequest"
      },
      "output": {
        "shape": "DeleteApplicationInputProcessingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes an <a>InputProcessingConfiguration</a> from an input.</p>"
    },
    "DeleteApplicationOutput": {
      "name": "DeleteApplicationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationOutputRequest"
      },
      "output": {
        "shape": "DeleteApplicationOutputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p>"
    },
    "DeleteApplicationReferenceDataSource": {
      "name": "DeleteApplicationReferenceDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationReferenceDataSourceRequest"
      },
      "output": {
        "shape": "DeleteApplicationReferenceDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration.</p> <p>If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the <a>AddApplicationReferenceDataSource</a> operation. </p>"
    },
    "DeleteApplicationSnapshot": {
      "name": "DeleteApplicationSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationSnapshotRequest"
      },
      "output": {
        "shape": "DeleteApplicationSnapshotResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a snapshot of application state.</p>"
    },
    "DeleteApplicationVpcConfiguration": {
      "name": "DeleteApplicationVpcConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationVpcConfigurationRequest"
      },
      "output": {
        "shape": "DeleteApplicationVpcConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Removes a VPC configuration from a Kinesis Data Analytics application.</p>"
    },
    "DescribeApplication": {
      "name": "DescribeApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationRequest"
      },
      "output": {
        "shape": "DescribeApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns information about a specific Amazon Kinesis Data Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a>ListApplications</a> operation.</p>"
    },
    "DescribeApplicationSnapshot": {
      "name": "DescribeApplicationSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationSnapshotRequest"
      },
      "output": {
        "shape": "DescribeApplicationSnapshotResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Returns information about a snapshot of application state data.</p>"
    },
    "DiscoverInputSchema": {
      "name": "DiscoverInputSchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DiscoverInputSchemaRequest"
      },
      "output": {
        "shape": "DiscoverInputSchemaResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnableToDetectSchemaException"
        },
        {
          "shape": "ResourceProvisionedThroughputExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p>"
    },
    "ListApplicationSnapshots": {
      "name": "ListApplicationSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationSnapshotsRequest"
      },
      "output": {
        "shape": "ListApplicationSnapshotsResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Lists information about the current application snapshots.</p>"
    },
    "ListApplications": {
      "name": "ListApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationsRequest"
      },
      "output": {
        "shape": "ListApplicationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns a list of Amazon Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. </p> <p>If you want detailed information about a specific application, use <a>DescribeApplication</a>.</p>"
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
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Retrieves the list of key-value tags assigned to the application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "StartApplication": {
      "name": "StartApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartApplicationRequest"
      },
      "output": {
        "shape": "StartApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Starts the specified Amazon Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.</p>"
    },
    "StopApplication": {
      "name": "StopApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopApplicationRequest"
      },
      "output": {
        "shape": "StopApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Stops the application from processing data. You can stop an application only if it is in the running state. You can use the <a>DescribeApplication</a> operation to find the application state. </p>"
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
          "shape": "ResourceInUseException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"
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
          "shape": "ResourceInUseException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a Kinesis Analytics application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationRequest"
      },
      "output": {
        "shape": "UpdateApplicationResponse"
      },
      "errors": [
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        }
      ],
      "documentation": "<p>Updates an existing Amazon Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration. </p> <p>Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update your application. </p>"
    }
  },
  "shapes": {
    "AddApplicationCloudWatchLoggingOptionRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "CloudWatchLoggingOption"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The Kinesis Data Analytics application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the Kinesis Data Analytics application. You can retrieve the application version ID using <a>DescribeApplication</a>.</p>"
        },
        "CloudWatchLoggingOption": {
          "shape": "CloudWatchLoggingOption",
          "documentation": "<p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>"
        }
      }
    },
    "AddApplicationCloudWatchLoggingOptionResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application's ARN.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The new version ID of the Kinesis Data Analytics application. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you change the CloudWatch logging options. </p>"
        },
        "CloudWatchLoggingOptionDescriptions": {
          "shape": "CloudWatchLoggingOptionDescriptions",
          "documentation": "<p>The descriptions of the current CloudWatch logging options for the Kinesis Data Analytics application.</p>"
        }
      }
    },
    "AddApplicationInputProcessingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "InputId",
        "InputProcessingConfiguration"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to which you want to add the input processing configuration.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version of the application to which you want to add the input processing configuration. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the input configuration to add the input processing configuration to. You can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a>InputProcessingConfiguration</a> to add to the application.</p>"
        }
      }
    },
    "AddApplicationInputProcessingConfigurationResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version.</p>"
        },
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The input ID that is associated with the application input. This is the ID that Amazon Kinesis Data Analytics assigns to each input configuration that you add to your application.</p>"
        },
        "InputProcessingConfigurationDescription": {
          "shape": "InputProcessingConfigurationDescription",
          "documentation": "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"
        }
      }
    },
    "AddApplicationInputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "Input"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of your existing application to which you want to add the streaming source.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current version of your application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p>"
        },
        "Input": {
          "shape": "Input",
          "documentation": "<p>The <a>Input</a> to add.</p>"
        }
      }
    },
    "AddApplicationInputResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version.</p>"
        },
        "InputDescriptions": {
          "shape": "InputDescriptions",
          "documentation": "<p>Describes the application input configuration. </p>"
        }
      }
    },
    "AddApplicationOutputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "Output"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to which you want to add the output configuration.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version of the application to which you want to add the output configuration. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>"
        },
        "Output": {
          "shape": "Output",
          "documentation": "<p>An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, a Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), and record the formation to use when writing to the destination.</p>"
        }
      }
    },
    "AddApplicationOutputResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The updated application version ID. Kinesis Data Analytics increments this ID when the application is updated.</p>"
        },
        "OutputDescriptions": {
          "shape": "OutputDescriptions",
          "documentation": "<p>Describes the application output configuration. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. </p>"
        }
      }
    },
    "AddApplicationReferenceDataSourceRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "ReferenceDataSource"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version of the application for which you are adding the reference data source. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "ReferenceDataSource": {
          "shape": "ReferenceDataSource",
          "documentation": "<p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. </p>"
        }
      }
    },
    "AddApplicationReferenceDataSourceResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The updated application version ID. Amazon Kinesis Data Analytics increments this ID when the application is updated.</p>"
        },
        "ReferenceDataSourceDescriptions": {
          "shape": "ReferenceDataSourceDescriptions",
          "documentation": "<p>Describes reference data sources configured for the application. </p>"
        }
      }
    },
    "AddApplicationVpcConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "VpcConfiguration"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version of the application to which you want to add the input processing configuration. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>Description of the VPC to add to the application.</p>"
        }
      }
    },
    "AddApplicationVpcConfigurationResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version. Kinesis Data Analytics updates the ApplicationVersionId each time you update the application. </p>"
        },
        "VpcConfigurationDescription": {
          "shape": "VpcConfigurationDescription",
          "documentation": "<p>The parameters of the new VPC configuration.</p>"
        }
      }
    },
    "ApplicationCodeConfiguration": {
      "type": "structure",
      "required": [
        "CodeContentType"
      ],
      "members": {
        "CodeContent": {
          "shape": "CodeContent",
          "documentation": "<p>The location and type of the application code.</p>"
        },
        "CodeContentType": {
          "shape": "CodeContentType",
          "documentation": "<p>Specifies whether the code content is in text or zip format.</p>"
        }
      },
      "documentation": "<p>Describes code configuration for a Java-based Kinesis Data Analytics application.</p>"
    },
    "ApplicationCodeConfigurationDescription": {
      "type": "structure",
      "required": [
        "CodeContentType"
      ],
      "members": {
        "CodeContentType": {
          "shape": "CodeContentType",
          "documentation": "<p>Specifies whether the code content is in text or zip format.</p>"
        },
        "CodeContentDescription": {
          "shape": "CodeContentDescription",
          "documentation": "<p>Describes details about the location and format of the application code.</p>"
        }
      },
      "documentation": "<p>Describes code configuration for a Java-based Kinesis Data Analytics application.</p>"
    },
    "ApplicationCodeConfigurationUpdate": {
      "type": "structure",
      "members": {
        "CodeContentTypeUpdate": {
          "shape": "CodeContentType",
          "documentation": "<p>Describes updates to the code content type.</p>"
        },
        "CodeContentUpdate": {
          "shape": "CodeContentUpdate",
          "documentation": "<p>Describes updates to the code content of an application.</p>"
        }
      },
      "documentation": "<p>Describes updates to a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "ApplicationConfiguration": {
      "type": "structure",
      "required": [
        "ApplicationCodeConfiguration"
      ],
      "members": {
        "SqlApplicationConfiguration": {
          "shape": "SqlApplicationConfiguration",
          "documentation": "<p>The creation and update parameters for an SQL-based Kinesis Data Analytics application.</p>"
        },
        "FlinkApplicationConfiguration": {
          "shape": "FlinkApplicationConfiguration",
          "documentation": "<p>The creation and update parameters for a Java-based Kinesis Data Analytics application.</p>"
        },
        "EnvironmentProperties": {
          "shape": "EnvironmentProperties",
          "documentation": "<p>Describes execution properties for a Java-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationCodeConfiguration": {
          "shape": "ApplicationCodeConfiguration",
          "documentation": "<p>The code location and type parameters for a Java-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationSnapshotConfiguration": {
          "shape": "ApplicationSnapshotConfiguration",
          "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        },
        "VpcConfigurations": {
          "shape": "VpcConfigurations",
          "documentation": "<p>The array of descriptions of VPC configurations available to the application.</p>"
        }
      },
      "documentation": "<p>Specifies the creation parameters for an Amazon Kinesis Data Analytics application.</p>"
    },
    "ApplicationConfigurationDescription": {
      "type": "structure",
      "members": {
        "SqlApplicationConfigurationDescription": {
          "shape": "SqlApplicationConfigurationDescription",
          "documentation": "<p>The details about inputs, outputs, and reference data sources for an SQL-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationCodeConfigurationDescription": {
          "shape": "ApplicationCodeConfigurationDescription",
          "documentation": "<p>The details about the application code for a Java-based Kinesis Data Analytics application.</p>"
        },
        "RunConfigurationDescription": {
          "shape": "RunConfigurationDescription",
          "documentation": "<p>The details about the starting properties for a Kinesis Data Analytics application.</p>"
        },
        "FlinkApplicationConfigurationDescription": {
          "shape": "FlinkApplicationConfigurationDescription",
          "documentation": "<p>The details about a Java-based Kinesis Data Analytics application.</p>"
        },
        "EnvironmentPropertyDescriptions": {
          "shape": "EnvironmentPropertyDescriptions",
          "documentation": "<p>Describes execution properties for a Java-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationSnapshotConfigurationDescription": {
          "shape": "ApplicationSnapshotConfigurationDescription",
          "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        },
        "VpcConfigurationDescriptions": {
          "shape": "VpcConfigurationDescriptions",
          "documentation": "<p>The array of descriptions of VPC configurations available to the application.</p>"
        }
      },
      "documentation": "<p>Describes details about the application code and starting parameters for an Amazon Kinesis Data Analytics application.</p>"
    },
    "ApplicationConfigurationUpdate": {
      "type": "structure",
      "members": {
        "SqlApplicationConfigurationUpdate": {
          "shape": "SqlApplicationConfigurationUpdate",
          "documentation": "<p>Describes updates to an SQL-based Kinesis Data Analytics application's configuration.</p>"
        },
        "ApplicationCodeConfigurationUpdate": {
          "shape": "ApplicationCodeConfigurationUpdate",
          "documentation": "<p>Describes updates to a Java-based Kinesis Data Analytics application's code configuration.</p>"
        },
        "FlinkApplicationConfigurationUpdate": {
          "shape": "FlinkApplicationConfigurationUpdate",
          "documentation": "<p>Describes updates to a Java-based Kinesis Data Analytics application's configuration.</p>"
        },
        "EnvironmentPropertyUpdates": {
          "shape": "EnvironmentPropertyUpdates",
          "documentation": "<p>Describes updates to the environment properties for a Java-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationSnapshotConfigurationUpdate": {
          "shape": "ApplicationSnapshotConfigurationUpdate",
          "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        },
        "VpcConfigurationUpdates": {
          "shape": "VpcConfigurationUpdates",
          "documentation": "<p>Updates to the array of descriptions of VPC configurations available to the application.</p>"
        }
      },
      "documentation": "<p>Describes updates to an application's configuration.</p>"
    },
    "ApplicationDescription": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "ApplicationDetail": {
      "type": "structure",
      "required": [
        "ApplicationARN",
        "ApplicationName",
        "RuntimeEnvironment",
        "ApplicationStatus",
        "ApplicationVersionId"
      ],
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the application.</p>"
        },
        "ApplicationDescription": {
          "shape": "ApplicationDescription",
          "documentation": "<p>The description of the application.</p>"
        },
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "RuntimeEnvironment": {
          "shape": "RuntimeEnvironment",
          "documentation": "<p>The runtime environment for the application (<code>SQL-1.0</code> or <code>FLINK-1_6</code>).</p>"
        },
        "ServiceExecutionRole": {
          "shape": "RoleARN",
          "documentation": "<p>Specifies the IAM role that the application uses to access external resources.</p>"
        },
        "ApplicationStatus": {
          "shape": "ApplicationStatus",
          "documentation": "<p>The status of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update the application.</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The current timestamp when the application was created.</p>"
        },
        "LastUpdateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The current timestamp when the application was last updated.</p>"
        },
        "ApplicationConfigurationDescription": {
          "shape": "ApplicationConfigurationDescription",
          "documentation": "<p>Provides details about the application's SQL or Java code and starting parameters.</p>"
        },
        "CloudWatchLoggingOptionDescriptions": {
          "shape": "CloudWatchLoggingOptionDescriptions",
          "documentation": "<p>Describes the application Amazon CloudWatch logging options.</p>"
        }
      },
      "documentation": "<p>Describes the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configurations.</p>"
    },
    "ApplicationName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "ApplicationRestoreConfiguration": {
      "type": "structure",
      "required": [
        "ApplicationRestoreType"
      ],
      "members": {
        "ApplicationRestoreType": {
          "shape": "ApplicationRestoreType",
          "documentation": "<p>Specifies how the application should be restored.</p>"
        },
        "SnapshotName": {
          "shape": "SnapshotName",
          "documentation": "<p>The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if <code>RESTORE_FROM_CUSTOM_SNAPSHOT</code> is specified for the <code>ApplicationRestoreType</code>.</p>"
        }
      },
      "documentation": "<p>Specifies the method and snapshot to use when restarting an application using previously saved application state.</p>"
    },
    "ApplicationRestoreType": {
      "type": "string",
      "enum": [
        "SKIP_RESTORE_FROM_SNAPSHOT",
        "RESTORE_FROM_LATEST_SNAPSHOT",
        "RESTORE_FROM_CUSTOM_SNAPSHOT"
      ]
    },
    "ApplicationSnapshotConfiguration": {
      "type": "structure",
      "required": [
        "SnapshotsEnabled"
      ],
      "members": {
        "SnapshotsEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        }
      },
      "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
    },
    "ApplicationSnapshotConfigurationDescription": {
      "type": "structure",
      "required": [
        "SnapshotsEnabled"
      ],
      "members": {
        "SnapshotsEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        }
      },
      "documentation": "<p>Describes whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
    },
    "ApplicationSnapshotConfigurationUpdate": {
      "type": "structure",
      "required": [
        "SnapshotsEnabledUpdate"
      ],
      "members": {
        "SnapshotsEnabledUpdate": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes updates to whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
        }
      },
      "documentation": "<p>Describes updates to whether snapshots are enabled for a Java-based Kinesis Data Analytics application.</p>"
    },
    "ApplicationStatus": {
      "type": "string",
      "enum": [
        "DELETING",
        "STARTING",
        "STOPPING",
        "READY",
        "RUNNING",
        "UPDATING",
        "AUTOSCALING"
      ]
    },
    "ApplicationSummaries": {
      "type": "list",
      "member": {
        "shape": "ApplicationSummary"
      }
    },
    "ApplicationSummary": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "ApplicationARN",
        "ApplicationStatus",
        "ApplicationVersionId",
        "RuntimeEnvironment"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the application.</p>"
        },
        "ApplicationStatus": {
          "shape": "ApplicationStatus",
          "documentation": "<p>The status of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version.</p>"
        },
        "RuntimeEnvironment": {
          "shape": "RuntimeEnvironment",
          "documentation": "<p>The runtime environment for the application (<code>SQL-1.0</code> or <code>FLINK-1_6</code>).</p>"
        }
      },
      "documentation": "<p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>"
    },
    "ApplicationVersionId": {
      "type": "long",
      "max": 999999999,
      "min": 1
    },
    "BooleanObject": {
      "type": "boolean"
    },
    "BucketARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "CSVMappingParameters": {
      "type": "structure",
      "required": [
        "RecordRowDelimiter",
        "RecordColumnDelimiter"
      ],
      "members": {
        "RecordRowDelimiter": {
          "shape": "RecordRowDelimiter",
          "documentation": "<p>The row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical row delimiter.</p>"
        },
        "RecordColumnDelimiter": {
          "shape": "RecordColumnDelimiter",
          "documentation": "<p>The column delimiter. For example, in a CSV format, a comma (\",\") is the typical column delimiter.</p>"
        }
      },
      "documentation": "<p>For an SQL-based application, provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\\n'</i> as the row delimiter and a comma (\",\") as the column delimiter: </p> <p> <code>\"name1\", \"address1\"</code> </p> <p> <code>\"name2\", \"address2\"</code> </p>"
    },
    "CheckpointConfiguration": {
      "type": "structure",
      "required": [
        "ConfigurationType"
      ],
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether the application uses Amazon Kinesis Data Analytics' default checkpointing behavior. You must set this property to <code>CUSTOM</code> in order to set the <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters.</p> <note> <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or application code:</p> <ul> <li> <p> <b>CheckpointingEnabled:</b> true</p> </li> <li> <p> <b>CheckpointInterval:</b> 60000</p> </li> <li> <p> <b>MinPauseBetweenCheckpoints:</b> 5000</p> </li> </ul> </note>"
        },
        "CheckpointingEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether checkpointing is enabled for a Java-based Kinesis Data Analytics application.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "CheckpointInterval": {
          "shape": "CheckpointInterval",
          "documentation": "<p>Describes the interval in milliseconds between checkpoint operations. </p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointInterval</code> vaue of 60000, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "MinPauseBetweenCheckpoints": {
          "shape": "MinPauseBetweenCheckpoints",
          "documentation": "<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start. If a checkpoint operation takes longer than the <code>CheckpointInterval</code>, the application otherwise performs continual checkpoint operations. For more information, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-stable/ops/state/large_state_tuning.html#tuning-checkpointing\"> Tuning Checkpointing</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/\">Apache Flink Documentation</a>.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or in application code.</p> </note>"
        }
      },
      "documentation": "<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault tolerance. For more information, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/concepts/programming-model.html#checkpoints-for-fault-tolerance\"> Checkpoints for Fault Tolerance</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/\">Apache Flink Documentation</a>.</p>"
    },
    "CheckpointConfigurationDescription": {
      "type": "structure",
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether the application uses the default checkpointing behavior in Kinesis Data Analytics. </p> <note> <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or application code:</p> <ul> <li> <p> <b>CheckpointingEnabled:</b> true</p> </li> <li> <p> <b>CheckpointInterval:</b> 60000</p> </li> <li> <p> <b>MinPauseBetweenCheckpoints:</b> 5000</p> </li> </ul> </note>"
        },
        "CheckpointingEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether checkpointing is enabled for a Java-based Kinesis Data Analytics application.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "CheckpointInterval": {
          "shape": "CheckpointInterval",
          "documentation": "<p>Describes the interval in milliseconds between checkpoint operations. </p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointInterval</code> vaue of 60000, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "MinPauseBetweenCheckpoints": {
          "shape": "MinPauseBetweenCheckpoints",
          "documentation": "<p>Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start. </p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or in application code.</p> </note>"
        }
      },
      "documentation": "<p>Describes checkpointing parameters for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "CheckpointConfigurationUpdate": {
      "type": "structure",
      "members": {
        "ConfigurationTypeUpdate": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes updates to whether the application uses the default checkpointing behavior of Kinesis Data Analytics. You must set this property to <code>CUSTOM</code> in order to set the <code>CheckpointingEnabled</code>, <code>CheckpointInterval</code>, or <code>MinPauseBetweenCheckpoints</code> parameters. </p> <note> <p>If this value is set to <code>DEFAULT</code>, the application will use the following values, even if they are set to other values using APIs or application code:</p> <ul> <li> <p> <b>CheckpointingEnabled:</b> true</p> </li> <li> <p> <b>CheckpointInterval:</b> 60000</p> </li> <li> <p> <b>MinPauseBetweenCheckpoints:</b> 5000</p> </li> </ul> </note>"
        },
        "CheckpointingEnabledUpdate": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes updates to whether checkpointing is enabled for an application.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointingEnabled</code> value of <code>true</code>, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "CheckpointIntervalUpdate": {
          "shape": "CheckpointInterval",
          "documentation": "<p>Describes updates to the interval in milliseconds between checkpoint operations.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>CheckpointInterval</code> vaue of 60000, even if this value is set to another value using this API or in application code.</p> </note>"
        },
        "MinPauseBetweenCheckpointsUpdate": {
          "shape": "MinPauseBetweenCheckpoints",
          "documentation": "<p>Describes updates to the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.</p> <note> <p>If <code>CheckpointConfiguration.ConfigurationType</code> is <code>DEFAULT</code>, the application will use a <code>MinPauseBetweenCheckpoints</code> value of 5000, even if this value is set using this API or in application code.</p> </note>"
        }
      },
      "documentation": "<p>Describes updates to the checkpointing parameters for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "CheckpointInterval": {
      "type": "long",
      "min": 1
    },
    "CloudWatchLoggingOption": {
      "type": "structure",
      "required": [
        "LogStreamARN"
      ],
      "members": {
        "LogStreamARN": {
          "shape": "LogStreamARN",
          "documentation": "<p>The ARN of the CloudWatch log to receive application messages.</p>"
        }
      },
      "documentation": "<p>Provides a description of Amazon CloudWatch logging options, including the log stream Amazon Resource Name (ARN). </p>"
    },
    "CloudWatchLoggingOptionDescription": {
      "type": "structure",
      "required": [
        "LogStreamARN"
      ],
      "members": {
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>The ID of the CloudWatch logging option description.</p>"
        },
        "LogStreamARN": {
          "shape": "LogStreamARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application messages.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The IAM ARN of the role to use to send application messages. </p> <note> <p>Provided for backward compatibility. Applications created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>Describes the Amazon CloudWatch logging option.</p>"
    },
    "CloudWatchLoggingOptionDescriptions": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOptionDescription"
      }
    },
    "CloudWatchLoggingOptionUpdate": {
      "type": "structure",
      "required": [
        "CloudWatchLoggingOptionId"
      ],
      "members": {
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>The ID of the CloudWatch logging option to update</p>"
        },
        "LogStreamARNUpdate": {
          "shape": "LogStreamARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CloudWatch log to receive application messages.</p>"
        }
      },
      "documentation": "<p>Describes the Amazon CloudWatch logging option updates.</p>"
    },
    "CloudWatchLoggingOptionUpdates": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOptionUpdate"
      }
    },
    "CloudWatchLoggingOptions": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOption"
      }
    },
    "CodeContent": {
      "type": "structure",
      "members": {
        "TextContent": {
          "shape": "TextContent",
          "documentation": "<p>The text-format code for a Java-based Kinesis Data Analytics application.</p>"
        },
        "ZipFileContent": {
          "shape": "ZipFileContent",
          "documentation": "<p>The zip-format code for a Java-based Kinesis Data Analytics application.</p>"
        },
        "S3ContentLocation": {
          "shape": "S3ContentLocation",
          "documentation": "<p>Information about the Amazon S3 bucket containing the application code.</p>"
        }
      },
      "documentation": "<p>Specifies either the application code, or the location of the application code, for a Java-based Amazon Kinesis Data Analytics application. </p>"
    },
    "CodeContentDescription": {
      "type": "structure",
      "members": {
        "TextContent": {
          "shape": "TextContent",
          "documentation": "<p>The text-format code</p>"
        },
        "CodeMD5": {
          "shape": "CodeMD5",
          "documentation": "<p>The checksum that can be used to validate zip-format code.</p>"
        },
        "CodeSize": {
          "shape": "CodeSize",
          "documentation": "<p>The size in bytes of the application code. Can be used to validate zip-format code.</p>"
        },
        "S3ApplicationCodeLocationDescription": {
          "shape": "S3ApplicationCodeLocationDescription",
          "documentation": "<p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the application code stored in Amazon S3.</p>"
        }
      },
      "documentation": "<p>Describes details about the application code for a Java-based Kinesis Data Analytics application.</p>"
    },
    "CodeContentType": {
      "type": "string",
      "enum": [
        "PLAINTEXT",
        "ZIPFILE"
      ]
    },
    "CodeContentUpdate": {
      "type": "structure",
      "members": {
        "TextContentUpdate": {
          "shape": "TextContent",
          "documentation": "<p>Describes an update to the text code for an application.</p>"
        },
        "ZipFileContentUpdate": {
          "shape": "ZipFileContent",
          "documentation": "<p>Describes an update to the zipped code for an application.</p>"
        },
        "S3ContentLocationUpdate": {
          "shape": "S3ContentLocationUpdate",
          "documentation": "<p>Describes an update to the location of code for an application.</p>"
        }
      },
      "documentation": "<p>Describes an update to the code of a Java-based Kinesis Data Analytics application.</p>"
    },
    "CodeMD5": {
      "type": "string",
      "max": 128,
      "min": 128
    },
    "CodeSize": {
      "type": "long",
      "max": 52428800,
      "min": 0
    },
    "ConfigurationType": {
      "type": "string",
      "enum": [
        "DEFAULT",
        "CUSTOM"
      ]
    },
    "CreateApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "RuntimeEnvironment",
        "ServiceExecutionRole"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of your application (for example, <code>sample-app</code>).</p>"
        },
        "ApplicationDescription": {
          "shape": "ApplicationDescription",
          "documentation": "<p>A summary description of the application.</p>"
        },
        "RuntimeEnvironment": {
          "shape": "RuntimeEnvironment",
          "documentation": "<p>The runtime environment for the application (<code>SQL-1.0</code> or <code>FLINK-1_6</code>).</p>"
        },
        "ServiceExecutionRole": {
          "shape": "RoleARN",
          "documentation": "<p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.</p>"
        },
        "ApplicationConfiguration": {
          "shape": "ApplicationConfiguration",
          "documentation": "<p>Use this parameter to configure the application.</p>"
        },
        "CloudWatchLoggingOptions": {
          "shape": "CloudWatchLoggingOptions",
          "documentation": "<p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application configuration errors. </p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"
        }
      }
    },
    "CreateApplicationResponse": {
      "type": "structure",
      "required": [
        "ApplicationDetail"
      ],
      "members": {
        "ApplicationDetail": {
          "shape": "ApplicationDetail",
          "documentation": "<p>In response to your <code>CreateApplication</code> request, Kinesis Data Analytics returns a response with details of the application it created.</p>"
        }
      }
    },
    "CreateApplicationSnapshotRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "SnapshotName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application</p>"
        },
        "SnapshotName": {
          "shape": "SnapshotName",
          "documentation": "<p>An identifier for the application snapshot.</p>"
        }
      }
    },
    "CreateApplicationSnapshotResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationCloudWatchLoggingOptionRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "CloudWatchLoggingOptionId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the application. You can retrieve the application version ID using <a>DescribeApplication</a>.</p>"
        },
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>"
        }
      }
    },
    "DeleteApplicationCloudWatchLoggingOptionResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application's Amazon Resource Name (ARN).</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the application. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you change the CloudWatch logging options.</p>"
        },
        "CloudWatchLoggingOptionDescriptions": {
          "shape": "CloudWatchLoggingOptionDescriptions",
          "documentation": "<p>The descriptions of the remaining CloudWatch logging options for the application.</p>"
        }
      }
    },
    "DeleteApplicationInputProcessingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "InputId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The application version. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>"
        },
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the input configuration from which to delete the input processing configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>"
        }
      }
    },
    "DeleteApplicationInputProcessingConfigurationResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID.</p>"
        }
      }
    },
    "DeleteApplicationOutputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "OutputId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The application version. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>"
        },
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the configuration to delete. Each output configuration that is added to the application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the <a>DescribeApplication</a> operation to get the specific <code>OutputId</code>. </p>"
        }
      }
    },
    "DeleteApplicationOutputResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID.</p>"
        }
      }
    },
    "DeleteApplicationReferenceDataSourceRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "ReferenceId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version. You can use the <a>DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>The ID of the reference data source. When you add a reference data source to your application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID. You can use the <a>DescribeApplication</a> operation to get the reference ID. </p>"
        }
      }
    },
    "DeleteApplicationReferenceDataSourceResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The updated version ID of the application.</p>"
        }
      }
    },
    "DeleteApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CreateTimestamp"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to delete.</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Use the <code>DescribeApplication</code> operation to get this value.</p>"
        }
      }
    },
    "DeleteApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationSnapshotRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "SnapshotName",
        "SnapshotCreationTimestamp"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "SnapshotName": {
          "shape": "SnapshotName",
          "documentation": "<p>The identifier for the snapshot delete.</p>"
        },
        "SnapshotCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The creation timestamp of the application snapshot to delete. You can retrieve this value using or .</p>"
        }
      }
    },
    "DeleteApplicationSnapshotResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationVpcConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "VpcConfigurationId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID. You can retrieve the application version ID using <a>DescribeApplication</a>.</p>"
        },
        "VpcConfigurationId": {
          "shape": "Id",
          "documentation": "<p>The ID of the VPC configuration to delete.</p>"
        }
      }
    },
    "DeleteApplicationVpcConfigurationResponse": {
      "type": "structure",
      "members": {
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the Kinesis Data Analytics application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The updated version ID of the application.</p>"
        }
      }
    },
    "DescribeApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "IncludeAdditionalDetails": {
          "shape": "BooleanObject",
          "documentation": "<p>Displays verbose information about a Kinesis Data Analytics application, including the application's job plan.</p>"
        }
      }
    },
    "DescribeApplicationResponse": {
      "type": "structure",
      "required": [
        "ApplicationDetail"
      ],
      "members": {
        "ApplicationDetail": {
          "shape": "ApplicationDetail",
          "documentation": "<p>Provides a description of the application, such as the application's Amazon Resource Name (ARN), status, and latest version.</p>"
        }
      }
    },
    "DescribeApplicationSnapshotRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "SnapshotName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "SnapshotName": {
          "shape": "SnapshotName",
          "documentation": "<p>The identifier of an application snapshot. You can retrieve this value using .</p>"
        }
      }
    },
    "DescribeApplicationSnapshotResponse": {
      "type": "structure",
      "required": [
        "SnapshotDetails"
      ],
      "members": {
        "SnapshotDetails": {
          "shape": "SnapshotDetails",
          "documentation": "<p>An object containing information about the application snapshot.</p>"
        }
      }
    },
    "DestinationSchema": {
      "type": "structure",
      "required": [
        "RecordFormatType"
      ],
      "members": {
        "RecordFormatType": {
          "shape": "RecordFormatType",
          "documentation": "<p>Specifies the format of the records on the output stream.</p>"
        }
      },
      "documentation": "<p>Describes the data format when records are written to the destination in an SQL-based Amazon Kinesis Data Analytics application. </p>"
    },
    "DiscoverInputSchemaRequest": {
      "type": "structure",
      "required": [
        "ServiceExecutionRole"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the streaming source.</p>"
        },
        "ServiceExecutionRole": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the role that is used to access the streaming source.</p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>The point at which you want Kinesis Data Analytics to start reading records from the specified streaming source discovery purposes.</p>"
        },
        "S3Configuration": {
          "shape": "S3Configuration",
          "documentation": "<p>Specify this parameter to discover a schema from data in an Amazon S3 object.</p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a>InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>"
        }
      }
    },
    "DiscoverInputSchemaResponse": {
      "type": "structure",
      "members": {
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>The schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>"
        },
        "ParsedInputRecords": {
          "shape": "ParsedInputRecords",
          "documentation": "<p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>"
        },
        "ProcessedInputRecords": {
          "shape": "ProcessedInputRecords",
          "documentation": "<p>The stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter.</p>"
        },
        "RawInputRecords": {
          "shape": "RawInputRecords",
          "documentation": "<p>The raw stream data that was sampled to infer the schema.</p>"
        }
      }
    },
    "EnvironmentProperties": {
      "type": "structure",
      "required": [
        "PropertyGroups"
      ],
      "members": {
        "PropertyGroups": {
          "shape": "PropertyGroups",
          "documentation": "<p>Describes the execution property groups.</p>"
        }
      },
      "documentation": "<p>Describes execution properties for a Java-based Kinesis Data Analytics application.</p>"
    },
    "EnvironmentPropertyDescriptions": {
      "type": "structure",
      "members": {
        "PropertyGroupDescriptions": {
          "shape": "PropertyGroups",
          "documentation": "<p>Describes the execution property groups.</p>"
        }
      },
      "documentation": "<p>Describes the execution properties for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "EnvironmentPropertyUpdates": {
      "type": "structure",
      "required": [
        "PropertyGroups"
      ],
      "members": {
        "PropertyGroups": {
          "shape": "PropertyGroups",
          "documentation": "<p>Describes updates to the execution property groups.</p>"
        }
      },
      "documentation": "<p>Describes updates to the execution property groups for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "FileKey": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "FlinkApplicationConfiguration": {
      "type": "structure",
      "members": {
        "CheckpointConfiguration": {
          "shape": "CheckpointConfiguration",
          "documentation": "<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault tolerance. For more information, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/concepts/programming-model.html#checkpoints-for-fault-tolerance\"> Checkpoints for Fault Tolerance</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/\">Apache Flink Documentation</a>. </p>"
        },
        "MonitoringConfiguration": {
          "shape": "MonitoringConfiguration",
          "documentation": "<p>Describes configuration parameters for Amazon CloudWatch logging for an application.</p>"
        },
        "ParallelismConfiguration": {
          "shape": "ParallelismConfiguration",
          "documentation": "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"
        }
      },
      "documentation": "<p>Describes configuration parameters for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "FlinkApplicationConfigurationDescription": {
      "type": "structure",
      "members": {
        "CheckpointConfigurationDescription": {
          "shape": "CheckpointConfigurationDescription",
          "documentation": "<p>Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault tolerance.</p>"
        },
        "MonitoringConfigurationDescription": {
          "shape": "MonitoringConfigurationDescription",
          "documentation": "<p>Describes configuration parameters for Amazon CloudWatch logging for an application.</p>"
        },
        "ParallelismConfigurationDescription": {
          "shape": "ParallelismConfigurationDescription",
          "documentation": "<p>Describes parameters for how an application executes multiple tasks simultaneously.</p>"
        },
        "JobPlanDescription": {
          "shape": "JobPlanDescription",
          "documentation": "<p>The job plan for an application. For more information about the job plan, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-stable/internals/job_scheduling.html\">Jobs and Scheduling</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/\">Apache Flink Documentation</a>. To retrieve the job plan for the application, use the <a>DescribeApplicationRequest$IncludeAdditionalDetails</a> parameter of the <a>DescribeApplication</a> operation.</p>"
        }
      },
      "documentation": "<p>Describes configuration parameters for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "FlinkApplicationConfigurationUpdate": {
      "type": "structure",
      "members": {
        "CheckpointConfigurationUpdate": {
          "shape": "CheckpointConfigurationUpdate",
          "documentation": "<p>Describes updates to an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault tolerance.</p>"
        },
        "MonitoringConfigurationUpdate": {
          "shape": "MonitoringConfigurationUpdate",
          "documentation": "<p>Describes updates to the configuration parameters for Amazon CloudWatch logging for an application.</p>"
        },
        "ParallelismConfigurationUpdate": {
          "shape": "ParallelismConfigurationUpdate",
          "documentation": "<p>Describes updates to the parameters for how an application executes multiple tasks simultaneously.</p>"
        }
      },
      "documentation": "<p>Describes updates to the configuration parameters for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "FlinkRunConfiguration": {
      "type": "structure",
      "members": {
        "AllowNonRestoredState": {
          "shape": "BooleanObject",
          "documentation": "<p>When restoring from a savepoint, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. This will happen if the program is updated between savepoints to remove stateful parameters, and state data in the savepoint no longer corresponds to valid application data. For more information, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state\"> Allowing Non-Restored State</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.8/\">Apache Flink documentation</a>.</p>"
        }
      },
      "documentation": "<p>Describes the starting parameters for an Apache Flink-based Kinesis Data Analytics application.</p>"
    },
    "Id": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "InAppStreamName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[^-\\s<>&]*"
    },
    "InAppStreamNames": {
      "type": "list",
      "member": {
        "shape": "InAppStreamName"
      }
    },
    "InAppTableName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "Input": {
      "type": "structure",
      "required": [
        "NamePrefix",
        "InputSchema"
      ],
      "members": {
        "NamePrefix": {
          "shape": "InAppStreamName",
          "documentation": "<p>The name prefix to use when creating an in-application stream. Suppose that you specify a prefix \"<code>MyInApplicationStream</code>.\" Kinesis Data Analytics then creates one or more (as per the <code>InputParallelism</code> count you specified) in-application streams with the names \"<code>MyInApplicationStream_001</code>,\" \"<code>MyInApplicationStream_002</code>,\" and so on. </p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a>InputProcessingConfiguration</a> for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is <a>InputLambdaProcessor</a>. </p>"
        },
        "KinesisStreamsInput": {
          "shape": "KinesisStreamsInput",
          "documentation": "<p>If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name (ARN). </p>"
        },
        "KinesisFirehoseInput": {
          "shape": "KinesisFirehoseInput",
          "documentation": "<p>If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.</p>"
        },
        "InputParallelism": {
          "shape": "InputParallelism",
          "documentation": "<p>Describes the number of in-application streams to create. </p>"
        },
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p> <p>Also used to describe the format of the reference data source.</p>"
        }
      },
      "documentation": "<p>When you configure the application input for an SQL-based Amazon Kinesis Data Analytics application, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. </p>"
    },
    "InputDescription": {
      "type": "structure",
      "members": {
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The input ID that is associated with the application input. This is the ID that Kinesis Data Analytics assigns to each input configuration that you add to your application. </p>"
        },
        "NamePrefix": {
          "shape": "InAppStreamName",
          "documentation": "<p>The in-application name prefix.</p>"
        },
        "InAppStreamNames": {
          "shape": "InAppStreamNames",
          "documentation": "<p>Returns the in-application stream names that are mapped to the stream source. </p>"
        },
        "InputProcessingConfigurationDescription": {
          "shape": "InputProcessingConfigurationDescription",
          "documentation": "<p>The description of the preprocessor that executes on records in this input before the application's code is run. </p>"
        },
        "KinesisStreamsInputDescription": {
          "shape": "KinesisStreamsInputDescription",
          "documentation": "<p>If a Kinesis data stream is configured as a streaming source, provides the Kinesis data stream's Amazon Resource Name (ARN). </p>"
        },
        "KinesisFirehoseInputDescription": {
          "shape": "KinesisFirehoseInputDescription",
          "documentation": "<p>If a Kinesis Data Firehose delivery stream is configured as a streaming source, provides the delivery stream's ARN. </p>"
        },
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created. </p>"
        },
        "InputParallelism": {
          "shape": "InputParallelism",
          "documentation": "<p>Describes the configured parallelism (number of in-application streams mapped to the streaming source). </p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>The point at which the application is configured to read from the input stream.</p>"
        }
      },
      "documentation": "<p>Describes the application input configuration for an SQL-based Amazon Kinesis Data Analytics application. </p>"
    },
    "InputDescriptions": {
      "type": "list",
      "member": {
        "shape": "InputDescription"
      }
    },
    "InputLambdaProcessor": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the AWS Lambda function that operates on records in the stream.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        }
      },
      "documentation": "<p>An object that contains the Amazon Resource Name (ARN) of the AWS Lambda function that is used to preprocess records in the stream in an SQL-based Amazon Kinesis Data Analytics application. </p>"
    },
    "InputLambdaProcessorDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the AWS Lambda function that is used to preprocess the records in the stream.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, an object that contains the Amazon Resource Name (ARN) of the AWS Lambda function that is used to preprocess records in the stream.</p>"
    },
    "InputLambdaProcessorUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new AWS Lambda function that is used to preprocess the records in the stream.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, represents an update to the <a>InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>"
    },
    "InputParallelism": {
      "type": "structure",
      "members": {
        "Count": {
          "shape": "InputParallelismCount",
          "documentation": "<p>The number of in-application streams to create.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the number of in-application streams to create for a given streaming source. </p>"
    },
    "InputParallelismCount": {
      "type": "integer",
      "max": 64,
      "min": 1
    },
    "InputParallelismUpdate": {
      "type": "structure",
      "required": [
        "CountUpdate"
      ],
      "members": {
        "CountUpdate": {
          "shape": "InputParallelismCount",
          "documentation": "<p>The number of in-application streams to create for the specified streaming source.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, provides updates to the parallelism count.</p>"
    },
    "InputProcessingConfiguration": {
      "type": "structure",
      "required": [
        "InputLambdaProcessor"
      ],
      "members": {
        "InputLambdaProcessor": {
          "shape": "InputLambdaProcessor",
          "documentation": "<p>The <a>InputLambdaProcessor</a> that is used to preprocess the records in the stream before being processed by your application code.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes a processor that is used to preprocess the records in the stream before being processed by your application code. Currently, the only input processor available is <a href=\"https://aws.amazon.com/documentation/lambda/\">AWS Lambda</a>.</p>"
    },
    "InputProcessingConfigurationDescription": {
      "type": "structure",
      "members": {
        "InputLambdaProcessorDescription": {
          "shape": "InputLambdaProcessorDescription",
          "documentation": "<p>Provides configuration information about the associated <a>InputLambdaProcessorDescription</a> </p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, provides the configuration information about an input processor. Currently, the only input processor available is <a href=\"https://aws.amazon.com/documentation/lambda/\">AWS Lambda</a>.</p>"
    },
    "InputProcessingConfigurationUpdate": {
      "type": "structure",
      "required": [
        "InputLambdaProcessorUpdate"
      ],
      "members": {
        "InputLambdaProcessorUpdate": {
          "shape": "InputLambdaProcessorUpdate",
          "documentation": "<p>Provides update information for an <a>InputLambdaProcessor</a>.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes updates to an <a>InputProcessingConfiguration</a>.</p>"
    },
    "InputSchemaUpdate": {
      "type": "structure",
      "members": {
        "RecordFormatUpdate": {
          "shape": "RecordFormat",
          "documentation": "<p>Specifies the format of the records on the streaming source.</p>"
        },
        "RecordEncodingUpdate": {
          "shape": "RecordEncoding",
          "documentation": "<p>Specifies the encoding of the records in the streaming source; for example, UTF-8.</p>"
        },
        "RecordColumnUpdates": {
          "shape": "RecordColumns",
          "documentation": "<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping of the streaming source element to the corresponding column in the in-application stream.</p>"
        }
      },
      "documentation": "<p>Describes updates for an SQL-based Amazon Kinesis Data Analytics application's input schema.</p>"
    },
    "InputStartingPosition": {
      "type": "string",
      "enum": [
        "NOW",
        "TRIM_HORIZON",
        "LAST_STOPPED_POINT"
      ]
    },
    "InputStartingPositionConfiguration": {
      "type": "structure",
      "members": {
        "InputStartingPosition": {
          "shape": "InputStartingPosition",
          "documentation": "<p>The starting position on the stream.</p> <ul> <li> <p> <code>NOW</code> - Start reading just after the most recent record in the stream, and start at the request timestamp that the customer issued.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, which is the oldest record available in the stream. This option is not available for an Amazon Kinesis Data Firehose delivery stream.</p> </li> <li> <p> <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes the point at which the application reads from the streaming source.</p>"
    },
    "InputUpdate": {
      "type": "structure",
      "required": [
        "InputId"
      ],
      "members": {
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The input ID of the application input to be updated.</p>"
        },
        "NamePrefixUpdate": {
          "shape": "InAppStreamName",
          "documentation": "<p>The name prefix for in-application streams that Kinesis Data Analytics creates for the specific streaming source.</p>"
        },
        "InputProcessingConfigurationUpdate": {
          "shape": "InputProcessingConfigurationUpdate",
          "documentation": "<p>Describes updates to an <a>InputProcessingConfiguration</a>.</p>"
        },
        "KinesisStreamsInputUpdate": {
          "shape": "KinesisStreamsInputUpdate",
          "documentation": "<p>If a Kinesis data stream is the streaming source to be updated, provides an updated stream Amazon Resource Name (ARN).</p>"
        },
        "KinesisFirehoseInputUpdate": {
          "shape": "KinesisFirehoseInputUpdate",
          "documentation": "<p>If a Kinesis Data Firehose delivery stream is the streaming source to be updated, provides an updated stream ARN.</p>"
        },
        "InputSchemaUpdate": {
          "shape": "InputSchemaUpdate",
          "documentation": "<p>Describes the data format on the streaming source, and how record elements on the streaming source map to columns of the in-application stream that is created.</p>"
        },
        "InputParallelismUpdate": {
          "shape": "InputParallelismUpdate",
          "documentation": "<p>Describes the parallelism updates (the number of in-application streams Kinesis Data Analytics creates for the specific streaming source).</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>"
    },
    "InputUpdates": {
      "type": "list",
      "member": {
        "shape": "InputUpdate"
      }
    },
    "Inputs": {
      "type": "list",
      "member": {
        "shape": "Input"
      }
    },
    "JSONMappingParameters": {
      "type": "structure",
      "required": [
        "RecordRowPath"
      ],
      "members": {
        "RecordRowPath": {
          "shape": "RecordRowPath",
          "documentation": "<p>The path to the top-level parent that contains the records.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, provides additional mapping information when JSON is the record format on the streaming source.</p>"
    },
    "JobPlanDescription": {
      "type": "string"
    },
    "KinesisAnalyticsARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "KinesisFirehoseInput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, identifies a Kinesis Data Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon Resource Name (ARN).</p>"
    },
    "KinesisFirehoseInputDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics assumes to access the stream.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>Describes the Amazon Kinesis Data Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>"
    },
    "KinesisFirehoseInputUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the input delivery stream to read.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, when updating application input configuration, provides information about a Kinesis Data Firehose delivery stream as the streaming source.</p>"
    },
    "KinesisFirehoseOutput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the destination delivery stream to write to.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, when configuring application output, identifies a Kinesis Data Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) of the delivery stream. </p>"
    },
    "KinesisFirehoseOutputDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the delivery stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the stream.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application's output, describes the Kinesis Data Firehose delivery stream that is configured as its destination.</p>"
    },
    "KinesisFirehoseOutputUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the delivery stream to write to. </p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, when updating an output configuration using the <a>UpdateApplication</a> operation, provides information about a Kinesis Data Firehose delivery stream that is configured as the destination.</p>"
    },
    "KinesisStreamsInput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the input Kinesis data stream to read.</p>"
        }
      },
      "documentation": "<p> Identifies an Amazon Kinesis data stream as the streaming source. You provide the stream's Amazon Resource Name (ARN).</p>"
    },
    "KinesisStreamsInputDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the stream.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the Kinesis data stream that is configured as the streaming source in the application input configuration. </p>"
    },
    "KinesisStreamsInputUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the input Kinesis data stream to read.</p>"
        }
      },
      "documentation": "<p>When you update the input configuration for an SQL-based Amazon Kinesis Data Analytics application, provides information about an Amazon Kinesis stream as the streaming source.</p>"
    },
    "KinesisStreamsOutput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the destination Kinesis data stream to write to.</p>"
        }
      },
      "documentation": "<p>When you configure an SQL-based Amazon Kinesis Data Analytics application's output, identifies a Kinesis data stream as the destination. You provide the stream Amazon Resource Name (ARN). </p>"
    },
    "KinesisStreamsOutputDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Kinesis data stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to access the stream.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application's output, describes the Kinesis data stream that is configured as its destination. </p>"
    },
    "KinesisStreamsOutputUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you want to write the output.</p>"
        }
      },
      "documentation": "<p>When you update an SQL-based Amazon Kinesis Data Analytics application's output configuration using the <a>UpdateApplication</a> operation, provides information about a Kinesis data stream that is configured as the destination.</p>"
    },
    "LambdaOutput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the destination Lambda function to write to.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        }
      },
      "documentation": "<p>When you configure an SQL-based Amazon Kinesis Data Analytics application's output, identifies an AWS Lambda function as the destination. You provide the function Amazon Resource Name (ARN) of the Lambda function. </p>"
    },
    "LambdaOutputDescription": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the destination Lambda function.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to write to the destination function.</p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application output, describes the AWS Lambda function that is configured as its destination. </p>"
    },
    "LambdaOutputUpdate": {
      "type": "structure",
      "required": [
        "ResourceARNUpdate"
      ],
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the destination AWS Lambda function.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        }
      },
      "documentation": "<p>When you update an SQL-based Amazon Kinesis Data Analytics application's output configuration using the <a>UpdateApplication</a> operation, provides information about an AWS Lambda function that is configured as the destination.</p>"
    },
    "ListApplicationSnapshotsRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of an existing application.</p>"
        },
        "Limit": {
          "shape": "ListSnapshotsInputLimit",
          "documentation": "<p>The maximum number of application snapshots to list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. </p>"
        }
      }
    },
    "ListApplicationSnapshotsResponse": {
      "type": "structure",
      "members": {
        "SnapshotSummaries": {
          "shape": "SnapshotSummaries",
          "documentation": "<p>A collection of objects containing information about the application snapshots.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or <code>null</code> if there are no additional results.</p>"
        }
      }
    },
    "ListApplicationsInputLimit": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "ListApplicationsRequest": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "ListApplicationsInputLimit",
          "documentation": "<p>The maximum number of applications to list.</p>"
        },
        "NextToken": {
          "shape": "ApplicationName",
          "documentation": "<p>If a previous command returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the AWS Command Line Interface's Pagination Options</a>.</p>"
        }
      }
    },
    "ListApplicationsResponse": {
      "type": "structure",
      "required": [
        "ApplicationSummaries"
      ],
      "members": {
        "ApplicationSummaries": {
          "shape": "ApplicationSummaries",
          "documentation": "<p>A list of <code>ApplicationSummary</code> objects.</p>"
        },
        "NextToken": {
          "shape": "ApplicationName",
          "documentation": "<p>The pagination token for the next set of results, or <code>null</code> if there are no additional results. Pass this token into a subsequent command to retrieve the next set of items For more information about pagination, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/pagination.html\">Using the AWS Command Line Interface's Pagination Options</a>.</p>"
        }
      }
    },
    "ListSnapshotsInputLimit": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the application for which to retrieve tags.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value tags assigned to the application.</p>"
        }
      }
    },
    "LogLevel": {
      "type": "string",
      "enum": [
        "INFO",
        "WARN",
        "ERROR",
        "DEBUG"
      ]
    },
    "LogStreamARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "MappingParameters": {
      "type": "structure",
      "members": {
        "JSONMappingParameters": {
          "shape": "JSONMappingParameters",
          "documentation": "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"
        },
        "CSVMappingParameters": {
          "shape": "CSVMappingParameters",
          "documentation": "<p>Provides additional mapping information when the record format uses delimiters (for example, CSV).</p>"
        }
      },
      "documentation": "<p>When you configure an SQL-based Amazon Kinesis Data Analytics application's input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"
    },
    "MetricsLevel": {
      "type": "string",
      "enum": [
        "APPLICATION",
        "TASK",
        "OPERATOR",
        "PARALLELISM"
      ]
    },
    "MinPauseBetweenCheckpoints": {
      "type": "long",
      "min": 0
    },
    "MonitoringConfiguration": {
      "type": "structure",
      "required": [
        "ConfigurationType"
      ],
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether to use the default CloudWatch logging configuration for an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or <code>MetricsLevel</code> parameters.</p>"
        },
        "MetricsLevel": {
          "shape": "MetricsLevel",
          "documentation": "<p>Describes the granularity of the CloudWatch Logs for an application.</p>"
        },
        "LogLevel": {
          "shape": "LogLevel",
          "documentation": "<p>Describes the verbosity of the CloudWatch Logs for an application.</p>"
        }
      },
      "documentation": "<p>Describes configuration parameters for Amazon CloudWatch logging for a Java-based Kinesis Data Analytics application. For more information about CloudWatch logging, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html\">Monitoring</a>.</p>"
    },
    "MonitoringConfigurationDescription": {
      "type": "structure",
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether to use the default CloudWatch logging configuration for an application.</p>"
        },
        "MetricsLevel": {
          "shape": "MetricsLevel",
          "documentation": "<p>Describes the granularity of the CloudWatch Logs for an application.</p>"
        },
        "LogLevel": {
          "shape": "LogLevel",
          "documentation": "<p>Describes the verbosity of the CloudWatch Logs for an application.</p>"
        }
      },
      "documentation": "<p>Describes configuration parameters for CloudWatch logging for a Java-based Kinesis Data Analytics application.</p>"
    },
    "MonitoringConfigurationUpdate": {
      "type": "structure",
      "members": {
        "ConfigurationTypeUpdate": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes updates to whether to use the default CloudWatch logging configuration for an application. You must set this property to <code>CUSTOM</code> in order to set the <code>LogLevel</code> or <code>MetricsLevel</code> parameters.</p>"
        },
        "MetricsLevelUpdate": {
          "shape": "MetricsLevel",
          "documentation": "<p>Describes updates to the granularity of the CloudWatch Logs for an application.</p>"
        },
        "LogLevelUpdate": {
          "shape": "LogLevel",
          "documentation": "<p>Describes updates to the verbosity of the CloudWatch Logs for an application.</p>"
        }
      },
      "documentation": "<p>Describes updates to configuration parameters for Amazon CloudWatch logging for a Java-based Kinesis Data Analytics application.</p>"
    },
    "NextToken": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "ObjectVersion": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "Output": {
      "type": "structure",
      "required": [
        "Name",
        "DestinationSchema"
      ],
      "members": {
        "Name": {
          "shape": "InAppStreamName",
          "documentation": "<p>The name of the in-application stream.</p>"
        },
        "KinesisStreamsOutput": {
          "shape": "KinesisStreamsOutput",
          "documentation": "<p>Identifies an Amazon Kinesis data stream as the destination.</p>"
        },
        "KinesisFirehoseOutput": {
          "shape": "KinesisFirehoseOutput",
          "documentation": "<p>Identifies an Amazon Kinesis Data Firehose delivery stream as the destination.</p>"
        },
        "LambdaOutput": {
          "shape": "LambdaOutput",
          "documentation": "<p>Identifies an AWS Lambda function as the destination.</p>"
        },
        "DestinationSchema": {
          "shape": "DestinationSchema",
          "documentation": "<p>Describes the data format when records are written to the destination. </p>"
        }
      },
      "documentation": "<p> Describes an SQL-based Amazon Kinesis Data Analytics application's output configuration, in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be a Kinesis data stream or a Kinesis Data Firehose delivery stream. </p> <p/>"
    },
    "OutputDescription": {
      "type": "structure",
      "members": {
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the output configuration.</p>"
        },
        "Name": {
          "shape": "InAppStreamName",
          "documentation": "<p>The name of the in-application stream that is configured as output.</p>"
        },
        "KinesisStreamsOutputDescription": {
          "shape": "KinesisStreamsOutputDescription",
          "documentation": "<p>Describes the Kinesis data stream that is configured as the destination where output is written.</p>"
        },
        "KinesisFirehoseOutputDescription": {
          "shape": "KinesisFirehoseOutputDescription",
          "documentation": "<p>Describes the Kinesis Data Firehose delivery stream that is configured as the destination where output is written.</p>"
        },
        "LambdaOutputDescription": {
          "shape": "LambdaOutputDescription",
          "documentation": "<p>Describes the Lambda function that is configured as the destination where output is written.</p>"
        },
        "DestinationSchema": {
          "shape": "DestinationSchema",
          "documentation": "<p>The data format used for writing data to the destination.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be a Kinesis data stream or a Kinesis Data Firehose delivery stream. </p>"
    },
    "OutputDescriptions": {
      "type": "list",
      "member": {
        "shape": "OutputDescription"
      }
    },
    "OutputUpdate": {
      "type": "structure",
      "required": [
        "OutputId"
      ],
      "members": {
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>Identifies the specific output configuration that you want to update.</p>"
        },
        "NameUpdate": {
          "shape": "InAppStreamName",
          "documentation": "<p>If you want to specify a different in-application stream for this output configuration, use this field to specify the new in-application stream name.</p>"
        },
        "KinesisStreamsOutputUpdate": {
          "shape": "KinesisStreamsOutputUpdate",
          "documentation": "<p>Describes a Kinesis data stream as the destination for the output.</p>"
        },
        "KinesisFirehoseOutputUpdate": {
          "shape": "KinesisFirehoseOutputUpdate",
          "documentation": "<p>Describes a Kinesis Data Firehose delivery stream as the destination for the output.</p>"
        },
        "LambdaOutputUpdate": {
          "shape": "LambdaOutputUpdate",
          "documentation": "<p>Describes an AWS Lambda function as the destination for the output.</p>"
        },
        "DestinationSchemaUpdate": {
          "shape": "DestinationSchema",
          "documentation": "<p>Describes the data format when records are written to the destination. </p>"
        }
      },
      "documentation": "<p> For an SQL-based Amazon Kinesis Data Analytics application, describes updates to the output configuration identified by the <code>OutputId</code>. </p>"
    },
    "OutputUpdates": {
      "type": "list",
      "member": {
        "shape": "OutputUpdate"
      }
    },
    "Outputs": {
      "type": "list",
      "member": {
        "shape": "Output"
      }
    },
    "Parallelism": {
      "type": "integer",
      "min": 1
    },
    "ParallelismConfiguration": {
      "type": "structure",
      "required": [
        "ConfigurationType"
      ],
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. You must set this property to <code>CUSTOM</code> in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>"
        },
        "Parallelism": {
          "shape": "Parallelism",
          "documentation": "<p>Describes the initial number of parallel tasks that a Java-based Kinesis Data Analytics application can perform. If <code>AutoScalingEnabled</code> is set to True, Kinesis Data Analytics increases the <code>CurrentParallelism</code> value in response to application load. The service can increase the <code>CurrentParallelism</code> value up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"
        },
        "ParallelismPerKPU": {
          "shape": "ParallelismPerKPU",
          "documentation": "<p>Describes the number of parallel tasks that a Java-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application. For more information about KPUs, see <a href=\"http://aws.amazon.com/kinesis/data-analytics/pricing/\">Amazon Kinesis Data Analytics Pricing</a>.</p>"
        },
        "AutoScalingEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>"
        }
      },
      "documentation": "<p>Describes parameters for how a Java-based Amazon Kinesis Data Analytics application executes multiple tasks simultaneously. For more information about parallelism, see <a href=\"https://ci.apache.org/projects/flink/flink-docs-stable/dev/parallel.html\">Parallel Execution</a> in the <a href=\"https://ci.apache.org/projects/flink/flink-docs-release-1.6/\">Apache Flink Documentation</a>.</p>"
    },
    "ParallelismConfigurationDescription": {
      "type": "structure",
      "members": {
        "ConfigurationType": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. </p>"
        },
        "Parallelism": {
          "shape": "Parallelism",
          "documentation": "<p>Describes the initial number of parallel tasks that a Java-based Kinesis Data Analytics application can perform. If <code>AutoScalingEnabled</code> is set to True, then Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"
        },
        "ParallelismPerKPU": {
          "shape": "ParallelismPerKPU",
          "documentation": "<p>Describes the number of parallel tasks that a Java-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.</p>"
        },
        "CurrentParallelism": {
          "shape": "Parallelism",
          "documentation": "<p>Describes the current number of parallel tasks that a Java-based Kinesis Data Analytics application can perform. If <code>AutoScalingEnabled</code> is set to True, Kinesis Data Analytics can increase this value in response to application load. The service can increase this value up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service can reduce the <code>CurrentParallelism</code> value down to the <code>Parallelism</code> setting.</p>"
        },
        "AutoScalingEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>"
        }
      },
      "documentation": "<p>Describes parameters for how a Java-based Kinesis Data Analytics application executes multiple tasks simultaneously.</p>"
    },
    "ParallelismConfigurationUpdate": {
      "type": "structure",
      "members": {
        "ConfigurationTypeUpdate": {
          "shape": "ConfigurationType",
          "documentation": "<p>Describes updates to whether the application uses the default parallelism for the Kinesis Data Analytics service, or if a custom parallelism is used. You must set this property to <code>CUSTOM</code> in order to change your application's <code>AutoScalingEnabled</code>, <code>Parallelism</code>, or <code>ParallelismPerKPU</code> properties.</p>"
        },
        "ParallelismUpdate": {
          "shape": "Parallelism",
          "documentation": "<p>Describes updates to the initial number of parallel tasks an application can perform. If <code>AutoScalingEnabled</code> is set to True, then Kinesis Data Analytics can increase the <code>CurrentParallelism</code> value in response to application load. The service can increase <code>CurrentParallelism</code> up to the maximum parallelism, which is <code>ParalellismPerKPU</code> times the maximum KPUs for the application. The maximum KPUs for an application is 32 by default, and can be increased by requesting a limit increase. If application load is reduced, the service will reduce <code>CurrentParallelism</code> down to the <code>Parallelism</code> setting.</p>"
        },
        "ParallelismPerKPUUpdate": {
          "shape": "ParallelismPerKPU",
          "documentation": "<p>Describes updates to the number of parallel tasks an application can perform per Kinesis Processing Unit (KPU) used by the application.</p>"
        },
        "AutoScalingEnabledUpdate": {
          "shape": "BooleanObject",
          "documentation": "<p>Describes updates to whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.</p>"
        }
      },
      "documentation": "<p>Describes updates to parameters for how a Java-based Kinesis Data Analytics application executes multiple tasks simultaneously.</p>"
    },
    "ParallelismPerKPU": {
      "type": "integer",
      "min": 1
    },
    "ParsedInputRecord": {
      "type": "list",
      "member": {
        "shape": "ParsedInputRecordField"
      }
    },
    "ParsedInputRecordField": {
      "type": "string"
    },
    "ParsedInputRecords": {
      "type": "list",
      "member": {
        "shape": "ParsedInputRecord"
      }
    },
    "ProcessedInputRecord": {
      "type": "string"
    },
    "ProcessedInputRecords": {
      "type": "list",
      "member": {
        "shape": "ProcessedInputRecord"
      }
    },
    "PropertyGroup": {
      "type": "structure",
      "required": [
        "PropertyGroupId",
        "PropertyMap"
      ],
      "members": {
        "PropertyGroupId": {
          "shape": "Id",
          "documentation": "<p>Describes the key of an application execution property key-value pair.</p>"
        },
        "PropertyMap": {
          "shape": "PropertyMap",
          "documentation": "<p>Describes the value of an application execution property key-value pair.</p>"
        }
      },
      "documentation": "<p>Property key-value pairs passed into a Java-based Kinesis Data Analytics application.</p>"
    },
    "PropertyGroups": {
      "type": "list",
      "member": {
        "shape": "PropertyGroup"
      },
      "max": 50
    },
    "PropertyKey": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "PropertyMap": {
      "type": "map",
      "key": {
        "shape": "PropertyKey"
      },
      "value": {
        "shape": "PropertyValue"
      },
      "max": 50,
      "min": 1
    },
    "PropertyValue": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "RawInputRecord": {
      "type": "string"
    },
    "RawInputRecords": {
      "type": "list",
      "member": {
        "shape": "RawInputRecord"
      }
    },
    "RecordColumn": {
      "type": "structure",
      "required": [
        "Name",
        "SqlType"
      ],
      "members": {
        "Name": {
          "shape": "RecordColumnName",
          "documentation": "<p>The name of the column that is created in the in-application input stream or reference table.</p>"
        },
        "Mapping": {
          "shape": "RecordColumnMapping",
          "documentation": "<p>A reference to the data element in the streaming input or the reference data source.</p>"
        },
        "SqlType": {
          "shape": "RecordColumnSqlType",
          "documentation": "<p>The type of column created in the in-application input stream or reference table.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>"
    },
    "RecordColumnDelimiter": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "RecordColumnMapping": {
      "type": "string",
      "max": 65535,
      "min": 0
    },
    "RecordColumnName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[^-\\s<>&]*"
    },
    "RecordColumnSqlType": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "RecordColumns": {
      "type": "list",
      "member": {
        "shape": "RecordColumn"
      },
      "max": 1000,
      "min": 1
    },
    "RecordEncoding": {
      "type": "string",
      "max": 5,
      "min": 5,
      "pattern": "UTF-8"
    },
    "RecordFormat": {
      "type": "structure",
      "required": [
        "RecordFormatType"
      ],
      "members": {
        "RecordFormatType": {
          "shape": "RecordFormatType",
          "documentation": "<p>The type of record format.</p>"
        },
        "MappingParameters": {
          "shape": "MappingParameters",
          "documentation": "<p>When you configure application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"
        }
      },
      "documentation": "<p> For an SQL-based Amazon Kinesis Data Analytics application, describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>"
    },
    "RecordFormatType": {
      "type": "string",
      "enum": [
        "JSON",
        "CSV"
      ]
    },
    "RecordRowDelimiter": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "RecordRowPath": {
      "type": "string",
      "max": 65535,
      "min": 1,
      "pattern": "^(?=^\\$)(?=^\\S+$).*$"
    },
    "ReferenceDataSource": {
      "type": "structure",
      "required": [
        "TableName",
        "ReferenceSchema"
      ],
      "members": {
        "TableName": {
          "shape": "InAppTableName",
          "documentation": "<p>The name of the in-application table to create.</p>"
        },
        "S3ReferenceDataSource": {
          "shape": "S3ReferenceDataSource",
          "documentation": "<p>Identifies the S3 bucket and object that contains the reference data. A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application. </p>"
        },
        "ReferenceSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the reference data source by providing the source information (Amazon S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>"
    },
    "ReferenceDataSourceDescription": {
      "type": "structure",
      "required": [
        "ReferenceId",
        "TableName",
        "S3ReferenceDataSourceDescription"
      ],
      "members": {
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>The ID of the reference data source. This is the ID that Kinesis Data Analytics assigns when you add the reference data source to your application using the <a>CreateApplication</a> or <a>UpdateApplication</a> operation.</p>"
        },
        "TableName": {
          "shape": "InAppTableName",
          "documentation": "<p>The in-application table name created by the specific reference data source configuration.</p>"
        },
        "S3ReferenceDataSourceDescription": {
          "shape": "S3ReferenceDataSourceDescription",
          "documentation": "<p>Provides the Amazon S3 bucket name, the object key name that contains the reference data. </p>"
        },
        "ReferenceSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the reference data source configured for an application.</p>"
    },
    "ReferenceDataSourceDescriptions": {
      "type": "list",
      "member": {
        "shape": "ReferenceDataSourceDescription"
      }
    },
    "ReferenceDataSourceUpdate": {
      "type": "structure",
      "required": [
        "ReferenceId"
      ],
      "members": {
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>The ID of the reference data source that is being updated. You can use the <a>DescribeApplication</a> operation to get this value.</p>"
        },
        "TableNameUpdate": {
          "shape": "InAppTableName",
          "documentation": "<p>The in-application table name that is created by this update.</p>"
        },
        "S3ReferenceDataSourceUpdate": {
          "shape": "S3ReferenceDataSourceUpdate",
          "documentation": "<p>Describes the S3 bucket name, object key name, and IAM role that Kinesis Data Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"
        },
        "ReferenceSchemaUpdate": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>"
        }
      },
      "documentation": "<p>When you update a reference data source configuration for a SQL-based Amazon Kinesis Data Analytics application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>"
    },
    "ReferenceDataSourceUpdates": {
      "type": "list",
      "member": {
        "shape": "ReferenceDataSourceUpdate"
      }
    },
    "ReferenceDataSources": {
      "type": "list",
      "member": {
        "shape": "ReferenceDataSource"
      }
    },
    "ResourceARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "RoleARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "RunConfiguration": {
      "type": "structure",
      "members": {
        "FlinkRunConfiguration": {
          "shape": "FlinkRunConfiguration",
          "documentation": "<p>Describes the starting parameters for an Apache Flink-based Kinesis Data Analytics application.</p>"
        },
        "SqlRunConfigurations": {
          "shape": "SqlRunConfigurations",
          "documentation": "<p>Describes the starting parameters for an SQL-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationRestoreConfiguration": {
          "shape": "ApplicationRestoreConfiguration",
          "documentation": "<p>Describes the restore behavior of a restarting application.</p>"
        }
      },
      "documentation": "<p>Describes the starting parameters for an Amazon Kinesis Data Analytics application.</p>"
    },
    "RunConfigurationDescription": {
      "type": "structure",
      "members": {
        "ApplicationRestoreConfigurationDescription": {
          "shape": "ApplicationRestoreConfiguration",
          "documentation": "<p>Describes the restore behavior of a restarting application.</p>"
        },
        "FlinkRunConfigurationDescription": {
          "shape": "FlinkRunConfiguration"
        }
      },
      "documentation": "<p>Describes the starting properties for a Kinesis Data Analytics application.</p>"
    },
    "RunConfigurationUpdate": {
      "type": "structure",
      "members": {
        "FlinkRunConfiguration": {
          "shape": "FlinkRunConfiguration",
          "documentation": "<p>Describes the starting parameters for an Apache Flink-based Kinesis Data Analytics application.</p>"
        },
        "ApplicationRestoreConfiguration": {
          "shape": "ApplicationRestoreConfiguration",
          "documentation": "<p>Describes updates to the restore behavior of a restarting application.</p>"
        }
      },
      "documentation": "<p>Describes the updates to the starting parameters for a Kinesis Data Analytics application.</p>"
    },
    "RuntimeEnvironment": {
      "type": "string",
      "enum": [
        "SQL-1_0",
        "FLINK-1_6",
        "FLINK-1_8"
      ]
    },
    "S3ApplicationCodeLocationDescription": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>The file key for the object containing the application code.</p>"
        },
        "ObjectVersion": {
          "shape": "ObjectVersion",
          "documentation": "<p>The version of the object containing the application code.</p>"
        }
      },
      "documentation": "<p>Describes the location of a Java-based Amazon Kinesis Data Analytics application's code stored in an S3 bucket.</p>"
    },
    "S3Configuration": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>The ARN of the S3 bucket that contains the data.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>The name of the object that contains the data.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, provides a description of an Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket and the name of the Amazon S3 object that contains the data.</p>"
    },
    "S3ContentLocation": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>The file key for the object containing the application code.</p>"
        },
        "ObjectVersion": {
          "shape": "ObjectVersion",
          "documentation": "<p>The version of the object containing the application code.</p>"
        }
      },
      "documentation": "<p>For a Java-based Amazon Kinesis Data Analytics application, provides a description of an Amazon S3 object, including the Amazon Resource Name (ARN) of the S3 bucket, the name of the Amazon S3 object that contains the data, and the version number of the Amazon S3 object that contains the data. </p>"
    },
    "S3ContentLocationUpdate": {
      "type": "structure",
      "members": {
        "BucketARNUpdate": {
          "shape": "BucketARN",
          "documentation": "<p>The new Amazon Resource Name (ARN) for the S3 bucket containing the application code.</p>"
        },
        "FileKeyUpdate": {
          "shape": "FileKey",
          "documentation": "<p>The new file key for the object containing the application code.</p>"
        },
        "ObjectVersionUpdate": {
          "shape": "ObjectVersion",
          "documentation": "<p>The new version of the object containing the application code.</p>"
        }
      },
      "documentation": "<p>Describes an update for the Amazon S3 code content location for a Java-based Amazon Kinesis Data Analytics application.</p>"
    },
    "S3ReferenceDataSource": {
      "type": "structure",
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>The object key name containing the reference data.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, identifies the Amazon S3 bucket and object that contains the reference data.</p> <p>A Kinesis Data Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application. </p>"
    },
    "S3ReferenceDataSourceDescription": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>Amazon S3 object key name.</p>"
        },
        "ReferenceRoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that Kinesis Data Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table. </p> <note> <p>Provided for backward compatibility. Applications that are created with the current API version have an application-level service execution role rather than a resource-level role.</p> </note>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, provides the bucket name and object key name that stores the reference data.</p>"
    },
    "S3ReferenceDataSourceUpdate": {
      "type": "structure",
      "members": {
        "BucketARNUpdate": {
          "shape": "BucketARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKeyUpdate": {
          "shape": "FileKey",
          "documentation": "<p>The object key name.</p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the Amazon S3 bucket name and object key name for an in-application reference table. </p>"
    },
    "SecurityGroupId": {
      "type": "string"
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "SecurityGroupId"
      },
      "max": 5,
      "min": 1
    },
    "SnapshotDetails": {
      "type": "structure",
      "required": [
        "SnapshotName",
        "SnapshotStatus",
        "ApplicationVersionId"
      ],
      "members": {
        "SnapshotName": {
          "shape": "SnapshotName",
          "documentation": "<p>The identifier for the application snapshot.</p>"
        },
        "SnapshotStatus": {
          "shape": "SnapshotStatus",
          "documentation": "<p>The status of the application snapshot.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID when the snapshot was created.</p>"
        },
        "SnapshotCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the application snapshot.</p>"
        }
      },
      "documentation": "<p>Provides details about a snapshot of application state.</p>"
    },
    "SnapshotName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "SnapshotStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "READY",
        "DELETING",
        "FAILED"
      ]
    },
    "SnapshotSummaries": {
      "type": "list",
      "member": {
        "shape": "SnapshotDetails"
      }
    },
    "SourceSchema": {
      "type": "structure",
      "required": [
        "RecordFormat",
        "RecordColumns"
      ],
      "members": {
        "RecordFormat": {
          "shape": "RecordFormat",
          "documentation": "<p>Specifies the format of the records on the streaming source.</p>"
        },
        "RecordEncoding": {
          "shape": "RecordEncoding",
          "documentation": "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"
        },
        "RecordColumns": {
          "shape": "RecordColumns",
          "documentation": "<p>A list of <code>RecordColumn</code> objects. </p>"
        }
      },
      "documentation": "<p>For an SQL-based Amazon Kinesis Data Analytics application, describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>"
    },
    "SqlApplicationConfiguration": {
      "type": "structure",
      "members": {
        "Inputs": {
          "shape": "Inputs",
          "documentation": "<p>The array of <a>Input</a> objects describing the input streams used by the application.</p>"
        },
        "Outputs": {
          "shape": "Outputs",
          "documentation": "<p>The array of <a>Output</a> objects describing the destination streams used by the application.</p>"
        },
        "ReferenceDataSources": {
          "shape": "ReferenceDataSources",
          "documentation": "<p>The array of <a>ReferenceDataSource</a> objects describing the reference data sources used by the application.</p>"
        }
      },
      "documentation": "<p>Describes the inputs, outputs, and reference data sources for an SQL-based Kinesis Data Analytics application.</p>"
    },
    "SqlApplicationConfigurationDescription": {
      "type": "structure",
      "members": {
        "InputDescriptions": {
          "shape": "InputDescriptions",
          "documentation": "<p>The array of <a>InputDescription</a> objects describing the input streams used by the application.</p>"
        },
        "OutputDescriptions": {
          "shape": "OutputDescriptions",
          "documentation": "<p>The array of <a>OutputDescription</a> objects describing the destination streams used by the application.</p>"
        },
        "ReferenceDataSourceDescriptions": {
          "shape": "ReferenceDataSourceDescriptions",
          "documentation": "<p>The array of <a>ReferenceDataSourceDescription</a> objects describing the reference data sources used by the application.</p>"
        }
      },
      "documentation": "<p>Describes the inputs, outputs, and reference data sources for an SQL-based Kinesis Data Analytics application.</p>"
    },
    "SqlApplicationConfigurationUpdate": {
      "type": "structure",
      "members": {
        "InputUpdates": {
          "shape": "InputUpdates",
          "documentation": "<p>The array of <a>InputUpdate</a> objects describing the new input streams used by the application.</p>"
        },
        "OutputUpdates": {
          "shape": "OutputUpdates",
          "documentation": "<p>The array of <a>OutputUpdate</a> objects describing the new destination streams used by the application.</p>"
        },
        "ReferenceDataSourceUpdates": {
          "shape": "ReferenceDataSourceUpdates",
          "documentation": "<p>The array of <a>ReferenceDataSourceUpdate</a> objects describing the new reference data sources used by the application.</p>"
        }
      },
      "documentation": "<p>Describes updates to the input streams, destination streams, and reference data sources for an SQL-based Kinesis Data Analytics application.</p>"
    },
    "SqlRunConfiguration": {
      "type": "structure",
      "required": [
        "InputId",
        "InputStartingPositionConfiguration"
      ],
      "members": {
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The input source ID. You can get this ID by calling the <a>DescribeApplication</a> operation. </p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>The point at which you want the application to start processing records from the streaming source. </p>"
        }
      },
      "documentation": "<p>Describes the starting parameters for an SQL-based Kinesis Data Analytics application.</p>"
    },
    "SqlRunConfigurations": {
      "type": "list",
      "member": {
        "shape": "SqlRunConfiguration"
      }
    },
    "StartApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "RunConfiguration"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application.</p>"
        },
        "RunConfiguration": {
          "shape": "RunConfiguration",
          "documentation": "<p>Identifies the run configuration (start parameters) of a Kinesis Data Analytics application.</p>"
        }
      }
    },
    "StartApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "StopApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the running application to stop.</p>"
        }
      }
    },
    "StopApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "SubnetId": {
      "type": "string"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      },
      "max": 16,
      "min": 1
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the key-value tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the key-value tag. The value is optional.</p>"
        }
      },
      "documentation": "<p>A key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the application to assign the tags.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value tags to assign to the application.</p>"
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
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 1
    },
    "TextContent": {
      "type": "string",
      "max": 102400,
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
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>A list of keys of tags to remove from the specified application.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The name of the application to update.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID. You can retrieve the application version ID using <a>DescribeApplication</a>.</p>"
        },
        "ApplicationConfigurationUpdate": {
          "shape": "ApplicationConfigurationUpdate",
          "documentation": "<p>Describes application configuration updates.</p>"
        },
        "ServiceExecutionRoleUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>Describes updates to the service execution role.</p>"
        },
        "RunConfigurationUpdate": {
          "shape": "RunConfigurationUpdate",
          "documentation": "<p>Describes updates to the application's starting parameters.</p>"
        },
        "CloudWatchLoggingOptionUpdates": {
          "shape": "CloudWatchLoggingOptionUpdates",
          "documentation": "<p>Describes application Amazon CloudWatch logging option updates. You can only update existing CloudWatch logging options with this action. To add a new CloudWatch logging option, use <a>AddApplicationCloudWatchLoggingOption</a>.</p>"
        }
      }
    },
    "UpdateApplicationResponse": {
      "type": "structure",
      "required": [
        "ApplicationDetail"
      ],
      "members": {
        "ApplicationDetail": {
          "shape": "ApplicationDetail",
          "documentation": "<p>Describes application updates.</p>"
        }
      }
    },
    "VpcConfiguration": {
      "type": "structure",
      "required": [
        "SubnetIds",
        "SecurityGroupIds"
      ],
      "members": {
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> IDs used by the VPC configuration.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> IDs used by the VPC configuration.</p>"
        }
      },
      "documentation": "<p>Describes the parameters of a VPC used by the application.</p>"
    },
    "VpcConfigurationDescription": {
      "type": "structure",
      "required": [
        "VpcConfigurationId",
        "VpcId",
        "SubnetIds",
        "SecurityGroupIds"
      ],
      "members": {
        "VpcConfigurationId": {
          "shape": "Id",
          "documentation": "<p>The ID of the VPC configuration.</p>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The ID of the associated VPC.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> IDs used by the VPC configuration.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> IDs used by the VPC configuration.</p>"
        }
      },
      "documentation": "<p>Describes the parameters of a VPC used by the application.</p>"
    },
    "VpcConfigurationDescriptions": {
      "type": "list",
      "member": {
        "shape": "VpcConfigurationDescription"
      }
    },
    "VpcConfigurationUpdate": {
      "type": "structure",
      "required": [
        "VpcConfigurationId"
      ],
      "members": {
        "VpcConfigurationId": {
          "shape": "Id",
          "documentation": "<p>Describes an update to the ID of the VPC configuration.</p>"
        },
        "SubnetIdUpdates": {
          "shape": "SubnetIds",
          "documentation": "<p>Describes updates to the array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Subnet.html\">Subnet</a> IDs used by the VPC configuration.</p>"
        },
        "SecurityGroupIdUpdates": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>Describes updates to the array of <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroup.html\">SecurityGroup</a> IDs used by the VPC configuration.</p>"
        }
      },
      "documentation": "<p>Describes updates to the VPC configuration used by the application.</p>"
    },
    "VpcConfigurationUpdates": {
      "type": "list",
      "member": {
        "shape": "VpcConfigurationUpdate"
      }
    },
    "VpcConfigurations": {
      "type": "list",
      "member": {
        "shape": "VpcConfiguration"
      }
    },
    "VpcId": {
      "type": "string"
    },
    "ZipFileContent": {
      "type": "blob",
      "max": 52428800,
      "min": 0
    }
  },
  "documentation": "<p>Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using SQL or Java. The service enables you to quickly author and run SQL or Java code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics.</p>"
}
]===]))