local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-11-05",
    "endpointPrefix": "transfer",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "AWS Transfer",
    "serviceFullName": "AWS Transfer Family",
    "serviceId": "Transfer",
    "signatureVersion": "v4",
    "signingName": "transfer",
    "targetPrefix": "TransferService",
    "uid": "transfer-2018-11-05"
  },
  "operations": {
    "CreateServer": {
      "name": "CreateServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServerRequest"
      },
      "output": {
        "shape": "CreateServerResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Instantiates an autoscaling virtual server based on the selected file transfer protocol in AWS. When you make updates to your file transfer protocol-enabled server or when you work with users, use the service-generated <code>ServerId</code> property that is assigned to the newly created server.</p>"
    },
    "CreateUser": {
      "name": "CreateUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserRequest"
      },
      "output": {
        "shape": "CreateUserResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a user and associates them with an existing file transfer protocol-enabled server. You can only create and associate users with servers that have the <code>IdentityProviderType</code> set to <code>SERVICE_MANAGED</code>. Using parameters for <code>CreateUser</code>, you can specify the user name, set the home directory, store the user's public key, and assign the user's AWS Identity and Access Management (IAM) role. You can also optionally add a scope-down policy, and assign metadata with tags that can be used to group and search for users.</p>"
    },
    "DeleteServer": {
      "name": "DeleteServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServerRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the file transfer protocol-enabled server that you specify.</p> <p>No response returns from this operation.</p>"
    },
    "DeleteSshPublicKey": {
      "name": "DeleteSshPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSshPublicKeyRequest"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a user's Secure Shell (SSH) public key.</p> <p>No response is returned from this operation.</p>"
    },
    "DeleteUser": {
      "name": "DeleteUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserRequest"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the user belonging to a file transfer protocol-enabled server you specify.</p> <p>No response returns from this operation.</p> <note> <p>When you delete a user from a server, the user's information is lost.</p> </note>"
    },
    "DescribeSecurityPolicy": {
      "name": "DescribeSecurityPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSecurityPolicyRequest"
      },
      "output": {
        "shape": "DescribeSecurityPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the security policy that is attached to your file transfer protocol-enabled server. The response contains a description of the security policy's properties. For more information about security policies, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html\">Working with security policies</a>.</p>"
    },
    "DescribeServer": {
      "name": "DescribeServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServerRequest"
      },
      "output": {
        "shape": "DescribeServerResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a file transfer protocol-enabled server that you specify by passing the <code>ServerId</code> parameter.</p> <p>The response contains a description of a server's properties. When you set <code>EndpointType</code> to VPC, the response will contain the <code>EndpointDetails</code>.</p>"
    },
    "DescribeUser": {
      "name": "DescribeUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUserRequest"
      },
      "output": {
        "shape": "DescribeUserResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the user assigned to the specific file transfer protocol-enabled server, as identified by its <code>ServerId</code> property.</p> <p>The response from this call returns the properties of the user associated with the <code>ServerId</code> value that was specified.</p>"
    },
    "ImportSshPublicKey": {
      "name": "ImportSshPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportSshPublicKeyRequest"
      },
      "output": {
        "shape": "ImportSshPublicKeyResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Adds a Secure Shell (SSH) public key to a user account identified by a <code>UserName</code> value assigned to the specific file transfer protocol-enabled server, identified by <code>ServerId</code>.</p> <p>The response returns the <code>UserName</code> value, the <code>ServerId</code> value, and the name of the <code>SshPublicKeyId</code>.</p>"
    },
    "ListSecurityPolicies": {
      "name": "ListSecurityPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSecurityPoliciesRequest"
      },
      "output": {
        "shape": "ListSecurityPoliciesResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists the security policies that are attached to your file transfer protocol-enabled servers.</p>"
    },
    "ListServers": {
      "name": "ListServers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServersRequest"
      },
      "output": {
        "shape": "ListServersResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists the file transfer protocol-enabled servers that are associated with your AWS account.</p>"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.</p>"
    },
    "ListUsers": {
      "name": "ListUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUsersRequest"
      },
      "output": {
        "shape": "ListUsersResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the users for a file transfer protocol-enabled server that you specify by passing the <code>ServerId</code> parameter.</p>"
    },
    "StartServer": {
      "name": "StartServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartServerRequest"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Changes the state of a file transfer protocol-enabled server from <code>OFFLINE</code> to <code>ONLINE</code>. It has no impact on a server that is already <code>ONLINE</code>. An <code>ONLINE</code> server can accept and process file transfer jobs.</p> <p>The state of <code>STARTING</code> indicates that the server is in an intermediate state, either not fully able to respond, or not fully online. The values of <code>START_FAILED</code> can indicate an error condition.</p> <p>No response is returned from this call.</p>"
    },
    "StopServer": {
      "name": "StopServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopServerRequest"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Changes the state of a file transfer protocol-enabled server from <code>ONLINE</code> to <code>OFFLINE</code>. An <code>OFFLINE</code> server cannot accept and process file transfer jobs. Information tied to your server, such as server and user properties, are not affected by stopping your server. Stopping the server will not reduce or impact your file transfer protocol endpoint billing.</p> <p>The state of <code>STOPPING</code> indicates that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>STOP_FAILED</code> can indicate an error condition.</p> <p>No response is returned from this call.</p>"
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
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p> <p>There is no response returned from this call.</p>"
    },
    "TestIdentityProvider": {
      "name": "TestIdentityProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TestIdentityProviderRequest"
      },
      "output": {
        "shape": "TestIdentityProviderResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>If the <code>IdentityProviderType</code> of a file transfer protocol-enabled server is <code>API_Gateway</code>, tests whether your API Gateway is set up successfully. We highly recommend that you call this operation to test your authentication method as soon as you create your server. By doing so, you can troubleshoot issues with the API Gateway integration to ensure that your users can successfully use the service.</p>"
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
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Detaches a key-value pair from a resource, as identified by its Amazon Resource Name (ARN). Resources are users, servers, roles, and other entities.</p> <p>No response is returned from this call.</p>"
    },
    "UpdateServer": {
      "name": "UpdateServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServerRequest"
      },
      "output": {
        "shape": "UpdateServerResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates the file transfer protocol-enabled server's properties after that server has been created.</p> <p>The <code>UpdateServer</code> call returns the <code>ServerId</code> of the server you updated.</p>"
    },
    "UpdateUser": {
      "name": "UpdateUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateUserRequest"
      },
      "output": {
        "shape": "UpdateUserResponse"
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "InternalServiceError"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Assigns new properties to a user. Parameters you pass modify any or all of the following: the home directory, role, and policy for the <code>UserName</code> and <code>ServerId</code> you specify.</p> <p>The response returns the <code>ServerId</code> and the <code>UserName</code> for the updated user.</p>"
    }
  },
  "shapes": {
    "AddressAllocationId": {
      "type": "string"
    },
    "AddressAllocationIds": {
      "type": "list",
      "member": {
        "shape": "AddressAllocationId"
      }
    },
    "Arn": {
      "type": "string",
      "max": 1600,
      "min": 20,
      "pattern": "arn:.*"
    },
    "Certificate": {
      "type": "string",
      "max": 1600
    },
    "CreateServerRequest": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a private certificate</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>"
        },
        "EndpointDetails": {
          "shape": "EndpointDetails",
          "documentation": "<p>The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "documentation": "<p>The type of VPC endpoint that you want your file transfer protocol-enabled server to connect to. You can choose to connect to the public internet or a VPC endpoint. With a VPC endpoint, you can restrict access to your server and resources only within your VPC.</p> <note> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>"
        },
        "HostKey": {
          "shape": "HostKey",
          "documentation": "<p>The RSA private key as generated by the <code>ssh-keygen -N \"\" -m PEM -f my-new-server-key</code> command.</p> <important> <p>If you aren't planning to migrate existing users from an existing SFTP-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>AWS Transfer Family User Guide</i>.</p>"
        },
        "IdentityProviderDetails": {
          "shape": "IdentityProviderDetails",
          "documentation": "<p>Required when <code>IdentityProviderType</code> is set to <code>API_GATEWAY</code>. Accepts an array containing all of the information required to call a customer-supplied authentication API, including the API Gateway URL. Not required when <code>IdentityProviderType</code> is set to <code>SERVICE_MANAGED</code>.</p>"
        },
        "IdentityProviderType": {
          "shape": "IdentityProviderType",
          "documentation": "<p>Specifies the mode of authentication for a file transfer protocol-enabled server. The default value is <code>SERVICE_MANAGED</code>, which allows you to store and access user credentials within the AWS Transfer Family service. Use the <code>API_GATEWAY</code> value to integrate with an identity provider of your choosing. The <code>API_GATEWAY</code> setting requires you to provide an API Gateway endpoint URL to call for authentication using the <code>IdentityProviderDetails</code> parameter.</p>"
        },
        "LoggingRole": {
          "shape": "Role",
          "documentation": "<p>Allows the service to write your users' activity to your Amazon CloudWatch logs for monitoring and auditing purposes.</p>"
        },
        "Protocols": {
          "shape": "Protocols",
          "documentation": "<p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> </ul> <note> <p>If you select <code>FTPS</code>, you must choose a certificate stored in AWS Certificate Manager (ACM) which will be used to identify your file transfer protocol-enabled server when clients connect to it over FTPS.</p> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be <code>API_GATEWAY</code>.</p> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to <code>SERVICE_MANAGED</code>.</p> </note>"
        },
        "SecurityPolicyName": {
          "shape": "SecurityPolicyName",
          "documentation": "<p>Specifies the name of the security policy that is attached to the server.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Key-value pairs that can be used to group and search for file transfer protocol-enabled servers.</p>"
        }
      }
    },
    "CreateServerResponse": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>The service-assigned ID of the file transfer protocol-enabled server that is created.</p>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "Role",
        "ServerId",
        "UserName"
      ],
      "members": {
        "HomeDirectory": {
          "shape": "HomeDirectory",
          "documentation": "<p>The landing directory (folder) for a user when they log in to the file transfer protocol-enabled server using the client.</p> <p>An example is <i> <code>your-Amazon-S3-bucket-name&gt;/home/username</code> </i>.</p>"
        },
        "HomeDirectoryType": {
          "shape": "HomeDirectoryType",
          "documentation": "<p>The type of landing directory (folder) you want your users' home directory to be when they log into the file transfer protocol-enabled server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it <code>LOGICAL</code>, you will need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 paths visible to your users.</p>"
        },
        "HomeDirectoryMappings": {
          "shape": "HomeDirectoryMappings",
          "documentation": "<p>Logical directory mappings that specify what Amazon S3 paths and keys should be visible to your user and how you want to make them visible. You will need to specify the \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 path. If you only specify a target, it will be displayed as is. You will need to also make sure that your IAM role provides access to paths in <code>Target</code>. The following is an example.</p> <p> <code>'[ \"/bucket2/documentation\", { \"Entry\": \"your-personal-report.pdf\", \"Target\": \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]'</code> </p> <p>In most cases, you can use this value instead of the scope-down policy to lock your user down to the designated home directory (\"chroot\"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p> <note> <p>If the target of a logical directory entry does not exist in Amazon S3, the entry will be ignored. As a workaround, you can use the Amazon S3 API to create 0 byte objects as place holders for your directory. If using the CLI, use the <code>s3api</code> call instead of <code>s3</code> so you can use the put-object operation. For example, you use the following: <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>. Make sure that the end of the key name ends in a '/' for it to be considered a folder.</p> </note>"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A scope-down policy for your user so you can use the same IAM role across multiple users. This policy scopes down user access to portions of their Amazon S3 bucket. Variables that you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down\">Creating a scope-down policy</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS Security Token Service API Reference</i>.</p> </note>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>The IAM role that controls your users' access to your Amazon S3 bucket. The policies attached to this role will determine the level of access you want to provide your users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust relationship that allows the file transfer protocol-enabled server to access your resources when servicing your users' transfer requests.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance. This is the specific server that you added your user to.</p>"
        },
        "SshPublicKeyBody": {
          "shape": "SshPublicKeyBody",
          "documentation": "<p>The public portion of the Secure Shell (SSH) key used to authenticate the user to the file transfer protocol-enabled server.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Key-value pairs that can be used to group and search for users. Tags are metadata attached to users for any purpose.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A unique string that identifies a user and is associated with a file transfer protocol-enabled server as specified by the <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, and at sign.</p>"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>The ID of the file transfer protocol-enabled server that the user is attached to.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A unique string that identifies a user account associated with a file transfer protocol-enabled server.</p>"
        }
      }
    },
    "DateImported": {
      "type": "timestamp"
    },
    "DeleteServerRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A unique system-assigned identifier for a file transfer protocol-enabled server instance.</p>"
        }
      }
    },
    "DeleteSshPublicKeyRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "SshPublicKeyId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.</p>"
        },
        "SshPublicKeyId": {
          "shape": "SshPublicKeyId",
          "documentation": "<p>A unique identifier used to reference your user's specific SSH key.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A unique string that identifies a user whose public key is being deleted.</p>"
        }
      }
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that has the user assigned to it.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A unique string that identifies a user that is being deleted from a file transfer protocol-enabled server.</p>"
        }
      }
    },
    "DescribeSecurityPolicyRequest": {
      "type": "structure",
      "required": [
        "SecurityPolicyName"
      ],
      "members": {
        "SecurityPolicyName": {
          "shape": "SecurityPolicyName",
          "documentation": "<p>Specifies the name of the security policy that is attached to the server.</p>"
        }
      }
    },
    "DescribeSecurityPolicyResponse": {
      "type": "structure",
      "required": [
        "SecurityPolicy"
      ],
      "members": {
        "SecurityPolicy": {
          "shape": "DescribedSecurityPolicy",
          "documentation": "<p>An array containing the properties of the security policy.</p>"
        }
      }
    },
    "DescribeServerRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server.</p>"
        }
      }
    },
    "DescribeServerResponse": {
      "type": "structure",
      "required": [
        "Server"
      ],
      "members": {
        "Server": {
          "shape": "DescribedServer",
          "documentation": "<p>An array containing the properties of a file transfer protocol-enabled server with the <code>ServerID</code> you specified.</p>"
        }
      }
    },
    "DescribeUserRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that has this user assigned.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user assigned to one or more file transfer protocol-enabled servers. User names are part of the sign-in credentials to use the AWS Transfer Family service and perform file transfer tasks.</p>"
        }
      }
    },
    "DescribeUserResponse": {
      "type": "structure",
      "required": [
        "ServerId",
        "User"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that has this user assigned.</p>"
        },
        "User": {
          "shape": "DescribedUser",
          "documentation": "<p>An array containing the properties of the user account for the <code>ServerID</code> value that you specified.</p>"
        }
      }
    },
    "DescribedSecurityPolicy": {
      "type": "structure",
      "required": [
        "SecurityPolicyName"
      ],
      "members": {
        "Fips": {
          "shape": "Fips",
          "documentation": "<p>Specifies whether this policy enables Federal Information Processing Standards (FIPS).</p>"
        },
        "SecurityPolicyName": {
          "shape": "SecurityPolicyName",
          "documentation": "<p>Specifies the name of the security policy that is attached to the server.</p>"
        },
        "SshCiphers": {
          "shape": "SecurityPolicyOptions",
          "documentation": "<p>Specifies the enabled Secure Shell (SSH) cipher encryption algorithms in the security policy that is attached to the server.</p>"
        },
        "SshKexs": {
          "shape": "SecurityPolicyOptions",
          "documentation": "<p>Specifies the enabled SSH key exchange (KEX) encryption algorithms in the security policy that is attached to the server.</p>"
        },
        "SshMacs": {
          "shape": "SecurityPolicyOptions",
          "documentation": "<p>Specifies the enabled SSH message authentication code (MAC) encryption algorithms in the security policy that is attached to the server.</p>"
        },
        "TlsCiphers": {
          "shape": "SecurityPolicyOptions",
          "documentation": "<p>Specifies the enabled Transport Layer Security (TLS) cipher encryption algorithms in the security policy that is attached to the server.</p>"
        }
      },
      "documentation": "<p>Describes the properties of a security policy that was specified. For more information about security policies, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html\">Working with security policies</a>.</p>"
    },
    "DescribedServer": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Specifies the unique Amazon Resource Name (ARN) of the file transfer protocol-enabled server.</p>"
        },
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>Specifies the ARN of the AWS Certificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p>"
        },
        "EndpointDetails": {
          "shape": "EndpointDetails",
          "documentation": "<p>Specifies the virtual private cloud (VPC) endpoint settings that you configured for your file transfer protocol-enabled server.</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "documentation": "<p>Defines the type of endpoint that your file transfer protocol-enabled server is connected to. If your server is connected to a VPC endpoint, your server isn't accessible over the public internet.</p>"
        },
        "HostKeyFingerprint": {
          "shape": "HostKeyFingerprint",
          "documentation": "<p>Specifies the Base64-encoded SHA256 fingerprint of the server's host key. This value is equivalent to the output of the <code>ssh-keygen -l -f my-new-server-key</code> command.</p>"
        },
        "IdentityProviderDetails": {
          "shape": "IdentityProviderDetails",
          "documentation": "<p>Specifies information to call a customer-supplied authentication API. This field is not populated when the <code>IdentityProviderType</code> of a file transfer protocol-enabled server is <code>SERVICE_MANAGED</code>.</p>"
        },
        "IdentityProviderType": {
          "shape": "IdentityProviderType",
          "documentation": "<p>Specifies the mode of authentication method enabled for this service. A value of <code>SERVICE_MANAGED</code> means that you are using this file transfer protocol-enabled server to store and access user credentials within the service. A value of <code>API_GATEWAY</code> indicates that you have integrated an API Gateway endpoint that will be invoked for authenticating your user into the service.</p>"
        },
        "LoggingRole": {
          "shape": "Role",
          "documentation": "<p>Specifies the AWS Identity and Access Management (IAM) role that allows a file transfer protocol-enabled server to turn on Amazon CloudWatch logging for Amazon S3 events. When set, user activity can be viewed in your CloudWatch logs.</p>"
        },
        "Protocols": {
          "shape": "Protocols",
          "documentation": "<p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p> <code>SFTP</code> (Secure Shell (SSH) File Transfer Protocol): File transfer over SSH</p> </li> <li> <p> <code>FTPS</code> (File Transfer Protocol Secure): File transfer with TLS encryption</p> </li> <li> <p> <code>FTP</code> (File Transfer Protocol): Unencrypted file transfer</p> </li> </ul>"
        },
        "SecurityPolicyName": {
          "shape": "SecurityPolicyName",
          "documentation": "<p>Specifies the name of the security policy that is attached to the server.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>Specifies the unique system-assigned identifier for a file transfer protocol-enabled server that you instantiate.</p>"
        },
        "State": {
          "shape": "State",
          "documentation": "<p>Specifies the condition of a file transfer protocol-enabled server for the server that was described. A value of <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file transfer operations.</p> <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error condition.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the key-value pairs that you can use to search for and group file transfer protocol-enabled servers that were assigned to the server that was described.</p>"
        },
        "UserCount": {
          "shape": "UserCount",
          "documentation": "<p>Specifies the number of users that are assigned to a file transfer protocol-enabled server you specified with the <code>ServerId</code>.</p>"
        }
      },
      "documentation": "<p>Describes the properties of a file transfer protocol-enabled server that was specified.</p>"
    },
    "DescribedUser": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Specifies the unique Amazon Resource Name (ARN) for the user that was requested to be described.</p>"
        },
        "HomeDirectory": {
          "shape": "HomeDirectory",
          "documentation": "<p>Specifies the landing directory (or folder), which is the location that files are written to or read from in an Amazon S3 bucket, for the described user. An example is <i> <code>your-Amazon-S3-bucket-name&gt;/home/username</code> </i>.</p>"
        },
        "HomeDirectoryMappings": {
          "shape": "HomeDirectoryMappings",
          "documentation": "<p>Specifies the logical directory mappings that specify what Amazon S3 paths and keys should be visible to your user and how you want to make them visible. You will need to specify the \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 path. If you only specify a target, it will be displayed as is. You will need to also make sure that your AWS Identity and Access Management (IAM) role provides access to paths in <code>Target</code>.</p> <p>In most cases, you can use this value instead of the scope-down policy to lock your user down to the designated home directory (\"chroot\"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p>"
        },
        "HomeDirectoryType": {
          "shape": "HomeDirectoryType",
          "documentation": "<p>Specifies the type of landing directory (folder) you mapped for your users to see when they log into the file transfer protocol-enabled server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it <code>LOGICAL</code>, you will need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 paths visible to your users.</p>"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>Specifies the name of the policy in use for the described user.</p>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>Specifies the IAM role that controls your users' access to your Amazon S3 bucket. The policies attached to this role will determine the level of access you want to provide your users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust relationship that allows a file transfer protocol-enabled server to access your resources when servicing your users' transfer requests.</p>"
        },
        "SshPublicKeys": {
          "shape": "SshPublicKeys",
          "documentation": "<p>Specifies the public key portion of the Secure Shell (SSH) keys stored for the described user.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Specifies the key-value pairs for the user requested. Tag can be used to search for and group users for a variety of purposes.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>Specifies the name of the user that was requested to be described. User names are used for authentication purposes. This is the string that will be used by your user when they log in to your file transfer protocol-enabled server.</p>"
        }
      },
      "documentation": "<p>Describes the properties of a user that was specified.</p>"
    },
    "EndpointDetails": {
      "type": "structure",
      "members": {
        "AddressAllocationIds": {
          "shape": "AddressAllocationIds",
          "documentation": "<p>A list of address allocation IDs that are required to attach an Elastic IP address to your file transfer protocol-enabled server's endpoint. This is only valid in the <code>UpdateServer</code> API.</p> <note> <p>This property can only be use when <code>EndpointType</code> is set to <code>VPC</code>.</p> </note>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>A list of subnet IDs that are required to host your file transfer protocol-enabled server endpoint in your VPC.</p> <note> <p>This property can only be used when <code>EndpointType</code> is set to <code>VPC</code>.</p> </note>"
        },
        "VpcEndpointId": {
          "shape": "VpcEndpointId",
          "documentation": "<p>The ID of the VPC endpoint.</p> <note> <p>This property can only be used when <code>EndpointType</code> is set to <code>VPC_ENDPOINT</code>.</p> </note>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The VPC ID of the VPC in which a file transfer protocol-enabled server's endpoint will be hosted.</p> <note> <p>This property can only be used when <code>EndpointType</code> is set to <code>VPC</code>.</p> </note>"
        }
      },
      "documentation": "<p>The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server and resources only within your VPC. To control incoming internet traffic, invoke the <code>UpdateServer</code> API and attach an Elastic IP to your server's endpoint.</p>"
    },
    "EndpointType": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "VPC",
        "VPC_ENDPOINT"
      ]
    },
    "Fips": {
      "type": "boolean"
    },
    "HomeDirectory": {
      "type": "string",
      "max": 1024,
      "pattern": "^$|/.*"
    },
    "HomeDirectoryMapEntry": {
      "type": "structure",
      "required": [
        "Entry",
        "Target"
      ],
      "members": {
        "Entry": {
          "shape": "MapEntry",
          "documentation": "<p>Represents an entry and a target for <code>HomeDirectoryMappings</code>.</p>"
        },
        "Target": {
          "shape": "MapTarget",
          "documentation": "<p>Represents the map target that is used in a <code>HomeDirectorymapEntry</code>.</p>"
        }
      },
      "documentation": "<p>Represents an object that contains entries and targets for <code>HomeDirectoryMappings</code>.</p>"
    },
    "HomeDirectoryMappings": {
      "type": "list",
      "member": {
        "shape": "HomeDirectoryMapEntry"
      },
      "max": 50,
      "min": 1
    },
    "HomeDirectoryType": {
      "type": "string",
      "enum": [
        "PATH",
        "LOGICAL"
      ]
    },
    "HostKey": {
      "type": "string",
      "max": 4096,
      "sensitive": true
    },
    "HostKeyFingerprint": {
      "type": "string"
    },
    "IdentityProviderDetails": {
      "type": "structure",
      "members": {
        "Url": {
          "shape": "Url",
          "documentation": "<p>Provides the location of the service endpoint used to authenticate users.</p>"
        },
        "InvocationRole": {
          "shape": "Role",
          "documentation": "<p>Provides the type of <code>InvocationRole</code> used to authenticate the user account.</p>"
        }
      },
      "documentation": "<p>Returns information related to the type of user authentication that is in use for a file transfer protocol-enabled server's users. A server can have only one method of authentication.</p>"
    },
    "IdentityProviderType": {
      "type": "string",
      "documentation": "<p>Returns information related to the type of user authentication that is in use for a file transfer protocol-enabled server's users. For <code>SERVICE_MANAGED</code> authentication, the Secure Shell (SSH) public keys are stored with a user on the server instance. For <code>API_GATEWAY</code> authentication, your custom authentication method is implemented by using an API call. The server can have only one method of authentication.</p>",
      "enum": [
        "SERVICE_MANAGED",
        "API_GATEWAY"
      ]
    },
    "ImportSshPublicKeyRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "SshPublicKeyBody",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server.</p>"
        },
        "SshPublicKeyBody": {
          "shape": "SshPublicKeyBody",
          "documentation": "<p>The public key portion of an SSH key pair.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user account that is assigned to one or more file transfer protocol-enabled servers.</p>"
        }
      }
    },
    "ImportSshPublicKeyResponse": {
      "type": "structure",
      "required": [
        "ServerId",
        "SshPublicKeyId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server.</p>"
        },
        "SshPublicKeyId": {
          "shape": "SshPublicKeyId",
          "documentation": "<p>The name given to a public key by the system that was imported.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A user name assigned to the <code>ServerID</code> value that you specified.</p>"
        }
      },
      "documentation": "<p>Identifies the user, the file transfer protocol-enabled server they belong to, and the identifier of the SSH public key associated with that user. A user can have more than one key on each server that they are associated with.</p>"
    },
    "ListSecurityPoliciesRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Specifies the number of security policies to return as a response to the <code>ListSecurityPolicies</code> query.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When additional results are obtained from the <code>ListSecurityPolicies</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional security policies.</p>"
        }
      }
    },
    "ListSecurityPoliciesResponse": {
      "type": "structure",
      "required": [
        "SecurityPolicyNames"
      ],
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you can get additional results from the <code>ListSecurityPolicies</code> operation, a <code>NextToken</code> parameter is returned in the output. In a following command, you can pass in the <code>NextToken</code> parameter to continue listing security policies.</p>"
        },
        "SecurityPolicyNames": {
          "shape": "SecurityPolicyNames",
          "documentation": "<p>An array of security policies that were listed.</p>"
        }
      }
    },
    "ListServersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Specifies the number of file transfer protocol-enabled servers to return as a response to the <code>ListServers</code> query.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When additional results are obtained from the <code>ListServers</code> command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional file transfer protocol-enabled servers.</p>"
        }
      }
    },
    "ListServersResponse": {
      "type": "structure",
      "required": [
        "Servers"
      ],
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you can get additional results from the <code>ListServers</code> operation, a <code>NextToken</code> parameter is returned in the output. In a following command, you can pass in the <code>NextToken</code> parameter to continue listing additional file transfer protocol-enabled servers.</p>"
        },
        "Servers": {
          "shape": "ListedServers",
          "documentation": "<p>An array of file transfer protocol-enabled servers that were listed.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific AWS resource, such as a server, user, or role.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Specifies the number of tags to return as a response to the <code>ListTagsForResource</code> request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you request additional results from the <code>ListTagsForResource</code> operation, a <code>NextToken</code> parameter is returned in the input. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional tags.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN you specified to list the tags of.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you can get additional results from the <code>ListTagsForResource</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional tags.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Key-value pairs that are assigned to a resource, usually for the purpose of grouping and searching for items. Tags are metadata that you define.</p>"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Specifies the number of users to return as a response to the <code>ListUsers</code> request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you can get additional results from the <code>ListUsers</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional users.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that has users assigned to it.</p>"
        }
      }
    },
    "ListUsersResponse": {
      "type": "structure",
      "required": [
        "ServerId",
        "Users"
      ],
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When you can get additional results from the <code>ListUsers</code> call, a <code>NextToken</code> parameter is returned in the output. You can then pass in a subsequent command to the <code>NextToken</code> parameter to continue listing additional users.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that the users are assigned to.</p>"
        },
        "Users": {
          "shape": "ListedUsers",
          "documentation": "<p>Returns the user accounts and their properties for the <code>ServerId</code> value that you specify.</p>"
        }
      }
    },
    "ListedServer": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Specifies the unique Amazon Resource Name (ARN) for a file transfer protocol-enabled server to be listed.</p>"
        },
        "IdentityProviderType": {
          "shape": "IdentityProviderType",
          "documentation": "<p>Specifies the authentication method used to validate a user for a file transfer protocol-enabled server that was specified. This can include Secure Shell (SSH), user name and password combinations, or your own custom authentication method. Valid values include <code>SERVICE_MANAGED</code> or <code>API_GATEWAY</code>.</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "documentation": "<p>Specifies the type of VPC endpoint that your file transfer protocol-enabled server is connected to. If your server is connected to a VPC endpoint, your server isn't accessible over the public internet.</p>"
        },
        "LoggingRole": {
          "shape": "Role",
          "documentation": "<p>Specifies the AWS Identity and Access Management (IAM) role that allows a file transfer protocol-enabled server to turn on Amazon CloudWatch logging.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>Specifies the unique system assigned identifier for a file transfer protocol-enabled servers that were listed.</p>"
        },
        "State": {
          "shape": "State",
          "documentation": "<p>Specifies the condition of a file transfer protocol-enabled server for the server that was described. A value of <code>ONLINE</code> indicates that the server can accept jobs and transfer files. A <code>State</code> value of <code>OFFLINE</code> means that the server cannot perform file transfer operations.</p> <p>The states of <code>STARTING</code> and <code>STOPPING</code> indicate that the server is in an intermediate state, either not fully able to respond, or not fully offline. The values of <code>START_FAILED</code> or <code>STOP_FAILED</code> can indicate an error condition.</p>"
        },
        "UserCount": {
          "shape": "UserCount",
          "documentation": "<p>Specifies the number of users that are assigned to a file transfer protocol-enabled server you specified with the <code>ServerId</code>.</p>"
        }
      },
      "documentation": "<p>Returns properties of a file transfer protocol-enabled server that was specified.</p>"
    },
    "ListedServers": {
      "type": "list",
      "member": {
        "shape": "ListedServer"
      }
    },
    "ListedUser": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>Provides the unique Amazon Resource Name (ARN) for the user that you want to learn about.</p>"
        },
        "HomeDirectory": {
          "shape": "HomeDirectory",
          "documentation": "<p>Specifies the location that files are written to or read from an Amazon S3 bucket for the user you specify by their ARN.</p>"
        },
        "HomeDirectoryType": {
          "shape": "HomeDirectoryType",
          "documentation": "<p>Specifies the type of landing directory (folder) you mapped for your users' home directory. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it <code>LOGICAL</code>, you will need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 paths visible to your users.</p>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>Specifies the role that is in use by this user. A <i>role</i> is an AWS Identity and Access Management (IAM) entity that, in this case, allows a file transfer protocol-enabled server to act on a user's behalf. It allows the server to inherit the trust relationship that enables that user to perform file operations to their Amazon S3 bucket.</p>"
        },
        "SshPublicKeyCount": {
          "shape": "SshPublicKeyCount",
          "documentation": "<p>Specifies the number of SSH public keys stored for the user you specified.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>Specifies the name of the user whose ARN was specified. User names are used for authentication purposes.</p>"
        }
      },
      "documentation": "<p>Returns properties of the user that you specify.</p>"
    },
    "ListedUsers": {
      "type": "list",
      "member": {
        "shape": "ListedUser"
      }
    },
    "MapEntry": {
      "type": "string",
      "max": 1024,
      "pattern": "^/.*"
    },
    "MapTarget": {
      "type": "string",
      "max": 1024,
      "pattern": "^/.*"
    },
    "MaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "Message": {
      "type": "string"
    },
    "NextToken": {
      "type": "string",
      "max": 6144,
      "min": 1
    },
    "NullableRole": {
      "type": "string",
      "max": 2048,
      "pattern": "^$|arn:.*role/.*"
    },
    "Policy": {
      "type": "string",
      "max": 2048
    },
    "Protocol": {
      "type": "string",
      "enum": [
        "SFTP",
        "FTP",
        "FTPS"
      ]
    },
    "Protocols": {
      "type": "list",
      "member": {
        "shape": "Protocol"
      },
      "max": 3,
      "min": 1
    },
    "Response": {
      "type": "string"
    },
    "Role": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:.*role/.*"
    },
    "SecurityPolicyName": {
      "type": "string",
      "max": 100,
      "pattern": "TransferSecurityPolicy-.+"
    },
    "SecurityPolicyNames": {
      "type": "list",
      "member": {
        "shape": "SecurityPolicyName"
      }
    },
    "SecurityPolicyOption": {
      "type": "string",
      "max": 50
    },
    "SecurityPolicyOptions": {
      "type": "list",
      "member": {
        "shape": "SecurityPolicyOption"
      }
    },
    "ServerId": {
      "type": "string",
      "max": 19,
      "min": 19,
      "pattern": "^s-([0-9a-f]{17})$"
    },
    "SourceIp": {
      "type": "string",
      "max": 32,
      "pattern": "^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"
    },
    "SshPublicKey": {
      "type": "structure",
      "required": [
        "DateImported",
        "SshPublicKeyBody",
        "SshPublicKeyId"
      ],
      "members": {
        "DateImported": {
          "shape": "DateImported",
          "documentation": "<p>Specifies the date that the public key was added to the user account.</p>"
        },
        "SshPublicKeyBody": {
          "shape": "SshPublicKeyBody",
          "documentation": "<p>Specifies the content of the SSH public key as specified by the <code>PublicKeyId</code>.</p>"
        },
        "SshPublicKeyId": {
          "shape": "SshPublicKeyId",
          "documentation": "<p>Specifies the <code>SshPublicKeyId</code> parameter contains the identifier of the public key.</p>"
        }
      },
      "documentation": "<p>Provides information about the public Secure Shell (SSH) key that is associated with a user account for the specific file transfer protocol-enabled server (as identified by <code>ServerId</code>). The information returned includes the date the key was imported, the public key contents, and the public key ID. A user can store more than one SSH public key associated with their user name on a specific server.</p>"
    },
    "SshPublicKeyBody": {
      "type": "string",
      "max": 2048,
      "pattern": "^ssh-rsa\\s+[A-Za-z0-9+/]+[=]{0,3}(\\s+.+)?\\s*$"
    },
    "SshPublicKeyCount": {
      "type": "integer"
    },
    "SshPublicKeyId": {
      "type": "string",
      "max": 21,
      "min": 21,
      "pattern": "^key-[0-9a-f]{17}$"
    },
    "SshPublicKeys": {
      "type": "list",
      "member": {
        "shape": "SshPublicKey"
      },
      "max": 5
    },
    "StartServerRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that you start.</p>"
        }
      }
    },
    "State": {
      "type": "string",
      "documentation": "<p>Describes the condition of a file transfer protocol-enabled server with respect to its ability to perform file operations. There are six possible states: <code>OFFLINE</code>, <code>ONLINE</code>, <code>STARTING</code>, <code>STOPPING</code>, <code>START_FAILED</code>, and <code>STOP_FAILED</code>.</p> <p> <code>OFFLINE</code> indicates that the server exists, but that it is not available for file operations. <code>ONLINE</code> indicates that the server is available to perform file operations. <code>STARTING</code> indicates that the server's was instantiated, but the server is not yet available to perform file operations. Under normal conditions, it can take a couple of minutes for the server to be completely operational. Both <code>START_FAILED</code> and <code>STOP_FAILED</code> are error conditions.</p>",
      "enum": [
        "OFFLINE",
        "ONLINE",
        "STARTING",
        "STOPPING",
        "START_FAILED",
        "STOP_FAILED"
      ]
    },
    "StatusCode": {
      "type": "integer"
    },
    "StopServerRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that you stopped.</p>"
        }
      }
    },
    "SubnetId": {
      "type": "string"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
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
          "documentation": "<p>The name assigned to the tag that you create.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Contains one or more values that you assigned to the key name you create.</p>"
        }
      },
      "documentation": "<p>Creates a key-value pair for a specific resource. Tags are metadata that you can use to search for and group a resource for various purposes. You can apply tags to servers, users, and roles. A tag key can take more than one value. For example, to group servers for accounting purposes, you might create a tag called <code>Group</code> and assign the values <code>Research</code> and <code>Accounting</code> to that group.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "Tags"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>An Amazon Resource Name (ARN) for a specific AWS resource, such as a server, user, or role.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to user accounts for any purpose.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TestIdentityProviderRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned identifier for a specific file transfer protocol-enabled server. That server's user authentication method is tested with a user name and password.</p>"
        },
        "ServerProtocol": {
          "shape": "Protocol",
          "documentation": "<p>The type of file transfer protocol to be tested.</p> <p>The available protocols are:</p> <ul> <li> <p>Secure Shell (SSH) File Transfer Protocol (SFTP)</p> </li> <li> <p>File Transfer Protocol Secure (FTPS)</p> </li> <li> <p>File Transfer Protocol (FTP)</p> </li> </ul>"
        },
        "SourceIp": {
          "shape": "SourceIp",
          "documentation": "<p>The source IP address of the user account to be tested.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user account to be tested.</p>"
        },
        "UserPassword": {
          "shape": "UserPassword",
          "documentation": "<p>The password of the user account to be tested.</p>"
        }
      }
    },
    "TestIdentityProviderResponse": {
      "type": "structure",
      "required": [
        "StatusCode",
        "Url"
      ],
      "members": {
        "Response": {
          "shape": "Response",
          "documentation": "<p>The response that is returned from your API Gateway.</p>"
        },
        "StatusCode": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status code that is the response from your API Gateway.</p>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>A message that indicates whether the test was successful or not.</p>"
        },
        "Url": {
          "shape": "Url",
          "documentation": "<p>The endpoint of the service used to authenticate a user.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "TagKeys"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The value of the resource that will have the tag removed. An Amazon Resource Name (ARN) is an identifier for a specific AWS resource, such as a server, user, or role.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>TagKeys are key-value pairs assigned to ARNs that can be used to group and search for resources by type. This metadata can be attached to resources for any purpose.</p>"
        }
      }
    },
    "UpdateServerRequest": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate. Required when <code>Protocols</code> is set to <code>FTPS</code>.</p> <p>To request a new public certificate, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html\">Request a public certificate</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>To import an existing certificate into ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into ACM</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>To request a private certificate to use FTPS through private IP addresses, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html\">Request a private certificate</a> in the <i> AWS Certificate Manager User Guide</i>.</p> <p>Certificates with the following cryptographic algorithms and key sizes are supported:</p> <ul> <li> <p>2048-bit RSA (RSA_2048)</p> </li> <li> <p>4096-bit RSA (RSA_4096)</p> </li> <li> <p>Elliptic Prime Curve 256 bit (EC_prime256v1)</p> </li> <li> <p>Elliptic Prime Curve 384 bit (EC_secp384r1)</p> </li> <li> <p>Elliptic Prime Curve 521 bit (EC_secp521r1)</p> </li> </ul> <note> <p>The certificate must be a valid SSL/TLS X.509 version 3 certificate with FQDN or IP address specified and information about the issuer.</p> </note>"
        },
        "EndpointDetails": {
          "shape": "EndpointDetails",
          "documentation": "<p>The virtual private cloud (VPC) endpoint settings that are configured for your file transfer protocol-enabled server. With a VPC endpoint, you can restrict access to your server to resources only within your VPC. To control incoming internet traffic, you will need to associate one or more Elastic IP addresses with your server's endpoint.</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "documentation": "<p>The type of endpoint that you want your file transfer protocol-enabled server to connect to. You can choose to connect to the public internet or a VPC endpoint. With a VPC endpoint, you can restrict access to your server and resources only within your VPC.</p> <note> <p>It is recommended that you use <code>VPC</code> as the <code>EndpointType</code>. With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included) with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address. This is not possible with <code>EndpointType</code> set to <code>VPC_ENDPOINT</code>.</p> </note>"
        },
        "HostKey": {
          "shape": "HostKey",
          "documentation": "<p>The RSA private key as generated by <code>ssh-keygen -N \"\" -m PEM -f my-new-server-key</code>.</p> <important> <p>If you aren't planning to migrate existing users from an existing file transfer protocol-enabled server to a new server, don't update the host key. Accidentally changing a server's host key can be disruptive.</p> </important> <p>For more information, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key\">Change the host key for your SFTP-enabled server</a> in the <i>AWS Transfer Family User Guide</i>.</p>"
        },
        "IdentityProviderDetails": {
          "shape": "IdentityProviderDetails",
          "documentation": "<p>An array containing all of the information required to call a customer's authentication API method.</p>"
        },
        "LoggingRole": {
          "shape": "NullableRole",
          "documentation": "<p>Changes the AWS Identity and Access Management (IAM) role that allows Amazon S3 events to be logged in Amazon CloudWatch, turning logging on or off.</p>"
        },
        "Protocols": {
          "shape": "Protocols",
          "documentation": "<p>Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:</p> <ul> <li> <p>Secure Shell (SSH) File Transfer Protocol (SFTP): File transfer over SSH</p> </li> <li> <p>File Transfer Protocol Secure (FTPS): File transfer with TLS encryption</p> </li> <li> <p>File Transfer Protocol (FTP): Unencrypted file transfer</p> </li> </ul> <note> <p>If you select <code>FTPS</code>, you must choose a certificate stored in AWS Certificate Manager (ACM) which will be used to identify your server when clients connect to it over FTPS.</p> <p>If <code>Protocol</code> includes either <code>FTP</code> or <code>FTPS</code>, then the <code>EndpointType</code> must be <code>VPC</code> and the <code>IdentityProviderType</code> must be <code>API_GATEWAY</code>.</p> <p>If <code>Protocol</code> includes <code>FTP</code>, then <code>AddressAllocationIds</code> cannot be associated.</p> <p>If <code>Protocol</code> is set only to <code>SFTP</code>, the <code>EndpointType</code> can be set to <code>PUBLIC</code> and the <code>IdentityProviderType</code> can be set to <code>SERVICE_MANAGED</code>.</p> </note>"
        },
        "SecurityPolicyName": {
          "shape": "SecurityPolicyName",
          "documentation": "<p>Specifies the name of the security policy that is attached to the server.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that the user account is assigned to.</p>"
        }
      }
    },
    "UpdateServerResponse": {
      "type": "structure",
      "required": [
        "ServerId"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server that the user account is assigned to.</p>"
        }
      }
    },
    "UpdateUserRequest": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "HomeDirectory": {
          "shape": "HomeDirectory",
          "documentation": "<p>Specifies the landing directory (folder) for a user when they log in to the file transfer protocol-enabled server using their file transfer protocol client.</p> <p>An example is <code>your-Amazon-S3-bucket-name&gt;/home/username</code>.</p>"
        },
        "HomeDirectoryType": {
          "shape": "HomeDirectoryType",
          "documentation": "<p>The type of landing directory (folder) you want your users' home directory to be when they log into the file transfer protocol-enabled server. If you set it to <code>PATH</code>, the user will see the absolute Amazon S3 bucket paths as is in their file transfer protocol clients. If you set it <code>LOGICAL</code>, you will need to provide mappings in the <code>HomeDirectoryMappings</code> for how you want to make Amazon S3 paths visible to your users.</p>"
        },
        "HomeDirectoryMappings": {
          "shape": "HomeDirectoryMappings",
          "documentation": "<p>Logical directory mappings that specify what Amazon S3 paths and keys should be visible to your user and how you want to make them visible. You will need to specify the \"<code>Entry</code>\" and \"<code>Target</code>\" pair, where <code>Entry</code> shows how the path is made visible and <code>Target</code> is the actual Amazon S3 path. If you only specify a target, it will be displayed as is. You will need to also make sure that your IAM role provides access to paths in <code>Target</code>. The following is an example.</p> <p> <code>'[ \"/bucket2/documentation\", { \"Entry\": \"your-personal-report.pdf\", \"Target\": \"/bucket3/customized-reports/${transfer:UserName}.pdf\" } ]'</code> </p> <p>In most cases, you can use this value instead of the scope-down policy to lock your user down to the designated home directory (\"chroot\"). To do this, you can set <code>Entry</code> to '/' and set <code>Target</code> to the HomeDirectory parameter value.</p> <note> <p>If the target of a logical directory entry does not exist in Amazon S3, the entry will be ignored. As a workaround, you can use the Amazon S3 API to create 0 byte objects as place holders for your directory. If using the CLI, use the <code>s3api</code> call instead of <code>s3</code> so you can use the put-object operation. For example, you use the following: <code>aws s3api put-object --bucket bucketname --key path/to/folder/</code>. Make sure that the end of the key name ends in a / for it to be considered a folder.</p> </note>"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>Allows you to supply a scope-down policy for your user so you can use the same IAM role across multiple users. The policy scopes down user access to portions of your Amazon S3 bucket. Variables you can use inside this policy include <code>${Transfer:UserName}</code>, <code>${Transfer:HomeDirectory}</code>, and <code>${Transfer:HomeBucket}</code>.</p> <note> <p>For scope-down policies, AWS Transfer Family stores the policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You save the policy as a JSON blob and pass it in the <code>Policy</code> argument.</p> <p>For an example of a scope-down policy, see <a href=\"https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down\">Creating a scope-down policy</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> in the <i>AWS Security Token Service API Reference</i>.</p> </note>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>The IAM role that controls your users' access to your Amazon S3 bucket. The policies attached to this role will determine the level of access you want to provide your users when transferring files into and out of your Amazon S3 bucket or buckets. The IAM role should also contain a trust relationship that allows the file transfer protocol-enabled server to access your resources when servicing your users' transfer requests.</p>"
        },
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that the user account is assigned to.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>A unique string that identifies a user and is associated with a file transfer protocol-enabled server as specified by the <code>ServerId</code>. This user name must be a minimum of 3 and a maximum of 100 characters long. The following are valid characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and at sign '@'. The user name can't start with a hyphen, period, and at sign.</p>"
        }
      }
    },
    "UpdateUserResponse": {
      "type": "structure",
      "required": [
        "ServerId",
        "UserName"
      ],
      "members": {
        "ServerId": {
          "shape": "ServerId",
          "documentation": "<p>A system-assigned unique identifier for a file transfer protocol-enabled server instance that the user account is assigned to.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The unique identifier for a user that is assigned to a file transfer protocol-enabled server instance that was specified in the request.</p>"
        }
      },
      "documentation": "<p> <code>UpdateUserResponse</code> returns the user name and file transfer protocol-enabled server identifier for the request to update a user's properties.</p>"
    },
    "Url": {
      "type": "string",
      "max": 255
    },
    "UserCount": {
      "type": "integer"
    },
    "UserName": {
      "type": "string",
      "max": 100,
      "min": 3,
      "pattern": "^[\\w][\\w@.-]{2,99}$"
    },
    "UserPassword": {
      "type": "string",
      "max": 2048,
      "sensitive": true
    },
    "VpcEndpointId": {
      "type": "string",
      "max": 22,
      "min": 22,
      "pattern": "^vpce-[0-9a-f]{17}$"
    },
    "VpcId": {
      "type": "string"
    }
  },
  "documentation": "<p>AWS Transfer Family is a fully managed service that enables the transfer of files over the File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon S3). AWS helps you seamlessly migrate your file transfer workflows to AWS Transfer Family by integrating with existing authentication systems, and providing DNS routing with Amazon Route 53 so nothing changes for your customers and partners, or their applications. With your data in Amazon S3, you can use it with AWS services for processing, analytics, machine learning, and archiving. Getting started with AWS Transfer Family is easy since there is no infrastructure to buy and set up.</p>"
}
]===]))