local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-11-09",
    "endpointPrefix": "a4b",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Alexa For Business",
    "serviceId": "Alexa For Business",
    "signatureVersion": "v4",
    "targetPrefix": "AlexaForBusiness",
    "uid": "alexaforbusiness-2017-11-09"
  },
  "operations": {
    "ApproveSkill": {
      "name": "ApproveSkill",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ApproveSkillRequest"
      },
      "output": {
        "shape": "ApproveSkillResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.</p>"
    },
    "AssociateContactWithAddressBook": {
      "name": "AssociateContactWithAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateContactWithAddressBookRequest"
      },
      "output": {
        "shape": "AssociateContactWithAddressBookResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Associates a contact with a given address book.</p>"
    },
    "AssociateDeviceWithNetworkProfile": {
      "name": "AssociateDeviceWithNetworkProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateDeviceWithNetworkProfileRequest"
      },
      "output": {
        "shape": "AssociateDeviceWithNetworkProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "DeviceNotRegisteredException"
        }
      ],
      "documentation": "<p>Associates a device with the specified network profile.</p>"
    },
    "AssociateDeviceWithRoom": {
      "name": "AssociateDeviceWithRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateDeviceWithRoomRequest"
      },
      "output": {
        "shape": "AssociateDeviceWithRoomResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "DeviceNotRegisteredException"
        }
      ],
      "documentation": "<p>Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. </p>"
    },
    "AssociateSkillGroupWithRoom": {
      "name": "AssociateSkillGroupWithRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateSkillGroupWithRoomRequest"
      },
      "output": {
        "shape": "AssociateSkillGroupWithRoomResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.</p>"
    },
    "AssociateSkillWithSkillGroup": {
      "name": "AssociateSkillWithSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateSkillWithSkillGroupRequest"
      },
      "output": {
        "shape": "AssociateSkillWithSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "SkillNotLinkedException"
        }
      ],
      "documentation": "<p>Associates a skill with a skill group.</p>"
    },
    "AssociateSkillWithUsers": {
      "name": "AssociateSkillWithUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateSkillWithUsersRequest"
      },
      "output": {
        "shape": "AssociateSkillWithUsersResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Makes a private skill available for enrolled users to enable on their devices.</p>"
    },
    "CreateAddressBook": {
      "name": "CreateAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAddressBookRequest"
      },
      "output": {
        "shape": "CreateAddressBookResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an address book with the specified details.</p>"
    },
    "CreateBusinessReportSchedule": {
      "name": "CreateBusinessReportSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBusinessReportScheduleRequest"
      },
      "output": {
        "shape": "CreateBusinessReportScheduleResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        }
      ],
      "documentation": "<p>Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.</p>"
    },
    "CreateConferenceProvider": {
      "name": "CreateConferenceProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConferenceProviderRequest"
      },
      "output": {
        "shape": "CreateConferenceProviderResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        }
      ],
      "documentation": "<p>Adds a new conference provider under the user's AWS account.</p>"
    },
    "CreateContact": {
      "name": "CreateContact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateContactRequest"
      },
      "output": {
        "shape": "CreateContactResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a contact with the specified details.</p>"
    },
    "CreateGatewayGroup": {
      "name": "CreateGatewayGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGatewayGroupRequest"
      },
      "output": {
        "shape": "CreateGatewayGroupResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a gateway group with the specified details.</p>"
    },
    "CreateNetworkProfile": {
      "name": "CreateNetworkProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateNetworkProfileRequest"
      },
      "output": {
        "shape": "CreateNetworkProfileResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidCertificateAuthorityException"
        },
        {
          "shape": "InvalidServiceLinkedRoleStateException"
        }
      ],
      "documentation": "<p>Creates a network profile with the specified details.</p>"
    },
    "CreateProfile": {
      "name": "CreateProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProfileRequest"
      },
      "output": {
        "shape": "CreateProfileResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a new room profile with the specified details.</p>"
    },
    "CreateRoom": {
      "name": "CreateRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRoomRequest"
      },
      "output": {
        "shape": "CreateRoomResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a room with the specified details.</p>"
    },
    "CreateSkillGroup": {
      "name": "CreateSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSkillGroupRequest"
      },
      "output": {
        "shape": "CreateSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a skill group with a specified name and description.</p>"
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
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a user.</p>"
    },
    "DeleteAddressBook": {
      "name": "DeleteAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAddressBookRequest"
      },
      "output": {
        "shape": "DeleteAddressBookResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes an address book by the address book ARN.</p>"
    },
    "DeleteBusinessReportSchedule": {
      "name": "DeleteBusinessReportSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBusinessReportScheduleRequest"
      },
      "output": {
        "shape": "DeleteBusinessReportScheduleResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes the recurring report delivery schedule with the specified schedule ARN.</p>"
    },
    "DeleteConferenceProvider": {
      "name": "DeleteConferenceProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConferenceProviderRequest"
      },
      "output": {
        "shape": "DeleteConferenceProviderResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Deletes a conference provider.</p>"
    },
    "DeleteContact": {
      "name": "DeleteContact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteContactRequest"
      },
      "output": {
        "shape": "DeleteContactResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a contact by the contact ARN.</p>"
    },
    "DeleteDevice": {
      "name": "DeleteDevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDeviceRequest"
      },
      "output": {
        "shape": "DeleteDeviceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidCertificateAuthorityException"
        }
      ],
      "documentation": "<p>Removes a device from Alexa For Business.</p>"
    },
    "DeleteDeviceUsageData": {
      "name": "DeleteDeviceUsageData",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDeviceUsageDataRequest"
      },
      "output": {
        "shape": "DeleteDeviceUsageDataResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "DeviceNotRegisteredException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.</p>"
    },
    "DeleteGatewayGroup": {
      "name": "DeleteGatewayGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGatewayGroupRequest"
      },
      "output": {
        "shape": "DeleteGatewayGroupResponse"
      },
      "errors": [
        {
          "shape": "ResourceAssociatedException"
        }
      ],
      "documentation": "<p>Deletes a gateway group.</p>"
    },
    "DeleteNetworkProfile": {
      "name": "DeleteNetworkProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNetworkProfileRequest"
      },
      "output": {
        "shape": "DeleteNetworkProfileResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Deletes a network profile by the network profile ARN.</p>"
    },
    "DeleteProfile": {
      "name": "DeleteProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProfileRequest"
      },
      "output": {
        "shape": "DeleteProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a room profile by the profile ARN.</p>"
    },
    "DeleteRoom": {
      "name": "DeleteRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRoomRequest"
      },
      "output": {
        "shape": "DeleteRoomResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a room by the room ARN.</p>"
    },
    "DeleteRoomSkillParameter": {
      "name": "DeleteRoomSkillParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRoomSkillParameterRequest"
      },
      "output": {
        "shape": "DeleteRoomSkillParameterResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes room skill parameter details by room, skill, and parameter key ID.</p>"
    },
    "DeleteSkillAuthorization": {
      "name": "DeleteSkillAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSkillAuthorizationRequest"
      },
      "output": {
        "shape": "DeleteSkillAuthorizationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Unlinks a third-party account from a skill.</p>"
    },
    "DeleteSkillGroup": {
      "name": "DeleteSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSkillGroupRequest"
      },
      "output": {
        "shape": "DeleteSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a skill group by skill group ARN.</p>"
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
      "output": {
        "shape": "DeleteUserResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a specified user by user ARN and enrollment ARN.</p>"
    },
    "DisassociateContactFromAddressBook": {
      "name": "DisassociateContactFromAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateContactFromAddressBookRequest"
      },
      "output": {
        "shape": "DisassociateContactFromAddressBookResponse"
      },
      "documentation": "<p>Disassociates a contact from a given address book.</p>"
    },
    "DisassociateDeviceFromRoom": {
      "name": "DisassociateDeviceFromRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateDeviceFromRoomRequest"
      },
      "output": {
        "shape": "DisassociateDeviceFromRoomResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "DeviceNotRegisteredException"
        }
      ],
      "documentation": "<p>Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.</p>"
    },
    "DisassociateSkillFromSkillGroup": {
      "name": "DisassociateSkillFromSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateSkillFromSkillGroupRequest"
      },
      "output": {
        "shape": "DisassociateSkillFromSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Disassociates a skill from a skill group.</p>"
    },
    "DisassociateSkillFromUsers": {
      "name": "DisassociateSkillFromUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateSkillFromUsersRequest"
      },
      "output": {
        "shape": "DisassociateSkillFromUsersResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.</p>"
    },
    "DisassociateSkillGroupFromRoom": {
      "name": "DisassociateSkillGroupFromRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateSkillGroupFromRoomRequest"
      },
      "output": {
        "shape": "DisassociateSkillGroupFromRoomResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.</p>"
    },
    "ForgetSmartHomeAppliances": {
      "name": "ForgetSmartHomeAppliances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ForgetSmartHomeAppliancesRequest"
      },
      "output": {
        "shape": "ForgetSmartHomeAppliancesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Forgets smart home appliances associated to a room.</p>"
    },
    "GetAddressBook": {
      "name": "GetAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAddressBookRequest"
      },
      "output": {
        "shape": "GetAddressBookResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets address the book details by the address book ARN.</p>"
    },
    "GetConferencePreference": {
      "name": "GetConferencePreference",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConferencePreferenceRequest"
      },
      "output": {
        "shape": "GetConferencePreferenceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the existing conference preferences.</p>"
    },
    "GetConferenceProvider": {
      "name": "GetConferenceProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConferenceProviderRequest"
      },
      "output": {
        "shape": "GetConferenceProviderResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets details about a specific conference provider.</p>"
    },
    "GetContact": {
      "name": "GetContact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetContactRequest"
      },
      "output": {
        "shape": "GetContactResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets the contact details by the contact ARN.</p>"
    },
    "GetDevice": {
      "name": "GetDevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDeviceRequest"
      },
      "output": {
        "shape": "GetDeviceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets the details of a device by device ARN.</p>"
    },
    "GetGateway": {
      "name": "GetGateway",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetGatewayRequest"
      },
      "output": {
        "shape": "GetGatewayResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the details of a gateway.</p>"
    },
    "GetGatewayGroup": {
      "name": "GetGatewayGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetGatewayGroupRequest"
      },
      "output": {
        "shape": "GetGatewayGroupResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the details of a gateway group.</p>"
    },
    "GetInvitationConfiguration": {
      "name": "GetInvitationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInvitationConfigurationRequest"
      },
      "output": {
        "shape": "GetInvitationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the configured values for the user enrollment invitation email template.</p>"
    },
    "GetNetworkProfile": {
      "name": "GetNetworkProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetNetworkProfileRequest"
      },
      "output": {
        "shape": "GetNetworkProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidSecretsManagerResourceException"
        }
      ],
      "documentation": "<p>Gets the network profile details by the network profile ARN.</p>"
    },
    "GetProfile": {
      "name": "GetProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetProfileRequest"
      },
      "output": {
        "shape": "GetProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets the details of a room profile by profile ARN.</p>"
    },
    "GetRoom": {
      "name": "GetRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRoomRequest"
      },
      "output": {
        "shape": "GetRoomResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets room details by room ARN.</p>"
    },
    "GetRoomSkillParameter": {
      "name": "GetRoomSkillParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRoomSkillParameterRequest"
      },
      "output": {
        "shape": "GetRoomSkillParameterResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets room skill parameter details by room, skill, and parameter key ARN.</p>"
    },
    "GetSkillGroup": {
      "name": "GetSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSkillGroupRequest"
      },
      "output": {
        "shape": "GetSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Gets skill group details by skill group ARN.</p>"
    },
    "ListBusinessReportSchedules": {
      "name": "ListBusinessReportSchedules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBusinessReportSchedulesRequest"
      },
      "output": {
        "shape": "ListBusinessReportSchedulesResponse"
      },
      "documentation": "<p>Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.</p>"
    },
    "ListConferenceProviders": {
      "name": "ListConferenceProviders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListConferenceProvidersRequest"
      },
      "output": {
        "shape": "ListConferenceProvidersResponse"
      },
      "documentation": "<p>Lists conference providers under a specific AWS account.</p>"
    },
    "ListDeviceEvents": {
      "name": "ListDeviceEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDeviceEventsRequest"
      },
      "output": {
        "shape": "ListDeviceEventsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Lists the device event history, including device connection status, for up to 30 days.</p>"
    },
    "ListGatewayGroups": {
      "name": "ListGatewayGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGatewayGroupsRequest"
      },
      "output": {
        "shape": "ListGatewayGroupsResponse"
      },
      "documentation": "<p>Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.</p>"
    },
    "ListGateways": {
      "name": "ListGateways",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGatewaysRequest"
      },
      "output": {
        "shape": "ListGatewaysResponse"
      },
      "documentation": "<p>Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.</p>"
    },
    "ListSkills": {
      "name": "ListSkills",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSkillsRequest"
      },
      "output": {
        "shape": "ListSkillsResponse"
      },
      "documentation": "<p>Lists all enabled skills in a specific skill group.</p>"
    },
    "ListSkillsStoreCategories": {
      "name": "ListSkillsStoreCategories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSkillsStoreCategoriesRequest"
      },
      "output": {
        "shape": "ListSkillsStoreCategoriesResponse"
      },
      "documentation": "<p>Lists all categories in the Alexa skill store.</p>"
    },
    "ListSkillsStoreSkillsByCategory": {
      "name": "ListSkillsStoreSkillsByCategory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSkillsStoreSkillsByCategoryRequest"
      },
      "output": {
        "shape": "ListSkillsStoreSkillsByCategoryResponse"
      },
      "documentation": "<p>Lists all skills in the Alexa skill store by category.</p>"
    },
    "ListSmartHomeAppliances": {
      "name": "ListSmartHomeAppliances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSmartHomeAppliancesRequest"
      },
      "output": {
        "shape": "ListSmartHomeAppliancesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Lists all of the smart home appliances associated with a room.</p>"
    },
    "ListTags": {
      "name": "ListTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsRequest"
      },
      "output": {
        "shape": "ListTagsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Lists all tags for the specified resource.</p>"
    },
    "PutConferencePreference": {
      "name": "PutConferencePreference",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutConferencePreferenceRequest"
      },
      "output": {
        "shape": "PutConferencePreferenceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Sets the conference preferences on a specific conference provider at the account level.</p>"
    },
    "PutInvitationConfiguration": {
      "name": "PutInvitationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutInvitationConfigurationRequest"
      },
      "output": {
        "shape": "PutInvitationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Configures the email template for the user enrollment invitation with the specified attributes.</p>"
    },
    "PutRoomSkillParameter": {
      "name": "PutRoomSkillParameter",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRoomSkillParameterRequest"
      },
      "output": {
        "shape": "PutRoomSkillParameterResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.</p>"
    },
    "PutSkillAuthorization": {
      "name": "PutSkillAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutSkillAuthorizationRequest"
      },
      "output": {
        "shape": "PutSkillAuthorizationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.</p>"
    },
    "RegisterAVSDevice": {
      "name": "RegisterAVSDevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterAVSDeviceRequest"
      },
      "output": {
        "shape": "RegisterAVSDeviceResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidDeviceException"
        }
      ],
      "documentation": "<p>Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).</p>"
    },
    "RejectSkill": {
      "name": "RejectSkill",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RejectSkillRequest"
      },
      "output": {
        "shape": "RejectSkillResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. </p>"
    },
    "ResolveRoom": {
      "name": "ResolveRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResolveRoomRequest"
      },
      "output": {
        "shape": "ResolveRoomResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.</p>"
    },
    "RevokeInvitation": {
      "name": "RevokeInvitation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeInvitationRequest"
      },
      "output": {
        "shape": "RevokeInvitationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Revokes an invitation and invalidates the enrollment URL.</p>"
    },
    "SearchAddressBooks": {
      "name": "SearchAddressBooks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchAddressBooksRequest"
      },
      "output": {
        "shape": "SearchAddressBooksResponse"
      },
      "documentation": "<p>Searches address books and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SearchContacts": {
      "name": "SearchContacts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchContactsRequest"
      },
      "output": {
        "shape": "SearchContactsResponse"
      },
      "documentation": "<p>Searches contacts and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SearchDevices": {
      "name": "SearchDevices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchDevicesRequest"
      },
      "output": {
        "shape": "SearchDevicesResponse"
      },
      "documentation": "<p>Searches devices and lists the ones that meet a set of filter criteria.</p>"
    },
    "SearchNetworkProfiles": {
      "name": "SearchNetworkProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchNetworkProfilesRequest"
      },
      "output": {
        "shape": "SearchNetworkProfilesResponse"
      },
      "documentation": "<p>Searches network profiles and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SearchProfiles": {
      "name": "SearchProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchProfilesRequest"
      },
      "output": {
        "shape": "SearchProfilesResponse"
      },
      "documentation": "<p>Searches room profiles and lists the ones that meet a set of filter criteria.</p>"
    },
    "SearchRooms": {
      "name": "SearchRooms",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchRoomsRequest"
      },
      "output": {
        "shape": "SearchRoomsResponse"
      },
      "documentation": "<p>Searches rooms and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SearchSkillGroups": {
      "name": "SearchSkillGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchSkillGroupsRequest"
      },
      "output": {
        "shape": "SearchSkillGroupsResponse"
      },
      "documentation": "<p>Searches skill groups and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SearchUsers": {
      "name": "SearchUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchUsersRequest"
      },
      "output": {
        "shape": "SearchUsersResponse"
      },
      "documentation": "<p>Searches users and lists the ones that meet a set of filter and sort criteria.</p>"
    },
    "SendAnnouncement": {
      "name": "SendAnnouncement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendAnnouncementRequest"
      },
      "output": {
        "shape": "SendAnnouncementResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AlreadyExistsException"
        }
      ],
      "documentation": "<p>Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. </p>"
    },
    "SendInvitation": {
      "name": "SendInvitation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendInvitationRequest"
      },
      "output": {
        "shape": "SendInvitationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidUserStatusException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. </p>"
    },
    "StartDeviceSync": {
      "name": "StartDeviceSync",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDeviceSyncRequest"
      },
      "output": {
        "shape": "StartDeviceSyncResponse"
      },
      "errors": [
        {
          "shape": "DeviceNotRegisteredException"
        }
      ],
      "documentation": "<p>Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:</p> <ul> <li> <p>Bluetooth - This unpairs all bluetooth devices paired with your echo device.</p> </li> <li> <p>Volume - This resets the echo device's volume to the default value.</p> </li> <li> <p>Notifications - This clears all notifications from your echo device.</p> </li> <li> <p>Lists - This clears all to-do items from your echo device.</p> </li> <li> <p>Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).</p> </li> </ul>"
    },
    "StartSmartHomeApplianceDiscovery": {
      "name": "StartSmartHomeApplianceDiscovery",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartSmartHomeApplianceDiscoveryRequest"
      },
      "output": {
        "shape": "StartSmartHomeApplianceDiscoveryResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Initiates the discovery of any smart home appliances associated with the room.</p>"
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
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Adds metadata tags to a specified resource.</p>"
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
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Removes metadata tags from a specified resource.</p>"
    },
    "UpdateAddressBook": {
      "name": "UpdateAddressBook",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAddressBookRequest"
      },
      "output": {
        "shape": "UpdateAddressBookResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates address book details by the address book ARN.</p>"
    },
    "UpdateBusinessReportSchedule": {
      "name": "UpdateBusinessReportSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateBusinessReportScheduleRequest"
      },
      "output": {
        "shape": "UpdateBusinessReportScheduleResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates the configuration of the report delivery schedule with the specified schedule ARN.</p>"
    },
    "UpdateConferenceProvider": {
      "name": "UpdateConferenceProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConferenceProviderRequest"
      },
      "output": {
        "shape": "UpdateConferenceProviderResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Updates an existing conference provider's settings.</p>"
    },
    "UpdateContact": {
      "name": "UpdateContact",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateContactRequest"
      },
      "output": {
        "shape": "UpdateContactResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates the contact details by the contact ARN.</p>"
    },
    "UpdateDevice": {
      "name": "UpdateDevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDeviceRequest"
      },
      "output": {
        "shape": "UpdateDeviceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "DeviceNotRegisteredException"
        }
      ],
      "documentation": "<p>Updates the device name by device ARN.</p>"
    },
    "UpdateGateway": {
      "name": "UpdateGateway",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGatewayRequest"
      },
      "output": {
        "shape": "UpdateGatewayResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        }
      ],
      "documentation": "<p>Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.</p>"
    },
    "UpdateGatewayGroup": {
      "name": "UpdateGatewayGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGatewayGroupRequest"
      },
      "output": {
        "shape": "UpdateGatewayGroupResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        }
      ],
      "documentation": "<p>Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.</p>"
    },
    "UpdateNetworkProfile": {
      "name": "UpdateNetworkProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateNetworkProfileRequest"
      },
      "output": {
        "shape": "UpdateNetworkProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidCertificateAuthorityException"
        },
        {
          "shape": "InvalidSecretsManagerResourceException"
        }
      ],
      "documentation": "<p>Updates a network profile by the network profile ARN.</p>"
    },
    "UpdateProfile": {
      "name": "UpdateProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProfileRequest"
      },
      "output": {
        "shape": "UpdateProfileResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates an existing room profile by room profile ARN.</p>"
    },
    "UpdateRoom": {
      "name": "UpdateRoom",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRoomRequest"
      },
      "output": {
        "shape": "UpdateRoomResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        }
      ],
      "documentation": "<p>Updates room details by room ARN.</p>"
    },
    "UpdateSkillGroup": {
      "name": "UpdateSkillGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSkillGroupRequest"
      },
      "output": {
        "shape": "UpdateSkillGroupResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "NameInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates skill group details by skill group ARN.</p>"
    }
  },
  "shapes": {
    "Address": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "AddressBook": {
      "type": "structure",
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book.</p>"
        },
        "Name": {
          "shape": "AddressBookName",
          "documentation": "<p>The name of the address book.</p>"
        },
        "Description": {
          "shape": "AddressBookDescription",
          "documentation": "<p>The description of the address book.</p>"
        }
      },
      "documentation": "<p>An address book with attributes.</p>"
    },
    "AddressBookData": {
      "type": "structure",
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book.</p>"
        },
        "Name": {
          "shape": "AddressBookName",
          "documentation": "<p>The name of the address book.</p>"
        },
        "Description": {
          "shape": "AddressBookDescription",
          "documentation": "<p>The description of the address book.</p>"
        }
      },
      "documentation": "<p>Information related to an address book.</p>"
    },
    "AddressBookDataList": {
      "type": "list",
      "member": {
        "shape": "AddressBookData"
      }
    },
    "AddressBookDescription": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "AddressBookName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "AmazonId": {
      "type": "string",
      "pattern": "[a-zA-Z0-9]{1,18}"
    },
    "ApplianceDescription": {
      "type": "string"
    },
    "ApplianceFriendlyName": {
      "type": "string"
    },
    "ApplianceManufacturerName": {
      "type": "string"
    },
    "ApproveSkillRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The unique identifier of the skill.</p>"
        }
      }
    },
    "ApproveSkillResponse": {
      "type": "structure",
      "members": {}
    },
    "Arn": {
      "type": "string",
      "pattern": "arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
    },
    "AssociateContactWithAddressBookRequest": {
      "type": "structure",
      "required": [
        "ContactArn",
        "AddressBookArn"
      ],
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact to associate with an address book.</p>"
        },
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book with which to associate the contact.</p>"
        }
      }
    },
    "AssociateContactWithAddressBookResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateDeviceWithNetworkProfileRequest": {
      "type": "structure",
      "required": [
        "DeviceArn",
        "NetworkProfileArn"
      ],
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The device ARN.</p>"
        },
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile to associate with a device.</p>"
        }
      }
    },
    "AssociateDeviceWithNetworkProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateDeviceWithRoomRequest": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device to associate to a room. Required.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room with which to associate the device. Required.</p>"
        }
      }
    },
    "AssociateDeviceWithRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateSkillGroupWithRoomRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group to associate with a room. Required.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room with which to associate the skill group. Required.</p>"
        }
      }
    },
    "AssociateSkillGroupWithRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateSkillWithSkillGroupRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group to associate the skill to. Required.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The unique identifier of the skill.</p>"
        }
      }
    },
    "AssociateSkillWithSkillGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateSkillWithUsersRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The private skill ID you want to make available to enrolled users.</p>"
        }
      }
    },
    "AssociateSkillWithUsersResponse": {
      "type": "structure",
      "members": {}
    },
    "Audio": {
      "type": "structure",
      "required": [
        "Locale",
        "Location"
      ],
      "members": {
        "Locale": {
          "shape": "Locale",
          "documentation": "<p>The locale of the audio message. Currently, en-US is supported.</p>"
        },
        "Location": {
          "shape": "AudioLocation",
          "documentation": "<p>The location of the audio file. Currently, S3 URLs are supported. Only S3 locations comprised of safe characters are valid. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#Safe%20Characters\">Safe Characters</a>.</p>"
        }
      },
      "documentation": "<p>The audio message. There is a 1 MB limit on the audio file input and the only supported format is MP3. To convert your MP3 audio files to an Alexa-friendly, </p> <p>required codec version (MPEG version 2) and bit rate (48 kbps), you might use converter software. One option for this is a command-line tool, FFmpeg. For more information, see <a href=\"https://www.ffmpeg.org/\">FFmpeg</a>. The following command converts the provided &lt;input-file&gt; to an MP3 file that is played in the announcement:</p> <p> <code>ffmpeg -i &lt;input-file&gt; -ac 2 -codec:a libmp3lame -b:a 48k -ar 16000 &lt;output-file.mp3&gt;</code> </p>"
    },
    "AudioList": {
      "type": "list",
      "member": {
        "shape": "Audio"
      },
      "max": 1
    },
    "AudioLocation": {
      "type": "string",
      "max": 1200,
      "min": 0,
      "pattern": "https://([A-Za-z0-9_.-]+)?(s3-[A-Za-z0-9-]+|s3\\.([A-Za-z0-9-])+|s3|s3.dualstack\\.([A-Za-z0-9-])+)+.amazonaws.com/.*"
    },
    "AuthorizationResult": {
      "type": "map",
      "key": {
        "shape": "Key"
      },
      "value": {
        "shape": "Value"
      },
      "sensitive": true
    },
    "Boolean": {
      "type": "boolean"
    },
    "BulletPoint": {
      "type": "string"
    },
    "BulletPoints": {
      "type": "list",
      "member": {
        "shape": "BulletPoint"
      }
    },
    "BusinessReport": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "BusinessReportStatus",
          "documentation": "<p>The status of the report generation execution (RUNNING, SUCCEEDED, or FAILED).</p>"
        },
        "FailureCode": {
          "shape": "BusinessReportFailureCode",
          "documentation": "<p>The failure code.</p>"
        },
        "S3Location": {
          "shape": "BusinessReportS3Location",
          "documentation": "<p>The S3 location of the output reports.</p>"
        },
        "DeliveryTime": {
          "shape": "BusinessReportDeliveryTime",
          "documentation": "<p>The time of report delivery.</p>"
        },
        "DownloadUrl": {
          "shape": "BusinessReportDownloadUrl",
          "documentation": "<p>The download link where a user can download the report.</p>"
        }
      },
      "documentation": "<p>Usage report with specified parameters.</p>"
    },
    "BusinessReportContentRange": {
      "type": "structure",
      "required": [
        "Interval"
      ],
      "members": {
        "Interval": {
          "shape": "BusinessReportInterval",
          "documentation": "<p>The interval of the content range.</p>"
        }
      },
      "documentation": "<p>The content range of the report.</p>"
    },
    "BusinessReportDeliveryTime": {
      "type": "timestamp"
    },
    "BusinessReportDownloadUrl": {
      "type": "string"
    },
    "BusinessReportFailureCode": {
      "type": "string",
      "enum": [
        "ACCESS_DENIED",
        "NO_SUCH_BUCKET",
        "INTERNAL_FAILURE"
      ]
    },
    "BusinessReportFormat": {
      "type": "string",
      "enum": [
        "CSV",
        "CSV_ZIP"
      ]
    },
    "BusinessReportInterval": {
      "type": "string",
      "enum": [
        "ONE_DAY",
        "ONE_WEEK",
        "THIRTY_DAYS"
      ]
    },
    "BusinessReportRecurrence": {
      "type": "structure",
      "members": {
        "StartDate": {
          "shape": "Date",
          "documentation": "<p>The start date.</p>"
        }
      },
      "documentation": "<p>The recurrence of the reports.</p>"
    },
    "BusinessReportS3Location": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "BusinessReportS3Path",
          "documentation": "<p>The path of the business report.</p>"
        },
        "BucketName": {
          "shape": "CustomerS3BucketName",
          "documentation": "<p>The S3 bucket name of the output reports.</p>"
        }
      },
      "documentation": "<p>The S3 location of the output reports.</p>"
    },
    "BusinessReportS3Path": {
      "type": "string"
    },
    "BusinessReportSchedule": {
      "type": "structure",
      "members": {
        "ScheduleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the business report schedule.</p>"
        },
        "ScheduleName": {
          "shape": "BusinessReportScheduleName",
          "documentation": "<p>The name identifier of the schedule.</p>"
        },
        "S3BucketName": {
          "shape": "CustomerS3BucketName",
          "documentation": "<p>The S3 bucket name of the output reports.</p>"
        },
        "S3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 key where the report is delivered.</p>"
        },
        "Format": {
          "shape": "BusinessReportFormat",
          "documentation": "<p>The format of the generated report (individual CSV files or zipped files of individual files).</p>"
        },
        "ContentRange": {
          "shape": "BusinessReportContentRange",
          "documentation": "<p>The content range of the reports.</p>"
        },
        "Recurrence": {
          "shape": "BusinessReportRecurrence",
          "documentation": "<p>The recurrence of the reports.</p>"
        },
        "LastBusinessReport": {
          "shape": "BusinessReport",
          "documentation": "<p>The details of the last business report delivery for a specified time interval.</p>"
        }
      },
      "documentation": "<p>The schedule of the usage report.</p>"
    },
    "BusinessReportScheduleList": {
      "type": "list",
      "member": {
        "shape": "BusinessReportSchedule"
      }
    },
    "BusinessReportScheduleName": {
      "type": "string",
      "max": 64,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "BusinessReportStatus": {
      "type": "string",
      "enum": [
        "RUNNING",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "Category": {
      "type": "structure",
      "members": {
        "CategoryId": {
          "shape": "CategoryId",
          "documentation": "<p>The ID of the skill store category.</p>"
        },
        "CategoryName": {
          "shape": "CategoryName",
          "documentation": "<p>The name of the skill store category.</p>"
        }
      },
      "documentation": "<p>The skill store category that is shown. Alexa skills are assigned a specific skill category during creation, such as News, Social, and Sports.</p>"
    },
    "CategoryId": {
      "type": "long",
      "min": 1
    },
    "CategoryList": {
      "type": "list",
      "member": {
        "shape": "Category"
      }
    },
    "CategoryName": {
      "type": "string"
    },
    "CertificateTime": {
      "type": "timestamp"
    },
    "ClientId": {
      "type": "string",
      "pattern": "^\\S+{1,256}$"
    },
    "ClientRequestToken": {
      "type": "string",
      "documentation": "<p>A unique, user-specified identifier for the request that ensures idempotency.</p>",
      "max": 150,
      "min": 10,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "CommsProtocol": {
      "type": "string",
      "enum": [
        "SIP",
        "SIPS",
        "H323"
      ]
    },
    "ConferencePreference": {
      "type": "structure",
      "members": {
        "DefaultConferenceProviderArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the default conference provider.</p>"
        }
      },
      "documentation": "<p>The default conference provider that is used if no other scheduled meetings are detected.</p>"
    },
    "ConferenceProvider": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created conference provider.</p>"
        },
        "Name": {
          "shape": "ConferenceProviderName",
          "documentation": "<p>The name of the conference provider.</p>"
        },
        "Type": {
          "shape": "ConferenceProviderType",
          "documentation": "<p>The type of conference providers.</p>"
        },
        "IPDialIn": {
          "shape": "IPDialIn",
          "documentation": "<p>The IP endpoint and protocol for calling.</p>"
        },
        "PSTNDialIn": {
          "shape": "PSTNDialIn",
          "documentation": "<p>The information for PSTN conferencing.</p>"
        },
        "MeetingSetting": {
          "shape": "MeetingSetting",
          "documentation": "<p>The meeting settings for the conference provider.</p>"
        }
      },
      "documentation": "<p>An entity that provides a conferencing solution. Alexa for Business acts as the voice interface and mediator that connects users to their preferred conference provider. Examples of conference providers include Amazon Chime, Zoom, Cisco, and Polycom. </p>"
    },
    "ConferenceProviderName": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "ConferenceProviderType": {
      "type": "string",
      "enum": [
        "CHIME",
        "BLUEJEANS",
        "FUZE",
        "GOOGLE_HANGOUTS",
        "POLYCOM",
        "RINGCENTRAL",
        "SKYPE_FOR_BUSINESS",
        "WEBEX",
        "ZOOM",
        "CUSTOM"
      ]
    },
    "ConferenceProvidersList": {
      "type": "list",
      "member": {
        "shape": "ConferenceProvider"
      }
    },
    "ConnectionStatus": {
      "type": "string",
      "enum": [
        "ONLINE",
        "OFFLINE"
      ]
    },
    "ConnectionStatusUpdatedTime": {
      "type": "timestamp"
    },
    "Contact": {
      "type": "structure",
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact.</p>"
        },
        "DisplayName": {
          "shape": "ContactName",
          "documentation": "<p>The name of the contact to display on the console.</p>"
        },
        "FirstName": {
          "shape": "ContactName",
          "documentation": "<p>The first name of the contact, used to call the contact on the device.</p>"
        },
        "LastName": {
          "shape": "ContactName",
          "documentation": "<p>The last name of the contact, used to call the contact on the device.</p>"
        },
        "PhoneNumber": {
          "shape": "RawPhoneNumber",
          "documentation": "<p>The phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.</p>"
        },
        "PhoneNumbers": {
          "shape": "PhoneNumberList",
          "documentation": "<p>The list of phone numbers for the contact.</p>"
        },
        "SipAddresses": {
          "shape": "SipAddressList",
          "documentation": "<p>The list of SIP addresses for the contact.</p>"
        }
      },
      "documentation": "<p>A contact with attributes.</p>"
    },
    "ContactData": {
      "type": "structure",
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact.</p>"
        },
        "DisplayName": {
          "shape": "ContactName",
          "documentation": "<p>The name of the contact to display on the console.</p>"
        },
        "FirstName": {
          "shape": "ContactName",
          "documentation": "<p>The first name of the contact, used to call the contact on the device.</p>"
        },
        "LastName": {
          "shape": "ContactName",
          "documentation": "<p>The last name of the contact, used to call the contact on the device.</p>"
        },
        "PhoneNumber": {
          "shape": "RawPhoneNumber",
          "documentation": "<p>The phone number of the contact. The phone number type defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.</p>"
        },
        "PhoneNumbers": {
          "shape": "PhoneNumberList",
          "documentation": "<p>The list of phone numbers for the contact.</p>"
        },
        "SipAddresses": {
          "shape": "SipAddressList",
          "documentation": "<p>The list of SIP addresses for the contact.</p>"
        }
      },
      "documentation": "<p>Information related to a contact.</p>"
    },
    "ContactDataList": {
      "type": "list",
      "member": {
        "shape": "ContactData"
      }
    },
    "ContactName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "Content": {
      "type": "structure",
      "members": {
        "TextList": {
          "shape": "TextList",
          "documentation": "<p>The list of text messages.</p>"
        },
        "SsmlList": {
          "shape": "SsmlList",
          "documentation": "<p>The list of SSML messages.</p>"
        },
        "AudioList": {
          "shape": "AudioList",
          "documentation": "<p>The list of audio messages.</p>"
        }
      },
      "documentation": "<p>The content definition. This can contain only one text, SSML, or audio list object.</p>"
    },
    "CountryCode": {
      "type": "string",
      "pattern": "\\d{1,3}"
    },
    "CreateAddressBookRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "AddressBookName",
          "documentation": "<p>The name of the address book.</p>"
        },
        "Description": {
          "shape": "AddressBookDescription",
          "documentation": "<p>The description of the address book.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, user-specified identifier for the request that ensures idempotency.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateAddressBookResponse": {
      "type": "structure",
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created address book.</p>"
        }
      }
    },
    "CreateBusinessReportScheduleRequest": {
      "type": "structure",
      "required": [
        "Format",
        "ContentRange"
      ],
      "members": {
        "ScheduleName": {
          "shape": "BusinessReportScheduleName",
          "documentation": "<p>The name identifier of the schedule.</p>"
        },
        "S3BucketName": {
          "shape": "CustomerS3BucketName",
          "documentation": "<p>The S3 bucket name of the output reports. If this isn't specified, the report can be retrieved from a download link by calling ListBusinessReportSchedule. </p>"
        },
        "S3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 key where the report is delivered.</p>"
        },
        "Format": {
          "shape": "BusinessReportFormat",
          "documentation": "<p>The format of the generated report (individual CSV files or zipped files of individual files).</p>"
        },
        "ContentRange": {
          "shape": "BusinessReportContentRange",
          "documentation": "<p>The content range of the reports.</p>"
        },
        "Recurrence": {
          "shape": "BusinessReportRecurrence",
          "documentation": "<p>The recurrence of the reports. If this isn't specified, the report will only be delivered one time when the API is called. </p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The client request token.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the business report schedule.</p>"
        }
      }
    },
    "CreateBusinessReportScheduleResponse": {
      "type": "structure",
      "members": {
        "ScheduleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the business report schedule.</p>"
        }
      }
    },
    "CreateConferenceProviderRequest": {
      "type": "structure",
      "required": [
        "ConferenceProviderName",
        "ConferenceProviderType",
        "MeetingSetting"
      ],
      "members": {
        "ConferenceProviderName": {
          "shape": "ConferenceProviderName",
          "documentation": "<p>The name of the conference provider.</p>"
        },
        "ConferenceProviderType": {
          "shape": "ConferenceProviderType",
          "documentation": "<p>Represents a type within a list of predefined types.</p>"
        },
        "IPDialIn": {
          "shape": "IPDialIn",
          "documentation": "<p>The IP endpoint and protocol for calling.</p>"
        },
        "PSTNDialIn": {
          "shape": "PSTNDialIn",
          "documentation": "<p>The information for PSTN conferencing.</p>"
        },
        "MeetingSetting": {
          "shape": "MeetingSetting",
          "documentation": "<p>The meeting settings for the conference provider.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The request token of the client.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateConferenceProviderResponse": {
      "type": "structure",
      "members": {
        "ConferenceProviderArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly-created conference provider.</p>"
        }
      }
    },
    "CreateContactRequest": {
      "type": "structure",
      "required": [
        "FirstName"
      ],
      "members": {
        "DisplayName": {
          "shape": "ContactName",
          "documentation": "<p>The name of the contact to display on the console.</p>"
        },
        "FirstName": {
          "shape": "ContactName",
          "documentation": "<p>The first name of the contact that is used to call the contact on the device.</p>"
        },
        "LastName": {
          "shape": "ContactName",
          "documentation": "<p>The last name of the contact that is used to call the contact on the device.</p>"
        },
        "PhoneNumber": {
          "shape": "RawPhoneNumber",
          "documentation": "<p>The phone number of the contact in E.164 format. The phone number type defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.</p>"
        },
        "PhoneNumbers": {
          "shape": "PhoneNumberList",
          "documentation": "<p>The list of phone numbers for the contact.</p>"
        },
        "SipAddresses": {
          "shape": "SipAddressList",
          "documentation": "<p>The list of SIP addresses for the contact.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, user-specified identifier for this request that ensures idempotency.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateContactResponse": {
      "type": "structure",
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created address book.</p>"
        }
      }
    },
    "CreateEndOfMeetingReminder": {
      "type": "structure",
      "required": [
        "ReminderAtMinutes",
        "ReminderType",
        "Enabled"
      ],
      "members": {
        "ReminderAtMinutes": {
          "shape": "EndOfMeetingReminderMinutesList",
          "documentation": "<p> A range of 3 to 15 minutes that determines when the reminder begins.</p>"
        },
        "ReminderType": {
          "shape": "EndOfMeetingReminderType",
          "documentation": "<p>The type of sound that users hear during the end of meeting reminder. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether an end of meeting reminder is enabled or not.</p>"
        }
      },
      "documentation": "<p>Creates settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending.</p>"
    },
    "CreateGatewayGroupRequest": {
      "type": "structure",
      "required": [
        "Name",
        "ClientRequestToken"
      ],
      "members": {
        "Name": {
          "shape": "GatewayGroupName",
          "documentation": "<p>The name of the gateway group.</p>"
        },
        "Description": {
          "shape": "GatewayGroupDescription",
          "documentation": "<p>The description of the gateway group.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p> A unique, user-specified identifier for the request that ensures idempotency.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateGatewayGroupResponse": {
      "type": "structure",
      "members": {
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the created gateway group.</p>"
        }
      }
    },
    "CreateInstantBooking": {
      "type": "structure",
      "required": [
        "DurationInMinutes",
        "Enabled"
      ],
      "members": {
        "DurationInMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book an available room when a meeting is started with Alexa.</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether instant booking is enabled or not.</p>"
        }
      },
      "documentation": "<p>Creates settings for the instant booking feature that are applied to a room profile. When users start their meeting with Alexa, Alexa automatically books the room for the configured duration if the room is available.</p>"
    },
    "CreateMeetingRoomConfiguration": {
      "type": "structure",
      "members": {
        "RoomUtilizationMetricsEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether room utilization metrics are enabled or not.</p>"
        },
        "EndOfMeetingReminder": {
          "shape": "CreateEndOfMeetingReminder"
        },
        "InstantBooking": {
          "shape": "CreateInstantBooking",
          "documentation": "<p>Settings to automatically book a room for a configured duration if it's free when joining a meeting with Alexa.</p>"
        },
        "RequireCheckIn": {
          "shape": "CreateRequireCheckIn",
          "documentation": "<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.”</p>"
        }
      },
      "documentation": "<p>Creates meeting room settings of a room profile.</p>"
    },
    "CreateNetworkProfileRequest": {
      "type": "structure",
      "required": [
        "NetworkProfileName",
        "Ssid",
        "SecurityType",
        "ClientRequestToken"
      ],
      "members": {
        "NetworkProfileName": {
          "shape": "NetworkProfileName",
          "documentation": "<p>The name of the network profile associated with a device.</p>"
        },
        "Description": {
          "shape": "NetworkProfileDescription",
          "documentation": "<p>Detailed information about a device's network profile.</p>"
        },
        "Ssid": {
          "shape": "NetworkSsid",
          "documentation": "<p>The SSID of the Wi-Fi network.</p>"
        },
        "SecurityType": {
          "shape": "NetworkSecurityType",
          "documentation": "<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.</p>"
        },
        "EapMethod": {
          "shape": "NetworkEapMethod",
          "documentation": "<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.</p>"
        },
        "CurrentPassword": {
          "shape": "CurrentWiFiPassword",
          "documentation": "<p>The current password of the Wi-Fi network.</p>"
        },
        "NextPassword": {
          "shape": "NextWiFiPassword",
          "documentation": "<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword. </p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices. </p>"
        },
        "TrustAnchors": {
          "shape": "TrustAnchorList",
          "documentation": "<p>The root certificates of your authentication server that is installed on your devices and used to trust your authentication server during EAP negotiation. </p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "idempotencyToken": true
        }
      }
    },
    "CreateNetworkProfileResponse": {
      "type": "structure",
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        }
      }
    },
    "CreateProfileRequest": {
      "type": "structure",
      "required": [
        "ProfileName",
        "Timezone",
        "Address",
        "DistanceUnit",
        "TemperatureUnit",
        "WakeWord"
      ],
      "members": {
        "ProfileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of a room profile.</p>"
        },
        "Timezone": {
          "shape": "Timezone",
          "documentation": "<p>The time zone used by a room profile.</p>"
        },
        "Address": {
          "shape": "Address",
          "documentation": "<p>The valid address for the room.</p>"
        },
        "DistanceUnit": {
          "shape": "DistanceUnit",
          "documentation": "<p>The distance unit to be used by devices in the profile.</p>"
        },
        "TemperatureUnit": {
          "shape": "TemperatureUnit",
          "documentation": "<p>The temperature unit to be used by devices in the profile.</p>"
        },
        "WakeWord": {
          "shape": "WakeWord",
          "documentation": "<p>A wake word for Alexa, Echo, Amazon, or a computer.</p>"
        },
        "Locale": {
          "shape": "DeviceLocale",
          "documentation": "<p>The locale of the room profile. (This is currently only available to a limited preview audience.)</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The user-specified token that is used during the creation of a profile.</p>",
          "idempotencyToken": true
        },
        "SetupModeDisabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether room profile setup is enabled.</p>"
        },
        "MaxVolumeLimit": {
          "shape": "MaxVolumeLimit",
          "documentation": "<p>The maximum volume limit for a room profile.</p>"
        },
        "PSTNEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether PSTN calling is enabled.</p>"
        },
        "MeetingRoomConfiguration": {
          "shape": "CreateMeetingRoomConfiguration",
          "documentation": "<p>The meeting room settings of a room profile.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the profile.</p>"
        }
      }
    },
    "CreateProfileResponse": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created room profile in the response.</p>"
        }
      }
    },
    "CreateRequireCheckIn": {
      "type": "structure",
      "required": [
        "ReleaseAfterMinutes",
        "Enabled"
      ],
      "members": {
        "ReleaseAfterMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into.</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether require check in is enabled or not.</p>"
        }
      },
      "documentation": "<p>Creates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released.</p>"
    },
    "CreateRoomRequest": {
      "type": "structure",
      "required": [
        "RoomName"
      ],
      "members": {
        "RoomName": {
          "shape": "RoomName",
          "documentation": "<p>The name for the room.</p>"
        },
        "Description": {
          "shape": "RoomDescription",
          "documentation": "<p>The description for the room.</p>"
        },
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The profile ARN for the room. This is required.</p>"
        },
        "ProviderCalendarId": {
          "shape": "ProviderCalendarId",
          "documentation": "<p>The calendar ARN for the room.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, user-specified identifier for this request that ensures idempotency. </p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the room.</p>"
        }
      }
    },
    "CreateRoomResponse": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created room in the response.</p>"
        }
      }
    },
    "CreateSkillGroupRequest": {
      "type": "structure",
      "required": [
        "SkillGroupName"
      ],
      "members": {
        "SkillGroupName": {
          "shape": "SkillGroupName",
          "documentation": "<p>The name for the skill group.</p>"
        },
        "Description": {
          "shape": "SkillGroupDescription",
          "documentation": "<p>The description for the skill group.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, user-specified identifier for this request that ensures idempotency. </p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the skill group.</p>"
        }
      }
    },
    "CreateSkillGroupResponse": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created skill group in the response.</p>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "UserId"
      ],
      "members": {
        "UserId": {
          "shape": "user_UserId",
          "documentation": "<p>The ARN for the user.</p>"
        },
        "FirstName": {
          "shape": "user_FirstName",
          "documentation": "<p>The first name for the user.</p>"
        },
        "LastName": {
          "shape": "user_LastName",
          "documentation": "<p>The last name for the user.</p>"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address for the user.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, user-specified identifier for this request that ensures idempotency. </p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the user.</p>"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "members": {
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created user in the response.</p>"
        }
      }
    },
    "CurrentWiFiPassword": {
      "type": "string",
      "max": 128,
      "min": 5,
      "pattern": "[\\x00-\\x7F]*",
      "sensitive": true
    },
    "CustomerS3BucketName": {
      "type": "string",
      "pattern": "[a-z0-9-\\.]{3,63}"
    },
    "Date": {
      "type": "string",
      "pattern": "^\\d{4}\\-(0?[1-9]|1[012])\\-(0?[1-9]|[12][0-9]|3[01])$"
    },
    "DeleteAddressBookRequest": {
      "type": "structure",
      "required": [
        "AddressBookArn"
      ],
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book to delete.</p>"
        }
      }
    },
    "DeleteAddressBookResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteBusinessReportScheduleRequest": {
      "type": "structure",
      "required": [
        "ScheduleArn"
      ],
      "members": {
        "ScheduleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the business report schedule.</p>"
        }
      }
    },
    "DeleteBusinessReportScheduleResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteConferenceProviderRequest": {
      "type": "structure",
      "required": [
        "ConferenceProviderArn"
      ],
      "members": {
        "ConferenceProviderArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the conference provider.</p>"
        }
      }
    },
    "DeleteConferenceProviderResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteContactRequest": {
      "type": "structure",
      "required": [
        "ContactArn"
      ],
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact to delete.</p>"
        }
      }
    },
    "DeleteContactResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDeviceRequest": {
      "type": "structure",
      "required": [
        "DeviceArn"
      ],
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device for which to request details.</p>"
        }
      }
    },
    "DeleteDeviceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDeviceUsageDataRequest": {
      "type": "structure",
      "required": [
        "DeviceArn",
        "DeviceUsageType"
      ],
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device.</p>"
        },
        "DeviceUsageType": {
          "shape": "DeviceUsageType",
          "documentation": "<p>The type of usage data to delete.</p>"
        }
      }
    },
    "DeleteDeviceUsageDataResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteGatewayGroupRequest": {
      "type": "structure",
      "required": [
        "GatewayGroupArn"
      ],
      "members": {
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group to delete.</p>"
        }
      }
    },
    "DeleteGatewayGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteNetworkProfileRequest": {
      "type": "structure",
      "required": [
        "NetworkProfileArn"
      ],
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        }
      }
    },
    "DeleteNetworkProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteProfileRequest": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room profile to delete. Required.</p>"
        }
      }
    },
    "DeleteProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRoomRequest": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room to delete. Required.</p>"
        }
      }
    },
    "DeleteRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRoomSkillParameterRequest": {
      "type": "structure",
      "required": [
        "SkillId",
        "ParameterKey"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room from which to remove the room skill parameter details.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ID of the skill from which to remove the room skill parameter details.</p>"
        },
        "ParameterKey": {
          "shape": "RoomSkillParameterKey",
          "documentation": "<p>The room skill parameter key for which to remove details.</p>"
        }
      }
    },
    "DeleteRoomSkillParameterResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSkillAuthorizationRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The unique identifier of a skill.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room that the skill is authorized for.</p>"
        }
      }
    },
    "DeleteSkillAuthorizationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSkillGroupRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group to delete. Required.</p>"
        }
      }
    },
    "DeleteSkillGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "EnrollmentId"
      ],
      "members": {
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the user to delete in the organization. Required.</p>"
        },
        "EnrollmentId": {
          "shape": "EnrollmentId",
          "documentation": "<p>The ARN of the user's enrollment in the organization. Required.</p>"
        }
      }
    },
    "DeleteUserResponse": {
      "type": "structure",
      "members": {}
    },
    "DeveloperInfo": {
      "type": "structure",
      "members": {
        "DeveloperName": {
          "shape": "DeveloperName",
          "documentation": "<p>The name of the developer.</p>"
        },
        "PrivacyPolicy": {
          "shape": "PrivacyPolicy",
          "documentation": "<p>The URL of the privacy policy.</p>"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email of the developer.</p>"
        },
        "Url": {
          "shape": "Url",
          "documentation": "<p>The website of the developer.</p>"
        }
      },
      "documentation": "<p>The details about the developer that published the skill.</p>"
    },
    "DeveloperName": {
      "type": "string"
    },
    "Device": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a device.</p>"
        },
        "DeviceSerialNumber": {
          "shape": "DeviceSerialNumber",
          "documentation": "<p>The serial number of a device.</p>"
        },
        "DeviceType": {
          "shape": "DeviceType",
          "documentation": "<p>The type of a device.</p>"
        },
        "DeviceName": {
          "shape": "DeviceName",
          "documentation": "<p>The name of a device.</p>"
        },
        "SoftwareVersion": {
          "shape": "SoftwareVersion",
          "documentation": "<p>The software version of a device.</p>"
        },
        "MacAddress": {
          "shape": "MacAddress",
          "documentation": "<p>The MAC address of a device.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room ARN of a device.</p>"
        },
        "DeviceStatus": {
          "shape": "DeviceStatus",
          "documentation": "<p>The status of a device. If the status is not READY, check the DeviceStatusInfo value for details.</p>"
        },
        "DeviceStatusInfo": {
          "shape": "DeviceStatusInfo",
          "documentation": "<p>Detailed information about a device's status.</p>"
        },
        "NetworkProfileInfo": {
          "shape": "DeviceNetworkProfileInfo",
          "documentation": "<p>Detailed information about a device's network profile.</p>"
        }
      },
      "documentation": "<p>A device with attributes.</p>"
    },
    "DeviceData": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a device.</p>"
        },
        "DeviceSerialNumber": {
          "shape": "DeviceSerialNumber",
          "documentation": "<p>The serial number of a device.</p>"
        },
        "DeviceType": {
          "shape": "DeviceType",
          "documentation": "<p>The type of a device.</p>"
        },
        "DeviceName": {
          "shape": "DeviceName",
          "documentation": "<p>The name of a device.</p>"
        },
        "SoftwareVersion": {
          "shape": "SoftwareVersion",
          "documentation": "<p>The software version of a device.</p>"
        },
        "MacAddress": {
          "shape": "MacAddress",
          "documentation": "<p>The MAC address of a device.</p>"
        },
        "DeviceStatus": {
          "shape": "DeviceStatus",
          "documentation": "<p>The status of a device.</p>"
        },
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        },
        "NetworkProfileName": {
          "shape": "NetworkProfileName",
          "documentation": "<p>The name of the network profile associated with a device.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room ARN associated with a device.</p>"
        },
        "RoomName": {
          "shape": "DeviceRoomName",
          "documentation": "<p>The name of the room associated with a device.</p>"
        },
        "DeviceStatusInfo": {
          "shape": "DeviceStatusInfo",
          "documentation": "<p>Detailed information about a device's status.</p>"
        },
        "CreatedTime": {
          "shape": "DeviceDataCreatedTime",
          "documentation": "<p>The time (in epoch) when the device data was created.</p>"
        }
      },
      "documentation": "<p>Device attributes.</p>"
    },
    "DeviceDataCreatedTime": {
      "type": "timestamp"
    },
    "DeviceDataList": {
      "type": "list",
      "member": {
        "shape": "DeviceData"
      }
    },
    "DeviceEvent": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "DeviceEventType",
          "documentation": "<p>The type of device event.</p>"
        },
        "Value": {
          "shape": "DeviceEventValue",
          "documentation": "<p>The value of the event.</p>"
        },
        "Timestamp": {
          "shape": "DeviceEventTime",
          "documentation": "<p>The time (in epoch) when the event occurred. </p>"
        }
      },
      "documentation": "<p>The list of device events.</p>"
    },
    "DeviceEventList": {
      "type": "list",
      "member": {
        "shape": "DeviceEvent"
      }
    },
    "DeviceEventTime": {
      "type": "timestamp"
    },
    "DeviceEventType": {
      "type": "string",
      "enum": [
        "CONNECTION_STATUS",
        "DEVICE_STATUS"
      ]
    },
    "DeviceEventValue": {
      "type": "string"
    },
    "DeviceLocale": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceName": {
      "type": "string",
      "max": 100,
      "min": 2,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "DeviceNetworkProfileInfo": {
      "type": "structure",
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        },
        "CertificateArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the certificate associated with a device.</p>"
        },
        "CertificateExpirationTime": {
          "shape": "CertificateTime",
          "documentation": "<p>The time (in epoch) when the certificate expires.</p>"
        }
      },
      "documentation": "<p>Detailed information about a device's network profile.</p>"
    },
    "DeviceRoomName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "DeviceSerialNumber": {
      "type": "string",
      "pattern": "[a-zA-Z0-9]{1,200}"
    },
    "DeviceSerialNumberForAVS": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9]{1,50}$"
    },
    "DeviceStatus": {
      "type": "string",
      "enum": [
        "READY",
        "PENDING",
        "WAS_OFFLINE",
        "DEREGISTERED",
        "FAILED"
      ]
    },
    "DeviceStatusDetail": {
      "type": "structure",
      "members": {
        "Feature": {
          "shape": "Feature",
          "documentation": "<p>The list of available features on the device.</p>"
        },
        "Code": {
          "shape": "DeviceStatusDetailCode",
          "documentation": "<p>The device status detail code.</p>"
        }
      },
      "documentation": "<p>Details of a device’s status.</p>"
    },
    "DeviceStatusDetailCode": {
      "type": "string",
      "enum": [
        "DEVICE_SOFTWARE_UPDATE_NEEDED",
        "DEVICE_WAS_OFFLINE",
        "CREDENTIALS_ACCESS_FAILURE",
        "TLS_VERSION_MISMATCH",
        "ASSOCIATION_REJECTION",
        "AUTHENTICATION_FAILURE",
        "DHCP_FAILURE",
        "INTERNET_UNAVAILABLE",
        "DNS_FAILURE",
        "UNKNOWN_FAILURE",
        "CERTIFICATE_ISSUING_LIMIT_EXCEEDED",
        "INVALID_CERTIFICATE_AUTHORITY",
        "NETWORK_PROFILE_NOT_FOUND",
        "INVALID_PASSWORD_STATE",
        "PASSWORD_NOT_FOUND",
        "PASSWORD_MANAGER_ACCESS_DENIED",
        "CERTIFICATE_AUTHORITY_ACCESS_DENIED"
      ]
    },
    "DeviceStatusDetails": {
      "type": "list",
      "member": {
        "shape": "DeviceStatusDetail"
      }
    },
    "DeviceStatusInfo": {
      "type": "structure",
      "members": {
        "DeviceStatusDetails": {
          "shape": "DeviceStatusDetails",
          "documentation": "<p>One or more device status detail descriptions.</p>"
        },
        "ConnectionStatus": {
          "shape": "ConnectionStatus",
          "documentation": "<p>The latest available information about the connection status of a device. </p>"
        },
        "ConnectionStatusUpdatedTime": {
          "shape": "ConnectionStatusUpdatedTime",
          "documentation": "<p>The time (in epoch) when the device connection status changed.</p>"
        }
      },
      "documentation": "<p>Detailed information about a device's status.</p>"
    },
    "DeviceType": {
      "type": "string",
      "pattern": "[a-zA-Z0-9]{1,200}"
    },
    "DeviceUsageType": {
      "type": "string",
      "enum": [
        "VOICE"
      ]
    },
    "DisassociateContactFromAddressBookRequest": {
      "type": "structure",
      "required": [
        "ContactArn",
        "AddressBookArn"
      ],
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact to disassociate from an address book.</p>"
        },
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address from which to disassociate the contact.</p>"
        }
      }
    },
    "DisassociateContactFromAddressBookResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateDeviceFromRoomRequest": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device to disassociate from a room. Required.</p>"
        }
      }
    },
    "DisassociateDeviceFromRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateSkillFromSkillGroupRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The unique identifier of a skill. Required.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of a skill group to associate to a skill.</p>"
        }
      }
    },
    "DisassociateSkillFromSkillGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateSkillFromUsersRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p> The private skill ID you want to make unavailable for enrolled users.</p>"
        }
      }
    },
    "DisassociateSkillFromUsersResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateSkillGroupFromRoomRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group to disassociate from a room. Required.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room from which the skill group is to be disassociated. Required.</p>"
        }
      }
    },
    "DisassociateSkillGroupFromRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "DistanceUnit": {
      "type": "string",
      "enum": [
        "METRIC",
        "IMPERIAL"
      ]
    },
    "Email": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "([0-9a-zA-Z]([+-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z]([-\\w]*[0-9a-zA-Z]+)*\\.)+[a-zA-Z]{2,9})"
    },
    "EnablementType": {
      "type": "string",
      "enum": [
        "ENABLED",
        "PENDING"
      ]
    },
    "EnablementTypeFilter": {
      "type": "string",
      "enum": [
        "ENABLED",
        "PENDING"
      ]
    },
    "EndOfMeetingReminder": {
      "type": "structure",
      "members": {
        "ReminderAtMinutes": {
          "shape": "EndOfMeetingReminderMinutesList",
          "documentation": "<p>A range of 3 to 15 minutes that determines when the reminder begins.</p>"
        },
        "ReminderType": {
          "shape": "EndOfMeetingReminderType",
          "documentation": "<p>The type of sound that users hear during the end of meeting reminder. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether an end of meeting reminder is enabled or not.</p>"
        }
      },
      "documentation": "<p>Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>"
    },
    "EndOfMeetingReminderMinutesList": {
      "type": "list",
      "member": {
        "shape": "Minutes"
      },
      "max": 1,
      "min": 1
    },
    "EndOfMeetingReminderType": {
      "type": "string",
      "enum": [
        "ANNOUNCEMENT_TIME_CHECK",
        "ANNOUNCEMENT_VARIABLE_TIME_LEFT",
        "CHIME",
        "KNOCK"
      ]
    },
    "EndUserLicenseAgreement": {
      "type": "string"
    },
    "Endpoint": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "EnrollmentId": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "EnrollmentStatus": {
      "type": "string",
      "enum": [
        "INITIALIZED",
        "PENDING",
        "REGISTERED",
        "DISASSOCIATING",
        "DEREGISTERING"
      ]
    },
    "Feature": {
      "type": "string",
      "enum": [
        "BLUETOOTH",
        "VOLUME",
        "NOTIFICATIONS",
        "LISTS",
        "SKILLS",
        "NETWORK_PROFILE",
        "SETTINGS",
        "ALL"
      ]
    },
    "Features": {
      "type": "list",
      "member": {
        "shape": "Feature"
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "Key",
        "Values"
      ],
      "members": {
        "Key": {
          "shape": "FilterKey",
          "documentation": "<p>The key of a filter.</p>"
        },
        "Values": {
          "shape": "FilterValueList",
          "documentation": "<p>The values of a filter.</p>"
        }
      },
      "documentation": "<p>A filter name and value pair that is used to return a more specific list of results. Filters can be used to match a set of resources by various criteria.</p>"
    },
    "FilterKey": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter"
      },
      "max": 25
    },
    "FilterValue": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "FilterValueList": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      },
      "max": 50
    },
    "ForgetSmartHomeAppliancesRequest": {
      "type": "structure",
      "required": [
        "RoomArn"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room that the appliances are associated with.</p>"
        }
      }
    },
    "ForgetSmartHomeAppliancesResponse": {
      "type": "structure",
      "members": {}
    },
    "Gateway": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway.</p>"
        },
        "Name": {
          "shape": "GatewayName",
          "documentation": "<p>The name of the gateway.</p>"
        },
        "Description": {
          "shape": "GatewayDescription",
          "documentation": "<p>The description of the gateway.</p>"
        },
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group that the gateway is associated to.</p>"
        },
        "SoftwareVersion": {
          "shape": "GatewayVersion",
          "documentation": "<p>The software version of the gateway. The gateway automatically updates its software version during normal operation.</p>"
        }
      },
      "documentation": "<p>The details of the gateway. </p>"
    },
    "GatewayDescription": {
      "type": "string",
      "max": 200,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "GatewayGroup": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group.</p>"
        },
        "Name": {
          "shape": "GatewayGroupName",
          "documentation": "<p>The name of the gateway group.</p>"
        },
        "Description": {
          "shape": "GatewayGroupDescription",
          "documentation": "<p>The description of the gateway group.</p>"
        }
      },
      "documentation": "<p>The details of the gateway group.</p>"
    },
    "GatewayGroupDescription": {
      "type": "string",
      "max": 200,
      "min": 0
    },
    "GatewayGroupName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "GatewayGroupSummaries": {
      "type": "list",
      "member": {
        "shape": "GatewayGroupSummary"
      }
    },
    "GatewayGroupSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group.</p>"
        },
        "Name": {
          "shape": "GatewayGroupName",
          "documentation": "<p>The name of the gateway group.</p>"
        },
        "Description": {
          "shape": "GatewayGroupDescription",
          "documentation": "<p>The description of the gateway group.</p>"
        }
      },
      "documentation": "<p>The summary of a gateway group.</p>"
    },
    "GatewayName": {
      "type": "string",
      "max": 253,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "GatewaySummaries": {
      "type": "list",
      "member": {
        "shape": "GatewaySummary"
      }
    },
    "GatewaySummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway.</p>"
        },
        "Name": {
          "shape": "GatewayName",
          "documentation": "<p>The name of the gateway.</p>"
        },
        "Description": {
          "shape": "GatewayDescription",
          "documentation": "<p>The description of the gateway.</p>"
        },
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group that the gateway is associated to.</p>"
        },
        "SoftwareVersion": {
          "shape": "GatewayVersion",
          "documentation": "<p>The software version of the gateway. The gateway automatically updates its software version during normal operation.</p>"
        }
      },
      "documentation": "<p>The summary of a gateway.</p>"
    },
    "GatewayVersion": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "GenericKeyword": {
      "type": "string"
    },
    "GenericKeywords": {
      "type": "list",
      "member": {
        "shape": "GenericKeyword"
      }
    },
    "GetAddressBookRequest": {
      "type": "structure",
      "required": [
        "AddressBookArn"
      ],
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book for which to request details.</p>"
        }
      }
    },
    "GetAddressBookResponse": {
      "type": "structure",
      "members": {
        "AddressBook": {
          "shape": "AddressBook",
          "documentation": "<p>The details of the requested address book.</p>"
        }
      }
    },
    "GetConferencePreferenceRequest": {
      "type": "structure",
      "members": {}
    },
    "GetConferencePreferenceResponse": {
      "type": "structure",
      "members": {
        "Preference": {
          "shape": "ConferencePreference",
          "documentation": "<p>The conference preference.</p>"
        }
      }
    },
    "GetConferenceProviderRequest": {
      "type": "structure",
      "required": [
        "ConferenceProviderArn"
      ],
      "members": {
        "ConferenceProviderArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the newly created conference provider.</p>"
        }
      }
    },
    "GetConferenceProviderResponse": {
      "type": "structure",
      "members": {
        "ConferenceProvider": {
          "shape": "ConferenceProvider",
          "documentation": "<p>The conference provider.</p>"
        }
      }
    },
    "GetContactRequest": {
      "type": "structure",
      "required": [
        "ContactArn"
      ],
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact for which to request details.</p>"
        }
      }
    },
    "GetContactResponse": {
      "type": "structure",
      "members": {
        "Contact": {
          "shape": "Contact",
          "documentation": "<p>The details of the requested contact.</p>"
        }
      }
    },
    "GetDeviceRequest": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device for which to request details. Required.</p>"
        }
      }
    },
    "GetDeviceResponse": {
      "type": "structure",
      "members": {
        "Device": {
          "shape": "Device",
          "documentation": "<p>The details of the device requested. Required.</p>"
        }
      }
    },
    "GetGatewayGroupRequest": {
      "type": "structure",
      "required": [
        "GatewayGroupArn"
      ],
      "members": {
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group to get.</p>"
        }
      }
    },
    "GetGatewayGroupResponse": {
      "type": "structure",
      "members": {
        "GatewayGroup": {
          "shape": "GatewayGroup"
        }
      }
    },
    "GetGatewayRequest": {
      "type": "structure",
      "required": [
        "GatewayArn"
      ],
      "members": {
        "GatewayArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway to get.</p>"
        }
      }
    },
    "GetGatewayResponse": {
      "type": "structure",
      "members": {
        "Gateway": {
          "shape": "Gateway",
          "documentation": "<p>The details of the gateway.</p>"
        }
      }
    },
    "GetInvitationConfigurationRequest": {
      "type": "structure",
      "members": {}
    },
    "GetInvitationConfigurationResponse": {
      "type": "structure",
      "members": {
        "OrganizationName": {
          "shape": "OrganizationName",
          "documentation": "<p>The name of the organization sending the enrollment invite to a user.</p>"
        },
        "ContactEmail": {
          "shape": "Email",
          "documentation": "<p>The email ID of the organization or individual contact that the enrolled user can use. </p>"
        },
        "PrivateSkillIds": {
          "shape": "ShortSkillIdList",
          "documentation": "<p>The list of private skill IDs that you want to recommend to the user to enable in the invitation.</p>"
        }
      }
    },
    "GetNetworkProfileRequest": {
      "type": "structure",
      "required": [
        "NetworkProfileArn"
      ],
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        }
      }
    },
    "GetNetworkProfileResponse": {
      "type": "structure",
      "members": {
        "NetworkProfile": {
          "shape": "NetworkProfile",
          "documentation": "<p>The network profile associated with a device.</p>"
        }
      }
    },
    "GetProfileRequest": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room profile for which to request details. Required.</p>"
        }
      }
    },
    "GetProfileResponse": {
      "type": "structure",
      "members": {
        "Profile": {
          "shape": "Profile",
          "documentation": "<p>The details of the room profile requested. Required.</p>"
        }
      }
    },
    "GetRoomRequest": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room for which to request details. Required.</p>"
        }
      }
    },
    "GetRoomResponse": {
      "type": "structure",
      "members": {
        "Room": {
          "shape": "Room",
          "documentation": "<p>The details of the room requested.</p>"
        }
      }
    },
    "GetRoomSkillParameterRequest": {
      "type": "structure",
      "required": [
        "SkillId",
        "ParameterKey"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room from which to get the room skill parameter details. </p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of the skill from which to get the room skill parameter details. Required.</p>"
        },
        "ParameterKey": {
          "shape": "RoomSkillParameterKey",
          "documentation": "<p>The room skill parameter key for which to get details. Required.</p>"
        }
      }
    },
    "GetRoomSkillParameterResponse": {
      "type": "structure",
      "members": {
        "RoomSkillParameter": {
          "shape": "RoomSkillParameter",
          "documentation": "<p>The details of the room skill parameter requested. Required.</p>"
        }
      }
    },
    "GetSkillGroupRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group for which to get details. Required.</p>"
        }
      }
    },
    "GetSkillGroupResponse": {
      "type": "structure",
      "members": {
        "SkillGroup": {
          "shape": "SkillGroup",
          "documentation": "<p>The details of the skill group requested. Required.</p>"
        }
      }
    },
    "IPDialIn": {
      "type": "structure",
      "required": [
        "Endpoint",
        "CommsProtocol"
      ],
      "members": {
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The IP address.</p>"
        },
        "CommsProtocol": {
          "shape": "CommsProtocol",
          "documentation": "<p>The protocol, including SIP, SIPS, and H323.</p>"
        }
      },
      "documentation": "<p>The IP endpoint and protocol for calling.</p>"
    },
    "IconUrl": {
      "type": "string"
    },
    "InstantBooking": {
      "type": "structure",
      "members": {
        "DurationInMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book an available room when a meeting is started with Alexa. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether instant booking is enabled or not.</p>"
        }
      },
      "documentation": "<p>Settings for the instant booking feature that are applied to a room profile. When users start their meeting with Alexa, Alexa automatically books the room for the configured duration if the room is available.</p>"
    },
    "InvocationPhrase": {
      "type": "string"
    },
    "Key": {
      "type": "string",
      "min": 1
    },
    "ListBusinessReportSchedulesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to list the remaining schedules from the previous API call.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of schedules listed in the call.</p>"
        }
      }
    },
    "ListBusinessReportSchedulesResponse": {
      "type": "structure",
      "members": {
        "BusinessReportSchedules": {
          "shape": "BusinessReportScheduleList",
          "documentation": "<p>The schedule of the reports.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to list the remaining schedules from the previous API call.</p>"
        }
      }
    },
    "ListConferenceProvidersRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of conference providers to be returned, per paginated calls.</p>"
        }
      }
    },
    "ListConferenceProvidersResponse": {
      "type": "structure",
      "members": {
        "ConferenceProviders": {
          "shape": "ConferenceProvidersList",
          "documentation": "<p>The conference providers.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        }
      }
    },
    "ListDeviceEventsRequest": {
      "type": "structure",
      "required": [
        "DeviceArn"
      ],
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a device.</p>"
        },
        "EventType": {
          "shape": "DeviceEventType",
          "documentation": "<p>The event type to filter device events. If EventType isn't specified, this returns a list of all device events in reverse chronological order. If EventType is specified, this returns a list of device events for that EventType in reverse chronological order. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults. When the end of results is reached, the response has a value of null.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. The default value is 50. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. </p>"
        }
      }
    },
    "ListDeviceEventsResponse": {
      "type": "structure",
      "members": {
        "DeviceEvents": {
          "shape": "DeviceEventList",
          "documentation": "<p>The device events requested for the device ARN.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        }
      }
    },
    "ListGatewayGroupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate though multiple pages of gateway group summaries.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of gateway group summaries to return. The default is 50.</p>"
        }
      }
    },
    "ListGatewayGroupsResponse": {
      "type": "structure",
      "members": {
        "GatewayGroups": {
          "shape": "GatewayGroupSummaries",
          "documentation": "<p>The gateway groups in the list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate though multiple pages of gateway group summaries.</p>"
        }
      }
    },
    "ListGatewaysRequest": {
      "type": "structure",
      "members": {
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The gateway group ARN for which to list gateways.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate though multiple pages of gateway summaries.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of gateway summaries to return. The default is 50.</p>"
        }
      }
    },
    "ListGatewaysResponse": {
      "type": "structure",
      "members": {
        "Gateways": {
          "shape": "GatewaySummaries",
          "documentation": "<p>The gateways in the list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token used to paginate though multiple pages of gateway summaries.</p>"
        }
      }
    },
    "ListSkillsRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group for which to list enabled skills.</p>"
        },
        "EnablementType": {
          "shape": "EnablementTypeFilter",
          "documentation": "<p>Whether the skill is enabled under the user's account.</p>"
        },
        "SkillType": {
          "shape": "SkillTypeFilter",
          "documentation": "<p>Whether the skill is publicly available or is a private skill.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        },
        "MaxResults": {
          "shape": "SkillListMaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>"
        }
      }
    },
    "ListSkillsResponse": {
      "type": "structure",
      "members": {
        "SkillSummaries": {
          "shape": "SkillSummaryList",
          "documentation": "<p>The list of enabled skills requested. Required.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        }
      }
    },
    "ListSkillsStoreCategoriesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of categories returned, per paginated calls.</p>"
        }
      }
    },
    "ListSkillsStoreCategoriesResponse": {
      "type": "structure",
      "members": {
        "CategoryList": {
          "shape": "CategoryList",
          "documentation": "<p>The list of categories.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        }
      }
    },
    "ListSkillsStoreSkillsByCategoryRequest": {
      "type": "structure",
      "required": [
        "CategoryId"
      ],
      "members": {
        "CategoryId": {
          "shape": "CategoryId",
          "documentation": "<p>The category ID for which the skills are being retrieved from the skill store.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        },
        "MaxResults": {
          "shape": "SkillListMaxResults",
          "documentation": "<p>The maximum number of skills returned per paginated calls.</p>"
        }
      }
    },
    "ListSkillsStoreSkillsByCategoryResponse": {
      "type": "structure",
      "members": {
        "SkillsStoreSkills": {
          "shape": "SkillsStoreSkillList",
          "documentation": "<p>The skill store skills.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        }
      }
    },
    "ListSmartHomeAppliancesRequest": {
      "type": "structure",
      "required": [
        "RoomArn"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room that the appliances are associated with.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of appliances to be returned, per paginated calls.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        }
      }
    },
    "ListSmartHomeAppliancesResponse": {
      "type": "structure",
      "members": {
        "SmartHomeAppliances": {
          "shape": "SmartHomeApplianceList",
          "documentation": "<p>The smart home appliances.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The tokens used for pagination.</p>"
        }
      }
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the specified resource for which to list tags.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>"
        }
      }
    },
    "ListTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags requested for the specified resource.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        }
      }
    },
    "Locale": {
      "type": "string",
      "enum": [
        "en-US"
      ]
    },
    "MacAddress": {
      "type": "string"
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxVolumeLimit": {
      "type": "integer"
    },
    "MeetingRoomConfiguration": {
      "type": "structure",
      "members": {
        "RoomUtilizationMetricsEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether room utilization metrics are enabled or not.</p>"
        },
        "EndOfMeetingReminder": {
          "shape": "EndOfMeetingReminder",
          "documentation": "<p>Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>"
        },
        "InstantBooking": {
          "shape": "InstantBooking",
          "documentation": "<p>Settings to automatically book the room if available for a configured duration when joining a meeting with Alexa. </p>"
        },
        "RequireCheckIn": {
          "shape": "RequireCheckIn",
          "documentation": "<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into. This makes the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.” </p>"
        }
      },
      "documentation": "<p>Meeting room settings of a room profile.</p>"
    },
    "MeetingSetting": {
      "type": "structure",
      "required": [
        "RequirePin"
      ],
      "members": {
        "RequirePin": {
          "shape": "RequirePin",
          "documentation": "<p>The values that indicate whether the pin is always required.</p>"
        }
      },
      "documentation": "<p>The values that indicate whether a pin is always required (YES), never required (NO), or OPTIONAL.</p> <ul> <li> <p>If YES, Alexa will always ask for a meeting pin.</p> </li> <li> <p>If NO, Alexa will never ask for a meeting pin.</p> </li> <li> <p>If OPTIONAL, Alexa will ask if you have a meeting pin and if the customer responds with yes, it will ask for the meeting pin.</p> </li> </ul>"
    },
    "Minutes": {
      "type": "integer"
    },
    "NetworkEapMethod": {
      "type": "string",
      "enum": [
        "EAP_TLS"
      ]
    },
    "NetworkProfile": {
      "type": "structure",
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        },
        "NetworkProfileName": {
          "shape": "NetworkProfileName",
          "documentation": "<p>The name of the network profile associated with a device.</p>"
        },
        "Description": {
          "shape": "NetworkProfileDescription",
          "documentation": "<p>Detailed information about a device's network profile.</p>"
        },
        "Ssid": {
          "shape": "NetworkSsid",
          "documentation": "<p>The SSID of the Wi-Fi network.</p>"
        },
        "SecurityType": {
          "shape": "NetworkSecurityType",
          "documentation": "<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.</p>"
        },
        "EapMethod": {
          "shape": "NetworkEapMethod",
          "documentation": "<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported. </p>"
        },
        "CurrentPassword": {
          "shape": "CurrentWiFiPassword",
          "documentation": "<p>The current password of the Wi-Fi network.</p>"
        },
        "NextPassword": {
          "shape": "NextWiFiPassword",
          "documentation": "<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword. </p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices. </p>"
        },
        "TrustAnchors": {
          "shape": "TrustAnchorList",
          "documentation": "<p>The root certificates of your authentication server, which is installed on your devices and used to trust your authentication server during EAP negotiation.</p>"
        }
      },
      "documentation": "<p>The network profile associated with a device.</p>"
    },
    "NetworkProfileData": {
      "type": "structure",
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        },
        "NetworkProfileName": {
          "shape": "NetworkProfileName",
          "documentation": "<p>The name of the network profile associated with a device.</p>"
        },
        "Description": {
          "shape": "NetworkProfileDescription",
          "documentation": "<p>Detailed information about a device's network profile.</p>"
        },
        "Ssid": {
          "shape": "NetworkSsid",
          "documentation": "<p>The SSID of the Wi-Fi network.</p>"
        },
        "SecurityType": {
          "shape": "NetworkSecurityType",
          "documentation": "<p>The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.</p>"
        },
        "EapMethod": {
          "shape": "NetworkEapMethod",
          "documentation": "<p>The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.</p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices.</p>"
        }
      },
      "documentation": "<p>The data associated with a network profile.</p>"
    },
    "NetworkProfileDataList": {
      "type": "list",
      "member": {
        "shape": "NetworkProfileData"
      }
    },
    "NetworkProfileDescription": {
      "type": "string",
      "max": 200,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "NetworkProfileName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "NetworkSecurityType": {
      "type": "string",
      "enum": [
        "OPEN",
        "WEP",
        "WPA_PSK",
        "WPA2_PSK",
        "WPA2_ENTERPRISE"
      ]
    },
    "NetworkSsid": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "NewInThisVersionBulletPoints": {
      "type": "list",
      "member": {
        "shape": "BulletPoint"
      }
    },
    "NextToken": {
      "type": "string",
      "max": 1100,
      "min": 1
    },
    "NextWiFiPassword": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "(^$)|([\\x00-\\x7F]{5,})",
      "sensitive": true
    },
    "OneClickIdDelay": {
      "type": "string",
      "max": 2,
      "min": 1
    },
    "OneClickPinDelay": {
      "type": "string",
      "max": 2,
      "min": 1
    },
    "OrganizationName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "OutboundPhoneNumber": {
      "type": "string",
      "pattern": "\\d{10}"
    },
    "PSTNDialIn": {
      "type": "structure",
      "required": [
        "CountryCode",
        "PhoneNumber",
        "OneClickIdDelay",
        "OneClickPinDelay"
      ],
      "members": {
        "CountryCode": {
          "shape": "CountryCode",
          "documentation": "<p>The zip code.</p>"
        },
        "PhoneNumber": {
          "shape": "OutboundPhoneNumber",
          "documentation": "<p>The phone number to call to join the conference.</p>"
        },
        "OneClickIdDelay": {
          "shape": "OneClickIdDelay",
          "documentation": "<p>The delay duration before Alexa enters the conference ID with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>"
        },
        "OneClickPinDelay": {
          "shape": "OneClickPinDelay",
          "documentation": "<p>The delay duration before Alexa enters the conference pin with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>"
        }
      },
      "documentation": "<p>The information for public switched telephone network (PSTN) conferencing.</p>"
    },
    "PhoneNumber": {
      "type": "structure",
      "required": [
        "Number",
        "Type"
      ],
      "members": {
        "Number": {
          "shape": "RawPhoneNumber",
          "documentation": "<p>The raw value of the phone number.</p>"
        },
        "Type": {
          "shape": "PhoneNumberType",
          "documentation": "<p>The type of the phone number.</p>"
        }
      },
      "documentation": "<p>The phone number for the contact containing the raw number and phone number type.</p>"
    },
    "PhoneNumberList": {
      "type": "list",
      "member": {
        "shape": "PhoneNumber"
      },
      "max": 3,
      "min": 0
    },
    "PhoneNumberType": {
      "type": "string",
      "enum": [
        "MOBILE",
        "WORK",
        "HOME"
      ],
      "sensitive": true
    },
    "PrivacyPolicy": {
      "type": "string"
    },
    "ProductDescription": {
      "type": "string"
    },
    "ProductId": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_]{1,256}$"
    },
    "Profile": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a room profile.</p>"
        },
        "ProfileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of a room profile.</p>"
        },
        "IsDefault": {
          "shape": "Boolean",
          "documentation": "<p>Retrieves if the profile is default or not.</p>"
        },
        "Address": {
          "shape": "Address",
          "documentation": "<p>The address of a room profile.</p>"
        },
        "Timezone": {
          "shape": "Timezone",
          "documentation": "<p>The time zone of a room profile.</p>"
        },
        "DistanceUnit": {
          "shape": "DistanceUnit",
          "documentation": "<p>The distance unit of a room profile.</p>"
        },
        "TemperatureUnit": {
          "shape": "TemperatureUnit",
          "documentation": "<p>The temperature unit of a room profile.</p>"
        },
        "WakeWord": {
          "shape": "WakeWord",
          "documentation": "<p>The wake word of a room profile.</p>"
        },
        "Locale": {
          "shape": "DeviceLocale",
          "documentation": "<p>The locale of a room profile. (This is currently available only to a limited preview audience.)</p>"
        },
        "SetupModeDisabled": {
          "shape": "Boolean",
          "documentation": "<p>The setup mode of a room profile.</p>"
        },
        "MaxVolumeLimit": {
          "shape": "MaxVolumeLimit",
          "documentation": "<p>The max volume limit of a room profile.</p>"
        },
        "PSTNEnabled": {
          "shape": "Boolean",
          "documentation": "<p>The PSTN setting of a room profile.</p>"
        },
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the address book.</p>"
        },
        "MeetingRoomConfiguration": {
          "shape": "MeetingRoomConfiguration",
          "documentation": "<p>Meeting room settings of a room profile.</p>"
        }
      },
      "documentation": "<p>A room profile with attributes.</p>"
    },
    "ProfileData": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a room profile.</p>"
        },
        "ProfileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of a room profile.</p>"
        },
        "IsDefault": {
          "shape": "Boolean",
          "documentation": "<p>Retrieves if the profile data is default or not.</p>"
        },
        "Address": {
          "shape": "Address",
          "documentation": "<p>The address of a room profile.</p>"
        },
        "Timezone": {
          "shape": "Timezone",
          "documentation": "<p>The time zone of a room profile.</p>"
        },
        "DistanceUnit": {
          "shape": "DistanceUnit",
          "documentation": "<p>The distance unit of a room profile.</p>"
        },
        "TemperatureUnit": {
          "shape": "TemperatureUnit",
          "documentation": "<p>The temperature unit of a room profile.</p>"
        },
        "WakeWord": {
          "shape": "WakeWord",
          "documentation": "<p>The wake word of a room profile.</p>"
        },
        "Locale": {
          "shape": "DeviceLocale",
          "documentation": "<p>The locale of a room profile. (This is currently available only to a limited preview audience.)</p>"
        }
      },
      "documentation": "<p>The data of a room profile.</p>"
    },
    "ProfileDataList": {
      "type": "list",
      "member": {
        "shape": "ProfileData"
      }
    },
    "ProfileName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "ProviderCalendarId": {
      "type": "string",
      "max": 100,
      "min": 0
    },
    "PutConferencePreferenceRequest": {
      "type": "structure",
      "required": [
        "ConferencePreference"
      ],
      "members": {
        "ConferencePreference": {
          "shape": "ConferencePreference",
          "documentation": "<p>The conference preference of a specific conference provider.</p>"
        }
      }
    },
    "PutConferencePreferenceResponse": {
      "type": "structure",
      "members": {}
    },
    "PutInvitationConfigurationRequest": {
      "type": "structure",
      "required": [
        "OrganizationName"
      ],
      "members": {
        "OrganizationName": {
          "shape": "OrganizationName",
          "documentation": "<p>The name of the organization sending the enrollment invite to a user.</p>"
        },
        "ContactEmail": {
          "shape": "Email",
          "documentation": "<p>The email ID of the organization or individual contact that the enrolled user can use. </p>"
        },
        "PrivateSkillIds": {
          "shape": "ShortSkillIdList",
          "documentation": "<p>The list of private skill IDs that you want to recommend to the user to enable in the invitation.</p>"
        }
      }
    },
    "PutInvitationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "PutRoomSkillParameterRequest": {
      "type": "structure",
      "required": [
        "SkillId",
        "RoomSkillParameter"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room associated with the room skill parameter. Required.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of the skill associated with the room skill parameter. Required.</p>"
        },
        "RoomSkillParameter": {
          "shape": "RoomSkillParameter",
          "documentation": "<p>The updated room skill parameter. Required.</p>"
        }
      }
    },
    "PutRoomSkillParameterResponse": {
      "type": "structure",
      "members": {}
    },
    "PutSkillAuthorizationRequest": {
      "type": "structure",
      "required": [
        "AuthorizationResult",
        "SkillId"
      ],
      "members": {
        "AuthorizationResult": {
          "shape": "AuthorizationResult",
          "documentation": "<p>The authorization result specific to OAUTH code grant output. \"Code” must be populated in the AuthorizationResult map to establish the authorization.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The unique identifier of a skill.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room that the skill is authorized for.</p>"
        }
      }
    },
    "PutSkillAuthorizationResponse": {
      "type": "structure",
      "members": {}
    },
    "RawPhoneNumber": {
      "type": "string",
      "max": 50,
      "min": 0,
      "pattern": "^[\\+0-9\\#\\,\\(][\\+0-9\\-\\.\\/\\(\\)\\,\\#\\s]+$",
      "sensitive": true
    },
    "RegisterAVSDeviceRequest": {
      "type": "structure",
      "required": [
        "ClientId",
        "UserCode",
        "ProductId",
        "AmazonId"
      ],
      "members": {
        "ClientId": {
          "shape": "ClientId",
          "documentation": "<p>The client ID of the OEM used for code-based linking authorization on an AVS device.</p>"
        },
        "UserCode": {
          "shape": "UserCode",
          "documentation": "<p>The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.</p>"
        },
        "ProductId": {
          "shape": "ProductId",
          "documentation": "<p>The product ID used to identify your AVS device during authorization.</p>"
        },
        "DeviceSerialNumber": {
          "shape": "DeviceSerialNumberForAVS",
          "documentation": "<p>The key generated by the OEM that uniquely identifies a specified instance of your AVS device.</p>"
        },
        "AmazonId": {
          "shape": "AmazonId",
          "documentation": "<p>The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console.</p>"
        },
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room with which to associate your AVS device.</p>"
        }
      }
    },
    "RegisterAVSDeviceResponse": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device.</p>"
        }
      }
    },
    "RejectSkillRequest": {
      "type": "structure",
      "required": [
        "SkillId"
      ],
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The unique identifier of the skill.</p>"
        }
      }
    },
    "RejectSkillResponse": {
      "type": "structure",
      "members": {}
    },
    "ReleaseDate": {
      "type": "string"
    },
    "RequireCheckIn": {
      "type": "structure",
      "members": {
        "ReleaseAfterMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether require check in is enabled or not.</p>"
        }
      },
      "documentation": "<p>Settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>"
    },
    "RequirePin": {
      "type": "string",
      "enum": [
        "YES",
        "NO",
        "OPTIONAL"
      ]
    },
    "ResolveRoomRequest": {
      "type": "structure",
      "required": [
        "UserId",
        "SkillId"
      ],
      "members": {
        "UserId": {
          "shape": "UserId",
          "documentation": "<p>The ARN of the user. Required.</p>"
        },
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of the skill that was requested. Required.</p>"
        }
      }
    },
    "ResolveRoomResponse": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room from which the skill request was invoked.</p>"
        },
        "RoomName": {
          "shape": "RoomName",
          "documentation": "<p>The name of the room from which the skill request was invoked.</p>"
        },
        "RoomSkillParameters": {
          "shape": "RoomSkillParameters",
          "documentation": "<p>Response to get the room profile request. Required.</p>"
        }
      }
    },
    "ReviewKey": {
      "type": "string"
    },
    "ReviewValue": {
      "type": "string"
    },
    "Reviews": {
      "type": "map",
      "key": {
        "shape": "ReviewKey"
      },
      "value": {
        "shape": "ReviewValue"
      }
    },
    "RevokeInvitationRequest": {
      "type": "structure",
      "members": {
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the user for whom to revoke an enrollment invitation. Required.</p>"
        },
        "EnrollmentId": {
          "shape": "EnrollmentId",
          "documentation": "<p>The ARN of the enrollment invitation to revoke. Required.</p>"
        }
      }
    },
    "RevokeInvitationResponse": {
      "type": "structure",
      "members": {}
    },
    "Room": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a room.</p>"
        },
        "RoomName": {
          "shape": "RoomName",
          "documentation": "<p>The name of a room.</p>"
        },
        "Description": {
          "shape": "RoomDescription",
          "documentation": "<p>The description of a room.</p>"
        },
        "ProviderCalendarId": {
          "shape": "ProviderCalendarId",
          "documentation": "<p>The provider calendar ARN of a room.</p>"
        },
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The profile ARN of a room.</p>"
        }
      },
      "documentation": "<p>A room with attributes.</p>"
    },
    "RoomData": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a room.</p>"
        },
        "RoomName": {
          "shape": "RoomName",
          "documentation": "<p>The name of a room.</p>"
        },
        "Description": {
          "shape": "RoomDescription",
          "documentation": "<p>The description of a room.</p>"
        },
        "ProviderCalendarId": {
          "shape": "ProviderCalendarId",
          "documentation": "<p>The provider calendar ARN of a room.</p>"
        },
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The profile ARN of a room.</p>"
        },
        "ProfileName": {
          "shape": "ProfileName",
          "documentation": "<p>The profile name of a room.</p>"
        }
      },
      "documentation": "<p>The data of a room.</p>"
    },
    "RoomDataList": {
      "type": "list",
      "member": {
        "shape": "RoomData"
      }
    },
    "RoomDescription": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "RoomName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "RoomSkillParameter": {
      "type": "structure",
      "required": [
        "ParameterKey",
        "ParameterValue"
      ],
      "members": {
        "ParameterKey": {
          "shape": "RoomSkillParameterKey",
          "documentation": "<p>The parameter key of a room skill parameter. ParameterKey is an enumerated type that only takes “DEFAULT” or “SCOPE” as valid values.</p>"
        },
        "ParameterValue": {
          "shape": "RoomSkillParameterValue",
          "documentation": "<p>The parameter value of a room skill parameter.</p>"
        }
      },
      "documentation": "<p>A skill parameter associated with a room.</p>"
    },
    "RoomSkillParameterKey": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "RoomSkillParameterValue": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "RoomSkillParameters": {
      "type": "list",
      "member": {
        "shape": "RoomSkillParameter"
      }
    },
    "S3KeyPrefix": {
      "type": "string",
      "max": 100,
      "min": 0,
      "pattern": "[A-Za-z0-9!_\\-\\.\\*'()/]*"
    },
    "SampleUtterances": {
      "type": "list",
      "member": {
        "shape": "Utterance"
      }
    },
    "SearchAddressBooksRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of address books. The supported filter key is AddressBookName.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
        }
      }
    },
    "SearchAddressBooksResponse": {
      "type": "structure",
      "members": {
        "AddressBooks": {
          "shape": "AddressBookDataList",
          "documentation": "<p>The address books that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of address books returned.</p>"
        }
      }
    },
    "SearchContactsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>"
        }
      }
    },
    "SearchContactsResponse": {
      "type": "structure",
      "members": {
        "Contacts": {
          "shape": "ContactDataList",
          "documentation": "<p>The contacts that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of contacts returned.</p>"
        }
      }
    },
    "SearchDevicesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, ConnectionStatus, NetworkProfileName, NetworkProfileArn, Feature, and FailureCode.</p>"
        }
      }
    },
    "SearchDevicesResponse": {
      "type": "structure",
      "members": {
        "Devices": {
          "shape": "DeviceDataList",
          "documentation": "<p>The devices that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of devices returned.</p>"
        }
      }
    },
    "SearchNetworkProfilesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of network profiles. Valid filters are NetworkProfileName, Ssid, and SecurityType.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use to list the specified set of network profiles. Valid sort criteria includes NetworkProfileName, Ssid, and SecurityType.</p>"
        }
      }
    },
    "SearchNetworkProfilesResponse": {
      "type": "structure",
      "members": {
        "NetworkProfiles": {
          "shape": "NetworkProfileDataList",
          "documentation": "<p>The network profiles that meet the specified set of filter criteria, in sort order. It is a list of NetworkProfileData objects. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by MaxResults.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of network profiles returned.</p>"
        }
      }
    },
    "SearchProfilesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required. </p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.</p>"
        }
      }
    },
    "SearchProfilesResponse": {
      "type": "structure",
      "members": {
        "Profiles": {
          "shape": "ProfileDataList",
          "documentation": "<p>The profiles that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of room profiles returned.</p>"
        }
      }
    },
    "SearchRoomsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.</p>"
        }
      }
    },
    "SearchRoomsResponse": {
      "type": "structure",
      "members": {
        "Rooms": {
          "shape": "RoomDataList",
          "documentation": "<p>The rooms that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of rooms returned.</p>"
        }
      }
    },
    "SearchSkillGroupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. Required.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName. </p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName. </p>"
        }
      }
    },
    "SearchSkillGroupsResponse": {
      "type": "structure",
      "members": {
        "SkillGroups": {
          "shape": "SkillGroupDataList",
          "documentation": "<p>The skill groups that meet the filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of skill groups returned.</p>"
        }
      }
    },
    "SearchUsersRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. Required.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. Required.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>"
        },
        "SortCriteria": {
          "shape": "SortList",
          "documentation": "<p>The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>"
        }
      }
    },
    "SearchUsersResponse": {
      "type": "structure",
      "members": {
        "Users": {
          "shape": "UserDataList",
          "documentation": "<p>The users that meet the specified set of filter criteria, in sort order.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned to indicate that there is more data available.</p>"
        },
        "TotalCount": {
          "shape": "TotalCount",
          "documentation": "<p>The total number of users returned.</p>"
        }
      }
    },
    "SendAnnouncementRequest": {
      "type": "structure",
      "required": [
        "RoomFilters",
        "Content",
        "ClientRequestToken"
      ],
      "members": {
        "RoomFilters": {
          "shape": "FilterList",
          "documentation": "<p>The filters to use to send an announcement to a specified list of rooms. The supported filter keys are RoomName, ProfileName, RoomArn, and ProfileArn. To send to all rooms, specify an empty RoomFilters list.</p>"
        },
        "Content": {
          "shape": "Content",
          "documentation": "<p>The announcement content. This can contain only one of the three possible announcement types (text, SSML or audio).</p>"
        },
        "TimeToLiveInSeconds": {
          "shape": "TimeToLiveInSeconds",
          "documentation": "<p>The time to live for an announcement. Default is 300. If delivery doesn't occur within this time, the announcement is not delivered.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The unique, user-specified identifier for the request that ensures idempotency.</p>",
          "idempotencyToken": true
        }
      }
    },
    "SendAnnouncementResponse": {
      "type": "structure",
      "members": {
        "AnnouncementArn": {
          "shape": "Arn",
          "documentation": "<p>The identifier of the announcement.</p>"
        }
      }
    },
    "SendInvitationRequest": {
      "type": "structure",
      "members": {
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the user to whom to send an invitation. Required.</p>"
        }
      }
    },
    "SendInvitationResponse": {
      "type": "structure",
      "members": {}
    },
    "ShortDescription": {
      "type": "string"
    },
    "ShortSkillIdList": {
      "type": "list",
      "member": {
        "shape": "SkillId"
      },
      "max": 3,
      "min": 0
    },
    "SipAddress": {
      "type": "structure",
      "required": [
        "Uri",
        "Type"
      ],
      "members": {
        "Uri": {
          "shape": "SipUri",
          "documentation": "<p>The URI for the SIP address.</p>"
        },
        "Type": {
          "shape": "SipType",
          "documentation": "<p>The type of the SIP address.</p>"
        }
      },
      "documentation": "<p>The SIP address for the contact containing the URI and SIP address type.</p>"
    },
    "SipAddressList": {
      "type": "list",
      "member": {
        "shape": "SipAddress"
      },
      "max": 1,
      "min": 0
    },
    "SipType": {
      "type": "string",
      "enum": [
        "WORK"
      ],
      "sensitive": true
    },
    "SipUri": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^sip[s]?:([^@:]+)\\@([^@]+)$",
      "sensitive": true
    },
    "SkillDetails": {
      "type": "structure",
      "members": {
        "ProductDescription": {
          "shape": "ProductDescription",
          "documentation": "<p>The description of the product.</p>"
        },
        "InvocationPhrase": {
          "shape": "InvocationPhrase",
          "documentation": "<p>The phrase used to trigger the skill.</p>"
        },
        "ReleaseDate": {
          "shape": "ReleaseDate",
          "documentation": "<p>The date when the skill was released.</p>"
        },
        "EndUserLicenseAgreement": {
          "shape": "EndUserLicenseAgreement",
          "documentation": "<p>The URL of the end user license agreement.</p>"
        },
        "GenericKeywords": {
          "shape": "GenericKeywords",
          "documentation": "<p>The generic keywords associated with the skill that can be used to find a skill.</p>"
        },
        "BulletPoints": {
          "shape": "BulletPoints",
          "documentation": "<p>The details about what the skill supports organized as bullet points.</p>"
        },
        "NewInThisVersionBulletPoints": {
          "shape": "NewInThisVersionBulletPoints",
          "documentation": "<p>The updates added in bullet points.</p>"
        },
        "SkillTypes": {
          "shape": "SkillTypes",
          "documentation": "<p>The types of skills.</p>"
        },
        "Reviews": {
          "shape": "Reviews",
          "documentation": "<p> <i>This member has been deprecated.</i> </p> <p>The list of reviews for the skill, including Key and Value pair.</p>"
        },
        "DeveloperInfo": {
          "shape": "DeveloperInfo",
          "documentation": "<p>The details about the developer that published the skill.</p>"
        }
      },
      "documentation": "<p>Granular information about the skill.</p>"
    },
    "SkillGroup": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a skill group.</p>"
        },
        "SkillGroupName": {
          "shape": "SkillGroupName",
          "documentation": "<p>The name of a skill group.</p>"
        },
        "Description": {
          "shape": "SkillGroupDescription",
          "documentation": "<p>The description of a skill group.</p>"
        }
      },
      "documentation": "<p>A skill group with attributes.</p>"
    },
    "SkillGroupData": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The skill group ARN of a skill group.</p>"
        },
        "SkillGroupName": {
          "shape": "SkillGroupName",
          "documentation": "<p>The skill group name of a skill group.</p>"
        },
        "Description": {
          "shape": "SkillGroupDescription",
          "documentation": "<p>The description of a skill group.</p>"
        }
      },
      "documentation": "<p>The attributes of a skill group.</p>"
    },
    "SkillGroupDataList": {
      "type": "list",
      "member": {
        "shape": "SkillGroupData"
      }
    },
    "SkillGroupDescription": {
      "type": "string",
      "max": 200,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "SkillGroupName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "SkillId": {
      "type": "string",
      "pattern": "(^amzn1\\.ask\\.skill\\.[0-9a-f\\-]{1,200})|(^amzn1\\.echo-sdk-ams\\.app\\.[0-9a-f\\-]{1,200})"
    },
    "SkillListMaxResults": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "SkillName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "SkillStoreType": {
      "type": "string"
    },
    "SkillSummary": {
      "type": "structure",
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of the skill summary.</p>"
        },
        "SkillName": {
          "shape": "SkillName",
          "documentation": "<p>The name of the skill.</p>"
        },
        "SupportsLinking": {
          "shape": "boolean",
          "documentation": "<p>Linking support for a skill.</p>"
        },
        "EnablementType": {
          "shape": "EnablementType",
          "documentation": "<p>Whether the skill is enabled under the user's account, or if it requires linking to be used.</p>"
        },
        "SkillType": {
          "shape": "SkillType",
          "documentation": "<p>Whether the skill is publicly available or is a private skill.</p>"
        }
      },
      "documentation": "<p>The summary of skills.</p>"
    },
    "SkillSummaryList": {
      "type": "list",
      "member": {
        "shape": "SkillSummary"
      }
    },
    "SkillType": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "PRIVATE"
      ],
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "SkillTypeFilter": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "PRIVATE",
        "ALL"
      ]
    },
    "SkillTypes": {
      "type": "list",
      "member": {
        "shape": "SkillStoreType"
      }
    },
    "SkillsStoreSkill": {
      "type": "structure",
      "members": {
        "SkillId": {
          "shape": "SkillId",
          "documentation": "<p>The ARN of the skill.</p>"
        },
        "SkillName": {
          "shape": "SkillName",
          "documentation": "<p>The name of the skill.</p>"
        },
        "ShortDescription": {
          "shape": "ShortDescription",
          "documentation": "<p>Short description about the skill.</p>"
        },
        "IconUrl": {
          "shape": "IconUrl",
          "documentation": "<p>The URL where the skill icon resides.</p>"
        },
        "SampleUtterances": {
          "shape": "SampleUtterances",
          "documentation": "<p>Sample utterances that interact with the skill.</p>"
        },
        "SkillDetails": {
          "shape": "SkillDetails",
          "documentation": "<p>Information about the skill.</p>"
        },
        "SupportsLinking": {
          "shape": "boolean",
          "documentation": "<p>Linking support for a skill.</p>"
        }
      },
      "documentation": "<p>The detailed information about an Alexa skill.</p>"
    },
    "SkillsStoreSkillList": {
      "type": "list",
      "member": {
        "shape": "SkillsStoreSkill"
      }
    },
    "SmartHomeAppliance": {
      "type": "structure",
      "members": {
        "FriendlyName": {
          "shape": "ApplianceFriendlyName",
          "documentation": "<p>The friendly name of the smart home appliance.</p>"
        },
        "Description": {
          "shape": "ApplianceDescription",
          "documentation": "<p>The description of the smart home appliance.</p>"
        },
        "ManufacturerName": {
          "shape": "ApplianceManufacturerName",
          "documentation": "<p>The name of the manufacturer of the smart home appliance.</p>"
        }
      },
      "documentation": "<p>A smart home appliance that can connect to a central system. Any domestic device can be a smart appliance. </p>"
    },
    "SmartHomeApplianceList": {
      "type": "list",
      "member": {
        "shape": "SmartHomeAppliance"
      }
    },
    "SoftwareVersion": {
      "type": "string"
    },
    "Sort": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "SortKey",
          "documentation": "<p>The sort key of a sort object.</p>"
        },
        "Value": {
          "shape": "SortValue",
          "documentation": "<p>The sort value of a sort object.</p>"
        }
      },
      "documentation": "<p>An object representing a sort criteria. </p>"
    },
    "SortKey": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "SortList": {
      "type": "list",
      "member": {
        "shape": "Sort"
      },
      "max": 25
    },
    "SortValue": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "Ssml": {
      "type": "structure",
      "required": [
        "Locale",
        "Value"
      ],
      "members": {
        "Locale": {
          "shape": "Locale",
          "documentation": "<p>The locale of the SSML message. Currently, en-US is supported.</p>"
        },
        "Value": {
          "shape": "SsmlValue",
          "documentation": "<p>The value of the SSML message in the correct SSML format. The audio tag is not supported.</p>"
        }
      },
      "documentation": "<p>The SSML message. For more information, see <a href=\"https://developer.amazon.com/docs/custom-skills/speech-synthesis-markup-language-ssml-reference.html\">SSML Reference</a>.</p>"
    },
    "SsmlList": {
      "type": "list",
      "member": {
        "shape": "Ssml"
      },
      "max": 1
    },
    "SsmlValue": {
      "type": "string",
      "max": 4096,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "StartDeviceSyncRequest": {
      "type": "structure",
      "required": [
        "Features"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room with which the device to sync is associated. Required.</p>"
        },
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device to sync. Required.</p>"
        },
        "Features": {
          "shape": "Features",
          "documentation": "<p>Request structure to start the device sync. Required.</p>"
        }
      }
    },
    "StartDeviceSyncResponse": {
      "type": "structure",
      "members": {}
    },
    "StartSmartHomeApplianceDiscoveryRequest": {
      "type": "structure",
      "required": [
        "RoomArn"
      ],
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The room where smart home appliance discovery was initiated.</p>"
        }
      }
    },
    "StartSmartHomeApplianceDiscoveryResponse": {
      "type": "structure",
      "members": {}
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
          "documentation": "<p>The key of a tag. Tag keys are case-sensitive. </p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of a tag. Tag values are case sensitive and can be null.</p>"
        }
      },
      "documentation": "<p>A key-value pair that can be associated with a resource. </p>"
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
      }
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
          "documentation": "<p>The ARN of the resource to which to add metadata tags. Required. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be added to the specified resource. Do not provide system tags. Required. </p>"
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
    "TemperatureUnit": {
      "type": "string",
      "enum": [
        "FAHRENHEIT",
        "CELSIUS"
      ]
    },
    "Text": {
      "type": "structure",
      "required": [
        "Locale",
        "Value"
      ],
      "members": {
        "Locale": {
          "shape": "Locale",
          "documentation": "<p>The locale of the text message. Currently, en-US is supported.</p>"
        },
        "Value": {
          "shape": "TextValue",
          "documentation": "<p>The value of the text message.</p>"
        }
      },
      "documentation": "<p>The text message.</p>"
    },
    "TextList": {
      "type": "list",
      "member": {
        "shape": "Text"
      },
      "max": 1
    },
    "TextValue": {
      "type": "string",
      "max": 4096,
      "min": 0,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*"
    },
    "TimeToLiveInSeconds": {
      "type": "integer",
      "max": 3600,
      "min": 1
    },
    "Timezone": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "TotalCount": {
      "type": "integer"
    },
    "TrustAnchor": {
      "type": "string",
      "pattern": "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"
    },
    "TrustAnchorList": {
      "type": "list",
      "member": {
        "shape": "TrustAnchor"
      },
      "max": 5,
      "min": 1
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
          "documentation": "<p>The ARN of the resource from which to remove metadata tags. Required. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tags to be removed from the specified resource. Do not provide system tags. Required. </p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAddressBookRequest": {
      "type": "structure",
      "required": [
        "AddressBookArn"
      ],
      "members": {
        "AddressBookArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room to update.</p>"
        },
        "Name": {
          "shape": "AddressBookName",
          "documentation": "<p>The updated name of the room.</p>"
        },
        "Description": {
          "shape": "AddressBookDescription",
          "documentation": "<p>The updated description of the room.</p>"
        }
      }
    },
    "UpdateAddressBookResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateBusinessReportScheduleRequest": {
      "type": "structure",
      "required": [
        "ScheduleArn"
      ],
      "members": {
        "ScheduleArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the business report schedule.</p>"
        },
        "S3BucketName": {
          "shape": "CustomerS3BucketName",
          "documentation": "<p>The S3 location of the output reports.</p>"
        },
        "S3KeyPrefix": {
          "shape": "S3KeyPrefix",
          "documentation": "<p>The S3 key where the report is delivered.</p>"
        },
        "Format": {
          "shape": "BusinessReportFormat",
          "documentation": "<p>The format of the generated report (individual CSV files or zipped files of individual files).</p>"
        },
        "ScheduleName": {
          "shape": "BusinessReportScheduleName",
          "documentation": "<p>The name identifier of the schedule.</p>"
        },
        "Recurrence": {
          "shape": "BusinessReportRecurrence",
          "documentation": "<p>The recurrence of the reports.</p>"
        }
      }
    },
    "UpdateBusinessReportScheduleResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateConferenceProviderRequest": {
      "type": "structure",
      "required": [
        "ConferenceProviderArn",
        "ConferenceProviderType",
        "MeetingSetting"
      ],
      "members": {
        "ConferenceProviderArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the conference provider.</p>"
        },
        "ConferenceProviderType": {
          "shape": "ConferenceProviderType",
          "documentation": "<p>The type of the conference provider.</p>"
        },
        "IPDialIn": {
          "shape": "IPDialIn",
          "documentation": "<p>The IP endpoint and protocol for calling.</p>"
        },
        "PSTNDialIn": {
          "shape": "PSTNDialIn",
          "documentation": "<p>The information for PSTN conferencing.</p>"
        },
        "MeetingSetting": {
          "shape": "MeetingSetting",
          "documentation": "<p>The meeting settings for the conference provider.</p>"
        }
      }
    },
    "UpdateConferenceProviderResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateContactRequest": {
      "type": "structure",
      "required": [
        "ContactArn"
      ],
      "members": {
        "ContactArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the contact to update.</p>"
        },
        "DisplayName": {
          "shape": "ContactName",
          "documentation": "<p>The updated display name of the contact.</p>"
        },
        "FirstName": {
          "shape": "ContactName",
          "documentation": "<p>The updated first name of the contact.</p>"
        },
        "LastName": {
          "shape": "ContactName",
          "documentation": "<p>The updated last name of the contact.</p>"
        },
        "PhoneNumber": {
          "shape": "RawPhoneNumber",
          "documentation": "<p>The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.</p>"
        },
        "PhoneNumbers": {
          "shape": "PhoneNumberList",
          "documentation": "<p>The list of phone numbers for the contact.</p>"
        },
        "SipAddresses": {
          "shape": "SipAddressList",
          "documentation": "<p>The list of SIP addresses for the contact.</p>"
        }
      }
    },
    "UpdateContactResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDeviceRequest": {
      "type": "structure",
      "members": {
        "DeviceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the device to update. Required.</p>"
        },
        "DeviceName": {
          "shape": "DeviceName",
          "documentation": "<p>The updated device name. Required.</p>"
        }
      }
    },
    "UpdateDeviceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateEndOfMeetingReminder": {
      "type": "structure",
      "members": {
        "ReminderAtMinutes": {
          "shape": "EndOfMeetingReminderMinutesList",
          "documentation": "<p>Updates settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>"
        },
        "ReminderType": {
          "shape": "EndOfMeetingReminderType",
          "documentation": "<p>The type of sound that users hear during the end of meeting reminder. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether an end of meeting reminder is enabled or not.</p>"
        }
      },
      "documentation": "<p>Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>"
    },
    "UpdateGatewayGroupRequest": {
      "type": "structure",
      "required": [
        "GatewayGroupArn"
      ],
      "members": {
        "GatewayGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway group to update.</p>"
        },
        "Name": {
          "shape": "GatewayGroupName",
          "documentation": "<p>The updated name of the gateway group.</p>"
        },
        "Description": {
          "shape": "GatewayGroupDescription",
          "documentation": "<p>The updated description of the gateway group.</p>"
        }
      }
    },
    "UpdateGatewayGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateGatewayRequest": {
      "type": "structure",
      "required": [
        "GatewayArn"
      ],
      "members": {
        "GatewayArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the gateway to update.</p>"
        },
        "Name": {
          "shape": "GatewayName",
          "documentation": "<p>The updated name of the gateway.</p>"
        },
        "Description": {
          "shape": "GatewayDescription",
          "documentation": "<p>The updated description of the gateway.</p>"
        },
        "SoftwareVersion": {
          "shape": "GatewayVersion",
          "documentation": "<p>The updated software version of the gateway. The gateway automatically updates its software version during normal operation.</p>"
        }
      }
    },
    "UpdateGatewayResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateInstantBooking": {
      "type": "structure",
      "members": {
        "DurationInMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 15 and 240 minutes at increments of 15 that determines how long to book an available room when a meeting is started with Alexa.</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether instant booking is enabled or not.</p>"
        }
      },
      "documentation": "<p>Updates settings for the instant booking feature that are applied to a room profile. If instant booking is enabled, Alexa automatically reserves a room if it is free when a user joins a meeting with Alexa.</p>"
    },
    "UpdateMeetingRoomConfiguration": {
      "type": "structure",
      "members": {
        "RoomUtilizationMetricsEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether room utilization metrics are enabled or not.</p>"
        },
        "EndOfMeetingReminder": {
          "shape": "UpdateEndOfMeetingReminder",
          "documentation": "<p>Settings for the end of meeting reminder feature that are applied to a room profile. The end of meeting reminder enables Alexa to remind users when a meeting is ending. </p>"
        },
        "InstantBooking": {
          "shape": "UpdateInstantBooking",
          "documentation": "<p>Settings to automatically book an available room available for a configured duration when joining a meeting with Alexa.</p>"
        },
        "RequireCheckIn": {
          "shape": "UpdateRequireCheckIn",
          "documentation": "<p>Settings for requiring a check in when a room is reserved. Alexa can cancel a room reservation if it's not checked into to make the room available for others. Users can check in by joining the meeting with Alexa or an AVS device, or by saying “Alexa, check in.” </p>"
        }
      },
      "documentation": "<p>Updates meeting room settings of a room profile.</p>"
    },
    "UpdateNetworkProfileRequest": {
      "type": "structure",
      "required": [
        "NetworkProfileArn"
      ],
      "members": {
        "NetworkProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the network profile associated with a device.</p>"
        },
        "NetworkProfileName": {
          "shape": "NetworkProfileName",
          "documentation": "<p>The name of the network profile associated with a device.</p>"
        },
        "Description": {
          "shape": "NetworkProfileDescription",
          "documentation": "<p>Detailed information about a device's network profile.</p>"
        },
        "CurrentPassword": {
          "shape": "CurrentWiFiPassword",
          "documentation": "<p>The current password of the Wi-Fi network.</p>"
        },
        "NextPassword": {
          "shape": "NextWiFiPassword",
          "documentation": "<p>The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword. </p>"
        },
        "CertificateAuthorityArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices. </p>"
        },
        "TrustAnchors": {
          "shape": "TrustAnchorList",
          "documentation": "<p>The root certificate(s) of your authentication server that will be installed on your devices and used to trust your authentication server during EAP negotiation. </p>"
        }
      }
    },
    "UpdateNetworkProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateProfileRequest": {
      "type": "structure",
      "members": {
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room profile to update. Required.</p>"
        },
        "ProfileName": {
          "shape": "ProfileName",
          "documentation": "<p>The updated name for the room profile.</p>"
        },
        "IsDefault": {
          "shape": "Boolean",
          "documentation": "<p>Sets the profile as default if selected. If this is missing, no update is done to the default status.</p>"
        },
        "Timezone": {
          "shape": "Timezone",
          "documentation": "<p>The updated timezone for the room profile.</p>"
        },
        "Address": {
          "shape": "Address",
          "documentation": "<p>The updated address for the room profile.</p>"
        },
        "DistanceUnit": {
          "shape": "DistanceUnit",
          "documentation": "<p>The updated distance unit for the room profile.</p>"
        },
        "TemperatureUnit": {
          "shape": "TemperatureUnit",
          "documentation": "<p>The updated temperature unit for the room profile.</p>"
        },
        "WakeWord": {
          "shape": "WakeWord",
          "documentation": "<p>The updated wake word for the room profile.</p>"
        },
        "Locale": {
          "shape": "DeviceLocale",
          "documentation": "<p>The updated locale for the room profile. (This is currently only available to a limited preview audience.)</p>"
        },
        "SetupModeDisabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether the setup mode of the profile is enabled.</p>"
        },
        "MaxVolumeLimit": {
          "shape": "MaxVolumeLimit",
          "documentation": "<p>The updated maximum volume limit for the room profile.</p>"
        },
        "PSTNEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether the PSTN setting of the room profile is enabled.</p>"
        },
        "MeetingRoomConfiguration": {
          "shape": "UpdateMeetingRoomConfiguration",
          "documentation": "<p>The updated meeting room settings of a room profile.</p>"
        }
      }
    },
    "UpdateProfileResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateRequireCheckIn": {
      "type": "structure",
      "members": {
        "ReleaseAfterMinutes": {
          "shape": "Minutes",
          "documentation": "<p>Duration between 5 and 20 minutes to determine when to release the room if it's not checked into. </p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether require check in is enabled or not.</p>"
        }
      },
      "documentation": "<p>Updates settings for the require check in feature that are applied to a room profile. Require check in allows a meeting room’s Alexa or AVS device to prompt the user to check in; otherwise, the room will be released. </p>"
    },
    "UpdateRoomRequest": {
      "type": "structure",
      "members": {
        "RoomArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the room to update. </p>"
        },
        "RoomName": {
          "shape": "RoomName",
          "documentation": "<p>The updated name for the room.</p>"
        },
        "Description": {
          "shape": "RoomDescription",
          "documentation": "<p>The updated description for the room.</p>"
        },
        "ProviderCalendarId": {
          "shape": "ProviderCalendarId",
          "documentation": "<p>The updated provider calendar ARN for the room.</p>"
        },
        "ProfileArn": {
          "shape": "Arn",
          "documentation": "<p>The updated profile ARN for the room.</p>"
        }
      }
    },
    "UpdateRoomResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateSkillGroupRequest": {
      "type": "structure",
      "members": {
        "SkillGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the skill group to update. </p>"
        },
        "SkillGroupName": {
          "shape": "SkillGroupName",
          "documentation": "<p>The updated name for the skill group.</p>"
        },
        "Description": {
          "shape": "SkillGroupDescription",
          "documentation": "<p>The updated description for the skill group.</p>"
        }
      }
    },
    "UpdateSkillGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "Url": {
      "type": "string"
    },
    "UserCode": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "UserData": {
      "type": "structure",
      "members": {
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of a user.</p>"
        },
        "FirstName": {
          "shape": "user_FirstName",
          "documentation": "<p>The first name of a user.</p>"
        },
        "LastName": {
          "shape": "user_LastName",
          "documentation": "<p>The last name of a user.</p>"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email of a user.</p>"
        },
        "EnrollmentStatus": {
          "shape": "EnrollmentStatus",
          "documentation": "<p>The enrollment status of a user.</p>"
        },
        "EnrollmentId": {
          "shape": "EnrollmentId",
          "documentation": "<p>The enrollment ARN of a user.</p>"
        }
      },
      "documentation": "<p>Information related to a user.</p>"
    },
    "UserDataList": {
      "type": "list",
      "member": {
        "shape": "UserData"
      }
    },
    "UserId": {
      "type": "string",
      "pattern": "amzn1\\.[A-Za-z0-9+-\\/=.]{1,300}"
    },
    "Utterance": {
      "type": "string"
    },
    "Value": {
      "type": "string",
      "min": 1
    },
    "WakeWord": {
      "type": "string",
      "enum": [
        "ALEXA",
        "AMAZON",
        "ECHO",
        "COMPUTER"
      ]
    },
    "boolean": {
      "type": "boolean"
    },
    "user_FirstName": {
      "type": "string",
      "max": 30,
      "min": 0,
      "pattern": "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"
    },
    "user_LastName": {
      "type": "string",
      "max": 30,
      "min": 0,
      "pattern": "([A-Za-z\\-' 0-9._]|\\p{IsLetter})*"
    },
    "user_UserId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9@_+.-]*"
    }
  },
  "documentation": "<p>Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations. You can also make these available as private skills for your organization. Alexa for Business makes it efficient to voice-enable your products and services, thus providing context-aware voice experiences for your customers. Device makers building with the Alexa Voice Service (AVS) can create fully integrated solutions, register their products with Alexa for Business, and manage them as shared devices in their organization. </p>"
}
]===]))