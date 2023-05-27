local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-12-10",
    "endpointPrefix": "servicecatalog",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Service Catalog",
    "serviceId": "Service Catalog",
    "signatureVersion": "v4",
    "targetPrefix": "AWS242ServiceCatalogService",
    "uid": "servicecatalog-2015-12-10"
  },
  "operations": {
    "AcceptPortfolioShare": {
      "name": "AcceptPortfolioShare",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptPortfolioShareInput"
      },
      "output": {
        "shape": "AcceptPortfolioShareOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Accepts an offer to share the specified portfolio.</p>"
    },
    "AssociateBudgetWithResource": {
      "name": "AssociateBudgetWithResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateBudgetWithResourceInput"
      },
      "output": {
        "shape": "AssociateBudgetWithResourceOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "DuplicateResourceException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Associates the specified budget with the specified resource.</p>"
    },
    "AssociatePrincipalWithPortfolio": {
      "name": "AssociatePrincipalWithPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociatePrincipalWithPortfolioInput"
      },
      "output": {
        "shape": "AssociatePrincipalWithPortfolioOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Associates the specified principal ARN with the specified portfolio.</p>"
    },
    "AssociateProductWithPortfolio": {
      "name": "AssociateProductWithPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateProductWithPortfolioInput"
      },
      "output": {
        "shape": "AssociateProductWithPortfolioOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Associates the specified product with the specified portfolio.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "AssociateServiceActionWithProvisioningArtifact": {
      "name": "AssociateServiceActionWithProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateServiceActionWithProvisioningArtifactInput"
      },
      "output": {
        "shape": "AssociateServiceActionWithProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "DuplicateResourceException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Associates a self-service action with a provisioning artifact.</p>"
    },
    "AssociateTagOptionWithResource": {
      "name": "AssociateTagOptionWithResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateTagOptionWithResourceInput"
      },
      "output": {
        "shape": "AssociateTagOptionWithResourceOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DuplicateResourceException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Associate the specified TagOption with the specified portfolio or product.</p>"
    },
    "BatchAssociateServiceActionWithProvisioningArtifact": {
      "name": "BatchAssociateServiceActionWithProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchAssociateServiceActionWithProvisioningArtifactInput"
      },
      "output": {
        "shape": "BatchAssociateServiceActionWithProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Associates multiple self-service actions with provisioning artifacts.</p>"
    },
    "BatchDisassociateServiceActionFromProvisioningArtifact": {
      "name": "BatchDisassociateServiceActionFromProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDisassociateServiceActionFromProvisioningArtifactInput"
      },
      "output": {
        "shape": "BatchDisassociateServiceActionFromProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Disassociates a batch of self-service actions from the specified provisioning artifact.</p>"
    },
    "CopyProduct": {
      "name": "CopyProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyProductInput"
      },
      "output": {
        "shape": "CopyProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Copies the specified source product to the specified target product or a new product.</p> <p>You can copy a product to the same account or another account. You can copy a product to the same region or another region.</p> <p>This operation is performed asynchronously. To track the progress of the operation, use <a>DescribeCopyProductStatus</a>.</p>"
    },
    "CreateConstraint": {
      "name": "CreateConstraint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConstraintInput"
      },
      "output": {
        "shape": "CreateConstraintOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DuplicateResourceException"
        }
      ],
      "documentation": "<p>Creates a constraint.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "CreatePortfolio": {
      "name": "CreatePortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePortfolioInput"
      },
      "output": {
        "shape": "CreatePortfolioOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Creates a portfolio.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "CreatePortfolioShare": {
      "name": "CreatePortfolioShare",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePortfolioShareInput"
      },
      "output": {
        "shape": "CreatePortfolioShareOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an organization or by a delegated administrator. You can share portfolios to an organization, an organizational unit, or a specific account.</p> <p>Note that if a delegated admin is de-registered, they can no longer create portfolio shares.</p> <p> <code>AWSOrganizationsAccess</code> must be enabled in order to create a portfolio share to an organization node.</p> <p>You can't share a shared resource. This includes portfolios that contain a shared product.</p>"
    },
    "CreateProduct": {
      "name": "CreateProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProductInput"
      },
      "output": {
        "shape": "CreateProductOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Creates a product.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "CreateProvisionedProductPlan": {
      "name": "CreateProvisionedProductPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProvisionedProductPlanInput"
      },
      "output": {
        "shape": "CreateProvisionedProductPlanOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed.</p> <p>You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED.</p> <p>To view the resource changes in the change set, use <a>DescribeProvisionedProductPlan</a>. To create or modify the provisioned product, use <a>ExecuteProvisionedProductPlan</a>.</p>"
    },
    "CreateProvisioningArtifact": {
      "name": "CreateProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProvisioningArtifactInput"
      },
      "output": {
        "shape": "CreateProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot create a provisioning artifact for a product that was shared with you.</p>"
    },
    "CreateServiceAction": {
      "name": "CreateServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServiceActionInput"
      },
      "output": {
        "shape": "CreateServiceActionOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a self-service action.</p>"
    },
    "CreateTagOption": {
      "name": "CreateTagOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTagOptionInput"
      },
      "output": {
        "shape": "CreateTagOptionOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "DuplicateResourceException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a TagOption.</p>"
    },
    "DeleteConstraint": {
      "name": "DeleteConstraint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConstraintInput"
      },
      "output": {
        "shape": "DeleteConstraintOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Deletes the specified constraint.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "DeletePortfolio": {
      "name": "DeletePortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePortfolioInput"
      },
      "output": {
        "shape": "DeletePortfolioOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Deletes the specified portfolio.</p> <p>You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "DeletePortfolioShare": {
      "name": "DeletePortfolioShare",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePortfolioShareInput"
      },
      "output": {
        "shape": "DeletePortfolioShareOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an organization or by a delegated administrator.</p> <p>Note that if a delegated admin is de-registered, portfolio shares created from that account are removed.</p>"
    },
    "DeleteProduct": {
      "name": "DeleteProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProductInput"
      },
      "output": {
        "shape": "DeleteProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Deletes the specified product.</p> <p>You cannot delete a product if it was shared with you or is associated with a portfolio.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "DeleteProvisionedProductPlan": {
      "name": "DeleteProvisionedProductPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProvisionedProductPlanInput"
      },
      "output": {
        "shape": "DeleteProvisionedProductPlanOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the specified plan.</p>"
    },
    "DeleteProvisioningArtifact": {
      "name": "DeleteProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProvisioningArtifactInput"
      },
      "output": {
        "shape": "DeleteProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Deletes the specified provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.</p>"
    },
    "DeleteServiceAction": {
      "name": "DeleteServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceActionInput"
      },
      "output": {
        "shape": "DeleteServiceActionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a self-service action.</p>"
    },
    "DeleteTagOption": {
      "name": "DeleteTagOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTagOptionInput"
      },
      "output": {
        "shape": "DeleteTagOptionOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the specified TagOption.</p> <p>You cannot delete a TagOption if it is associated with a product or portfolio.</p>"
    },
    "DescribeConstraint": {
      "name": "DescribeConstraint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConstraintInput"
      },
      "output": {
        "shape": "DescribeConstraintOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the specified constraint.</p>"
    },
    "DescribeCopyProductStatus": {
      "name": "DescribeCopyProductStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCopyProductStatusInput"
      },
      "output": {
        "shape": "DescribeCopyProductStatusOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets the status of the specified copy product operation.</p>"
    },
    "DescribePortfolio": {
      "name": "DescribePortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePortfolioInput"
      },
      "output": {
        "shape": "DescribePortfolioOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the specified portfolio.</p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "DescribePortfolioShareStatus": {
      "name": "DescribePortfolioShareStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePortfolioShareStatusInput"
      },
      "output": {
        "shape": "DescribePortfolioShareStatusOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization or by a delegated admin.</p>"
    },
    "DescribeProduct": {
      "name": "DescribeProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProductInput"
      },
      "output": {
        "shape": "DescribeProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the specified product.</p>"
    },
    "DescribeProductAsAdmin": {
      "name": "DescribeProductAsAdmin",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProductAsAdminInput"
      },
      "output": {
        "shape": "DescribeProductAsAdminOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the specified product. This operation is run with administrator access.</p>"
    },
    "DescribeProductView": {
      "name": "DescribeProductView",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProductViewInput"
      },
      "output": {
        "shape": "DescribeProductViewOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the specified product.</p>"
    },
    "DescribeProvisionedProduct": {
      "name": "DescribeProvisionedProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProvisionedProductInput"
      },
      "output": {
        "shape": "DescribeProvisionedProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the specified provisioned product.</p>"
    },
    "DescribeProvisionedProductPlan": {
      "name": "DescribeProvisionedProductPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProvisionedProductPlanInput"
      },
      "output": {
        "shape": "DescribeProvisionedProductPlanOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the resource changes for the specified plan.</p>"
    },
    "DescribeProvisioningArtifact": {
      "name": "DescribeProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProvisioningArtifactInput"
      },
      "output": {
        "shape": "DescribeProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the specified provisioning artifact (also known as a version) for the specified product.</p>"
    },
    "DescribeProvisioningParameters": {
      "name": "DescribeProvisioningParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProvisioningParametersInput"
      },
      "output": {
        "shape": "DescribeProvisioningParametersOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the configuration required to provision the specified product using the specified provisioning artifact.</p> <p>If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to <a>ProvisionProduct</a>, do not include conflicted TagOption keys as tags, or this causes the error \"Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>\". Tag the provisioned product with the value <code>sc-tagoption-conflict-portfolioId-productId</code>.</p>"
    },
    "DescribeRecord": {
      "name": "DescribeRecord",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRecordInput"
      },
      "output": {
        "shape": "DescribeRecordOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the specified request operation.</p> <p>Use this operation after calling a request operation (for example, <a>ProvisionProduct</a>, <a>TerminateProvisionedProduct</a>, or <a>UpdateProvisionedProduct</a>). </p> <note> <p>If a provisioned product was transferred to a new owner using <a>UpdateProvisionedProductProperties</a>, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use <a>ListRecordHistory</a> to see the product's history from when he was the owner.</p> </note>"
    },
    "DescribeServiceAction": {
      "name": "DescribeServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServiceActionInput"
      },
      "output": {
        "shape": "DescribeServiceActionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a self-service action.</p>"
    },
    "DescribeServiceActionExecutionParameters": {
      "name": "DescribeServiceActionExecutionParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServiceActionExecutionParametersInput"
      },
      "output": {
        "shape": "DescribeServiceActionExecutionParametersOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Finds the default parameters for a specific self-service action on a specific provisioned product and returns a map of the results to the user.</p>"
    },
    "DescribeTagOption": {
      "name": "DescribeTagOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTagOptionInput"
      },
      "output": {
        "shape": "DescribeTagOptionOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about the specified TagOption.</p>"
    },
    "DisableAWSOrganizationsAccess": {
      "name": "DisableAWSOrganizationsAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableAWSOrganizationsAccessInput"
      },
      "output": {
        "shape": "DisableAWSOrganizationsAccessOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.</p> <p>This API can't be invoked if there are active delegated administrators in the organization.</p> <p>Note that a delegated administrator is not authorized to invoke <code>DisableAWSOrganizationsAccess</code>.</p>"
    },
    "DisassociateBudgetFromResource": {
      "name": "DisassociateBudgetFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateBudgetFromResourceInput"
      },
      "output": {
        "shape": "DisassociateBudgetFromResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disassociates the specified budget from the specified resource.</p>"
    },
    "DisassociatePrincipalFromPortfolio": {
      "name": "DisassociatePrincipalFromPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociatePrincipalFromPortfolioInput"
      },
      "output": {
        "shape": "DisassociatePrincipalFromPortfolioOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disassociates a previously associated principal ARN from a specified portfolio.</p>"
    },
    "DisassociateProductFromPortfolio": {
      "name": "DisassociateProductFromPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateProductFromPortfolioInput"
      },
      "output": {
        "shape": "DisassociateProductFromPortfolioOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Disassociates the specified product from the specified portfolio. </p> <p>A delegated admin is authorized to invoke this command.</p>"
    },
    "DisassociateServiceActionFromProvisioningArtifact": {
      "name": "DisassociateServiceActionFromProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateServiceActionFromProvisioningArtifactInput"
      },
      "output": {
        "shape": "DisassociateServiceActionFromProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disassociates the specified self-service action association from the specified provisioning artifact.</p>"
    },
    "DisassociateTagOptionFromResource": {
      "name": "DisassociateTagOptionFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateTagOptionFromResourceInput"
      },
      "output": {
        "shape": "DisassociateTagOptionFromResourceOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disassociates the specified TagOption from the specified resource.</p>"
    },
    "EnableAWSOrganizationsAccess": {
      "name": "EnableAWSOrganizationsAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableAWSOrganizationsAccessInput"
      },
      "output": {
        "shape": "EnableAWSOrganizationsAccessOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization.</p> <p>By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.</p> <p>Note that a delegated administrator is not authorized to invoke <code>EnableAWSOrganizationsAccess</code>.</p>"
    },
    "ExecuteProvisionedProductPlan": {
      "name": "ExecuteProvisionedProductPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExecuteProvisionedProductPlanInput"
      },
      "output": {
        "shape": "ExecuteProvisionedProductPlanOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Provisions or modifies a product based on the resource changes for the specified plan.</p>"
    },
    "ExecuteProvisionedProductServiceAction": {
      "name": "ExecuteProvisionedProductServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExecuteProvisionedProductServiceActionInput"
      },
      "output": {
        "shape": "ExecuteProvisionedProductServiceActionOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Executes a self-service action against a provisioned product.</p>"
    },
    "GetAWSOrganizationsAccessStatus": {
      "name": "GetAWSOrganizationsAccessStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAWSOrganizationsAccessStatusInput"
      },
      "output": {
        "shape": "GetAWSOrganizationsAccessStatusOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization or by a delegated admin.</p>"
    },
    "ListAcceptedPortfolioShares": {
      "name": "ListAcceptedPortfolioShares",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAcceptedPortfolioSharesInput"
      },
      "output": {
        "shape": "ListAcceptedPortfolioSharesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Lists all portfolios for which sharing was accepted by this account.</p>"
    },
    "ListBudgetsForResource": {
      "name": "ListBudgetsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBudgetsForResourceInput"
      },
      "output": {
        "shape": "ListBudgetsForResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all the budgets associated to the specified resource.</p>"
    },
    "ListConstraintsForPortfolio": {
      "name": "ListConstraintsForPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListConstraintsForPortfolioInput"
      },
      "output": {
        "shape": "ListConstraintsForPortfolioOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the constraints for the specified portfolio and product.</p>"
    },
    "ListLaunchPaths": {
      "name": "ListLaunchPaths",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLaunchPathsInput"
      },
      "output": {
        "shape": "ListLaunchPathsOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.</p>"
    },
    "ListOrganizationPortfolioAccess": {
      "name": "ListOrganizationPortfolioAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOrganizationPortfolioAccessInput"
      },
      "output": {
        "shape": "ListOrganizationPortfolioAccessOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization or by a delegated admin.</p> <p>If a delegated admin is de-registered, they can no longer perform this operation.</p>"
    },
    "ListPortfolioAccess": {
      "name": "ListPortfolioAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPortfolioAccessInput"
      },
      "output": {
        "shape": "ListPortfolioAccessOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the account IDs that have access to the specified portfolio.</p> <p>A delegated admin can list the accounts that have access to the shared portfolio. Note that if a delegated admin is de-registered, they can no longer perform this operation.</p>"
    },
    "ListPortfolios": {
      "name": "ListPortfolios",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPortfoliosInput"
      },
      "output": {
        "shape": "ListPortfoliosOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all portfolios in the catalog.</p>"
    },
    "ListPortfoliosForProduct": {
      "name": "ListPortfoliosForProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPortfoliosForProductInput"
      },
      "output": {
        "shape": "ListPortfoliosForProductOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists all portfolios that the specified product is associated with.</p>"
    },
    "ListPrincipalsForPortfolio": {
      "name": "ListPrincipalsForPortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPrincipalsForPortfolioInput"
      },
      "output": {
        "shape": "ListPrincipalsForPortfolioOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all principal ARNs associated with the specified portfolio.</p>"
    },
    "ListProvisionedProductPlans": {
      "name": "ListProvisionedProductPlans",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProvisionedProductPlansInput"
      },
      "output": {
        "shape": "ListProvisionedProductPlansOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the plans for the specified provisioned product or all plans to which the user has access.</p>"
    },
    "ListProvisioningArtifacts": {
      "name": "ListProvisioningArtifacts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProvisioningArtifactsInput"
      },
      "output": {
        "shape": "ListProvisioningArtifactsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all provisioning artifacts (also known as versions) for the specified product.</p>"
    },
    "ListProvisioningArtifactsForServiceAction": {
      "name": "ListProvisioningArtifactsForServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProvisioningArtifactsForServiceActionInput"
      },
      "output": {
        "shape": "ListProvisioningArtifactsForServiceActionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all provisioning artifacts (also known as versions) for the specified self-service action.</p>"
    },
    "ListRecordHistory": {
      "name": "ListRecordHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRecordHistoryInput"
      },
      "output": {
        "shape": "ListRecordHistoryOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the specified requests or all performed requests.</p>"
    },
    "ListResourcesForTagOption": {
      "name": "ListResourcesForTagOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourcesForTagOptionInput"
      },
      "output": {
        "shape": "ListResourcesForTagOptionOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the resources associated with the specified TagOption.</p>"
    },
    "ListServiceActions": {
      "name": "ListServiceActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServiceActionsInput"
      },
      "output": {
        "shape": "ListServiceActionsOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists all self-service actions.</p>"
    },
    "ListServiceActionsForProvisioningArtifact": {
      "name": "ListServiceActionsForProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServiceActionsForProvisioningArtifactInput"
      },
      "output": {
        "shape": "ListServiceActionsForProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.</p>"
    },
    "ListStackInstancesForProvisionedProduct": {
      "name": "ListStackInstancesForProvisionedProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListStackInstancesForProvisionedProductInput"
      },
      "output": {
        "shape": "ListStackInstancesForProvisionedProductOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns summary information about stack instances that are associated with the specified <code>CFN_STACKSET</code> type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. </p>"
    },
    "ListTagOptions": {
      "name": "ListTagOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagOptionsInput"
      },
      "output": {
        "shape": "ListTagOptionsOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the specified TagOptions or all TagOptions.</p>"
    },
    "ProvisionProduct": {
      "name": "ProvisionProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ProvisionProductInput"
      },
      "output": {
        "shape": "ProvisionProductOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "DuplicateResourceException"
        }
      ],
      "documentation": "<p>Provisions the specified product.</p> <p>A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using <a>DescribeRecord</a>.</p> <p>If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error \"Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>\".</p>"
    },
    "RejectPortfolioShare": {
      "name": "RejectPortfolioShare",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RejectPortfolioShareInput"
      },
      "output": {
        "shape": "RejectPortfolioShareOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Rejects an offer to share the specified portfolio.</p>"
    },
    "ScanProvisionedProducts": {
      "name": "ScanProvisionedProducts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ScanProvisionedProductsInput"
      },
      "output": {
        "shape": "ScanProvisionedProductsOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Lists the provisioned products that are available (not terminated).</p> <p>To use additional filtering, see <a>SearchProvisionedProducts</a>.</p>"
    },
    "SearchProducts": {
      "name": "SearchProducts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchProductsInput"
      },
      "output": {
        "shape": "SearchProductsOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the products to which the caller has access.</p>"
    },
    "SearchProductsAsAdmin": {
      "name": "SearchProductsAsAdmin",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchProductsAsAdminInput"
      },
      "output": {
        "shape": "SearchProductsAsAdminOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the products for the specified portfolio or all products.</p>"
    },
    "SearchProvisionedProducts": {
      "name": "SearchProvisionedProducts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchProvisionedProductsInput"
      },
      "output": {
        "shape": "SearchProvisionedProductsOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Gets information about the provisioned products that meet the specified criteria.</p>"
    },
    "TerminateProvisionedProduct": {
      "name": "TerminateProvisionedProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateProvisionedProductInput"
      },
      "output": {
        "shape": "TerminateProvisionedProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Terminates the specified provisioned product.</p> <p>This operation does not delete any records associated with the provisioned product.</p> <p>You can check the status of this request using <a>DescribeRecord</a>.</p>"
    },
    "UpdateConstraint": {
      "name": "UpdateConstraint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConstraintInput"
      },
      "output": {
        "shape": "UpdateConstraintOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Updates the specified constraint.</p>"
    },
    "UpdatePortfolio": {
      "name": "UpdatePortfolio",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePortfolioInput"
      },
      "output": {
        "shape": "UpdatePortfolioOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Updates the specified portfolio.</p> <p>You cannot update a product that was shared with you.</p>"
    },
    "UpdateProduct": {
      "name": "UpdateProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProductInput"
      },
      "output": {
        "shape": "UpdateProductOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "TagOptionNotMigratedException"
        }
      ],
      "documentation": "<p>Updates the specified product.</p>"
    },
    "UpdateProvisionedProduct": {
      "name": "UpdateProvisionedProduct",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProvisionedProductInput"
      },
      "output": {
        "shape": "UpdateProvisionedProductOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests updates to the configuration of the specified provisioned product.</p> <p>If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely.</p> <p>You can check the status of this request using <a>DescribeRecord</a>.</p>"
    },
    "UpdateProvisionedProductProperties": {
      "name": "UpdateProvisionedProductProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProvisionedProductPropertiesInput"
      },
      "output": {
        "shape": "UpdateProvisionedProductPropertiesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParametersException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidStateException"
        }
      ],
      "documentation": "<p>Requests updates to the properties of the specified provisioned product.</p>"
    },
    "UpdateProvisioningArtifact": {
      "name": "UpdateProvisioningArtifact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProvisioningArtifactInput"
      },
      "output": {
        "shape": "UpdateProvisioningArtifactOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Updates the specified provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot update a provisioning artifact for a product that was shared with you.</p>"
    },
    "UpdateServiceAction": {
      "name": "UpdateServiceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceActionInput"
      },
      "output": {
        "shape": "UpdateServiceActionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Updates a self-service action.</p>"
    },
    "UpdateTagOption": {
      "name": "UpdateTagOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTagOptionInput"
      },
      "output": {
        "shape": "UpdateTagOptionOutput"
      },
      "errors": [
        {
          "shape": "TagOptionNotMigratedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "DuplicateResourceException"
        },
        {
          "shape": "InvalidParametersException"
        }
      ],
      "documentation": "<p>Updates the specified TagOption.</p>"
    }
  },
  "shapes": {
    "AcceptLanguage": {
      "type": "string",
      "max": 100
    },
    "AcceptPortfolioShareInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "PortfolioShareType": {
          "shape": "PortfolioShareType",
          "documentation": "<p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the master account of your organization.</p> </li> <li> <p> <code>IMPORTED</code> - Accept imported portfolios.</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p> </li> </ul> <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code> </p>"
        }
      }
    },
    "AcceptPortfolioShareOutput": {
      "type": "structure",
      "members": {}
    },
    "AccessLevelFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "AccessLevelFilterKey",
          "documentation": "<p>The access level.</p> <ul> <li> <p> <code>Account</code> - Filter results based on the account.</p> </li> <li> <p> <code>Role</code> - Filter results based on the federated role of the specified user.</p> </li> <li> <p> <code>User</code> - Filter results based on the specified user.</p> </li> </ul>"
        },
        "Value": {
          "shape": "AccessLevelFilterValue",
          "documentation": "<p>The user to which the access level applies. The only supported value is <code>Self</code>.</p>"
        }
      },
      "documentation": "<p>The access level to use to filter results.</p>"
    },
    "AccessLevelFilterKey": {
      "type": "string",
      "enum": [
        "Account",
        "Role",
        "User"
      ]
    },
    "AccessLevelFilterValue": {
      "type": "string"
    },
    "AccessStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "UNDER_CHANGE",
        "DISABLED"
      ]
    },
    "AccountId": {
      "type": "string",
      "pattern": "^[0-9]{12}$"
    },
    "AccountIds": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "AddTags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 20
    },
    "AllowedValue": {
      "type": "string"
    },
    "AllowedValues": {
      "type": "list",
      "member": {
        "shape": "AllowedValue"
      }
    },
    "ApproximateCount": {
      "type": "integer"
    },
    "AssociateBudgetWithResourceInput": {
      "type": "structure",
      "required": [
        "BudgetName",
        "ResourceId"
      ],
      "members": {
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget you want to associate.</p>"
        },
        "ResourceId": {
          "shape": "Id",
          "documentation": "<p> The resource identifier. Either a portfolio-id or a product-id.</p>"
        }
      }
    },
    "AssociateBudgetWithResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "AssociatePrincipalWithPortfolioInput": {
      "type": "structure",
      "required": [
        "PortfolioId",
        "PrincipalARN",
        "PrincipalType"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "PrincipalARN": {
          "shape": "PrincipalARN",
          "documentation": "<p>The ARN of the principal (IAM user, role, or group).</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The principal type. The supported value is <code>IAM</code>.</p>"
        }
      }
    },
    "AssociatePrincipalWithPortfolioOutput": {
      "type": "structure",
      "members": {}
    },
    "AssociateProductWithPortfolioInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "SourcePortfolioId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the source portfolio.</p>"
        }
      }
    },
    "AssociateProductWithPortfolioOutput": {
      "type": "structure",
      "members": {}
    },
    "AssociateServiceActionWithProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "ProvisioningArtifactId",
        "ServiceActionId"
      ],
      "members": {
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        },
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "AssociateServiceActionWithProvisioningArtifactOutput": {
      "type": "structure",
      "members": {}
    },
    "AssociateTagOptionWithResourceInput": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagOptionId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource identifier.</p>"
        },
        "TagOptionId": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        }
      }
    },
    "AssociateTagOptionWithResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "AttributeValue": {
      "type": "string"
    },
    "BatchAssociateServiceActionWithProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ServiceActionAssociations"
      ],
      "members": {
        "ServiceActionAssociations": {
          "shape": "ServiceActionAssociations",
          "documentation": "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "BatchAssociateServiceActionWithProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "FailedServiceActionAssociations": {
          "shape": "FailedServiceActionAssociations",
          "documentation": "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"
        }
      }
    },
    "BatchDisassociateServiceActionFromProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ServiceActionAssociations"
      ],
      "members": {
        "ServiceActionAssociations": {
          "shape": "ServiceActionAssociations",
          "documentation": "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "BatchDisassociateServiceActionFromProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "FailedServiceActionAssociations": {
          "shape": "FailedServiceActionAssociations",
          "documentation": "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"
        }
      }
    },
    "BudgetDetail": {
      "type": "structure",
      "members": {
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>Name of the associated budget.</p>"
        }
      },
      "documentation": "<p>Information about a budget.</p>"
    },
    "BudgetName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "Budgets": {
      "type": "list",
      "member": {
        "shape": "BudgetDetail"
      }
    },
    "CausingEntity": {
      "type": "string"
    },
    "ChangeAction": {
      "type": "string",
      "enum": [
        "ADD",
        "MODIFY",
        "REMOVE"
      ]
    },
    "CloudWatchDashboard": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "CloudWatchDashboardName",
          "documentation": "<p>The name of the CloudWatch dashboard.</p>"
        }
      },
      "documentation": "<p>Information about a CloudWatch dashboard.</p>"
    },
    "CloudWatchDashboardName": {
      "type": "string"
    },
    "CloudWatchDashboards": {
      "type": "list",
      "member": {
        "shape": "CloudWatchDashboard"
      }
    },
    "ConstraintDescription": {
      "type": "string",
      "max": 2000
    },
    "ConstraintDetail": {
      "type": "structure",
      "members": {
        "ConstraintId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the constraint.</p>"
        },
        "Type": {
          "shape": "ConstraintType",
          "documentation": "<p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p>STACKSET</p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>"
        },
        "Description": {
          "shape": "ConstraintDescription",
          "documentation": "<p>The description of the constraint.</p>"
        },
        "Owner": {
          "shape": "AccountId",
          "documentation": "<p>The owner of the constraint.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the product the constraint applies to. Note that a constraint applies to a specific instance of a product within a certain portfolio.</p>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.</p>"
        }
      },
      "documentation": "<p>Information about a constraint.</p>"
    },
    "ConstraintDetails": {
      "type": "list",
      "member": {
        "shape": "ConstraintDetail"
      }
    },
    "ConstraintParameters": {
      "type": "string"
    },
    "ConstraintSummaries": {
      "type": "list",
      "member": {
        "shape": "ConstraintSummary"
      }
    },
    "ConstraintSummary": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "ConstraintType",
          "documentation": "<p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p>STACKSET</p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>"
        },
        "Description": {
          "shape": "ConstraintDescription",
          "documentation": "<p>The description of the constraint.</p>"
        }
      },
      "documentation": "<p>Summary information about a constraint.</p>"
    },
    "ConstraintType": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "CopyOption": {
      "type": "string",
      "enum": [
        "CopyTags"
      ]
    },
    "CopyOptions": {
      "type": "list",
      "member": {
        "shape": "CopyOption"
      }
    },
    "CopyProductInput": {
      "type": "structure",
      "required": [
        "SourceProductArn",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "SourceProductArn": {
          "shape": "ProductArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source product.</p>"
        },
        "TargetProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the target product. By default, a new product is created.</p>"
        },
        "TargetProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>A name for the target product. The default is the name of the source product.</p>"
        },
        "SourceProvisioningArtifactIdentifiers": {
          "shape": "SourceProvisioningArtifactProperties",
          "documentation": "<p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.</p>"
        },
        "CopyOptions": {
          "shape": "CopyOptions",
          "documentation": "<p>The copy options. If the value is <code>CopyTags</code>, the tags from the source product are copied to the target product.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CopyProductOutput": {
      "type": "structure",
      "members": {
        "CopyProductToken": {
          "shape": "Id",
          "documentation": "<p>The token to use to track the progress of the operation.</p>"
        }
      }
    },
    "CopyProductStatus": {
      "type": "string",
      "enum": [
        "SUCCEEDED",
        "IN_PROGRESS",
        "FAILED"
      ]
    },
    "CreateConstraintInput": {
      "type": "structure",
      "required": [
        "PortfolioId",
        "ProductId",
        "Parameters",
        "Type",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Parameters": {
          "shape": "ConstraintParameters",
          "documentation": "<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p> <dl> <dt>LAUNCH</dt> <dd> <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p> <p>Specify the <code>RoleArn</code> property as follows:</p> <p> <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code> </p> <p>Specify the <code>LocalRoleName</code> property as follows:</p> <p> <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code> </p> <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account.</p> <note> <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p> </note> <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p> <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p> </dd> <dt>NOTIFICATION</dt> <dd> <p>Specify the <code>NotificationArns</code> property as follows:</p> <p> <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code> </p> </dd> <dt>RESOURCE_UPDATE</dt> <dd> <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p> <p> <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code> </p> <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p> </dd> <dt>STACKSET</dt> <dd> <p>Specify the <code>Parameters</code> property as follows:</p> <p> <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code> </p> <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p> <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p> <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p> </dd> <dt>TEMPLATE</dt> <dd> <p>Specify the <code>Rules</code> property. For more information, see <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p> </dd> </dl>"
        },
        "Type": {
          "shape": "ConstraintType",
          "documentation": "<p>The type of constraint.</p> <ul> <li> <p> <code>LAUNCH</code> </p> </li> <li> <p> <code>NOTIFICATION</code> </p> </li> <li> <p> <code>RESOURCE_UPDATE</code> </p> </li> <li> <p> <code>STACKSET</code> </p> </li> <li> <p> <code>TEMPLATE</code> </p> </li> </ul>"
        },
        "Description": {
          "shape": "ConstraintDescription",
          "documentation": "<p>The description of the constraint.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateConstraintOutput": {
      "type": "structure",
      "members": {
        "ConstraintDetail": {
          "shape": "ConstraintDetail",
          "documentation": "<p>Information about the constraint.</p>"
        },
        "ConstraintParameters": {
          "shape": "ConstraintParameters",
          "documentation": "<p>The constraint parameters.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "CreatePortfolioInput": {
      "type": "structure",
      "required": [
        "DisplayName",
        "ProviderName",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "DisplayName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name to use for display purposes.</p>"
        },
        "Description": {
          "shape": "PortfolioDescription",
          "documentation": "<p>The description of the portfolio.</p>"
        },
        "ProviderName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the portfolio provider.</p>"
        },
        "Tags": {
          "shape": "AddTags",
          "documentation": "<p>One or more tags.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreatePortfolioOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetail": {
          "shape": "PortfolioDetail",
          "documentation": "<p>Information about the portfolio.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the portfolio.</p>"
        }
      }
    },
    "CreatePortfolioShareInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID. For example, <code>123456789012</code>.</p>"
        },
        "OrganizationNode": {
          "shape": "OrganizationNode",
          "documentation": "<p>The organization node to whom you are going to share. If <code>OrganizationNode</code> is passed in, <code>PortfolioShare</code> will be created for the node and its children (when applies), and a <code>PortfolioShareToken</code> will be returned in the output in order for the administrator to monitor the status of the <code>PortfolioShare</code> creation process.</p>"
        }
      }
    },
    "CreatePortfolioShareOutput": {
      "type": "structure",
      "members": {
        "PortfolioShareToken": {
          "shape": "Id",
          "documentation": "<p>The portfolio share unique identifier. This will only be returned if portfolio is shared to an organization node.</p>"
        }
      }
    },
    "CreateProductInput": {
      "type": "structure",
      "required": [
        "Name",
        "Owner",
        "ProductType",
        "ProvisioningArtifactParameters",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Name": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product.</p>"
        },
        "Owner": {
          "shape": "ProductViewOwner",
          "documentation": "<p>The owner of the product.</p>"
        },
        "Description": {
          "shape": "ProductViewShortDescription",
          "documentation": "<p>The description of the product.</p>"
        },
        "Distributor": {
          "shape": "ProductViewOwner",
          "documentation": "<p>The distributor of the product.</p>"
        },
        "SupportDescription": {
          "shape": "SupportDescription",
          "documentation": "<p>The support information about the product.</p>"
        },
        "SupportEmail": {
          "shape": "SupportEmail",
          "documentation": "<p>The contact email for product support.</p>"
        },
        "SupportUrl": {
          "shape": "SupportUrl",
          "documentation": "<p>The contact URL for product support.</p>"
        },
        "ProductType": {
          "shape": "ProductType",
          "documentation": "<p>The type of product.</p>"
        },
        "Tags": {
          "shape": "AddTags",
          "documentation": "<p>One or more tags.</p>"
        },
        "ProvisioningArtifactParameters": {
          "shape": "ProvisioningArtifactProperties",
          "documentation": "<p>The configuration of the provisioning artifact.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateProductOutput": {
      "type": "structure",
      "members": {
        "ProductViewDetail": {
          "shape": "ProductViewDetail",
          "documentation": "<p>Information about the product view.</p>"
        },
        "ProvisioningArtifactDetail": {
          "shape": "ProvisioningArtifactDetail",
          "documentation": "<p>Information about the provisioning artifact.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the product.</p>"
        }
      }
    },
    "CreateProvisionedProductPlanInput": {
      "type": "structure",
      "required": [
        "PlanName",
        "PlanType",
        "ProductId",
        "ProvisionedProductName",
        "ProvisioningArtifactId",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PlanName": {
          "shape": "ProvisionedProductPlanName",
          "documentation": "<p>The name of the plan.</p>"
        },
        "PlanType": {
          "shape": "ProvisionedProductPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "NotificationArns": {
          "shape": "NotificationArns",
          "documentation": "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisionedProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "ProvisioningParameters": {
          "shape": "UpdateProvisioningParameters",
          "documentation": "<p>Parameters specified by the administrator that are required for provisioning the product.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>One or more tags.</p> <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>"
        }
      }
    },
    "CreateProvisionedProductPlanOutput": {
      "type": "structure",
      "members": {
        "PlanName": {
          "shape": "ProvisionedProductPlanName",
          "documentation": "<p>The name of the plan.</p>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "ProvisionProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisionedProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        }
      }
    },
    "CreateProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "Parameters",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Parameters": {
          "shape": "ProvisioningArtifactProperties",
          "documentation": "<p>The configuration for the provisioning artifact.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactDetail": {
          "shape": "ProvisioningArtifactDetail",
          "documentation": "<p>Information about the provisioning artifact.</p>"
        },
        "Info": {
          "shape": "ProvisioningArtifactInfo",
          "documentation": "<p>The URL of the CloudFormation template in Amazon S3, in JSON format.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "CreateServiceActionInput": {
      "type": "structure",
      "required": [
        "Name",
        "DefinitionType",
        "Definition",
        "IdempotencyToken"
      ],
      "members": {
        "Name": {
          "shape": "ServiceActionName",
          "documentation": "<p>The self-service action name.</p>"
        },
        "DefinitionType": {
          "shape": "ServiceActionDefinitionType",
          "documentation": "<p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>"
        },
        "Definition": {
          "shape": "ServiceActionDefinitionMap",
          "documentation": "<p>The self-service action definition. Can be one of the following:</p> <dl> <dt>Name</dt> <dd> <p>The name of the AWS Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p> <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p> </dd> <dt>Version</dt> <dd> <p>The AWS Systems Manager automation document version. For example, <code>\"Version\": \"1\"</code> </p> </dd> <dt>AssumeRole</dt> <dd> <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>\"AssumeRole\": \"arn:aws:iam::12345678910:role/ActionRole\"</code>.</p> <p>To reuse the provisioned product launch role, set to <code>\"AssumeRole\": \"LAUNCH_ROLE\"</code>.</p> </dd> <dt>Parameters</dt> <dd> <p>The list of parameters in JSON format.</p> <p>For example: <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TARGET\\\"}]</code> or <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TEXT_VALUE\\\"}]</code>.</p> </dd> </dl>"
        },
        "Description": {
          "shape": "ServiceActionDescription",
          "documentation": "<p>The self-service action description.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateServiceActionOutput": {
      "type": "structure",
      "members": {
        "ServiceActionDetail": {
          "shape": "ServiceActionDetail",
          "documentation": "<p>An object containing information about the self-service action.</p>"
        }
      }
    },
    "CreateTagOptionInput": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagOptionKey",
          "documentation": "<p>The TagOption key.</p>"
        },
        "Value": {
          "shape": "TagOptionValue",
          "documentation": "<p>The TagOption value.</p>"
        }
      }
    },
    "CreateTagOptionOutput": {
      "type": "structure",
      "members": {
        "TagOptionDetail": {
          "shape": "TagOptionDetail",
          "documentation": "<p>Information about the TagOption.</p>"
        }
      }
    },
    "CreatedTime": {
      "type": "timestamp"
    },
    "CreationTime": {
      "type": "timestamp"
    },
    "DefaultValue": {
      "type": "string"
    },
    "DeleteConstraintInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the constraint.</p>"
        }
      }
    },
    "DeleteConstraintOutput": {
      "type": "structure",
      "members": {}
    },
    "DeletePortfolioInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        }
      }
    },
    "DeletePortfolioOutput": {
      "type": "structure",
      "members": {}
    },
    "DeletePortfolioShareInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID.</p>"
        },
        "OrganizationNode": {
          "shape": "OrganizationNode",
          "documentation": "<p>The organization node to whom you are going to stop sharing.</p>"
        }
      }
    },
    "DeletePortfolioShareOutput": {
      "type": "structure",
      "members": {
        "PortfolioShareToken": {
          "shape": "Id",
          "documentation": "<p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>"
        }
      }
    },
    "DeleteProductInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        }
      }
    },
    "DeleteProductOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteProvisionedProductPlanInput": {
      "type": "structure",
      "required": [
        "PlanId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "IgnoreErrors": {
          "shape": "IgnoreErrors",
          "documentation": "<p>If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.</p>"
        }
      }
    },
    "DeleteProvisionedProductPlanOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "ProvisioningArtifactId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        }
      }
    },
    "DeleteProvisioningArtifactOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteServiceActionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "DeleteServiceActionOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteTagOptionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        }
      }
    },
    "DeleteTagOptionOutput": {
      "type": "structure",
      "members": {}
    },
    "DescribeConstraintInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the constraint.</p>"
        }
      }
    },
    "DescribeConstraintOutput": {
      "type": "structure",
      "members": {
        "ConstraintDetail": {
          "shape": "ConstraintDetail",
          "documentation": "<p>Information about the constraint.</p>"
        },
        "ConstraintParameters": {
          "shape": "ConstraintParameters",
          "documentation": "<p>The constraint parameters.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "DescribeCopyProductStatusInput": {
      "type": "structure",
      "required": [
        "CopyProductToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "CopyProductToken": {
          "shape": "Id",
          "documentation": "<p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>"
        }
      }
    },
    "DescribeCopyProductStatusOutput": {
      "type": "structure",
      "members": {
        "CopyProductStatus": {
          "shape": "CopyProductStatus",
          "documentation": "<p>The status of the copy product operation.</p>"
        },
        "TargetProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the copied product.</p>"
        },
        "StatusDetail": {
          "shape": "StatusDetail",
          "documentation": "<p>The status message.</p>"
        }
      }
    },
    "DescribePortfolioInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        }
      }
    },
    "DescribePortfolioOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetail": {
          "shape": "PortfolioDetail",
          "documentation": "<p>Information about the portfolio.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the portfolio.</p>"
        },
        "TagOptions": {
          "shape": "TagOptionDetails",
          "documentation": "<p>Information about the TagOptions associated with the portfolio.</p>"
        },
        "Budgets": {
          "shape": "Budgets",
          "documentation": "<p>Information about the associated budgets.</p>"
        }
      }
    },
    "DescribePortfolioShareStatusInput": {
      "type": "structure",
      "required": [
        "PortfolioShareToken"
      ],
      "members": {
        "PortfolioShareToken": {
          "shape": "Id",
          "documentation": "<p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>"
        }
      }
    },
    "DescribePortfolioShareStatusOutput": {
      "type": "structure",
      "members": {
        "PortfolioShareToken": {
          "shape": "Id",
          "documentation": "<p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "OrganizationNodeValue": {
          "shape": "OrganizationNodeValue",
          "documentation": "<p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>"
        },
        "Status": {
          "shape": "ShareStatus",
          "documentation": "<p>Status of the portfolio share operation.</p>"
        },
        "ShareDetails": {
          "shape": "ShareDetails",
          "documentation": "<p>Information about the portfolio share operation.</p>"
        }
      }
    },
    "DescribeProductAsAdminInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Name": {
          "shape": "ProductViewName",
          "documentation": "<p>The product name.</p>"
        }
      }
    },
    "DescribeProductAsAdminOutput": {
      "type": "structure",
      "members": {
        "ProductViewDetail": {
          "shape": "ProductViewDetail",
          "documentation": "<p>Information about the product view.</p>"
        },
        "ProvisioningArtifactSummaries": {
          "shape": "ProvisioningArtifactSummaries",
          "documentation": "<p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the product.</p>"
        },
        "TagOptions": {
          "shape": "TagOptionDetails",
          "documentation": "<p>Information about the TagOptions associated with the product.</p>"
        },
        "Budgets": {
          "shape": "Budgets",
          "documentation": "<p>Information about the associated budgets.</p>"
        }
      }
    },
    "DescribeProductInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Name": {
          "shape": "ProductViewName",
          "documentation": "<p>The product name.</p>"
        }
      }
    },
    "DescribeProductOutput": {
      "type": "structure",
      "members": {
        "ProductViewSummary": {
          "shape": "ProductViewSummary",
          "documentation": "<p>Summary information about the product view.</p>"
        },
        "ProvisioningArtifacts": {
          "shape": "ProvisioningArtifacts",
          "documentation": "<p>Information about the provisioning artifacts for the specified product.</p>"
        },
        "Budgets": {
          "shape": "Budgets",
          "documentation": "<p>Information about the associated budgets.</p>"
        },
        "LaunchPaths": {
          "shape": "LaunchPaths",
          "documentation": "<p>Information about the associated launch paths.</p>"
        }
      }
    },
    "DescribeProductViewInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product view identifier.</p>"
        }
      }
    },
    "DescribeProductViewOutput": {
      "type": "structure",
      "members": {
        "ProductViewSummary": {
          "shape": "ProductViewSummary",
          "documentation": "<p>Summary information about the product.</p>"
        },
        "ProvisioningArtifacts": {
          "shape": "ProvisioningArtifacts",
          "documentation": "<p>Information about the provisioning artifacts for the product.</p>"
        }
      }
    },
    "DescribeProvisionedProductInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The provisioned product identifier.</p>"
        }
      }
    },
    "DescribeProvisionedProductOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProductDetail": {
          "shape": "ProvisionedProductDetail",
          "documentation": "<p>Information about the provisioned product.</p>"
        },
        "CloudWatchDashboards": {
          "shape": "CloudWatchDashboards",
          "documentation": "<p>Any CloudWatch dashboards that were created when provisioning the product.</p>"
        }
      }
    },
    "DescribeProvisionedProductPlanInput": {
      "type": "structure",
      "required": [
        "PlanId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "DescribeProvisionedProductPlanOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProductPlanDetails": {
          "shape": "ProvisionedProductPlanDetails",
          "documentation": "<p>Information about the plan.</p>"
        },
        "ResourceChanges": {
          "shape": "ResourceChanges",
          "documentation": "<p>Information about the resource changes that will occur when the plan is executed.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "DescribeProvisioningArtifactInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisioningArtifactName": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The provisioning artifact name.</p>"
        },
        "ProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>The product name.</p>"
        },
        "Verbose": {
          "shape": "Verbose",
          "documentation": "<p>Indicates whether a verbose level of detail is enabled.</p>"
        }
      }
    },
    "DescribeProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactDetail": {
          "shape": "ProvisioningArtifactDetail",
          "documentation": "<p>Information about the provisioning artifact.</p>"
        },
        "Info": {
          "shape": "ProvisioningArtifactInfo",
          "documentation": "<p>The URL of the CloudFormation template in Amazon S3.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "DescribeProvisioningParametersInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. You must provide the product name or ID, but not both.</p>"
        },
        "ProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningArtifactName": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>"
        },
        "PathName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name of the path. You must provide the name or ID, but not both.</p>"
        }
      }
    },
    "DescribeProvisioningParametersOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactParameters": {
          "shape": "ProvisioningArtifactParameters",
          "documentation": "<p>Information about the parameters used to provision the product.</p>"
        },
        "ConstraintSummaries": {
          "shape": "ConstraintSummaries",
          "documentation": "<p>Information about the constraints used to provision the product.</p>"
        },
        "UsageInstructions": {
          "shape": "UsageInstructions",
          "documentation": "<p>Any additional metadata specifically related to the provisioning of the product. For example, see the <code>Version</code> field of the CloudFormation template.</p>"
        },
        "TagOptions": {
          "shape": "TagOptionSummaries",
          "documentation": "<p>Information about the TagOptions associated with the resource.</p>"
        },
        "ProvisioningArtifactPreferences": {
          "shape": "ProvisioningArtifactPreferences",
          "documentation": "<p>An object that contains information about preferences, such as regions and accounts, for the provisioning artifact.</p>"
        },
        "ProvisioningArtifactOutputs": {
          "shape": "ProvisioningArtifactOutputs",
          "documentation": "<p>The output of the provisioning artifact.</p>"
        }
      }
    },
    "DescribeRecordInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the provisioned product. This identifier is returned by the request operation.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "DescribeRecordOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>Information about the product.</p>"
        },
        "RecordOutputs": {
          "shape": "RecordOutputs",
          "documentation": "<p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "DescribeServiceActionExecutionParametersInput": {
      "type": "structure",
      "required": [
        "ProvisionedProductId",
        "ServiceActionId"
      ],
      "members": {
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "DescribeServiceActionExecutionParametersOutput": {
      "type": "structure",
      "members": {
        "ServiceActionParameters": {
          "shape": "ExecutionParameters",
          "documentation": "<p>The parameters of the self-service action.</p>"
        }
      }
    },
    "DescribeServiceActionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "DescribeServiceActionOutput": {
      "type": "structure",
      "members": {
        "ServiceActionDetail": {
          "shape": "ServiceActionDetail",
          "documentation": "<p>Detailed information about the self-service action.</p>"
        }
      }
    },
    "DescribeTagOptionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        }
      }
    },
    "DescribeTagOptionOutput": {
      "type": "structure",
      "members": {
        "TagOptionDetail": {
          "shape": "TagOptionDetail",
          "documentation": "<p>Information about the TagOption.</p>"
        }
      }
    },
    "Description": {
      "type": "string"
    },
    "DisableAWSOrganizationsAccessInput": {
      "type": "structure",
      "members": {}
    },
    "DisableAWSOrganizationsAccessOutput": {
      "type": "structure",
      "members": {}
    },
    "DisableTemplateValidation": {
      "type": "boolean"
    },
    "DisassociateBudgetFromResourceInput": {
      "type": "structure",
      "required": [
        "BudgetName",
        "ResourceId"
      ],
      "members": {
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget you want to disassociate.</p>"
        },
        "ResourceId": {
          "shape": "Id",
          "documentation": "<p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>"
        }
      }
    },
    "DisassociateBudgetFromResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "DisassociatePrincipalFromPortfolioInput": {
      "type": "structure",
      "required": [
        "PortfolioId",
        "PrincipalARN"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "PrincipalARN": {
          "shape": "PrincipalARN",
          "documentation": "<p>The ARN of the principal (IAM user, role, or group).</p>"
        }
      }
    },
    "DisassociatePrincipalFromPortfolioOutput": {
      "type": "structure",
      "members": {}
    },
    "DisassociateProductFromPortfolioInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        }
      }
    },
    "DisassociateProductFromPortfolioOutput": {
      "type": "structure",
      "members": {}
    },
    "DisassociateServiceActionFromProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "ProvisioningArtifactId",
        "ServiceActionId"
      ],
      "members": {
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        },
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "DisassociateServiceActionFromProvisioningArtifactOutput": {
      "type": "structure",
      "members": {}
    },
    "DisassociateTagOptionFromResourceInput": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagOptionId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The resource identifier.</p>"
        },
        "TagOptionId": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        }
      }
    },
    "DisassociateTagOptionFromResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "EnableAWSOrganizationsAccessInput": {
      "type": "structure",
      "members": {}
    },
    "EnableAWSOrganizationsAccessOutput": {
      "type": "structure",
      "members": {}
    },
    "Error": {
      "type": "string"
    },
    "ErrorCode": {
      "type": "string"
    },
    "ErrorDescription": {
      "type": "string"
    },
    "EvaluationType": {
      "type": "string",
      "enum": [
        "STATIC",
        "DYNAMIC"
      ]
    },
    "ExecuteProvisionedProductPlanInput": {
      "type": "structure",
      "required": [
        "PlanId",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "ExecuteProvisionedProductPlanOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>Information about the result of provisioning the product.</p>"
        }
      }
    },
    "ExecuteProvisionedProductServiceActionInput": {
      "type": "structure",
      "required": [
        "ProvisionedProductId",
        "ServiceActionId",
        "ExecuteToken"
      ],
      "members": {
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "ExecuteToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>An idempotency token that uniquely identifies the execute request.</p>",
          "idempotencyToken": true
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Parameters": {
          "shape": "ExecutionParameterMap",
          "documentation": "<p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for any special parameters such as <code>TARGET</code>.</p>"
        }
      }
    },
    "ExecuteProvisionedProductServiceActionOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>An object containing detailed information about the result of provisioning the product.</p>"
        }
      }
    },
    "ExecutionParameter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ExecutionParameterKey",
          "documentation": "<p>The name of the execution parameter.</p>"
        },
        "Type": {
          "shape": "ExecutionParameterType",
          "documentation": "<p>The execution parameter type.</p>"
        },
        "DefaultValues": {
          "shape": "ExecutionParameterValueList",
          "documentation": "<p>The default values for the execution parameter.</p>"
        }
      },
      "documentation": "<p>Details of an execution parameter value that is passed to a self-service action when executed on a provisioned product.</p>"
    },
    "ExecutionParameterKey": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "ExecutionParameterMap": {
      "type": "map",
      "key": {
        "shape": "ExecutionParameterKey"
      },
      "value": {
        "shape": "ExecutionParameterValueList"
      },
      "max": 200,
      "min": 1
    },
    "ExecutionParameterType": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ExecutionParameterValue": {
      "type": "string",
      "max": 512,
      "min": 0
    },
    "ExecutionParameterValueList": {
      "type": "list",
      "member": {
        "shape": "ExecutionParameterValue"
      },
      "max": 25,
      "min": 0
    },
    "ExecutionParameters": {
      "type": "list",
      "member": {
        "shape": "ExecutionParameter"
      }
    },
    "FailedServiceActionAssociation": {
      "type": "structure",
      "members": {
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        },
        "ErrorCode": {
          "shape": "ServiceActionAssociationErrorCode",
          "documentation": "<p>The error code. Valid values are listed below.</p>"
        },
        "ErrorMessage": {
          "shape": "ServiceActionAssociationErrorMessage",
          "documentation": "<p>A text description of the error.</p>"
        }
      },
      "documentation": "<p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>"
    },
    "FailedServiceActionAssociations": {
      "type": "list",
      "member": {
        "shape": "FailedServiceActionAssociation"
      },
      "max": 50
    },
    "GetAWSOrganizationsAccessStatusInput": {
      "type": "structure",
      "members": {}
    },
    "GetAWSOrganizationsAccessStatusOutput": {
      "type": "structure",
      "members": {
        "AccessStatus": {
          "shape": "AccessStatus",
          "documentation": "<p>The status of the portfolio share feature.</p>"
        }
      }
    },
    "HasDefaultPath": {
      "type": "boolean"
    },
    "Id": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_\\-]*"
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "IgnoreErrors": {
      "type": "boolean"
    },
    "InstructionType": {
      "type": "string"
    },
    "InstructionValue": {
      "type": "string"
    },
    "LastRequestId": {
      "type": "string"
    },
    "LaunchPath": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the launch path.</p>"
        },
        "Name": {
          "shape": "PortfolioName",
          "documentation": "<p>The name of the launch path.</p>"
        }
      },
      "documentation": "<p>A launch path object.</p>"
    },
    "LaunchPathSummaries": {
      "type": "list",
      "member": {
        "shape": "LaunchPathSummary"
      }
    },
    "LaunchPathSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the product path.</p>"
        },
        "ConstraintSummaries": {
          "shape": "ConstraintSummaries",
          "documentation": "<p>The constraints on the portfolio-product relationship.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with this product path.</p>"
        },
        "Name": {
          "shape": "PortfolioName",
          "documentation": "<p>The name of the portfolio to which the user was assigned.</p>"
        }
      },
      "documentation": "<p>Summary information about a product path for a user.</p>"
    },
    "LaunchPaths": {
      "type": "list",
      "member": {
        "shape": "LaunchPath"
      }
    },
    "ListAcceptedPortfolioSharesInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PortfolioShareType": {
          "shape": "PortfolioShareType",
          "documentation": "<p>The type of shared portfolios to list. The default is to list imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - List portfolios shared by the master account of your organization</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - List default portfolios</p> </li> <li> <p> <code>IMPORTED</code> - List imported portfolios</p> </li> </ul>"
        }
      }
    },
    "ListAcceptedPortfolioSharesOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetails": {
          "shape": "PortfolioDetails",
          "documentation": "<p>Information about the portfolios.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListBudgetsForResourceInput": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ResourceId": {
          "shape": "Id",
          "documentation": "<p>The resource identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListBudgetsForResourceOutput": {
      "type": "structure",
      "members": {
        "Budgets": {
          "shape": "Budgets",
          "documentation": "<p>Information about the associated budgets.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListConstraintsForPortfolioInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListConstraintsForPortfolioOutput": {
      "type": "structure",
      "members": {
        "ConstraintDetails": {
          "shape": "ConstraintDetails",
          "documentation": "<p>Information about the constraints.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListLaunchPathsInput": {
      "type": "structure",
      "required": [
        "ProductId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListLaunchPathsOutput": {
      "type": "structure",
      "members": {
        "LaunchPathSummaries": {
          "shape": "LaunchPathSummaries",
          "documentation": "<p>Information about the launch path.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListOrganizationPortfolioAccessInput": {
      "type": "structure",
      "required": [
        "PortfolioId",
        "OrganizationNodeType"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>"
        },
        "OrganizationNodeType": {
          "shape": "OrganizationNodeType",
          "documentation": "<p>The organization node type that will be returned in the output.</p> <ul> <li> <p> <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p> </li> <li> <p> <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p> </li> <li> <p> <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p> </li> </ul>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "ListOrganizationPortfolioAccessOutput": {
      "type": "structure",
      "members": {
        "OrganizationNodes": {
          "shape": "OrganizationNodes",
          "documentation": "<p>Displays information about the organization nodes.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListPortfolioAccessInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "OrganizationParentId": {
          "shape": "Id",
          "documentation": "<p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "ListPortfolioAccessOutput": {
      "type": "structure",
      "members": {
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>Information about the AWS accounts with access to the portfolio.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListPortfoliosForProductInput": {
      "type": "structure",
      "required": [
        "ProductId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "ListPortfoliosForProductOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetails": {
          "shape": "PortfolioDetails",
          "documentation": "<p>Information about the portfolios.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListPortfoliosInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "ListPortfoliosOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetails": {
          "shape": "PortfolioDetails",
          "documentation": "<p>Information about the portfolios.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListPrincipalsForPortfolioInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListPrincipalsForPortfolioOutput": {
      "type": "structure",
      "members": {
        "Principals": {
          "shape": "Principals",
          "documentation": "<p>The IAM principals (users or roles) associated with the portfolio.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListProvisionedProductPlansInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProvisionProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "AccessLevelFilter": {
          "shape": "AccessLevelFilter",
          "documentation": "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
        }
      }
    },
    "ListProvisionedProductPlansOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProductPlans": {
          "shape": "ProvisionedProductPlans",
          "documentation": "<p>Information about the plans.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListProvisioningArtifactsForServiceActionInput": {
      "type": "structure",
      "required": [
        "ServiceActionId"
      ],
      "members": {
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "ListProvisioningArtifactsForServiceActionOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactViews": {
          "shape": "ProvisioningArtifactViews",
          "documentation": "<p>An array of objects with information about product views and provisioning artifacts.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListProvisioningArtifactsInput": {
      "type": "structure",
      "required": [
        "ProductId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        }
      }
    },
    "ListProvisioningArtifactsOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactDetails": {
          "shape": "ProvisioningArtifactDetails",
          "documentation": "<p>Information about the provisioning artifacts.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListRecordHistoryInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "AccessLevelFilter": {
          "shape": "AccessLevelFilter",
          "documentation": "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
        },
        "SearchFilter": {
          "shape": "ListRecordHistorySearchFilter",
          "documentation": "<p>The search filter to scope the results.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListRecordHistoryOutput": {
      "type": "structure",
      "members": {
        "RecordDetails": {
          "shape": "RecordDetails",
          "documentation": "<p>The records, in reverse chronological order.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListRecordHistorySearchFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "SearchFilterKey",
          "documentation": "<p>The filter key.</p> <ul> <li> <p> <code>product</code> - Filter results based on the specified product identifier.</p> </li> <li> <p> <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p> </li> </ul>"
        },
        "Value": {
          "shape": "SearchFilterValue",
          "documentation": "<p>The filter value.</p>"
        }
      },
      "documentation": "<p>The search filter to use when listing history records.</p>"
    },
    "ListResourcesForTagOptionInput": {
      "type": "structure",
      "required": [
        "TagOptionId"
      ],
      "members": {
        "TagOptionId": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type.</p> <ul> <li> <p> <code>Portfolio</code> </p> </li> <li> <p> <code>Product</code> </p> </li> </ul>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListResourcesForTagOptionOutput": {
      "type": "structure",
      "members": {
        "ResourceDetails": {
          "shape": "ResourceDetails",
          "documentation": "<p>Information about the resources.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListServiceActionsForProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "ProvisioningArtifactId"
      ],
      "members": {
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "ListServiceActionsForProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "ServiceActionSummaries": {
          "shape": "ServiceActionSummaries",
          "documentation": "<p>An object containing information about the self-service actions associated with the provisioning artifact.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListServiceActionsInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListServiceActionsOutput": {
      "type": "structure",
      "members": {
        "ServiceActionSummaries": {
          "shape": "ServiceActionSummaries",
          "documentation": "<p>An object containing information about the service actions associated with the provisioning artifact.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListStackInstancesForProvisionedProductInput": {
      "type": "structure",
      "required": [
        "ProvisionedProductId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        }
      }
    },
    "ListStackInstancesForProvisionedProductOutput": {
      "type": "structure",
      "members": {
        "StackInstances": {
          "shape": "StackInstances",
          "documentation": "<p>List of stack instances.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "ListTagOptionsFilters": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagOptionKey",
          "documentation": "<p>The TagOption key.</p>"
        },
        "Value": {
          "shape": "TagOptionValue",
          "documentation": "<p>The TagOption value.</p>"
        },
        "Active": {
          "shape": "TagOptionActive",
          "documentation": "<p>The active state.</p>"
        }
      },
      "documentation": "<p>Filters to use when listing TagOptions.</p>"
    },
    "ListTagOptionsInput": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ListTagOptionsFilters",
          "documentation": "<p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ListTagOptionsOutput": {
      "type": "structure",
      "members": {
        "TagOptionDetails": {
          "shape": "TagOptionDetails",
          "documentation": "<p>Information about the TagOptions.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "LogicalResourceId": {
      "type": "string"
    },
    "Message": {
      "type": "string"
    },
    "Namespaces": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "NoEcho": {
      "type": "boolean"
    },
    "NotificationArn": {
      "type": "string",
      "max": 1224,
      "min": 1,
      "pattern": "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "NotificationArns": {
      "type": "list",
      "member": {
        "shape": "NotificationArn"
      },
      "max": 5
    },
    "OrganizationNode": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "OrganizationNodeType",
          "documentation": "<p>The organization node type.</p>"
        },
        "Value": {
          "shape": "OrganizationNodeValue",
          "documentation": "<p>The identifier of the organization node.</p>"
        }
      },
      "documentation": "<p>Information about the organization node.</p>"
    },
    "OrganizationNodeType": {
      "type": "string",
      "enum": [
        "ORGANIZATION",
        "ORGANIZATIONAL_UNIT",
        "ACCOUNT"
      ]
    },
    "OrganizationNodeValue": {
      "type": "string",
      "pattern": "(^[0-9]{12}$)|(^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32})|(^o-[a-z0-9]{10,32}$)|(^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$)|(^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$)"
    },
    "OrganizationNodes": {
      "type": "list",
      "member": {
        "shape": "OrganizationNode"
      }
    },
    "OutputDescription": {
      "type": "string",
      "max": 1024
    },
    "OutputKey": {
      "type": "string"
    },
    "OutputValue": {
      "type": "string"
    },
    "PageSize": {
      "type": "integer",
      "max": 20,
      "min": 0
    },
    "PageToken": {
      "type": "string",
      "max": 2024,
      "pattern": "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"
    },
    "ParameterConstraints": {
      "type": "structure",
      "members": {
        "AllowedValues": {
          "shape": "AllowedValues",
          "documentation": "<p>The values that the administrator has allowed for the parameter.</p>"
        }
      },
      "documentation": "<p>The constraints that the administrator has put on the parameter.</p>"
    },
    "ParameterKey": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "ParameterType": {
      "type": "string"
    },
    "ParameterValue": {
      "type": "string",
      "max": 4096
    },
    "PhysicalId": {
      "type": "string"
    },
    "PhysicalResourceId": {
      "type": "string"
    },
    "PlanResourceType": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "PortfolioDescription": {
      "type": "string",
      "max": 2000
    },
    "PortfolioDetail": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "ARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN assigned to the portfolio.</p>"
        },
        "DisplayName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name to use for display purposes.</p>"
        },
        "Description": {
          "shape": "PortfolioDescription",
          "documentation": "<p>The description of the portfolio.</p>"
        },
        "CreatedTime": {
          "shape": "CreationTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "ProviderName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the portfolio provider.</p>"
        }
      },
      "documentation": "<p>Information about a portfolio.</p>"
    },
    "PortfolioDetails": {
      "type": "list",
      "member": {
        "shape": "PortfolioDetail"
      }
    },
    "PortfolioDisplayName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "PortfolioName": {
      "type": "string"
    },
    "PortfolioShareType": {
      "type": "string",
      "enum": [
        "IMPORTED",
        "AWS_SERVICECATALOG",
        "AWS_ORGANIZATIONS"
      ]
    },
    "Principal": {
      "type": "structure",
      "members": {
        "PrincipalARN": {
          "shape": "PrincipalARN",
          "documentation": "<p>The ARN of the principal (IAM user, role, or group).</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The principal type. The supported value is <code>IAM</code>.</p>"
        }
      },
      "documentation": "<p>Information about a principal.</p>"
    },
    "PrincipalARN": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "PrincipalType": {
      "type": "string",
      "enum": [
        "IAM"
      ]
    },
    "Principals": {
      "type": "list",
      "member": {
        "shape": "Principal"
      }
    },
    "ProductArn": {
      "type": "string",
      "max": 1224,
      "min": 1,
      "pattern": "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "ProductSource": {
      "type": "string",
      "enum": [
        "ACCOUNT"
      ]
    },
    "ProductType": {
      "type": "string",
      "enum": [
        "CLOUD_FORMATION_TEMPLATE",
        "MARKETPLACE"
      ],
      "max": 8191
    },
    "ProductViewAggregationType": {
      "type": "string"
    },
    "ProductViewAggregationValue": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "AttributeValue",
          "documentation": "<p>The value of the product view aggregation.</p>"
        },
        "ApproximateCount": {
          "shape": "ApproximateCount",
          "documentation": "<p>An approximate count of the products that match the value.</p>"
        }
      },
      "documentation": "<p>A single product view aggregation value/count pair, containing metadata about each product to which the calling user has access.</p>"
    },
    "ProductViewAggregationValues": {
      "type": "list",
      "member": {
        "shape": "ProductViewAggregationValue"
      }
    },
    "ProductViewAggregations": {
      "type": "map",
      "key": {
        "shape": "ProductViewAggregationType"
      },
      "value": {
        "shape": "ProductViewAggregationValues"
      }
    },
    "ProductViewDetail": {
      "type": "structure",
      "members": {
        "ProductViewSummary": {
          "shape": "ProductViewSummary",
          "documentation": "<p>Summary information about the product view.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the product.</p> <ul> <li> <p> <code>AVAILABLE</code> - The product is ready for use.</p> </li> <li> <p> <code>CREATING</code> - Product creation has started; the product is not ready for use.</p> </li> <li> <p> <code>FAILED</code> - An action failed.</p> </li> </ul>"
        },
        "ProductARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the product.</p>"
        },
        "CreatedTime": {
          "shape": "CreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        }
      },
      "documentation": "<p>Information about a product view.</p>"
    },
    "ProductViewDetails": {
      "type": "list",
      "member": {
        "shape": "ProductViewDetail"
      }
    },
    "ProductViewDistributor": {
      "type": "string"
    },
    "ProductViewFilterBy": {
      "type": "string",
      "enum": [
        "FullTextSearch",
        "Owner",
        "ProductType",
        "SourceProductId"
      ]
    },
    "ProductViewFilterValue": {
      "type": "string"
    },
    "ProductViewFilterValues": {
      "type": "list",
      "member": {
        "shape": "ProductViewFilterValue"
      }
    },
    "ProductViewFilters": {
      "type": "map",
      "key": {
        "shape": "ProductViewFilterBy"
      },
      "value": {
        "shape": "ProductViewFilterValues"
      }
    },
    "ProductViewName": {
      "type": "string",
      "max": 8191
    },
    "ProductViewOwner": {
      "type": "string",
      "max": 8191
    },
    "ProductViewShortDescription": {
      "type": "string",
      "max": 8191
    },
    "ProductViewSortBy": {
      "type": "string",
      "enum": [
        "Title",
        "VersionCount",
        "CreationDate"
      ]
    },
    "ProductViewSummaries": {
      "type": "list",
      "member": {
        "shape": "ProductViewSummary"
      }
    },
    "ProductViewSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product view identifier.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Name": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product.</p>"
        },
        "Owner": {
          "shape": "ProductViewOwner",
          "documentation": "<p>The owner of the product. Contact the product administrator for the significance of this value.</p>"
        },
        "ShortDescription": {
          "shape": "ProductViewShortDescription",
          "documentation": "<p>Short description of the product.</p>"
        },
        "Type": {
          "shape": "ProductType",
          "documentation": "<p>The product type. Contact the product administrator for the significance of this value. If this value is <code>MARKETPLACE</code>, the product was created by AWS Marketplace.</p>"
        },
        "Distributor": {
          "shape": "ProductViewDistributor",
          "documentation": "<p>The distributor of the product. Contact the product administrator for the significance of this value.</p>"
        },
        "HasDefaultPath": {
          "shape": "HasDefaultPath",
          "documentation": "<p>Indicates whether the product has a default path. If the product does not have a default path, call <a>ListLaunchPaths</a> to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not required, and the output of <a>ProductViewSummary</a> can be used directly with <a>DescribeProvisioningParameters</a>.</p>"
        },
        "SupportEmail": {
          "shape": "SupportEmail",
          "documentation": "<p>The email contact information to obtain support for this Product.</p>"
        },
        "SupportDescription": {
          "shape": "SupportDescription",
          "documentation": "<p>The description of the support for this Product.</p>"
        },
        "SupportUrl": {
          "shape": "SupportUrl",
          "documentation": "<p>The URL information to obtain support for this Product.</p>"
        }
      },
      "documentation": "<p>Summary information about a product view.</p>"
    },
    "PropertyKey": {
      "type": "string",
      "enum": [
        "OWNER"
      ],
      "max": 128,
      "min": 1
    },
    "PropertyName": {
      "type": "string"
    },
    "PropertyValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ProviderName": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "ProvisionProductInput": {
      "type": "structure",
      "required": [
        "ProvisionedProductName",
        "ProvisionToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. You must provide the name or ID, but not both.</p>"
        },
        "ProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningArtifactName": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>"
        },
        "PathName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name of the path. You must provide the name or ID, but not both.</p>"
        },
        "ProvisionedProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>A user-friendly name for the provisioned product. This value must be unique for the AWS account and cannot be updated after the product is provisioned.</p>"
        },
        "ProvisioningParameters": {
          "shape": "ProvisioningParameters",
          "documentation": "<p>Parameters specified by the administrator that are required for provisioning the product.</p>"
        },
        "ProvisioningPreferences": {
          "shape": "ProvisioningPreferences",
          "documentation": "<p>An object that contains information about the provisioning preferences for a stack set.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>One or more tags.</p>"
        },
        "NotificationArns": {
          "shape": "NotificationArns",
          "documentation": "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>"
        },
        "ProvisionToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>An idempotency token that uniquely identifies the provisioning request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "ProvisionProductOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>Information about the result of provisioning the product.</p>"
        }
      }
    },
    "ProvisionedProductAttribute": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "Arn": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The ARN of the provisioned product.</p>"
        },
        "Type": {
          "shape": "ProvisionedProductType",
          "documentation": "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "Status": {
          "shape": "ProvisionedProductStatus",
          "documentation": "<p>The current status of the provisioned product.</p> <ul> <li> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent operation succeeded and completed.</p> </li> <li> <p> <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> <li> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.</p> </li> <li> <p> <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p> </li> <li> <p> <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> </ul>"
        },
        "StatusMessage": {
          "shape": "ProvisionedProductStatusMessage",
          "documentation": "<p>The current status message of the provisioned product.</p>"
        },
        "CreatedTime": {
          "shape": "CreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>"
        },
        "LastRecordId": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the last request performed on this provisioned product.</p>"
        },
        "LastProvisioningRecordId": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the last request performed on this provisioned product of the following types:</p> <ul> <li> <p> ProvisionedProduct </p> </li> <li> <p> UpdateProvisionedProduct </p> </li> <li> <p> ExecuteProvisionedProductPlan </p> </li> <li> <p> TerminateProvisionedProduct </p> </li> </ul>"
        },
        "LastSuccessfulProvisioningRecordId": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p> <ul> <li> <p> ProvisionedProduct </p> </li> <li> <p> UpdateProvisionedProduct </p> </li> <li> <p> ExecuteProvisionedProductPlan </p> </li> <li> <p> TerminateProvisionedProduct </p> </li> </ul>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>One or more tags.</p>"
        },
        "PhysicalId": {
          "shape": "PhysicalId",
          "documentation": "<p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "ProvisioningArtifactName": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact.</p>"
        },
        "UserArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM user.</p>"
        },
        "UserArnSession": {
          "shape": "UserArnSession",
          "documentation": "<p>The ARN of the IAM user in the session. This ARN might contain a session ID.</p>"
        }
      },
      "documentation": "<p>Information about a provisioned product.</p>"
    },
    "ProvisionedProductAttributes": {
      "type": "list",
      "member": {
        "shape": "ProvisionedProductAttribute"
      }
    },
    "ProvisionedProductDetail": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "Arn": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The ARN of the provisioned product.</p>"
        },
        "Type": {
          "shape": "ProvisionedProductType",
          "documentation": "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
        },
        "Id": {
          "shape": "ProvisionedProductId",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "Status": {
          "shape": "ProvisionedProductStatus",
          "documentation": "<p>The current status of the provisioned product.</p> <ul> <li> <p> <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most recent operation succeeded and completed.</p> </li> <li> <p> <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> <li> <p> <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.</p> </li> <li> <p> <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p> </li> <li> <p> <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p> </li> </ul>"
        },
        "StatusMessage": {
          "shape": "ProvisionedProductStatusMessage",
          "documentation": "<p>The current status message of the provisioned product.</p>"
        },
        "CreatedTime": {
          "shape": "CreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.</p>"
        },
        "LastRecordId": {
          "shape": "LastRequestId",
          "documentation": "<p>The record identifier of the last request performed on this provisioned product.</p>"
        },
        "LastProvisioningRecordId": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the last request performed on this provisioned product of the following types:</p> <ul> <li> <p> ProvisionedProduct </p> </li> <li> <p> UpdateProvisionedProduct </p> </li> <li> <p> ExecuteProvisionedProductPlan </p> </li> <li> <p> TerminateProvisionedProduct </p> </li> </ul>"
        },
        "LastSuccessfulProvisioningRecordId": {
          "shape": "Id",
          "documentation": "<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p> <ul> <li> <p> ProvisionedProduct </p> </li> <li> <p> UpdateProvisionedProduct </p> </li> <li> <p> ExecuteProvisionedProductPlan </p> </li> <li> <p> TerminateProvisionedProduct </p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        }
      },
      "documentation": "<p>Information about a provisioned product.</p>"
    },
    "ProvisionedProductDetails": {
      "type": "list",
      "member": {
        "shape": "ProvisionedProductDetail"
      }
    },
    "ProvisionedProductFilters": {
      "type": "map",
      "key": {
        "shape": "ProvisionedProductViewFilterBy"
      },
      "value": {
        "shape": "ProvisionedProductViewFilterValues"
      }
    },
    "ProvisionedProductId": {
      "type": "string"
    },
    "ProvisionedProductName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9._-]*"
    },
    "ProvisionedProductNameOrArn": {
      "type": "string",
      "max": 1224,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "ProvisionedProductPlanDetails": {
      "type": "structure",
      "members": {
        "CreatedTime": {
          "shape": "CreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use <a>ListLaunchPaths</a>.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "PlanName": {
          "shape": "ProvisionedProductPlanName",
          "documentation": "<p>The name of the plan.</p>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "ProvisionProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisionProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "PlanType": {
          "shape": "ProvisionedProductPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "Status": {
          "shape": "ProvisionedProductPlanStatus",
          "documentation": "<p>The status.</p>"
        },
        "UpdatedTime": {
          "shape": "UpdatedTime",
          "documentation": "<p>The time when the plan was last updated.</p>"
        },
        "NotificationArns": {
          "shape": "NotificationArns",
          "documentation": "<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events.</p>"
        },
        "ProvisioningParameters": {
          "shape": "UpdateProvisioningParameters",
          "documentation": "<p>Parameters specified by the administrator that are required for provisioning the product.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>One or more tags.</p>"
        },
        "StatusMessage": {
          "shape": "StatusMessage",
          "documentation": "<p>The status message.</p>"
        }
      },
      "documentation": "<p>Information about a plan.</p>"
    },
    "ProvisionedProductPlanName": {
      "type": "string"
    },
    "ProvisionedProductPlanStatus": {
      "type": "string",
      "enum": [
        "CREATE_IN_PROGRESS",
        "CREATE_SUCCESS",
        "CREATE_FAILED",
        "EXECUTE_IN_PROGRESS",
        "EXECUTE_SUCCESS",
        "EXECUTE_FAILED"
      ]
    },
    "ProvisionedProductPlanSummary": {
      "type": "structure",
      "members": {
        "PlanName": {
          "shape": "ProvisionedProductPlanName",
          "documentation": "<p>The name of the plan.</p>"
        },
        "PlanId": {
          "shape": "Id",
          "documentation": "<p>The plan identifier.</p>"
        },
        "ProvisionProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisionProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "PlanType": {
          "shape": "ProvisionedProductPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        }
      },
      "documentation": "<p>Summary information about a plan.</p>"
    },
    "ProvisionedProductPlanType": {
      "type": "string",
      "enum": [
        "CLOUDFORMATION"
      ]
    },
    "ProvisionedProductPlans": {
      "type": "list",
      "member": {
        "shape": "ProvisionedProductPlanSummary"
      }
    },
    "ProvisionedProductProperties": {
      "type": "map",
      "key": {
        "shape": "PropertyKey"
      },
      "value": {
        "shape": "PropertyValue"
      },
      "max": 100,
      "min": 1
    },
    "ProvisionedProductStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "UNDER_CHANGE",
        "TAINTED",
        "ERROR",
        "PLAN_IN_PROGRESS"
      ]
    },
    "ProvisionedProductStatusMessage": {
      "type": "string"
    },
    "ProvisionedProductType": {
      "type": "string"
    },
    "ProvisionedProductViewFilterBy": {
      "type": "string",
      "enum": [
        "SearchQuery"
      ]
    },
    "ProvisionedProductViewFilterValue": {
      "type": "string"
    },
    "ProvisionedProductViewFilterValues": {
      "type": "list",
      "member": {
        "shape": "ProvisionedProductViewFilterValue"
      }
    },
    "ProvisioningArtifact": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "Name": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact.</p>"
        },
        "Description": {
          "shape": "ProvisioningArtifactDescription",
          "documentation": "<p>The description of the provisioning artifact.</p>"
        },
        "CreatedTime": {
          "shape": "ProvisioningArtifactCreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "Guidance": {
          "shape": "ProvisioningArtifactGuidance",
          "documentation": "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"
        }
      },
      "documentation": "<p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>"
    },
    "ProvisioningArtifactActive": {
      "type": "boolean"
    },
    "ProvisioningArtifactCreatedTime": {
      "type": "timestamp"
    },
    "ProvisioningArtifactDescription": {
      "type": "string",
      "max": 8192
    },
    "ProvisioningArtifactDetail": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "Name": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact.</p>"
        },
        "Description": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The description of the provisioning artifact.</p>"
        },
        "Type": {
          "shape": "ProvisioningArtifactType",
          "documentation": "<p>The type of provisioning artifact.</p> <ul> <li> <p> <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p> </li> <li> <p> <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p> </li> <li> <p> <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p> </li> </ul>"
        },
        "CreatedTime": {
          "shape": "CreationTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "Active": {
          "shape": "ProvisioningArtifactActive",
          "documentation": "<p>Indicates whether the product version is active.</p>"
        },
        "Guidance": {
          "shape": "ProvisioningArtifactGuidance",
          "documentation": "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"
        }
      },
      "documentation": "<p>Information about a provisioning artifact (also known as a version) for a product.</p>"
    },
    "ProvisioningArtifactDetails": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifactDetail"
      }
    },
    "ProvisioningArtifactGuidance": {
      "type": "string",
      "enum": [
        "DEFAULT",
        "DEPRECATED"
      ]
    },
    "ProvisioningArtifactInfo": {
      "type": "map",
      "key": {
        "shape": "ProvisioningArtifactInfoKey"
      },
      "value": {
        "shape": "ProvisioningArtifactInfoValue"
      },
      "max": 100,
      "min": 1
    },
    "ProvisioningArtifactInfoKey": {
      "type": "string"
    },
    "ProvisioningArtifactInfoValue": {
      "type": "string"
    },
    "ProvisioningArtifactName": {
      "type": "string",
      "max": 8192
    },
    "ProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ProvisioningArtifactOutputKey",
          "documentation": "<p>The provisioning artifact output key.</p>"
        },
        "Description": {
          "shape": "OutputDescription",
          "documentation": "<p>Description of the provisioning artifact output key.</p>"
        }
      },
      "documentation": "<p>Provisioning artifact output.</p>"
    },
    "ProvisioningArtifactOutputKey": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[a-zA-Z0-9]*"
    },
    "ProvisioningArtifactOutputs": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifactOutput"
      },
      "max": 60
    },
    "ProvisioningArtifactParameter": {
      "type": "structure",
      "members": {
        "ParameterKey": {
          "shape": "ParameterKey",
          "documentation": "<p>The parameter key.</p>"
        },
        "DefaultValue": {
          "shape": "DefaultValue",
          "documentation": "<p>The default value.</p>"
        },
        "ParameterType": {
          "shape": "ParameterType",
          "documentation": "<p>The parameter type.</p>"
        },
        "IsNoEcho": {
          "shape": "NoEcho",
          "documentation": "<p>If this value is true, the value for this parameter is obfuscated from view when the parameter is retrieved. This parameter is used to hide sensitive information.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the parameter.</p>"
        },
        "ParameterConstraints": {
          "shape": "ParameterConstraints",
          "documentation": "<p>Constraints that the administrator has put on a parameter.</p>"
        }
      },
      "documentation": "<p>Information about a parameter used to provision a product.</p>"
    },
    "ProvisioningArtifactParameters": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifactParameter"
      }
    },
    "ProvisioningArtifactPreferences": {
      "type": "structure",
      "members": {
        "StackSetAccounts": {
          "shape": "StackSetAccounts",
          "documentation": "<p>One or more AWS accounts where stack instances are deployed from the stack set. These accounts can be scoped in <code>ProvisioningPreferences$StackSetAccounts</code> and <code>UpdateProvisioningPreferences$StackSetAccounts</code>.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>"
        },
        "StackSetRegions": {
          "shape": "StackSetRegions",
          "documentation": "<p>One or more AWS Regions where stack instances are deployed from the stack set. These regions can be scoped in <code>ProvisioningPreferences$StackSetRegions</code> and <code>UpdateProvisioningPreferences$StackSetRegions</code>.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>"
        }
      },
      "documentation": "<p>The user-defined preferences that will be applied during product provisioning, unless overridden by <code>ProvisioningPreferences</code> or <code>UpdateProvisioningPreferences</code>.</p> <p>For more information on maximum concurrent accounts and failure tolerance, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options\">Stack set operation options</a> in the <i>AWS CloudFormation User Guide</i>.</p>"
    },
    "ProvisioningArtifactProperties": {
      "type": "structure",
      "required": [
        "Info"
      ],
      "members": {
        "Name": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>"
        },
        "Description": {
          "shape": "ProvisioningArtifactDescription",
          "documentation": "<p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>"
        },
        "Info": {
          "shape": "ProvisioningArtifactInfo",
          "documentation": "<p>The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows:</p> <p> <code>\"LoadTemplateFromURL\": \"https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/...\"</code> </p>"
        },
        "Type": {
          "shape": "ProvisioningArtifactType",
          "documentation": "<p>The type of provisioning artifact.</p> <ul> <li> <p> <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p> </li> <li> <p> <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p> </li> <li> <p> <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p> </li> </ul>"
        },
        "DisableTemplateValidation": {
          "shape": "DisableTemplateValidation",
          "documentation": "<p>If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.</p>"
        }
      },
      "documentation": "<p>Information about a provisioning artifact (also known as a version) for a product.</p>"
    },
    "ProvisioningArtifactPropertyName": {
      "type": "string",
      "enum": [
        "Id"
      ]
    },
    "ProvisioningArtifactPropertyValue": {
      "type": "string"
    },
    "ProvisioningArtifactSummaries": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifactSummary"
      }
    },
    "ProvisioningArtifactSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "Name": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact.</p>"
        },
        "Description": {
          "shape": "ProvisioningArtifactDescription",
          "documentation": "<p>The description of the provisioning artifact.</p>"
        },
        "CreatedTime": {
          "shape": "ProvisioningArtifactCreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "ProvisioningArtifactMetadata": {
          "shape": "ProvisioningArtifactInfo",
          "documentation": "<p>The metadata for the provisioning artifact. This is used with AWS Marketplace products.</p>"
        }
      },
      "documentation": "<p>Summary information about a provisioning artifact (also known as a version) for a product.</p>"
    },
    "ProvisioningArtifactType": {
      "type": "string",
      "enum": [
        "CLOUD_FORMATION_TEMPLATE",
        "MARKETPLACE_AMI",
        "MARKETPLACE_CAR"
      ]
    },
    "ProvisioningArtifactView": {
      "type": "structure",
      "members": {
        "ProductViewSummary": {
          "shape": "ProductViewSummary",
          "documentation": "<p>Summary information about a product view.</p>"
        },
        "ProvisioningArtifact": {
          "shape": "ProvisioningArtifact",
          "documentation": "<p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>"
        }
      },
      "documentation": "<p>An object that contains summary information about a product view and a provisioning artifact.</p>"
    },
    "ProvisioningArtifactViews": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifactView"
      }
    },
    "ProvisioningArtifacts": {
      "type": "list",
      "member": {
        "shape": "ProvisioningArtifact"
      }
    },
    "ProvisioningParameter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ParameterKey",
          "documentation": "<p>The parameter key.</p>"
        },
        "Value": {
          "shape": "ParameterValue",
          "documentation": "<p>The parameter value.</p>"
        }
      },
      "documentation": "<p>Information about a parameter used to provision a product.</p>"
    },
    "ProvisioningParameters": {
      "type": "list",
      "member": {
        "shape": "ProvisioningParameter"
      }
    },
    "ProvisioningPreferences": {
      "type": "structure",
      "members": {
        "StackSetAccounts": {
          "shape": "StackSetAccounts",
          "documentation": "<p>One or more AWS accounts that will have access to the provisioned product.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>The AWS accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p> <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>"
        },
        "StackSetRegions": {
          "shape": "StackSetRegions",
          "documentation": "<p>One or more AWS Regions where the provisioned product will be available.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p> <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>"
        },
        "StackSetFailureToleranceCount": {
          "shape": "StackSetFailureToleranceCount",
          "documentation": "<p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p> <p>The default value is <code>0</code> if no value is specified.</p>"
        },
        "StackSetFailureTolerancePercentage": {
          "shape": "StackSetFailureTolerancePercentage",
          "documentation": "<p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p> <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>"
        },
        "StackSetMaxConcurrencyCount": {
          "shape": "StackSetMaxConcurrencyCount",
          "documentation": "<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p> <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"
        },
        "StackSetMaxConcurrencyPercentage": {
          "shape": "StackSetMaxConcurrencyPercentage",
          "documentation": "<p>The maximum percentage of accounts in which to perform this operation at one time.</p> <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p> <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"
        }
      },
      "documentation": "<p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>"
    },
    "RecordDetail": {
      "type": "structure",
      "members": {
        "RecordId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the record.</p>"
        },
        "ProvisionedProductName": {
          "shape": "ProvisionedProductName",
          "documentation": "<p>The user-friendly name of the provisioned product.</p>"
        },
        "Status": {
          "shape": "RecordStatus",
          "documentation": "<p>The status of the provisioned product.</p> <ul> <li> <p> <code>CREATED</code> - The request was created but the operation has not started.</p> </li> <li> <p> <code>IN_PROGRESS</code> - The requested operation is in progress.</p> </li> <li> <p> <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the requested operation failed and some remediation is occurring. For example, a rollback.</p> </li> <li> <p> <code>SUCCEEDED</code> - The requested operation has successfully completed.</p> </li> <li> <p> <code>FAILED</code> - The requested operation has unsuccessfully completed. Investigate using the error messages returned.</p> </li> </ul>"
        },
        "CreatedTime": {
          "shape": "CreatedTime",
          "documentation": "<p>The UTC time stamp of the creation time.</p>"
        },
        "UpdatedTime": {
          "shape": "UpdatedTime",
          "documentation": "<p>The time when the record was last updated.</p>"
        },
        "ProvisionedProductType": {
          "shape": "ProvisionedProductType",
          "documentation": "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
        },
        "RecordType": {
          "shape": "RecordType",
          "documentation": "<p>The record type.</p> <ul> <li> <p> <code>PROVISION_PRODUCT</code> </p> </li> <li> <p> <code>UPDATE_PROVISIONED_PRODUCT</code> </p> </li> <li> <p> <code>TERMINATE_PROVISIONED_PRODUCT</code> </p> </li> </ul>"
        },
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier.</p>"
        },
        "RecordErrors": {
          "shape": "RecordErrors",
          "documentation": "<p>The errors that occurred.</p>"
        },
        "RecordTags": {
          "shape": "RecordTags",
          "documentation": "<p>One or more tags.</p>"
        }
      },
      "documentation": "<p>Information about a request operation.</p>"
    },
    "RecordDetails": {
      "type": "list",
      "member": {
        "shape": "RecordDetail"
      }
    },
    "RecordError": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "ErrorCode",
          "documentation": "<p>The numeric value of the error.</p>"
        },
        "Description": {
          "shape": "ErrorDescription",
          "documentation": "<p>The description of the error.</p>"
        }
      },
      "documentation": "<p>The error code and description resulting from an operation.</p>"
    },
    "RecordErrors": {
      "type": "list",
      "member": {
        "shape": "RecordError"
      }
    },
    "RecordOutput": {
      "type": "structure",
      "members": {
        "OutputKey": {
          "shape": "OutputKey",
          "documentation": "<p>The output key.</p>"
        },
        "OutputValue": {
          "shape": "OutputValue",
          "documentation": "<p>The output value.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the output.</p>"
        }
      },
      "documentation": "<p>The output for the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>"
    },
    "RecordOutputs": {
      "type": "list",
      "member": {
        "shape": "RecordOutput"
      }
    },
    "RecordStatus": {
      "type": "string",
      "enum": [
        "CREATED",
        "IN_PROGRESS",
        "IN_PROGRESS_IN_ERROR",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "RecordTag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "RecordTagKey",
          "documentation": "<p>The key for this tag.</p>"
        },
        "Value": {
          "shape": "RecordTagValue",
          "documentation": "<p>The value for this tag.</p>"
        }
      },
      "documentation": "<p>Information about a tag, which is a key-value pair.</p>"
    },
    "RecordTagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "RecordTagValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "RecordTags": {
      "type": "list",
      "member": {
        "shape": "RecordTag"
      },
      "max": 50
    },
    "RecordType": {
      "type": "string"
    },
    "Region": {
      "type": "string"
    },
    "RejectPortfolioShareInput": {
      "type": "structure",
      "required": [
        "PortfolioId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "PortfolioShareType": {
          "shape": "PortfolioShareType",
          "documentation": "<p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p> <ul> <li> <p> <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the master account of your organization.</p> </li> <li> <p> <code>IMPORTED</code> - Reject imported portfolios.</p> </li> <li> <p> <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p> </li> </ul> <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code> </p>"
        }
      }
    },
    "RejectPortfolioShareOutput": {
      "type": "structure",
      "members": {}
    },
    "Replacement": {
      "type": "string",
      "enum": [
        "TRUE",
        "FALSE",
        "CONDITIONAL"
      ]
    },
    "RequiresRecreation": {
      "type": "string",
      "enum": [
        "NEVER",
        "CONDITIONALLY",
        "ALWAYS"
      ]
    },
    "ResourceARN": {
      "type": "string",
      "max": 150,
      "min": 1
    },
    "ResourceAttribute": {
      "type": "string",
      "enum": [
        "PROPERTIES",
        "METADATA",
        "CREATIONPOLICY",
        "UPDATEPOLICY",
        "DELETIONPOLICY",
        "TAGS"
      ]
    },
    "ResourceChange": {
      "type": "structure",
      "members": {
        "Action": {
          "shape": "ChangeAction",
          "documentation": "<p>The change action.</p>"
        },
        "LogicalResourceId": {
          "shape": "LogicalResourceId",
          "documentation": "<p>The ID of the resource, as defined in the CloudFormation template.</p>"
        },
        "PhysicalResourceId": {
          "shape": "PhysicalResourceId",
          "documentation": "<p>The ID of the resource, if it was already created.</p>"
        },
        "ResourceType": {
          "shape": "PlanResourceType",
          "documentation": "<p>The type of resource.</p>"
        },
        "Replacement": {
          "shape": "Replacement",
          "documentation": "<p>If the change type is <code>Modify</code>, indicates whether the existing resource is deleted and replaced with a new one.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>The change scope.</p>"
        },
        "Details": {
          "shape": "ResourceChangeDetails",
          "documentation": "<p>Information about the resource changes.</p>"
        }
      },
      "documentation": "<p>Information about a resource change that will occur when a plan is executed.</p>"
    },
    "ResourceChangeDetail": {
      "type": "structure",
      "members": {
        "Target": {
          "shape": "ResourceTargetDefinition",
          "documentation": "<p>Information about the resource attribute to be modified.</p>"
        },
        "Evaluation": {
          "shape": "EvaluationType",
          "documentation": "<p>For static evaluations, the value of the resource attribute will change and the new value is known. For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>"
        },
        "CausingEntity": {
          "shape": "CausingEntity",
          "documentation": "<p>The ID of the entity that caused the change.</p>"
        }
      },
      "documentation": "<p>Information about a change to a resource attribute.</p>"
    },
    "ResourceChangeDetails": {
      "type": "list",
      "member": {
        "shape": "ResourceChangeDetail"
      }
    },
    "ResourceChanges": {
      "type": "list",
      "member": {
        "shape": "ResourceChange"
      }
    },
    "ResourceDetail": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceDetailId",
          "documentation": "<p>The identifier of the resource.</p>"
        },
        "ARN": {
          "shape": "ResourceDetailARN",
          "documentation": "<p>The ARN of the resource.</p>"
        },
        "Name": {
          "shape": "ResourceDetailName",
          "documentation": "<p>The name of the resource.</p>"
        },
        "Description": {
          "shape": "ResourceDetailDescription",
          "documentation": "<p>The description of the resource.</p>"
        },
        "CreatedTime": {
          "shape": "ResourceDetailCreatedTime",
          "documentation": "<p>The creation time of the resource.</p>"
        }
      },
      "documentation": "<p>Information about a resource.</p>"
    },
    "ResourceDetailARN": {
      "type": "string"
    },
    "ResourceDetailCreatedTime": {
      "type": "timestamp"
    },
    "ResourceDetailDescription": {
      "type": "string"
    },
    "ResourceDetailId": {
      "type": "string"
    },
    "ResourceDetailName": {
      "type": "string"
    },
    "ResourceDetails": {
      "type": "list",
      "member": {
        "shape": "ResourceDetail"
      }
    },
    "ResourceId": {
      "type": "string"
    },
    "ResourceTargetDefinition": {
      "type": "structure",
      "members": {
        "Attribute": {
          "shape": "ResourceAttribute",
          "documentation": "<p>The attribute to be changed.</p>"
        },
        "Name": {
          "shape": "PropertyName",
          "documentation": "<p>If the attribute is <code>Properties</code>, the value is the name of the property. Otherwise, the value is null.</p>"
        },
        "RequiresRecreation": {
          "shape": "RequiresRecreation",
          "documentation": "<p>If the attribute is <code>Properties</code>, indicates whether a change to this property causes the resource to be re-created.</p>"
        }
      },
      "documentation": "<p>Information about a change to a resource attribute.</p>"
    },
    "ResourceType": {
      "type": "string"
    },
    "ScanProvisionedProductsInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "AccessLevelFilter": {
          "shape": "AccessLevelFilter",
          "documentation": "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "ScanProvisionedProductsOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProducts": {
          "shape": "ProvisionedProductDetails",
          "documentation": "<p>Information about the provisioned products.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "Scope": {
      "type": "list",
      "member": {
        "shape": "ResourceAttribute"
      }
    },
    "SearchFilterKey": {
      "type": "string"
    },
    "SearchFilterValue": {
      "type": "string"
    },
    "SearchProductsAsAdminInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "PortfolioId": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "Filters": {
          "shape": "ProductViewFilters",
          "documentation": "<p>The search filters. If no search filters are specified, the output includes all products to which the administrator has access.</p>"
        },
        "SortBy": {
          "shape": "ProductViewSortBy",
          "documentation": "<p>The sort field. If no value is specified, the results are not sorted.</p>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>The sort order. If no value is specified, the results are not sorted.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "ProductSource": {
          "shape": "ProductSource",
          "documentation": "<p>Access level of the source of the product.</p>"
        }
      }
    },
    "SearchProductsAsAdminOutput": {
      "type": "structure",
      "members": {
        "ProductViewDetails": {
          "shape": "ProductViewDetails",
          "documentation": "<p>Information about the product views.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "SearchProductsInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Filters": {
          "shape": "ProductViewFilters",
          "documentation": "<p>The search filters. If no search filters are specified, the output includes all products to which the caller has access.</p>"
        },
        "PageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "SortBy": {
          "shape": "ProductViewSortBy",
          "documentation": "<p>The sort field. If no value is specified, the results are not sorted.</p>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>The sort order. If no value is specified, the results are not sorted.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "SearchProductsOutput": {
      "type": "structure",
      "members": {
        "ProductViewSummaries": {
          "shape": "ProductViewSummaries",
          "documentation": "<p>Information about the product views.</p>"
        },
        "ProductViewAggregations": {
          "shape": "ProductViewAggregations",
          "documentation": "<p>The product view aggregations.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "SearchProvisionedProductsInput": {
      "type": "structure",
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "AccessLevelFilter": {
          "shape": "AccessLevelFilter",
          "documentation": "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
        },
        "Filters": {
          "shape": "ProvisionedProductFilters",
          "documentation": "<p>The search filters.</p> <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>, <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, <code>provisioningArtifact</code>, <code>type</code>, <code>status</code>, <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>, <code>productName</code>, and <code>provisioningArtifactName</code>.</p> <p>Example: <code>\"SearchQuery\":[\"status:AVAILABLE\"]</code> </p>"
        },
        "SortBy": {
          "shape": "SortField",
          "documentation": "<p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, and <code>lastRecordId</code>.</p>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>The sort order. If no value is specified, the results are not sorted.</p>"
        },
        "PageSize": {
          "shape": "SearchProvisionedProductsPageSize",
          "documentation": "<p>The maximum number of items to return with this call.</p>"
        },
        "PageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
        }
      }
    },
    "SearchProvisionedProductsOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProducts": {
          "shape": "ProvisionedProductAttributes",
          "documentation": "<p>Information about the provisioned products.</p>"
        },
        "TotalResultsCount": {
          "shape": "TotalResultsCount",
          "documentation": "<p>The number of provisioned products found.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
        }
      }
    },
    "SearchProvisionedProductsPageSize": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "ServiceActionAssociation": {
      "type": "structure",
      "required": [
        "ServiceActionId",
        "ProductId",
        "ProvisioningArtifactId"
      ],
      "members": {
        "ServiceActionId": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
        }
      },
      "documentation": "<p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
    },
    "ServiceActionAssociationErrorCode": {
      "type": "string",
      "enum": [
        "DUPLICATE_RESOURCE",
        "INTERNAL_FAILURE",
        "LIMIT_EXCEEDED",
        "RESOURCE_NOT_FOUND",
        "THROTTLING"
      ]
    },
    "ServiceActionAssociationErrorMessage": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ServiceActionAssociations": {
      "type": "list",
      "member": {
        "shape": "ServiceActionAssociation"
      },
      "max": 50,
      "min": 1
    },
    "ServiceActionDefinitionKey": {
      "type": "string",
      "enum": [
        "Name",
        "Version",
        "AssumeRole",
        "Parameters"
      ]
    },
    "ServiceActionDefinitionMap": {
      "type": "map",
      "key": {
        "shape": "ServiceActionDefinitionKey"
      },
      "value": {
        "shape": "ServiceActionDefinitionValue"
      },
      "max": 100,
      "min": 1
    },
    "ServiceActionDefinitionType": {
      "type": "string",
      "enum": [
        "SSM_AUTOMATION"
      ]
    },
    "ServiceActionDefinitionValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ServiceActionDescription": {
      "type": "string",
      "max": 1024
    },
    "ServiceActionDetail": {
      "type": "structure",
      "members": {
        "ServiceActionSummary": {
          "shape": "ServiceActionSummary",
          "documentation": "<p>Summary information about the self-service action.</p>"
        },
        "Definition": {
          "shape": "ServiceActionDefinitionMap",
          "documentation": "<p>A map that defines the self-service action.</p>"
        }
      },
      "documentation": "<p>An object containing detailed information about the self-service action.</p>"
    },
    "ServiceActionName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_\\-.]*"
    },
    "ServiceActionSummaries": {
      "type": "list",
      "member": {
        "shape": "ServiceActionSummary"
      }
    },
    "ServiceActionSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier.</p>"
        },
        "Name": {
          "shape": "ServiceActionName",
          "documentation": "<p>The self-service action name.</p>"
        },
        "Description": {
          "shape": "ServiceActionDescription",
          "documentation": "<p>The self-service action description.</p>"
        },
        "DefinitionType": {
          "shape": "ServiceActionDefinitionType",
          "documentation": "<p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>"
        }
      },
      "documentation": "<p>Detailed information about the self-service action.</p>"
    },
    "ShareDetails": {
      "type": "structure",
      "members": {
        "SuccessfulShares": {
          "shape": "SuccessfulShares",
          "documentation": "<p>List of accounts for whom the operation succeeded.</p>"
        },
        "ShareErrors": {
          "shape": "ShareErrors",
          "documentation": "<p>List of errors.</p>"
        }
      },
      "documentation": "<p>Information about the portfolio share operation.</p>"
    },
    "ShareError": {
      "type": "structure",
      "members": {
        "Accounts": {
          "shape": "Namespaces",
          "documentation": "<p>List of accounts impacted by the error.</p>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>Information about the error.</p>"
        },
        "Error": {
          "shape": "Error",
          "documentation": "<p>Error type that happened when processing the operation.</p>"
        }
      },
      "documentation": "<p>Errors that occurred during the portfolio share operation.</p>"
    },
    "ShareErrors": {
      "type": "list",
      "member": {
        "shape": "ShareError"
      }
    },
    "ShareStatus": {
      "type": "string",
      "enum": [
        "NOT_STARTED",
        "IN_PROGRESS",
        "COMPLETED",
        "COMPLETED_WITH_ERRORS",
        "ERROR"
      ]
    },
    "SortField": {
      "type": "string"
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "SourceProvisioningArtifactProperties": {
      "type": "list",
      "member": {
        "shape": "SourceProvisioningArtifactPropertiesMap"
      }
    },
    "SourceProvisioningArtifactPropertiesMap": {
      "type": "map",
      "key": {
        "shape": "ProvisioningArtifactPropertyName"
      },
      "value": {
        "shape": "ProvisioningArtifactPropertyValue"
      }
    },
    "StackInstance": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "AccountId",
          "documentation": "<p>The name of the AWS account that the stack instance is associated with.</p>"
        },
        "Region": {
          "shape": "Region",
          "documentation": "<p>The name of the AWS region that the stack instance is associated with.</p>"
        },
        "StackInstanceStatus": {
          "shape": "StackInstanceStatus",
          "documentation": "<p>The status of the stack instance, in terms of its synchronization with its associated stack set. </p> <ul> <li> <p> <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to true, to delete the stack instance, and then delete the stack manually. </p> </li> <li> <p> <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because either the associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation, or the stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated.</p> </li> <li> <p> <code>CURRENT</code>: The stack is currently up to date with the stack set.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status. </p>"
    },
    "StackInstanceStatus": {
      "type": "string",
      "enum": [
        "CURRENT",
        "OUTDATED",
        "INOPERABLE"
      ]
    },
    "StackInstances": {
      "type": "list",
      "member": {
        "shape": "StackInstance"
      }
    },
    "StackSetAccounts": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "StackSetFailureToleranceCount": {
      "type": "integer",
      "min": 0
    },
    "StackSetFailureTolerancePercentage": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "StackSetMaxConcurrencyCount": {
      "type": "integer",
      "min": 1
    },
    "StackSetMaxConcurrencyPercentage": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "StackSetOperationType": {
      "type": "string",
      "enum": [
        "CREATE",
        "UPDATE",
        "DELETE"
      ]
    },
    "StackSetRegions": {
      "type": "list",
      "member": {
        "shape": "Region"
      }
    },
    "Status": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "CREATING",
        "FAILED"
      ]
    },
    "StatusDetail": {
      "type": "string"
    },
    "StatusMessage": {
      "type": "string",
      "pattern": "[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*"
    },
    "SuccessfulShares": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "SupportDescription": {
      "type": "string",
      "max": 8191
    },
    "SupportEmail": {
      "type": "string",
      "max": 254
    },
    "SupportUrl": {
      "type": "string",
      "max": 2083
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
          "documentation": "<p>The tag key.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value for this key.</p>"
        }
      },
      "documentation": "<p>Information about a tag. A tag is a key-value pair. Tags are propagated to the resources created when provisioning a product.</p>"
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
    "TagOptionActive": {
      "type": "boolean"
    },
    "TagOptionDetail": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagOptionKey",
          "documentation": "<p>The TagOption key.</p>"
        },
        "Value": {
          "shape": "TagOptionValue",
          "documentation": "<p>The TagOption value.</p>"
        },
        "Active": {
          "shape": "TagOptionActive",
          "documentation": "<p>The TagOption active state.</p>"
        },
        "Id": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        }
      },
      "documentation": "<p>Information about a TagOption.</p>"
    },
    "TagOptionDetails": {
      "type": "list",
      "member": {
        "shape": "TagOptionDetail"
      }
    },
    "TagOptionId": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "TagOptionKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagOptionSummaries": {
      "type": "list",
      "member": {
        "shape": "TagOptionSummary"
      }
    },
    "TagOptionSummary": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagOptionKey",
          "documentation": "<p>The TagOption key.</p>"
        },
        "Values": {
          "shape": "TagOptionValues",
          "documentation": "<p>The TagOption value.</p>"
        }
      },
      "documentation": "<p>Summary information about a TagOption.</p>"
    },
    "TagOptionValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagOptionValues": {
      "type": "list",
      "member": {
        "shape": "TagOptionValue"
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50
    },
    "TerminateProvisionedProductInput": {
      "type": "structure",
      "required": [
        "TerminateToken"
      ],
      "members": {
        "ProvisionedProductName": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The name of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"
        },
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"
        },
        "TerminateToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return <b>ResourceNotFound</b>.</p>",
          "idempotencyToken": true
        },
        "IgnoreErrors": {
          "shape": "IgnoreErrors",
          "documentation": "<p>If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "TerminateProvisionedProductOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>Information about the result of this request.</p>"
        }
      }
    },
    "TotalResultsCount": {
      "type": "integer"
    },
    "UpdateConstraintInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The identifier of the constraint.</p>"
        },
        "Description": {
          "shape": "ConstraintDescription",
          "documentation": "<p>The updated description of the constraint.</p>"
        },
        "Parameters": {
          "shape": "ConstraintParameters",
          "documentation": "<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p> <dl> <dt>LAUNCH</dt> <dd> <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p> <p>Specify the <code>RoleArn</code> property as follows:</p> <p> <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code> </p> <p>Specify the <code>LocalRoleName</code> property as follows:</p> <p> <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code> </p> <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account.</p> <note> <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p> </note> <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p> <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p> </dd> <dt>NOTIFICATION</dt> <dd> <p>Specify the <code>NotificationArns</code> property as follows:</p> <p> <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code> </p> </dd> <dt>RESOURCE_UPDATE</dt> <dd> <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p> <p> <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code> </p> <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p> </dd> <dt>STACKSET</dt> <dd> <p>Specify the <code>Parameters</code> property as follows:</p> <p> <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code> </p> <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p> <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p> <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p> </dd> <dt>TEMPLATE</dt> <dd> <p>Specify the <code>Rules</code> property. For more information, see <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p> </dd> </dl>"
        }
      }
    },
    "UpdateConstraintOutput": {
      "type": "structure",
      "members": {
        "ConstraintDetail": {
          "shape": "ConstraintDetail",
          "documentation": "<p>Information about the constraint.</p>"
        },
        "ConstraintParameters": {
          "shape": "ConstraintParameters",
          "documentation": "<p>The constraint parameters.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "UpdatePortfolioInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The portfolio identifier.</p>"
        },
        "DisplayName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name to use for display purposes.</p>"
        },
        "Description": {
          "shape": "PortfolioDescription",
          "documentation": "<p>The updated description of the portfolio.</p>"
        },
        "ProviderName": {
          "shape": "ProviderName",
          "documentation": "<p>The updated name of the portfolio provider.</p>"
        },
        "AddTags": {
          "shape": "AddTags",
          "documentation": "<p>The tags to add.</p>"
        },
        "RemoveTags": {
          "shape": "TagKeys",
          "documentation": "<p>The tags to remove.</p>"
        }
      }
    },
    "UpdatePortfolioOutput": {
      "type": "structure",
      "members": {
        "PortfolioDetail": {
          "shape": "PortfolioDetail",
          "documentation": "<p>Information about the portfolio.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the portfolio.</p>"
        }
      }
    },
    "UpdateProductInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "Name": {
          "shape": "ProductViewName",
          "documentation": "<p>The updated product name.</p>"
        },
        "Owner": {
          "shape": "ProductViewOwner",
          "documentation": "<p>The updated owner of the product.</p>"
        },
        "Description": {
          "shape": "ProductViewShortDescription",
          "documentation": "<p>The updated description of the product.</p>"
        },
        "Distributor": {
          "shape": "ProductViewOwner",
          "documentation": "<p>The updated distributor of the product.</p>"
        },
        "SupportDescription": {
          "shape": "SupportDescription",
          "documentation": "<p>The updated support description for the product.</p>"
        },
        "SupportEmail": {
          "shape": "SupportEmail",
          "documentation": "<p>The updated support email for the product.</p>"
        },
        "SupportUrl": {
          "shape": "SupportUrl",
          "documentation": "<p>The updated support URL for the product.</p>"
        },
        "AddTags": {
          "shape": "AddTags",
          "documentation": "<p>The tags to add to the product.</p>"
        },
        "RemoveTags": {
          "shape": "TagKeys",
          "documentation": "<p>The tags to remove from the product.</p>"
        }
      }
    },
    "UpdateProductOutput": {
      "type": "structure",
      "members": {
        "ProductViewDetail": {
          "shape": "ProductViewDetail",
          "documentation": "<p>Information about the product view.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Information about the tags associated with the product.</p>"
        }
      }
    },
    "UpdateProvisionedProductInput": {
      "type": "structure",
      "required": [
        "UpdateToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProvisionedProductName": {
          "shape": "ProvisionedProductNameOrArn",
          "documentation": "<p>The name of the provisioned product. You cannot specify both <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>"
        },
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the product. You must provide the name or ID, but not both.</p>"
        },
        "ProductName": {
          "shape": "ProductViewName",
          "documentation": "<p>The name of the product. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "ProvisioningArtifactName": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
        },
        "PathId": {
          "shape": "Id",
          "documentation": "<p>The path identifier. This value is optional if the product has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>"
        },
        "PathName": {
          "shape": "PortfolioDisplayName",
          "documentation": "<p>The name of the path. You must provide the name or ID, but not both.</p>"
        },
        "ProvisioningParameters": {
          "shape": "UpdateProvisioningParameters",
          "documentation": "<p>The new parameters.</p>"
        },
        "ProvisioningPreferences": {
          "shape": "UpdateProvisioningPreferences",
          "documentation": "<p>An object that contains information about the provisioning preferences for a stack set.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>"
        },
        "UpdateToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>The idempotency token that uniquely identifies the provisioning update request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateProvisionedProductOutput": {
      "type": "structure",
      "members": {
        "RecordDetail": {
          "shape": "RecordDetail",
          "documentation": "<p>Information about the result of the request.</p>"
        }
      }
    },
    "UpdateProvisionedProductPropertiesInput": {
      "type": "structure",
      "required": [
        "ProvisionedProductId",
        "ProvisionedProductProperties",
        "IdempotencyToken"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioned product.</p>"
        },
        "ProvisionedProductProperties": {
          "shape": "ProvisionedProductProperties",
          "documentation": "<p>A map that contains the provisioned product properties to be updated.</p> <p>The <code>OWNER</code> key accepts user ARNs and role ARNs. The owner is the user that is allowed to see, update, terminate, and execute service actions in the provisioned product.</p> <p>The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the <code>ListRecordHistory</code> API. The new owner can describe all past records for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no longer use <code>DescribeRecord</code>, but can still see the product's history from when he was an owner using <code>ListRecordHistory</code>.</p> <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>The idempotency token that uniquely identifies the provisioning product update request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateProvisionedProductPropertiesOutput": {
      "type": "structure",
      "members": {
        "ProvisionedProductId": {
          "shape": "Id",
          "documentation": "<p>The provisioned product identifier.</p>"
        },
        "ProvisionedProductProperties": {
          "shape": "ProvisionedProductProperties",
          "documentation": "<p>A map that contains the properties updated.</p>"
        },
        "RecordId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the record.</p>"
        },
        "Status": {
          "shape": "RecordStatus",
          "documentation": "<p>The status of the request.</p>"
        }
      }
    },
    "UpdateProvisioningArtifactInput": {
      "type": "structure",
      "required": [
        "ProductId",
        "ProvisioningArtifactId"
      ],
      "members": {
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        },
        "ProductId": {
          "shape": "Id",
          "documentation": "<p>The product identifier.</p>"
        },
        "ProvisioningArtifactId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the provisioning artifact.</p>"
        },
        "Name": {
          "shape": "ProvisioningArtifactName",
          "documentation": "<p>The updated name of the provisioning artifact.</p>"
        },
        "Description": {
          "shape": "ProvisioningArtifactDescription",
          "documentation": "<p>The updated description of the provisioning artifact.</p>"
        },
        "Active": {
          "shape": "ProvisioningArtifactActive",
          "documentation": "<p>Indicates whether the product version is active.</p> <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>"
        },
        "Guidance": {
          "shape": "ProvisioningArtifactGuidance",
          "documentation": "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p> <p>The <code>DEFAULT</code> value indicates that the product version is active.</p> <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform users that the product version is deprecated. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>"
        }
      }
    },
    "UpdateProvisioningArtifactOutput": {
      "type": "structure",
      "members": {
        "ProvisioningArtifactDetail": {
          "shape": "ProvisioningArtifactDetail",
          "documentation": "<p>Information about the provisioning artifact.</p>"
        },
        "Info": {
          "shape": "ProvisioningArtifactInfo",
          "documentation": "<p>The URL of the CloudFormation template in Amazon S3.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the current request.</p>"
        }
      }
    },
    "UpdateProvisioningParameter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ParameterKey",
          "documentation": "<p>The parameter key.</p>"
        },
        "Value": {
          "shape": "ParameterValue",
          "documentation": "<p>The parameter value.</p>"
        },
        "UsePreviousValue": {
          "shape": "UsePreviousValue",
          "documentation": "<p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>"
        }
      },
      "documentation": "<p>The parameter key-value pair used to update a provisioned product.</p>"
    },
    "UpdateProvisioningParameters": {
      "type": "list",
      "member": {
        "shape": "UpdateProvisioningParameter"
      }
    },
    "UpdateProvisioningPreferences": {
      "type": "structure",
      "members": {
        "StackSetAccounts": {
          "shape": "StackSetAccounts",
          "documentation": "<p>One or more AWS accounts that will have access to the provisioned product.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>The AWS accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p> <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>"
        },
        "StackSetRegions": {
          "shape": "StackSetRegions",
          "documentation": "<p>One or more AWS Regions where the provisioned product will be available.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p> <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>"
        },
        "StackSetFailureToleranceCount": {
          "shape": "StackSetFailureToleranceCount",
          "documentation": "<p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p> <p>The default value is <code>0</code> if no value is specified.</p>"
        },
        "StackSetFailureTolerancePercentage": {
          "shape": "StackSetFailureTolerancePercentage",
          "documentation": "<p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p> <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>"
        },
        "StackSetMaxConcurrencyCount": {
          "shape": "StackSetMaxConcurrencyCount",
          "documentation": "<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p> <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"
        },
        "StackSetMaxConcurrencyPercentage": {
          "shape": "StackSetMaxConcurrencyPercentage",
          "documentation": "<p>The maximum percentage of accounts in which to perform this operation at one time.</p> <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p> <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>"
        },
        "StackSetOperationType": {
          "shape": "StackSetOperationType",
          "documentation": "<p>Determines what action AWS Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is <code>UPDATE</code> if nothing is specified.</p> <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p> <dl> <dt>CREATE</dt> <dd> <p>Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.</p> </dd> <dt>UPDATE</dt> <dd> <p>Updates the stack set represented by the provisioned product and also its stack instances.</p> </dd> <dt>DELETE</dt> <dd> <p>Deletes a stack instance in the stack set represented by the provisioned product.</p> </dd> </dl>"
        }
      },
      "documentation": "<p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>"
    },
    "UpdateServiceActionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>The self-service action identifier.</p>"
        },
        "Name": {
          "shape": "ServiceActionName",
          "documentation": "<p>The self-service action name.</p>"
        },
        "Definition": {
          "shape": "ServiceActionDefinitionMap",
          "documentation": "<p>A map that defines the self-service action.</p>"
        },
        "Description": {
          "shape": "ServiceActionDescription",
          "documentation": "<p>The self-service action description.</p>"
        },
        "AcceptLanguage": {
          "shape": "AcceptLanguage",
          "documentation": "<p>The language code.</p> <ul> <li> <p> <code>en</code> - English (default)</p> </li> <li> <p> <code>jp</code> - Japanese</p> </li> <li> <p> <code>zh</code> - Chinese</p> </li> </ul>"
        }
      }
    },
    "UpdateServiceActionOutput": {
      "type": "structure",
      "members": {
        "ServiceActionDetail": {
          "shape": "ServiceActionDetail",
          "documentation": "<p>Detailed information about the self-service action.</p>"
        }
      }
    },
    "UpdateTagOptionInput": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "TagOptionId",
          "documentation": "<p>The TagOption identifier.</p>"
        },
        "Value": {
          "shape": "TagOptionValue",
          "documentation": "<p>The updated value.</p>"
        },
        "Active": {
          "shape": "TagOptionActive",
          "documentation": "<p>The updated active state.</p>"
        }
      }
    },
    "UpdateTagOptionOutput": {
      "type": "structure",
      "members": {
        "TagOptionDetail": {
          "shape": "TagOptionDetail",
          "documentation": "<p>Information about the TagOption.</p>"
        }
      }
    },
    "UpdatedTime": {
      "type": "timestamp"
    },
    "UsageInstruction": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "InstructionType",
          "documentation": "<p>The usage instruction type for the value.</p>"
        },
        "Value": {
          "shape": "InstructionValue",
          "documentation": "<p>The usage instruction value for this type.</p>"
        }
      },
      "documentation": "<p>Additional information provided by the administrator.</p>"
    },
    "UsageInstructions": {
      "type": "list",
      "member": {
        "shape": "UsageInstruction"
      }
    },
    "UsePreviousValue": {
      "type": "boolean"
    },
    "UserArn": {
      "type": "string"
    },
    "UserArnSession": {
      "type": "string"
    },
    "Verbose": {
      "type": "boolean"
    }
  },
  "documentation": "<fullname>AWS Service Catalog</fullname> <p> <a href=\"https://aws.amazon.com/servicecatalog/\">AWS Service Catalog</a> enables organizations to create and manage catalogs of IT services that are approved for use on AWS. To get the most out of this documentation, you should be familiar with the terminology discussed in <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html\">AWS Service Catalog Concepts</a>.</p>"
}
]===]))