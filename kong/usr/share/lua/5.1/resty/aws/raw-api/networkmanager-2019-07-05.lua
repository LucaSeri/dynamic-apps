local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-07-05",
    "endpointPrefix": "networkmanager",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "NetworkManager",
    "serviceFullName": "AWS Network Manager",
    "serviceId": "NetworkManager",
    "signatureVersion": "v4",
    "signingName": "networkmanager",
    "uid": "networkmanager-2019-07-05"
  },
  "operations": {
    "AssociateCustomerGateway": {
      "name": "AssociateCustomerGateway",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/customer-gateway-associations"
      },
      "input": {
        "shape": "AssociateCustomerGatewayRequest"
      },
      "output": {
        "shape": "AssociateCustomerGatewayResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device. </p> <p>You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html\">DescribeVpnConnections</a> EC2 API and filter by <code>transit-gateway-id</code>.</p> <p>You cannot associate a customer gateway with more than one device and link. </p>"
    },
    "AssociateLink": {
      "name": "AssociateLink",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/link-associations"
      },
      "input": {
        "shape": "AssociateLinkRequest"
      },
      "output": {
        "shape": "AssociateLinkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.</p>"
    },
    "CreateDevice": {
      "name": "CreateDevice",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/devices"
      },
      "input": {
        "shape": "CreateDeviceRequest"
      },
      "output": {
        "shape": "CreateDeviceResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.</p>"
    },
    "CreateGlobalNetwork": {
      "name": "CreateGlobalNetwork",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks"
      },
      "input": {
        "shape": "CreateGlobalNetworkRequest"
      },
      "output": {
        "shape": "CreateGlobalNetworkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a new, empty global network.</p>"
    },
    "CreateLink": {
      "name": "CreateLink",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/links"
      },
      "input": {
        "shape": "CreateLinkRequest"
      },
      "output": {
        "shape": "CreateLinkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a new link for a specified site.</p>"
    },
    "CreateSite": {
      "name": "CreateSite",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/sites"
      },
      "input": {
        "shape": "CreateSiteRequest"
      },
      "output": {
        "shape": "CreateSiteResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a new site in a global network.</p>"
    },
    "DeleteDevice": {
      "name": "DeleteDevice",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/devices/{deviceId}"
      },
      "input": {
        "shape": "DeleteDeviceRequest"
      },
      "output": {
        "shape": "DeleteDeviceResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an existing device. You must first disassociate the device from any links and customer gateways.</p>"
    },
    "DeleteGlobalNetwork": {
      "name": "DeleteGlobalNetwork",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}"
      },
      "input": {
        "shape": "DeleteGlobalNetworkRequest"
      },
      "output": {
        "shape": "DeleteGlobalNetworkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.</p>"
    },
    "DeleteLink": {
      "name": "DeleteLink",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/links/{linkId}"
      },
      "input": {
        "shape": "DeleteLinkRequest"
      },
      "output": {
        "shape": "DeleteLinkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an existing link. You must first disassociate the link from any devices and customer gateways.</p>"
    },
    "DeleteSite": {
      "name": "DeleteSite",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/sites/{siteId}"
      },
      "input": {
        "shape": "DeleteSiteRequest"
      },
      "output": {
        "shape": "DeleteSiteResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes an existing site. The site cannot be associated with any device or link.</p>"
    },
    "DeregisterTransitGateway": {
      "name": "DeregisterTransitGateway",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}"
      },
      "input": {
        "shape": "DeregisterTransitGatewayRequest"
      },
      "output": {
        "shape": "DeregisterTransitGatewayResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.</p>"
    },
    "DescribeGlobalNetworks": {
      "name": "DescribeGlobalNetworks",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks"
      },
      "input": {
        "shape": "DescribeGlobalNetworksRequest"
      },
      "output": {
        "shape": "DescribeGlobalNetworksResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate <code>Get*</code> action. For example, to list the transit gateways in your global network, use <a>GetTransitGatewayRegistrations</a>.</p>"
    },
    "DisassociateCustomerGateway": {
      "name": "DisassociateCustomerGateway",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}"
      },
      "input": {
        "shape": "DisassociateCustomerGatewayRequest"
      },
      "output": {
        "shape": "DisassociateCustomerGatewayResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Disassociates a customer gateway from a device and a link.</p>"
    },
    "DisassociateLink": {
      "name": "DisassociateLink",
      "http": {
        "method": "DELETE",
        "requestUri": "/global-networks/{globalNetworkId}/link-associations"
      },
      "input": {
        "shape": "DisassociateLinkRequest"
      },
      "output": {
        "shape": "DisassociateLinkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.</p>"
    },
    "GetCustomerGatewayAssociations": {
      "name": "GetCustomerGatewayAssociations",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/customer-gateway-associations"
      },
      "input": {
        "shape": "GetCustomerGatewayAssociationsRequest"
      },
      "output": {
        "shape": "GetCustomerGatewayAssociationsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the association information for customer gateways that are associated with devices and links in your global network.</p>"
    },
    "GetDevices": {
      "name": "GetDevices",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/devices"
      },
      "input": {
        "shape": "GetDevicesRequest"
      },
      "output": {
        "shape": "GetDevicesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Gets information about one or more of your devices in a global network.</p>"
    },
    "GetLinkAssociations": {
      "name": "GetLinkAssociations",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/link-associations"
      },
      "input": {
        "shape": "GetLinkAssociationsRequest"
      },
      "output": {
        "shape": "GetLinkAssociationsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.</p>"
    },
    "GetLinks": {
      "name": "GetLinks",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/links"
      },
      "input": {
        "shape": "GetLinksRequest"
      },
      "output": {
        "shape": "GetLinksResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Gets information about one or more links in a specified global network.</p> <p>If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.</p>"
    },
    "GetSites": {
      "name": "GetSites",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/sites"
      },
      "input": {
        "shape": "GetSitesRequest"
      },
      "output": {
        "shape": "GetSitesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Gets information about one or more of your sites in a global network.</p>"
    },
    "GetTransitGatewayRegistrations": {
      "name": "GetTransitGatewayRegistrations",
      "http": {
        "method": "GET",
        "requestUri": "/global-networks/{globalNetworkId}/transit-gateway-registrations"
      },
      "input": {
        "shape": "GetTransitGatewayRegistrationsRequest"
      },
      "output": {
        "shape": "GetTransitGatewayRegistrationsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Gets information about the transit gateway registrations in a specified global network.</p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
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
      "documentation": "<p>Lists the tags for a specified resource.</p>"
    },
    "RegisterTransitGateway": {
      "name": "RegisterTransitGateway",
      "http": {
        "method": "POST",
        "requestUri": "/global-networks/{globalNetworkId}/transit-gateway-registrations"
      },
      "input": {
        "shape": "RegisterTransitGatewayRequest"
      },
      "output": {
        "shape": "RegisterTransitGatewayResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.</p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Tags a specified resource.</p>"
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
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes tags from a specified resource.</p>"
    },
    "UpdateDevice": {
      "name": "UpdateDevice",
      "http": {
        "method": "PATCH",
        "requestUri": "/global-networks/{globalNetworkId}/devices/{deviceId}"
      },
      "input": {
        "shape": "UpdateDeviceRequest"
      },
      "output": {
        "shape": "UpdateDeviceResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.</p>"
    },
    "UpdateGlobalNetwork": {
      "name": "UpdateGlobalNetwork",
      "http": {
        "method": "PATCH",
        "requestUri": "/global-networks/{globalNetworkId}"
      },
      "input": {
        "shape": "UpdateGlobalNetworkRequest"
      },
      "output": {
        "shape": "UpdateGlobalNetworkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates an existing global network. To remove information for any of the parameters, specify an empty string.</p>"
    },
    "UpdateLink": {
      "name": "UpdateLink",
      "http": {
        "method": "PATCH",
        "requestUri": "/global-networks/{globalNetworkId}/links/{linkId}"
      },
      "input": {
        "shape": "UpdateLinkRequest"
      },
      "output": {
        "shape": "UpdateLinkResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.</p>"
    },
    "UpdateSite": {
      "name": "UpdateSite",
      "http": {
        "method": "PATCH",
        "requestUri": "/global-networks/{globalNetworkId}/sites/{siteId}"
      },
      "input": {
        "shape": "UpdateSiteRequest"
      },
      "output": {
        "shape": "UpdateSiteResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.</p>"
    }
  },
  "shapes": {
    "AssociateCustomerGatewayRequest": {
      "type": "structure",
      "required": [
        "CustomerGatewayArn",
        "GlobalNetworkId",
        "DeviceId"
      ],
      "members": {
        "CustomerGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the customer gateway. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>"
        },
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>"
        }
      }
    },
    "AssociateCustomerGatewayResponse": {
      "type": "structure",
      "members": {
        "CustomerGatewayAssociation": {
          "shape": "CustomerGatewayAssociation",
          "documentation": "<p>The customer gateway association.</p>"
        }
      }
    },
    "AssociateLinkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "DeviceId",
        "LinkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>"
        }
      }
    },
    "AssociateLinkResponse": {
      "type": "structure",
      "members": {
        "LinkAssociation": {
          "shape": "LinkAssociation",
          "documentation": "<p>The link association.</p>"
        }
      }
    },
    "Bandwidth": {
      "type": "structure",
      "members": {
        "UploadSpeed": {
          "shape": "Integer",
          "documentation": "<p>Upload speed in Mbps.</p>"
        },
        "DownloadSpeed": {
          "shape": "Integer",
          "documentation": "<p>Download speed in Mbps.</p>"
        }
      },
      "documentation": "<p>Describes bandwidth information.</p>"
    },
    "CreateDeviceRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the device.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the device.</p>"
        },
        "Vendor": {
          "shape": "String",
          "documentation": "<p>The vendor of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Model": {
          "shape": "String",
          "documentation": "<p>The model of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "SerialNumber": {
          "shape": "String",
          "documentation": "<p>The serial number of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The location of the device.</p>"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to apply to the resource during creation.</p>"
        }
      }
    },
    "CreateDeviceResponse": {
      "type": "structure",
      "members": {
        "Device": {
          "shape": "Device",
          "documentation": "<p>Information about the device.</p>"
        }
      }
    },
    "CreateGlobalNetworkRequest": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the global network.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to apply to the resource during creation.</p>"
        }
      }
    },
    "CreateGlobalNetworkResponse": {
      "type": "structure",
      "members": {
        "GlobalNetwork": {
          "shape": "GlobalNetwork",
          "documentation": "<p>Information about the global network object.</p>"
        }
      }
    },
    "CreateLinkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "Bandwidth",
        "SiteId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the link.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the link.</p> <p>Constraints: Cannot include the following characters: | \\ ^</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p> The upload speed and download speed in Mbps. </p>"
        },
        "Provider": {
          "shape": "String",
          "documentation": "<p>The provider of the link.</p> <p>Constraints: Cannot include the following characters: | \\ ^</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to apply to the resource during creation.</p>"
        }
      }
    },
    "CreateLinkResponse": {
      "type": "structure",
      "members": {
        "Link": {
          "shape": "Link",
          "documentation": "<p>Information about the link.</p>"
        }
      }
    },
    "CreateSiteRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of your site.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p> <ul> <li> <p> <code>Address</code>: The physical address of the site.</p> </li> <li> <p> <code>Latitude</code>: The latitude of the site. </p> </li> <li> <p> <code>Longitude</code>: The longitude of the site.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to apply to the resource during creation.</p>"
        }
      }
    },
    "CreateSiteResponse": {
      "type": "structure",
      "members": {
        "Site": {
          "shape": "Site",
          "documentation": "<p>Information about the site.</p>"
        }
      }
    },
    "CustomerGatewayAssociation": {
      "type": "structure",
      "members": {
        "CustomerGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the customer gateway.</p>"
        },
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>"
        },
        "State": {
          "shape": "CustomerGatewayAssociationState",
          "documentation": "<p>The association state.</p>"
        }
      },
      "documentation": "<p>Describes the association between a customer gateway, a device, and a link.</p>"
    },
    "CustomerGatewayAssociationList": {
      "type": "list",
      "member": {
        "shape": "CustomerGatewayAssociation"
      }
    },
    "CustomerGatewayAssociationState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "DELETED"
      ]
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DeleteDeviceRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "DeviceId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>",
          "location": "uri",
          "locationName": "deviceId"
        }
      }
    },
    "DeleteDeviceResponse": {
      "type": "structure",
      "members": {
        "Device": {
          "shape": "Device",
          "documentation": "<p>Information about the device.</p>"
        }
      }
    },
    "DeleteGlobalNetworkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        }
      }
    },
    "DeleteGlobalNetworkResponse": {
      "type": "structure",
      "members": {
        "GlobalNetwork": {
          "shape": "GlobalNetwork",
          "documentation": "<p>Information about the global network.</p>"
        }
      }
    },
    "DeleteLinkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "LinkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>",
          "location": "uri",
          "locationName": "linkId"
        }
      }
    },
    "DeleteLinkResponse": {
      "type": "structure",
      "members": {
        "Link": {
          "shape": "Link",
          "documentation": "<p>Information about the link.</p>"
        }
      }
    },
    "DeleteSiteRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "SiteId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>",
          "location": "uri",
          "locationName": "siteId"
        }
      }
    },
    "DeleteSiteResponse": {
      "type": "structure",
      "members": {
        "Site": {
          "shape": "Site",
          "documentation": "<p>Information about the site.</p>"
        }
      }
    },
    "DeregisterTransitGatewayRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "TransitGatewayArn"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "TransitGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the transit gateway.</p>",
          "location": "uri",
          "locationName": "transitGatewayArn"
        }
      }
    },
    "DeregisterTransitGatewayResponse": {
      "type": "structure",
      "members": {
        "TransitGatewayRegistration": {
          "shape": "TransitGatewayRegistration",
          "documentation": "<p>The transit gateway registration information.</p>"
        }
      }
    },
    "DescribeGlobalNetworksRequest": {
      "type": "structure",
      "members": {
        "GlobalNetworkIds": {
          "shape": "StringList",
          "documentation": "<p>The IDs of one or more global networks. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "globalNetworkIds"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "DescribeGlobalNetworksResponse": {
      "type": "structure",
      "members": {
        "GlobalNetworks": {
          "shape": "GlobalNetworkList",
          "documentation": "<p>Information about the global networks.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "Device": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>"
        },
        "DeviceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the device.</p>"
        },
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the device.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The device type.</p>"
        },
        "Vendor": {
          "shape": "String",
          "documentation": "<p>The device vendor.</p>"
        },
        "Model": {
          "shape": "String",
          "documentation": "<p>The device model.</p>"
        },
        "SerialNumber": {
          "shape": "String",
          "documentation": "<p>The device serial number.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The site location.</p>"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The site ID.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The date and time that the site was created.</p>"
        },
        "State": {
          "shape": "DeviceState",
          "documentation": "<p>The device state.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the device.</p>"
        }
      },
      "documentation": "<p>Describes a device.</p>"
    },
    "DeviceList": {
      "type": "list",
      "member": {
        "shape": "Device"
      }
    },
    "DeviceState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "UPDATING"
      ]
    },
    "DisassociateCustomerGatewayRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "CustomerGatewayArn"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "CustomerGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the customer gateway. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>",
          "location": "uri",
          "locationName": "customerGatewayArn"
        }
      }
    },
    "DisassociateCustomerGatewayResponse": {
      "type": "structure",
      "members": {
        "CustomerGatewayAssociation": {
          "shape": "CustomerGatewayAssociation",
          "documentation": "<p>Information about the customer gateway association.</p>"
        }
      }
    },
    "DisassociateLinkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "DeviceId",
        "LinkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>",
          "location": "querystring",
          "locationName": "deviceId"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>",
          "location": "querystring",
          "locationName": "linkId"
        }
      }
    },
    "DisassociateLinkResponse": {
      "type": "structure",
      "members": {
        "LinkAssociation": {
          "shape": "LinkAssociation",
          "documentation": "<p>Information about the link association.</p>"
        }
      }
    },
    "GetCustomerGatewayAssociationsRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "CustomerGatewayArns": {
          "shape": "StringList",
          "documentation": "<p>One or more customer gateway Amazon Resource Names (ARNs). For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "customerGatewayArns"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetCustomerGatewayAssociationsResponse": {
      "type": "structure",
      "members": {
        "CustomerGatewayAssociations": {
          "shape": "CustomerGatewayAssociationList",
          "documentation": "<p>The customer gateway associations.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GetDevicesRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceIds": {
          "shape": "StringList",
          "documentation": "<p>One or more device IDs. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "deviceIds"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>",
          "location": "querystring",
          "locationName": "siteId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetDevicesResponse": {
      "type": "structure",
      "members": {
        "Devices": {
          "shape": "DeviceList",
          "documentation": "<p>The devices.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GetLinkAssociationsRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>",
          "location": "querystring",
          "locationName": "deviceId"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>",
          "location": "querystring",
          "locationName": "linkId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetLinkAssociationsResponse": {
      "type": "structure",
      "members": {
        "LinkAssociations": {
          "shape": "LinkAssociationList",
          "documentation": "<p>The link associations.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GetLinksRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "LinkIds": {
          "shape": "StringList",
          "documentation": "<p>One or more link IDs. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "linkIds"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>",
          "location": "querystring",
          "locationName": "siteId"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The link type.</p>",
          "location": "querystring",
          "locationName": "type"
        },
        "Provider": {
          "shape": "String",
          "documentation": "<p>The link provider.</p>",
          "location": "querystring",
          "locationName": "provider"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetLinksResponse": {
      "type": "structure",
      "members": {
        "Links": {
          "shape": "LinkList",
          "documentation": "<p>The links.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GetSitesRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "SiteIds": {
          "shape": "StringList",
          "documentation": "<p>One or more site IDs. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "siteIds"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetSitesResponse": {
      "type": "structure",
      "members": {
        "Sites": {
          "shape": "SiteList",
          "documentation": "<p>The sites.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GetTransitGatewayRegistrationsRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "TransitGatewayArns": {
          "shape": "StringList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is 10.</p>",
          "location": "querystring",
          "locationName": "transitGatewayArns"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "GetTransitGatewayRegistrationsResponse": {
      "type": "structure",
      "members": {
        "TransitGatewayRegistrations": {
          "shape": "TransitGatewayRegistrationList",
          "documentation": "<p>The transit gateway registrations.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "GlobalNetwork": {
      "type": "structure",
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "GlobalNetworkArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the global network.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the global network.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The date and time that the global network was created.</p>"
        },
        "State": {
          "shape": "GlobalNetworkState",
          "documentation": "<p>The state of the global network.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the global network.</p>"
        }
      },
      "documentation": "<p>Describes a global network.</p>"
    },
    "GlobalNetworkList": {
      "type": "list",
      "member": {
        "shape": "GlobalNetwork"
      }
    },
    "GlobalNetworkState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "UPDATING"
      ]
    },
    "Integer": {
      "type": "integer"
    },
    "Link": {
      "type": "structure",
      "members": {
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>"
        },
        "LinkArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the link.</p>"
        },
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the link.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the link.</p>"
        },
        "Bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth for the link.</p>"
        },
        "Provider": {
          "shape": "String",
          "documentation": "<p>The provider of the link.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The date and time that the link was created.</p>"
        },
        "State": {
          "shape": "LinkState",
          "documentation": "<p>The state of the link.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the link.</p>"
        }
      },
      "documentation": "<p>Describes a link.</p>"
    },
    "LinkAssociation": {
      "type": "structure",
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The device ID for the link association.</p>"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>"
        },
        "LinkAssociationState": {
          "shape": "LinkAssociationState",
          "documentation": "<p>The state of the association.</p>"
        }
      },
      "documentation": "<p>Describes the association between a device and a link.</p>"
    },
    "LinkAssociationList": {
      "type": "list",
      "member": {
        "shape": "LinkAssociation"
      }
    },
    "LinkAssociationState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "DELETED"
      ]
    },
    "LinkList": {
      "type": "list",
      "member": {
        "shape": "Link"
      }
    },
    "LinkState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "UPDATING"
      ]
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags.</p>"
        }
      }
    },
    "Location": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String",
          "documentation": "<p>The physical address.</p>"
        },
        "Latitude": {
          "shape": "String",
          "documentation": "<p>The latitude.</p>"
        },
        "Longitude": {
          "shape": "String",
          "documentation": "<p>The longitude.</p>"
        }
      },
      "documentation": "<p>Describes a location.</p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 500,
      "min": 1
    },
    "RegisterTransitGatewayRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "TransitGatewayArn"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "TransitGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the transit gateway. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>"
        }
      }
    },
    "RegisterTransitGatewayResponse": {
      "type": "structure",
      "members": {
        "TransitGatewayRegistration": {
          "shape": "TransitGatewayRegistration",
          "documentation": "<p>Information about the transit gateway registration.</p>"
        }
      }
    },
    "ResourceARN": {
      "type": "string"
    },
    "Site": {
      "type": "structure",
      "members": {
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>"
        },
        "SiteArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the site.</p>"
        },
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the site.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The location of the site.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The date and time that the site was created.</p>"
        },
        "State": {
          "shape": "SiteState",
          "documentation": "<p>The state of the site.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the site.</p>"
        }
      },
      "documentation": "<p>Describes a site.</p>"
    },
    "SiteList": {
      "type": "list",
      "member": {
        "shape": "Site"
      }
    },
    "SiteState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "UPDATING"
      ]
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The tag key.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The tag value.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        }
      },
      "documentation": "<p>Describes a tag.</p>"
    },
    "TagKey": {
      "type": "string"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to apply to the specified resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string"
    },
    "TransitGatewayRegistration": {
      "type": "structure",
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>"
        },
        "TransitGatewayArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the transit gateway.</p>"
        },
        "State": {
          "shape": "TransitGatewayRegistrationStateReason",
          "documentation": "<p>The state of the transit gateway registration.</p>"
        }
      },
      "documentation": "<p>Describes the registration of a transit gateway to a global network.</p>"
    },
    "TransitGatewayRegistrationList": {
      "type": "list",
      "member": {
        "shape": "TransitGatewayRegistration"
      }
    },
    "TransitGatewayRegistrationState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "DELETED",
        "FAILED"
      ]
    },
    "TransitGatewayRegistrationStateReason": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "TransitGatewayRegistrationState",
          "documentation": "<p>The code for the state reason.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The message for the state reason.</p>"
        }
      },
      "documentation": "<p>Describes the status of a transit gateway registration.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys to remove from the specified resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDeviceRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "DeviceId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "DeviceId": {
          "shape": "String",
          "documentation": "<p>The ID of the device.</p>",
          "location": "uri",
          "locationName": "deviceId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the device.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the device.</p>"
        },
        "Vendor": {
          "shape": "String",
          "documentation": "<p>The vendor of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Model": {
          "shape": "String",
          "documentation": "<p>The model of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "SerialNumber": {
          "shape": "String",
          "documentation": "<p>The serial number of the device.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Location": {
          "shape": "Location"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of the site.</p>"
        }
      }
    },
    "UpdateDeviceResponse": {
      "type": "structure",
      "members": {
        "Device": {
          "shape": "Device",
          "documentation": "<p>Information about the device.</p>"
        }
      }
    },
    "UpdateGlobalNetworkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of your global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the global network.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        }
      }
    },
    "UpdateGlobalNetworkResponse": {
      "type": "structure",
      "members": {
        "GlobalNetwork": {
          "shape": "GlobalNetwork",
          "documentation": "<p>Information about the global network object.</p>"
        }
      }
    },
    "UpdateLinkRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "LinkId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "LinkId": {
          "shape": "String",
          "documentation": "<p>The ID of the link.</p>",
          "location": "uri",
          "locationName": "linkId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the link.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the link.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        },
        "Bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The upload and download speed in Mbps. </p>"
        },
        "Provider": {
          "shape": "String",
          "documentation": "<p>The provider of the link.</p> <p>Length Constraints: Maximum length of 128 characters.</p>"
        }
      }
    },
    "UpdateLinkResponse": {
      "type": "structure",
      "members": {
        "Link": {
          "shape": "Link",
          "documentation": "<p>Information about the link.</p>"
        }
      }
    },
    "UpdateSiteRequest": {
      "type": "structure",
      "required": [
        "GlobalNetworkId",
        "SiteId"
      ],
      "members": {
        "GlobalNetworkId": {
          "shape": "String",
          "documentation": "<p>The ID of the global network.</p>",
          "location": "uri",
          "locationName": "globalNetworkId"
        },
        "SiteId": {
          "shape": "String",
          "documentation": "<p>The ID of your site.</p>",
          "location": "uri",
          "locationName": "siteId"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of your site.</p> <p>Length Constraints: Maximum length of 256 characters.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The site location:</p> <ul> <li> <p> <code>Address</code>: The physical address of the site.</p> </li> <li> <p> <code>Latitude</code>: The latitude of the site. </p> </li> <li> <p> <code>Longitude</code>: The longitude of the site.</p> </li> </ul>"
        }
      }
    },
    "UpdateSiteResponse": {
      "type": "structure",
      "members": {
        "Site": {
          "shape": "Site",
          "documentation": "<p>Information about the site.</p>"
        }
      }
    }
  },
  "documentation": "<p>Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your AWS and on-premises networks that are built around transit gateways.</p>"
}
]===]))