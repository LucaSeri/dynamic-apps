local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-12-02",
    "endpointPrefix": "imagebuilder",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "imagebuilder",
    "serviceFullName": "EC2 Image Builder",
    "serviceId": "imagebuilder",
    "signatureVersion": "v4",
    "signingName": "imagebuilder",
    "uid": "imagebuilder-2019-12-02"
  },
  "operations": {
    "CancelImageCreation": {
      "name": "CancelImageCreation",
      "http": {
        "method": "PUT",
        "requestUri": "/CancelImageCreation"
      },
      "input": {
        "shape": "CancelImageCreationRequest"
      },
      "output": {
        "shape": "CancelImageCreationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>CancelImageCreation cancels the creation of Image. This operation can only be used on images in a non-terminal state.</p>"
    },
    "CreateComponent": {
      "name": "CreateComponent",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateComponent"
      },
      "input": {
        "shape": "CreateComponentRequest"
      },
      "output": {
        "shape": "CreateComponentResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "InvalidVersionNumberException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Creates a new component that can be used to build, validate, test, and assess your image.</p>"
    },
    "CreateDistributionConfiguration": {
      "name": "CreateDistributionConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateDistributionConfiguration"
      },
      "input": {
        "shape": "CreateDistributionConfigurationRequest"
      },
      "output": {
        "shape": "CreateDistributionConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. </p>"
    },
    "CreateImage": {
      "name": "CreateImage",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateImage"
      },
      "input": {
        "shape": "CreateImageRequest"
      },
      "output": {
        "shape": "CreateImageResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p> Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. </p>"
    },
    "CreateImagePipeline": {
      "name": "CreateImagePipeline",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateImagePipeline"
      },
      "input": {
        "shape": "CreateImagePipelineRequest"
      },
      "output": {
        "shape": "CreateImagePipelineResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p> Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. </p>"
    },
    "CreateImageRecipe": {
      "name": "CreateImageRecipe",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateImageRecipe"
      },
      "input": {
        "shape": "CreateImageRecipeRequest"
      },
      "output": {
        "shape": "CreateImageRecipeResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "InvalidVersionNumberException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p> Creates a new image recipe. Image recipes define how images are configured, tested, and assessed. </p>"
    },
    "CreateInfrastructureConfiguration": {
      "name": "CreateInfrastructureConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/CreateInfrastructureConfiguration"
      },
      "input": {
        "shape": "CreateInfrastructureConfigurationRequest"
      },
      "output": {
        "shape": "CreateInfrastructureConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p> Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. </p>"
    },
    "DeleteComponent": {
      "name": "DeleteComponent",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteComponent"
      },
      "input": {
        "shape": "DeleteComponentRequest"
      },
      "output": {
        "shape": "DeleteComponentResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes a component build version. </p>"
    },
    "DeleteDistributionConfiguration": {
      "name": "DeleteDistributionConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteDistributionConfiguration"
      },
      "input": {
        "shape": "DeleteDistributionConfigurationRequest"
      },
      "output": {
        "shape": "DeleteDistributionConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes a distribution configuration. </p>"
    },
    "DeleteImage": {
      "name": "DeleteImage",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteImage"
      },
      "input": {
        "shape": "DeleteImageRequest"
      },
      "output": {
        "shape": "DeleteImageResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes an image. </p>"
    },
    "DeleteImagePipeline": {
      "name": "DeleteImagePipeline",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteImagePipeline"
      },
      "input": {
        "shape": "DeleteImagePipelineRequest"
      },
      "output": {
        "shape": "DeleteImagePipelineResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes an image pipeline. </p>"
    },
    "DeleteImageRecipe": {
      "name": "DeleteImageRecipe",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteImageRecipe"
      },
      "input": {
        "shape": "DeleteImageRecipeRequest"
      },
      "output": {
        "shape": "DeleteImageRecipeResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes an image recipe. </p>"
    },
    "DeleteInfrastructureConfiguration": {
      "name": "DeleteInfrastructureConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/DeleteInfrastructureConfiguration"
      },
      "input": {
        "shape": "DeleteInfrastructureConfigurationRequest"
      },
      "output": {
        "shape": "DeleteInfrastructureConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceDependencyException"
        }
      ],
      "documentation": "<p> Deletes an infrastructure configuration. </p>"
    },
    "GetComponent": {
      "name": "GetComponent",
      "http": {
        "method": "GET",
        "requestUri": "/GetComponent"
      },
      "input": {
        "shape": "GetComponentRequest"
      },
      "output": {
        "shape": "GetComponentResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets a component object. </p>"
    },
    "GetComponentPolicy": {
      "name": "GetComponentPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/GetComponentPolicy"
      },
      "input": {
        "shape": "GetComponentPolicyRequest"
      },
      "output": {
        "shape": "GetComponentPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets a component policy. </p>"
    },
    "GetDistributionConfiguration": {
      "name": "GetDistributionConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/GetDistributionConfiguration"
      },
      "input": {
        "shape": "GetDistributionConfigurationRequest"
      },
      "output": {
        "shape": "GetDistributionConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets a distribution configuration. </p>"
    },
    "GetImage": {
      "name": "GetImage",
      "http": {
        "method": "GET",
        "requestUri": "/GetImage"
      },
      "input": {
        "shape": "GetImageRequest"
      },
      "output": {
        "shape": "GetImageResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an image. </p>"
    },
    "GetImagePipeline": {
      "name": "GetImagePipeline",
      "http": {
        "method": "GET",
        "requestUri": "/GetImagePipeline"
      },
      "input": {
        "shape": "GetImagePipelineRequest"
      },
      "output": {
        "shape": "GetImagePipelineResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an image pipeline. </p>"
    },
    "GetImagePolicy": {
      "name": "GetImagePolicy",
      "http": {
        "method": "GET",
        "requestUri": "/GetImagePolicy"
      },
      "input": {
        "shape": "GetImagePolicyRequest"
      },
      "output": {
        "shape": "GetImagePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an image policy. </p>"
    },
    "GetImageRecipe": {
      "name": "GetImageRecipe",
      "http": {
        "method": "GET",
        "requestUri": "/GetImageRecipe"
      },
      "input": {
        "shape": "GetImageRecipeRequest"
      },
      "output": {
        "shape": "GetImageRecipeResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an image recipe. </p>"
    },
    "GetImageRecipePolicy": {
      "name": "GetImageRecipePolicy",
      "http": {
        "method": "GET",
        "requestUri": "/GetImageRecipePolicy"
      },
      "input": {
        "shape": "GetImageRecipePolicyRequest"
      },
      "output": {
        "shape": "GetImageRecipePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an image recipe policy. </p>"
    },
    "GetInfrastructureConfiguration": {
      "name": "GetInfrastructureConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/GetInfrastructureConfiguration"
      },
      "input": {
        "shape": "GetInfrastructureConfigurationRequest"
      },
      "output": {
        "shape": "GetInfrastructureConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Gets an infrastructure configuration. </p>"
    },
    "ImportComponent": {
      "name": "ImportComponent",
      "http": {
        "method": "PUT",
        "requestUri": "/ImportComponent"
      },
      "input": {
        "shape": "ImportComponentRequest"
      },
      "output": {
        "shape": "ImportComponentResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "InvalidVersionNumberException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Imports a component and transforms its data into a component document. </p>"
    },
    "ListComponentBuildVersions": {
      "name": "ListComponentBuildVersions",
      "http": {
        "method": "POST",
        "requestUri": "/ListComponentBuildVersions"
      },
      "input": {
        "shape": "ListComponentBuildVersionsRequest"
      },
      "output": {
        "shape": "ListComponentBuildVersionsResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns the list of component build versions for the specified semantic version. </p>"
    },
    "ListComponents": {
      "name": "ListComponents",
      "http": {
        "method": "POST",
        "requestUri": "/ListComponents"
      },
      "input": {
        "shape": "ListComponentsRequest"
      },
      "output": {
        "shape": "ListComponentsResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p>Returns the list of component build versions for the specified semantic version. </p>"
    },
    "ListDistributionConfigurations": {
      "name": "ListDistributionConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/ListDistributionConfigurations"
      },
      "input": {
        "shape": "ListDistributionConfigurationsRequest"
      },
      "output": {
        "shape": "ListDistributionConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns a list of distribution configurations. </p>"
    },
    "ListImageBuildVersions": {
      "name": "ListImageBuildVersions",
      "http": {
        "method": "POST",
        "requestUri": "/ListImageBuildVersions"
      },
      "input": {
        "shape": "ListImageBuildVersionsRequest"
      },
      "output": {
        "shape": "ListImageBuildVersionsResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns a list of image build versions. </p>"
    },
    "ListImagePipelineImages": {
      "name": "ListImagePipelineImages",
      "http": {
        "method": "POST",
        "requestUri": "/ListImagePipelineImages"
      },
      "input": {
        "shape": "ListImagePipelineImagesRequest"
      },
      "output": {
        "shape": "ListImagePipelineImagesResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns a list of images created by the specified pipeline. </p>"
    },
    "ListImagePipelines": {
      "name": "ListImagePipelines",
      "http": {
        "method": "POST",
        "requestUri": "/ListImagePipelines"
      },
      "input": {
        "shape": "ListImagePipelinesRequest"
      },
      "output": {
        "shape": "ListImagePipelinesResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p>Returns a list of image pipelines. </p>"
    },
    "ListImageRecipes": {
      "name": "ListImageRecipes",
      "http": {
        "method": "POST",
        "requestUri": "/ListImageRecipes"
      },
      "input": {
        "shape": "ListImageRecipesRequest"
      },
      "output": {
        "shape": "ListImageRecipesResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns a list of image recipes. </p>"
    },
    "ListImages": {
      "name": "ListImages",
      "http": {
        "method": "POST",
        "requestUri": "/ListImages"
      },
      "input": {
        "shape": "ListImagesRequest"
      },
      "output": {
        "shape": "ListImagesResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns the list of images that you have access to. </p>"
    },
    "ListInfrastructureConfigurations": {
      "name": "ListInfrastructureConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/ListInfrastructureConfigurations"
      },
      "input": {
        "shape": "ListInfrastructureConfigurationsRequest"
      },
      "output": {
        "shape": "ListInfrastructureConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Returns a list of infrastructure configurations. </p>"
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
          "shape": "ServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns the list of tags for the specified resource. </p>"
    },
    "PutComponentPolicy": {
      "name": "PutComponentPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/PutComponentPolicy"
      },
      "input": {
        "shape": "PutComponentPolicyRequest"
      },
      "output": {
        "shape": "PutComponentPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Applies a policy to a component. We recommend that you call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html\">CreateResourceShare</a> to share resources. If you call the Image Builder API <code>PutComponentPolicy</code>, you must also call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html\">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to all principals with whom the resource is shared. </p>"
    },
    "PutImagePolicy": {
      "name": "PutImagePolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/PutImagePolicy"
      },
      "input": {
        "shape": "PutImagePolicyRequest"
      },
      "output": {
        "shape": "PutImagePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p>Applies a policy to an image. We recommend that you call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html\">CreateResourceShare</a> to share resources. If you call the Image Builder API <code>PutImagePolicy</code>, you must also call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html\">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to all principals with whom the resource is shared. </p>"
    },
    "PutImageRecipePolicy": {
      "name": "PutImageRecipePolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/PutImageRecipePolicy"
      },
      "input": {
        "shape": "PutImageRecipePolicyRequest"
      },
      "output": {
        "shape": "PutImageRecipePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        }
      ],
      "documentation": "<p> Applies a policy to an image recipe. We recommend that you call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html\">CreateResourceShare</a> to share resources. If you call the Image Builder API <code>PutImageRecipePolicy</code>, you must also call the RAM API <a href=\"https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html\">PromoteResourceShareCreatedFromPolicy</a> in order for the resource to be visible to all principals with whom the resource is shared. </p>"
    },
    "StartImagePipelineExecution": {
      "name": "StartImagePipelineExecution",
      "http": {
        "method": "PUT",
        "requestUri": "/StartImagePipelineExecution"
      },
      "input": {
        "shape": "StartImagePipelineExecutionRequest"
      },
      "output": {
        "shape": "StartImagePipelineExecutionResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p> Manually triggers a pipeline to create an image. </p>"
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
          "shape": "ServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Adds a tag to a resource. </p>"
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
          "shape": "ServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Removes a tag from a resource. </p>"
    },
    "UpdateDistributionConfiguration": {
      "name": "UpdateDistributionConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/UpdateDistributionConfiguration"
      },
      "input": {
        "shape": "UpdateDistributionConfigurationRequest"
      },
      "output": {
        "shape": "UpdateDistributionConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p> Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. </p>"
    },
    "UpdateImagePipeline": {
      "name": "UpdateImagePipeline",
      "http": {
        "method": "PUT",
        "requestUri": "/UpdateImagePipeline"
      },
      "input": {
        "shape": "UpdateImagePipelineRequest"
      },
      "output": {
        "shape": "UpdateImagePipelineResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p> Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. </p>"
    },
    "UpdateInfrastructureConfiguration": {
      "name": "UpdateInfrastructureConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/UpdateInfrastructureConfiguration"
      },
      "input": {
        "shape": "UpdateInfrastructureConfigurationRequest"
      },
      "output": {
        "shape": "UpdateInfrastructureConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServiceException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "CallRateLimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p> Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. </p>"
    }
  },
  "shapes": {
    "AccountList": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "Ami": {
      "type": "structure",
      "members": {
        "region": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AWS Region of the EC2 AMI. </p>"
        },
        "image": {
          "shape": "NonEmptyString",
          "documentation": "<p>The AMI ID of the EC2 AMI. </p>"
        },
        "name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the EC2 AMI. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the EC2 AMI. </p>"
        },
        "state": {
          "shape": "ImageState"
        }
      },
      "documentation": "<p> Details of an EC2 AMI. </p>"
    },
    "AmiDistributionConfiguration": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AmiNameString",
          "documentation": "<p>The name of the distribution configuration. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the distribution configuration. </p>"
        },
        "amiTags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to apply to AMIs distributed to this Region. </p>"
        },
        "kmsKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p> The KMS key identifier used to encrypt the distributed image. </p>"
        },
        "launchPermission": {
          "shape": "LaunchPermissionConfiguration",
          "documentation": "<p> Launch permissions can be used to configure which AWS accounts can use the AMI to launch instances. </p>"
        }
      },
      "documentation": "<p> Define and configure the output AMIs of the pipeline. </p>"
    },
    "AmiList": {
      "type": "list",
      "member": {
        "shape": "Ami"
      }
    },
    "AmiNameString": {
      "type": "string",
      "max": 127,
      "min": 1,
      "pattern": "^[-_A-Za-z0-9{][-_A-Za-z0-9\\s:{}\\.]+[-_A-Za-z0-9}]$"
    },
    "Arn": {
      "type": "string"
    },
    "ArnList": {
      "type": "list",
      "member": {
        "shape": "Arn"
      }
    },
    "CancelImageCreationRequest": {
      "type": "structure",
      "required": [
        "imageBuildVersionArn",
        "clientToken"
      ],
      "members": {
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image whose creation you want to cancel.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CancelImageCreationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent.</p>"
        },
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image whose creation has been cancelled.</p>"
        }
      }
    },
    "ClientToken": {
      "type": "string",
      "max": 36,
      "min": 1
    },
    "Component": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the component.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the component.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the component.</p>"
        },
        "changeDescription": {
          "shape": "NonEmptyString",
          "documentation": "<p>The change description of the component.</p>"
        },
        "type": {
          "shape": "ComponentType",
          "documentation": "<p>The type of the component denotes whether the component is used to build the image or only to test it.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the component.</p>"
        },
        "supportedOsVersions": {
          "shape": "OsVersionList",
          "documentation": "<p>The operating system (OS) version supported by the component. If the OS information is available, a prefix match is performed against the parent image OS version during image recipe creation. </p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the component.</p>"
        },
        "data": {
          "shape": "ComponentData",
          "documentation": "<p>The data of the component.</p>"
        },
        "kmsKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The KMS key identifier used to encrypt the component.</p>"
        },
        "encrypted": {
          "shape": "NullableBoolean",
          "documentation": "<p>The encryption status of the component.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date that the component was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags associated with the component.</p>"
        }
      },
      "documentation": "<p>A detailed view of a component.</p>"
    },
    "ComponentBuildVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):component/[a-z0-9-_]+/\\d+\\.\\d+\\.\\d+/\\d+$"
    },
    "ComponentConfiguration": {
      "type": "structure",
      "required": [
        "componentArn"
      ],
      "members": {
        "componentArn": {
          "shape": "ComponentVersionArnOrBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component. </p>"
        }
      },
      "documentation": "<p> Configuration details of the component. </p>"
    },
    "ComponentConfigurationList": {
      "type": "list",
      "member": {
        "shape": "ComponentConfiguration"
      },
      "min": 1
    },
    "ComponentData": {
      "type": "string"
    },
    "ComponentFormat": {
      "type": "string",
      "enum": [
        "SHELL"
      ]
    },
    "ComponentSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the component.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the component.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the component.</p>"
        },
        "supportedOsVersions": {
          "shape": "OsVersionList",
          "documentation": "<p>The operating system (OS) version supported by the component. If the OS information is available, a prefix match is performed against the parent image OS version during image recipe creation. </p>"
        },
        "type": {
          "shape": "ComponentType",
          "documentation": "<p>The type of the component denotes whether the component is used to build the image or only to test it.</p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the component.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the component.</p>"
        },
        "changeDescription": {
          "shape": "NonEmptyString",
          "documentation": "<p>The change description of the component.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date that the component was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags associated with the component.</p>"
        }
      },
      "documentation": "<p>A high-level summary of a component.</p>"
    },
    "ComponentSummaryList": {
      "type": "list",
      "member": {
        "shape": "ComponentSummary"
      }
    },
    "ComponentType": {
      "type": "string",
      "enum": [
        "BUILD",
        "TEST"
      ]
    },
    "ComponentVersion": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the component.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the component.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the component.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the component.</p>"
        },
        "supportedOsVersions": {
          "shape": "OsVersionList",
          "documentation": "<p> The operating system (OS) version supported by the component. If the OS information is available, a prefix match is performed against the parent image OS version during image recipe creation. </p>"
        },
        "type": {
          "shape": "ComponentType",
          "documentation": "<p>The type of the component denotes whether the component is used to build the image or only to test it.</p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the component.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date that the component was created.</p>"
        }
      },
      "documentation": "<p>A high-level overview of a component semantic version.</p>"
    },
    "ComponentVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):component/[a-z0-9-_]+/\\d+\\.\\d+\\.\\d+$"
    },
    "ComponentVersionArnOrBuildVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):component/[a-z0-9-_]+/(?:(?:(\\d+|x)\\.(\\d+|x)\\.(\\d+|x))|(?:\\d+\\.\\d+\\.\\d+/\\d+))$"
    },
    "ComponentVersionList": {
      "type": "list",
      "member": {
        "shape": "ComponentVersion"
      }
    },
    "CreateComponentRequest": {
      "type": "structure",
      "required": [
        "name",
        "semanticVersion",
        "platform",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the component.</p>"
        },
        "semanticVersion": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the component. This version follows the semantic version syntax. For example, major.minor.patch. This could be versioned like software (2.0.1) or like a date (2019.12.01).</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the component. Describes the contents of the component.</p>"
        },
        "changeDescription": {
          "shape": "NonEmptyString",
          "documentation": "<p>The change description of the component. Describes what change has been made in this version, or what makes this version different from other versions of this component.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the component.</p>"
        },
        "supportedOsVersions": {
          "shape": "OsVersionList",
          "documentation": "<p> The operating system (OS) version supported by the component. If the OS information is available, a prefix match is performed against the parent image OS version during image recipe creation. </p>"
        },
        "data": {
          "shape": "InlineComponentData",
          "documentation": "<p>The data of the component. Used to specify the data inline. Either <code>data</code> or <code>uri</code> can be used to specify the data within the component.</p>"
        },
        "uri": {
          "shape": "Uri",
          "documentation": "<p>The uri of the component. Must be an S3 URL and the requester must have permission to access the S3 bucket. If you use S3, you can specify component content up to your service quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the component.</p>"
        },
        "kmsKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the KMS key that should be used to encrypt this component.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the component.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token of the component.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateComponentResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent.</p>"
        },
        "componentBuildVersionArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component that was created by this request.</p>"
        }
      }
    },
    "CreateDistributionConfigurationRequest": {
      "type": "structure",
      "required": [
        "name",
        "distributions",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p> The name of the distribution configuration. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p> The description of the distribution configuration. </p>"
        },
        "distributions": {
          "shape": "DistributionList",
          "documentation": "<p> The distributions of the distribution configuration. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags of the distribution configuration. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token of the distribution configuration. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateDistributionConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p> The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token used to make this request idempotent. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the distribution configuration that was created by this request. </p>"
        }
      }
    },
    "CreateImagePipelineRequest": {
      "type": "structure",
      "required": [
        "name",
        "imageRecipeArn",
        "infrastructureConfigurationArn",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p> The name of the image pipeline. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p> The description of the image pipeline. </p>"
        },
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the image recipe that will be used to configure images created by this image pipeline. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to build images created by this image pipeline. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the distribution configuration that will be used to configure and distribute images created by this image pipeline. </p>"
        },
        "imageTestsConfiguration": {
          "shape": "ImageTestsConfiguration",
          "documentation": "<p> The image test configuration of the image pipeline. </p>"
        },
        "enhancedImageMetadataEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Collects additional information about the image being created, including the operating system (OS) version and package list. This information is used to enhance the overall experience of using EC2 Image Builder. Enabled by default. </p>"
        },
        "schedule": {
          "shape": "Schedule",
          "documentation": "<p> The schedule of the image pipeline. </p>"
        },
        "status": {
          "shape": "PipelineStatus",
          "documentation": "<p> The status of the image pipeline. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags of the image pipeline. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateImagePipelineResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p> The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token used to make this request idempotent. </p>"
        },
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the image pipeline that was created by this request. </p>"
        }
      }
    },
    "CreateImageRecipeRequest": {
      "type": "structure",
      "required": [
        "name",
        "semanticVersion",
        "components",
        "parentImage",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p> The name of the image recipe. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p> The description of the image recipe. </p>"
        },
        "semanticVersion": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the image recipe. </p>"
        },
        "components": {
          "shape": "ComponentConfigurationList",
          "documentation": "<p>The components of the image recipe. </p>"
        },
        "parentImage": {
          "shape": "NonEmptyString",
          "documentation": "<p>The parent image of the image recipe. The value of the string can be the ARN of the parent image or an AMI ID. The format for the ARN follows this example: <code>arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/2019.x.x</code>. The ARN ends with <code>/20xx.x.x</code>, which communicates to EC2 Image Builder that you want to use the latest AMI created in 20xx (year). You can provide the specific version that you want to use, or you can use a wildcard in all of the fields. If you enter an AMI ID for the string value, you must have access to the AMI, and the AMI must be in the same Region in which you are using Image Builder. </p>"
        },
        "blockDeviceMappings": {
          "shape": "InstanceBlockDeviceMappings",
          "documentation": "<p>The block device mappings of the image recipe. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags of the image recipe. </p>"
        },
        "workingDirectory": {
          "shape": "NonEmptyString",
          "documentation": "<p>The working directory to be used during build and test workflows.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateImageRecipeResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that was created by this request. </p>"
        }
      }
    },
    "CreateImageRequest": {
      "type": "structure",
      "required": [
        "imageRecipeArn",
        "infrastructureConfigurationArn",
        "clientToken"
      ],
      "members": {
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the image recipe that defines how images are configured, tested, and assessed. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the distribution configuration that defines and configures the outputs of your pipeline. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the infrastructure configuration that defines the environment in which your image will be built and tested. </p>"
        },
        "imageTestsConfiguration": {
          "shape": "ImageTestsConfiguration",
          "documentation": "<p> The image tests configuration of the image. </p>"
        },
        "enhancedImageMetadataEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Collects additional information about the image being created, including the operating system (OS) version and package list. This information is used to enhance the overall experience of using EC2 Image Builder. Enabled by default. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags of the image. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateImageResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p> The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> The idempotency token used to make this request idempotent. </p>"
        },
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the image that was created by this request. </p>"
        }
      }
    },
    "CreateInfrastructureConfigurationRequest": {
      "type": "structure",
      "required": [
        "name",
        "instanceProfileName",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the infrastructure configuration. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the infrastructure configuration. </p>"
        },
        "instanceTypes": {
          "shape": "InstanceTypeList",
          "documentation": "<p>The instance types of the infrastructure configuration. You can specify one or more instance types to use for this build. The service will pick one of these instance types based on availability. </p>"
        },
        "instanceProfileName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The instance profile to associate with the instance used to customize your EC2 AMI. </p>"
        },
        "securityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The security group IDs to associate with the instance used to customize your EC2 AMI. </p>"
        },
        "subnetId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The subnet ID in which to place the instance used to customize your EC2 AMI. </p>"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>The logging configuration of the infrastructure configuration. </p>"
        },
        "keyPair": {
          "shape": "NonEmptyString",
          "documentation": "<p>The key pair of the infrastructure configuration. This can be used to log on to and debug the instance used to create your image. </p>"
        },
        "terminateInstanceOnFailure": {
          "shape": "NullableBoolean",
          "documentation": "<p>The terminate instance on failure setting of the infrastructure configuration. Set to false if you want Image Builder to retain the instance used to configure your AMI if the build or test phase of your workflow fails. </p>"
        },
        "snsTopicArn": {
          "shape": "SnsTopicArn",
          "documentation": "<p>The SNS topic on which to send image build events. </p>"
        },
        "resourceTags": {
          "shape": "ResourceTagMap",
          "documentation": "<p>The tags attached to the resource created by Image Builder.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the infrastructure configuration. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateInfrastructureConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was created by this request. </p>"
        }
      }
    },
    "DateTime": {
      "type": "string"
    },
    "DeleteComponentRequest": {
      "type": "structure",
      "required": [
        "componentBuildVersionArn"
      ],
      "members": {
        "componentBuildVersionArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component build version to delete. </p>",
          "location": "querystring",
          "locationName": "componentBuildVersionArn"
        }
      }
    },
    "DeleteComponentResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "componentBuildVersionArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component build version that was deleted. </p>"
        }
      }
    },
    "DeleteDistributionConfigurationRequest": {
      "type": "structure",
      "required": [
        "distributionConfigurationArn"
      ],
      "members": {
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration to delete. </p>",
          "location": "querystring",
          "locationName": "distributionConfigurationArn"
        }
      }
    },
    "DeleteDistributionConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration that was deleted. </p>"
        }
      }
    },
    "DeleteImagePipelineRequest": {
      "type": "structure",
      "required": [
        "imagePipelineArn"
      ],
      "members": {
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline to delete. </p>",
          "location": "querystring",
          "locationName": "imagePipelineArn"
        }
      }
    },
    "DeleteImagePipelineResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that was deleted. </p>"
        }
      }
    },
    "DeleteImageRecipeRequest": {
      "type": "structure",
      "required": [
        "imageRecipeArn"
      ],
      "members": {
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe to delete. </p>",
          "location": "querystring",
          "locationName": "imageRecipeArn"
        }
      }
    },
    "DeleteImageRecipeResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that was deleted. </p>"
        }
      }
    },
    "DeleteImageRequest": {
      "type": "structure",
      "required": [
        "imageBuildVersionArn"
      ],
      "members": {
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image to delete. </p>",
          "location": "querystring",
          "locationName": "imageBuildVersionArn"
        }
      }
    },
    "DeleteImageResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image that was deleted. </p>"
        }
      }
    },
    "DeleteInfrastructureConfigurationRequest": {
      "type": "structure",
      "required": [
        "infrastructureConfigurationArn"
      ],
      "members": {
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete. </p>",
          "location": "querystring",
          "locationName": "infrastructureConfigurationArn"
        }
      }
    },
    "DeleteInfrastructureConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was deleted. </p>"
        }
      }
    },
    "Distribution": {
      "type": "structure",
      "required": [
        "region"
      ],
      "members": {
        "region": {
          "shape": "NonEmptyString",
          "documentation": "<p>The target Region. </p>"
        },
        "amiDistributionConfiguration": {
          "shape": "AmiDistributionConfiguration",
          "documentation": "<p>The specific AMI settings (for example, launch permissions, AMI tags). </p>"
        },
        "licenseConfigurationArns": {
          "shape": "ArnList",
          "documentation": "<p>The License Manager Configuration to associate with the AMI in the specified Region.</p>"
        }
      },
      "documentation": "<p> Defines the settings for a specific Region. </p>"
    },
    "DistributionConfiguration": {
      "type": "structure",
      "required": [
        "timeoutMinutes"
      ],
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the distribution configuration.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the distribution configuration.</p>"
        },
        "distributions": {
          "shape": "DistributionList",
          "documentation": "<p>The distributions of the distribution configuration.</p>"
        },
        "timeoutMinutes": {
          "shape": "DistributionTimeoutMinutes",
          "documentation": "<p>The maximum duration in minutes for this distribution configuration.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this distribution configuration was created.</p>"
        },
        "dateUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this distribution configuration was last updated.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the distribution configuration.</p>"
        }
      },
      "documentation": "<p>A distribution configuration.</p>"
    },
    "DistributionConfigurationArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):distribution-configuration/[a-z0-9-_]+$"
    },
    "DistributionConfigurationSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the distribution configuration.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the distribution configuration.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the distribution configuration was created.</p>"
        },
        "dateUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the distribution configuration was updated.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags associated with the distribution configuration.</p>"
        }
      },
      "documentation": "<p>A high-level overview of a distribution configuration.</p>"
    },
    "DistributionConfigurationSummaryList": {
      "type": "list",
      "member": {
        "shape": "DistributionConfigurationSummary"
      }
    },
    "DistributionList": {
      "type": "list",
      "member": {
        "shape": "Distribution"
      }
    },
    "DistributionTimeoutMinutes": {
      "type": "integer",
      "max": 720,
      "min": 30
    },
    "EbsInstanceBlockDeviceSpecification": {
      "type": "structure",
      "members": {
        "encrypted": {
          "shape": "NullableBoolean",
          "documentation": "<p>Use to configure device encryption.</p>"
        },
        "deleteOnTermination": {
          "shape": "NullableBoolean",
          "documentation": "<p>Use to configure delete on termination of the associated device.</p>"
        },
        "iops": {
          "shape": "EbsIopsInteger",
          "documentation": "<p>Use to configure device IOPS.</p>"
        },
        "kmsKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p>Use to configure the KMS key to use when encrypting the device.</p>"
        },
        "snapshotId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The snapshot that defines the device contents.</p>"
        },
        "volumeSize": {
          "shape": "EbsVolumeSizeInteger",
          "documentation": "<p>Use to override the device's volume size.</p>"
        },
        "volumeType": {
          "shape": "EbsVolumeType",
          "documentation": "<p>Use to override the device's volume type.</p>"
        }
      },
      "documentation": "<p>Amazon EBS-specific block device mapping specifications.</p>"
    },
    "EbsIopsInteger": {
      "type": "integer",
      "max": 10000,
      "min": 100
    },
    "EbsVolumeSizeInteger": {
      "type": "integer",
      "max": 16000,
      "min": 1
    },
    "EbsVolumeType": {
      "type": "string",
      "enum": [
        "standard",
        "io1",
        "gp2",
        "sc1",
        "st1"
      ]
    },
    "EmptyString": {
      "type": "string",
      "max": 0,
      "min": 0
    },
    "Filter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the filter. Filter names are case-sensitive. </p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>The filter values. Filter values are case-sensitive. </p>"
        }
      },
      "documentation": "<p>A filter name and value pair that is used to return a more specific list of results from a list operation. Filters can be used to match a set of resources by specific criteria, such as tags, attributes, or IDs. </p>"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter"
      },
      "max": 10,
      "min": 1
    },
    "FilterName": {
      "type": "string",
      "pattern": "^[a-zA-Z]{1,1024}$"
    },
    "FilterValue": {
      "type": "string",
      "pattern": "^[0-9a-zA-Z./_ :-]{1,1024}$"
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      },
      "max": 10,
      "min": 1
    },
    "GetComponentPolicyRequest": {
      "type": "structure",
      "required": [
        "componentArn"
      ],
      "members": {
        "componentArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component whose policy you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "componentArn"
        }
      }
    },
    "GetComponentPolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The component policy. </p>"
        }
      }
    },
    "GetComponentRequest": {
      "type": "structure",
      "required": [
        "componentBuildVersionArn"
      ],
      "members": {
        "componentBuildVersionArn": {
          "shape": "ComponentVersionArnOrBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component that you want to retrieve. Regex requires \"/\\d+$\" suffix.</p>",
          "location": "querystring",
          "locationName": "componentBuildVersionArn"
        }
      }
    },
    "GetComponentResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "component": {
          "shape": "Component",
          "documentation": "<p>The component object associated with the specified ARN. </p>"
        }
      }
    },
    "GetDistributionConfigurationRequest": {
      "type": "structure",
      "required": [
        "distributionConfigurationArn"
      ],
      "members": {
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration that you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "distributionConfigurationArn"
        }
      }
    },
    "GetDistributionConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "distributionConfiguration": {
          "shape": "DistributionConfiguration",
          "documentation": "<p>The distribution configuration object. </p>"
        }
      }
    },
    "GetImagePipelineRequest": {
      "type": "structure",
      "required": [
        "imagePipelineArn"
      ],
      "members": {
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "imagePipelineArn"
        }
      }
    },
    "GetImagePipelineResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imagePipeline": {
          "shape": "ImagePipeline",
          "documentation": "<p>The image pipeline object. </p>"
        }
      }
    },
    "GetImagePolicyRequest": {
      "type": "structure",
      "required": [
        "imageArn"
      ],
      "members": {
        "imageArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "imageArn"
        }
      }
    },
    "GetImagePolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The image policy object. </p>"
        }
      }
    },
    "GetImageRecipePolicyRequest": {
      "type": "structure",
      "required": [
        "imageRecipeArn"
      ],
      "members": {
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "imageRecipeArn"
        }
      }
    },
    "GetImageRecipePolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The image recipe policy object. </p>"
        }
      }
    },
    "GetImageRecipeRequest": {
      "type": "structure",
      "required": [
        "imageRecipeArn"
      ],
      "members": {
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "imageRecipeArn"
        }
      }
    },
    "GetImageRecipeResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageRecipe": {
          "shape": "ImageRecipe",
          "documentation": "<p>The image recipe object. </p>"
        }
      }
    },
    "GetImageRequest": {
      "type": "structure",
      "required": [
        "imageBuildVersionArn"
      ],
      "members": {
        "imageBuildVersionArn": {
          "shape": "ImageVersionArnOrBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image that you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "imageBuildVersionArn"
        }
      }
    },
    "GetImageResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "image": {
          "shape": "Image",
          "documentation": "<p>The image object. </p>"
        }
      }
    },
    "GetInfrastructureConfigurationRequest": {
      "type": "structure",
      "required": [
        "infrastructureConfigurationArn"
      ],
      "members": {
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to retrieve. </p>",
          "location": "querystring",
          "locationName": "infrastructureConfigurationArn"
        }
      },
      "documentation": "<p> GetInfrastructureConfiguration request object. </p>"
    },
    "GetInfrastructureConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "infrastructureConfiguration": {
          "shape": "InfrastructureConfiguration",
          "documentation": "<p>The infrastructure configuration object. </p>"
        }
      },
      "documentation": "<p>GetInfrastructureConfiguration response object. </p>"
    },
    "Image": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the image.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image.</p>"
        },
        "enhancedImageMetadataEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Collects additional information about the image being created, including the operating system (OS) version and package list. This information is used to enhance the overall experience of using EC2 Image Builder. Enabled by default. </p>"
        },
        "osVersion": {
          "shape": "OsVersion",
          "documentation": "<p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019. </p>"
        },
        "state": {
          "shape": "ImageState",
          "documentation": "<p>The state of the image.</p>"
        },
        "imageRecipe": {
          "shape": "ImageRecipe",
          "documentation": "<p>The image recipe used when creating the image.</p>"
        },
        "sourcePipelineName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image pipeline that created this image.</p>"
        },
        "sourcePipelineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that created this image.</p>"
        },
        "infrastructureConfiguration": {
          "shape": "InfrastructureConfiguration",
          "documentation": "<p>The infrastructure used when creating this image.</p>"
        },
        "distributionConfiguration": {
          "shape": "DistributionConfiguration",
          "documentation": "<p>The distribution configuration used when creating this image.</p>"
        },
        "imageTestsConfiguration": {
          "shape": "ImageTestsConfiguration",
          "documentation": "<p>The image tests configuration used when creating this image.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image was created.</p>"
        },
        "outputResources": {
          "shape": "OutputResources",
          "documentation": "<p>The output resources produced when creating this image.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the image.</p>"
        }
      },
      "documentation": "<p>An image build version.</p>"
    },
    "ImageBuildVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image/[a-z0-9-_]+/\\d+\\.\\d+\\.\\d+/\\d+$"
    },
    "ImageBuilderArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):(?:image-recipe|infrastructure-configuration|distribution-configuration|component|image|image-pipeline)/[a-z0-9-_]+(?:/(?:(?:x|\\d+)\\.(?:x|\\d+)\\.(?:x|\\d+))(?:/\\d+)?)?$"
    },
    "ImagePipeline": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image pipeline.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the image pipeline.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image pipeline.</p>"
        },
        "enhancedImageMetadataEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Collects additional information about the image being created, including the operating system (OS) version and package list. This information is used to enhance the overall experience of using EC2 Image Builder. Enabled by default. </p>"
        },
        "imageRecipeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe associated with this image pipeline.</p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration associated with this image pipeline.</p>"
        },
        "distributionConfigurationArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration associated with this image pipeline.</p>"
        },
        "imageTestsConfiguration": {
          "shape": "ImageTestsConfiguration",
          "documentation": "<p>The image tests configuration of the image pipeline.</p>"
        },
        "schedule": {
          "shape": "Schedule",
          "documentation": "<p>The schedule of the image pipeline.</p>"
        },
        "status": {
          "shape": "PipelineStatus",
          "documentation": "<p>The status of the image pipeline.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image pipeline was created.</p>"
        },
        "dateUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image pipeline was last updated.</p>"
        },
        "dateLastRun": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image pipeline was last run.</p>"
        },
        "dateNextRun": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image pipeline will next be run.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of this image pipeline.</p>"
        }
      },
      "documentation": "<p>Details of an image pipeline.</p>"
    },
    "ImagePipelineArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image-pipeline/[a-z0-9-_]+$"
    },
    "ImagePipelineList": {
      "type": "list",
      "member": {
        "shape": "ImagePipeline"
      }
    },
    "ImageRecipe": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image recipe.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the image recipe.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image recipe.</p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the image recipe.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the image recipe.</p>"
        },
        "components": {
          "shape": "ComponentConfigurationList",
          "documentation": "<p>The components of the image recipe.</p>"
        },
        "parentImage": {
          "shape": "NonEmptyString",
          "documentation": "<p>The parent image of the image recipe.</p>"
        },
        "blockDeviceMappings": {
          "shape": "InstanceBlockDeviceMappings",
          "documentation": "<p>The block device mappings to apply when creating images from this recipe.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image recipe was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the image recipe.</p>"
        },
        "workingDirectory": {
          "shape": "NonEmptyString",
          "documentation": "<p>The working directory to be used during build and test workflows.</p>"
        }
      },
      "documentation": "<p>An image recipe.</p>"
    },
    "ImageRecipeArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image-recipe/[a-z0-9-_]+/\\d+\\.\\d+\\.\\d+$"
    },
    "ImageRecipeSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image recipe.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image recipe.</p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the image recipe.</p>"
        },
        "parentImage": {
          "shape": "NonEmptyString",
          "documentation": "<p>The parent image of the image recipe.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image recipe was created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the image recipe.</p>"
        }
      },
      "documentation": "<p>A summary of an image recipe.</p>"
    },
    "ImageRecipeSummaryList": {
      "type": "list",
      "member": {
        "shape": "ImageRecipeSummary"
      }
    },
    "ImageState": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "ImageStatus",
          "documentation": "<p>The status of the image. </p>"
        },
        "reason": {
          "shape": "NonEmptyString",
          "documentation": "<p>The reason for the image's status. </p>"
        }
      },
      "documentation": "<p> Image state shows the image status and the reason for that status. </p>"
    },
    "ImageStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "CREATING",
        "BUILDING",
        "TESTING",
        "DISTRIBUTING",
        "INTEGRATING",
        "AVAILABLE",
        "CANCELLED",
        "FAILED",
        "DEPRECATED",
        "DELETED"
      ]
    },
    "ImageSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the image.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image.</p>"
        },
        "osVersion": {
          "shape": "OsVersion",
          "documentation": "<p>The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019. </p>"
        },
        "state": {
          "shape": "ImageState",
          "documentation": "<p>The state of the image.</p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the image.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which this image was created.</p>"
        },
        "outputResources": {
          "shape": "OutputResources",
          "documentation": "<p>The output resources produced when creating this image.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the image.</p>"
        }
      },
      "documentation": "<p>An image summary.</p>"
    },
    "ImageSummaryList": {
      "type": "list",
      "member": {
        "shape": "ImageSummary"
      }
    },
    "ImageTestsConfiguration": {
      "type": "structure",
      "members": {
        "imageTestsEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p>Defines if tests should be executed when building this image.</p>"
        },
        "timeoutMinutes": {
          "shape": "ImageTestsTimeoutMinutes",
          "documentation": "<p>The maximum time in minutes that tests are permitted to run.</p>"
        }
      },
      "documentation": "<p>Image tests configuration.</p>"
    },
    "ImageTestsTimeoutMinutes": {
      "type": "integer",
      "max": 1440,
      "min": 60
    },
    "ImageVersion": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image semantic version.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the image semantic version.</p>"
        },
        "version": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the image semantic version.</p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the image semantic version.</p>"
        },
        "osVersion": {
          "shape": "OsVersion",
          "documentation": "<p> The operating system version of the instance. For example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019. </p>"
        },
        "owner": {
          "shape": "NonEmptyString",
          "documentation": "<p>The owner of the image semantic version.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date at which this image semantic version was created.</p>"
        }
      },
      "documentation": "<p>An image semantic version.</p>"
    },
    "ImageVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image/[a-z0-9-_]+/\\d+\\.\\d+\\.\\d+$"
    },
    "ImageVersionArnOrBuildVersionArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):image/[a-z0-9-_]+/(?:(?:(\\d+|x)\\.(\\d+|x)\\.(\\d+|x))|(?:\\d+\\.\\d+\\.\\d+/\\d+))$"
    },
    "ImageVersionList": {
      "type": "list",
      "member": {
        "shape": "ImageVersion"
      }
    },
    "ImportComponentRequest": {
      "type": "structure",
      "required": [
        "name",
        "semanticVersion",
        "type",
        "format",
        "platform",
        "clientToken"
      ],
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p> The name of the component. </p>"
        },
        "semanticVersion": {
          "shape": "VersionNumber",
          "documentation": "<p>The semantic version of the component. This version follows the semantic version syntax. For example, major.minor.patch. This could be versioned like software (2.0.1) or like a date (2019.12.01).</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the component. Describes the contents of the component. </p>"
        },
        "changeDescription": {
          "shape": "NonEmptyString",
          "documentation": "<p>The change description of the component. Describes what change has been made in this version, or what makes this version different from other versions of this component. </p>"
        },
        "type": {
          "shape": "ComponentType",
          "documentation": "<p>The type of the component denotes whether the component is used to build the image or only to test it. </p>"
        },
        "format": {
          "shape": "ComponentFormat",
          "documentation": "<p>The format of the resource that you want to import as a component. </p>"
        },
        "platform": {
          "shape": "Platform",
          "documentation": "<p>The platform of the component. </p>"
        },
        "data": {
          "shape": "NonEmptyString",
          "documentation": "<p>The data of the component. Used to specify the data inline. Either <code>data</code> or <code>uri</code> can be used to specify the data within the component.</p>"
        },
        "uri": {
          "shape": "Uri",
          "documentation": "<p>The uri of the component. Must be an S3 URL and the requester must have permission to access the S3 bucket. If you use S3, you can specify component content up to your service quota. Either <code>data</code> or <code>uri</code> can be used to specify the data within the component. </p>"
        },
        "kmsKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The ID of the KMS key that should be used to encrypt this component. </p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the component. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token of the component. </p>",
          "idempotencyToken": true
        }
      }
    },
    "ImportComponentResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "componentBuildVersionArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the imported component. </p>"
        }
      }
    },
    "InfrastructureConfiguration": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the infrastructure configuration.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the infrastructure configuration.</p>"
        },
        "instanceTypes": {
          "shape": "InstanceTypeList",
          "documentation": "<p>The instance types of the infrastructure configuration.</p>"
        },
        "instanceProfileName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The instance profile of the infrastructure configuration.</p>"
        },
        "securityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The security group IDs of the infrastructure configuration.</p>"
        },
        "subnetId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The subnet ID of the infrastructure configuration.</p>"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>The logging configuration of the infrastructure configuration.</p>"
        },
        "keyPair": {
          "shape": "NonEmptyString",
          "documentation": "<p>The EC2 key pair of the infrastructure configuration.</p>"
        },
        "terminateInstanceOnFailure": {
          "shape": "NullableBoolean",
          "documentation": "<p>The terminate instance on failure configuration of the infrastructure configuration.</p>"
        },
        "snsTopicArn": {
          "shape": "NonEmptyString",
          "documentation": "<p>The SNS topic Amazon Resource Name (ARN) of the infrastructure configuration.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the infrastructure configuration was created.</p>"
        },
        "dateUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the infrastructure configuration was last updated.</p>"
        },
        "resourceTags": {
          "shape": "ResourceTagMap",
          "documentation": "<p>The tags attached to the resource created by Image Builder.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the infrastructure configuration.</p>"
        }
      },
      "documentation": "<p>Details of the infrastructure configuration.</p>"
    },
    "InfrastructureConfigurationArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:imagebuilder:[^:]+:(?:\\d{12}|aws):infrastructure-configuration/[a-z0-9-_]+$"
    },
    "InfrastructureConfigurationSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the infrastructure configuration.</p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the infrastructure configuration.</p>"
        },
        "dateCreated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the infrastructure configuration was created.</p>"
        },
        "dateUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date on which the infrastructure configuration was last updated.</p>"
        },
        "resourceTags": {
          "shape": "ResourceTagMap",
          "documentation": "<p>The tags attached to the image created by Image Builder.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the infrastructure configuration.</p>"
        }
      },
      "documentation": "<p>The infrastructure used when building EC2 AMIs.</p>"
    },
    "InfrastructureConfigurationSummaryList": {
      "type": "list",
      "member": {
        "shape": "InfrastructureConfigurationSummary"
      }
    },
    "InlineComponentData": {
      "type": "string",
      "max": 16000,
      "min": 1
    },
    "InstanceBlockDeviceMapping": {
      "type": "structure",
      "members": {
        "deviceName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The device to which these mappings apply.</p>"
        },
        "ebs": {
          "shape": "EbsInstanceBlockDeviceSpecification",
          "documentation": "<p>Use to manage Amazon EBS-specific configuration for this mapping.</p>"
        },
        "virtualName": {
          "shape": "NonEmptyString",
          "documentation": "<p>Use to manage instance ephemeral devices.</p>"
        },
        "noDevice": {
          "shape": "EmptyString",
          "documentation": "<p>Use to remove a mapping from the parent image.</p>"
        }
      },
      "documentation": "<p>Defines block device mappings for the instance used to configure your image.</p>"
    },
    "InstanceBlockDeviceMappings": {
      "type": "list",
      "member": {
        "shape": "InstanceBlockDeviceMapping"
      }
    },
    "InstanceType": {
      "type": "string"
    },
    "InstanceTypeList": {
      "type": "list",
      "member": {
        "shape": "InstanceType"
      }
    },
    "LaunchPermissionConfiguration": {
      "type": "structure",
      "members": {
        "userIds": {
          "shape": "AccountList",
          "documentation": "<p>The AWS account ID. </p>"
        },
        "userGroups": {
          "shape": "StringList",
          "documentation": "<p>The name of the group. </p>"
        }
      },
      "documentation": "<p>Describes the configuration for a launch permission. The launch permission modification request is sent to the <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">EC2 ModifyImageAttribute</a> API on behalf of the user for each Region they have selected to distribute the AMI. To make an AMI public, set the launch permission authorized accounts to <code>all</code>. See the examples for making an AMI public at <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html\">EC2 ModifyImageAttribute</a>. </p>"
    },
    "ListComponentBuildVersionsRequest": {
      "type": "structure",
      "required": [
        "componentVersionArn"
      ],
      "members": {
        "componentVersionArn": {
          "shape": "ComponentVersionArn",
          "documentation": "<p>The component version Amazon Resource Name (ARN) whose versions you want to list. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListComponentBuildVersionsResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "componentSummaryList": {
          "shape": "ComponentSummaryList",
          "documentation": "<p>The list of component summaries for the specified semantic version. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListComponentsRequest": {
      "type": "structure",
      "members": {
        "owner": {
          "shape": "Ownership",
          "documentation": "<p>The owner defines which components you want to list. By default, this request will only show components owned by your account. You can use this field to specify if you want to view components owned by yourself, by Amazon, or those components that have been shared with you by other customers. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListComponentsResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "componentVersionList": {
          "shape": "ComponentVersionList",
          "documentation": "<p>The list of component semantic versions. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListDistributionConfigurationsRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p> <ul> <li> <p> <code>name</code> - The name of this distribution configuration.</p> </li> </ul>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListDistributionConfigurationsResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "distributionConfigurationSummaryList": {
          "shape": "DistributionConfigurationSummaryList",
          "documentation": "<p>The list of distributions. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListImageBuildVersionsRequest": {
      "type": "structure",
      "required": [
        "imageVersionArn"
      ],
      "members": {
        "imageVersionArn": {
          "shape": "ImageVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image whose build versions you want to retrieve. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListImageBuildVersionsResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageSummaryList": {
          "shape": "ImageSummaryList",
          "documentation": "<p>The list of image build versions. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListImagePipelineImagesRequest": {
      "type": "structure",
      "required": [
        "imagePipelineArn"
      ],
      "members": {
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to view. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListImagePipelineImagesResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageSummaryList": {
          "shape": "ImageSummaryList",
          "documentation": "<p>The list of images built by this pipeline. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListImagePipelinesRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListImagePipelinesResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imagePipelineList": {
          "shape": "ImagePipelineList",
          "documentation": "<p>The list of image pipelines. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListImageRecipesRequest": {
      "type": "structure",
      "members": {
        "owner": {
          "shape": "Ownership",
          "documentation": "<p>The owner defines which image recipes you want to list. By default, this request will only show image recipes owned by your account. You can use this field to specify if you want to view image recipes owned by yourself, by Amazon, or those image recipes that have been shared with you by other customers. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListImageRecipesResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageRecipeSummaryList": {
          "shape": "ImageRecipeSummaryList",
          "documentation": "<p>The list of image pipelines. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListImagesRequest": {
      "type": "structure",
      "members": {
        "owner": {
          "shape": "Ownership",
          "documentation": "<p>The owner defines which images you want to list. By default, this request will only show images owned by your account. You can use this field to specify if you want to view images owned by yourself, by Amazon, or those images that have been shared with you by other customers. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListImagesResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageVersionList": {
          "shape": "ImageVersionList",
          "documentation": "<p>The list of image semantic versions. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects. </p>"
        }
      }
    },
    "ListInfrastructureConfigurationsRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters. </p>"
        },
        "maxResults": {
          "shape": "RestrictedInteger",
          "documentation": "<p>The maximum items to return in a request. </p>",
          "box": true
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ListInfrastructureConfigurationsResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "infrastructureConfigurationSummaryList": {
          "shape": "InfrastructureConfigurationSummaryList",
          "documentation": "<p>The list of infrastructure configurations. </p>"
        },
        "nextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>The next token used for paginated responses. When this is not empty, there are additional elements that the service has not included in this request. Use this token with the next request to retrieve additional objects.</p>"
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
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve. </p>",
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
          "documentation": "<p>The tags for the specified resource. </p>"
        }
      }
    },
    "Logging": {
      "type": "structure",
      "members": {
        "s3Logs": {
          "shape": "S3Logs",
          "documentation": "<p>The Amazon S3 logging configuration.</p>"
        }
      },
      "documentation": "<p>Logging configuration defines where Image Builder uploads your logs.</p>"
    },
    "NonEmptyString": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "NullableBoolean": {
      "type": "boolean"
    },
    "OsVersion": {
      "type": "string",
      "min": 1
    },
    "OsVersionList": {
      "type": "list",
      "member": {
        "shape": "OsVersion"
      },
      "max": 25,
      "min": 1
    },
    "OutputResources": {
      "type": "structure",
      "members": {
        "amis": {
          "shape": "AmiList",
          "documentation": "<p>The EC2 AMIs created by this image. </p>"
        }
      },
      "documentation": "<p>The resources produced by this image. </p>"
    },
    "Ownership": {
      "type": "string",
      "enum": [
        "Self",
        "Shared",
        "Amazon"
      ]
    },
    "PipelineExecutionStartCondition": {
      "type": "string",
      "enum": [
        "EXPRESSION_MATCH_ONLY",
        "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
      ]
    },
    "PipelineStatus": {
      "type": "string",
      "enum": [
        "DISABLED",
        "ENABLED"
      ]
    },
    "Platform": {
      "type": "string",
      "enum": [
        "Windows",
        "Linux"
      ]
    },
    "PutComponentPolicyRequest": {
      "type": "structure",
      "required": [
        "componentArn",
        "policy"
      ],
      "members": {
        "componentArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component that this policy should be applied to. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The policy to apply. </p>"
        }
      }
    },
    "PutComponentPolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "componentArn": {
          "shape": "ComponentBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the component that this policy was applied to. </p>"
        }
      }
    },
    "PutImagePolicyRequest": {
      "type": "structure",
      "required": [
        "imageArn",
        "policy"
      ],
      "members": {
        "imageArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image that this policy should be applied to. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The policy to apply. </p>"
        }
      }
    },
    "PutImagePolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image that this policy was applied to. </p>"
        }
      }
    },
    "PutImageRecipePolicyRequest": {
      "type": "structure",
      "required": [
        "imageRecipeArn",
        "policy"
      ],
      "members": {
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied to. </p>"
        },
        "policy": {
          "shape": "ResourcePolicyDocument",
          "documentation": "<p>The policy to apply. </p>"
        }
      }
    },
    "PutImageRecipePolicyResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that this policy was applied to. </p>"
        }
      }
    },
    "ResourceName": {
      "type": "string",
      "pattern": "^[-_A-Za-z-0-9][-_A-Za-z0-9 ]{1,126}[-_A-Za-z-0-9]$"
    },
    "ResourcePolicyDocument": {
      "type": "string",
      "max": 30000,
      "min": 1
    },
    "ResourceTagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 30,
      "min": 1
    },
    "RestrictedInteger": {
      "type": "integer",
      "max": 25,
      "min": 1
    },
    "S3Logs": {
      "type": "structure",
      "members": {
        "s3BucketName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon S3 bucket in which to store the logs.</p>"
        },
        "s3KeyPrefix": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon S3 path in which to store the logs.</p>"
        }
      },
      "documentation": "<p>Amazon S3 logging configuration.</p>"
    },
    "Schedule": {
      "type": "structure",
      "members": {
        "scheduleExpression": {
          "shape": "NonEmptyString",
          "documentation": "<p>The expression determines how often EC2 Image Builder evaluates your <code>pipelineExecutionStartCondition</code>.</p>"
        },
        "pipelineExecutionStartCondition": {
          "shape": "PipelineExecutionStartCondition",
          "documentation": "<p>The condition configures when the pipeline should trigger a new image build. When the <code>pipelineExecutionStartCondition</code> is set to <code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code>, EC2 Image Builder will build a new image only when there are known changes pending. When it is set to <code>EXPRESSION_MATCH_ONLY</code>, it will build a new image every time the CRON expression matches the current time.</p>"
        }
      },
      "documentation": "<p>A schedule configures how often and when a pipeline will automatically create a new image. </p>"
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "SnsTopicArn": {
      "type": "string",
      "pattern": "^arn:aws[^:]*:sns:[^:]+:\\d{12}:[a-zA-Z0-9-_]{1,256}$"
    },
    "StartImagePipelineExecutionRequest": {
      "type": "structure",
      "required": [
        "imagePipelineArn",
        "clientToken"
      ],
      "members": {
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually invoke. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "StartImagePipelineExecutionResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent.</p>"
        },
        "imageBuildVersionArn": {
          "shape": "ImageBuildVersionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image that was created by this request.</p>"
        }
      }
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
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
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to tag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to apply to the resource. </p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ImageBuilderArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to untag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys to remove from the resource. </p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDistributionConfigurationRequest": {
      "type": "structure",
      "required": [
        "distributionConfigurationArn",
        "distributions",
        "clientToken"
      ],
      "members": {
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration that you want to update. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the distribution configuration. </p>"
        },
        "distributions": {
          "shape": "DistributionList",
          "documentation": "<p>The distributions of the distribution configuration. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token of the distribution configuration. </p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateDistributionConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration that was updated by this request. </p>"
        }
      }
    },
    "UpdateImagePipelineRequest": {
      "type": "structure",
      "required": [
        "imagePipelineArn",
        "imageRecipeArn",
        "infrastructureConfigurationArn",
        "clientToken"
      ],
      "members": {
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that you want to update. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the image pipeline. </p>"
        },
        "imageRecipeArn": {
          "shape": "ImageRecipeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure images updated by this image pipeline. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used to build images updated by this image pipeline. </p>"
        },
        "distributionConfigurationArn": {
          "shape": "DistributionConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to configure and distribute images updated by this image pipeline. </p>"
        },
        "imageTestsConfiguration": {
          "shape": "ImageTestsConfiguration",
          "documentation": "<p>The image test configuration of the image pipeline. </p>"
        },
        "enhancedImageMetadataEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p> Collects additional information about the image being created, including the operating system (OS) version and package list. This information is used to enhance the overall experience of using EC2 Image Builder. Enabled by default. </p>"
        },
        "schedule": {
          "shape": "Schedule",
          "documentation": "<p>The schedule of the image pipeline. </p>"
        },
        "status": {
          "shape": "PipelineStatus",
          "documentation": "<p>The status of the image pipeline. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateImagePipelineResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "imagePipelineArn": {
          "shape": "ImagePipelineArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the image pipeline that was updated by this request. </p>"
        }
      }
    },
    "UpdateInfrastructureConfigurationRequest": {
      "type": "structure",
      "required": [
        "infrastructureConfigurationArn",
        "instanceProfileName",
        "clientToken"
      ],
      "members": {
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to update. </p>"
        },
        "description": {
          "shape": "NonEmptyString",
          "documentation": "<p>The description of the infrastructure configuration. </p>"
        },
        "instanceTypes": {
          "shape": "InstanceTypeList",
          "documentation": "<p>The instance types of the infrastructure configuration. You can specify one or more instance types to use for this build. The service will pick one of these instance types based on availability. </p>"
        },
        "instanceProfileName": {
          "shape": "NonEmptyString",
          "documentation": "<p>The instance profile to associate with the instance used to customize your EC2 AMI. </p>"
        },
        "securityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The security group IDs to associate with the instance used to customize your EC2 AMI. </p>"
        },
        "subnetId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The subnet ID to place the instance used to customize your EC2 AMI in. </p>"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>The logging configuration of the infrastructure configuration. </p>"
        },
        "keyPair": {
          "shape": "NonEmptyString",
          "documentation": "<p>The key pair of the infrastructure configuration. This can be used to log on to and debug the instance used to create your image. </p>"
        },
        "terminateInstanceOnFailure": {
          "shape": "NullableBoolean",
          "documentation": "<p>The terminate instance on failure setting of the infrastructure configuration. Set to false if you want Image Builder to retain the instance used to configure your AMI if the build or test phase of your workflow fails. </p>"
        },
        "snsTopicArn": {
          "shape": "SnsTopicArn",
          "documentation": "<p>The SNS topic on which to send image build events. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>",
          "idempotencyToken": true
        },
        "resourceTags": {
          "shape": "ResourceTagMap",
          "documentation": "<p>The tags attached to the resource created by Image Builder.</p>"
        }
      }
    },
    "UpdateInfrastructureConfigurationResponse": {
      "type": "structure",
      "members": {
        "requestId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The request ID that uniquely identifies this request. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token used to make this request idempotent. </p>"
        },
        "infrastructureConfigurationArn": {
          "shape": "InfrastructureConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the infrastructure configuration that was updated by this request. </p>"
        }
      }
    },
    "Uri": {
      "type": "string"
    },
    "VersionNumber": {
      "type": "string",
      "pattern": "^[0-9]+\\.[0-9]+\\.[0-9]+$"
    }
  },
  "documentation": "<p>EC2 Image Builder is a fully managed AWS service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date “golden” server images that are pre-installed and pre-configured with software and settings to meet specific IT standards.</p>"
}
]===]))