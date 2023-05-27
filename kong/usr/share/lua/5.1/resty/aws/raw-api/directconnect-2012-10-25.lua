local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2012-10-25",
    "endpointPrefix": "directconnect",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Direct Connect",
    "serviceId": "Direct Connect",
    "signatureVersion": "v4",
    "targetPrefix": "OvertureService",
    "uid": "directconnect-2012-10-25"
  },
  "operations": {
    "AcceptDirectConnectGatewayAssociationProposal": {
      "name": "AcceptDirectConnectGatewayAssociationProposal",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptDirectConnectGatewayAssociationProposalRequest"
      },
      "output": {
        "shape": "AcceptDirectConnectGatewayAssociationProposalResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway.</p>"
    },
    "AllocateConnectionOnInterconnect": {
      "name": "AllocateConnectionOnInterconnect",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AllocateConnectionOnInterconnectRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deprecated. Use <a>AllocateHostedConnection</a> instead.</p> <p>Creates a hosted connection on an interconnect.</p> <p>Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>",
      "deprecated": true
    },
    "AllocateHostedConnection": {
      "name": "AllocateHostedConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AllocateHostedConnectionRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.</p> <p>Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects. AWS polices the hosted connection for the specified capacity and the AWS Direct Connect Partner must also police the hosted connection for the specified capacity.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>"
    },
    "AllocatePrivateVirtualInterface": {
      "name": "AllocatePrivateVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AllocatePrivateVirtualInterfaceRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Provisions a private virtual interface to be owned by the specified AWS account.</p> <p>Virtual interfaces created using this action must be confirmed by the owner using <a>ConfirmPrivateVirtualInterface</a>. Until then, the virtual interface is in the <code>Confirming</code> state and is not available to handle traffic.</p>"
    },
    "AllocatePublicVirtualInterface": {
      "name": "AllocatePublicVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AllocatePublicVirtualInterfaceRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Provisions a public virtual interface to be owned by the specified AWS account.</p> <p>The owner of a connection calls this function to provision a public virtual interface to be owned by the specified AWS account.</p> <p>Virtual interfaces created using this function must be confirmed by the owner using <a>ConfirmPublicVirtualInterface</a>. Until this step has been completed, the virtual interface is in the <code>confirming</code> state and is not available to handle traffic.</p> <p>When creating an IPv6 public virtual interface, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>"
    },
    "AllocateTransitVirtualInterface": {
      "name": "AllocateTransitVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AllocateTransitVirtualInterfaceRequest"
      },
      "output": {
        "shape": "AllocateTransitVirtualInterfaceResult"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Provisions a transit virtual interface to be owned by the specified AWS account. Use this type of interface to connect a transit gateway to your Direct Connect gateway.</p> <p>The owner of a connection provisions a transit virtual interface to be owned by the specified AWS account.</p> <p>After you create a transit virtual interface, it must be confirmed by the owner using <a>ConfirmTransitVirtualInterface</a>. Until this step has been completed, the transit virtual interface is in the <code>requested</code> state and is not available to handle traffic.</p>"
    },
    "AssociateConnectionWithLag": {
      "name": "AssociateConnectionWithLag",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateConnectionWithLagRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Associates an existing connection with a link aggregation group (LAG). The connection is interrupted and re-established as a member of the LAG (connectivity to AWS is interrupted). The connection must be hosted on the same AWS Direct Connect endpoint as the LAG, and its bandwidth must match the bandwidth for the LAG. You can re-associate a connection that's currently associated with a different LAG; however, if removing the connection would cause the original LAG to fall below its setting for minimum number of operational connections, the request fails.</p> <p>Any virtual interfaces that are directly associated with the connection are automatically re-associated with the LAG. If the connection was originally associated with a different LAG, the virtual interfaces remain associated with the original LAG.</p> <p>For interconnects, any hosted connections are automatically re-associated with the LAG. If the interconnect was originally associated with a different LAG, the hosted connections remain associated with the original LAG.</p>"
    },
    "AssociateHostedConnection": {
      "name": "AssociateHostedConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateHostedConnectionRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>"
    },
    "AssociateVirtualInterface": {
      "name": "AssociateVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateVirtualInterfaceRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.</p> <p>Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using <a>AssociateHostedConnection</a>.</p> <p>To reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG for the association.</p>"
    },
    "ConfirmConnection": {
      "name": "ConfirmConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ConfirmConnectionRequest"
      },
      "output": {
        "shape": "ConfirmConnectionResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Confirms the creation of the specified hosted connection on an interconnect.</p> <p>Upon creation, the hosted connection is initially in the <code>Ordering</code> state, and remains in this state until the owner confirms creation of the hosted connection.</p>"
    },
    "ConfirmPrivateVirtualInterface": {
      "name": "ConfirmPrivateVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ConfirmPrivateVirtualInterfaceRequest"
      },
      "output": {
        "shape": "ConfirmPrivateVirtualInterfaceResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Accepts ownership of a private virtual interface created by another AWS account.</p> <p>After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.</p>"
    },
    "ConfirmPublicVirtualInterface": {
      "name": "ConfirmPublicVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ConfirmPublicVirtualInterfaceRequest"
      },
      "output": {
        "shape": "ConfirmPublicVirtualInterfaceResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Accepts ownership of a public virtual interface created by another AWS account.</p> <p>After the virtual interface owner makes this call, the specified virtual interface is created and made available to handle traffic.</p>"
    },
    "ConfirmTransitVirtualInterface": {
      "name": "ConfirmTransitVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ConfirmTransitVirtualInterfaceRequest"
      },
      "output": {
        "shape": "ConfirmTransitVirtualInterfaceResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Accepts ownership of a transit virtual interface created by another AWS account.</p> <p> After the owner of the transit virtual interface makes this call, the specified transit virtual interface is created and made available to handle traffic.</p>"
    },
    "CreateBGPPeer": {
      "name": "CreateBGPPeer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBGPPeerRequest"
      },
      "output": {
        "shape": "CreateBGPPeerResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a BGP peer on the specified virtual interface.</p> <p>You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to access AWS resources that also use that address family.</p> <p>If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot be in the same address family as an existing BGP peer on the virtual interface.</p> <p>When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p> <p>For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.</p>"
    },
    "CreateConnection": {
      "name": "CreateConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConnectionRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a connection between a customer network and a specific AWS Direct Connect location.</p> <p>A connection links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router.</p> <p>To find the locations for your Region, use <a>DescribeLocations</a>.</p> <p>You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection is created.</p>"
    },
    "CreateDirectConnectGateway": {
      "name": "CreateDirectConnectGateway",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDirectConnectGatewayRequest"
      },
      "output": {
        "shape": "CreateDirectConnectGatewayResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways. A Direct Connect gateway is global and visible in any AWS Region after it is created. The virtual interfaces and virtual private gateways that are connected through a Direct Connect gateway can be in different AWS Regions. This enables you to connect to a VPC in any Region, regardless of the Region in which the virtual interfaces are located, and pass traffic between them.</p>"
    },
    "CreateDirectConnectGatewayAssociation": {
      "name": "CreateDirectConnectGatewayAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDirectConnectGatewayAssociationRequest"
      },
      "output": {
        "shape": "CreateDirectConnectGatewayAssociationResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates an association between a Direct Connect gateway and a virtual private gateway. The virtual private gateway must be attached to a VPC and must not be associated with another Direct Connect gateway.</p>"
    },
    "CreateDirectConnectGatewayAssociationProposal": {
      "name": "CreateDirectConnectGatewayAssociationProposal",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDirectConnectGatewayAssociationProposalRequest"
      },
      "output": {
        "shape": "CreateDirectConnectGatewayAssociationProposalResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway.</p> <p>You can associate a Direct Connect gateway and virtual private gateway or transit gateway that is owned by any AWS account. </p>"
    },
    "CreateInterconnect": {
      "name": "CreateInterconnect",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateInterconnectRequest"
      },
      "output": {
        "shape": "Interconnect"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates an interconnect between an AWS Direct Connect Partner's network and a specific AWS Direct Connect location.</p> <p>An interconnect is a connection that is capable of hosting other connections. The AWS Direct Connect partner can use an interconnect to provide AWS Direct Connect hosted connections to customers through their own network services. Like a standard connection, an interconnect links the partner's network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router.</p> <p>You can automatically add the new interconnect to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new interconnect is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no interconnect is created.</p> <p>For each end customer, the AWS Direct Connect Partner provisions a connection on their interconnect by calling <a>AllocateHostedConnection</a>. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the AWS Direct Connect Partner.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>"
    },
    "CreateLag": {
      "name": "CreateLag",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLagRequest"
      },
      "output": {
        "shape": "Lag"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location. A LAG is a logical interface that uses the Link Aggregation Control Protocol (LACP) to aggregate multiple interfaces, enabling you to treat them as a single interface.</p> <p>All connections in a LAG must use the same bandwidth and must terminate at the same AWS Direct Connect endpoint.</p> <p>You can have up to 10 connections per LAG. Regardless of this limit, if you request more connections for the LAG than AWS Direct Connect can allocate on a single endpoint, no LAG is created.</p> <p>You can specify an existing physical connection or interconnect to include in the LAG (which counts towards the total number of connections). Doing so interrupts the current physical connection or hosted connections, and re-establishes them as a member of the LAG. The LAG will be created on the same AWS Direct Connect endpoint to which the connection terminates. Any virtual interfaces associated with the connection are automatically disassociated and re-associated with the LAG. The connection ID does not change.</p> <p>If the AWS account used to create a LAG is a registered AWS Direct Connect Partner, the LAG is automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual interfaces cannot be directly configured.</p>"
    },
    "CreatePrivateVirtualInterface": {
      "name": "CreatePrivateVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePrivateVirtualInterfaceRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface can be connected to either a Direct Connect gateway or a Virtual Private Gateway (VGW). Connecting the private virtual interface to a Direct Connect gateway enables the possibility for connecting to multiple VPCs, including VPCs in different AWS Regions. Connecting the private virtual interface to a VGW only provides access to a single VPC within the same Region.</p> <p>Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to the underlying physical connection if it wasn't updated to support jumbo frames. Updating the connection disrupts network connectivity for all virtual interfaces associated with the connection for up to 30 seconds. To check whether your connection supports jumbo frames, call <a>DescribeConnections</a>. To check whether your virtual interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>"
    },
    "CreatePublicVirtualInterface": {
      "name": "CreatePublicVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePublicVirtualInterfaceRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon S3.</p> <p>When creating an IPv6 public virtual interface (<code>addressFamily</code> is <code>ipv6</code>), leave the <code>customer</code> and <code>amazon</code> address fields blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.</p>"
    },
    "CreateTransitVirtualInterface": {
      "name": "CreateTransitVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTransitVirtualInterfaceRequest"
      },
      "output": {
        "shape": "CreateTransitVirtualInterfaceResult"
      },
      "errors": [
        {
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Creates a transit virtual interface. A transit virtual interface should be used to access one or more transit gateways associated with Direct Connect gateways. A transit virtual interface enables the connection of multiple VPCs attached to a transit gateway to a Direct Connect gateway.</p> <important> <p>If you associate your transit gateway with one or more Direct Connect gateways, the Autonomous System Number (ASN) used by the transit gateway and the Direct Connect gateway must be different. For example, if you use the default ASN 64512 for both your the transit gateway and Direct Connect gateway, the association request fails.</p> </important> <p>Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an update to the underlying physical connection if it wasn't updated to support jumbo frames. Updating the connection disrupts network connectivity for all virtual interfaces associated with the connection for up to 30 seconds. To check whether your connection supports jumbo frames, call <a>DescribeConnections</a>. To check whether your virtual interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>"
    },
    "DeleteBGPPeer": {
      "name": "DeleteBGPPeer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBGPPeerRequest"
      },
      "output": {
        "shape": "DeleteBGPPeerResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN.</p> <p>You cannot delete the last BGP peer from a virtual interface.</p>"
    },
    "DeleteConnection": {
      "name": "DeleteConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConnectionRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the specified connection.</p> <p>Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. If you are partnering with any third parties to connect with the AWS Direct Connect location, you must cancel your service with them separately.</p>"
    },
    "DeleteDirectConnectGateway": {
      "name": "DeleteDirectConnectGateway",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDirectConnectGatewayRequest"
      },
      "output": {
        "shape": "DeleteDirectConnectGatewayResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are attached to the Direct Connect gateway and disassociate all virtual private gateways associated with the Direct Connect gateway.</p>"
    },
    "DeleteDirectConnectGatewayAssociation": {
      "name": "DeleteDirectConnectGatewayAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDirectConnectGatewayAssociationRequest"
      },
      "output": {
        "shape": "DeleteDirectConnectGatewayAssociationResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the association between the specified Direct Connect gateway and virtual private gateway.</p> <p>We recommend that you specify the <code>associationID</code> to delete the association. Alternatively, if you own virtual gateway and a Direct Connect gateway association, you can specify the <code>virtualGatewayId</code> and <code>directConnectGatewayId</code> to delete an association.</p>"
    },
    "DeleteDirectConnectGatewayAssociationProposal": {
      "name": "DeleteDirectConnectGatewayAssociationProposal",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDirectConnectGatewayAssociationProposalRequest"
      },
      "output": {
        "shape": "DeleteDirectConnectGatewayAssociationProposalResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway.</p>"
    },
    "DeleteInterconnect": {
      "name": "DeleteInterconnect",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInterconnectRequest"
      },
      "output": {
        "shape": "DeleteInterconnectResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>"
    },
    "DeleteLag": {
      "name": "DeleteLag",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLagRequest"
      },
      "output": {
        "shape": "Lag"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.</p>"
    },
    "DeleteVirtualInterface": {
      "name": "DeleteVirtualInterface",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteVirtualInterfaceRequest"
      },
      "output": {
        "shape": "DeleteVirtualInterfaceResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deletes a virtual interface.</p>"
    },
    "DescribeConnectionLoa": {
      "name": "DescribeConnectionLoa",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionLoaRequest"
      },
      "output": {
        "shape": "DescribeConnectionLoaResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deprecated. Use <a>DescribeLoa</a> instead.</p> <p>Gets the LOA-CFA for a connection.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html\">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>",
      "deprecated": true
    },
    "DescribeConnections": {
      "name": "DescribeConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionsRequest"
      },
      "output": {
        "shape": "Connections"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Displays the specified connection or all connections in this Region.</p>"
    },
    "DescribeConnectionsOnInterconnect": {
      "name": "DescribeConnectionsOnInterconnect",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionsOnInterconnectRequest"
      },
      "output": {
        "shape": "Connections"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deprecated. Use <a>DescribeHostedConnections</a> instead.</p> <p>Lists the connections that have been provisioned on the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>",
      "deprecated": true
    },
    "DescribeDirectConnectGatewayAssociationProposals": {
      "name": "DescribeDirectConnectGatewayAssociationProposals",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDirectConnectGatewayAssociationProposalsRequest"
      },
      "output": {
        "shape": "DescribeDirectConnectGatewayAssociationProposalsResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway. </p>"
    },
    "DescribeDirectConnectGatewayAssociations": {
      "name": "DescribeDirectConnectGatewayAssociations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDirectConnectGatewayAssociationsRequest"
      },
      "output": {
        "shape": "DescribeDirectConnectGatewayAssociationsResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the associations between your Direct Connect gateways and virtual private gateways. You must specify a Direct Connect gateway, a virtual private gateway, or both. If you specify a Direct Connect gateway, the response contains all virtual private gateways associated with the Direct Connect gateway. If you specify a virtual private gateway, the response contains all Direct Connect gateways associated with the virtual private gateway. If you specify both, the response contains the association between the Direct Connect gateway and the virtual private gateway.</p>"
    },
    "DescribeDirectConnectGatewayAttachments": {
      "name": "DescribeDirectConnectGatewayAttachments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDirectConnectGatewayAttachmentsRequest"
      },
      "output": {
        "shape": "DescribeDirectConnectGatewayAttachmentsResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the response contains all Direct Connect gateways attached to the virtual interface. If you specify both, the response contains the attachment between the Direct Connect gateway and the virtual interface.</p>"
    },
    "DescribeDirectConnectGateways": {
      "name": "DescribeDirectConnectGateways",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDirectConnectGatewaysRequest"
      },
      "output": {
        "shape": "DescribeDirectConnectGatewaysResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.</p>"
    },
    "DescribeHostedConnections": {
      "name": "DescribeHostedConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeHostedConnectionsRequest"
      },
      "output": {
        "shape": "Connections"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the hosted connections that have been provisioned on the specified interconnect or link aggregation group (LAG).</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>"
    },
    "DescribeInterconnectLoa": {
      "name": "DescribeInterconnectLoa",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInterconnectLoaRequest"
      },
      "output": {
        "shape": "DescribeInterconnectLoaResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Deprecated. Use <a>DescribeLoa</a> instead.</p> <p>Gets the LOA-CFA for the specified interconnect.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html\">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>",
      "deprecated": true
    },
    "DescribeInterconnects": {
      "name": "DescribeInterconnects",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInterconnectsRequest"
      },
      "output": {
        "shape": "Interconnects"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the interconnects owned by the AWS account or only the specified interconnect.</p>"
    },
    "DescribeLags": {
      "name": "DescribeLags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLagsRequest"
      },
      "output": {
        "shape": "Lags"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Describes all your link aggregation groups (LAG) or the specified LAG.</p>"
    },
    "DescribeLoa": {
      "name": "DescribeLoa",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLoaRequest"
      },
      "output": {
        "shape": "Loa"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html\">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>"
    },
    "DescribeLocations": {
      "name": "DescribeLocations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "Locations"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the AWS Direct Connect locations in the current AWS Region. These are the locations that can be selected when calling <a>CreateConnection</a> or <a>CreateInterconnect</a>.</p>"
    },
    "DescribeTags": {
      "name": "DescribeTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTagsRequest"
      },
      "output": {
        "shape": "DescribeTagsResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Describes the tags associated with the specified AWS Direct Connect resources.</p>"
    },
    "DescribeVirtualGateways": {
      "name": "DescribeVirtualGateways",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "VirtualGateways"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the virtual private gateways owned by the AWS account.</p> <p>You can create one or more AWS Direct Connect private virtual interfaces linked to a virtual private gateway.</p>"
    },
    "DescribeVirtualInterfaces": {
      "name": "DescribeVirtualInterfaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeVirtualInterfacesRequest"
      },
      "output": {
        "shape": "VirtualInterfaces"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned.</p> <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer network.</p>"
    },
    "DisassociateConnectionFromLag": {
      "name": "DisassociateConnectionFromLag",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateConnectionFromLagRequest"
      },
      "output": {
        "shape": "Connection"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Disassociates a connection from a link aggregation group (LAG). The connection is interrupted and re-established as a standalone connection (the connection is not deleted; to delete the connection, use the <a>DeleteConnection</a> request). If the LAG has associated virtual interfaces or hosted connections, they remain associated with the LAG. A disassociated connection owned by an AWS Direct Connect Partner is automatically converted to an interconnect.</p> <p>If disassociating the connection would cause the LAG to fall below its setting for minimum number of operational connections, the request fails, except when it's the last member of the LAG. If all connections are disassociated, the LAG continues to exist as an empty LAG with no physical connections. </p>"
    },
    "ListVirtualInterfaceTestHistory": {
      "name": "ListVirtualInterfaceTestHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListVirtualInterfaceTestHistoryRequest"
      },
      "output": {
        "shape": "ListVirtualInterfaceTestHistoryResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Lists the virtual interface failover test history.</p>"
    },
    "StartBgpFailoverTest": {
      "name": "StartBgpFailoverTest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartBgpFailoverTestRequest"
      },
      "output": {
        "shape": "StartBgpFailoverTestResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Starts the virtual interface failover test that verifies your configuration meets your resiliency requirements by placing the BGP peering session in the DOWN state. You can then send traffic to verify that there are no outages.</p> <p>You can run the test on public, private, transit, and hosted virtual interfaces.</p> <p>You can use <a href=\"https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html\">ListVirtualInterfaceTestHistory</a> to view the virtual interface test history.</p> <p>If you need to stop the test before the test interval completes, use <a href=\"https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html\">StopBgpFailoverTest</a>.</p>"
    },
    "StopBgpFailoverTest": {
      "name": "StopBgpFailoverTest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopBgpFailoverTestRequest"
      },
      "output": {
        "shape": "StopBgpFailoverTestResponse"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Stops the virtual interface failover test.</p>"
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
          "shape": "DuplicateTagKeysException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Adds the specified tags to the specified AWS Direct Connect resource. Each resource can have a maximum of 50 tags.</p> <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>"
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
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Removes one or more tags from the specified AWS Direct Connect resource.</p>"
    },
    "UpdateDirectConnectGatewayAssociation": {
      "name": "UpdateDirectConnectGatewayAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDirectConnectGatewayAssociationRequest"
      },
      "output": {
        "shape": "UpdateDirectConnectGatewayAssociationResult"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Updates the specified attributes of the Direct Connect gateway association.</p> <p>Add or remove prefixes from the association.</p>"
    },
    "UpdateLag": {
      "name": "UpdateLag",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLagRequest"
      },
      "output": {
        "shape": "Lag"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Updates the attributes of the specified link aggregation group (LAG).</p> <p>You can update the following attributes:</p> <ul> <li> <p>The name of the LAG.</p> </li> <li> <p>The value for the minimum number of connections that must be operational for the LAG itself to be operational. </p> </li> </ul> <p>When you create a LAG, the default value for the minimum number of operational connections is zero (0). If you update this value and the number of operational connections falls below the specified value, the LAG automatically goes down to avoid over-utilization of the remaining connections. Adjust this value with care, as it could force the LAG down if it is set higher than the current number of operational connections.</p>"
    },
    "UpdateVirtualInterfaceAttributes": {
      "name": "UpdateVirtualInterfaceAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateVirtualInterfaceAttributesRequest"
      },
      "output": {
        "shape": "VirtualInterface"
      },
      "errors": [
        {
          "shape": "DirectConnectServerException"
        },
        {
          "shape": "DirectConnectClientException"
        }
      ],
      "documentation": "<p>Updates the specified attributes of the specified virtual private interface.</p> <p>Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to the underlying physical connection if it wasn't updated to support jumbo frames. Updating the connection disrupts network connectivity for all virtual interfaces associated with the connection for up to 30 seconds. To check whether your connection supports jumbo frames, call <a>DescribeConnections</a>. To check whether your virtual q interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>"
    }
  },
  "shapes": {
    "ASN": {
      "type": "integer"
    },
    "AcceptDirectConnectGatewayAssociationProposalRequest": {
      "type": "structure",
      "required": [
        "directConnectGatewayId",
        "proposalId",
        "associatedGatewayOwnerAccount"
      ],
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "proposalId": {
          "shape": "DirectConnectGatewayAssociationProposalId",
          "documentation": "<p>The ID of the request proposal.</p>"
        },
        "associatedGatewayOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the virtual private gateway or transit gateway.</p>"
        },
        "overrideAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p> <p>For information about how to set the prefixes, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes\">Allowed Prefixes</a> in the <i>AWS Direct Connect User Guide</i>.</p>"
        }
      }
    },
    "AcceptDirectConnectGatewayAssociationProposalResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociation": {
          "shape": "DirectConnectGatewayAssociation"
        }
      }
    },
    "AddressFamily": {
      "type": "string",
      "enum": [
        "ipv4",
        "ipv6"
      ]
    },
    "AllocateConnectionOnInterconnectRequest": {
      "type": "structure",
      "required": [
        "bandwidth",
        "connectionName",
        "ownerAccount",
        "interconnectId",
        "vlan"
      ],
      "members": {
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>"
        },
        "connectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the provisioned connection.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account of the customer for whom the connection will be provisioned.</p>"
        },
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect on which the connection will be provisioned.</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The dedicated VLAN provisioned to the connection.</p>"
        }
      }
    },
    "AllocateHostedConnectionRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "ownerAccount",
        "bandwidth",
        "connectionName",
        "vlan"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the interconnect or LAG.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account ID of the customer for the connection.</p>"
        },
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those AWS Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection. </p>"
        },
        "connectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the hosted connection.</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The dedicated VLAN provisioned to the hosted connection.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the connection.</p>"
        }
      }
    },
    "AllocatePrivateVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "ownerAccount",
        "newPrivateVirtualInterfaceAllocation"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection on which the private virtual interface is provisioned.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the virtual private interface.</p>"
        },
        "newPrivateVirtualInterfaceAllocation": {
          "shape": "NewPrivateVirtualInterfaceAllocation",
          "documentation": "<p>Information about the private virtual interface.</p>"
        }
      }
    },
    "AllocatePublicVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "ownerAccount",
        "newPublicVirtualInterfaceAllocation"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection on which the public virtual interface is provisioned.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the public virtual interface.</p>"
        },
        "newPublicVirtualInterfaceAllocation": {
          "shape": "NewPublicVirtualInterfaceAllocation",
          "documentation": "<p>Information about the public virtual interface.</p>"
        }
      }
    },
    "AllocateTransitVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "ownerAccount",
        "newTransitVirtualInterfaceAllocation"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection on which the transit virtual interface is provisioned.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the transit virtual interface.</p>"
        },
        "newTransitVirtualInterfaceAllocation": {
          "shape": "NewTransitVirtualInterfaceAllocation",
          "documentation": "<p>Information about the transit virtual interface.</p>"
        }
      }
    },
    "AllocateTransitVirtualInterfaceResult": {
      "type": "structure",
      "members": {
        "virtualInterface": {
          "shape": "VirtualInterface"
        }
      }
    },
    "AmazonAddress": {
      "type": "string"
    },
    "AssociateConnectionWithLagRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "lagId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG with which to associate the connection.</p>"
        }
      }
    },
    "AssociateHostedConnectionRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "parentConnectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the hosted connection.</p>"
        },
        "parentConnectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the interconnect or the LAG.</p>"
        }
      }
    },
    "AssociateVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId",
        "connectionId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the LAG or connection.</p>"
        }
      }
    },
    "AssociatedGateway": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "GatewayIdentifier",
          "documentation": "<p>The ID of the associated gateway.</p>"
        },
        "type": {
          "shape": "GatewayType",
          "documentation": "<p>The type of associated gateway.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the associated virtual private gateway or transit gateway.</p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The Region where the associated gateway is located.</p>"
        }
      },
      "documentation": "<p>Information about the associated gateway.</p>"
    },
    "AssociatedGatewayId": {
      "type": "string"
    },
    "AvailablePortSpeeds": {
      "type": "list",
      "member": {
        "shape": "PortSpeed"
      }
    },
    "AwsDevice": {
      "type": "string",
      "deprecated": true
    },
    "AwsDeviceV2": {
      "type": "string"
    },
    "BGPAuthKey": {
      "type": "string"
    },
    "BGPPeer": {
      "type": "structure",
      "members": {
        "bgpPeerId": {
          "shape": "BGPPeerId",
          "documentation": "<p>The ID of the BGP peer.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "bgpPeerState": {
          "shape": "BGPPeerState",
          "documentation": "<p>The state of the BGP peer. The following are the possible values:</p> <ul> <li> <p> <code>verifying</code>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.</p> </li> <li> <p> <code>pending</code>: The BGP peer is created, and remains in this state until it is ready to be established.</p> </li> <li> <p> <code>available</code>: The BGP peer is ready to be established.</p> </li> <li> <p> <code>deleting</code>: The BGP peer is being deleted.</p> </li> <li> <p> <code>deleted</code>: The BGP peer is deleted and cannot be established.</p> </li> </ul>"
        },
        "bgpStatus": {
          "shape": "BGPStatus",
          "documentation": "<p>The status of the BGP peer. The following are the possible values:</p> <ul> <li> <p> <code>up</code>: The BGP peer is established. This state does not indicate the state of the routing function. Ensure that you are receiving routes over the BGP session.</p> </li> <li> <p> <code>down</code>: The BGP peer is down.</p> </li> <li> <p> <code>unknown</code>: The BGP peer status is not available.</p> </li> </ul>"
        },
        "awsDeviceV2": {
          "shape": "AwsDeviceV2",
          "documentation": "<p>The Direct Connect endpoint on which the BGP peer terminates.</p>"
        }
      },
      "documentation": "<p>Information about a BGP peer.</p>"
    },
    "BGPPeerId": {
      "type": "string"
    },
    "BGPPeerIdList": {
      "type": "list",
      "member": {
        "shape": "BGPPeerId"
      }
    },
    "BGPPeerList": {
      "type": "list",
      "member": {
        "shape": "BGPPeer"
      }
    },
    "BGPPeerState": {
      "type": "string",
      "enum": [
        "verifying",
        "pending",
        "available",
        "deleting",
        "deleted"
      ]
    },
    "BGPStatus": {
      "type": "string",
      "enum": [
        "up",
        "down",
        "unknown"
      ]
    },
    "Bandwidth": {
      "type": "string"
    },
    "BooleanFlag": {
      "type": "boolean"
    },
    "CIDR": {
      "type": "string"
    },
    "ConfirmConnectionRequest": {
      "type": "structure",
      "required": [
        "connectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the hosted connection.</p>"
        }
      }
    },
    "ConfirmConnectionResponse": {
      "type": "structure",
      "members": {
        "connectionState": {
          "shape": "ConnectionState",
          "documentation": "<p>The state of the connection. The following are the possible values:</p> <ul> <li> <p> <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The connection has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up and the connection is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p> </li> <li> <p> <code>unknown</code>: The state of the connection is not available.</p> </li> </ul>"
        }
      }
    },
    "ConfirmPrivateVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        }
      }
    },
    "ConfirmPrivateVirtualInterfaceResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceState": {
          "shape": "VirtualInterfaceState",
          "documentation": "<p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> <li> <p> <code>unknown</code>: The state of the virtual interface is not available.</p> </li> </ul>"
        }
      }
    },
    "ConfirmPublicVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        }
      }
    },
    "ConfirmPublicVirtualInterfaceResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceState": {
          "shape": "VirtualInterfaceState",
          "documentation": "<p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> <li> <p> <code>unknown</code>: The state of the virtual interface is not available.</p> </li> </ul>"
        }
      }
    },
    "ConfirmTransitVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId",
        "directConnectGatewayId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        }
      }
    },
    "ConfirmTransitVirtualInterfaceResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceState": {
          "shape": "VirtualInterfaceState",
          "documentation": "<p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> <li> <p> <code>unknown</code>: The state of the virtual interface is not available.</p> </li> </ul>"
        }
      }
    },
    "Connection": {
      "type": "structure",
      "members": {
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the connection.</p>"
        },
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "connectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the connection.</p>"
        },
        "connectionState": {
          "shape": "ConnectionState",
          "documentation": "<p>The state of the connection. The following are the possible values:</p> <ul> <li> <p> <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p> </li> <li> <p> <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The connection has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up and the connection is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The connection is being deleted.</p> </li> <li> <p> <code>deleted</code>: The connection has been deleted.</p> </li> <li> <p> <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p> </li> <li> <p> <code>unknown</code>: The state of the connection is not available.</p> </li> </ul>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region where the connection is located.</p>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the connection.</p>"
        },
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the connection.</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "partnerName": {
          "shape": "PartnerName",
          "documentation": "<p>The name of the AWS Direct Connect service provider associated with the connection.</p>"
        },
        "loaIssueTime": {
          "shape": "LoaIssueTime",
          "documentation": "<p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "awsDevice": {
          "shape": "AwsDevice",
          "documentation": "<p>The Direct Connect endpoint on which the physical connection terminates.</p>"
        },
        "jumboFrameCapable": {
          "shape": "JumboFrameCapable",
          "documentation": "<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>"
        },
        "awsDeviceV2": {
          "shape": "AwsDeviceV2",
          "documentation": "<p>The Direct Connect endpoint on which the physical connection terminates.</p>"
        },
        "hasLogicalRedundancy": {
          "shape": "HasLogicalRedundancy",
          "documentation": "<p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the connection.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the connection.</p>"
        }
      },
      "documentation": "<p>Information about an AWS Direct Connect connection.</p>"
    },
    "ConnectionId": {
      "type": "string"
    },
    "ConnectionList": {
      "type": "list",
      "member": {
        "shape": "Connection"
      }
    },
    "ConnectionName": {
      "type": "string"
    },
    "ConnectionState": {
      "type": "string",
      "enum": [
        "ordering",
        "requested",
        "pending",
        "available",
        "down",
        "deleting",
        "deleted",
        "rejected",
        "unknown"
      ]
    },
    "Connections": {
      "type": "structure",
      "members": {
        "connections": {
          "shape": "ConnectionList",
          "documentation": "<p>The connections.</p>"
        }
      }
    },
    "Count": {
      "type": "integer"
    },
    "CreateBGPPeerRequest": {
      "type": "structure",
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "newBGPPeer": {
          "shape": "NewBGPPeer",
          "documentation": "<p>Information about the BGP peer.</p>"
        }
      }
    },
    "CreateBGPPeerResponse": {
      "type": "structure",
      "members": {
        "virtualInterface": {
          "shape": "VirtualInterface",
          "documentation": "<p>The virtual interface.</p>"
        }
      }
    },
    "CreateConnectionRequest": {
      "type": "structure",
      "required": [
        "location",
        "bandwidth",
        "connectionName"
      ],
      "members": {
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the connection.</p>"
        },
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the connection.</p>"
        },
        "connectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the connection.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to associate with the lag.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the requested connection.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayAssociationProposalRequest": {
      "type": "structure",
      "required": [
        "directConnectGatewayId",
        "directConnectGatewayOwnerAccount",
        "gatewayId"
      ],
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "directConnectGatewayOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the Direct Connect gateway.</p>"
        },
        "gatewayId": {
          "shape": "GatewayIdToAssociate",
          "documentation": "<p>The ID of the virtual private gateway or transit gateway.</p>"
        },
        "addAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>"
        },
        "removeAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayAssociationProposalResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociationProposal": {
          "shape": "DirectConnectGatewayAssociationProposal",
          "documentation": "<p>Information about the Direct Connect gateway proposal.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayAssociationRequest": {
      "type": "structure",
      "required": [
        "directConnectGatewayId"
      ],
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "gatewayId": {
          "shape": "GatewayIdToAssociate",
          "documentation": "<p>The ID of the virtual private gateway or transit gateway.</p>"
        },
        "addAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p> <p>This parameter is required when you create an association to a transit gateway.</p> <p>For information about how to set the prefixes, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes\">Allowed Prefixes</a> in the <i>AWS Direct Connect User Guide</i>.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayAssociationResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociation": {
          "shape": "DirectConnectGatewayAssociation",
          "documentation": "<p>The association to be created.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayRequest": {
      "type": "structure",
      "required": [
        "directConnectGatewayName"
      ],
      "members": {
        "directConnectGatewayName": {
          "shape": "DirectConnectGatewayName",
          "documentation": "<p>The name of the Direct Connect gateway.</p>"
        },
        "amazonSideAsn": {
          "shape": "LongAsn",
          "documentation": "<p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>"
        }
      }
    },
    "CreateDirectConnectGatewayResult": {
      "type": "structure",
      "members": {
        "directConnectGateway": {
          "shape": "DirectConnectGateway",
          "documentation": "<p>The Direct Connect gateway.</p>"
        }
      }
    },
    "CreateInterconnectRequest": {
      "type": "structure",
      "required": [
        "interconnectName",
        "bandwidth",
        "location"
      ],
      "members": {
        "interconnectName": {
          "shape": "InterconnectName",
          "documentation": "<p>The name of the interconnect.</p>"
        },
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The port bandwidth, in Gbps. The possible values are 1 and 10.</p>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the interconnect.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to associate with the interconnect.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the interconnect.</p>"
        }
      }
    },
    "CreateLagRequest": {
      "type": "structure",
      "required": [
        "numberOfConnections",
        "location",
        "connectionsBandwidth",
        "lagName"
      ],
      "members": {
        "numberOfConnections": {
          "shape": "Count",
          "documentation": "<p>The number of physical connections initially provisioned and bundled by the LAG.</p>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location for the LAG.</p>"
        },
        "connectionsBandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the individual physical connections bundled by the LAG. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. </p>"
        },
        "lagName": {
          "shape": "LagName",
          "documentation": "<p>The name of the LAG.</p>"
        },
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of an existing connection to migrate to the LAG.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to associate with the LAG.</p>"
        },
        "childConnectionTags": {
          "shape": "TagList",
          "documentation": "<p>The tags to associate with the automtically created LAGs.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the LAG.</p>"
        }
      }
    },
    "CreatePrivateVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "newPrivateVirtualInterface"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "newPrivateVirtualInterface": {
          "shape": "NewPrivateVirtualInterface",
          "documentation": "<p>Information about the private virtual interface.</p>"
        }
      }
    },
    "CreatePublicVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "newPublicVirtualInterface"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "newPublicVirtualInterface": {
          "shape": "NewPublicVirtualInterface",
          "documentation": "<p>Information about the public virtual interface.</p>"
        }
      }
    },
    "CreateTransitVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "newTransitVirtualInterface"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "newTransitVirtualInterface": {
          "shape": "NewTransitVirtualInterface",
          "documentation": "<p>Information about the transit virtual interface.</p>"
        }
      }
    },
    "CreateTransitVirtualInterfaceResult": {
      "type": "structure",
      "members": {
        "virtualInterface": {
          "shape": "VirtualInterface"
        }
      }
    },
    "CustomerAddress": {
      "type": "string"
    },
    "DeleteBGPPeerRequest": {
      "type": "structure",
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "bgpPeerId": {
          "shape": "BGPPeerId",
          "documentation": "<p>The ID of the BGP peer.</p>"
        }
      }
    },
    "DeleteBGPPeerResponse": {
      "type": "structure",
      "members": {
        "virtualInterface": {
          "shape": "VirtualInterface",
          "documentation": "<p>The virtual interface.</p>"
        }
      }
    },
    "DeleteConnectionRequest": {
      "type": "structure",
      "required": [
        "connectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayAssociationProposalRequest": {
      "type": "structure",
      "required": [
        "proposalId"
      ],
      "members": {
        "proposalId": {
          "shape": "DirectConnectGatewayAssociationProposalId",
          "documentation": "<p>The ID of the proposal.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayAssociationProposalResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociationProposal": {
          "shape": "DirectConnectGatewayAssociationProposal",
          "documentation": "<p>The ID of the associated gateway.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayAssociationRequest": {
      "type": "structure",
      "members": {
        "associationId": {
          "shape": "DirectConnectGatewayAssociationId",
          "documentation": "<p>The ID of the Direct Connect gateway association.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayAssociationResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociation": {
          "shape": "DirectConnectGatewayAssociation",
          "documentation": "<p>Information about the deleted association.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayRequest": {
      "type": "structure",
      "required": [
        "directConnectGatewayId"
      ],
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        }
      }
    },
    "DeleteDirectConnectGatewayResult": {
      "type": "structure",
      "members": {
        "directConnectGateway": {
          "shape": "DirectConnectGateway",
          "documentation": "<p>The Direct Connect gateway.</p>"
        }
      }
    },
    "DeleteInterconnectRequest": {
      "type": "structure",
      "required": [
        "interconnectId"
      ],
      "members": {
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect.</p>"
        }
      }
    },
    "DeleteInterconnectResponse": {
      "type": "structure",
      "members": {
        "interconnectState": {
          "shape": "InterconnectState",
          "documentation": "<p>The state of the interconnect. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The interconnect is approved, and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The interconnect is being deleted.</p> </li> <li> <p> <code>deleted</code>: The interconnect is deleted.</p> </li> <li> <p> <code>unknown</code>: The state of the interconnect is not available.</p> </li> </ul>"
        }
      }
    },
    "DeleteLagRequest": {
      "type": "structure",
      "required": [
        "lagId"
      ],
      "members": {
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        }
      }
    },
    "DeleteVirtualInterfaceRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        }
      }
    },
    "DeleteVirtualInterfaceResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceState": {
          "shape": "VirtualInterfaceState",
          "documentation": "<p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> <li> <p> <code>unknown</code>: The state of the virtual interface is not available.</p> </li> </ul>"
        }
      }
    },
    "DescribeConnectionLoaRequest": {
      "type": "structure",
      "required": [
        "connectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>"
        },
        "loaContentType": {
          "shape": "LoaContentType",
          "documentation": "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
        }
      }
    },
    "DescribeConnectionLoaResponse": {
      "type": "structure",
      "members": {
        "loa": {
          "shape": "Loa",
          "documentation": "<p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>"
        }
      }
    },
    "DescribeConnectionsOnInterconnectRequest": {
      "type": "structure",
      "required": [
        "interconnectId"
      ],
      "members": {
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect.</p>"
        }
      }
    },
    "DescribeConnectionsRequest": {
      "type": "structure",
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAssociationProposalsRequest": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "proposalId": {
          "shape": "DirectConnectGatewayAssociationProposalId",
          "documentation": "<p>The ID of the proposal.</p>"
        },
        "associatedGatewayId": {
          "shape": "AssociatedGatewayId",
          "documentation": "<p>The ID of the associated gateway.</p>"
        },
        "maxResults": {
          "shape": "MaxResultSetSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p> <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are returned.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAssociationProposalsResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociationProposals": {
          "shape": "DirectConnectGatewayAssociationProposalList",
          "documentation": "<p>Describes the Direct Connect gateway association proposals.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAssociationsRequest": {
      "type": "structure",
      "members": {
        "associationId": {
          "shape": "DirectConnectGatewayAssociationId",
          "documentation": "<p>The ID of the Direct Connect gateway association.</p>"
        },
        "associatedGatewayId": {
          "shape": "AssociatedGatewayId",
          "documentation": "<p>The ID of the associated gateway.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "maxResults": {
          "shape": "MaxResultSetSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p> <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are returned.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token provided in the previous call to retrieve the next page.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAssociationsResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociations": {
          "shape": "DirectConnectGatewayAssociationList",
          "documentation": "<p>Information about the associations.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to retrieve the next page.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAttachmentsRequest": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "maxResults": {
          "shape": "MaxResultSetSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p> <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are returned.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token provided in the previous call to retrieve the next page.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewayAttachmentsResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAttachments": {
          "shape": "DirectConnectGatewayAttachmentList",
          "documentation": "<p>The attachments.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to retrieve the next page.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewaysRequest": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "maxResults": {
          "shape": "MaxResultSetSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p> <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are returned.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token provided in the previous call to retrieve the next page.</p>"
        }
      }
    },
    "DescribeDirectConnectGatewaysResult": {
      "type": "structure",
      "members": {
        "directConnectGateways": {
          "shape": "DirectConnectGatewayList",
          "documentation": "<p>The Direct Connect gateways.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to retrieve the next page.</p>"
        }
      }
    },
    "DescribeHostedConnectionsRequest": {
      "type": "structure",
      "required": [
        "connectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the interconnect or LAG.</p>"
        }
      }
    },
    "DescribeInterconnectLoaRequest": {
      "type": "structure",
      "required": [
        "interconnectId"
      ],
      "members": {
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>"
        },
        "loaContentType": {
          "shape": "LoaContentType",
          "documentation": "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
        }
      }
    },
    "DescribeInterconnectLoaResponse": {
      "type": "structure",
      "members": {
        "loa": {
          "shape": "Loa",
          "documentation": "<p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>"
        }
      }
    },
    "DescribeInterconnectsRequest": {
      "type": "structure",
      "members": {
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect.</p>"
        }
      }
    },
    "DescribeLagsRequest": {
      "type": "structure",
      "members": {
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        }
      }
    },
    "DescribeLoaRequest": {
      "type": "structure",
      "required": [
        "connectionId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of a connection, LAG, or interconnect.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>"
        },
        "loaContentType": {
          "shape": "LoaContentType",
          "documentation": "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
        }
      }
    },
    "DescribeTagsRequest": {
      "type": "structure",
      "required": [
        "resourceArns"
      ],
      "members": {
        "resourceArns": {
          "shape": "ResourceArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the resources.</p>"
        }
      }
    },
    "DescribeTagsResponse": {
      "type": "structure",
      "members": {
        "resourceTags": {
          "shape": "ResourceTagList",
          "documentation": "<p>Information about the tags.</p>"
        }
      }
    },
    "DescribeVirtualInterfacesRequest": {
      "type": "structure",
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        }
      }
    },
    "DirectConnectGateway": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "directConnectGatewayName": {
          "shape": "DirectConnectGatewayName",
          "documentation": "<p>The name of the Direct Connect gateway.</p>"
        },
        "amazonSideAsn": {
          "shape": "LongAsn",
          "documentation": "<p>The autonomous system number (ASN) for the Amazon side of the connection.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the Direct Connect gateway.</p>"
        },
        "directConnectGatewayState": {
          "shape": "DirectConnectGatewayState",
          "documentation": "<p>The state of the Direct Connect gateway. The following are the possible values:</p> <ul> <li> <p> <code>pending</code>: The initial state after calling <a>CreateDirectConnectGateway</a>.</p> </li> <li> <p> <code>available</code>: The Direct Connect gateway is ready for use.</p> </li> <li> <p> <code>deleting</code>: The initial state after calling <a>DeleteDirectConnectGateway</a>.</p> </li> <li> <p> <code>deleted</code>: The Direct Connect gateway is deleted and cannot pass traffic.</p> </li> </ul>"
        },
        "stateChangeError": {
          "shape": "StateChangeError",
          "documentation": "<p>The error message if the state of an object failed to advance.</p>"
        }
      },
      "documentation": "<p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>"
    },
    "DirectConnectGatewayAssociation": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "directConnectGatewayOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the associated gateway.</p>"
        },
        "associationState": {
          "shape": "DirectConnectGatewayAssociationState",
          "documentation": "<p>The state of the association. The following are the possible values:</p> <ul> <li> <p> <code>associating</code>: The initial state after calling <a>CreateDirectConnectGatewayAssociation</a>.</p> </li> <li> <p> <code>associated</code>: The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.</p> </li> <li> <p> <code>disassociating</code>: The initial state after calling <a>DeleteDirectConnectGatewayAssociation</a>.</p> </li> <li> <p> <code>disassociated</code>: The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.</p> </li> </ul>"
        },
        "stateChangeError": {
          "shape": "StateChangeError",
          "documentation": "<p>The error message if the state of an object failed to advance.</p>"
        },
        "associatedGateway": {
          "shape": "AssociatedGateway",
          "documentation": "<p>Information about the associated gateway.</p>"
        },
        "associationId": {
          "shape": "DirectConnectGatewayAssociationId",
          "documentation": "<p>The ID of the Direct Connect gateway association.</p>"
        },
        "allowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>"
        },
        "virtualGatewayRegion": {
          "shape": "VirtualGatewayRegion",
          "documentation": "<p>The AWS Region where the virtual private gateway is located.</p>"
        },
        "virtualGatewayOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the virtual private gateway.</p>"
        }
      },
      "documentation": "<p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>"
    },
    "DirectConnectGatewayAssociationId": {
      "type": "string"
    },
    "DirectConnectGatewayAssociationList": {
      "type": "list",
      "member": {
        "shape": "DirectConnectGatewayAssociation"
      }
    },
    "DirectConnectGatewayAssociationProposal": {
      "type": "structure",
      "members": {
        "proposalId": {
          "shape": "DirectConnectGatewayAssociationProposalId",
          "documentation": "<p>The ID of the association proposal.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "directConnectGatewayOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the Direct Connect gateway.</p>"
        },
        "proposalState": {
          "shape": "DirectConnectGatewayAssociationProposalState",
          "documentation": "<p>The state of the proposal. The following are possible values:</p> <ul> <li> <p> <code>accepted</code>: The proposal has been accepted. The Direct Connect gateway association is available to use in this state.</p> </li> <li> <p> <code>deleted</code>: The proposal has been deleted by the owner that made the proposal. The Direct Connect gateway association cannot be used in this state.</p> </li> <li> <p> <code>requested</code>: The proposal has been requested. The Direct Connect gateway association cannot be used in this state.</p> </li> </ul>"
        },
        "associatedGateway": {
          "shape": "AssociatedGateway",
          "documentation": "<p>Information about the associated gateway.</p>"
        },
        "existingAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The existing Amazon VPC prefixes advertised to the Direct Connect gateway.</p>"
        },
        "requestedAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>"
        }
      },
      "documentation": "<p>Information about the proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>"
    },
    "DirectConnectGatewayAssociationProposalId": {
      "type": "string"
    },
    "DirectConnectGatewayAssociationProposalList": {
      "type": "list",
      "member": {
        "shape": "DirectConnectGatewayAssociationProposal"
      }
    },
    "DirectConnectGatewayAssociationProposalState": {
      "type": "string",
      "enum": [
        "requested",
        "accepted",
        "deleted"
      ]
    },
    "DirectConnectGatewayAssociationState": {
      "type": "string",
      "enum": [
        "associating",
        "associated",
        "disassociating",
        "disassociated",
        "updating"
      ]
    },
    "DirectConnectGatewayAttachment": {
      "type": "structure",
      "members": {
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "virtualInterfaceRegion": {
          "shape": "VirtualInterfaceRegion",
          "documentation": "<p>The AWS Region where the virtual interface is located.</p>"
        },
        "virtualInterfaceOwnerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the virtual interface.</p>"
        },
        "attachmentState": {
          "shape": "DirectConnectGatewayAttachmentState",
          "documentation": "<p>The state of the attachment. The following are the possible values:</p> <ul> <li> <p> <code>attaching</code>: The initial state after a virtual interface is created using the Direct Connect gateway.</p> </li> <li> <p> <code>attached</code>: The Direct Connect gateway and virtual interface are attached and ready to pass traffic.</p> </li> <li> <p> <code>detaching</code>: The initial state after calling <a>DeleteVirtualInterface</a>.</p> </li> <li> <p> <code>detached</code>: The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.</p> </li> </ul>"
        },
        "attachmentType": {
          "shape": "DirectConnectGatewayAttachmentType",
          "documentation": "<p>The type of attachment.</p>"
        },
        "stateChangeError": {
          "shape": "StateChangeError",
          "documentation": "<p>The error message if the state of an object failed to advance.</p>"
        }
      },
      "documentation": "<p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>"
    },
    "DirectConnectGatewayAttachmentList": {
      "type": "list",
      "member": {
        "shape": "DirectConnectGatewayAttachment"
      }
    },
    "DirectConnectGatewayAttachmentState": {
      "type": "string",
      "enum": [
        "attaching",
        "attached",
        "detaching",
        "detached"
      ]
    },
    "DirectConnectGatewayAttachmentType": {
      "type": "string",
      "enum": [
        "TransitVirtualInterface",
        "PrivateVirtualInterface"
      ]
    },
    "DirectConnectGatewayId": {
      "type": "string"
    },
    "DirectConnectGatewayList": {
      "type": "list",
      "member": {
        "shape": "DirectConnectGateway"
      }
    },
    "DirectConnectGatewayName": {
      "type": "string"
    },
    "DirectConnectGatewayState": {
      "type": "string",
      "enum": [
        "pending",
        "available",
        "deleting",
        "deleted"
      ]
    },
    "DisassociateConnectionFromLagRequest": {
      "type": "structure",
      "required": [
        "connectionId",
        "lagId"
      ],
      "members": {
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        }
      }
    },
    "EndTime": {
      "type": "timestamp"
    },
    "FailureTestHistoryStatus": {
      "type": "string"
    },
    "GatewayIdToAssociate": {
      "type": "string"
    },
    "GatewayIdentifier": {
      "type": "string"
    },
    "GatewayType": {
      "type": "string",
      "enum": [
        "virtualPrivateGateway",
        "transitGateway"
      ]
    },
    "HasLogicalRedundancy": {
      "type": "string",
      "enum": [
        "unknown",
        "yes",
        "no"
      ]
    },
    "Interconnect": {
      "type": "structure",
      "members": {
        "interconnectId": {
          "shape": "InterconnectId",
          "documentation": "<p>The ID of the interconnect.</p>"
        },
        "interconnectName": {
          "shape": "InterconnectName",
          "documentation": "<p>The name of the interconnect.</p>"
        },
        "interconnectState": {
          "shape": "InterconnectState",
          "documentation": "<p>The state of the interconnect. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of an interconnect. The interconnect stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p> </li> <li> <p> <code>pending</code>: The interconnect is approved, and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is up, and the interconnect is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The interconnect is being deleted.</p> </li> <li> <p> <code>deleted</code>: The interconnect is deleted.</p> </li> <li> <p> <code>unknown</code>: The state of the interconnect is not available.</p> </li> </ul>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region where the connection is located.</p>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the connection.</p>"
        },
        "bandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The bandwidth of the connection.</p>"
        },
        "loaIssueTime": {
          "shape": "LoaIssueTime",
          "documentation": "<p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "awsDevice": {
          "shape": "AwsDevice",
          "documentation": "<p>The Direct Connect endpoint on which the physical connection terminates.</p>"
        },
        "jumboFrameCapable": {
          "shape": "JumboFrameCapable",
          "documentation": "<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>"
        },
        "awsDeviceV2": {
          "shape": "AwsDeviceV2",
          "documentation": "<p>The Direct Connect endpoint on which the physical connection terminates.</p>"
        },
        "hasLogicalRedundancy": {
          "shape": "HasLogicalRedundancy",
          "documentation": "<p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the interconnect.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the interconnect.</p>"
        }
      },
      "documentation": "<p>Information about an interconnect.</p>"
    },
    "InterconnectId": {
      "type": "string"
    },
    "InterconnectList": {
      "type": "list",
      "member": {
        "shape": "Interconnect"
      }
    },
    "InterconnectName": {
      "type": "string"
    },
    "InterconnectState": {
      "type": "string",
      "enum": [
        "requested",
        "pending",
        "available",
        "down",
        "deleting",
        "deleted",
        "unknown"
      ]
    },
    "Interconnects": {
      "type": "structure",
      "members": {
        "interconnects": {
          "shape": "InterconnectList",
          "documentation": "<p>The interconnects.</p>"
        }
      }
    },
    "JumboFrameCapable": {
      "type": "boolean"
    },
    "Lag": {
      "type": "structure",
      "members": {
        "connectionsBandwidth": {
          "shape": "Bandwidth",
          "documentation": "<p>The individual bandwidth of the physical connections bundled by the LAG. The possible values are 1Gbps and 10Gbps. </p>"
        },
        "numberOfConnections": {
          "shape": "Count",
          "documentation": "<p>The number of physical connections bundled by the LAG, up to a maximum of 10.</p>"
        },
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the LAG.</p>"
        },
        "lagName": {
          "shape": "LagName",
          "documentation": "<p>The name of the LAG.</p>"
        },
        "lagState": {
          "shape": "LagState",
          "documentation": "<p>The state of the LAG. The following are the possible values:</p> <ul> <li> <p> <code>requested</code>: The initial state of a LAG. The LAG stays in the requested state until the Letter of Authorization (LOA) is available.</p> </li> <li> <p> <code>pending</code>: The LAG has been approved and is being initialized.</p> </li> <li> <p> <code>available</code>: The network link is established and the LAG is ready for use.</p> </li> <li> <p> <code>down</code>: The network link is down.</p> </li> <li> <p> <code>deleting</code>: The LAG is being deleted.</p> </li> <li> <p> <code>deleted</code>: The LAG is deleted.</p> </li> <li> <p> <code>unknown</code>: The state of the LAG is not available.</p> </li> </ul>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the LAG.</p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region where the connection is located.</p>"
        },
        "minimumLinks": {
          "shape": "Count",
          "documentation": "<p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>"
        },
        "awsDevice": {
          "shape": "AwsDevice",
          "documentation": "<p>The AWS Direct Connect endpoint that hosts the LAG.</p>"
        },
        "awsDeviceV2": {
          "shape": "AwsDeviceV2",
          "documentation": "<p>The AWS Direct Connect endpoint that hosts the LAG.</p>"
        },
        "connections": {
          "shape": "ConnectionList",
          "documentation": "<p>The connections bundled by the LAG.</p>"
        },
        "allowsHostedConnections": {
          "shape": "BooleanFlag",
          "documentation": "<p>Indicates whether the LAG can host other connections.</p>"
        },
        "jumboFrameCapable": {
          "shape": "JumboFrameCapable",
          "documentation": "<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>"
        },
        "hasLogicalRedundancy": {
          "shape": "HasLogicalRedundancy",
          "documentation": "<p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the LAG.</p>"
        },
        "providerName": {
          "shape": "ProviderName",
          "documentation": "<p>The name of the service provider associated with the LAG.</p>"
        }
      },
      "documentation": "<p>Information about a link aggregation group (LAG).</p>"
    },
    "LagId": {
      "type": "string"
    },
    "LagList": {
      "type": "list",
      "member": {
        "shape": "Lag"
      }
    },
    "LagName": {
      "type": "string"
    },
    "LagState": {
      "type": "string",
      "enum": [
        "requested",
        "pending",
        "available",
        "down",
        "deleting",
        "deleted",
        "unknown"
      ]
    },
    "Lags": {
      "type": "structure",
      "members": {
        "lags": {
          "shape": "LagList",
          "documentation": "<p>The LAGs.</p>"
        }
      }
    },
    "ListVirtualInterfaceTestHistoryRequest": {
      "type": "structure",
      "members": {
        "testId": {
          "shape": "TestId",
          "documentation": "<p>The ID of the virtual interface failover test.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface that was tested.</p>"
        },
        "bgpPeers": {
          "shape": "BGPPeerIdList",
          "documentation": "<p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>"
        },
        "status": {
          "shape": "FailureTestHistoryStatus",
          "documentation": "<p>The status of the virtual interface failover test.</p>"
        },
        "maxResults": {
          "shape": "MaxResultSetSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p> <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are returned.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "ListVirtualInterfaceTestHistoryResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceTestHistory": {
          "shape": "VirtualInterfaceTestHistoryList",
          "documentation": "<p>The ID of the tested virtual interface.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "Loa": {
      "type": "structure",
      "members": {
        "loaContent": {
          "shape": "LoaContent",
          "documentation": "<p>The binary contents of the LOA-CFA document.</p>"
        },
        "loaContentType": {
          "shape": "LoaContentType",
          "documentation": "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
        }
      },
      "documentation": "<p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>"
    },
    "LoaContent": {
      "type": "blob"
    },
    "LoaContentType": {
      "type": "string",
      "enum": [
        "application/pdf"
      ]
    },
    "LoaIssueTime": {
      "type": "timestamp"
    },
    "Location": {
      "type": "structure",
      "members": {
        "locationCode": {
          "shape": "LocationCode",
          "documentation": "<p>The code for the location.</p>"
        },
        "locationName": {
          "shape": "LocationName",
          "documentation": "<p>The name of the location. This includes the name of the colocation partner and the physical site of the building.</p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region for the location.</p>"
        },
        "availablePortSpeeds": {
          "shape": "AvailablePortSpeeds",
          "documentation": "<p>The available port speeds for the location.</p>"
        },
        "availableProviders": {
          "shape": "ProviderList",
          "documentation": "<p>The name of the service provider for the location.</p>"
        }
      },
      "documentation": "<p>Information about an AWS Direct Connect location.</p>"
    },
    "LocationCode": {
      "type": "string"
    },
    "LocationList": {
      "type": "list",
      "member": {
        "shape": "Location"
      }
    },
    "LocationName": {
      "type": "string"
    },
    "Locations": {
      "type": "structure",
      "members": {
        "locations": {
          "shape": "LocationList",
          "documentation": "<p>The locations.</p>"
        }
      }
    },
    "LongAsn": {
      "type": "long"
    },
    "MTU": {
      "type": "integer"
    },
    "MaxResultSetSize": {
      "type": "integer",
      "box": true
    },
    "NewBGPPeer": {
      "type": "structure",
      "members": {
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        }
      },
      "documentation": "<p>Information about a new BGP peer.</p>"
    },
    "NewPrivateVirtualInterface": {
      "type": "structure",
      "required": [
        "virtualInterfaceName",
        "vlan",
        "asn"
      ],
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the private virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a private virtual interface.</p>"
    },
    "NewPrivateVirtualInterfaceAllocation": {
      "type": "structure",
      "required": [
        "virtualInterfaceName",
        "vlan",
        "asn"
      ],
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the private virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a private virtual interface to be provisioned on a connection.</p>"
    },
    "NewPublicVirtualInterface": {
      "type": "structure",
      "required": [
        "virtualInterfaceName",
        "vlan",
        "asn"
      ],
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "routeFilterPrefixes": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the public virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a public virtual interface.</p>"
    },
    "NewPublicVirtualInterfaceAllocation": {
      "type": "structure",
      "required": [
        "virtualInterfaceName",
        "vlan",
        "asn"
      ],
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "routeFilterPrefixes": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the public virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a public virtual interface to be provisioned on a connection.</p>"
    },
    "NewTransitVirtualInterface": {
      "type": "structure",
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the transitive virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a transit virtual interface.</p>"
    },
    "NewTransitVirtualInterfaceAllocation": {
      "type": "structure",
      "members": {
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500. </p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the transitive virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a transit virtual interface to be provisioned on a connection.</p>"
    },
    "OwnerAccount": {
      "type": "string"
    },
    "PaginationToken": {
      "type": "string"
    },
    "PartnerName": {
      "type": "string"
    },
    "PortSpeed": {
      "type": "string"
    },
    "ProviderList": {
      "type": "list",
      "member": {
        "shape": "ProviderName"
      }
    },
    "ProviderName": {
      "type": "string"
    },
    "Region": {
      "type": "string"
    },
    "ResourceArn": {
      "type": "string"
    },
    "ResourceArnList": {
      "type": "list",
      "member": {
        "shape": "ResourceArn"
      }
    },
    "ResourceTag": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags.</p>"
        }
      },
      "documentation": "<p>Information about a tag associated with an AWS Direct Connect resource.</p>"
    },
    "ResourceTagList": {
      "type": "list",
      "member": {
        "shape": "ResourceTag"
      }
    },
    "RouteFilterPrefix": {
      "type": "structure",
      "members": {
        "cidr": {
          "shape": "CIDR",
          "documentation": "<p>The CIDR block for the advertised route. Separate multiple routes using commas. An IPv6 CIDR must use /64 or shorter.</p>"
        }
      },
      "documentation": "<p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>"
    },
    "RouteFilterPrefixList": {
      "type": "list",
      "member": {
        "shape": "RouteFilterPrefix"
      }
    },
    "RouterConfig": {
      "type": "string"
    },
    "StartBgpFailoverTestRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface you want to test.</p>"
        },
        "bgpPeers": {
          "shape": "BGPPeerIdList",
          "documentation": "<p>The BGP peers to place in the DOWN state.</p>"
        },
        "testDurationInMinutes": {
          "shape": "TestDuration",
          "documentation": "<p>The time in minutes that the virtual interface failover test will last.</p> <p>Maximum value: 180 minutes (3 hours).</p> <p>Default: 180 minutes (3 hours).</p>"
        }
      }
    },
    "StartBgpFailoverTestResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceTest": {
          "shape": "VirtualInterfaceTestHistory",
          "documentation": "<p>Information about the virtual interface failover test.</p>"
        }
      }
    },
    "StartTime": {
      "type": "timestamp"
    },
    "StateChangeError": {
      "type": "string"
    },
    "StopBgpFailoverTestRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface you no longer want to test.</p>"
        }
      }
    },
    "StopBgpFailoverTestResponse": {
      "type": "structure",
      "members": {
        "virtualInterfaceTest": {
          "shape": "VirtualInterfaceTestHistory",
          "documentation": "<p>Information about the virtual interface failover test.</p>"
        }
      }
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key"
      ],
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The key.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The value.</p>"
        }
      },
      "documentation": "<p>Information about a tag.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
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
      },
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
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add.</p>"
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
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TestDuration": {
      "type": "integer",
      "box": true
    },
    "TestId": {
      "type": "string"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys of the tags to remove.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDirectConnectGatewayAssociationRequest": {
      "type": "structure",
      "members": {
        "associationId": {
          "shape": "DirectConnectGatewayAssociationId",
          "documentation": "<p>The ID of the Direct Connect gateway association.</p>"
        },
        "addAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>"
        },
        "removeAllowedPrefixesToDirectConnectGateway": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>"
        }
      }
    },
    "UpdateDirectConnectGatewayAssociationResult": {
      "type": "structure",
      "members": {
        "directConnectGatewayAssociation": {
          "shape": "DirectConnectGatewayAssociation"
        }
      }
    },
    "UpdateLagRequest": {
      "type": "structure",
      "required": [
        "lagId"
      ],
      "members": {
        "lagId": {
          "shape": "LagId",
          "documentation": "<p>The ID of the LAG.</p>"
        },
        "lagName": {
          "shape": "LagName",
          "documentation": "<p>The name of the LAG.</p>"
        },
        "minimumLinks": {
          "shape": "Count",
          "documentation": "<p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>"
        }
      }
    },
    "UpdateVirtualInterfaceAttributesRequest": {
      "type": "structure",
      "required": [
        "virtualInterfaceId"
      ],
      "members": {
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual private interface.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
        }
      }
    },
    "VLAN": {
      "type": "integer"
    },
    "VirtualGateway": {
      "type": "structure",
      "members": {
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway.</p>"
        },
        "virtualGatewayState": {
          "shape": "VirtualGatewayState",
          "documentation": "<p>The state of the virtual private gateway. The following are the possible values:</p> <ul> <li> <p> <code>pending</code>: Initial state after creating the virtual private gateway.</p> </li> <li> <p> <code>available</code>: Ready for use by a private virtual interface.</p> </li> <li> <p> <code>deleting</code>: Initial state after deleting the virtual private gateway.</p> </li> <li> <p> <code>deleted</code>: The virtual private gateway is deleted. The private virtual interface is unable to send traffic over this gateway.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about a virtual private gateway for a private virtual interface.</p>"
    },
    "VirtualGatewayId": {
      "type": "string"
    },
    "VirtualGatewayList": {
      "type": "list",
      "member": {
        "shape": "VirtualGateway"
      }
    },
    "VirtualGatewayRegion": {
      "type": "string",
      "deprecated": true
    },
    "VirtualGatewayState": {
      "type": "string"
    },
    "VirtualGateways": {
      "type": "structure",
      "members": {
        "virtualGateways": {
          "shape": "VirtualGatewayList",
          "documentation": "<p>The virtual private gateways.</p>"
        }
      }
    },
    "VirtualInterface": {
      "type": "structure",
      "members": {
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The ID of the AWS account that owns the virtual interface.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the virtual interface.</p>"
        },
        "location": {
          "shape": "LocationCode",
          "documentation": "<p>The location of the connection.</p>"
        },
        "connectionId": {
          "shape": "ConnectionId",
          "documentation": "<p>The ID of the connection.</p>"
        },
        "virtualInterfaceType": {
          "shape": "VirtualInterfaceType",
          "documentation": "<p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>"
        },
        "virtualInterfaceName": {
          "shape": "VirtualInterfaceName",
          "documentation": "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
        },
        "vlan": {
          "shape": "VLAN",
          "documentation": "<p>The ID of the VLAN.</p>"
        },
        "asn": {
          "shape": "ASN",
          "documentation": "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p> <p>The valid values are 1-2147483647.</p>"
        },
        "amazonSideAsn": {
          "shape": "LongAsn",
          "documentation": "<p>The autonomous system number (ASN) for the Amazon side of the connection.</p>"
        },
        "authKey": {
          "shape": "BGPAuthKey",
          "documentation": "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
        },
        "amazonAddress": {
          "shape": "AmazonAddress",
          "documentation": "<p>The IP address assigned to the Amazon interface.</p>"
        },
        "customerAddress": {
          "shape": "CustomerAddress",
          "documentation": "<p>The IP address assigned to the customer interface.</p>"
        },
        "addressFamily": {
          "shape": "AddressFamily",
          "documentation": "<p>The address family for the BGP peer.</p>"
        },
        "virtualInterfaceState": {
          "shape": "VirtualInterfaceState",
          "documentation": "<p>The state of the virtual interface. The following are the possible values:</p> <ul> <li> <p> <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p> </li> <li> <p> <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p> </li> <li> <p> <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p> </li> <li> <p> <code>available</code>: A virtual interface that is able to forward traffic.</p> </li> <li> <p> <code>down</code>: A virtual interface that is BGP down.</p> </li> <li> <p> <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p> </li> <li> <p> <code>deleted</code>: A virtual interface that cannot forward traffic.</p> </li> <li> <p> <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p> </li> <li> <p> <code>unknown</code>: The state of the virtual interface is not available.</p> </li> </ul>"
        },
        "customerRouterConfig": {
          "shape": "RouterConfig",
          "documentation": "<p>The customer router configuration.</p>"
        },
        "mtu": {
          "shape": "MTU",
          "documentation": "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
        },
        "jumboFrameCapable": {
          "shape": "JumboFrameCapable",
          "documentation": "<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>"
        },
        "virtualGatewayId": {
          "shape": "VirtualGatewayId",
          "documentation": "<p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>"
        },
        "directConnectGatewayId": {
          "shape": "DirectConnectGatewayId",
          "documentation": "<p>The ID of the Direct Connect gateway.</p>"
        },
        "routeFilterPrefixes": {
          "shape": "RouteFilterPrefixList",
          "documentation": "<p>The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.</p>"
        },
        "bgpPeers": {
          "shape": "BGPPeerList",
          "documentation": "<p>The BGP peers configured on this virtual interface.</p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region where the virtual interface is located.</p>"
        },
        "awsDeviceV2": {
          "shape": "AwsDeviceV2",
          "documentation": "<p>The Direct Connect endpoint on which the virtual interface terminates.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the virtual interface.</p>"
        }
      },
      "documentation": "<p>Information about a virtual interface.</p>"
    },
    "VirtualInterfaceId": {
      "type": "string"
    },
    "VirtualInterfaceList": {
      "type": "list",
      "member": {
        "shape": "VirtualInterface"
      }
    },
    "VirtualInterfaceName": {
      "type": "string"
    },
    "VirtualInterfaceRegion": {
      "type": "string"
    },
    "VirtualInterfaceState": {
      "type": "string",
      "enum": [
        "confirming",
        "verifying",
        "pending",
        "available",
        "down",
        "deleting",
        "deleted",
        "rejected",
        "unknown"
      ]
    },
    "VirtualInterfaceTestHistory": {
      "type": "structure",
      "members": {
        "testId": {
          "shape": "TestId",
          "documentation": "<p>The ID of the virtual interface failover test.</p>"
        },
        "virtualInterfaceId": {
          "shape": "VirtualInterfaceId",
          "documentation": "<p>The ID of the tested virtual interface.</p>"
        },
        "bgpPeers": {
          "shape": "BGPPeerIdList",
          "documentation": "<p>The BGP peers that were put in the DOWN state as part of the virtual interface failover test.</p>"
        },
        "status": {
          "shape": "FailureTestHistoryStatus",
          "documentation": "<p>The status of the virtual interface failover test.</p>"
        },
        "ownerAccount": {
          "shape": "OwnerAccount",
          "documentation": "<p>The owner ID of the tested virtual interface.</p>"
        },
        "testDurationInMinutes": {
          "shape": "TestDuration",
          "documentation": "<p>The time that the virtual interface failover test ran in minutes.</p>"
        },
        "startTime": {
          "shape": "StartTime",
          "documentation": "<p>The time that the virtual interface moves to the DOWN state.</p>"
        },
        "endTime": {
          "shape": "EndTime",
          "documentation": "<p>The time that the virtual interface moves out of the DOWN state.</p>"
        }
      },
      "documentation": "<p>Information about the virtual interface failover test.</p>"
    },
    "VirtualInterfaceTestHistoryList": {
      "type": "list",
      "member": {
        "shape": "VirtualInterfaceTestHistory"
      }
    },
    "VirtualInterfaceType": {
      "type": "string"
    },
    "VirtualInterfaces": {
      "type": "structure",
      "members": {
        "virtualInterfaces": {
          "shape": "VirtualInterfaceList",
          "documentation": "<p>The virtual interfaces</p>"
        }
      }
    }
  },
  "documentation": "<p>AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A connection provides access to all AWS Regions except the China (Beijing) and (China) Ningxia Regions. AWS resources in the China Regions can only be accessed through locations associated with those Regions.</p>"
}
]===]))