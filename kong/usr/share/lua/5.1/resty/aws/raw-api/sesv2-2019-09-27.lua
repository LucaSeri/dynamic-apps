local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-09-27",
    "endpointPrefix": "email",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon SES V2",
    "serviceFullName": "Amazon Simple Email Service",
    "serviceId": "SESv2",
    "signatureVersion": "v4",
    "signingName": "ses",
    "uid": "sesv2-2019-09-27"
  },
  "operations": {
    "CreateConfigurationSet": {
      "name": "CreateConfigurationSet",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/configuration-sets"
      },
      "input": {
        "shape": "CreateConfigurationSetRequest"
      },
      "output": {
        "shape": "CreateConfigurationSetResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Create a configuration set. <i>Configuration sets</i> are groups of rules that you can apply to the emails that you send. You apply a configuration set to an email by specifying the name of the configuration set when you call the Amazon SES API v2. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email. </p>"
    },
    "CreateConfigurationSetEventDestination": {
      "name": "CreateConfigurationSetEventDestination",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations"
      },
      "input": {
        "shape": "CreateConfigurationSetEventDestinationRequest"
      },
      "output": {
        "shape": "CreateConfigurationSetEventDestinationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Create an event destination. <i>Events</i> include message sends, deliveries, opens, clicks, bounces, and complaints. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p> <p>A single configuration set can include more than one event destination.</p>"
    },
    "CreateCustomVerificationEmailTemplate": {
      "name": "CreateCustomVerificationEmailTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/custom-verification-email-templates"
      },
      "input": {
        "shape": "CreateCustomVerificationEmailTemplateRequest"
      },
      "output": {
        "shape": "CreateCustomVerificationEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new custom verification email template.</p> <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "CreateDedicatedIpPool": {
      "name": "CreateDedicatedIpPool",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/dedicated-ip-pools"
      },
      "input": {
        "shape": "CreateDedicatedIpPoolRequest"
      },
      "output": {
        "shape": "CreateDedicatedIpPoolResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your AWS account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, the message is sent from one of the addresses in the associated pool.</p>"
    },
    "CreateDeliverabilityTestReport": {
      "name": "CreateDeliverabilityTestReport",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/deliverability-dashboard/test"
      },
      "input": {
        "shape": "CreateDeliverabilityTestReportRequest"
      },
      "output": {
        "shape": "CreateDeliverabilityTestReportResponse"
      },
      "errors": [
        {
          "shape": "AccountSuspendedException"
        },
        {
          "shape": "SendingPausedException"
        },
        {
          "shape": "MessageRejected"
        },
        {
          "shape": "MailFromDomainNotVerifiedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon SES then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the <code>GetDeliverabilityTestReport</code> operation to view the results of the test.</p>"
    },
    "CreateEmailIdentity": {
      "name": "CreateEmailIdentity",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/identities"
      },
      "input": {
        "shape": "CreateEmailIdentityRequest"
      },
      "output": {
        "shape": "CreateEmailIdentityResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Starts the process of verifying an email identity. An <i>identity</i> is an email address or domain that you use when you send email. Before you can use an identity to send email, you first have to verify it. By verifying an identity, you demonstrate that you're the owner of the identity, and that you've given Amazon SES API v2 permission to send email from the identity.</p> <p>When you verify an email address, Amazon SES sends an email to the address. Your email address is verified as soon as you follow the link in the verification email. </p> <p>When you verify a domain without specifying the <code>DkimSigningAttributes</code> object, this operation provides a set of DKIM tokens. You can convert these tokens into CNAME records, which you then add to the DNS configuration for your domain. Your domain is verified when Amazon SES detects these records in the DNS configuration for your domain. This verification method is known as <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p> <p>Alternatively, you can perform the verification process by providing your own public-private key pair. This verification method is known as Bring Your Own DKIM (BYODKIM). To use BYODKIM, your call to the <code>CreateEmailIdentity</code> operation has to include the <code>DkimSigningAttributes</code> object. When you specify this object, you provide a selector (a component of the DNS record name that identifies the public key that you want to use for DKIM authentication) and a private key.</p>"
    },
    "CreateEmailIdentityPolicy": {
      "name": "CreateEmailIdentityPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
      },
      "input": {
        "shape": "CreateEmailIdentityPolicyRequest"
      },
      "output": {
        "shape": "CreateEmailIdentityPolicyResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Creates the specified sending authorization policy for the given identity (an email address or a domain).</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "CreateEmailTemplate": {
      "name": "CreateEmailTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/templates"
      },
      "input": {
        "shape": "CreateEmailTemplateRequest"
      },
      "output": {
        "shape": "CreateEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "CreateImportJob": {
      "name": "CreateImportJob",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/import-jobs"
      },
      "input": {
        "shape": "CreateImportJobRequest"
      },
      "output": {
        "shape": "CreateImportJobResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates an import job for a data destination.</p>"
    },
    "DeleteConfigurationSet": {
      "name": "DeleteConfigurationSet",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}"
      },
      "input": {
        "shape": "DeleteConfigurationSetRequest"
      },
      "output": {
        "shape": "DeleteConfigurationSetResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Delete an existing configuration set.</p> <p> <i>Configuration sets</i> are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.</p>"
    },
    "DeleteConfigurationSetEventDestination": {
      "name": "DeleteConfigurationSetEventDestination",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
      },
      "input": {
        "shape": "DeleteConfigurationSetEventDestinationRequest"
      },
      "output": {
        "shape": "DeleteConfigurationSetEventDestinationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Delete an event destination.</p> <p> <i>Events</i> include message sends, deliveries, opens, clicks, bounces, and complaints. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>"
    },
    "DeleteCustomVerificationEmailTemplate": {
      "name": "DeleteCustomVerificationEmailTemplate",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/custom-verification-email-templates/{TemplateName}"
      },
      "input": {
        "shape": "DeleteCustomVerificationEmailTemplateRequest"
      },
      "output": {
        "shape": "DeleteCustomVerificationEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Deletes an existing custom verification email template.</p> <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/es/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "DeleteDedicatedIpPool": {
      "name": "DeleteDedicatedIpPool",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/dedicated-ip-pools/{PoolName}"
      },
      "input": {
        "shape": "DeleteDedicatedIpPoolRequest"
      },
      "output": {
        "shape": "DeleteDedicatedIpPoolResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Delete a dedicated IP pool.</p>"
    },
    "DeleteEmailIdentity": {
      "name": "DeleteEmailIdentity",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/identities/{EmailIdentity}"
      },
      "input": {
        "shape": "DeleteEmailIdentityRequest"
      },
      "output": {
        "shape": "DeleteEmailIdentityResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes an email identity. An identity can be either an email address or a domain name.</p>"
    },
    "DeleteEmailIdentityPolicy": {
      "name": "DeleteEmailIdentityPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
      },
      "input": {
        "shape": "DeleteEmailIdentityPolicyRequest"
      },
      "output": {
        "shape": "DeleteEmailIdentityPolicyResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "DeleteEmailTemplate": {
      "name": "DeleteEmailTemplate",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/templates/{TemplateName}"
      },
      "input": {
        "shape": "DeleteEmailTemplateRequest"
      },
      "output": {
        "shape": "DeleteEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Deletes an email template.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "DeleteSuppressedDestination": {
      "name": "DeleteSuppressedDestination",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/suppression/addresses/{EmailAddress}"
      },
      "input": {
        "shape": "DeleteSuppressedDestinationRequest"
      },
      "output": {
        "shape": "DeleteSuppressedDestinationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes an email address from the suppression list for your account.</p>"
    },
    "GetAccount": {
      "name": "GetAccount",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/account"
      },
      "input": {
        "shape": "GetAccountRequest"
      },
      "output": {
        "shape": "GetAccountResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Obtain information about the email-sending status and capabilities of your Amazon SES account in the current AWS Region.</p>"
    },
    "GetBlacklistReports": {
      "name": "GetBlacklistReports",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/blacklist-report"
      },
      "input": {
        "shape": "GetBlacklistReportsRequest"
      },
      "output": {
        "shape": "GetBlacklistReportsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Retrieve a list of the blacklists that your dedicated IP addresses appear on.</p>"
    },
    "GetConfigurationSet": {
      "name": "GetConfigurationSet",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}"
      },
      "input": {
        "shape": "GetConfigurationSetRequest"
      },
      "output": {
        "shape": "GetConfigurationSetResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more.</p> <p> <i>Configuration sets</i> are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.</p>"
    },
    "GetConfigurationSetEventDestinations": {
      "name": "GetConfigurationSetEventDestinations",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations"
      },
      "input": {
        "shape": "GetConfigurationSetEventDestinationsRequest"
      },
      "output": {
        "shape": "GetConfigurationSetEventDestinationsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Retrieve a list of event destinations that are associated with a configuration set.</p> <p> <i>Events</i> include message sends, deliveries, opens, clicks, bounces, and complaints. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>"
    },
    "GetCustomVerificationEmailTemplate": {
      "name": "GetCustomVerificationEmailTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/custom-verification-email-templates/{TemplateName}"
      },
      "input": {
        "shape": "GetCustomVerificationEmailTemplateRequest"
      },
      "output": {
        "shape": "GetCustomVerificationEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns the custom email verification template for the template name you specify.</p> <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "GetDedicatedIp": {
      "name": "GetDedicatedIp",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/dedicated-ips/{IP}"
      },
      "input": {
        "shape": "GetDedicatedIpRequest"
      },
      "output": {
        "shape": "GetDedicatedIpResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.</p>"
    },
    "GetDedicatedIps": {
      "name": "GetDedicatedIps",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/dedicated-ips"
      },
      "input": {
        "shape": "GetDedicatedIpsRequest"
      },
      "output": {
        "shape": "GetDedicatedIpsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>List the dedicated IP addresses that are associated with your AWS account.</p>"
    },
    "GetDeliverabilityDashboardOptions": {
      "name": "GetDeliverabilityDashboardOptions",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard"
      },
      "input": {
        "shape": "GetDeliverabilityDashboardOptionsRequest"
      },
      "output": {
        "shape": "GetDeliverabilityDashboardOptionsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Retrieve information about the status of the Deliverability dashboard for your account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests.</p> <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see <a href=\"http://aws.amazon.com/ses/pricing/\">Amazon SES Pricing</a>.</p>"
    },
    "GetDeliverabilityTestReport": {
      "name": "GetDeliverabilityTestReport",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/test-reports/{ReportId}"
      },
      "input": {
        "shape": "GetDeliverabilityTestReportRequest"
      },
      "output": {
        "shape": "GetDeliverabilityTestReportResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Retrieve the results of a predictive inbox placement test.</p>"
    },
    "GetDomainDeliverabilityCampaign": {
      "name": "GetDomainDeliverabilityCampaign",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/campaigns/{CampaignId}"
      },
      "input": {
        "shape": "GetDomainDeliverabilityCampaignRequest"
      },
      "output": {
        "shape": "GetDomainDeliverabilityCampaignResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for.</p>"
    },
    "GetDomainStatisticsReport": {
      "name": "GetDomainStatisticsReport",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/statistics-report/{Domain}"
      },
      "input": {
        "shape": "GetDomainStatisticsReportRequest"
      },
      "output": {
        "shape": "GetDomainStatisticsReportResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Retrieve inbox placement and engagement rates for the domains that you use to send email.</p>"
    },
    "GetEmailIdentity": {
      "name": "GetEmailIdentity",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/identities/{EmailIdentity}"
      },
      "input": {
        "shape": "GetEmailIdentityRequest"
      },
      "output": {
        "shape": "GetEmailIdentityResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Provides information about a specific identity, including the identity's verification status, sending authorization policies, its DKIM authentication status, and its custom Mail-From settings.</p>"
    },
    "GetEmailIdentityPolicies": {
      "name": "GetEmailIdentityPolicies",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/identities/{EmailIdentity}/policies"
      },
      "input": {
        "shape": "GetEmailIdentityPoliciesRequest"
      },
      "output": {
        "shape": "GetEmailIdentityPoliciesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "GetEmailTemplate": {
      "name": "GetEmailTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/templates/{TemplateName}"
      },
      "input": {
        "shape": "GetEmailTemplateRequest"
      },
      "output": {
        "shape": "GetEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Displays the template object (which includes the subject line, HTML part and text part) for the template you specify.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "GetImportJob": {
      "name": "GetImportJob",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/import-jobs/{JobId}"
      },
      "input": {
        "shape": "GetImportJobRequest"
      },
      "output": {
        "shape": "GetImportJobResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Provides information about an import job.</p>"
    },
    "GetSuppressedDestination": {
      "name": "GetSuppressedDestination",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/suppression/addresses/{EmailAddress}"
      },
      "input": {
        "shape": "GetSuppressedDestinationRequest"
      },
      "output": {
        "shape": "GetSuppressedDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves information about a specific email address that's on the suppression list for your account.</p>"
    },
    "ListConfigurationSets": {
      "name": "ListConfigurationSets",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/configuration-sets"
      },
      "input": {
        "shape": "ListConfigurationSetsRequest"
      },
      "output": {
        "shape": "ListConfigurationSetsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>List all of the configuration sets associated with your account in the current region.</p> <p> <i>Configuration sets</i> are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.</p>"
    },
    "ListCustomVerificationEmailTemplates": {
      "name": "ListCustomVerificationEmailTemplates",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/custom-verification-email-templates"
      },
      "input": {
        "shape": "ListCustomVerificationEmailTemplatesRequest"
      },
      "output": {
        "shape": "ListCustomVerificationEmailTemplatesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Lists the existing custom verification email templates for your account in the current AWS Region.</p> <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "ListDedicatedIpPools": {
      "name": "ListDedicatedIpPools",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/dedicated-ip-pools"
      },
      "input": {
        "shape": "ListDedicatedIpPoolsRequest"
      },
      "output": {
        "shape": "ListDedicatedIpPoolsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>List all of the dedicated IP pools that exist in your AWS account in the current Region.</p>"
    },
    "ListDeliverabilityTestReports": {
      "name": "ListDeliverabilityTestReports",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/test-reports"
      },
      "input": {
        "shape": "ListDeliverabilityTestReportsRequest"
      },
      "output": {
        "shape": "ListDeliverabilityTestReportsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the <code>GetDeliverabilityTestReport</code> operation to view the results.</p>"
    },
    "ListDomainDeliverabilityCampaigns": {
      "name": "ListDomainDeliverabilityCampaigns",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns"
      },
      "input": {
        "shape": "ListDomainDeliverabilityCampaignsRequest"
      },
      "output": {
        "shape": "ListDomainDeliverabilityCampaignsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.</p>"
    },
    "ListEmailIdentities": {
      "name": "ListEmailIdentities",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/identities"
      },
      "input": {
        "shape": "ListEmailIdentitiesRequest"
      },
      "output": {
        "shape": "ListEmailIdentitiesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns a list of all of the email identities that are associated with your AWS account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't. This operation returns identities that are associated with Amazon SES and Amazon Pinpoint.</p>"
    },
    "ListEmailTemplates": {
      "name": "ListEmailTemplates",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/templates"
      },
      "input": {
        "shape": "ListEmailTemplatesRequest"
      },
      "output": {
        "shape": "ListEmailTemplatesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Lists the email templates present in your Amazon SES account in the current AWS Region.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "ListImportJobs": {
      "name": "ListImportJobs",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/import-jobs"
      },
      "input": {
        "shape": "ListImportJobsRequest"
      },
      "output": {
        "shape": "ListImportJobsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Lists all of the import jobs.</p>"
    },
    "ListSuppressedDestinations": {
      "name": "ListSuppressedDestinations",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/suppression/addresses"
      },
      "input": {
        "shape": "ListSuppressedDestinationsRequest"
      },
      "output": {
        "shape": "ListSuppressedDestinationsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves a list of email addresses that are on the suppression list for your account.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/v2/email/tags"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieve a list of the tags (keys and values) that are associated with a specified resource. A <i>tag</i> is a label that you optionally define and associate with a resource. Each tag consists of a required <i>tag key</i> and an optional associated <i>tag value</i>. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.</p>"
    },
    "PutAccountDedicatedIpWarmupAttributes": {
      "name": "PutAccountDedicatedIpWarmupAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/account/dedicated-ips/warmup"
      },
      "input": {
        "shape": "PutAccountDedicatedIpWarmupAttributesRequest"
      },
      "output": {
        "shape": "PutAccountDedicatedIpWarmupAttributesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Enable or disable the automatic warm-up feature for dedicated IP addresses.</p>"
    },
    "PutAccountDetails": {
      "name": "PutAccountDetails",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/account/details"
      },
      "input": {
        "shape": "PutAccountDetailsRequest"
      },
      "output": {
        "shape": "PutAccountDetailsResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Update your Amazon SES account details.</p>"
    },
    "PutAccountSendingAttributes": {
      "name": "PutAccountSendingAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/account/sending"
      },
      "input": {
        "shape": "PutAccountSendingAttributesRequest"
      },
      "output": {
        "shape": "PutAccountSendingAttributesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Enable or disable the ability of your account to send email.</p>"
    },
    "PutAccountSuppressionAttributes": {
      "name": "PutAccountSuppressionAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/account/suppression"
      },
      "input": {
        "shape": "PutAccountSuppressionAttributesRequest"
      },
      "output": {
        "shape": "PutAccountSuppressionAttributesResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Change the settings for the account-level suppression list.</p>"
    },
    "PutConfigurationSetDeliveryOptions": {
      "name": "PutConfigurationSetDeliveryOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options"
      },
      "input": {
        "shape": "PutConfigurationSetDeliveryOptionsRequest"
      },
      "output": {
        "shape": "PutConfigurationSetDeliveryOptionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.</p>"
    },
    "PutConfigurationSetReputationOptions": {
      "name": "PutConfigurationSetReputationOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options"
      },
      "input": {
        "shape": "PutConfigurationSetReputationOptionsRequest"
      },
      "output": {
        "shape": "PutConfigurationSetReputationOptionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.</p>"
    },
    "PutConfigurationSetSendingOptions": {
      "name": "PutConfigurationSetSendingOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/sending"
      },
      "input": {
        "shape": "PutConfigurationSetSendingOptionsRequest"
      },
      "output": {
        "shape": "PutConfigurationSetSendingOptionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.</p>"
    },
    "PutConfigurationSetSuppressionOptions": {
      "name": "PutConfigurationSetSuppressionOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options"
      },
      "input": {
        "shape": "PutConfigurationSetSuppressionOptionsRequest"
      },
      "output": {
        "shape": "PutConfigurationSetSuppressionOptionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Specify the account suppression list preferences for a configuration set.</p>"
    },
    "PutConfigurationSetTrackingOptions": {
      "name": "PutConfigurationSetTrackingOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options"
      },
      "input": {
        "shape": "PutConfigurationSetTrackingOptionsRequest"
      },
      "output": {
        "shape": "PutConfigurationSetTrackingOptionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Specify a custom domain to use for open and click tracking elements in email that you send.</p>"
    },
    "PutDedicatedIpInPool": {
      "name": "PutDedicatedIpInPool",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/dedicated-ips/{IP}/pool"
      },
      "input": {
        "shape": "PutDedicatedIpInPoolRequest"
      },
      "output": {
        "shape": "PutDedicatedIpInPoolResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Move a dedicated IP address to an existing dedicated IP pool.</p> <note> <p>The dedicated IP address that you specify must already exist, and must be associated with your AWS account. </p> <p>The dedicated IP pool you specify must already exist. You can create a new pool by using the <code>CreateDedicatedIpPool</code> operation.</p> </note>"
    },
    "PutDedicatedIpWarmupAttributes": {
      "name": "PutDedicatedIpWarmupAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/dedicated-ips/{IP}/warmup"
      },
      "input": {
        "shape": "PutDedicatedIpWarmupAttributesRequest"
      },
      "output": {
        "shape": "PutDedicatedIpWarmupAttributesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p/>"
    },
    "PutDeliverabilityDashboardOption": {
      "name": "PutDeliverabilityDashboardOption",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/deliverability-dashboard"
      },
      "input": {
        "shape": "PutDeliverabilityDashboardOptionRequest"
      },
      "output": {
        "shape": "PutDeliverabilityDashboardOptionResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email. You also gain the ability to perform predictive inbox placement tests.</p> <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see <a href=\"http://aws.amazon.com/ses/pricing/\">Amazon SES Pricing</a>.</p>"
    },
    "PutEmailIdentityDkimAttributes": {
      "name": "PutEmailIdentityDkimAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/identities/{EmailIdentity}/dkim"
      },
      "input": {
        "shape": "PutEmailIdentityDkimAttributesRequest"
      },
      "output": {
        "shape": "PutEmailIdentityDkimAttributesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Used to enable or disable DKIM authentication for an email identity.</p>"
    },
    "PutEmailIdentityDkimSigningAttributes": {
      "name": "PutEmailIdentityDkimSigningAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/email/identities/{EmailIdentity}/dkim/signing"
      },
      "input": {
        "shape": "PutEmailIdentityDkimSigningAttributesRequest"
      },
      "output": {
        "shape": "PutEmailIdentityDkimSigningAttributesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Used to configure or change the DKIM authentication settings for an email domain identity. You can use this operation to do any of the following:</p> <ul> <li> <p>Update the signing attributes for an identity that uses Bring Your Own DKIM (BYODKIM).</p> </li> <li> <p>Change from using no DKIM authentication to using Easy DKIM.</p> </li> <li> <p>Change from using no DKIM authentication to using BYODKIM.</p> </li> <li> <p>Change from using Easy DKIM to using BYODKIM.</p> </li> <li> <p>Change from using BYODKIM to using Easy DKIM.</p> </li> </ul>"
    },
    "PutEmailIdentityFeedbackAttributes": {
      "name": "PutEmailIdentityFeedbackAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/identities/{EmailIdentity}/feedback"
      },
      "input": {
        "shape": "PutEmailIdentityFeedbackAttributesRequest"
      },
      "output": {
        "shape": "PutEmailIdentityFeedbackAttributesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event.</p> <p>If the value is <code>true</code>, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the <code>Return-Path</code> header of the original email.</p> <p>You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled).</p>"
    },
    "PutEmailIdentityMailFromAttributes": {
      "name": "PutEmailIdentityMailFromAttributes",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/identities/{EmailIdentity}/mail-from"
      },
      "input": {
        "shape": "PutEmailIdentityMailFromAttributesRequest"
      },
      "output": {
        "shape": "PutEmailIdentityMailFromAttributesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Used to enable or disable the custom Mail-From domain configuration for an email identity.</p>"
    },
    "PutSuppressedDestination": {
      "name": "PutSuppressedDestination",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/suppression/addresses"
      },
      "input": {
        "shape": "PutSuppressedDestinationRequest"
      },
      "output": {
        "shape": "PutSuppressedDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Adds an email address to the suppression list for your account.</p>"
    },
    "SendBulkEmail": {
      "name": "SendBulkEmail",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/outbound-bulk-emails"
      },
      "input": {
        "shape": "SendBulkEmailRequest"
      },
      "output": {
        "shape": "SendBulkEmailResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccountSuspendedException"
        },
        {
          "shape": "SendingPausedException"
        },
        {
          "shape": "MessageRejected"
        },
        {
          "shape": "MailFromDomainNotVerifiedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Composes an email message to multiple destinations.</p>"
    },
    "SendCustomVerificationEmail": {
      "name": "SendCustomVerificationEmail",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/outbound-custom-verification-emails"
      },
      "input": {
        "shape": "SendCustomVerificationEmailRequest"
      },
      "output": {
        "shape": "SendCustomVerificationEmailResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "MessageRejected"
        },
        {
          "shape": "SendingPausedException"
        },
        {
          "shape": "MailFromDomainNotVerifiedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Adds an email address to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. As a result of executing this operation, a customized verification email is sent to the specified address.</p> <p>To use this operation, you must first create a custom verification email template. For more information about creating and using custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "SendEmail": {
      "name": "SendEmail",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/outbound-emails"
      },
      "input": {
        "shape": "SendEmailRequest"
      },
      "output": {
        "shape": "SendEmailResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccountSuspendedException"
        },
        {
          "shape": "SendingPausedException"
        },
        {
          "shape": "MessageRejected"
        },
        {
          "shape": "MailFromDomainNotVerifiedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Sends an email message. You can use the Amazon SES API v2 to send two types of messages:</p> <ul> <li> <p> <b>Simple</b> – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon SES assembles the message for you.</p> </li> <li> <p> <b>Raw</b> – A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.</p> </li> <li> <p> <b>Templated</b> – A message that contains personalization tags. When you send this type of email, Amazon SES API v2 automatically replaces the tags with values that you specify.</p> </li> </ul>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/tags"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Add one or more tags (keys and values) to a specified resource. A <i>tag</i> is a label that you optionally define and associate with a resource. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags.</p> <p>Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.</p>"
    },
    "TestRenderEmailTemplate": {
      "name": "TestRenderEmailTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/v2/email/templates/{TemplateName}/render"
      },
      "input": {
        "shape": "TestRenderEmailTemplateRequest"
      },
      "output": {
        "shape": "TestRenderEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Creates a preview of the MIME content of an email when provided with a template and a set of replacement data.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/email/tags"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Remove one or more tags (keys and values) from a specified resource.</p>"
    },
    "UpdateConfigurationSetEventDestination": {
      "name": "UpdateConfigurationSetEventDestination",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
      },
      "input": {
        "shape": "UpdateConfigurationSetEventDestinationRequest"
      },
      "output": {
        "shape": "UpdateConfigurationSetEventDestinationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Update the configuration of an event destination for a configuration set.</p> <p> <i>Events</i> include message sends, deliveries, opens, clicks, bounces, and complaints. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>"
    },
    "UpdateCustomVerificationEmailTemplate": {
      "name": "UpdateCustomVerificationEmailTemplate",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/custom-verification-email-templates/{TemplateName}"
      },
      "input": {
        "shape": "UpdateCustomVerificationEmailTemplateRequest"
      },
      "output": {
        "shape": "UpdateCustomVerificationEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates an existing custom verification email template.</p> <p>For more information about custom verification email templates, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html\">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "UpdateEmailIdentityPolicy": {
      "name": "UpdateEmailIdentityPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
      },
      "input": {
        "shape": "UpdateEmailIdentityPolicyRequest"
      },
      "output": {
        "shape": "UpdateEmailIdentityPolicyResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Updates the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    },
    "UpdateEmailTemplate": {
      "name": "UpdateEmailTemplate",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/email/templates/{TemplateName}"
      },
      "input": {
        "shape": "UpdateEmailTemplateRequest"
      },
      "output": {
        "shape": "UpdateEmailTemplateResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Updates an email template. Email templates enable you to send personalized email to one or more destinations in a single API operation. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p> <p>You can execute this operation no more than once per second.</p>"
    }
  },
  "shapes": {
    "AccountDetails": {
      "type": "structure",
      "members": {
        "MailType": {
          "shape": "MailType",
          "documentation": "<p>The type of email your account is sending. The mail type can be one of the following:</p> <ul> <li> <p> <code>MARKETING</code> – Most of your sending traffic is to keep your customers informed of your latest offering.</p> </li> <li> <p> <code>TRANSACTIONAL</code> – Most of your sending traffic is to communicate during a transaction with a customer.</p> </li> </ul>"
        },
        "WebsiteURL": {
          "shape": "WebsiteURL",
          "documentation": "<p>The URL of your website. This information helps us better understand the type of content that you plan to send.</p>"
        },
        "ContactLanguage": {
          "shape": "ContactLanguage",
          "documentation": "<p>The language you would prefer for the case. The contact language can be one of <code>ENGLISH</code> or <code>JAPANESE</code>.</p>"
        },
        "UseCaseDescription": {
          "shape": "UseCaseDescription",
          "documentation": "<p>A description of the types of email that you plan to send.</p>"
        },
        "AdditionalContactEmailAddresses": {
          "shape": "AdditionalContactEmailAddresses",
          "documentation": "<p>Additional email addresses where updates are sent about your account review process.</p>"
        },
        "ReviewDetails": {
          "shape": "ReviewDetails",
          "documentation": "<p>Information about the review of the latest details you submitted.</p>"
        }
      },
      "documentation": "<p>An object that contains information about your account details.</p>"
    },
    "AdditionalContactEmailAddress": {
      "type": "string",
      "max": 254,
      "min": 6,
      "pattern": "^(.+)@(.+)$",
      "sensitive": true
    },
    "AdditionalContactEmailAddresses": {
      "type": "list",
      "member": {
        "shape": "AdditionalContactEmailAddress"
      },
      "max": 4,
      "min": 1,
      "sensitive": true
    },
    "AmazonResourceName": {
      "type": "string"
    },
    "BehaviorOnMxFailure": {
      "type": "string",
      "documentation": "<p>The action that you want to take if the required MX record can't be found when you send an email. When you set this value to <code>UseDefaultValue</code>, the mail is sent using <i>amazonses.com</i> as the MAIL FROM domain. When you set this value to <code>RejectMessage</code>, the Amazon SES API v2 returns a <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the email.</p> <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code> states.</p>",
      "enum": [
        "USE_DEFAULT_VALUE",
        "REJECT_MESSAGE"
      ]
    },
    "BlacklistEntries": {
      "type": "list",
      "member": {
        "shape": "BlacklistEntry"
      }
    },
    "BlacklistEntry": {
      "type": "structure",
      "members": {
        "RblName": {
          "shape": "RblName",
          "documentation": "<p>The name of the blacklist that the IP address appears on.</p>"
        },
        "ListingTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the blacklisting event occurred, shown in Unix time format.</p>"
        },
        "Description": {
          "shape": "BlacklistingDescription",
          "documentation": "<p>Additional information about the blacklisting event, as provided by the blacklist maintainer.</p>"
        }
      },
      "documentation": "<p>An object that contains information about a blacklisting event that impacts one of the dedicated IP addresses that is associated with your account.</p>"
    },
    "BlacklistItemName": {
      "type": "string",
      "documentation": "<p>An IP address that you want to obtain blacklist information for.</p>"
    },
    "BlacklistItemNames": {
      "type": "list",
      "member": {
        "shape": "BlacklistItemName"
      }
    },
    "BlacklistReport": {
      "type": "map",
      "key": {
        "shape": "BlacklistItemName"
      },
      "value": {
        "shape": "BlacklistEntries"
      }
    },
    "BlacklistingDescription": {
      "type": "string",
      "documentation": "<p>A description of the blacklisting event.</p>"
    },
    "Body": {
      "type": "structure",
      "members": {
        "Text": {
          "shape": "Content",
          "documentation": "<p>An object that represents the version of the message that is displayed in email clients that don't support HTML, or clients where the recipient has disabled HTML rendering.</p>"
        },
        "Html": {
          "shape": "Content",
          "documentation": "<p>An object that represents the version of the message that is displayed in email clients that support HTML. HTML messages can include formatted text, hyperlinks, images, and more. </p>"
        }
      },
      "documentation": "<p>Represents the body of the email message.</p>"
    },
    "BulkEmailContent": {
      "type": "structure",
      "members": {
        "Template": {
          "shape": "Template",
          "documentation": "<p>The template to use for the bulk email message.</p>"
        }
      },
      "documentation": "<p>An object that contains the body of the message. You can specify a template message.</p>"
    },
    "BulkEmailEntry": {
      "type": "structure",
      "required": [
        "Destination"
      ],
      "members": {
        "Destination": {
          "shape": "Destination",
          "documentation": "<p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href=\"https://tools.ietf.org/html/rfc6531\">RFC6531</a>. For this reason, the local part of a destination email address (the part of the email address that precedes the @ sign) may only contain <a href=\"https://en.wikipedia.org/wiki/Email_address#Local-part\">7-bit ASCII characters</a>. If the domain part of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href=\"https://tools.ietf.org/html/rfc3492.html\">RFC3492</a>.</p> </note>"
        },
        "ReplacementTags": {
          "shape": "MessageTagList",
          "documentation": "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send using the <code>SendBulkTemplatedEmail</code> operation. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>"
        },
        "ReplacementEmailContent": {
          "shape": "ReplacementEmailContent",
          "documentation": "<p>The <code>ReplacementEmailContent</code> associated with a <code>BulkEmailEntry</code>.</p>"
        }
      }
    },
    "BulkEmailEntryList": {
      "type": "list",
      "member": {
        "shape": "BulkEmailEntry"
      },
      "documentation": "<p>A list of <code>BulkEmailEntry</code> objects.</p>"
    },
    "BulkEmailEntryResult": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "BulkEmailStatus",
          "documentation": "<p>The status of a message sent using the <code>SendBulkTemplatedEmail</code> operation.</p> <p>Possible values for this parameter include:</p> <ul> <li> <p>SUCCESS: Amazon SES accepted the message, and will attempt to deliver it to the recipients.</p> </li> <li> <p>MESSAGE_REJECTED: The message was rejected because it contained a virus.</p> </li> <li> <p>MAIL_FROM_DOMAIN_NOT_VERIFIED: The sender's email address or domain was not verified.</p> </li> <li> <p>CONFIGURATION_SET_DOES_NOT_EXIST: The configuration set you specified does not exist.</p> </li> <li> <p>TEMPLATE_DOES_NOT_EXIST: The template you specified does not exist.</p> </li> <li> <p>ACCOUNT_SUSPENDED: Your account has been shut down because of issues related to your email sending practices.</p> </li> <li> <p>ACCOUNT_THROTTLED: The number of emails you can send has been reduced because your account has exceeded its allocated sending limit.</p> </li> <li> <p>ACCOUNT_DAILY_QUOTA_EXCEEDED: You have reached or exceeded the maximum number of emails you can send from your account in a 24-hour period.</p> </li> <li> <p>INVALID_SENDING_POOL_NAME: The configuration set you specified refers to an IP pool that does not exist.</p> </li> <li> <p>ACCOUNT_SENDING_PAUSED: Email sending for the Amazon SES account was disabled using the <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateAccountSendingEnabled.html\">UpdateAccountSendingEnabled</a> operation.</p> </li> <li> <p>CONFIGURATION_SET_SENDING_PAUSED: Email sending for this configuration set was disabled using the <a href=\"https://docs.aws.amazon.com/ses/latest/APIReference/API_UpdateConfigurationSetSendingEnabled.html\">UpdateConfigurationSetSendingEnabled</a> operation.</p> </li> <li> <p>INVALID_PARAMETER_VALUE: One or more of the parameters you specified when calling this operation was invalid. See the error message for additional information.</p> </li> <li> <p>TRANSIENT_FAILURE: Amazon SES was unable to process your request because of a temporary issue.</p> </li> <li> <p>FAILED: Amazon SES was unable to process your request. See the error message for additional information.</p> </li> </ul>"
        },
        "Error": {
          "shape": "ErrorMessage",
          "documentation": "<p>A description of an error that prevented a message being sent using the <code>SendBulkTemplatedEmail</code> operation.</p>"
        },
        "MessageId": {
          "shape": "OutboundMessageId",
          "documentation": "<p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code> operation.</p>"
        }
      },
      "documentation": "<p>The result of the <code>SendBulkEmail</code> operation of each specified <code>BulkEmailEntry</code>.</p>"
    },
    "BulkEmailEntryResultList": {
      "type": "list",
      "member": {
        "shape": "BulkEmailEntryResult"
      },
      "documentation": "<p>A list of <code>BulkMailEntry</code> objects.</p>"
    },
    "BulkEmailStatus": {
      "type": "string",
      "enum": [
        "SUCCESS",
        "MESSAGE_REJECTED",
        "MAIL_FROM_DOMAIN_NOT_VERIFIED",
        "CONFIGURATION_SET_NOT_FOUND",
        "TEMPLATE_NOT_FOUND",
        "ACCOUNT_SUSPENDED",
        "ACCOUNT_THROTTLED",
        "ACCOUNT_DAILY_QUOTA_EXCEEDED",
        "INVALID_SENDING_POOL_NAME",
        "ACCOUNT_SENDING_PAUSED",
        "CONFIGURATION_SET_SENDING_PAUSED",
        "INVALID_PARAMETER",
        "TRANSIENT_FAILURE",
        "FAILED"
      ]
    },
    "CampaignId": {
      "type": "string"
    },
    "CaseId": {
      "type": "string"
    },
    "Charset": {
      "type": "string"
    },
    "CloudWatchDestination": {
      "type": "structure",
      "required": [
        "DimensionConfigurations"
      ],
      "members": {
        "DimensionConfigurations": {
          "shape": "CloudWatchDimensionConfigurations",
          "documentation": "<p>An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.</p>"
        }
      },
      "documentation": "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.</p>"
    },
    "CloudWatchDimensionConfiguration": {
      "type": "structure",
      "required": [
        "DimensionName",
        "DimensionValueSource",
        "DefaultDimensionValue"
      ],
      "members": {
        "DimensionName": {
          "shape": "DimensionName",
          "documentation": "<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
        },
        "DimensionValueSource": {
          "shape": "DimensionValueSource",
          "documentation": "<p>The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. If you want to use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the <code>SendEmail</code> or <code>SendRawEmail</code> API, choose <code>messageTag</code>. If you want to use your own email headers, choose <code>emailHeader</code>. If you want to use link tags, choose <code>linkTags</code>.</p>"
        },
        "DefaultDimensionValue": {
          "shape": "DefaultDimensionValue",
          "documentation": "<p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email. This value has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An object that defines the dimension configuration to use when you send email events to Amazon CloudWatch.</p>"
    },
    "CloudWatchDimensionConfigurations": {
      "type": "list",
      "member": {
        "shape": "CloudWatchDimensionConfiguration"
      }
    },
    "ConfigurationSetName": {
      "type": "string",
      "documentation": "<p>The name of a configuration set.</p> <p> <i>Configuration sets</i> are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.</p>"
    },
    "ConfigurationSetNameList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationSetName"
      }
    },
    "ContactLanguage": {
      "type": "string",
      "enum": [
        "EN",
        "JA"
      ]
    },
    "Content": {
      "type": "structure",
      "required": [
        "Data"
      ],
      "members": {
        "Data": {
          "shape": "MessageData",
          "documentation": "<p>The content of the message itself.</p>"
        },
        "Charset": {
          "shape": "Charset",
          "documentation": "<p>The character set for the content. Because of the constraints of the SMTP protocol, Amazon SES uses 7-bit ASCII by default. If the text includes characters outside of the ASCII range, you have to specify a character set. For example, you could specify <code>UTF-8</code>, <code>ISO-8859-1</code>, or <code>Shift_JIS</code>.</p>"
        }
      },
      "documentation": "<p>An object that represents the content of the email, and optionally a character set specification.</p>"
    },
    "CreateConfigurationSetEventDestinationRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName",
        "EventDestinationName",
        "EventDestination"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to add an event destination to.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "EventDestinationName": {
          "shape": "EventDestinationName",
          "documentation": "<p>A name that identifies the event destination within the configuration set.</p>"
        },
        "EventDestination": {
          "shape": "EventDestinationDefinition",
          "documentation": "<p>An object that defines the event destination.</p>"
        }
      },
      "documentation": "<p>A request to add an event destination to a configuration set.</p>"
    },
    "CreateConfigurationSetEventDestinationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "CreateConfigurationSetRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set.</p>"
        },
        "TrackingOptions": {
          "shape": "TrackingOptions",
          "documentation": "<p>An object that defines the open and click tracking options for emails that you send using the configuration set.</p>"
        },
        "DeliveryOptions": {
          "shape": "DeliveryOptions",
          "documentation": "<p>An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set.</p>"
        },
        "ReputationOptions": {
          "shape": "ReputationOptions",
          "documentation": "<p>An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.</p>"
        },
        "SendingOptions": {
          "shape": "SendingOptions",
          "documentation": "<p>An object that defines whether or not Amazon SES can send email that you send using the configuration set.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that you want to associate with the configuration set.</p>"
        },
        "SuppressionOptions": {
          "shape": "SuppressionOptions"
        }
      },
      "documentation": "<p>A request to create a configuration set.</p>"
    },
    "CreateConfigurationSetResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "CreateCustomVerificationEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName",
        "FromEmailAddress",
        "TemplateSubject",
        "TemplateContent",
        "SuccessRedirectionURL",
        "FailureRedirectionURL"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template.</p>"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that the custom verification email is sent from.</p>"
        },
        "TemplateSubject": {
          "shape": "EmailTemplateSubject",
          "documentation": "<p>The subject line of the custom verification email.</p>"
        },
        "TemplateContent": {
          "shape": "TemplateContent",
          "documentation": "<p>The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq\">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES Developer Guide</i>.</p>"
        },
        "SuccessRedirectionURL": {
          "shape": "SuccessRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>"
        },
        "FailureRedirectionURL": {
          "shape": "FailureRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>"
        }
      },
      "documentation": "<p>Represents a request to create a custom verification email template.</p>"
    },
    "CreateCustomVerificationEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "CreateDedicatedIpPoolRequest": {
      "type": "structure",
      "required": [
        "PoolName"
      ],
      "members": {
        "PoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the dedicated IP pool.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An object that defines the tags (keys and values) that you want to associate with the pool.</p>"
        }
      },
      "documentation": "<p>A request to create a new dedicated IP pool.</p>"
    },
    "CreateDedicatedIpPoolResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "CreateDeliverabilityTestReportRequest": {
      "type": "structure",
      "required": [
        "FromEmailAddress",
        "Content"
      ],
      "members": {
        "ReportName": {
          "shape": "ReportName",
          "documentation": "<p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the results.</p>"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that the predictive inbox placement test email was sent from.</p>"
        },
        "Content": {
          "shape": "EmailContent",
          "documentation": "<p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that you want to associate with the predictive inbox placement test.</p>"
        }
      },
      "documentation": "<p>A request to perform a predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. We send that message to special email addresses spread across several major email providers around the world. The test takes about 24 hours to complete. When the test is complete, you can use the <code>GetDeliverabilityTestReport</code> operation to view the results of the test.</p>"
    },
    "CreateDeliverabilityTestReportResponse": {
      "type": "structure",
      "required": [
        "ReportId",
        "DeliverabilityTestStatus"
      ],
      "members": {
        "ReportId": {
          "shape": "ReportId",
          "documentation": "<p>A unique string that identifies the predictive inbox placement test.</p>"
        },
        "DeliverabilityTestStatus": {
          "shape": "DeliverabilityTestStatus",
          "documentation": "<p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>"
        }
      },
      "documentation": "<p>Information about the predictive inbox placement test that you created.</p>"
    },
    "CreateEmailIdentityPolicyRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity",
        "PolicyName",
        "Policy"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity for which you want to create a policy.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "PolicyName": {
          "shape": "PolicyName",
          "documentation": "<p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>",
          "location": "uri",
          "locationName": "PolicyName"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p> <p>For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html\">Amazon SES Developer Guide</a>.</p>"
        }
      },
      "documentation": "<p>Represents a request to create a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "CreateEmailIdentityPolicyResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "CreateEmailIdentityRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email address or domain that you want to verify.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that you want to associate with the email identity.</p>"
        },
        "DkimSigningAttributes": {
          "shape": "DkimSigningAttributes",
          "documentation": "<p>If your request includes this object, Amazon SES configures the identity to use Bring Your Own DKIM (BYODKIM) for DKIM authentication purposes, as opposed to the default method, <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p> <p>You can only specify this object if the email identity is a domain, as opposed to an address.</p>"
        }
      },
      "documentation": "<p>A request to begin the verification process for an email identity (an email address or domain).</p>"
    },
    "CreateEmailIdentityResponse": {
      "type": "structure",
      "members": {
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>The email identity type.</p>"
        },
        "VerifiedForSendingStatus": {
          "shape": "Enabled",
          "documentation": "<p>Specifies whether or not the identity is verified. You can only send email from verified email addresses or domains. For more information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"
        },
        "DkimAttributes": {
          "shape": "DkimAttributes",
          "documentation": "<p>An object that contains information about the DKIM attributes for the identity.</p>"
        }
      },
      "documentation": "<p>If the email identity is a domain, this object contains information about the DKIM verification status for the domain.</p> <p>If the email identity is an email address, this object is empty. </p>"
    },
    "CreateEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName",
        "TemplateContent"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template you want to create.</p>"
        },
        "TemplateContent": {
          "shape": "EmailTemplateContent",
          "documentation": "<p>The content of the email template, composed of a subject line, an HTML part, and a text-only part.</p>"
        }
      },
      "documentation": "<p>Represents a request to create an email template. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "CreateEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "CreateImportJobRequest": {
      "type": "structure",
      "required": [
        "ImportDestination",
        "ImportDataSource"
      ],
      "members": {
        "ImportDestination": {
          "shape": "ImportDestination",
          "documentation": "<p>The destination for the import job.</p>"
        },
        "ImportDataSource": {
          "shape": "ImportDataSource",
          "documentation": "<p>The data source for the import job.</p>"
        }
      },
      "documentation": "<p>Represents a request to create an import job from a data source for a data destination.</p>"
    },
    "CreateImportJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>A string that represents the import job ID.</p>"
        }
      },
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "CustomRedirectDomain": {
      "type": "string",
      "documentation": "<p>The domain that you want to use for tracking open and click events.</p>"
    },
    "CustomVerificationEmailTemplateMetadata": {
      "type": "structure",
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template.</p>"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that the custom verification email is sent from.</p>"
        },
        "TemplateSubject": {
          "shape": "EmailTemplateSubject",
          "documentation": "<p>The subject line of the custom verification email.</p>"
        },
        "SuccessRedirectionURL": {
          "shape": "SuccessRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>"
        },
        "FailureRedirectionURL": {
          "shape": "FailureRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>"
        }
      },
      "documentation": "<p>Contains information about a custom verification email template.</p>"
    },
    "CustomVerificationEmailTemplatesList": {
      "type": "list",
      "member": {
        "shape": "CustomVerificationEmailTemplateMetadata"
      },
      "documentation": "<p>A list of the custom verification email templates that exist in your account.</p>"
    },
    "DailyVolume": {
      "type": "structure",
      "members": {
        "StartDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the DailyVolume metrics apply to, in Unix time.</p>"
        },
        "VolumeStatistics": {
          "shape": "VolumeStatistics",
          "documentation": "<p>An object that contains inbox placement metrics for a specific day in the analysis period.</p>"
        },
        "DomainIspPlacements": {
          "shape": "DomainIspPlacements",
          "documentation": "<p>An object that contains inbox placement metrics for a specified day in the analysis period, broken out by the recipient's email provider.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the volume of email sent on each day of the analysis period.</p>"
    },
    "DailyVolumes": {
      "type": "list",
      "member": {
        "shape": "DailyVolume"
      }
    },
    "DataFormat": {
      "type": "string",
      "documentation": "<p>The data format of the import job's data source.</p>",
      "enum": [
        "CSV",
        "JSON"
      ]
    },
    "DedicatedIp": {
      "type": "structure",
      "required": [
        "Ip",
        "WarmupStatus",
        "WarmupPercentage"
      ],
      "members": {
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>An IPv4 address.</p>"
        },
        "WarmupStatus": {
          "shape": "WarmupStatus",
          "documentation": "<p>The warm-up status of a dedicated IP address. The status can have one of the following values:</p> <ul> <li> <p> <code>IN_PROGRESS</code> – The IP address isn't ready to use because the dedicated IP warm-up process is ongoing.</p> </li> <li> <p> <code>DONE</code> – The dedicated IP warm-up process is complete, and the IP address is ready to use.</p> </li> </ul>"
        },
        "WarmupPercentage": {
          "shape": "Percentage100Wrapper",
          "documentation": "<p>Indicates how complete the dedicated IP warm-up process is. When this value equals 1, the address has completed the warm-up process and is ready for use.</p>"
        },
        "PoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the dedicated IP pool that the IP address is associated with.</p>"
        }
      },
      "documentation": "<p>Contains information about a dedicated IP address that is associated with your Amazon SES account.</p> <p>To learn more about requesting dedicated IP addresses, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/dedicated-ip-case.html\">Requesting and Relinquishing Dedicated IP Addresses</a> in the <i>Amazon SES Developer Guide</i>.</p>"
    },
    "DedicatedIpList": {
      "type": "list",
      "member": {
        "shape": "DedicatedIp"
      },
      "documentation": "<p>A list of dedicated IP addresses that are associated with your AWS account.</p>"
    },
    "DefaultDimensionValue": {
      "type": "string",
      "documentation": "<p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email. This value has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
    },
    "DeleteConfigurationSetEventDestinationRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName",
        "EventDestinationName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that contains the event destination that you want to delete.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "EventDestinationName": {
          "shape": "EventDestinationName",
          "documentation": "<p>The name of the event destination that you want to delete.</p>",
          "location": "uri",
          "locationName": "EventDestinationName"
        }
      },
      "documentation": "<p>A request to delete an event destination from a configuration set.</p>"
    },
    "DeleteConfigurationSetEventDestinationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeleteConfigurationSetRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to delete.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        }
      },
      "documentation": "<p>A request to delete a configuration set.</p>"
    },
    "DeleteConfigurationSetResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeleteCustomVerificationEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template that you want to delete.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        }
      },
      "documentation": "<p>Represents a request to delete an existing custom verification email template.</p>"
    },
    "DeleteCustomVerificationEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "DeleteDedicatedIpPoolRequest": {
      "type": "structure",
      "required": [
        "PoolName"
      ],
      "members": {
        "PoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the dedicated IP pool that you want to delete.</p>",
          "location": "uri",
          "locationName": "PoolName"
        }
      },
      "documentation": "<p>A request to delete a dedicated IP pool.</p>"
    },
    "DeleteDedicatedIpPoolResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeleteEmailIdentityPolicyRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity",
        "PolicyName"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity for which you want to delete a policy.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "PolicyName": {
          "shape": "PolicyName",
          "documentation": "<p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>",
          "location": "uri",
          "locationName": "PolicyName"
        }
      },
      "documentation": "<p>Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "DeleteEmailIdentityPolicyResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeleteEmailIdentityRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The identity (that is, the email address or domain) that you want to delete.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        }
      },
      "documentation": "<p>A request to delete an existing email identity. When you delete an identity, you lose the ability to send email from that identity. You can restore your ability to send email by completing the verification process for the identity again.</p>"
    },
    "DeleteEmailIdentityResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeleteEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template to be deleted.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        }
      },
      "documentation": "<p>Represents a request to delete an email template. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "DeleteEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "DeleteSuppressedDestinationRequest": {
      "type": "structure",
      "required": [
        "EmailAddress"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The suppressed email destination to remove from the account suppression list.</p>",
          "location": "uri",
          "locationName": "EmailAddress"
        }
      },
      "documentation": "<p>A request to remove an email address from the suppression list for your account.</p>"
    },
    "DeleteSuppressedDestinationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "DeliverabilityDashboardAccountStatus": {
      "type": "string",
      "documentation": "<p>The current status of your Deliverability dashboard subscription. If this value is <code>PENDING_EXPIRATION</code>, your subscription is scheduled to expire at the end of the current calendar month.</p>",
      "enum": [
        "ACTIVE",
        "PENDING_EXPIRATION",
        "DISABLED"
      ]
    },
    "DeliverabilityTestReport": {
      "type": "structure",
      "members": {
        "ReportId": {
          "shape": "ReportId",
          "documentation": "<p>A unique string that identifies the predictive inbox placement test.</p>"
        },
        "ReportName": {
          "shape": "ReportName",
          "documentation": "<p>A name that helps you identify a predictive inbox placement test report.</p>"
        },
        "Subject": {
          "shape": "DeliverabilityTestSubject",
          "documentation": "<p>The subject line for an email that you submitted in a predictive inbox placement test.</p>"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The sender address that you specified for the predictive inbox placement test.</p>"
        },
        "CreateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the predictive inbox placement test was created, in Unix time format.</p>"
        },
        "DeliverabilityTestStatus": {
          "shape": "DeliverabilityTestStatus",
          "documentation": "<p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>"
        }
      },
      "documentation": "<p>An object that contains metadata related to a predictive inbox placement test.</p>"
    },
    "DeliverabilityTestReports": {
      "type": "list",
      "member": {
        "shape": "DeliverabilityTestReport"
      }
    },
    "DeliverabilityTestStatus": {
      "type": "string",
      "documentation": "<p>The status of a predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use the <code>GetDeliverabilityTestReport</code> operation to view the results of the test.</p>",
      "enum": [
        "IN_PROGRESS",
        "COMPLETED"
      ]
    },
    "DeliverabilityTestSubject": {
      "type": "string",
      "documentation": "<p>The subject line for an email that you submitted in a predictive inbox placement test.</p>"
    },
    "DeliveryOptions": {
      "type": "structure",
      "members": {
        "TlsPolicy": {
          "shape": "TlsPolicy",
          "documentation": "<p>Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only delivered if a TLS connection can be established. If the value is <code>Optional</code>, messages can be delivered in plain text if a TLS connection can't be established.</p>"
        },
        "SendingPoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the dedicated IP pool that you want to associate with the configuration set.</p>"
        }
      },
      "documentation": "<p>Used to associate a configuration set with a dedicated IP pool.</p>"
    },
    "Destination": {
      "type": "structure",
      "members": {
        "ToAddresses": {
          "shape": "EmailAddressList",
          "documentation": "<p>An array that contains the email addresses of the \"To\" recipients for the email.</p>"
        },
        "CcAddresses": {
          "shape": "EmailAddressList",
          "documentation": "<p>An array that contains the email addresses of the \"CC\" (carbon copy) recipients for the email.</p>"
        },
        "BccAddresses": {
          "shape": "EmailAddressList",
          "documentation": "<p>An array that contains the email addresses of the \"BCC\" (blind carbon copy) recipients for the email.</p>"
        }
      },
      "documentation": "<p>An object that describes the recipients for an email.</p>"
    },
    "DimensionName": {
      "type": "string",
      "documentation": "<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
    },
    "DimensionValueSource": {
      "type": "string",
      "documentation": "<p>The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. If you want to use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the <code>SendEmail</code> or <code>SendRawEmail</code> API, choose <code>messageTag</code>. If you want to use your own email headers, choose <code>emailHeader</code>. If you want to use link tags, choose <code>linkTags</code>.</p>",
      "enum": [
        "MESSAGE_TAG",
        "EMAIL_HEADER",
        "LINK_TAG"
      ]
    },
    "DkimAttributes": {
      "type": "structure",
      "members": {
        "SigningEnabled": {
          "shape": "Enabled",
          "documentation": "<p>If the value is <code>true</code>, then the messages that you send from the identity are signed using DKIM. If the value is <code>false</code>, then the messages that you send from the identity aren't DKIM-signed.</p>"
        },
        "Status": {
          "shape": "DkimStatus",
          "documentation": "<p>Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. The status can be one of the following:</p> <ul> <li> <p> <code>PENDING</code> – The verification process was initiated, but Amazon SES hasn't yet detected the DKIM records in the DNS configuration for the domain.</p> </li> <li> <p> <code>SUCCESS</code> – The verification process completed successfully.</p> </li> <li> <p> <code>FAILED</code> – The verification process failed. This typically occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the domain.</p> </li> <li> <p> <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES from determining the DKIM authentication status of the domain.</p> </li> <li> <p> <code>NOT_STARTED</code> – The DKIM verification process hasn't been initiated for the domain.</p> </li> </ul>"
        },
        "Tokens": {
          "shape": "DnsTokenList",
          "documentation": "<p>If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete.</p> <p>If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.</p> <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the appropriate records in the DNS configuration of the domain for up to 72 hours.</p>"
        },
        "SigningAttributesOrigin": {
          "shape": "DkimSigningAttributesOrigin",
          "documentation": "<p>A string that indicates how DKIM was configured for the identity. There are two possible values:</p> <ul> <li> <p> <code>AWS_SES</code> – Indicates that DKIM was configured for the identity by using <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p> </li> <li> <p> <code>EXTERNAL</code> – Indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).</p> </li> </ul>"
        }
      },
      "documentation": "<p>An object that contains information about the DKIM authentication status for an email identity.</p> <p>Amazon SES determines the authentication status by searching for specific records in the DNS configuration for the domain. If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to set up DKIM authentication, Amazon SES tries to find three unique CNAME records in the DNS configuration for your domain. If you provided a public key to perform DKIM authentication, Amazon SES tries to find a TXT record that uses the selector that you specified. The value of the TXT record must be a public key that's paired with the private key that you specified in the process of creating the identity</p>"
    },
    "DkimSigningAttributes": {
      "type": "structure",
      "required": [
        "DomainSigningSelector",
        "DomainSigningPrivateKey"
      ],
      "members": {
        "DomainSigningSelector": {
          "shape": "Selector",
          "documentation": "<p>A string that's used to identify a public key in the DNS configuration for a domain.</p>"
        },
        "DomainSigningPrivateKey": {
          "shape": "PrivateKey",
          "documentation": "<p>A private key that's used to generate a DKIM signature.</p> <p>The private key must use 1024-bit RSA encryption, and must be encoded using base64 encoding.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the tokens used for setting up Bring Your Own DKIM (BYODKIM).</p>"
    },
    "DkimSigningAttributesOrigin": {
      "type": "string",
      "enum": [
        "AWS_SES",
        "EXTERNAL"
      ]
    },
    "DkimStatus": {
      "type": "string",
      "documentation": "<p>The DKIM authentication status of the identity. The status can be one of the following:</p> <ul> <li> <p> <code>PENDING</code> – The verification process was initiated, but Amazon SES hasn't yet detected the DKIM records in the DNS configuration for the domain.</p> </li> <li> <p> <code>SUCCESS</code> – The verification process completed successfully.</p> </li> <li> <p> <code>FAILED</code> – The verification process failed. This typically occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the domain.</p> </li> <li> <p> <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES from determining the DKIM authentication status of the domain.</p> </li> <li> <p> <code>NOT_STARTED</code> – The DKIM verification process hasn't been initiated for the domain.</p> </li> </ul>",
      "enum": [
        "PENDING",
        "SUCCESS",
        "FAILED",
        "TEMPORARY_FAILURE",
        "NOT_STARTED"
      ]
    },
    "DnsToken": {
      "type": "string"
    },
    "DnsTokenList": {
      "type": "list",
      "member": {
        "shape": "DnsToken"
      }
    },
    "Domain": {
      "type": "string"
    },
    "DomainDeliverabilityCampaign": {
      "type": "structure",
      "members": {
        "CampaignId": {
          "shape": "CampaignId",
          "documentation": "<p>The unique identifier for the campaign. The Deliverability dashboard automatically generates and assigns this identifier to a campaign.</p>"
        },
        "ImageUrl": {
          "shape": "ImageUrl",
          "documentation": "<p>The URL of an image that contains a snapshot of the email message that was sent.</p>"
        },
        "Subject": {
          "shape": "Subject",
          "documentation": "<p>The subject line, or title, of the email message.</p>"
        },
        "FromAddress": {
          "shape": "Identity",
          "documentation": "<p>The verified email address that the email message was sent from.</p>"
        },
        "SendingIps": {
          "shape": "IpList",
          "documentation": "<p>The IP addresses that were used to send the email message.</p>"
        },
        "FirstSeenDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The first time, in Unix time format, when the email message was delivered to any recipient's inbox. This value can help you determine how long it took for a campaign to deliver an email message.</p>"
        },
        "LastSeenDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time, in Unix time format, when the email message was delivered to any recipient's inbox. This value can help you determine how long it took for a campaign to deliver an email message.</p>"
        },
        "InboxCount": {
          "shape": "Volume",
          "documentation": "<p>The number of email messages that were delivered to recipients’ inboxes.</p>"
        },
        "SpamCount": {
          "shape": "Volume",
          "documentation": "<p>The number of email messages that were delivered to recipients' spam or junk mail folders.</p>"
        },
        "ReadRate": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of email messages that were opened by recipients. Due to technical limitations, this value only includes recipients who opened the message by using an email client that supports images.</p>"
        },
        "DeleteRate": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of email messages that were deleted by recipients, without being opened first. Due to technical limitations, this value only includes recipients who opened the message by using an email client that supports images.</p>"
        },
        "ReadDeleteRate": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of email messages that were opened and then deleted by recipients. Due to technical limitations, this value only includes recipients who opened the message by using an email client that supports images.</p>"
        },
        "ProjectedVolume": {
          "shape": "Volume",
          "documentation": "<p>The projected number of recipients that the email message was sent to.</p>"
        },
        "Esps": {
          "shape": "Esps",
          "documentation": "<p>The major email providers who handled the email message.</p>"
        }
      },
      "documentation": "<p>An object that contains the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code> operation).</p>"
    },
    "DomainDeliverabilityCampaignList": {
      "type": "list",
      "member": {
        "shape": "DomainDeliverabilityCampaign"
      },
      "documentation": "<p/>"
    },
    "DomainDeliverabilityTrackingOption": {
      "type": "structure",
      "members": {
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>A verified domain that’s associated with your AWS account and currently has an active Deliverability dashboard subscription.</p>"
        },
        "SubscriptionStartDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date, in Unix time format, when you enabled the Deliverability dashboard for the domain.</p>"
        },
        "InboxPlacementTrackingOption": {
          "shape": "InboxPlacementTrackingOption",
          "documentation": "<p>An object that contains information about the inbox placement data settings for the domain.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the Deliverability dashboard subscription for a verified domain that you use to send email and currently has an active Deliverability dashboard subscription. If a Deliverability dashboard subscription is active for a domain, you gain access to reputation, inbox placement, and other metrics for the domain.</p>"
    },
    "DomainDeliverabilityTrackingOptions": {
      "type": "list",
      "member": {
        "shape": "DomainDeliverabilityTrackingOption"
      },
      "documentation": "<p>An object that contains information about the Deliverability dashboard subscription for a verified domain that you use to send email and currently has an active Deliverability dashboard subscription. If a Deliverability dashboard subscription is active for a domain, you gain access to reputation, inbox placement, and other metrics for the domain.</p>"
    },
    "DomainIspPlacement": {
      "type": "structure",
      "members": {
        "IspName": {
          "shape": "IspName",
          "documentation": "<p>The name of the email provider that the inbox placement data applies to.</p>"
        },
        "InboxRawCount": {
          "shape": "Volume",
          "documentation": "<p>The total number of messages that were sent from the selected domain to the specified email provider that arrived in recipients' inboxes.</p>"
        },
        "SpamRawCount": {
          "shape": "Volume",
          "documentation": "<p>The total number of messages that were sent from the selected domain to the specified email provider that arrived in recipients' spam or junk mail folders.</p>"
        },
        "InboxPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of messages that were sent from the selected domain to the specified email provider that arrived in recipients' inboxes.</p>"
        },
        "SpamPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of messages that were sent from the selected domain to the specified email provider that arrived in recipients' spam or junk mail folders.</p>"
        }
      },
      "documentation": "<p>An object that contains inbox placement data for email sent from one of your email domains to a specific email provider.</p>"
    },
    "DomainIspPlacements": {
      "type": "list",
      "member": {
        "shape": "DomainIspPlacement"
      }
    },
    "EmailAddress": {
      "type": "string"
    },
    "EmailAddressList": {
      "type": "list",
      "member": {
        "shape": "EmailAddress"
      }
    },
    "EmailContent": {
      "type": "structure",
      "members": {
        "Simple": {
          "shape": "Message",
          "documentation": "<p>The simple email message. The message consists of a subject and a message body.</p>"
        },
        "Raw": {
          "shape": "RawMessage",
          "documentation": "<p>The raw email message. The message has to meet the following criteria:</p> <ul> <li> <p>The message has to contain a header and a body, separated by one blank line.</p> </li> <li> <p>All of the required header fields must be present in the message.</p> </li> <li> <p>Each part of a multipart MIME message must be formatted properly.</p> </li> <li> <p>If you include attachments, they must be in a file format that the Amazon SES API v2 supports. </p> </li> <li> <p>The entire message must be Base64 encoded.</p> </li> <li> <p>If any of the MIME parts in your message contain content that is outside of the 7-bit ASCII character range, you should encode that content to ensure that recipients' email clients render the message properly.</p> </li> <li> <p>The length of any single line of text in the message can't exceed 1,000 characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p> </li> </ul>"
        },
        "Template": {
          "shape": "Template",
          "documentation": "<p>The template to use for the email message.</p>"
        }
      },
      "documentation": "<p>An object that defines the entire content of the email, including the message headers and the body content. You can create a simple email message, in which you specify the subject and the text and HTML versions of the message body. You can also create raw messages, in which you specify a complete MIME-formatted message. Raw messages can include attachments and custom headers.</p>"
    },
    "EmailTemplateContent": {
      "type": "structure",
      "members": {
        "Subject": {
          "shape": "EmailTemplateSubject",
          "documentation": "<p>The subject line of the email.</p>"
        },
        "Text": {
          "shape": "EmailTemplateText",
          "documentation": "<p>The email body that will be visible to recipients whose email clients do not display HTML.</p>"
        },
        "Html": {
          "shape": "EmailTemplateHtml",
          "documentation": "<p>The HTML body of the email.</p>"
        }
      },
      "documentation": "<p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>"
    },
    "EmailTemplateData": {
      "type": "string",
      "documentation": "<p>An object that defines the values to use for message variables in the template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the value to use for that variable.</p>",
      "max": 262144
    },
    "EmailTemplateHtml": {
      "type": "string",
      "documentation": "<p>The HTML body of the email.</p>"
    },
    "EmailTemplateMetadata": {
      "type": "structure",
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time and date the template was created.</p>"
        }
      },
      "documentation": "<p>Contains information about an email template.</p>"
    },
    "EmailTemplateMetadataList": {
      "type": "list",
      "member": {
        "shape": "EmailTemplateMetadata"
      },
      "documentation": "<p>A list of the EmailTemplateMetadata object.</p>"
    },
    "EmailTemplateName": {
      "type": "string",
      "documentation": "<p>The name of the template. You will refer to this name when you send email using the <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code> operations.</p>",
      "min": 1
    },
    "EmailTemplateSubject": {
      "type": "string",
      "documentation": "<p>The subject line of the email.</p>"
    },
    "EmailTemplateText": {
      "type": "string",
      "documentation": "<p>The email body that will be visible to recipients whose email clients do not display HTML.</p>"
    },
    "Enabled": {
      "type": "boolean"
    },
    "EnabledWrapper": {
      "type": "boolean"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "Esp": {
      "type": "string"
    },
    "Esps": {
      "type": "list",
      "member": {
        "shape": "Esp"
      }
    },
    "EventDestination": {
      "type": "structure",
      "required": [
        "Name",
        "MatchingEventTypes"
      ],
      "members": {
        "Name": {
          "shape": "EventDestinationName",
          "documentation": "<p>A name that identifies the event destination.</p>"
        },
        "Enabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, the event destination is enabled. When the event destination is enabled, the specified event types are sent to the destinations in this <code>EventDestinationDefinition</code>.</p> <p>If <code>false</code>, the event destination is disabled. When the event destination is disabled, events aren't sent to the specified destinations.</p>"
        },
        "MatchingEventTypes": {
          "shape": "EventTypes",
          "documentation": "<p>The types of events that Amazon SES sends to the specified event destinations.</p>"
        },
        "KinesisFirehoseDestination": {
          "shape": "KinesisFirehoseDestination",
          "documentation": "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"
        },
        "CloudWatchDestination": {
          "shape": "CloudWatchDestination",
          "documentation": "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.</p>"
        },
        "SnsDestination": {
          "shape": "SnsDestination",
          "documentation": "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to send notification when certain email events occur.</p>"
        },
        "PinpointDestination": {
          "shape": "PinpointDestination",
          "documentation": "<p>An object that defines an Amazon Pinpoint project destination for email events. You can send email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging dashboards that are built in to Amazon Pinpoint. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html\">Transactional Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>"
        }
      },
      "documentation": "<p>In the Amazon SES API v2, <i>events</i> include message sends, deliveries, opens, clicks, bounces, complaints and delivery delays. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>"
    },
    "EventDestinationDefinition": {
      "type": "structure",
      "members": {
        "Enabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, the event destination is enabled. When the event destination is enabled, the specified event types are sent to the destinations in this <code>EventDestinationDefinition</code>.</p> <p>If <code>false</code>, the event destination is disabled. When the event destination is disabled, events aren't sent to the specified destinations.</p>"
        },
        "MatchingEventTypes": {
          "shape": "EventTypes",
          "documentation": "<p>An array that specifies which events the Amazon SES API v2 should send to the destinations in this <code>EventDestinationDefinition</code>.</p>"
        },
        "KinesisFirehoseDestination": {
          "shape": "KinesisFirehoseDestination",
          "documentation": "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"
        },
        "CloudWatchDestination": {
          "shape": "CloudWatchDestination",
          "documentation": "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.</p>"
        },
        "SnsDestination": {
          "shape": "SnsDestination",
          "documentation": "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to send notification when certain email events occur.</p>"
        },
        "PinpointDestination": {
          "shape": "PinpointDestination",
          "documentation": "<p>An object that defines an Amazon Pinpoint project destination for email events. You can send email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging dashboards that are built in to Amazon Pinpoint. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html\">Transactional Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>"
        }
      },
      "documentation": "<p>An object that defines the event destination. Specifically, it defines which services receive events from emails sent using the configuration set that the event destination is associated with. Also defines the types of events that are sent to the event destination.</p>"
    },
    "EventDestinationName": {
      "type": "string",
      "documentation": "<p>The name of an event destination.</p> <p> <i>Events</i> include message sends, deliveries, opens, clicks, bounces, and complaints. <i>Event destinations</i> are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.</p>"
    },
    "EventDestinations": {
      "type": "list",
      "member": {
        "shape": "EventDestination"
      }
    },
    "EventType": {
      "type": "string",
      "documentation": "<p>An email sending event type. For example, email sends, opens, and bounces are all email events.</p>",
      "enum": [
        "SEND",
        "REJECT",
        "BOUNCE",
        "COMPLAINT",
        "DELIVERY",
        "OPEN",
        "CLICK",
        "RENDERING_FAILURE",
        "DELIVERY_DELAY"
      ]
    },
    "EventTypes": {
      "type": "list",
      "member": {
        "shape": "EventType"
      }
    },
    "FailedRecordsCount": {
      "type": "integer"
    },
    "FailedRecordsS3Url": {
      "type": "string"
    },
    "FailureInfo": {
      "type": "structure",
      "members": {
        "FailedRecordsS3Url": {
          "shape": "FailedRecordsS3Url",
          "documentation": "<p>An Amazon S3 presigned URL that contains all the failed records and related information.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>A message about why the import job failed.</p>"
        }
      },
      "documentation": "<p>An object that contains the failure details about an import job.</p>"
    },
    "FailureRedirectionURL": {
      "type": "string",
      "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>"
    },
    "FeedbackId": {
      "type": "string"
    },
    "GeneralEnforcementStatus": {
      "type": "string"
    },
    "GetAccountRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>A request to obtain information about the email-sending capabilities of your Amazon SES account.</p>"
    },
    "GetAccountResponse": {
      "type": "structure",
      "members": {
        "DedicatedIpAutoWarmupEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Indicates whether or not the automatic warm-up feature is enabled for dedicated IP addresses that are associated with your account.</p>"
        },
        "EnforcementStatus": {
          "shape": "GeneralEnforcementStatus",
          "documentation": "<p>The reputation status of your Amazon SES account. The status can be one of the following:</p> <ul> <li> <p> <code>HEALTHY</code> – There are no reputation-related issues that currently impact your account.</p> </li> <li> <p> <code>PROBATION</code> – We've identified potential issues with your Amazon SES account. We're placing your account under review while you work on correcting these issues.</p> </li> <li> <p> <code>SHUTDOWN</code> – Your account's ability to send email is currently paused because of an issue with the email sent from your account. When you correct the issue, you can contact us and request that your account's ability to send email is resumed.</p> </li> </ul>"
        },
        "ProductionAccessEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Indicates whether or not your account has production access in the current AWS Region.</p> <p>If the value is <code>false</code>, then your account is in the <i>sandbox</i>. When your account is in the sandbox, you can only send email to verified identities. Additionally, the maximum number of emails you can send in a 24-hour period (your sending quota) is 200, and the maximum number of emails you can send per second (your maximum sending rate) is 1.</p> <p>If the value is <code>true</code>, then your account has production access. When your account has production access, you can send email to any address. The sending quota and maximum sending rate for your account vary based on your specific use case.</p>"
        },
        "SendQuota": {
          "shape": "SendQuota",
          "documentation": "<p>An object that contains information about the per-day and per-second sending limits for your Amazon SES account in the current AWS Region.</p>"
        },
        "SendingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Indicates whether or not email sending is enabled for your Amazon SES account in the current AWS Region.</p>"
        },
        "SuppressionAttributes": {
          "shape": "SuppressionAttributes",
          "documentation": "<p>An object that contains information about the email address suppression preferences for your account in the current AWS Region.</p>"
        },
        "Details": {
          "shape": "AccountDetails",
          "documentation": "<p>An object that defines your account details.</p>"
        }
      },
      "documentation": "<p>A list of details about the email-sending capabilities of your Amazon SES account in the current AWS Region.</p>"
    },
    "GetBlacklistReportsRequest": {
      "type": "structure",
      "required": [
        "BlacklistItemNames"
      ],
      "members": {
        "BlacklistItemNames": {
          "shape": "BlacklistItemNames",
          "documentation": "<p>A list of IP addresses that you want to retrieve blacklist information about. You can only specify the dedicated IP addresses that you use to send email using Amazon SES or Amazon Pinpoint.</p>",
          "location": "querystring",
          "locationName": "BlacklistItemNames"
        }
      },
      "documentation": "<p>A request to retrieve a list of the blacklists that your dedicated IP addresses appear on.</p>"
    },
    "GetBlacklistReportsResponse": {
      "type": "structure",
      "required": [
        "BlacklistReport"
      ],
      "members": {
        "BlacklistReport": {
          "shape": "BlacklistReport",
          "documentation": "<p>An object that contains information about a blacklist that one of your dedicated IP addresses appears on.</p>"
        }
      },
      "documentation": "<p>An object that contains information about blacklist events.</p>"
    },
    "GetConfigurationSetEventDestinationsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that contains the event destination.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        }
      },
      "documentation": "<p>A request to obtain information about the event destinations for a configuration set.</p>"
    },
    "GetConfigurationSetEventDestinationsResponse": {
      "type": "structure",
      "members": {
        "EventDestinations": {
          "shape": "EventDestinations",
          "documentation": "<p>An array that includes all of the events destinations that have been configured for the configuration set.</p>"
        }
      },
      "documentation": "<p>Information about an event destination for a configuration set.</p>"
    },
    "GetConfigurationSetRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to obtain more information about.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        }
      },
      "documentation": "<p>A request to obtain information about a configuration set.</p>"
    },
    "GetConfigurationSetResponse": {
      "type": "structure",
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set.</p>"
        },
        "TrackingOptions": {
          "shape": "TrackingOptions",
          "documentation": "<p>An object that defines the open and click tracking options for emails that you send using the configuration set.</p>"
        },
        "DeliveryOptions": {
          "shape": "DeliveryOptions",
          "documentation": "<p>An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set.</p>"
        },
        "ReputationOptions": {
          "shape": "ReputationOptions",
          "documentation": "<p>An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.</p>"
        },
        "SendingOptions": {
          "shape": "SendingOptions",
          "documentation": "<p>An object that defines whether or not Amazon SES can send email that you send using the configuration set.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that are associated with the configuration set.</p>"
        },
        "SuppressionOptions": {
          "shape": "SuppressionOptions",
          "documentation": "<p>An object that contains information about the suppression list preferences for your account.</p>"
        }
      },
      "documentation": "<p>Information about a configuration set.</p>"
    },
    "GetCustomVerificationEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template that you want to retrieve.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        }
      },
      "documentation": "<p>Represents a request to retrieve an existing custom verification email template.</p>"
    },
    "GetCustomVerificationEmailTemplateResponse": {
      "type": "structure",
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template.</p>"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that the custom verification email is sent from.</p>"
        },
        "TemplateSubject": {
          "shape": "EmailTemplateSubject",
          "documentation": "<p>The subject line of the custom verification email.</p>"
        },
        "TemplateContent": {
          "shape": "TemplateContent",
          "documentation": "<p>The content of the custom verification email.</p>"
        },
        "SuccessRedirectionURL": {
          "shape": "SuccessRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>"
        },
        "FailureRedirectionURL": {
          "shape": "FailureRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>"
        }
      },
      "documentation": "<p>The following elements are returned by the service.</p>"
    },
    "GetDedicatedIpRequest": {
      "type": "structure",
      "required": [
        "Ip"
      ],
      "members": {
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>The IP address that you want to obtain more information about. The value you specify has to be a dedicated IP address that's assocaited with your AWS account.</p>",
          "location": "uri",
          "locationName": "IP"
        }
      },
      "documentation": "<p>A request to obtain more information about a dedicated IP address.</p>"
    },
    "GetDedicatedIpResponse": {
      "type": "structure",
      "members": {
        "DedicatedIp": {
          "shape": "DedicatedIp",
          "documentation": "<p>An object that contains information about a dedicated IP address.</p>"
        }
      },
      "documentation": "<p>Information about a dedicated IP address.</p>"
    },
    "GetDedicatedIpsRequest": {
      "type": "structure",
      "members": {
        "PoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the IP pool that the dedicated IP address is associated with.</p>",
          "location": "querystring",
          "locationName": "PoolName"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the position of the dedicated IP pool in the list of IP pools.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to obtain more information about dedicated IP pools.</p>"
    },
    "GetDedicatedIpsResponse": {
      "type": "structure",
      "members": {
        "DedicatedIps": {
          "shape": "DedicatedIpList",
          "documentation": "<p>A list of dedicated IP addresses that are associated with your AWS account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional dedicated IP addresses to list. To view additional addresses, issue another request to <code>GetDedicatedIps</code>, passing this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>Information about the dedicated IP addresses that are associated with your AWS account.</p>"
    },
    "GetDeliverabilityDashboardOptionsRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Retrieve information about the status of the Deliverability dashboard for your AWS account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for your domains. You also gain the ability to perform predictive inbox placement tests.</p> <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see <a href=\"http://aws.amazon.com/pinpoint/pricing/\">Amazon Pinpoint Pricing</a>.</p>"
    },
    "GetDeliverabilityDashboardOptionsResponse": {
      "type": "structure",
      "required": [
        "DashboardEnabled"
      ],
      "members": {
        "DashboardEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Specifies whether the Deliverability dashboard is enabled. If this value is <code>true</code>, the dashboard is enabled.</p>"
        },
        "SubscriptionExpiryDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date, in Unix time format, when your current subscription to the Deliverability dashboard is scheduled to expire, if your subscription is scheduled to expire at the end of the current calendar month. This value is null if you have an active subscription that isn’t due to expire at the end of the month.</p>"
        },
        "AccountStatus": {
          "shape": "DeliverabilityDashboardAccountStatus",
          "documentation": "<p>The current status of your Deliverability dashboard subscription. If this value is <code>PENDING_EXPIRATION</code>, your subscription is scheduled to expire at the end of the current calendar month.</p>"
        },
        "ActiveSubscribedDomains": {
          "shape": "DomainDeliverabilityTrackingOptions",
          "documentation": "<p>An array of objects, one for each verified domain that you use to send email and currently has an active Deliverability dashboard subscription that isn’t scheduled to expire at the end of the current calendar month.</p>"
        },
        "PendingExpirationSubscribedDomains": {
          "shape": "DomainDeliverabilityTrackingOptions",
          "documentation": "<p>An array of objects, one for each verified domain that you use to send email and currently has an active Deliverability dashboard subscription that's scheduled to expire at the end of the current calendar month.</p>"
        }
      },
      "documentation": "<p>An object that shows the status of the Deliverability dashboard.</p>"
    },
    "GetDeliverabilityTestReportRequest": {
      "type": "structure",
      "required": [
        "ReportId"
      ],
      "members": {
        "ReportId": {
          "shape": "ReportId",
          "documentation": "<p>A unique string that identifies the predictive inbox placement test.</p>",
          "location": "uri",
          "locationName": "ReportId"
        }
      },
      "documentation": "<p>A request to retrieve the results of a predictive inbox placement test.</p>"
    },
    "GetDeliverabilityTestReportResponse": {
      "type": "structure",
      "required": [
        "DeliverabilityTestReport",
        "OverallPlacement",
        "IspPlacements"
      ],
      "members": {
        "DeliverabilityTestReport": {
          "shape": "DeliverabilityTestReport",
          "documentation": "<p>An object that contains the results of the predictive inbox placement test.</p>"
        },
        "OverallPlacement": {
          "shape": "PlacementStatistics",
          "documentation": "<p>An object that specifies how many test messages that were sent during the predictive inbox placement test were delivered to recipients' inboxes, how many were sent to recipients' spam folders, and how many weren't delivered.</p>"
        },
        "IspPlacements": {
          "shape": "IspPlacements",
          "documentation": "<p>An object that describes how the test email was handled by several email providers, including Gmail, Hotmail, Yahoo, AOL, and others.</p>"
        },
        "Message": {
          "shape": "MessageContent",
          "documentation": "<p>An object that contains the message that you sent when you performed this predictive inbox placement test.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that are associated with the predictive inbox placement test.</p>"
        }
      },
      "documentation": "<p>The results of the predictive inbox placement test.</p>"
    },
    "GetDomainDeliverabilityCampaignRequest": {
      "type": "structure",
      "required": [
        "CampaignId"
      ],
      "members": {
        "CampaignId": {
          "shape": "CampaignId",
          "documentation": "<p>The unique identifier for the campaign. The Deliverability dashboard automatically generates and assigns this identifier to a campaign.</p>",
          "location": "uri",
          "locationName": "CampaignId"
        }
      },
      "documentation": "<p>Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (<code>PutDeliverabilityDashboardOption</code> operation).</p>"
    },
    "GetDomainDeliverabilityCampaignResponse": {
      "type": "structure",
      "required": [
        "DomainDeliverabilityCampaign"
      ],
      "members": {
        "DomainDeliverabilityCampaign": {
          "shape": "DomainDeliverabilityCampaign",
          "documentation": "<p>An object that contains the deliverability data for the campaign.</p>"
        }
      },
      "documentation": "<p>An object that contains all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for.</p>"
    },
    "GetDomainStatisticsReportRequest": {
      "type": "structure",
      "required": [
        "Domain",
        "StartDate",
        "EndDate"
      ],
      "members": {
        "Domain": {
          "shape": "Identity",
          "documentation": "<p>The domain that you want to obtain deliverability metrics for.</p>",
          "location": "uri",
          "locationName": "Domain"
        },
        "StartDate": {
          "shape": "Timestamp",
          "documentation": "<p>The first day (in Unix time) that you want to obtain domain deliverability metrics for.</p>",
          "location": "querystring",
          "locationName": "StartDate"
        },
        "EndDate": {
          "shape": "Timestamp",
          "documentation": "<p>The last day (in Unix time) that you want to obtain domain deliverability metrics for. The <code>EndDate</code> that you specify has to be less than or equal to 30 days after the <code>StartDate</code>.</p>",
          "location": "querystring",
          "locationName": "EndDate"
        }
      },
      "documentation": "<p>A request to obtain deliverability metrics for a domain.</p>"
    },
    "GetDomainStatisticsReportResponse": {
      "type": "structure",
      "required": [
        "OverallVolume",
        "DailyVolumes"
      ],
      "members": {
        "OverallVolume": {
          "shape": "OverallVolume",
          "documentation": "<p>An object that contains deliverability metrics for the domain that you specified. The data in this object is a summary of all of the data that was collected from the <code>StartDate</code> to the <code>EndDate</code>.</p>"
        },
        "DailyVolumes": {
          "shape": "DailyVolumes",
          "documentation": "<p>An object that contains deliverability metrics for the domain that you specified. This object contains data for each day, starting on the <code>StartDate</code> and ending on the <code>EndDate</code>.</p>"
        }
      },
      "documentation": "<p>An object that includes statistics that are related to the domain that you specified.</p>"
    },
    "GetEmailIdentityPoliciesRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity that you want to retrieve policies for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        }
      },
      "documentation": "<p>A request to return the policies of an email identity.</p>"
    },
    "GetEmailIdentityPoliciesResponse": {
      "type": "structure",
      "members": {
        "Policies": {
          "shape": "PolicyMap",
          "documentation": "<p>A map of policy names to policies.</p>"
        }
      },
      "documentation": "<p>Identity policies associated with email identity.</p>"
    },
    "GetEmailIdentityRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity that you want to retrieve details for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        }
      },
      "documentation": "<p>A request to return details about an email identity.</p>"
    },
    "GetEmailIdentityResponse": {
      "type": "structure",
      "members": {
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>The email identity type.</p>"
        },
        "FeedbackForwardingStatus": {
          "shape": "Enabled",
          "documentation": "<p>The feedback forwarding configuration for the identity.</p> <p>If the value is <code>true</code>, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the <code>Return-Path</code> header of the original email.</p> <p>You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled).</p>"
        },
        "VerifiedForSendingStatus": {
          "shape": "Enabled",
          "documentation": "<p>Specifies whether or not the identity is verified. You can only send email from verified email addresses or domains. For more information about verifying identities, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"
        },
        "DkimAttributes": {
          "shape": "DkimAttributes",
          "documentation": "<p>An object that contains information about the DKIM attributes for the identity.</p>"
        },
        "MailFromAttributes": {
          "shape": "MailFromAttributes",
          "documentation": "<p>An object that contains information about the Mail-From attributes for the email identity.</p>"
        },
        "Policies": {
          "shape": "PolicyMap",
          "documentation": "<p>A map of policy names to policies.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of objects that define the tags (keys and values) that are associated with the email identity.</p>"
        }
      },
      "documentation": "<p>Details about an email identity.</p>"
    },
    "GetEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template you want to retrieve.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        }
      },
      "documentation": "<p>Represents a request to display the template object (which includes the subject line, HTML part and text part) for the template you specify.</p>"
    },
    "GetEmailTemplateResponse": {
      "type": "structure",
      "required": [
        "TemplateName",
        "TemplateContent"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template you want to retrieve.</p>"
        },
        "TemplateContent": {
          "shape": "EmailTemplateContent",
          "documentation": "<p>The content of the email template, composed of a subject line, an HTML part, and a text-only part.</p>"
        }
      },
      "documentation": "<p>The following element is returned by the service.</p>"
    },
    "GetImportJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the import job.</p>",
          "location": "uri",
          "locationName": "JobId"
        }
      },
      "documentation": "<p>Represents a request for information about an import job using the import job ID.</p>"
    },
    "GetImportJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>A string that represents the import job ID.</p>"
        },
        "ImportDestination": {
          "shape": "ImportDestination",
          "documentation": "<p>The destination of the import job.</p>"
        },
        "ImportDataSource": {
          "shape": "ImportDataSource",
          "documentation": "<p>The data source of the import job.</p>"
        },
        "FailureInfo": {
          "shape": "FailureInfo",
          "documentation": "<p>The failure details about an import job.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>The status of the import job.</p>"
        },
        "CreatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of when the import job was created.</p>"
        },
        "CompletedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of when the import job was completed.</p>"
        },
        "ProcessedRecordsCount": {
          "shape": "ProcessedRecordsCount",
          "documentation": "<p>The current number of records processed.</p>"
        },
        "FailedRecordsCount": {
          "shape": "FailedRecordsCount",
          "documentation": "<p>The number of records that failed processing because of invalid input or other reasons.</p>"
        }
      },
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "GetSuppressedDestinationRequest": {
      "type": "structure",
      "required": [
        "EmailAddress"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that's on the account suppression list.</p>",
          "location": "uri",
          "locationName": "EmailAddress"
        }
      },
      "documentation": "<p>A request to retrieve information about an email address that's on the suppression list for your account.</p>"
    },
    "GetSuppressedDestinationResponse": {
      "type": "structure",
      "required": [
        "SuppressedDestination"
      ],
      "members": {
        "SuppressedDestination": {
          "shape": "SuppressedDestination",
          "documentation": "<p>An object containing information about the suppressed email address.</p>"
        }
      },
      "documentation": "<p>Information about the suppressed email address.</p>"
    },
    "Identity": {
      "type": "string",
      "min": 1
    },
    "IdentityInfo": {
      "type": "structure",
      "members": {
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>The email identity type. The identity type can be one of the following:</p> <ul> <li> <p> <code>EMAIL_ADDRESS</code> – The identity is an email address.</p> </li> <li> <p> <code>DOMAIN</code> – The identity is a domain.</p> </li> <li> <p> <code>MANAGED_DOMAIN</code> – The identity is a domain that is managed by AWS.</p> </li> </ul>"
        },
        "IdentityName": {
          "shape": "Identity",
          "documentation": "<p>The address or domain of the identity.</p>"
        },
        "SendingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Indicates whether or not you can send email from the identity.</p> <p>An <i>identity</i> is an email address or domain that you send email from. Before you can send email from an identity, you have to demostrate that you own the identity, and that you authorize Amazon SES to send email from that identity.</p>"
        }
      },
      "documentation": "<p>Information about an email identity.</p>"
    },
    "IdentityInfoList": {
      "type": "list",
      "member": {
        "shape": "IdentityInfo"
      }
    },
    "IdentityType": {
      "type": "string",
      "documentation": "<p>The email identity type. The identity type can be one of the following:</p> <ul> <li> <p> <code>EMAIL_ADDRESS</code> – The identity is an email address.</p> </li> <li> <p> <code>DOMAIN</code> – The identity is a domain.</p> </li> </ul>",
      "enum": [
        "EMAIL_ADDRESS",
        "DOMAIN",
        "MANAGED_DOMAIN"
      ]
    },
    "ImageUrl": {
      "type": "string"
    },
    "ImportDataSource": {
      "type": "structure",
      "required": [
        "S3Url",
        "DataFormat"
      ],
      "members": {
        "S3Url": {
          "shape": "S3Url",
          "documentation": "<p>An Amazon S3 URL in the format s3://<i>&lt;bucket_name&gt;</i>/<i>&lt;object&gt;</i>.</p>"
        },
        "DataFormat": {
          "shape": "DataFormat",
          "documentation": "<p>The data format of the import job's data source.</p>"
        }
      },
      "documentation": "<p>An object that contains details about the data source of the import job.</p>"
    },
    "ImportDestination": {
      "type": "structure",
      "required": [
        "SuppressionListDestination"
      ],
      "members": {
        "SuppressionListDestination": {
          "shape": "SuppressionListDestination",
          "documentation": "<p>An object that contains the action of the import job towards suppression list.</p>"
        }
      },
      "documentation": "<p>An object that contains details about the resource destination the import job is going to target.</p>"
    },
    "ImportDestinationType": {
      "type": "string",
      "documentation": "<p>The destination of the import job, which can be used to list import jobs that have a certain <code>ImportDestinationType</code>.</p>",
      "enum": [
        "SUPPRESSION_LIST"
      ]
    },
    "ImportJobSummary": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId"
        },
        "ImportDestination": {
          "shape": "ImportDestination"
        },
        "JobStatus": {
          "shape": "JobStatus"
        },
        "CreatedTimestamp": {
          "shape": "Timestamp"
        }
      },
      "documentation": "<p>A summary of the import job.</p>"
    },
    "ImportJobSummaryList": {
      "type": "list",
      "member": {
        "shape": "ImportJobSummary"
      },
      "documentation": "<p>A list of the import job summaries.</p>"
    },
    "InboxPlacementTrackingOption": {
      "type": "structure",
      "members": {
        "Global": {
          "shape": "Enabled",
          "documentation": "<p>Specifies whether inbox placement data is being tracked for the domain.</p>"
        },
        "TrackedIsps": {
          "shape": "IspNameList",
          "documentation": "<p>An array of strings, one for each major email provider that the inbox placement data applies to.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the inbox placement data settings for a verified domain that’s associated with your AWS account. This data is available only if you enabled the Deliverability dashboard for the domain.</p>"
    },
    "Ip": {
      "type": "string",
      "documentation": "<p>An IPv4 address.</p>"
    },
    "IpList": {
      "type": "list",
      "member": {
        "shape": "Ip"
      }
    },
    "IspName": {
      "type": "string",
      "documentation": "<p>The name of an email provider.</p>"
    },
    "IspNameList": {
      "type": "list",
      "member": {
        "shape": "IspName"
      }
    },
    "IspPlacement": {
      "type": "structure",
      "members": {
        "IspName": {
          "shape": "IspName",
          "documentation": "<p>The name of the email provider that the inbox placement data applies to.</p>"
        },
        "PlacementStatistics": {
          "shape": "PlacementStatistics",
          "documentation": "<p>An object that contains inbox placement metrics for a specific email provider.</p>"
        }
      },
      "documentation": "<p>An object that describes how email sent during the predictive inbox placement test was handled by a certain email provider.</p>"
    },
    "IspPlacements": {
      "type": "list",
      "member": {
        "shape": "IspPlacement"
      }
    },
    "JobId": {
      "type": "string",
      "documentation": "<p>A string that represents the import job ID.</p>",
      "min": 1
    },
    "JobStatus": {
      "type": "string",
      "documentation": "<p>The status of the import job.</p>",
      "enum": [
        "CREATED",
        "PROCESSING",
        "COMPLETED",
        "FAILED"
      ]
    },
    "KinesisFirehoseDestination": {
      "type": "structure",
      "required": [
        "IamRoleArn",
        "DeliveryStreamArn"
      ],
      "members": {
        "IamRoleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that the Amazon SES API v2 uses to send email events to the Amazon Kinesis Data Firehose stream.</p>"
        },
        "DeliveryStreamArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that the Amazon SES API v2 sends email events to.</p>"
        }
      },
      "documentation": "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"
    },
    "LastFreshStart": {
      "type": "timestamp",
      "documentation": "<p>The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start.</p>"
    },
    "ListConfigurationSetsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListConfigurationSets</code> to indicate the position in the list of configuration sets.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListConfigurationSets</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to obtain a list of configuration sets for your Amazon SES account in the current AWS Region.</p>"
    },
    "ListConfigurationSetsResponse": {
      "type": "structure",
      "members": {
        "ConfigurationSets": {
          "shape": "ConfigurationSetNameList",
          "documentation": "<p>An array that contains all of the configuration sets in your Amazon SES account in the current AWS Region.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional configuration sets to list. To view additional configuration sets, issue another request to <code>ListConfigurationSets</code>, and pass this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list of configuration sets in your Amazon SES account in the current AWS Region.</p>"
    },
    "ListCustomVerificationEmailTemplatesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListCustomVerificationEmailTemplates</code> to indicate the position in the list of custom verification email templates.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListCustomVerificationEmailTemplates</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p> <p>The value you specify has to be at least 1, and can be no more than 50.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>Represents a request to list the existing custom verification email templates for your account.</p>"
    },
    "ListCustomVerificationEmailTemplatesResponse": {
      "type": "structure",
      "members": {
        "CustomVerificationEmailTemplates": {
          "shape": "CustomVerificationEmailTemplatesList",
          "documentation": "<p>A list of the custom verification email templates that exist in your account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token indicating that there are additional custom verification email templates available to be listed. Pass this token to a subsequent call to <code>ListCustomVerificationEmailTemplates</code> to retrieve the next 50 custom verification email templates.</p>"
        }
      },
      "documentation": "<p>The following elements are returned by the service.</p>"
    },
    "ListDedicatedIpPoolsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate the position in the list of dedicated IP pools.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to obtain a list of dedicated IP pools.</p>"
    },
    "ListDedicatedIpPoolsResponse": {
      "type": "structure",
      "members": {
        "DedicatedIpPools": {
          "shape": "ListOfDedicatedIpPools",
          "documentation": "<p>A list of all of the dedicated IP pools that are associated with your AWS account in the current Region.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional IP pools to list. To view additional IP pools, issue another request to <code>ListDedicatedIpPools</code>, passing this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list of dedicated IP pools.</p>"
    },
    "ListDeliverabilityTestReportsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to indicate the position in the list of predictive inbox placement tests.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListDeliverabilityTestReports</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p> <p>The value you specify has to be at least 0, and can be no more than 1000.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to list all of the predictive inbox placement tests that you've performed.</p>"
    },
    "ListDeliverabilityTestReportsResponse": {
      "type": "structure",
      "required": [
        "DeliverabilityTestReports"
      ],
      "members": {
        "DeliverabilityTestReports": {
          "shape": "DeliverabilityTestReports",
          "documentation": "<p>An object that contains a lists of predictive inbox placement tests that you've performed.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional predictive inbox placement tests to list. To view additional predictive inbox placement tests, issue another request to <code>ListDeliverabilityTestReports</code>, and pass this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list of the predictive inbox placement test reports that are available for your account, regardless of whether or not those tests are complete.</p>"
    },
    "ListDomainDeliverabilityCampaignsRequest": {
      "type": "structure",
      "required": [
        "StartDate",
        "EndDate",
        "SubscribedDomain"
      ],
      "members": {
        "StartDate": {
          "shape": "Timestamp",
          "documentation": "<p>The first day, in Unix time format, that you want to obtain deliverability data for.</p>",
          "location": "querystring",
          "locationName": "StartDate"
        },
        "EndDate": {
          "shape": "Timestamp",
          "documentation": "<p>The last day, in Unix time format, that you want to obtain deliverability data for. This value has to be less than or equal to 30 days after the value of the <code>StartDate</code> parameter.</p>",
          "location": "querystring",
          "locationName": "EndDate"
        },
        "SubscribedDomain": {
          "shape": "Domain",
          "documentation": "<p>The domain to obtain deliverability data for.</p>",
          "location": "uri",
          "locationName": "SubscribedDomain"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that’s returned from a previous call to the <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the position of a campaign in the list of campaigns.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The maximum number of results to include in response to a single call to the <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results is larger than the number that you specify in this parameter, the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard.</p>"
    },
    "ListDomainDeliverabilityCampaignsResponse": {
      "type": "structure",
      "required": [
        "DomainDeliverabilityCampaigns"
      ],
      "members": {
        "DomainDeliverabilityCampaigns": {
          "shape": "DomainDeliverabilityCampaignList",
          "documentation": "<p>An array of responses, one for each campaign that used the domain to send email during the specified time range.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that’s returned from a previous call to the <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the position of the campaign in the list of campaigns.</p>"
        }
      },
      "documentation": "<p>An array of objects that provide deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard for the domain.</p>"
    },
    "ListEmailIdentitiesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate the position in the list of identities.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p> <p>The value you specify has to be at least 0, and can be no more than 1000.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to list all of the email identities associated with your AWS account. This list includes identities that you've already verified, identities that are unverified, and identities that were verified in the past, but are no longer verified.</p>"
    },
    "ListEmailIdentitiesResponse": {
      "type": "structure",
      "members": {
        "EmailIdentities": {
          "shape": "IdentityInfoList",
          "documentation": "<p>An array that includes all of the email identities associated with your AWS account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional configuration sets to list. To view additional configuration sets, issue another request to <code>ListEmailIdentities</code>, and pass this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list of all of the identities that you've attempted to verify, regardless of whether or not those identities were successfully verified.</p>"
    },
    "ListEmailTemplatesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate the position in the list of email templates.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p> <p>The value you specify has to be at least 1, and can be no more than 10.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>Represents a request to list the email templates present in your Amazon SES account in the current AWS Region. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "ListEmailTemplatesResponse": {
      "type": "structure",
      "members": {
        "TemplatesMetadata": {
          "shape": "EmailTemplateMetadataList",
          "documentation": "<p>An array the contains the name and creation time stamp for each template in your Amazon SES account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent <code>ListEmailTemplates</code> call to retrieve the next 10 email templates.</p>"
        }
      },
      "documentation": "<p>The following elements are returned by the service.</p>"
    },
    "ListImportJobsRequest": {
      "type": "structure",
      "members": {
        "ImportDestinationType": {
          "shape": "ImportDestinationType",
          "documentation": "<p>The destination of the import job, which can be used to list import jobs that have a certain <code>ImportDestinationType</code>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A string token indicating that there might be additional import jobs available to be listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the same parameters to retrieve the next page of import jobs.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>Maximum number of import jobs to return at once. Use this parameter to paginate results. If additional import jobs exist beyond the specified limit, the <code>NextToken</code> element is sent in the response. Use the <code>NextToken</code> value in subsequent requests to retrieve additional addresses.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>Represents a request to list all of the import jobs for a data destination within the specified maximum number of import jobs.</p>"
    },
    "ListImportJobsResponse": {
      "type": "structure",
      "members": {
        "ImportJobs": {
          "shape": "ImportJobSummaryList",
          "documentation": "<p>A list of the import job summaries.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A string token indicating that there might be additional import jobs available to be listed. Copy this token to a subsequent call to <code>ListImportJobs</code> with the same parameters to retrieve the next page of import jobs.</p>"
        }
      },
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "ListOfDedicatedIpPools": {
      "type": "list",
      "member": {
        "shape": "PoolName"
      },
      "documentation": "<p>A list of dedicated IP pools that are associated with your AWS account.</p>"
    },
    "ListSuppressedDestinationsRequest": {
      "type": "structure",
      "members": {
        "Reasons": {
          "shape": "SuppressionListReasons",
          "documentation": "<p>The factors that caused the email address to be added to .</p>",
          "location": "querystring",
          "locationName": "Reason"
        },
        "StartDate": {
          "shape": "Timestamp",
          "documentation": "<p>Used to filter the list of suppressed email destinations so that it only includes addresses that were added to the list after a specific date. The date that you specify should be in Unix time format.</p>",
          "location": "querystring",
          "locationName": "StartDate"
        },
        "EndDate": {
          "shape": "Timestamp",
          "documentation": "<p>Used to filter the list of suppressed email destinations so that it only includes addresses that were added to the list before a specific date. The date that you specify should be in Unix time format.</p>",
          "location": "querystring",
          "locationName": "EndDate"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token returned from a previous call to <code>ListSuppressedDestinations</code> to indicate the position in the list of suppressed email addresses.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "PageSize": {
          "shape": "MaxItems",
          "documentation": "<p>The number of results to show in a single call to <code>ListSuppressedDestinations</code>. If the number of results is larger than the number you specified in this parameter, then the response includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>",
          "location": "querystring",
          "locationName": "PageSize"
        }
      },
      "documentation": "<p>A request to obtain a list of email destinations that are on the suppression list for your account.</p>"
    },
    "ListSuppressedDestinationsResponse": {
      "type": "structure",
      "members": {
        "SuppressedDestinationSummaries": {
          "shape": "SuppressedDestinationSummaries",
          "documentation": "<p>A list of summaries, each containing a summary for a suppressed email destination.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that indicates that there are additional email addresses on the suppression list for your account. To view additional suppressed addresses, issue another request to <code>ListSuppressedDestinations</code>, and pass this token in the <code>NextToken</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list of suppressed email addresses.</p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag information for.</p>",
          "location": "querystring",
          "locationName": "ResourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array that lists all the tags that are associated with the resource. Each tag consists of a required tag key (<code>Key</code>) and an associated tag value (<code>Value</code>)</p>"
        }
      }
    },
    "MailFromAttributes": {
      "type": "structure",
      "required": [
        "MailFromDomain",
        "MailFromDomainStatus",
        "BehaviorOnMxFailure"
      ],
      "members": {
        "MailFromDomain": {
          "shape": "MailFromDomainName",
          "documentation": "<p>The name of a domain that an email identity uses as a custom MAIL FROM domain.</p>"
        },
        "MailFromDomainStatus": {
          "shape": "MailFromDomainStatus",
          "documentation": "<p>The status of the MAIL FROM domain. This status can have the following values:</p> <ul> <li> <p> <code>PENDING</code> – Amazon SES hasn't started searching for the MX record yet.</p> </li> <li> <p> <code>SUCCESS</code> – Amazon SES detected the required MX record for the MAIL FROM domain.</p> </li> <li> <p> <code>FAILED</code> – Amazon SES can't find the required MX record, or the record no longer exists.</p> </li> <li> <p> <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which prevented Amazon SES from determining the status of the MAIL FROM domain.</p> </li> </ul>"
        },
        "BehaviorOnMxFailure": {
          "shape": "BehaviorOnMxFailure",
          "documentation": "<p>The action that you want to take if the required MX record can't be found when you send an email. When you set this value to <code>UseDefaultValue</code>, the mail is sent using <i>amazonses.com</i> as the MAIL FROM domain. When you set this value to <code>RejectMessage</code>, the Amazon SES API v2 returns a <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the email.</p> <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code> states.</p>"
        }
      },
      "documentation": "<p>A list of attributes that are associated with a MAIL FROM domain.</p>"
    },
    "MailFromDomainName": {
      "type": "string",
      "documentation": "<p>The domain that you want to use as a MAIL FROM domain.</p>"
    },
    "MailFromDomainStatus": {
      "type": "string",
      "documentation": "<p>The status of the MAIL FROM domain. This status can have the following values:</p> <ul> <li> <p> <code>PENDING</code> – Amazon SES hasn't started searching for the MX record yet.</p> </li> <li> <p> <code>SUCCESS</code> – Amazon SES detected the required MX record for the MAIL FROM domain.</p> </li> <li> <p> <code>FAILED</code> – Amazon SES can't find the required MX record, or the record no longer exists.</p> </li> <li> <p> <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which prevented Amazon SES from determining the status of the MAIL FROM domain.</p> </li> </ul>",
      "enum": [
        "PENDING",
        "SUCCESS",
        "FAILED",
        "TEMPORARY_FAILURE"
      ]
    },
    "MailType": {
      "type": "string",
      "enum": [
        "MARKETING",
        "TRANSACTIONAL"
      ]
    },
    "Max24HourSend": {
      "type": "double"
    },
    "MaxItems": {
      "type": "integer"
    },
    "MaxSendRate": {
      "type": "double"
    },
    "Message": {
      "type": "structure",
      "required": [
        "Subject",
        "Body"
      ],
      "members": {
        "Subject": {
          "shape": "Content",
          "documentation": "<p>The subject line of the email. The subject line can only contain 7-bit ASCII characters. However, you can specify non-ASCII characters in the subject line by using encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>.</p>"
        },
        "Body": {
          "shape": "Body",
          "documentation": "<p>The body of the message. You can specify an HTML version of the message, a text-only version of the message, or both.</p>"
        }
      },
      "documentation": "<p>Represents the email message that you're sending. The <code>Message</code> object consists of a subject line and a message body.</p>"
    },
    "MessageContent": {
      "type": "string",
      "documentation": "<p>The body of an email message.</p>"
    },
    "MessageData": {
      "type": "string"
    },
    "MessageTag": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "MessageTagName",
          "documentation": "<p>The name of the message tag. The message tag name has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
        },
        "Value": {
          "shape": "MessageTagValue",
          "documentation": "<p>The value of the message tag. The message tag value has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains the name and value of a tag that you apply to an email. You can use message tags when you publish email sending events. </p>"
    },
    "MessageTagList": {
      "type": "list",
      "member": {
        "shape": "MessageTag"
      },
      "documentation": "<p>A list of message tags.</p>"
    },
    "MessageTagName": {
      "type": "string",
      "documentation": "<p>The name of the message tag. The message tag name has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
    },
    "MessageTagValue": {
      "type": "string",
      "documentation": "<p>The value of the message tag. The message tag value has to meet the following criteria:</p> <ul> <li> <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9), underscores (_), or dashes (-).</p> </li> <li> <p>It can contain no more than 256 characters.</p> </li> </ul>"
    },
    "NextToken": {
      "type": "string"
    },
    "OutboundMessageId": {
      "type": "string"
    },
    "OverallVolume": {
      "type": "structure",
      "members": {
        "VolumeStatistics": {
          "shape": "VolumeStatistics",
          "documentation": "<p>An object that contains information about the numbers of messages that arrived in recipients' inboxes and junk mail folders.</p>"
        },
        "ReadRatePercent": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that were sent from the domain that were read by their recipients.</p>"
        },
        "DomainIspPlacements": {
          "shape": "DomainIspPlacements",
          "documentation": "<p>An object that contains inbox and junk mail placement metrics for individual email providers.</p>"
        }
      },
      "documentation": "<p>An object that contains information about email that was sent from the selected domain.</p>"
    },
    "Percentage": {
      "type": "double",
      "documentation": "<p>An object that contains information about inbox placement percentages.</p>"
    },
    "Percentage100Wrapper": {
      "type": "integer"
    },
    "PinpointDestination": {
      "type": "structure",
      "members": {
        "ApplicationArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Pinpoint project that you want to send email events to.</p>"
        }
      },
      "documentation": "<p>An object that defines an Amazon Pinpoint project destination for email events. You can send email event data to a Amazon Pinpoint project to view metrics using the Transactional Messaging dashboards that are built in to Amazon Pinpoint. For more information, see <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/analytics-transactional-messages.html\">Transactional Messaging Charts</a> in the <i>Amazon Pinpoint User Guide</i>.</p>"
    },
    "PlacementStatistics": {
      "type": "structure",
      "members": {
        "InboxPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that arrived in recipients' inboxes during the predictive inbox placement test.</p>"
        },
        "SpamPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that arrived in recipients' spam or junk mail folders during the predictive inbox placement test.</p>"
        },
        "MissingPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that didn't arrive in recipients' inboxes at all during the predictive inbox placement test.</p>"
        },
        "SpfPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that were authenticated by using Sender Policy Framework (SPF) during the predictive inbox placement test.</p>"
        },
        "DkimPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of emails that were authenticated by using DomainKeys Identified Mail (DKIM) during the predictive inbox placement test.</p>"
        }
      },
      "documentation": "<p>An object that contains inbox placement data for an email provider.</p>"
    },
    "Policy": {
      "type": "string",
      "documentation": "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p> <p>For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>",
      "min": 1
    },
    "PolicyMap": {
      "type": "map",
      "key": {
        "shape": "PolicyName"
      },
      "value": {
        "shape": "Policy"
      },
      "documentation": "<p>An object that contains mapping between <code>PolicyName</code> and <code>Policy</code> text.</p>"
    },
    "PolicyName": {
      "type": "string",
      "documentation": "<p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>",
      "max": 64,
      "min": 1
    },
    "PoolName": {
      "type": "string",
      "documentation": "<p>The name of a dedicated IP pool.</p>"
    },
    "PrivateKey": {
      "type": "string",
      "max": 20480,
      "min": 1,
      "pattern": "^[a-zA-Z0-9+\\/]+={0,2}$",
      "sensitive": true
    },
    "ProcessedRecordsCount": {
      "type": "integer"
    },
    "PutAccountDedicatedIpWarmupAttributesRequest": {
      "type": "structure",
      "members": {
        "AutoWarmupEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are associated with your Amazon SES account in the current AWS Region. Set to <code>true</code> to enable the automatic warm-up feature, or set to <code>false</code> to disable it.</p>"
        }
      },
      "documentation": "<p>A request to enable or disable the automatic IP address warm-up feature.</p>"
    },
    "PutAccountDedicatedIpWarmupAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutAccountDetailsRequest": {
      "type": "structure",
      "required": [
        "MailType",
        "WebsiteURL",
        "UseCaseDescription"
      ],
      "members": {
        "MailType": {
          "shape": "MailType",
          "documentation": "<p>The type of email your account will send.</p>"
        },
        "WebsiteURL": {
          "shape": "WebsiteURL",
          "documentation": "<p>The URL of your website. This information helps us better understand the type of content that you plan to send.</p>"
        },
        "ContactLanguage": {
          "shape": "ContactLanguage",
          "documentation": "<p>The language you would prefer to be contacted with.</p>"
        },
        "UseCaseDescription": {
          "shape": "UseCaseDescription",
          "documentation": "<p>A description of the types of email that you plan to send.</p>"
        },
        "AdditionalContactEmailAddresses": {
          "shape": "AdditionalContactEmailAddresses",
          "documentation": "<p>Additional email addresses that you would like to be notified regarding Amazon SES matters.</p>"
        },
        "ProductionAccessEnabled": {
          "shape": "EnabledWrapper",
          "documentation": "<p>Indicates whether or not your account should have production access in the current AWS Region.</p> <p>If the value is <code>false</code>, then your account is in the <i>sandbox</i>. When your account is in the sandbox, you can only send email to verified identities. Additionally, the maximum number of emails you can send in a 24-hour period (your sending quota) is 200, and the maximum number of emails you can send per second (your maximum sending rate) is 1.</p> <p>If the value is <code>true</code>, then your account has production access. When your account has production access, you can send email to any address. The sending quota and maximum sending rate for your account vary based on your specific use case.</p>"
        }
      },
      "documentation": "<p>A request to submit new account details.</p>"
    },
    "PutAccountDetailsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutAccountSendingAttributesRequest": {
      "type": "structure",
      "members": {
        "SendingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Enables or disables your account's ability to send email. Set to <code>true</code> to enable email sending, or set to <code>false</code> to disable email sending.</p> <note> <p>If AWS paused your account's ability to send email, you can't use this operation to resume your account's ability to send email.</p> </note>"
        }
      },
      "documentation": "<p>A request to change the ability of your account to send email.</p>"
    },
    "PutAccountSendingAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutAccountSuppressionAttributesRequest": {
      "type": "structure",
      "members": {
        "SuppressedReasons": {
          "shape": "SuppressionListReasons",
          "documentation": "<p>A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. This list can contain any or all of the following:</p> <ul> <li> <p> <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.</p> </li> <li> <p> <code>BOUNCE</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A request to change your account's suppression preferences.</p>"
    },
    "PutAccountSuppressionAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutConfigurationSetDeliveryOptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to associate with a dedicated IP pool.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "TlsPolicy": {
          "shape": "TlsPolicy",
          "documentation": "<p>Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only delivered if a TLS connection can be established. If the value is <code>Optional</code>, messages can be delivered in plain text if a TLS connection can't be established.</p>"
        },
        "SendingPoolName": {
          "shape": "SendingPoolName",
          "documentation": "<p>The name of the dedicated IP pool that you want to associate with the configuration set.</p>"
        }
      },
      "documentation": "<p>A request to associate a configuration set with a dedicated IP pool.</p>"
    },
    "PutConfigurationSetDeliveryOptionsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutConfigurationSetReputationOptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to enable or disable reputation metric tracking for.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "ReputationMetricsEnabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration set. If <code>false</code>, tracking of reputation metrics is disabled for the configuration set.</p>"
        }
      },
      "documentation": "<p>A request to enable or disable tracking of reputation metrics for a configuration set.</p>"
    },
    "PutConfigurationSetReputationOptionsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutConfigurationSetSendingOptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to enable or disable email sending for.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "SendingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, email sending is enabled for the configuration set. If <code>false</code>, email sending is disabled for the configuration set.</p>"
        }
      },
      "documentation": "<p>A request to enable or disable the ability of Amazon SES to send emails that use a specific configuration set.</p>"
    },
    "PutConfigurationSetSendingOptionsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutConfigurationSetSuppressionOptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to change the suppression list preferences for.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "SuppressedReasons": {
          "shape": "SuppressionListReasons",
          "documentation": "<p>A list that contains the reasons that email addresses are automatically added to the suppression list for your account. This list can contain any or all of the following:</p> <ul> <li> <p> <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.</p> </li> <li> <p> <code>BOUNCE</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A request to change the account suppression list preferences for a specific configuration set.</p>"
    },
    "PutConfigurationSetSuppressionOptionsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutConfigurationSetTrackingOptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to add a custom tracking domain to.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "CustomRedirectDomain": {
          "shape": "CustomRedirectDomain",
          "documentation": "<p>The domain that you want to use to track open and click events.</p>"
        }
      },
      "documentation": "<p>A request to add a custom domain for tracking open and click events to a configuration set.</p>"
    },
    "PutConfigurationSetTrackingOptionsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutDedicatedIpInPoolRequest": {
      "type": "structure",
      "required": [
        "Ip",
        "DestinationPoolName"
      ],
      "members": {
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>The IP address that you want to move to the dedicated IP pool. The value you specify has to be a dedicated IP address that's associated with your AWS account.</p>",
          "location": "uri",
          "locationName": "IP"
        },
        "DestinationPoolName": {
          "shape": "PoolName",
          "documentation": "<p>The name of the IP pool that you want to add the dedicated IP address to. You have to specify an IP pool that already exists.</p>"
        }
      },
      "documentation": "<p>A request to move a dedicated IP address to a dedicated IP pool.</p>"
    },
    "PutDedicatedIpInPoolResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutDedicatedIpWarmupAttributesRequest": {
      "type": "structure",
      "required": [
        "Ip",
        "WarmupPercentage"
      ],
      "members": {
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>The dedicated IP address that you want to update the warm-up attributes for.</p>",
          "location": "uri",
          "locationName": "IP"
        },
        "WarmupPercentage": {
          "shape": "Percentage100Wrapper",
          "documentation": "<p>The warm-up percentage that you want to associate with the dedicated IP address.</p>"
        }
      },
      "documentation": "<p>A request to change the warm-up attributes for a dedicated IP address. This operation is useful when you want to resume the warm-up process for an existing IP address.</p>"
    },
    "PutDedicatedIpWarmupAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutDeliverabilityDashboardOptionRequest": {
      "type": "structure",
      "required": [
        "DashboardEnabled"
      ],
      "members": {
        "DashboardEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Specifies whether to enable the Deliverability dashboard. To enable the dashboard, set this value to <code>true</code>.</p>"
        },
        "SubscribedDomains": {
          "shape": "DomainDeliverabilityTrackingOptions",
          "documentation": "<p>An array of objects, one for each verified domain that you use to send email and enabled the Deliverability dashboard for.</p>"
        }
      },
      "documentation": "<p>Enable or disable the Deliverability dashboard. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon SES API v2. You also gain the ability to perform predictive inbox placement tests.</p> <p>When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon SES and other AWS services. For more information about the features and cost of a Deliverability dashboard subscription, see <a href=\"http://aws.amazon.com/pinpoint/pricing/\">Amazon Pinpoint Pricing</a>.</p>"
    },
    "PutDeliverabilityDashboardOptionResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>A response that indicates whether the Deliverability dashboard is enabled.</p>"
    },
    "PutEmailIdentityDkimAttributesRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity that you want to change the DKIM settings for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "SigningEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Sets the DKIM signing configuration for the identity.</p> <p>When you set this value <code>true</code>, then the messages that are sent from the identity are signed using DKIM. If you set this value to <code>false</code>, your messages are sent without DKIM signing.</p>"
        }
      },
      "documentation": "<p>A request to enable or disable DKIM signing of email that you send from an email identity.</p>"
    },
    "PutEmailIdentityDkimAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutEmailIdentityDkimSigningAttributesRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity",
        "SigningAttributesOrigin"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity that you want to configure DKIM for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "SigningAttributesOrigin": {
          "shape": "DkimSigningAttributesOrigin",
          "documentation": "<p>The method that you want to use to configure DKIM for the identity. There are two possible values:</p> <ul> <li> <p> <code>AWS_SES</code> – Configure DKIM for the identity by using <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a>.</p> </li> <li> <p> <code>EXTERNAL</code> – Configure DKIM for the identity by using Bring Your Own DKIM (BYODKIM).</p> </li> </ul>"
        },
        "SigningAttributes": {
          "shape": "DkimSigningAttributes",
          "documentation": "<p>An object that contains information about the private key and selector that you want to use to configure DKIM for the identity. This object is only required if you want to configure Bring Your Own DKIM (BYODKIM) for the identity.</p>"
        }
      },
      "documentation": "<p>A request to change the DKIM attributes for an email identity.</p>"
    },
    "PutEmailIdentityDkimSigningAttributesResponse": {
      "type": "structure",
      "members": {
        "DkimStatus": {
          "shape": "DkimStatus",
          "documentation": "<p>The DKIM authentication status of the identity. Amazon SES determines the authentication status by searching for specific records in the DNS configuration for your domain. If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to set up DKIM authentication, Amazon SES tries to find three unique CNAME records in the DNS configuration for your domain.</p> <p>If you provided a public key to perform DKIM authentication, Amazon SES tries to find a TXT record that uses the selector that you specified. The value of the TXT record must be a public key that's paired with the private key that you specified in the process of creating the identity.</p> <p>The status can be one of the following:</p> <ul> <li> <p> <code>PENDING</code> – The verification process was initiated, but Amazon SES hasn't yet detected the DKIM records in the DNS configuration for the domain.</p> </li> <li> <p> <code>SUCCESS</code> – The verification process completed successfully.</p> </li> <li> <p> <code>FAILED</code> – The verification process failed. This typically occurs when Amazon SES fails to find the DKIM records in the DNS configuration of the domain.</p> </li> <li> <p> <code>TEMPORARY_FAILURE</code> – A temporary issue is preventing Amazon SES from determining the DKIM authentication status of the domain.</p> </li> <li> <p> <code>NOT_STARTED</code> – The DKIM verification process hasn't been initiated for the domain.</p> </li> </ul>"
        },
        "DkimTokens": {
          "shape": "DnsTokenList",
          "documentation": "<p>If you used <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html\">Easy DKIM</a> to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete.</p> <p>If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector that's associated with your public key.</p> <p>Regardless of the DKIM authentication method you use, Amazon SES searches for the appropriate records in the DNS configuration of the domain for up to 72 hours.</p>"
        }
      },
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response.</p> <p>The following data is returned in JSON format by the service.</p>"
    },
    "PutEmailIdentityFeedbackAttributesRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity that you want to configure bounce and complaint feedback forwarding for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "EmailForwardingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>Sets the feedback forwarding configuration for the identity.</p> <p>If the value is <code>true</code>, you receive email notifications when bounce or complaint events occur. These notifications are sent to the address that you specified in the <code>Return-Path</code> header of the original email.</p> <p>You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications (for example, by setting up an event destination), you receive an email notification when these events occur (even if this setting is disabled).</p>"
        }
      },
      "documentation": "<p>A request to set the attributes that control how bounce and complaint events are processed.</p>"
    },
    "PutEmailIdentityFeedbackAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutEmailIdentityMailFromAttributesRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The verified email identity that you want to set up the custom MAIL FROM domain for.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "MailFromDomain": {
          "shape": "MailFromDomainName",
          "documentation": "<p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must meet the following criteria:</p> <ul> <li> <p>It has to be a subdomain of the verified identity.</p> </li> <li> <p>It can't be used to receive email.</p> </li> <li> <p>It can't be used in a \"From\" address if the MAIL FROM domain is a destination for feedback forwarding emails.</p> </li> </ul>"
        },
        "BehaviorOnMxFailure": {
          "shape": "BehaviorOnMxFailure",
          "documentation": "<p>The action that you want to take if the required MX record isn't found when you send an email. When you set this value to <code>UseDefaultValue</code>, the mail is sent using <i>amazonses.com</i> as the MAIL FROM domain. When you set this value to <code>RejectMessage</code>, the Amazon SES API v2 returns a <code>MailFromDomainNotVerified</code> error, and doesn't attempt to deliver the email.</p> <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code> states.</p>"
        }
      },
      "documentation": "<p>A request to configure the custom MAIL FROM domain for a verified identity.</p>"
    },
    "PutEmailIdentityMailFromAttributesResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "PutSuppressedDestinationRequest": {
      "type": "structure",
      "required": [
        "EmailAddress",
        "Reason"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that should be added to the suppression list for your account.</p>"
        },
        "Reason": {
          "shape": "SuppressionListReason",
          "documentation": "<p>The factors that should cause the email address to be added to the suppression list for your account.</p>"
        }
      },
      "documentation": "<p>A request to add an email destination to the suppression list for your account.</p>"
    },
    "PutSuppressedDestinationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "RawMessage": {
      "type": "structure",
      "required": [
        "Data"
      ],
      "members": {
        "Data": {
          "shape": "RawMessageData",
          "documentation": "<p>The raw email message. The message has to meet the following criteria:</p> <ul> <li> <p>The message has to contain a header and a body, separated by one blank line.</p> </li> <li> <p>All of the required header fields must be present in the message.</p> </li> <li> <p>Each part of a multipart MIME message must be formatted properly.</p> </li> <li> <p>Attachments must be in a file format that the Amazon SES supports.</p> </li> <li> <p>The entire message must be Base64 encoded.</p> </li> <li> <p>If any of the MIME parts in your message contain content that is outside of the 7-bit ASCII character range, you should encode that content to ensure that recipients' email clients render the message properly.</p> </li> <li> <p>The length of any single line of text in the message can't exceed 1,000 characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the raw content of an email message.</p>"
    },
    "RawMessageData": {
      "type": "blob",
      "documentation": "<p>The raw email message. The message has to meet the following criteria:</p> <ul> <li> <p>The message has to contain a header and a body, separated by one blank line.</p> </li> <li> <p>All of the required header fields must be present in the message.</p> </li> <li> <p>Each part of a multipart MIME message must be formatted properly.</p> </li> <li> <p>Attachments must be in a file format that the Amazon SES API v2 supports. </p> </li> <li> <p>The entire message must be Base64 encoded.</p> </li> <li> <p>If any of the MIME parts in your message contain content that is outside of the 7-bit ASCII character range, you should encode that content to ensure that recipients' email clients render the message properly.</p> </li> <li> <p>The length of any single line of text in the message can't exceed 1,000 characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p> </li> </ul>"
    },
    "RblName": {
      "type": "string",
      "documentation": "<p>The name of a blacklist that an IP address was found on.</p>"
    },
    "RenderedEmailTemplate": {
      "type": "string",
      "documentation": "<p>The complete MIME message rendered by applying the data in the TemplateData parameter to the template specified in the TemplateName parameter.</p>"
    },
    "ReplacementEmailContent": {
      "type": "structure",
      "members": {
        "ReplacementTemplate": {
          "shape": "ReplacementTemplate",
          "documentation": "<p>The <code>ReplacementTemplate</code> associated with <code>ReplacementEmailContent</code>.</p>"
        }
      },
      "documentation": "<p>The <code>ReplaceEmailContent</code> object to be used for a specific <code>BulkEmailEntry</code>. The <code>ReplacementTemplate</code> can be specified within this object.</p>"
    },
    "ReplacementTemplate": {
      "type": "structure",
      "members": {
        "ReplacementTemplateData": {
          "shape": "EmailTemplateData",
          "documentation": "<p>A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>"
        }
      },
      "documentation": "<p>An object which contains <code>ReplacementTemplateData</code> to be used for a specific <code>BulkEmailEntry</code>.</p>"
    },
    "ReportId": {
      "type": "string",
      "documentation": "<p>A unique string that identifies a Deliverability dashboard report.</p>"
    },
    "ReportName": {
      "type": "string",
      "documentation": "<p>A name that helps you identify a report generated by the Deliverability dashboard.</p>"
    },
    "ReputationOptions": {
      "type": "structure",
      "members": {
        "ReputationMetricsEnabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration set. If <code>false</code>, tracking of reputation metrics is disabled for the configuration set.</p>"
        },
        "LastFreshStart": {
          "shape": "LastFreshStart",
          "documentation": "<p>The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start.</p>"
        }
      },
      "documentation": "<p>Enable or disable collection of reputation metrics for emails that you send using this configuration set in the current AWS Region. </p>"
    },
    "ReviewDetails": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "ReviewStatus",
          "documentation": "<p>The status of the latest review of your account. The status can be one of the following:</p> <ul> <li> <p> <code>PENDING</code> – We have received your appeal and are in the process of reviewing it.</p> </li> <li> <p> <code>GRANTED</code> – Your appeal has been reviewed and your production access has been granted.</p> </li> <li> <p> <code>DENIED</code> – Your appeal has been reviewed and your production access has been denied.</p> </li> <li> <p> <code>FAILED</code> – An internal error occurred and we didn't receive your appeal. You can submit your appeal again.</p> </li> </ul>"
        },
        "CaseId": {
          "shape": "CaseId",
          "documentation": "<p>The associated support center case ID (if any).</p>"
        }
      },
      "documentation": "<p>An object that contains information about your account details review.</p>"
    },
    "ReviewStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "FAILED",
        "GRANTED",
        "DENIED"
      ]
    },
    "S3Url": {
      "type": "string",
      "documentation": "<p>An Amazon S3 URL in the format s3://<i>&lt;bucket_name&gt;</i>/<i>&lt;object&gt;</i>.</p>",
      "pattern": "^s3:\\/\\/([^\\/]+)\\/(.*?([^\\/]+)\\/?)$"
    },
    "Selector": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9]))$"
    },
    "SendBulkEmailRequest": {
      "type": "structure",
      "required": [
        "DefaultContent",
        "BulkEmailEntries"
      ],
      "members": {
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that you want to use as the \"From\" address for the email. The address that you specify has to be verified.</p>"
        },
        "FromEmailAddressIdentityArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>FromEmailAddress</code> parameter.</p> <p>For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use sender@example.com, then you would specify the <code>FromEmailAddressIdentityArn</code> to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the <code>FromEmailAddress</code> to be sender@example.com.</p> <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"
        },
        "ReplyToAddresses": {
          "shape": "EmailAddressList",
          "documentation": "<p>The \"Reply-to\" email addresses for the message. When the recipient replies to the message, each Reply-to address receives the reply.</p>"
        },
        "FeedbackForwardingEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The address that you want bounce and complaint notifications to be sent to.</p>"
        },
        "FeedbackForwardingEmailAddressIdentityArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>FeedbackForwardingEmailAddress</code> parameter.</p> <p>For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the <code>FeedbackForwardingEmailAddressIdentityArn</code> to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p> <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"
        },
        "DefaultEmailTags": {
          "shape": "MessageTagList",
          "documentation": "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send using the <code>SendEmail</code> operation. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>"
        },
        "DefaultContent": {
          "shape": "BulkEmailContent",
          "documentation": "<p>An object that contains the body of the message. You can specify a template message.</p>"
        },
        "BulkEmailEntries": {
          "shape": "BulkEmailEntryList",
          "documentation": "<p>The list of bulk email entry objects.</p>"
        },
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to use when sending the email.</p>"
        }
      },
      "documentation": "<p>Represents a request to send email messages to multiple destinations using Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "SendBulkEmailResponse": {
      "type": "structure",
      "required": [
        "BulkEmailEntryResults"
      ],
      "members": {
        "BulkEmailEntryResults": {
          "shape": "BulkEmailEntryResultList"
        }
      },
      "documentation": "<p>The following data is returned in JSON format by the service.</p>"
    },
    "SendCustomVerificationEmailRequest": {
      "type": "structure",
      "required": [
        "EmailAddress",
        "TemplateName"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address to verify.</p>"
        },
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template to use when sending the verification email.</p>"
        },
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>Name of a configuration set to use when sending the verification email.</p>"
        }
      },
      "documentation": "<p>Represents a request to send a custom verification email to a specified recipient.</p>"
    },
    "SendCustomVerificationEmailResponse": {
      "type": "structure",
      "members": {
        "MessageId": {
          "shape": "OutboundMessageId",
          "documentation": "<p>The unique message identifier returned from the <code>SendCustomVerificationEmail</code> operation.</p>"
        }
      },
      "documentation": "<p>The following element is returned by the service.</p>"
    },
    "SendEmailRequest": {
      "type": "structure",
      "required": [
        "Content"
      ],
      "members": {
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that you want to use as the \"From\" address for the email. The address that you specify has to be verified. </p>"
        },
        "FromEmailAddressIdentityArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>FromEmailAddress</code> parameter.</p> <p>For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use sender@example.com, then you would specify the <code>FromEmailAddressIdentityArn</code> to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the <code>FromEmailAddress</code> to be sender@example.com.</p> <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p> <p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value overrides the X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email message content.</p>"
        },
        "Destination": {
          "shape": "Destination",
          "documentation": "<p>An object that contains the recipients of the email message.</p>"
        },
        "ReplyToAddresses": {
          "shape": "EmailAddressList",
          "documentation": "<p>The \"Reply-to\" email addresses for the message. When the recipient replies to the message, each Reply-to address receives the reply.</p>"
        },
        "FeedbackForwardingEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The address that you want bounce and complaint notifications to be sent to.</p>"
        },
        "FeedbackForwardingEmailAddressIdentityArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>FeedbackForwardingEmailAddress</code> parameter.</p> <p>For example, if the owner of example.com (which has ARN arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a policy to it that authorizes you to use feedback@example.com, then you would specify the <code>FeedbackForwardingEmailAddressIdentityArn</code> to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the <code>FeedbackForwardingEmailAddress</code> to be feedback@example.com.</p> <p>For more information about sending authorization, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html\">Amazon SES Developer Guide</a>.</p>"
        },
        "Content": {
          "shape": "EmailContent",
          "documentation": "<p>An object that contains the body of the message. You can send either a Simple message Raw message or a template Message.</p>"
        },
        "EmailTags": {
          "shape": "MessageTagList",
          "documentation": "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send using the <code>SendEmail</code> operation. Tags correspond to characteristics of the email that you define, so that you can publish email sending events. </p>"
        },
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that you want to use when sending the email.</p>"
        }
      },
      "documentation": "<p>Represents a request to send a single formatted email using Amazon SES. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "SendEmailResponse": {
      "type": "structure",
      "members": {
        "MessageId": {
          "shape": "OutboundMessageId",
          "documentation": "<p>A unique identifier for the message that is generated when the message is accepted.</p> <note> <p>It's possible for Amazon SES to accept a message without sending it. This can happen when the message that you're trying to send has an attachment contains a virus, or when you send a templated email that contains invalid personalization content, for example.</p> </note>"
        }
      },
      "documentation": "<p>A unique message ID that you receive when an email is accepted for sending.</p>"
    },
    "SendQuota": {
      "type": "structure",
      "members": {
        "Max24HourSend": {
          "shape": "Max24HourSend",
          "documentation": "<p>The maximum number of emails that you can send in the current AWS Region over a 24-hour period. This value is also called your <i>sending quota</i>.</p>"
        },
        "MaxSendRate": {
          "shape": "MaxSendRate",
          "documentation": "<p>The maximum number of emails that you can send per second in the current AWS Region. This value is also called your <i>maximum sending rate</i> or your <i>maximum TPS (transactions per second) rate</i>.</p>"
        },
        "SentLast24Hours": {
          "shape": "SentLast24Hours",
          "documentation": "<p>The number of emails sent from your Amazon SES account in the current AWS Region over the past 24 hours.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the per-day and per-second sending limits for your Amazon SES account in the current AWS Region.</p>"
    },
    "SendingOptions": {
      "type": "structure",
      "members": {
        "SendingEnabled": {
          "shape": "Enabled",
          "documentation": "<p>If <code>true</code>, email sending is enabled for the configuration set. If <code>false</code>, email sending is disabled for the configuration set.</p>"
        }
      },
      "documentation": "<p>Used to enable or disable email sending for messages that use this configuration set in the current AWS Region.</p>"
    },
    "SendingPoolName": {
      "type": "string",
      "documentation": "<p>The name of the dedicated IP pool that you want to associate with the configuration set.</p>"
    },
    "SentLast24Hours": {
      "type": "double"
    },
    "SnsDestination": {
      "type": "structure",
      "required": [
        "TopicArn"
      ],
      "members": {
        "TopicArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish email events to. For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer Guide</a>.</p>"
        }
      },
      "documentation": "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to send notification when certain email events occur.</p>"
    },
    "Subject": {
      "type": "string"
    },
    "SuccessRedirectionURL": {
      "type": "string",
      "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>"
    },
    "SuppressedDestination": {
      "type": "structure",
      "required": [
        "EmailAddress",
        "Reason",
        "LastUpdateTime"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that is on the suppression list for your account.</p>"
        },
        "Reason": {
          "shape": "SuppressionListReason",
          "documentation": "<p>The reason that the address was added to the suppression list for your account.</p>"
        },
        "LastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the suppressed destination was last updated, shown in Unix time format.</p>"
        },
        "Attributes": {
          "shape": "SuppressedDestinationAttributes",
          "documentation": "<p>An optional value that can contain additional information about the reasons that the address was added to the suppression list for your account.</p>"
        }
      },
      "documentation": "<p>An object that contains information about an email address that is on the suppression list for your account.</p>"
    },
    "SuppressedDestinationAttributes": {
      "type": "structure",
      "members": {
        "MessageId": {
          "shape": "OutboundMessageId",
          "documentation": "<p>The unique identifier of the email message that caused the email address to be added to the suppression list for your account.</p>"
        },
        "FeedbackId": {
          "shape": "FeedbackId",
          "documentation": "<p>A unique identifier that's generated when an email address is added to the suppression list for your account.</p>"
        }
      },
      "documentation": "<p>An object that contains additional attributes that are related an email address that is on the suppression list for your account.</p>"
    },
    "SuppressedDestinationSummaries": {
      "type": "list",
      "member": {
        "shape": "SuppressedDestinationSummary"
      }
    },
    "SuppressedDestinationSummary": {
      "type": "structure",
      "required": [
        "EmailAddress",
        "Reason",
        "LastUpdateTime"
      ],
      "members": {
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that's on the suppression list for your account.</p>"
        },
        "Reason": {
          "shape": "SuppressionListReason",
          "documentation": "<p>The reason that the address was added to the suppression list for your account.</p>"
        },
        "LastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the suppressed destination was last updated, shown in Unix time format.</p>"
        }
      },
      "documentation": "<p>A summary that describes the suppressed email address.</p>"
    },
    "SuppressionAttributes": {
      "type": "structure",
      "members": {
        "SuppressedReasons": {
          "shape": "SuppressionListReasons",
          "documentation": "<p>A list that contains the reasons that email addresses will be automatically added to the suppression list for your account. This list can contain any or all of the following:</p> <ul> <li> <p> <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.</p> </li> <li> <p> <code>BOUNCE</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An object that contains information about the email address suppression preferences for your account in the current AWS Region.</p>"
    },
    "SuppressionListDestination": {
      "type": "structure",
      "required": [
        "SuppressionListImportAction"
      ],
      "members": {
        "SuppressionListImportAction": {
          "shape": "SuppressionListImportAction",
          "documentation": "<p>The type of action that you want to perform on the address. Acceptable values:</p> <ul> <li> <p>PUT: add the addresses to the suppression list. If the record already exists, it will override it with the new value.</p> </li> <li> <p>DELETE: remove the addresses from the suppression list.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An object that contains details about the action of suppression list.</p>"
    },
    "SuppressionListImportAction": {
      "type": "string",
      "documentation": "<p>The type of action that you want to perform on the address. Acceptable values:</p> <ul> <li> <p>PUT: add the addresses to the suppression list.</p> </li> <li> <p>DELETE: remove the address from the suppression list.</p> </li> </ul>",
      "enum": [
        "DELETE",
        "PUT"
      ]
    },
    "SuppressionListReason": {
      "type": "string",
      "documentation": "<p>The reason that the address was added to the suppression list for your account. The value can be one of the following:</p> <ul> <li> <p> <code>COMPLAINT</code> – Amazon SES added an email address to the suppression list for your account because a message sent to that address results in a complaint.</p> </li> <li> <p> <code>BOUNCE</code> – Amazon SES added an email address to the suppression list for your account because a message sent to that address results in a hard bounce.</p> </li> </ul>",
      "enum": [
        "BOUNCE",
        "COMPLAINT"
      ]
    },
    "SuppressionListReasons": {
      "type": "list",
      "member": {
        "shape": "SuppressionListReason"
      }
    },
    "SuppressionOptions": {
      "type": "structure",
      "members": {
        "SuppressedReasons": {
          "shape": "SuppressionListReasons",
          "documentation": "<p>A list that contains the reasons that email addresses are automatically added to the suppression list for your account. This list can contain any or all of the following:</p> <ul> <li> <p> <code>COMPLAINT</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a complaint.</p> </li> <li> <p> <code>BOUNCE</code> – Amazon SES adds an email address to the suppression list for your account when a message sent to that address results in a hard bounce.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An object that contains information about the suppression list preferences for your account.</p>"
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
          "documentation": "<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is 128 characters. The minimum length is 1 character.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag value is 256 characters. The minimum length is 0 characters. If you don't want a resource to have a specific tag value, don't specify a value for this parameter. If you don't specify a value, Amazon SES sets the value to an empty string.</p>"
        }
      },
      "documentation": "<p>An object that defines the tags that are associated with a resource. A <i>tag</i> is a label that you optionally define and associate with a resource. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags.</p> <p>Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>, both of which you define. A tag key is a general label that acts as a category for a more specific tag value. A tag value acts as a descriptor within a tag key. A tag key can contain as many as 128 characters. A tag value can contain as many as 256 characters. The characters can be Unicode letters, digits, white space, or one of the following symbols: _ . : / = + -. The following additional restrictions apply to tags:</p> <ul> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>For each associated resource, each tag key must be unique and it can have only one value.</p> </li> <li> <p>The <code>aws:</code> prefix is reserved for use by AWS; you can’t use it in any tag keys or values that you define. In addition, you can't edit or remove tag keys or values that use this prefix. Tags that use this prefix don’t count against the limit of 50 tags per resource.</p> </li> <li> <p>You can associate tags with public or shared resources, but the tags are available only for your AWS account, not any other accounts that share the resource. In addition, the tags are available only for resources that are located in the specified AWS Region for your AWS account.</p> </li> </ul>"
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
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of the tags that you want to add to the resource. A tag consists of a required tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
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
    "Template": {
      "type": "structure",
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template. You will refer to this name when you send email using the <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code> operations. </p>"
        },
        "TemplateArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template.</p>"
        },
        "TemplateData": {
          "shape": "EmailTemplateData",
          "documentation": "<p>An object that defines the values to use for message variables in the template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the value to use for that variable.</p>"
        }
      },
      "documentation": "<p>An object that defines the email template to use for an email message, and the values to use for any message variables in that template. An <i>email template</i> is a type of message template that contains content that you want to define, save, and reuse in email messages that you send.</p>"
    },
    "TemplateContent": {
      "type": "string",
      "documentation": "<p>The content of the custom verification email template.</p>"
    },
    "TestRenderEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName",
        "TemplateData"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template that you want to render.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        },
        "TemplateData": {
          "shape": "EmailTemplateData",
          "documentation": "<p>A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>"
        }
      },
      "documentation": "<p>&gt;Represents a request to create a preview of the MIME content of an email when provided with a template and a set of replacement data.</p>"
    },
    "TestRenderEmailTemplateResponse": {
      "type": "structure",
      "required": [
        "RenderedTemplate"
      ],
      "members": {
        "RenderedTemplate": {
          "shape": "RenderedEmailTemplate",
          "documentation": "<p>The complete MIME message rendered by applying the data in the <code>TemplateData</code> parameter to the template specified in the TemplateName parameter.</p>"
        }
      },
      "documentation": "<p>The following element is returned by the service.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TlsPolicy": {
      "type": "string",
      "documentation": "<p>Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only delivered if a TLS connection can be established. If the value is <code>Optional</code>, messages can be delivered in plain text if a TLS connection can't be established.</p>",
      "enum": [
        "REQUIRE",
        "OPTIONAL"
      ]
    },
    "TrackingOptions": {
      "type": "structure",
      "required": [
        "CustomRedirectDomain"
      ],
      "members": {
        "CustomRedirectDomain": {
          "shape": "CustomRedirectDomain",
          "documentation": "<p>The domain that you want to use for tracking open and click events.</p>"
        }
      },
      "documentation": "<p>An object that defines the tracking options for a configuration set. When you use the Amazon SES API v2 to send an email, it contains an invisible image that's used to track when recipients open your email. If your email contains links, those links are changed slightly in order to track when recipients click them.</p> <p>These images and links include references to a domain operated by AWS. You can optionally configure the Amazon SES to use a domain that you operate for these images and links.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more tags from.</p>",
          "location": "querystring",
          "locationName": "ResourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value.</p> <p>To remove more than one tag from the resource, append the <code>TagKeys</code> parameter and argument for each additional tag to remove, separated by an ampersand. For example: <code>/v2/email/tags?ResourceArn=ResourceArn&amp;TagKeys=Key1&amp;TagKeys=Key2</code> </p>",
          "location": "querystring",
          "locationName": "TagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateConfigurationSetEventDestinationRequest": {
      "type": "structure",
      "required": [
        "ConfigurationSetName",
        "EventDestinationName",
        "EventDestination"
      ],
      "members": {
        "ConfigurationSetName": {
          "shape": "ConfigurationSetName",
          "documentation": "<p>The name of the configuration set that contains the event destination that you want to modify.</p>",
          "location": "uri",
          "locationName": "ConfigurationSetName"
        },
        "EventDestinationName": {
          "shape": "EventDestinationName",
          "documentation": "<p>The name of the event destination that you want to modify.</p>",
          "location": "uri",
          "locationName": "EventDestinationName"
        },
        "EventDestination": {
          "shape": "EventDestinationDefinition",
          "documentation": "<p>An object that defines the event destination.</p>"
        }
      },
      "documentation": "<p>A request to change the settings for an event destination for a configuration set.</p>"
    },
    "UpdateConfigurationSetEventDestinationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "UpdateCustomVerificationEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName",
        "FromEmailAddress",
        "TemplateSubject",
        "TemplateContent",
        "SuccessRedirectionURL",
        "FailureRedirectionURL"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the custom verification email template that you want to update.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        },
        "FromEmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The email address that the custom verification email is sent from.</p>"
        },
        "TemplateSubject": {
          "shape": "EmailTemplateSubject",
          "documentation": "<p>The subject line of the custom verification email.</p>"
        },
        "TemplateContent": {
          "shape": "TemplateContent",
          "documentation": "<p>The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html#custom-verification-emails-faq\">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES Developer Guide</i>.</p>"
        },
        "SuccessRedirectionURL": {
          "shape": "SuccessRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>"
        },
        "FailureRedirectionURL": {
          "shape": "FailureRedirectionURL",
          "documentation": "<p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>"
        }
      },
      "documentation": "<p>Represents a request to update an existing custom verification email template.</p>"
    },
    "UpdateCustomVerificationEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "UpdateEmailIdentityPolicyRequest": {
      "type": "structure",
      "required": [
        "EmailIdentity",
        "PolicyName",
        "Policy"
      ],
      "members": {
        "EmailIdentity": {
          "shape": "Identity",
          "documentation": "<p>The email identity for which you want to update policy.</p>",
          "location": "uri",
          "locationName": "EmailIdentity"
        },
        "PolicyName": {
          "shape": "PolicyName",
          "documentation": "<p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>",
          "location": "uri",
          "locationName": "PolicyName"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p> <p> For information about the syntax of sending authorization policies, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html\">Amazon SES Developer Guide</a>.</p>"
        }
      },
      "documentation": "<p>Represents a request to update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-identity-owner-tasks-management.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "UpdateEmailIdentityPolicyResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>An HTTP 200 response if the request succeeds, or an error message if the request fails.</p>"
    },
    "UpdateEmailTemplateRequest": {
      "type": "structure",
      "required": [
        "TemplateName",
        "TemplateContent"
      ],
      "members": {
        "TemplateName": {
          "shape": "EmailTemplateName",
          "documentation": "<p>The name of the template you want to update.</p>",
          "location": "uri",
          "locationName": "TemplateName"
        },
        "TemplateContent": {
          "shape": "EmailTemplateContent",
          "documentation": "<p>The content of the email template, composed of a subject line, an HTML part, and a text-only part.</p>"
        }
      },
      "documentation": "<p>Represents a request to update an email template. For more information, see the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html\">Amazon SES Developer Guide</a>.</p>"
    },
    "UpdateEmailTemplateResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.</p>"
    },
    "UseCaseDescription": {
      "type": "string",
      "max": 5000,
      "min": 1,
      "sensitive": true
    },
    "Volume": {
      "type": "long",
      "documentation": "<p>An object that contains information about inbox placement volume.</p>"
    },
    "VolumeStatistics": {
      "type": "structure",
      "members": {
        "InboxRawCount": {
          "shape": "Volume",
          "documentation": "<p>The total number of emails that arrived in recipients' inboxes.</p>"
        },
        "SpamRawCount": {
          "shape": "Volume",
          "documentation": "<p>The total number of emails that arrived in recipients' spam or junk mail folders.</p>"
        },
        "ProjectedInbox": {
          "shape": "Volume",
          "documentation": "<p>An estimate of the percentage of emails sent from the current domain that will arrive in recipients' inboxes.</p>"
        },
        "ProjectedSpam": {
          "shape": "Volume",
          "documentation": "<p>An estimate of the percentage of emails sent from the current domain that will arrive in recipients' spam or junk mail folders.</p>"
        }
      },
      "documentation": "<p>An object that contains information about the amount of email that was delivered to recipients.</p>"
    },
    "WarmupStatus": {
      "type": "string",
      "documentation": "<p>The warmup status of a dedicated IP.</p>",
      "enum": [
        "IN_PROGRESS",
        "DONE"
      ]
    },
    "WebsiteURL": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?",
      "sensitive": true
    }
  },
  "documentation": "<fullname>Amazon SES API v2</fullname> <p>Welcome to the Amazon SES API v2 Reference. This guide provides information about the Amazon SES API v2, including supported operations, data types, parameters, and schemas.</p> <p> <a href=\"https://aws.amazon.com/pinpoint\">Amazon SES</a> is an AWS service that you can use to send email messages to your customers.</p> <p>If you're new to Amazon SES API v2, you might find it helpful to also review the <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/\">Amazon Simple Email Service Developer Guide</a>. The <i>Amazon SES Developer Guide</i> provides information and code samples that demonstrate how to use Amazon SES API v2 features programmatically.</p> <p>The Amazon SES API v2 is available in several AWS Regions and it provides an endpoint for each of these Regions. For a list of all the Regions and endpoints where the API is currently available, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region\">AWS Service Endpoints</a> in the <i>Amazon Web Services General Reference</i>. To learn more about AWS Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande-manage.html\">Managing AWS Regions</a> in the <i>Amazon Web Services General Reference</i>.</p> <p>In each Region, AWS maintains multiple Availability Zones. These Availability Zones are physically isolated from each other, but are united by private, low-latency, high-throughput, and highly redundant network connections. These Availability Zones enable us to provide very high levels of availability and redundancy, while also minimizing latency. To learn more about the number of Availability Zones that are available in each Region, see <a href=\"http://aws.amazon.com/about-aws/global-infrastructure/\">AWS Global Infrastructure</a>.</p>"
}
]===]))