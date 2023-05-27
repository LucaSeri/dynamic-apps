local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-09-22",
    "endpointPrefix": "codeartifact",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "CodeArtifact",
    "serviceId": "codeartifact",
    "signatureVersion": "v4",
    "signingName": "codeartifact",
    "uid": "codeartifact-2018-09-22"
  },
  "operations": {
    "AssociateExternalConnection": {
      "name": "AssociateExternalConnection",
      "http": {
        "method": "POST",
        "requestUri": "/v1/repository/external-connection"
      },
      "input": {
        "shape": "AssociateExternalConnectionRequest"
      },
      "output": {
        "shape": "AssociateExternalConnectionResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Adds an existing external connection to a repository. One external connection is allowed per repository.</p> <note> <p>A repository can have one or more upstream repositories, or an external connection.</p> </note>"
    },
    "CopyPackageVersions": {
      "name": "CopyPackageVersions",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/versions/copy"
      },
      "input": {
        "shape": "CopyPackageVersionsRequest"
      },
      "output": {
        "shape": "CopyPackageVersionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Copies package versions from one repository to another repository in the same domain. </p> <note> <p> You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both. </p> </note>"
    },
    "CreateDomain": {
      "name": "CreateDomain",
      "http": {
        "method": "POST",
        "requestUri": "/v1/domain"
      },
      "input": {
        "shape": "CreateDomainRequest"
      },
      "output": {
        "shape": "CreateDomainResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Creates a domain. CodeArtifact <i>domains</i> make it easier to manage multiple repositories across an organization. You can use a domain to apply permissions across many repositories owned by different AWS accounts. An asset is stored only once in a domain, even if it's in multiple repositories. </p> <p>Although you can have multiple domains, we recommend a single production domain that contains all published artifacts so that your development teams can find and share packages. You can use a second pre-production domain to test changes to the production domain configuration. </p>"
    },
    "CreateRepository": {
      "name": "CreateRepository",
      "http": {
        "method": "POST",
        "requestUri": "/v1/repository"
      },
      "input": {
        "shape": "CreateRepositoryRequest"
      },
      "output": {
        "shape": "CreateRepositoryResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Creates a repository. </p>"
    },
    "DeleteDomain": {
      "name": "DeleteDomain",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/domain"
      },
      "input": {
        "shape": "DeleteDomainRequest"
      },
      "output": {
        "shape": "DeleteDomainResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain with repositories, first delete its repositories. </p>"
    },
    "DeleteDomainPermissionsPolicy": {
      "name": "DeleteDomainPermissionsPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/domain/permissions/policy"
      },
      "input": {
        "shape": "DeleteDomainPermissionsPolicyRequest"
      },
      "output": {
        "shape": "DeleteDomainPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes the resource policy set on a domain. </p>"
    },
    "DeletePackageVersions": {
      "name": "DeletePackageVersions",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/versions/delete"
      },
      "input": {
        "shape": "DeletePackageVersionsRequest"
      },
      "output": {
        "shape": "DeletePackageVersionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes one or more versions of a package. A deleted package version cannot be restored in your repository. If you want to remove a package version from your repository and be able to restore it later, set its status to <code>Archived</code>. Archived packages cannot be downloaded from a repository and don't show up with list package APIs (for example, <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html\">ListackageVersions</a> </code>), but you can restore them using <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html\">UpdatePackageVersionsStatus</a> </code>. </p>"
    },
    "DeleteRepository": {
      "name": "DeleteRepository",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/repository"
      },
      "input": {
        "shape": "DeleteRepositoryRequest"
      },
      "output": {
        "shape": "DeleteRepositoryResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes a repository. </p>"
    },
    "DeleteRepositoryPermissionsPolicy": {
      "name": "DeleteRepositoryPermissionsPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/repository/permissions/policies"
      },
      "input": {
        "shape": "DeleteRepositoryPermissionsPolicyRequest"
      },
      "output": {
        "shape": "DeleteRepositoryPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes the resource policy that is set on a repository. After a resource policy is deleted, the permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate. </p> <important> <p> Use <code>DeleteRepositoryPermissionsPolicy</code> with caution. After a policy is deleted, AWS users, roles, and accounts lose permissions to perform the repository actions granted by the deleted policy. </p> </important>"
    },
    "DescribeDomain": {
      "name": "DescribeDomain",
      "http": {
        "method": "GET",
        "requestUri": "/v1/domain"
      },
      "input": {
        "shape": "DescribeDomainRequest"
      },
      "output": {
        "shape": "DescribeDomainResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html\"> <code>DomainDescription</code> </a> object that contains information about the requested domain. </p>"
    },
    "DescribePackageVersion": {
      "name": "DescribePackageVersion",
      "http": {
        "method": "GET",
        "requestUri": "/v1/package/version"
      },
      "input": {
        "shape": "DescribePackageVersionRequest"
      },
      "output": {
        "shape": "DescribePackageVersionResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\"> <code>PackageVersionDescription</code> </a> object that contains information about the requested package version. </p>"
    },
    "DescribeRepository": {
      "name": "DescribeRepository",
      "http": {
        "method": "GET",
        "requestUri": "/v1/repository"
      },
      "input": {
        "shape": "DescribeRepositoryRequest"
      },
      "output": {
        "shape": "DescribeRepositoryResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a <code>RepositoryDescription</code> object that contains detailed information about the requested repository. </p>"
    },
    "DisassociateExternalConnection": {
      "name": "DisassociateExternalConnection",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/repository/external-connection"
      },
      "input": {
        "shape": "DisassociateExternalConnectionRequest"
      },
      "output": {
        "shape": "DisassociateExternalConnectionResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Removes an existing external connection from a repository. </p>"
    },
    "DisposePackageVersions": {
      "name": "DisposePackageVersions",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/versions/dispose"
      },
      "input": {
        "shape": "DisposePackageVersionsRequest"
      },
      "output": {
        "shape": "DisposePackageVersionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Deletes the assets in package versions and sets the package versions' status to <code>Disposed</code>. A disposed package version cannot be restored in your repository because its assets are deleted. </p> <p> To view all disposed package versions in a repository, use <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html\">ListackageVersions</a> </code> and set the <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax\">status</a> </code> parameter to <code>Disposed</code>. </p> <p> To view information about a disposed package version, use <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html\">ListPackageVersions</a> </code> and set the <code> <a href=\"https://docs.aws.amazon.com/API_ListPackageVersions.html#codeartifact-ListPackageVersions-response-status\">status</a> </code> parameter to <code>Disposed</code>. </p>"
    },
    "GetAuthorizationToken": {
      "name": "GetAuthorizationToken",
      "http": {
        "method": "POST",
        "requestUri": "/v1/authorization-token"
      },
      "input": {
        "shape": "GetAuthorizationTokenRequest"
      },
      "output": {
        "shape": "GetAuthorizationTokenResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Generates a temporary authentication token for accessing repositories in the domain. This API requires the <code>codeartifact:GetAuthorizationToken</code> and <code>sts:GetServiceBearerToken</code> permissions. </p> <note> <p>CodeArtifact authorization tokens are valid for a period of 12 hours when created with the <code>login</code> command. You can call <code>login</code> periodically to refresh the token. When you create an authorization token with the <code>GetAuthorizationToken</code> API, you can set a custom authorization period, up to a maximum of 12 hours, with the <code>durationSeconds</code> parameter.</p> <p>The authorization period begins after <code>login</code> or <code>GetAuthorizationToken</code> is called. If <code>login</code> or <code>GetAuthorizationToken</code> is called while assuming a role, the token lifetime is independent of the maximum session duration of the role. For example, if you call <code>sts assume-role</code> and specify a session duration of 15 minutes, then generate a CodeArtifact authorization token, the token will be valid for the full authorization period even though this is longer than the 15-minute session duration.</p> <p>See <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM Roles</a> for more information on controlling session duration. </p> </note>"
    },
    "GetDomainPermissionsPolicy": {
      "name": "GetDomainPermissionsPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/v1/domain/permissions/policy"
      },
      "input": {
        "shape": "GetDomainPermissionsPolicyRequest"
      },
      "output": {
        "shape": "GetDomainPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns the resource policy attached to the specified domain. </p> <note> <p> The policy is a resource-based policy, not an identity-based policy. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html\">Identity-based policies and resource-based policies </a> in the <i>AWS Identity and Access Management User Guide</i>. </p> </note>"
    },
    "GetPackageVersionAsset": {
      "name": "GetPackageVersionAsset",
      "http": {
        "method": "GET",
        "requestUri": "/v1/package/version/asset"
      },
      "input": {
        "shape": "GetPackageVersionAssetRequest"
      },
      "output": {
        "shape": "GetPackageVersionAssetResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns an asset (or file) that is in a package. For example, for a Maven package version, use <code>GetPackageVersionAsset</code> to download a <code>JAR</code> file, a <code>POM</code> file, or any other assets in the package version. </p>"
    },
    "GetPackageVersionReadme": {
      "name": "GetPackageVersionReadme",
      "http": {
        "method": "GET",
        "requestUri": "/v1/package/version/readme"
      },
      "input": {
        "shape": "GetPackageVersionReadmeRequest"
      },
      "output": {
        "shape": "GetPackageVersionReadmeResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Gets the readme file or descriptive text for a package version. For packages that do not contain a readme file, CodeArtifact extracts a description from a metadata file. For example, from the <code>&lt;description&gt;</code> element in the <code>pom.xml</code> file of a Maven package. </p> <p> The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText. </p>"
    },
    "GetRepositoryEndpoint": {
      "name": "GetRepositoryEndpoint",
      "http": {
        "method": "GET",
        "requestUri": "/v1/repository/endpoint"
      },
      "input": {
        "shape": "GetRepositoryEndpointRequest"
      },
      "output": {
        "shape": "GetRepositoryEndpointResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each package format: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>"
    },
    "GetRepositoryPermissionsPolicy": {
      "name": "GetRepositoryPermissionsPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/v1/repository/permissions/policy"
      },
      "input": {
        "shape": "GetRepositoryPermissionsPolicyRequest"
      },
      "output": {
        "shape": "GetRepositoryPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns the resource policy that is set on a repository. </p>"
    },
    "ListDomains": {
      "name": "ListDomains",
      "http": {
        "method": "POST",
        "requestUri": "/v1/domains"
      },
      "input": {
        "shape": "ListDomainsRequest"
      },
      "output": {
        "shape": "ListDomainsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">DomainSummary</a> </code> objects for all domains owned by the AWS account that makes this call. Each returned <code>DomainSummary</code> object contains information about a domain. </p>"
    },
    "ListPackageVersionAssets": {
      "name": "ListPackageVersionAssets",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/version/assets"
      },
      "input": {
        "shape": "ListPackageVersionAssetsRequest"
      },
      "output": {
        "shape": "ListPackageVersionAssetsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html\"> <code>AssetSummary</code> </a> objects for assets in a package version. </p>"
    },
    "ListPackageVersionDependencies": {
      "name": "ListPackageVersionDependencies",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/version/dependencies"
      },
      "input": {
        "shape": "ListPackageVersionDependenciesRequest"
      },
      "output": {
        "shape": "ListPackageVersionDependenciesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns the direct dependencies for a package version. The dependencies are returned as <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html\"> <code>PackageDependency</code> </a> objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package format (for example, the <code>package.json</code> file for npm packages and the <code>pom.xml</code> file for Maven). Any package version dependencies that are not listed in the configuration file are not returned. </p>"
    },
    "ListPackageVersions": {
      "name": "ListPackageVersions",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/versions"
      },
      "input": {
        "shape": "ListPackageVersionsRequest"
      },
      "output": {
        "shape": "ListPackageVersionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html\"> <code>PackageVersionSummary</code> </a> objects for package versions in a repository that match the request parameters. </p>"
    },
    "ListPackages": {
      "name": "ListPackages",
      "http": {
        "method": "POST",
        "requestUri": "/v1/packages"
      },
      "input": {
        "shape": "ListPackagesRequest"
      },
      "output": {
        "shape": "ListPackagesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html\"> <code>PackageSummary</code> </a> objects for packages in a repository that match the request parameters. </p>"
    },
    "ListRepositories": {
      "name": "ListRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/v1/repositories"
      },
      "input": {
        "shape": "ListRepositoriesRequest"
      },
      "output": {
        "shape": "ListRepositoriesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html\"> <code>RepositorySummary</code> </a> objects. Each <code>RepositorySummary</code> contains information about a repository in the specified AWS account and that matches the input parameters. </p>"
    },
    "ListRepositoriesInDomain": {
      "name": "ListRepositoriesInDomain",
      "http": {
        "method": "POST",
        "requestUri": "/v1/domain/repositories"
      },
      "input": {
        "shape": "ListRepositoriesInDomainRequest"
      },
      "output": {
        "shape": "ListRepositoriesInDomainResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html\"> <code>RepositorySummary</code> </a> objects. Each <code>RepositorySummary</code> contains information about a repository in the specified domain and that matches the input parameters. </p>"
    },
    "PutDomainPermissionsPolicy": {
      "name": "PutDomainPermissionsPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/domain/permissions/policy"
      },
      "input": {
        "shape": "PutDomainPermissionsPolicyRequest"
      },
      "output": {
        "shape": "PutDomainPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Sets a resource policy on a domain that specifies permissions to access it. </p>"
    },
    "PutRepositoryPermissionsPolicy": {
      "name": "PutRepositoryPermissionsPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/repository/permissions/policy"
      },
      "input": {
        "shape": "PutRepositoryPermissionsPolicyRequest"
      },
      "output": {
        "shape": "PutRepositoryPermissionsPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Sets the resource policy on a repository that specifies permissions to access it. </p>"
    },
    "UpdatePackageVersionsStatus": {
      "name": "UpdatePackageVersionsStatus",
      "http": {
        "method": "POST",
        "requestUri": "/v1/package/versions/update_status"
      },
      "input": {
        "shape": "UpdatePackageVersionsStatusRequest"
      },
      "output": {
        "shape": "UpdatePackageVersionsStatusResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Updates the status of one or more versions of a package. </p>"
    },
    "UpdateRepository": {
      "name": "UpdateRepository",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/repository"
      },
      "input": {
        "shape": "UpdateRepositoryRequest"
      },
      "output": {
        "shape": "UpdateRepositoryResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> Update the properties of a repository. </p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "[0-9]{12}"
    },
    "Arn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "\\S+"
    },
    "Asset": {
      "type": "blob",
      "streaming": true
    },
    "AssetHashes": {
      "type": "map",
      "key": {
        "shape": "HashAlgorithm"
      },
      "value": {
        "shape": "HashValue"
      }
    },
    "AssetName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "\\P{C}+"
    },
    "AssetSummary": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "AssetName",
          "documentation": "<p> The name of the asset. </p>"
        },
        "size": {
          "shape": "LongOptional",
          "documentation": "<p> The size of the asset. </p>"
        },
        "hashes": {
          "shape": "AssetHashes",
          "documentation": "<p> The hashes of the asset. </p>"
        }
      },
      "documentation": "<p> Contains details about a package version asset. </p>"
    },
    "AssetSummaryList": {
      "type": "list",
      "member": {
        "shape": "AssetSummary"
      }
    },
    "AssociateExternalConnectionRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "externalConnection"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the repository.</p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository to which the external connection is added. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "externalConnection": {
          "shape": "ExternalConnectionName",
          "documentation": "<p> The name of the external connection to add to the repository. The following values are supported: </p> <ul> <li> <p> <code>public:npmjs</code> - for the npm public repository. </p> </li> <li> <p> <code>public:pypi</code> - for the Python Package Index. </p> </li> <li> <p> <code>public:maven-central</code> - for Maven Central. </p> </li> <li> <p> <code>public:maven-googleandroid</code> - for the Google Android repository. </p> </li> <li> <p> <code>public:maven-gradleplugins</code> - for the Gradle plugins repository. </p> </li> <li> <p> <code>public:maven-commonsware</code> - for the CommonsWare Android repository. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "external-connection"
        }
      }
    },
    "AssociateExternalConnectionResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> Information about the connected repository after processing the request. </p>"
        }
      }
    },
    "AuthorizationTokenDurationSeconds": {
      "type": "long",
      "max": 43200,
      "min": 0
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "CopyPackageVersionsRequest": {
      "type": "structure",
      "required": [
        "domain",
        "sourceRepository",
        "destinationRepository",
        "format",
        "package"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the source and destination repositories. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "sourceRepository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package versions to copy. </p>",
          "location": "querystring",
          "locationName": "source-repository"
        },
        "destinationRepository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository into which package versions are copied. </p>",
          "location": "querystring",
          "locationName": "destination-repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package that is copied. The valid package types are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that is copied. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "versions": {
          "shape": "PackageVersionList",
          "documentation": "<p> The versions of the package to copy. </p> <note> <p> You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both. </p> </note>"
        },
        "versionRevisions": {
          "shape": "PackageVersionRevisionMap",
          "documentation": "<p> A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation succeeds if the specified versions in the source repository match the specified package version revision. </p> <note> <p> You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both. </p> </note>"
        },
        "allowOverwrite": {
          "shape": "BooleanOptional",
          "documentation": "<p> Set to true to overwrite a package version that already exists in the destination repository. If set to false and the package version already exists in the destination repository, the package version is returned in the <code>failedVersions</code> field of the response with an <code>ALREADY_EXISTS</code> error code. </p>"
        },
        "includeFromUpstream": {
          "shape": "BooleanOptional",
          "documentation": "<p> Set to true to copy packages from repositories that are upstream from the source repository to the destination repository. The default setting is false. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"
        }
      }
    },
    "CopyPackageVersionsResult": {
      "type": "structure",
      "members": {
        "successfulVersions": {
          "shape": "SuccessfulPackageVersionInfoMap",
          "documentation": "<p> A list of the package versions that were successfully copied to your repository. </p>"
        },
        "failedVersions": {
          "shape": "PackageVersionErrorMap",
          "documentation": "<p> A map of package versions that failed to copy and their error codes. The possible error codes are in the <code>PackageVersionError</code> data type. They are: </p> <ul> <li> <p> <code>ALREADY_EXISTS</code> </p> </li> <li> <p> <code>MISMATCHED_REVISION</code> </p> </li> <li> <p> <code>MISMATCHED_STATUS</code> </p> </li> <li> <p> <code>NOT_ALLOWED</code> </p> </li> <li> <p> <code>NOT_FOUND</code> </p> </li> <li> <p> <code>SKIPPED</code> </p> </li> </ul>"
        }
      }
    },
    "CreateDomainRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "encryptionKey": {
          "shape": "Arn",
          "documentation": "<p> The encryption key for the domain. This is used to encrypt content stored in a domain. An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption key that is used. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax\">DescribeKey</a> in the <i>AWS Key Management Service API Reference</i> and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html\">AWS KMS API Permissions Reference</a> in the <i>AWS Key Management Service Developer Guide</i>. </p> <important> <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your domain. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric keys</a> in the <i>AWS Key Management Service Developer Guide</i>. </p> </important>"
        }
      }
    },
    "CreateDomainResult": {
      "type": "structure",
      "members": {
        "domain": {
          "shape": "DomainDescription",
          "documentation": "<p> Contains information about the created domain after processing the request. </p>"
        }
      }
    },
    "CreateRepositoryRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The domain that contains the created repository. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository to create. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p> A description of the created repository. </p>"
        },
        "upstreams": {
          "shape": "UpstreamRepositoryList",
          "documentation": "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"
        }
      }
    },
    "CreateRepositoryResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> Information about the created repository after processing the request. </p>"
        }
      }
    },
    "DeleteDomainPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain associated with the resource policy to be deleted. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "policyRevision": {
          "shape": "PolicyRevision",
          "documentation": "<p> The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy. </p>",
          "location": "querystring",
          "locationName": "policy-revision"
        }
      }
    },
    "DeleteDomainPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> Information about the deleted resource policy after processing the request. </p>"
        }
      }
    },
    "DeleteDomainRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain to delete. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        }
      }
    },
    "DeleteDomainResult": {
      "type": "structure",
      "members": {
        "domain": {
          "shape": "DomainDescription",
          "documentation": "<p> Contains information about the deleted domain after processing the request. </p>"
        }
      }
    },
    "DeletePackageVersionsRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "versions"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the package to delete. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package versions to delete. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package versions to delete. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package with the versions to delete. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "versions": {
          "shape": "PackageVersionList",
          "documentation": "<p> An array of strings that specify the versions of the package to delete. </p>"
        },
        "expectedStatus": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> The expected status of the package version to delete. Valid values are: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>"
        }
      }
    },
    "DeletePackageVersionsResult": {
      "type": "structure",
      "members": {
        "successfulVersions": {
          "shape": "SuccessfulPackageVersionInfoMap",
          "documentation": "<p> A list of the package versions that were successfully deleted. </p>"
        },
        "failedVersions": {
          "shape": "PackageVersionErrorMap",
          "documentation": "<p> A <code>PackageVersionError</code> object that contains a map of errors codes for the deleted package that failed. The possible error codes are: </p> <ul> <li> <p> <code>ALREADY_EXISTS</code> </p> </li> <li> <p> <code>MISMATCHED_REVISION</code> </p> </li> <li> <p> <code>MISMATCHED_STATUS</code> </p> </li> <li> <p> <code>NOT_ALLOWED</code> </p> </li> <li> <p> <code>NOT_FOUND</code> </p> </li> <li> <p> <code>SKIPPED</code> </p> </li> </ul>"
        }
      }
    },
    "DeleteRepositoryPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository associated with the resource policy to be deleted. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that is associated with the resource policy to be deleted </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "policyRevision": {
          "shape": "PolicyRevision",
          "documentation": "<p> The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which prevents others from accidentally overwriting your changes to the repository's resource policy. </p>",
          "location": "querystring",
          "locationName": "policy-revision"
        }
      }
    },
    "DeleteRepositoryPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> Information about the deleted policy after processing the request. </p>"
        }
      }
    },
    "DeleteRepositoryRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository to delete. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository to delete. </p>",
          "location": "querystring",
          "locationName": "repository"
        }
      }
    },
    "DeleteRepositoryResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> Information about the deleted repository after processing the request. </p>"
        }
      }
    },
    "DescribeDomainRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> A string that specifies the name of the requested domain. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        }
      }
    },
    "DescribeDomainResult": {
      "type": "structure",
      "members": {
        "domain": {
          "shape": "DomainDescription"
        }
      }
    },
    "DescribePackageVersionRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "packageVersion"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository that contains the package version. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package version. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of the requested package version. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the requested package version. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "querystring",
          "locationName": "version"
        }
      }
    },
    "DescribePackageVersionResult": {
      "type": "structure",
      "required": [
        "packageVersion"
      ],
      "members": {
        "packageVersion": {
          "shape": "PackageVersionDescription",
          "documentation": "<p> A <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">PackageVersionDescription</a> </code> object that contains information about the requested package version. </p>"
        }
      }
    },
    "DescribeRepositoryRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository to describe. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> A string that specifies the name of the requested repository. </p>",
          "location": "querystring",
          "locationName": "repository"
        }
      }
    },
    "DescribeRepositoryResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> A <code>RepositoryDescription</code> object that contains the requested repository information. </p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 1000,
      "pattern": "\\P{C}+"
    },
    "DisassociateExternalConnectionRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "externalConnection"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the repository from which to remove the external repository. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository from which the external connection will be removed. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "externalConnection": {
          "shape": "ExternalConnectionName",
          "documentation": "<p>The name of the external connection to be removed from the repository. </p>",
          "location": "querystring",
          "locationName": "external-connection"
        }
      }
    },
    "DisassociateExternalConnectionResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> The repository associated with the removed external connection. </p>"
        }
      }
    },
    "DisposePackageVersionsRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "versions"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository you want to dispose. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package versions you want to dispose. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of package versions you want to dispose. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package with the versions you want to dispose. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "versions": {
          "shape": "PackageVersionList",
          "documentation": "<p> The versions of the package you want to dispose. </p>"
        },
        "versionRevisions": {
          "shape": "PackageVersionRevisionMap",
          "documentation": "<p> The revisions of the package versions you want to dispose. </p>"
        },
        "expectedStatus": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> The expected status of the package version to dispose. Valid values are: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>"
        }
      }
    },
    "DisposePackageVersionsResult": {
      "type": "structure",
      "members": {
        "successfulVersions": {
          "shape": "SuccessfulPackageVersionInfoMap",
          "documentation": "<p> A list of the package versions that were successfully disposed. </p>"
        },
        "failedVersions": {
          "shape": "PackageVersionErrorMap",
          "documentation": "<p> A <code>PackageVersionError</code> object that contains a map of errors codes for the disposed package versions that failed. The possible error codes are: </p> <ul> <li> <p> <code>ALREADY_EXISTS</code> </p> </li> <li> <p> <code>MISMATCHED_REVISION</code> </p> </li> <li> <p> <code>MISMATCHED_STATUS</code> </p> </li> <li> <p> <code>NOT_ALLOWED</code> </p> </li> <li> <p> <code>NOT_FOUND</code> </p> </li> <li> <p> <code>SKIPPED</code> </p> </li> </ul>"
        }
      }
    },
    "DomainDescription": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain. </p>"
        },
        "owner": {
          "shape": "AccountId",
          "documentation": "<p> The AWS account ID that owns the domain. </p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the domain. </p>"
        },
        "status": {
          "shape": "DomainStatus",
          "documentation": "<p> The current status of a domain. The valid values are </p> <ul> <li> <p> <code>Active</code> </p> </li> <li> <p> <code>Deleted</code> </p> </li> </ul>"
        },
        "createdTime": {
          "shape": "Timestamp",
          "documentation": "<p> A timestamp that represents the date and time the domain was created. </p>"
        },
        "encryptionKey": {
          "shape": "Arn",
          "documentation": "<p> The ARN of an AWS Key Management Service (AWS KMS) key associated with a domain. </p>"
        },
        "repositoryCount": {
          "shape": "Integer",
          "documentation": "<p> The number of repositories in the domain. </p>"
        },
        "assetSizeBytes": {
          "shape": "Long",
          "documentation": "<p> The total size of all assets in the domain. </p>"
        }
      },
      "documentation": "<p> Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you add one or more repositories. </p>"
    },
    "DomainName": {
      "type": "string",
      "max": 50,
      "min": 2,
      "pattern": "[a-z][a-z0-9\\-]{0,48}[a-z0-9]"
    },
    "DomainStatus": {
      "type": "string",
      "enum": [
        "Active",
        "Deleted"
      ]
    },
    "DomainSummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain. </p>"
        },
        "owner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p> The ARN of the domain. </p>"
        },
        "status": {
          "shape": "DomainStatus",
          "documentation": "<p> A string that contains the status of the domain. The valid values are: </p> <ul> <li> <p> <code>Active</code> </p> </li> <li> <p> <code>Deleted</code> </p> </li> </ul>"
        },
        "createdTime": {
          "shape": "Timestamp",
          "documentation": "<p> A timestamp that contains the date and time the domain was created. </p>"
        },
        "encryptionKey": {
          "shape": "Arn",
          "documentation": "<p> The key used to encrypt the domain. </p>"
        }
      },
      "documentation": "<p> Information about a domain, including its name, Amazon Resource Name (ARN), and status. The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html\"> <code>ListDomains</code> </a> operation returns a list of <code>DomainSummary</code> objects. </p>"
    },
    "DomainSummaryList": {
      "type": "list",
      "member": {
        "shape": "DomainSummary"
      }
    },
    "ErrorMessage": {
      "type": "string"
    },
    "ExternalConnectionName": {
      "type": "string",
      "pattern": "[A-Za-z0-9][A-Za-z0-9._\\-:]{1,99}"
    },
    "ExternalConnectionStatus": {
      "type": "string",
      "enum": [
        "Available"
      ]
    },
    "GetAuthorizationTokenRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that is in scope for the generated authorization token. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "durationSeconds": {
          "shape": "AuthorizationTokenDurationSeconds",
          "documentation": "<p>The time, in seconds, that the generated authorization token is valid.</p>",
          "location": "querystring",
          "locationName": "duration"
        }
      }
    },
    "GetAuthorizationTokenResult": {
      "type": "structure",
      "members": {
        "authorizationToken": {
          "shape": "String",
          "documentation": "<p> The returned authentication token. </p>"
        },
        "expiration": {
          "shape": "Timestamp",
          "documentation": "<p> A timestamp that specifies the date and time the authorization token expires. </p>"
        }
      }
    },
    "GetDomainPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain to which the resource policy is attached. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        }
      }
    },
    "GetDomainPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> The returned resource policy. </p>"
        }
      }
    },
    "GetPackageVersionAssetRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "packageVersion",
        "asset"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The domain that contains the repository that contains the package version with the requested asset. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The repository that contains the package version with the requested asset. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of the package version with the requested asset file. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that contains the requested asset. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "querystring",
          "locationName": "version"
        },
        "asset": {
          "shape": "AssetName",
          "documentation": "<p> The name of the requested asset. </p>",
          "location": "querystring",
          "locationName": "asset"
        },
        "packageVersionRevision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The name of the package version revision that contains the requested asset. </p>",
          "location": "querystring",
          "locationName": "revision"
        }
      }
    },
    "GetPackageVersionAssetResult": {
      "type": "structure",
      "members": {
        "asset": {
          "shape": "Asset",
          "documentation": "<p> The binary file, or asset, that is downloaded.</p>"
        },
        "assetName": {
          "shape": "AssetName",
          "documentation": "<p> The name of the asset that is downloaded. </p>",
          "location": "header",
          "locationName": "X-AssetName"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "header",
          "locationName": "X-PackageVersion"
        },
        "packageVersionRevision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The name of the package version revision that contains the downloaded asset. </p>",
          "location": "header",
          "locationName": "X-PackageVersionRevision"
        }
      },
      "payload": "asset"
    },
    "GetPackageVersionReadmeRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "packageVersion"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository that contains the package version with the requested readme file. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The repository that contains the package with the requested readme file. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of the package version with the requested readme file. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package version that contains the requested readme file. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "querystring",
          "locationName": "version"
        }
      }
    },
    "GetPackageVersionReadmeResult": {
      "type": "structure",
      "members": {
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package with the requested readme file. Valid format types are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that contains the returned readme file. </p>"
        },
        "version": {
          "shape": "PackageVersion",
          "documentation": "<p> The version of the package with the requested readme file. </p>"
        },
        "versionRevision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The current revision associated with the package version. </p>"
        },
        "readme": {
          "shape": "String",
          "documentation": "<p> The text of the returned readme file. </p>"
        }
      }
    },
    "GetRepositoryEndpointRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain that contains the repository. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> Returns which endpoint of a repository to return. A repository has one endpoint for each package format: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        }
      }
    },
    "GetRepositoryEndpointResult": {
      "type": "structure",
      "members": {
        "repositoryEndpoint": {
          "shape": "String",
          "documentation": "<p> A string that specifies the URL of the returned endpoint. </p>"
        }
      }
    },
    "GetRepositoryPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain containing the repository whose associated resource policy is to be retrieved. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository whose associated resource policy is to be retrieved. </p>",
          "location": "querystring",
          "locationName": "repository"
        }
      }
    },
    "GetRepositoryPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> The returned resource policy. </p>"
        }
      }
    },
    "HashAlgorithm": {
      "type": "string",
      "enum": [
        "MD5",
        "SHA-1",
        "SHA-256",
        "SHA-512"
      ]
    },
    "HashValue": {
      "type": "string",
      "max": 512,
      "min": 32,
      "pattern": "[0-9a-f]+"
    },
    "Integer": {
      "type": "integer"
    },
    "LicenseInfo": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p> Name of the license. </p>"
        },
        "url": {
          "shape": "String",
          "documentation": "<p> The URL for license data. </p>"
        }
      },
      "documentation": "<p> Details of the license data. </p>"
    },
    "LicenseInfoList": {
      "type": "list",
      "member": {
        "shape": "LicenseInfo"
      }
    },
    "ListDomainsMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListDomainsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "ListDomainsMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>"
        }
      }
    },
    "ListDomainsResult": {
      "type": "structure",
      "members": {
        "domains": {
          "shape": "DomainSummaryList",
          "documentation": "<p> The returned list of <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html\">DomainSummary</a> </code> objects. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>"
        }
      }
    },
    "ListPackageVersionAssetsMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListPackageVersionAssetsRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "packageVersion"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository associated with the package version assets. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package that contains the returned package version assets. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package that contains the returned package version assets. The valid package types are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that contains the returned package version assets. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "querystring",
          "locationName": "version"
        },
        "maxResults": {
          "shape": "ListPackageVersionAssetsMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListPackageVersionAssetsResult": {
      "type": "structure",
      "members": {
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package that contains the returned package version assets. </p>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that contains the returned package version assets. </p>"
        },
        "version": {
          "shape": "PackageVersion",
          "documentation": "<p> The version of the package associated with the returned assets. </p>"
        },
        "versionRevision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The current revision associated with the package version. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> If there are additional results, this is the token for the next set of results. </p>"
        },
        "assets": {
          "shape": "AssetSummaryList",
          "documentation": "<p> The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html\"> <code>AssetSummary</code> </a> objects. </p>"
        }
      }
    },
    "ListPackageVersionDependenciesRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "packageVersion"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The domain that contains the repository that contains the requested package version dependencies. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the requested package version. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package with the requested dependencies. The valid package types are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package versions' package. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "packageVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> A string that contains the package version (for example, <code>3.5.2</code>). </p>",
          "location": "querystring",
          "locationName": "version"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListPackageVersionDependenciesResult": {
      "type": "structure",
      "members": {
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of the package that contains the returned dependencies. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that contains the returned package versions dependencies. </p>"
        },
        "version": {
          "shape": "PackageVersion",
          "documentation": "<p> The version of the package that is specified in the request. </p>"
        },
        "versionRevision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The current revision associated with the package version. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>"
        },
        "dependencies": {
          "shape": "PackageDependencyList",
          "documentation": "<p> The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html\"> <code>PackageDependency</code> </a> objects. </p>"
        }
      }
    },
    "ListPackageVersionsMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListPackageVersionsRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository that contains the returned package versions. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository that contains the package. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the returned packages. The valid package types are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package for which you want to return a list of package versions. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "status": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> A string that specifies the status of the package versions to include in the returned list. It can be one of the following: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "status"
        },
        "sortBy": {
          "shape": "PackageVersionSortType",
          "documentation": "<p> How to sort the returned list of package versions. </p>",
          "location": "querystring",
          "locationName": "sortBy"
        },
        "maxResults": {
          "shape": "ListPackageVersionsMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListPackageVersionsResult": {
      "type": "structure",
      "members": {
        "defaultDisplayVersion": {
          "shape": "PackageVersion",
          "documentation": "<p> The default package version to display. This depends on the package format: </p> <ul> <li> <p> For Maven and PyPI packages, it's the most recently published package version. </p> </li> <li> <p> For npm packages, it's the version referenced by the <code>latest</code> tag. If the <code>latest</code> tag is not set, it's the most recently published package version. </p> </li> </ul>"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format of the package. Valid package format values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package. </p>"
        },
        "versions": {
          "shape": "PackageVersionSummaryList",
          "documentation": "<p> The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html\"> <code>PackageVersionSummary</code> </a> objects. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> If there are additional results, this is the token for the next set of results. </p>"
        }
      }
    },
    "ListPackagesMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListPackagesRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The domain that contains the repository that contains the requested list of packages. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository from which packages are to be listed. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the packages. The valid package types are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "packagePrefix": {
          "shape": "PackageName",
          "documentation": "<p> A prefix used to filter returned repositories. Only repositories with names that start with <code>repositoryPrefix</code> are returned. </p>",
          "location": "querystring",
          "locationName": "package-prefix"
        },
        "maxResults": {
          "shape": "ListPackagesMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListPackagesResult": {
      "type": "structure",
      "members": {
        "packages": {
          "shape": "PackageSummaryList",
          "documentation": "<p> The list of returned <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html\"> <code>PackageSummary</code> </a> objects. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> If there are additional results, this is the token for the next set of results. </p>"
        }
      }
    },
    "ListRepositoriesInDomainMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListRepositoriesInDomainRequest": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the returned list of repositories. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "administratorAccount": {
          "shape": "AccountId",
          "documentation": "<p> Filter the list of repositories to only include those that are managed by the AWS account ID. </p>",
          "location": "querystring",
          "locationName": "administrator-account"
        },
        "repositoryPrefix": {
          "shape": "RepositoryName",
          "documentation": "<p> A prefix used to filter returned repositories. Only repositories with names that start with <code>repositoryPrefix</code> are returned. </p>",
          "location": "querystring",
          "locationName": "repository-prefix"
        },
        "maxResults": {
          "shape": "ListRepositoriesInDomainMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListRepositoriesInDomainResult": {
      "type": "structure",
      "members": {
        "repositories": {
          "shape": "RepositorySummaryList",
          "documentation": "<p> The returned list of repositories. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> If there are additional results, this is the token for the next set of results. </p>"
        }
      }
    },
    "ListRepositoriesMaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListRepositoriesRequest": {
      "type": "structure",
      "members": {
        "repositoryPrefix": {
          "shape": "RepositoryName",
          "documentation": "<p> A prefix used to filter returned repositories. Only repositories with names that start with <code>repositoryPrefix</code> are returned.</p>",
          "location": "querystring",
          "locationName": "repository-prefix"
        },
        "maxResults": {
          "shape": "ListRepositoriesMaxResults",
          "documentation": "<p> The maximum number of results to return per page. </p>",
          "location": "querystring",
          "locationName": "max-results"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results. </p>",
          "location": "querystring",
          "locationName": "next-token"
        }
      }
    },
    "ListRepositoriesResult": {
      "type": "structure",
      "members": {
        "repositories": {
          "shape": "RepositorySummaryList",
          "documentation": "<p> The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html\"> <code>RepositorySummary</code> </a> objects. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> If there are additional results, this is the token for the next set of results. </p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "LongOptional": {
      "type": "long"
    },
    "PackageDependency": {
      "type": "structure",
      "members": {
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package that this package depends on. </p>"
        },
        "dependencyType": {
          "shape": "String",
          "documentation": "<p> The type of a package dependency. The possible values depend on the package type. Example types are <code>compile</code>, <code>runtime</code>, and <code>test</code> for Maven packages, and <code>dev</code>, <code>prod</code>, and <code>optional</code> for npm packages. </p>"
        },
        "versionRequirement": {
          "shape": "String",
          "documentation": "<p> The required version, or version range, of the package that this package depends on. The version format is specific to the package type. For example, the following are possible valid required versions: <code>1.2.3</code>, <code>^2.3.4</code>, or <code>4.x</code>. </p>"
        }
      },
      "documentation": "<p> Details about a package dependency. </p>"
    },
    "PackageDependencyList": {
      "type": "list",
      "member": {
        "shape": "PackageDependency"
      }
    },
    "PackageFormat": {
      "type": "string",
      "enum": [
        "npm",
        "pypi",
        "maven"
      ]
    },
    "PackageName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[^!#/\\s]+"
    },
    "PackageNamespace": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[^!#/\\s]+"
    },
    "PackageSummary": {
      "type": "structure",
      "members": {
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package. Valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package. </p>"
        }
      },
      "documentation": "<p> Details about a package, including its format, namespace, and name. The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackages.html\"> <code>ListPackages</code> </a> operation returns a list of <code>PackageSummary</code> objects. </p>"
    },
    "PackageSummaryList": {
      "type": "list",
      "member": {
        "shape": "PackageSummary"
      }
    },
    "PackageVersion": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[^!#/\\s]+"
    },
    "PackageVersionDescription": {
      "type": "structure",
      "members": {
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> The format of the package version. The valid package formats are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>"
        },
        "packageName": {
          "shape": "PackageName",
          "documentation": "<p> The name of the requested package. </p>"
        },
        "displayName": {
          "shape": "String255",
          "documentation": "<p> The name of the package that is displayed. The <code>displayName</code> varies depending on the package version's format. For example, if an npm package is named <code>ui</code>, is in the namespace <code>vue</code>, and has the format <code>npm</code>, then the <code>displayName</code> is <code>@vue/ui</code>. </p>"
        },
        "version": {
          "shape": "PackageVersion",
          "documentation": "<p> The version of the package. </p>"
        },
        "summary": {
          "shape": "String",
          "documentation": "<p> A summary of the package version. The summary is extracted from the package. The information in and detail level of the summary depends on the package version's format. </p>"
        },
        "homePage": {
          "shape": "String",
          "documentation": "<p> The homepage associated with the package. </p>"
        },
        "sourceCodeRepository": {
          "shape": "String",
          "documentation": "<p> The repository for the source code in the package version, or the source code used to build it. </p>"
        },
        "publishedTime": {
          "shape": "Timestamp",
          "documentation": "<p> A timestamp that contains the date and time the package version was published. </p>"
        },
        "licenses": {
          "shape": "LicenseInfoList",
          "documentation": "<p> Information about licenses associated with the package version. </p>"
        },
        "revision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The revision of the package version. </p>"
        },
        "status": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> A string that contains the status of the package version. It can be one of the following: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p> Details about a package version. </p>"
    },
    "PackageVersionError": {
      "type": "structure",
      "members": {
        "errorCode": {
          "shape": "PackageVersionErrorCode",
          "documentation": "<p> The error code associated with the error. Valid error codes are: </p> <ul> <li> <p> <code>ALREADY_EXISTS</code> </p> </li> <li> <p> <code>MISMATCHED_REVISION</code> </p> </li> <li> <p> <code>MISMATCHED_STATUS</code> </p> </li> <li> <p> <code>NOT_ALLOWED</code> </p> </li> <li> <p> <code>NOT_FOUND</code> </p> </li> <li> <p> <code>SKIPPED</code> </p> </li> </ul>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p> The error message associated with the error. </p>"
        }
      },
      "documentation": "<p> An error associated with package. </p>"
    },
    "PackageVersionErrorCode": {
      "type": "string",
      "enum": [
        "ALREADY_EXISTS",
        "MISMATCHED_REVISION",
        "MISMATCHED_STATUS",
        "NOT_ALLOWED",
        "NOT_FOUND",
        "SKIPPED"
      ]
    },
    "PackageVersionErrorMap": {
      "type": "map",
      "key": {
        "shape": "PackageVersion"
      },
      "value": {
        "shape": "PackageVersionError"
      }
    },
    "PackageVersionList": {
      "type": "list",
      "member": {
        "shape": "PackageVersion"
      }
    },
    "PackageVersionRevision": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "\\S+"
    },
    "PackageVersionRevisionMap": {
      "type": "map",
      "key": {
        "shape": "PackageVersion"
      },
      "value": {
        "shape": "PackageVersionRevision"
      }
    },
    "PackageVersionSortType": {
      "type": "string",
      "enum": [
        "PUBLISHED_TIME"
      ]
    },
    "PackageVersionStatus": {
      "type": "string",
      "enum": [
        "Published",
        "Unfinished",
        "Unlisted",
        "Archived",
        "Disposed",
        "Deleted"
      ]
    },
    "PackageVersionSummary": {
      "type": "structure",
      "required": [
        "version",
        "status"
      ],
      "members": {
        "version": {
          "shape": "PackageVersion",
          "documentation": "<p> Information about a package version. </p>"
        },
        "revision": {
          "shape": "PackageVersionRevision",
          "documentation": "<p> The revision associated with a package version. </p>"
        },
        "status": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> A string that contains the status of the package version. It can be one of the following: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p> Details about a package version, including its status, version, and revision. The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html\"> <code>ListPackageVersions</code> </a> operation returns a list of <code>PackageVersionSummary</code> objects. </p>"
    },
    "PackageVersionSummaryList": {
      "type": "list",
      "member": {
        "shape": "PackageVersionSummary"
      }
    },
    "PaginationToken": {
      "type": "string",
      "max": 2000,
      "min": 1,
      "pattern": "\\S+"
    },
    "PolicyDocument": {
      "type": "string",
      "max": 5120,
      "min": 1
    },
    "PolicyRevision": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "\\S+"
    },
    "PutDomainPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain",
        "policyDocument"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain on which to set the resource policy. </p>"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>"
        },
        "policyRevision": {
          "shape": "PolicyRevision",
          "documentation": "<p> The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy. </p>"
        },
        "policyDocument": {
          "shape": "PolicyDocument",
          "documentation": "<p> A valid displayable JSON Aspen policy string to be set as the access control resource policy on the provided domain. </p>"
        }
      }
    },
    "PutDomainPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> The resource policy that was set after processing the request. </p>"
        }
      }
    },
    "PutRepositoryPermissionsPolicyRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "policyDocument"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain containing the repository to set the resource policy on. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository to set the resource policy on. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "policyRevision": {
          "shape": "PolicyRevision",
          "documentation": "<p> Sets the revision of the resource policy that specifies permissions to access the repository. This revision is used for optimistic locking, which prevents others from overwriting your changes to the repository's resource policy. </p>"
        },
        "policyDocument": {
          "shape": "PolicyDocument",
          "documentation": "<p> A valid displayable JSON Aspen policy string to be set as the access control resource policy on the provided repository. </p>"
        }
      }
    },
    "PutRepositoryPermissionsPolicyResult": {
      "type": "structure",
      "members": {
        "policy": {
          "shape": "ResourcePolicy",
          "documentation": "<p> The resource policy that was set after processing the request. </p>"
        }
      }
    },
    "RepositoryDescription": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository. </p>"
        },
        "administratorAccount": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that manages the repository. </p>"
        },
        "domainName": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository. </p>"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain that contains the repository. It does not include dashes or spaces. </p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the repository. </p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p> A text description of the repository. </p>"
        },
        "upstreams": {
          "shape": "UpstreamRepositoryInfoList",
          "documentation": "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"
        },
        "externalConnections": {
          "shape": "RepositoryExternalConnectionInfoList",
          "documentation": "<p> An array of external connections associated with the repository. </p>"
        }
      },
      "documentation": "<p> The details of a repository stored in AWS CodeArtifact. A CodeArtifact repository contains a set of package versions, each of which maps to a set of assets. Repositories are polyglot—a single repository can contain packages of any supported type. Each repository exposes endpoints for fetching and publishing packages using tools like the <code>npm</code> CLI, the Maven CLI (<code>mvn</code>), and <code>pip</code>. You can create up to 100 repositories per AWS account. </p>"
    },
    "RepositoryExternalConnectionInfo": {
      "type": "structure",
      "members": {
        "externalConnectionName": {
          "shape": "ExternalConnectionName",
          "documentation": "<p> The name of the external connection associated with a repository. </p>"
        },
        "packageFormat": {
          "shape": "PackageFormat",
          "documentation": "<p> The package format associated with a repository's external connection. The valid package formats are: </p> <ul> <li> <p> <code>npm</code>: A Node Package Manager (npm) package. </p> </li> <li> <p> <code>pypi</code>: A Python Package Index (PyPI) package. </p> </li> <li> <p> <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file. </p> </li> </ul>"
        },
        "status": {
          "shape": "ExternalConnectionStatus",
          "documentation": "<p> The status of the external connection of a repository. There is one valid value, <code>Available</code>. </p>"
        }
      },
      "documentation": "<p> Contains information about the external connection of a repository. </p>"
    },
    "RepositoryExternalConnectionInfoList": {
      "type": "list",
      "member": {
        "shape": "RepositoryExternalConnectionInfo"
      }
    },
    "RepositoryName": {
      "type": "string",
      "max": 100,
      "min": 2,
      "pattern": "[A-Za-z0-9][A-Za-z0-9._\\-]{1,99}"
    },
    "RepositorySummary": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository. </p>"
        },
        "administratorAccount": {
          "shape": "AccountId",
          "documentation": "<p> The AWS account ID that manages the repository. </p>"
        },
        "domainName": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain that contains the repository. </p>"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p> The ARN of the repository. </p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p> The description of the repository. </p>"
        }
      },
      "documentation": "<p> Details about a repository, including its Amazon Resource Name (ARN), description, and domain information. The <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListRepositories.html\"> <code>ListRepositories</code> </a> operation returns a list of <code>RepositorySummary</code> objects. </p>"
    },
    "RepositorySummaryList": {
      "type": "list",
      "member": {
        "shape": "RepositorySummary"
      }
    },
    "ResourcePolicy": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p> The ARN of the resource associated with the resource policy </p>"
        },
        "revision": {
          "shape": "PolicyRevision",
          "documentation": "<p> The current revision of the resource policy. </p>"
        },
        "document": {
          "shape": "PolicyDocument",
          "documentation": "<p> The resource policy formatted in JSON. </p>"
        }
      },
      "documentation": "<p> An AWS CodeArtifact resource policy that contains a resource ARN, document details, and a revision. </p>"
    },
    "String": {
      "type": "string"
    },
    "String255": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "SuccessfulPackageVersionInfo": {
      "type": "structure",
      "members": {
        "revision": {
          "shape": "String",
          "documentation": "<p> The revision of a package version. </p>"
        },
        "status": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> The status of a package version. Valid statuses are: </p> <ul> <li> <p> <code>Published</code> </p> </li> <li> <p> <code>Unfinished</code> </p> </li> <li> <p> <code>Unlisted</code> </p> </li> <li> <p> <code>Archived</code> </p> </li> <li> <p> <code>Disposed</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p> Contains the revision and status of a package version. </p>"
    },
    "SuccessfulPackageVersionInfoMap": {
      "type": "map",
      "key": {
        "shape": "PackageVersion"
      },
      "value": {
        "shape": "SuccessfulPackageVersionInfo"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UpdatePackageVersionsStatusRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository",
        "format",
        "package",
        "versions",
        "targetStatus"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The domain that contains the repository that contains the package versions with a status to be updated. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The repository that contains the package versions with the status you want to update. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "format": {
          "shape": "PackageFormat",
          "documentation": "<p> A format that specifies the type of the package with the statuses to update. The valid values are: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul>",
          "location": "querystring",
          "locationName": "format"
        },
        "namespace": {
          "shape": "PackageNamespace",
          "documentation": "<p> The namespace of the package. The package component that specifies its namespace depends on its type. For example: </p> <ul> <li> <p> The namespace of a Maven package is its <code>groupId</code>. </p> </li> <li> <p> The namespace of an npm package is its <code>scope</code>. </p> </li> <li> <p> A Python package does not contain a corresponding component, so Python packages do not have a namespace. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "package": {
          "shape": "PackageName",
          "documentation": "<p> The name of the package with the version statuses to update. </p>",
          "location": "querystring",
          "locationName": "package"
        },
        "versions": {
          "shape": "PackageVersionList",
          "documentation": "<p> An array of strings that specify the versions of the package with the statuses to update. </p>"
        },
        "versionRevisions": {
          "shape": "PackageVersionRevisionMap",
          "documentation": "<p> A map of package versions and package version revisions. The map <code>key</code> is the package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the package version revision. </p>"
        },
        "expectedStatus": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> The package version’s expected status before it is updated. If <code>expectedStatus</code> is provided, the package version's status is updated only if its status at the time <code>UpdatePackageVersionsStatus</code> is called matches <code>expectedStatus</code>. </p>"
        },
        "targetStatus": {
          "shape": "PackageVersionStatus",
          "documentation": "<p> The status you want to change the package version status to. </p>"
        }
      }
    },
    "UpdatePackageVersionsStatusResult": {
      "type": "structure",
      "members": {
        "successfulVersions": {
          "shape": "SuccessfulPackageVersionInfoMap",
          "documentation": "<p> A list of <code>PackageVersionError</code> objects, one for each package version with a status that failed to update. </p>"
        },
        "failedVersions": {
          "shape": "PackageVersionErrorMap",
          "documentation": "<p> A list of <code>SuccessfulPackageVersionInfo</code> objects, one for each package version with a status that successfully updated. </p>"
        }
      }
    },
    "UpdateRepositoryRequest": {
      "type": "structure",
      "required": [
        "domain",
        "repository"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p> The name of the domain associated with the repository to update. </p>",
          "location": "querystring",
          "locationName": "domain"
        },
        "domainOwner": {
          "shape": "AccountId",
          "documentation": "<p> The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces. </p>",
          "location": "querystring",
          "locationName": "domain-owner"
        },
        "repository": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of the repository to update. </p>",
          "location": "querystring",
          "locationName": "repository"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p> An updated repository description. </p>"
        },
        "upstreams": {
          "shape": "UpstreamRepositoryList",
          "documentation": "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"
        }
      }
    },
    "UpdateRepositoryResult": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "RepositoryDescription",
          "documentation": "<p> The updated repository. </p>"
        }
      }
    },
    "UpstreamRepository": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of an upstream repository. </p>"
        }
      },
      "documentation": "<p> Information about an upstream repository. A list of <code>UpstreamRepository</code> objects is an input parameter to <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html\"> <code>CreateRepository</code> </a> and <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html\"> <code>UpdateRepository</code> </a>. </p>"
    },
    "UpstreamRepositoryInfo": {
      "type": "structure",
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p> The name of an upstream repository. </p>"
        }
      },
      "documentation": "<p> Information about an upstream repository. </p>"
    },
    "UpstreamRepositoryInfoList": {
      "type": "list",
      "member": {
        "shape": "UpstreamRepositoryInfo"
      }
    },
    "UpstreamRepositoryList": {
      "type": "list",
      "member": {
        "shape": "UpstreamRepository"
      }
    }
  },
  "documentation": "<p> AWS CodeArtifact is a fully managed artifact repository compatible with language-native package managers and build tools such as npm, Apache Maven, and pip. You can use CodeArtifact to share packages with development teams and pull packages. Packages can be pulled from both public and CodeArtifact repositories. You can also create an upstream relationship between a CodeArtifact repository and another repository, which effectively merges their contents from the point of view of a package manager client. </p> <p> <b>AWS CodeArtifact Components</b> </p> <p>Use the information in this guide to help you work with the following CodeArtifact components:</p> <ul> <li> <p> <b>Repository</b>: A CodeArtifact repository contains a set of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/welcome.html#welcome-concepts-package-version\">package versions</a>, each of which maps to a set of assets, or files. Repositories are polyglot, so a single repository can contain packages of any supported type. Each repository exposes endpoints for fetching and publishing packages using tools like the <b> <code>npm</code> </b> CLI, the Maven CLI (<b> <code>mvn</code> </b>), and <b> <code>pip</code> </b>. You can create up to 100 repositories per AWS account.</p> </li> <li> <p> <b>Domain</b>: Repositories are aggregated into a higher-level entity known as a <i>domain</i>. All package assets and metadata are stored in the domain, but are consumed through repositories. A given package asset, such as a Maven JAR file, is stored once per domain, no matter how many repositories it's present in. All of the assets and metadata in a domain are encrypted with the same customer master key (CMK) stored in AWS Key Management Service (AWS KMS).</p> <p>Each repository is a member of a single domain and can't be moved to a different domain.</p> <p>The domain allows organizational policy to be applied across multiple repositories, such as which accounts can access repositories in the domain, and which public repositories can be used as sources of packages.</p> <p>Although an organization can have multiple domains, we recommend a single production domain that contains all published artifacts so that teams can find and share packages across their organization.</p> </li> <li> <p> <b>Package</b>: A <i>package</i> is a bundle of software and the metadata required to resolve dependencies and install the software. CodeArtifact supports <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-npm.html\">npm</a>, <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-python.html\">PyPI</a>, and <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-maven\">Maven</a> package formats.</p> <p>In CodeArtifact, a package consists of:</p> <ul> <li> <p>A <i>name</i> (for example, <code>webpack</code> is the name of a popular npm package)</p> </li> <li> <p>An optional namespace (for example, <code>@types</code> in <code>@types/node</code>)</p> </li> <li> <p>A set of versions (for example, <code>1.0.0</code>, <code>1.0.1</code>, <code>1.0.2</code>, etc.)</p> </li> <li> <p> Package-level metadata (for example, npm tags)</p> </li> </ul> </li> <li> <p> <b>Package version</b>: A version of a package, such as <code>@types/node 12.6.9</code>. The version number format and semantics vary for different package formats. For example, npm package versions must conform to the <a href=\"https://semver.org/\">Semantic Versioning specification</a>. In CodeArtifact, a package version consists of the version identifier, metadata at the package version level, and a set of assets.</p> </li> <li> <p> <b>Upstream repository</b>: One repository is <i>upstream</i> of another when the package versions in it can be accessed from the repository endpoint of the downstream repository, effectively merging the contents of the two repositories from the point of view of a client. CodeArtifact allows creating an upstream relationship between two repositories.</p> </li> <li> <p> <b>Asset</b>: An individual file stored in CodeArtifact associated with a package version, such as an npm <code>.tgz</code> file or Maven POM and JAR files.</p> </li> </ul> <p>CodeArtifact supports these operations:</p> <ul> <li> <p> <code>AssociateExternalConnection</code>: Adds an existing external connection to a repository. </p> </li> <li> <p> <code>CopyPackageVersions</code>: Copies package versions from one repository to another repository in the same domain.</p> </li> <li> <p> <code>CreateDomain</code>: Creates a domain</p> </li> <li> <p> <code>CreateRepository</code>: Creates a CodeArtifact repository in a domain. </p> </li> <li> <p> <code>DeleteDomain</code>: Deletes a domain. You cannot delete a domain that contains repositories. </p> </li> <li> <p> <code>DeleteDomainPermissionsPolicy</code>: Deletes the resource policy that is set on a domain.</p> </li> <li> <p> <code>DeletePackageVersions</code>: Deletes versions of a package. After a package has been deleted, it can be republished, but its assets and metadata cannot be restored because they have been permanently removed from storage.</p> </li> <li> <p> <code>DeleteRepository</code>: Deletes a repository. </p> </li> <li> <p> <code>DeleteRepositoryPermissionsPolicy</code>: Deletes the resource policy that is set on a repository.</p> </li> <li> <p> <code>DescribeDomain</code>: Returns a <code>DomainDescription</code> object that contains information about the requested domain.</p> </li> <li> <p> <code>DescribePackageVersion</code>: Returns a <code> <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">PackageVersionDescription</a> </code> object that contains details about a package version. </p> </li> <li> <p> <code>DescribeRepository</code>: Returns a <code>RepositoryDescription</code> object that contains detailed information about the requested repository. </p> </li> <li> <p> <code>DisposePackageVersions</code>: Disposes versions of a package. A package version with the status <code>Disposed</code> cannot be restored because they have been permanently removed from storage.</p> </li> <li> <p> <code>DisassociateExternalConnection</code>: Removes an existing external connection from a repository. </p> </li> <li> <p> <code>GetAuthorizationToken</code>: Generates a temporary authorization token for accessing repositories in the domain. The token expires the authorization period has passed. The default authorization period is 12 hours and can be customized to any length with a maximum of 12 hours.</p> </li> <li> <p> <code>GetDomainPermissionsPolicy</code>: Returns the policy of a resource that is attached to the specified domain. </p> </li> <li> <p> <code>GetPackageVersionAsset</code>: Returns the contents of an asset that is in a package version. </p> </li> <li> <p> <code>GetPackageVersionReadme</code>: Gets the readme file or descriptive text for a package version.</p> </li> <li> <p> <code>GetRepositoryEndpoint</code>: Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each package format: </p> <ul> <li> <p> <code>npm</code> </p> </li> <li> <p> <code>pypi</code> </p> </li> <li> <p> <code>maven</code> </p> </li> </ul> </li> <li> <p> <code>GetRepositoryPermissionsPolicy</code>: Returns the resource policy that is set on a repository. </p> </li> <li> <p> <code>ListDomains</code>: Returns a list of <code>DomainSummary</code> objects. Each returned <code>DomainSummary</code> object contains information about a domain.</p> </li> <li> <p> <code>ListPackages</code>: Lists the packages in a repository.</p> </li> <li> <p> <code>ListPackageVersionAssets</code>: Lists the assets for a given package version.</p> </li> <li> <p> <code>ListPackageVersionDependencies</code>: Returns a list of the direct dependencies for a package version. </p> </li> <li> <p> <code>ListPackageVersions</code>: Returns a list of package versions for a specified package in a repository.</p> </li> <li> <p> <code>ListRepositories</code>: Returns a list of repositories owned by the AWS account that called this method.</p> </li> <li> <p> <code>ListRepositoriesInDomain</code>: Returns a list of the repositories in a domain.</p> </li> <li> <p> <code>PutDomainPermissionsPolicy</code>: Attaches a resource policy to a domain.</p> </li> <li> <p> <code>PutRepositoryPermissionsPolicy</code>: Sets the resource policy on a repository that specifies permissions to access it. </p> </li> <li> <p> <code>UpdatePackageVersionsStatus</code>: Updates the status of one or more versions of a package.</p> </li> <li> <p> <code>UpdateRepository</code>: Updates the properties of a repository.</p> </li> </ul>"
}
]===]))