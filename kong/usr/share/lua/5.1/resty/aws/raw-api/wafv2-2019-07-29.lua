local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-07-29",
    "endpointPrefix": "wafv2",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "WAFV2",
    "serviceFullName": "AWS WAFV2",
    "serviceId": "WAFV2",
    "signatureVersion": "v4",
    "targetPrefix": "AWSWAF_20190729",
    "uid": "wafv2-2019-07-29"
  },
  "operations": {
    "AssociateWebACL": {
      "name": "AssociateWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateWebACLRequest"
      },
      "output": {
        "shape": "AssociateWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Associates a Web ACL with a regional application resource, to protect the resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>For AWS CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To associate a Web ACL, in the CloudFront call <code>UpdateDistribution</code>, set the web ACL ID to the Amazon Resource Name (ARN) of the Web ACL. For information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html\">UpdateDistribution</a>.</p>"
    },
    "CheckCapacity": {
      "name": "CheckCapacity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CheckCapacityRequest"
      },
      "output": {
        "shape": "CheckCapacityResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFInvalidResourceException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFSubscriptionNotFoundException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Returns the web ACL capacity unit (WCU) requirements for a specified scope and set of rules. You can use this to check the capacity requirements for the rules you want to use in a <a>RuleGroup</a> or <a>WebACL</a>. </p> <p>AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. </p>"
    },
    "CreateIPSet": {
      "name": "CreateIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateIPSetRequest"
      },
      "output": {
        "shape": "CreateIPSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Creates an <a>IPSet</a>, which you use to identify web requests that originate from specific IP addresses or ranges of IP addresses. For example, if you're receiving a lot of requests from a ranges of IP addresses, you can configure AWS WAF to block them using an IPSet that lists those IP addresses. </p>"
    },
    "CreateRegexPatternSet": {
      "name": "CreateRegexPatternSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRegexPatternSetRequest"
      },
      "output": {
        "shape": "CreateRegexPatternSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Creates a <a>RegexPatternSet</a>, which you reference in a <a>RegexPatternSetReferenceStatement</a>, to have AWS WAF inspect a web request component for the specified patterns.</p>"
    },
    "CreateRuleGroup": {
      "name": "CreateRuleGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRuleGroupRequest"
      },
      "output": {
        "shape": "CreateRuleGroupResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFSubscriptionNotFoundException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Creates a <a>RuleGroup</a> per the specifications provided. </p> <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>"
    },
    "CreateWebACL": {
      "name": "CreateWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateWebACLRequest"
      },
      "output": {
        "shape": "CreateWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFInvalidResourceException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFSubscriptionNotFoundException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Creates a <a>WebACL</a> per the specifications provided.</p> <p> A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. </p>"
    },
    "DeleteFirewallManagerRuleGroups": {
      "name": "DeleteFirewallManagerRuleGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFirewallManagerRuleGroupsRequest"
      },
      "output": {
        "shape": "DeleteFirewallManagerRuleGroupsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<p>Deletes all rule groups that are managed by AWS Firewall Manager for the specified web ACL. </p> <p>You can only use this if <code>ManagedByFirewallManager</code> is false in the specified <a>WebACL</a>. </p>"
    },
    "DeleteIPSet": {
      "name": "DeleteIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteIPSetRequest"
      },
      "output": {
        "shape": "DeleteIPSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFAssociatedItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Deletes the specified <a>IPSet</a>. </p>"
    },
    "DeleteLoggingConfiguration": {
      "name": "DeleteLoggingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLoggingConfigurationRequest"
      },
      "output": {
        "shape": "DeleteLoggingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Deletes the <a>LoggingConfiguration</a> from the specified web ACL.</p>"
    },
    "DeletePermissionPolicy": {
      "name": "DeletePermissionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePermissionPolicyRequest"
      },
      "output": {
        "shape": "DeletePermissionPolicyResponse"
      },
      "errors": [
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        }
      ],
      "documentation": "<p>Permanently deletes an IAM policy from the specified rule group.</p> <p>You must be the owner of the rule group to perform this operation.</p>"
    },
    "DeleteRegexPatternSet": {
      "name": "DeleteRegexPatternSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRegexPatternSetRequest"
      },
      "output": {
        "shape": "DeleteRegexPatternSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFAssociatedItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Deletes the specified <a>RegexPatternSet</a>.</p>"
    },
    "DeleteRuleGroup": {
      "name": "DeleteRuleGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRuleGroupRequest"
      },
      "output": {
        "shape": "DeleteRuleGroupResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFAssociatedItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Deletes the specified <a>RuleGroup</a>.</p>"
    },
    "DeleteWebACL": {
      "name": "DeleteWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteWebACLRequest"
      },
      "output": {
        "shape": "DeleteWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFAssociatedItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Deletes the specified <a>WebACL</a>.</p> <p>You can only use this if <code>ManagedByFirewallManager</code> is false in the specified <a>WebACL</a>. </p>"
    },
    "DescribeManagedRuleGroup": {
      "name": "DescribeManagedRuleGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeManagedRuleGroupRequest"
      },
      "output": {
        "shape": "DescribeManagedRuleGroupResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidResourceException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Provides high-level information for a managed rule group, including descriptions of the rules. </p>"
    },
    "DisassociateWebACL": {
      "name": "DisassociateWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateWebACLRequest"
      },
      "output": {
        "shape": "DisassociateWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Disassociates a Web ACL from a regional application resource. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>For AWS CloudFront, don't use this call. Instead, use your CloudFront distribution configuration. To disassociate a Web ACL, provide an empty web ACL ID in the CloudFront call <code>UpdateDistribution</code>. For information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html\">UpdateDistribution</a>.</p>"
    },
    "GetIPSet": {
      "name": "GetIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetIPSetRequest"
      },
      "output": {
        "shape": "GetIPSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the specified <a>IPSet</a>.</p>"
    },
    "GetLoggingConfiguration": {
      "name": "GetLoggingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLoggingConfigurationRequest"
      },
      "output": {
        "shape": "GetLoggingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>"
    },
    "GetPermissionPolicy": {
      "name": "GetPermissionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPermissionPolicyRequest"
      },
      "output": {
        "shape": "GetPermissionPolicyResponse"
      },
      "errors": [
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        }
      ],
      "documentation": "<p>Returns the IAM policy that is attached to the specified rule group.</p> <p>You must be the owner of the rule group to perform this operation.</p>"
    },
    "GetRateBasedStatementManagedKeys": {
      "name": "GetRateBasedStatementManagedKeys",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRateBasedStatementManagedKeysRequest"
      },
      "output": {
        "shape": "GetRateBasedStatementManagedKeysResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the keys that are currently blocked by a rate-based rule. The maximum number of managed keys that can be blocked for a single rate-based rule is 10,000. If more than 10,000 addresses exceed the rate limit, those with the highest rates are blocked.</p>"
    },
    "GetRegexPatternSet": {
      "name": "GetRegexPatternSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRegexPatternSetRequest"
      },
      "output": {
        "shape": "GetRegexPatternSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the specified <a>RegexPatternSet</a>.</p>"
    },
    "GetRuleGroup": {
      "name": "GetRuleGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRuleGroupRequest"
      },
      "output": {
        "shape": "GetRuleGroupResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the specified <a>RuleGroup</a>.</p>"
    },
    "GetSampledRequests": {
      "name": "GetSampledRequests",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSampledRequestsRequest"
      },
      "output": {
        "shape": "GetSampledRequestsResponse"
      },
      "errors": [
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.</p> <p> <code>GetSampledRequests</code> returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, <code>GetSampledRequests</code> returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.</p>"
    },
    "GetWebACL": {
      "name": "GetWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWebACLRequest"
      },
      "output": {
        "shape": "GetWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the specified <a>WebACL</a>.</p>"
    },
    "GetWebACLForResource": {
      "name": "GetWebACLForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWebACLForResourceRequest"
      },
      "output": {
        "shape": "GetWebACLForResourceResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the <a>WebACL</a> for the specified resource. </p>"
    },
    "ListAvailableManagedRuleGroups": {
      "name": "ListAvailableManagedRuleGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAvailableManagedRuleGroupsRequest"
      },
      "output": {
        "shape": "ListAvailableManagedRuleGroupsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of managed rule groups that are available for you to use. This list includes all AWS Managed Rules rule groups and the AWS Marketplace managed rule groups that you're subscribed to.</p>"
    },
    "ListIPSets": {
      "name": "ListIPSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListIPSetsRequest"
      },
      "output": {
        "shape": "ListIPSetsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of <a>IPSetSummary</a> objects for the IP sets that you manage.</p>"
    },
    "ListLoggingConfigurations": {
      "name": "ListLoggingConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLoggingConfigurationsRequest"
      },
      "output": {
        "shape": "ListLoggingConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of your <a>LoggingConfiguration</a> objects.</p>"
    },
    "ListRegexPatternSets": {
      "name": "ListRegexPatternSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRegexPatternSetsRequest"
      },
      "output": {
        "shape": "ListRegexPatternSetsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of <a>RegexPatternSetSummary</a> objects for the regex pattern sets that you manage.</p>"
    },
    "ListResourcesForWebACL": {
      "name": "ListResourcesForWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourcesForWebACLRequest"
      },
      "output": {
        "shape": "ListResourcesForWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of the Amazon Resource Names (ARNs) for the regional resources that are associated with the specified web ACL. If you want the list of AWS CloudFront resources, use the AWS CloudFront call <code>ListDistributionsByWebACLId</code>. </p>"
    },
    "ListRuleGroups": {
      "name": "ListRuleGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRuleGroupsRequest"
      },
      "output": {
        "shape": "ListRuleGroupsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of <a>RuleGroupSummary</a> objects for the rule groups that you manage. </p>"
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
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves the <a>TagInfoForResource</a> for the specified resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p> <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>"
    },
    "ListWebACLs": {
      "name": "ListWebACLs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListWebACLsRequest"
      },
      "output": {
        "shape": "ListWebACLsResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Retrieves an array of <a>WebACLSummary</a> objects for the web ACLs that you manage.</p>"
    },
    "PutLoggingConfiguration": {
      "name": "PutLoggingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutLoggingConfigurationRequest"
      },
      "output": {
        "shape": "PutLoggingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFServiceLinkedRoleErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidOperationException"
        },
        {
          "shape": "WAFLimitsExceededException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Enables the specified <a>LoggingConfiguration</a>, to start logging from a web ACL, according to the configuration provided.</p> <p>You can access information about all traffic that AWS WAF inspects using the following steps:</p> <ol> <li> <p>Create an Amazon Kinesis Data Firehose. </p> <p>Create the data firehose with a PUT source and in the Region that you are operating. If you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia). </p> <p>Give the data firehose a name that starts with the prefix <code>aws-waf-logs-</code>. For example, <code>aws-waf-logs-us-east-2-analytics</code>.</p> <note> <p>Do not create the data firehose using a <code>Kinesis stream</code> as your source.</p> </note> </li> <li> <p>Associate that firehose to your web ACL using a <code>PutLoggingConfiguration</code> request.</p> </li> </ol> <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code> request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/logging.html\">Logging Web ACL Traffic Information</a> in the <i>AWS WAF Developer Guide</i>.</p>"
    },
    "PutPermissionPolicy": {
      "name": "PutPermissionPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutPermissionPolicyRequest"
      },
      "output": {
        "shape": "PutPermissionPolicyResponse"
      },
      "errors": [
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFInvalidPermissionPolicyException"
        }
      ],
      "documentation": "<p>Attaches an IAM policy to the specified resource. Use this to share a rule group across accounts.</p> <p>You must be the owner of the rule group to perform this operation.</p> <p>This action is subject to the following restrictions:</p> <ul> <li> <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p> </li> <li> <p>The ARN in the request must be a valid WAF <a>RuleGroup</a> ARN and the rule group must exist in the same region.</p> </li> <li> <p>The user making the request must be the owner of the rule group.</p> </li> </ul>"
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
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Associates tags with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p> <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>"
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
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFTagOperationException"
        },
        {
          "shape": "WAFTagOperationInternalErrorException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Disassociates tags from an AWS resource. Tags are key:value pairs that you can associate with AWS resources. For example, the tag key might be \"customer\" and the tag value might be \"companyA.\" You can specify one or more tags to add to each container. You can add up to 50 tags to each AWS resource.</p>"
    },
    "UpdateIPSet": {
      "name": "UpdateIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateIPSetRequest"
      },
      "output": {
        "shape": "UpdateIPSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Updates the specified <a>IPSet</a>.</p>"
    },
    "UpdateRegexPatternSet": {
      "name": "UpdateRegexPatternSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRegexPatternSetRequest"
      },
      "output": {
        "shape": "UpdateRegexPatternSetResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Updates the specified <a>RegexPatternSet</a>.</p>"
    },
    "UpdateRuleGroup": {
      "name": "UpdateRuleGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRuleGroupRequest"
      },
      "output": {
        "shape": "UpdateRuleGroupResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFSubscriptionNotFoundException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Updates the specified <a>RuleGroup</a>.</p> <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>"
    },
    "UpdateWebACL": {
      "name": "UpdateWebACL",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateWebACLRequest"
      },
      "output": {
        "shape": "UpdateWebACLResponse"
      },
      "errors": [
        {
          "shape": "WAFInternalErrorException"
        },
        {
          "shape": "WAFInvalidParameterException"
        },
        {
          "shape": "WAFNonexistentItemException"
        },
        {
          "shape": "WAFDuplicateItemException"
        },
        {
          "shape": "WAFOptimisticLockException"
        },
        {
          "shape": "WAFLimitsExceededException"
        },
        {
          "shape": "WAFInvalidResourceException"
        },
        {
          "shape": "WAFUnavailableEntityException"
        },
        {
          "shape": "WAFSubscriptionNotFoundException"
        },
        {
          "shape": "WAFInvalidOperationException"
        }
      ],
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Updates the specified <a>WebACL</a>.</p> <p> A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. </p>"
    }
  },
  "shapes": {
    "Action": {
      "type": "string"
    },
    "AllQueryArguments": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>All query arguments of a web request. </p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "AllowAction": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Specifies that AWS WAF should allow requests.</p> <p>This is used only in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>"
    },
    "AndStatement": {
      "type": "structure",
      "required": [
        "Statements"
      ],
      "members": {
        "Statements": {
          "shape": "Statements",
          "documentation": "<p>The statements to combine with AND logic. You can use any statements that can be nested. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>"
    },
    "AssociateWebACLRequest": {
      "type": "structure",
      "required": [
        "WebACLArn",
        "ResourceArn"
      ],
      "members": {
        "WebACLArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.</p>"
        },
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to associate with the web ACL. </p> <p>The ARN must be in one of the following formats:</p> <ul> <li> <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i> </code> </p> </li> <li> <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i> </code> </p> </li> </ul>"
        }
      }
    },
    "AssociateWebACLResponse": {
      "type": "structure",
      "members": {}
    },
    "BlockAction": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Specifies that AWS WAF should block requests.</p> <p>This is used only in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>"
    },
    "Body": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The body of a web request. This immediately follows the request headers.</p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "ByteMatchStatement": {
      "type": "structure",
      "required": [
        "SearchString",
        "FieldToMatch",
        "TextTransformations",
        "PositionalConstraint"
      ],
      "members": {
        "SearchString": {
          "shape": "SearchString",
          "documentation": "<p>A string value that you want AWS WAF to search for. AWS WAF searches only in the part of web requests that you designate for inspection in <a>FieldToMatch</a>. The maximum length of the value is 50 bytes.</p> <p>Valid values depend on the component that you specify for inspection in <code>FieldToMatch</code>:</p> <ul> <li> <p> <code>Method</code>: The HTTP method that you want AWS WAF to search for. This indicates the type of operation specified in the request. </p> </li> <li> <p> <code>UriPath</code>: The value that you want AWS WAF to search for in the URI path, for example, <code>/images/daily-ad.jpg</code>. </p> </li> </ul> <p>If <code>SearchString</code> includes alphabetic characters A-Z and a-z, note that the value is case sensitive.</p> <p> <b>If you're using the AWS WAF API</b> </p> <p>Specify a base64-encoded version of the value. The maximum length of the value before you base64-encode it is 50 bytes.</p> <p>For example, suppose the value of <code>Type</code> is <code>HEADER</code> and the value of <code>Data</code> is <code>User-Agent</code>. If you want to search the <code>User-Agent</code> header for the value <code>BadBot</code>, you base64-encode <code>BadBot</code> using MIME base64-encoding and include the resulting value, <code>QmFkQm90</code>, in the value of <code>SearchString</code>.</p> <p> <b>If you're using the AWS CLI or one of the AWS SDKs</b> </p> <p>The value that you want AWS WAF to search for. The SDK automatically base64 encodes the value.</p>"
        },
        "FieldToMatch": {
          "shape": "FieldToMatch",
          "documentation": "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
        },
        "TextTransformations": {
          "shape": "TextTransformations",
          "documentation": "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>"
        },
        "PositionalConstraint": {
          "shape": "PositionalConstraint",
          "documentation": "<p>The area within the portion of a web request that you want AWS WAF to search for <code>SearchString</code>. Valid values include the following:</p> <p> <b>CONTAINS</b> </p> <p>The specified part of the web request must include the value of <code>SearchString</code>, but the location doesn't matter.</p> <p> <b>CONTAINS_WORD</b> </p> <p>The specified part of the web request must include the value of <code>SearchString</code>, and <code>SearchString</code> must contain only alphanumeric characters or underscore (A-Z, a-z, 0-9, or _). In addition, <code>SearchString</code> must be a word, which means that both of the following are true:</p> <ul> <li> <p> <code>SearchString</code> is at the beginning of the specified part of the web request or is preceded by a character other than an alphanumeric character or underscore (_). Examples include the value of a header and <code>;BadBot</code>.</p> </li> <li> <p> <code>SearchString</code> is at the end of the specified part of the web request or is followed by a character other than an alphanumeric character or underscore (_), for example, <code>BadBot;</code> and <code>-BadBot;</code>.</p> </li> </ul> <p> <b>EXACTLY</b> </p> <p>The value of the specified part of the web request must exactly match the value of <code>SearchString</code>.</p> <p> <b>STARTS_WITH</b> </p> <p>The value of <code>SearchString</code> must appear at the beginning of the specified part of the web request.</p> <p> <b>ENDS_WITH</b> </p> <p>The value of <code>SearchString</code> must appear at the end of the specified part of the web request.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement that defines a string match search for AWS WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the AWS WAF console and the developer guide, this is refered to as a string match statement.</p>"
    },
    "CapacityUnit": {
      "type": "long",
      "min": 1
    },
    "CheckCapacityRequest": {
      "type": "structure",
      "required": [
        "Scope",
        "Rules"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>An array of <a>Rule</a> that you're configuring to use in a rule group or web ACL. </p>"
        }
      }
    },
    "CheckCapacityResponse": {
      "type": "structure",
      "members": {
        "Capacity": {
          "shape": "ConsumedCapacity",
          "documentation": "<p>The capacity required by the rules and scope.</p>"
        }
      }
    },
    "ComparisonOperator": {
      "type": "string",
      "enum": [
        "EQ",
        "NE",
        "LE",
        "LT",
        "GE",
        "GT"
      ]
    },
    "ConsumedCapacity": {
      "type": "long",
      "min": 0
    },
    "CountAction": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Specifies that AWS WAF should count requests.</p> <p>This is used only in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>"
    },
    "Country": {
      "type": "string"
    },
    "CountryCode": {
      "type": "string",
      "enum": [
        "AF",
        "AX",
        "AL",
        "DZ",
        "AS",
        "AD",
        "AO",
        "AI",
        "AQ",
        "AG",
        "AR",
        "AM",
        "AW",
        "AU",
        "AT",
        "AZ",
        "BS",
        "BH",
        "BD",
        "BB",
        "BY",
        "BE",
        "BZ",
        "BJ",
        "BM",
        "BT",
        "BO",
        "BQ",
        "BA",
        "BW",
        "BV",
        "BR",
        "IO",
        "BN",
        "BG",
        "BF",
        "BI",
        "KH",
        "CM",
        "CA",
        "CV",
        "KY",
        "CF",
        "TD",
        "CL",
        "CN",
        "CX",
        "CC",
        "CO",
        "KM",
        "CG",
        "CD",
        "CK",
        "CR",
        "CI",
        "HR",
        "CU",
        "CW",
        "CY",
        "CZ",
        "DK",
        "DJ",
        "DM",
        "DO",
        "EC",
        "EG",
        "SV",
        "GQ",
        "ER",
        "EE",
        "ET",
        "FK",
        "FO",
        "FJ",
        "FI",
        "FR",
        "GF",
        "PF",
        "TF",
        "GA",
        "GM",
        "GE",
        "DE",
        "GH",
        "GI",
        "GR",
        "GL",
        "GD",
        "GP",
        "GU",
        "GT",
        "GG",
        "GN",
        "GW",
        "GY",
        "HT",
        "HM",
        "VA",
        "HN",
        "HK",
        "HU",
        "IS",
        "IN",
        "ID",
        "IR",
        "IQ",
        "IE",
        "IM",
        "IL",
        "IT",
        "JM",
        "JP",
        "JE",
        "JO",
        "KZ",
        "KE",
        "KI",
        "KP",
        "KR",
        "KW",
        "KG",
        "LA",
        "LV",
        "LB",
        "LS",
        "LR",
        "LY",
        "LI",
        "LT",
        "LU",
        "MO",
        "MK",
        "MG",
        "MW",
        "MY",
        "MV",
        "ML",
        "MT",
        "MH",
        "MQ",
        "MR",
        "MU",
        "YT",
        "MX",
        "FM",
        "MD",
        "MC",
        "MN",
        "ME",
        "MS",
        "MA",
        "MZ",
        "MM",
        "NA",
        "NR",
        "NP",
        "NL",
        "NC",
        "NZ",
        "NI",
        "NE",
        "NG",
        "NU",
        "NF",
        "MP",
        "NO",
        "OM",
        "PK",
        "PW",
        "PS",
        "PA",
        "PG",
        "PY",
        "PE",
        "PH",
        "PN",
        "PL",
        "PT",
        "PR",
        "QA",
        "RE",
        "RO",
        "RU",
        "RW",
        "BL",
        "SH",
        "KN",
        "LC",
        "MF",
        "PM",
        "VC",
        "WS",
        "SM",
        "ST",
        "SA",
        "SN",
        "RS",
        "SC",
        "SL",
        "SG",
        "SX",
        "SK",
        "SI",
        "SB",
        "SO",
        "ZA",
        "GS",
        "SS",
        "ES",
        "LK",
        "SD",
        "SR",
        "SJ",
        "SZ",
        "SE",
        "CH",
        "SY",
        "TW",
        "TJ",
        "TZ",
        "TH",
        "TL",
        "TG",
        "TK",
        "TO",
        "TT",
        "TN",
        "TR",
        "TM",
        "TC",
        "TV",
        "UG",
        "UA",
        "AE",
        "GB",
        "US",
        "UM",
        "UY",
        "UZ",
        "VU",
        "VE",
        "VN",
        "VG",
        "VI",
        "WF",
        "EH",
        "YE",
        "ZM",
        "ZW"
      ]
    },
    "CountryCodes": {
      "type": "list",
      "member": {
        "shape": "CountryCode"
      },
      "min": 1
    },
    "CreateIPSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "IPAddressVersion",
        "Addresses"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the IP set that helps with identification. You cannot change the description of an IP set after you create it.</p>"
        },
        "IPAddressVersion": {
          "shape": "IPAddressVersion",
          "documentation": "<p>Specify IPV4 or IPV6. </p>"
        },
        "Addresses": {
          "shape": "IPAddresses",
          "documentation": "<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6. </p> <p>Examples: </p> <ul> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p> </li> </ul> <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs to associate with the resource.</p>"
        }
      }
    },
    "CreateIPSetResponse": {
      "type": "structure",
      "members": {
        "Summary": {
          "shape": "IPSetSummary",
          "documentation": "<p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>"
        }
      }
    },
    "CreateRegexPatternSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "RegularExpressionList"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the set. You cannot change the name after you create the set.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the set that helps with identification. You cannot change the description of a set after you create it.</p>"
        },
        "RegularExpressionList": {
          "shape": "RegularExpressionList",
          "documentation": "<p>Array of regular expression strings. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs to associate with the resource.</p>"
        }
      }
    },
    "CreateRegexPatternSetResponse": {
      "type": "structure",
      "members": {
        "Summary": {
          "shape": "RegexPatternSetSummary",
          "documentation": "<p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>"
        }
      }
    },
    "CreateRuleGroupRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Capacity",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Capacity": {
          "shape": "CapacityUnit",
          "documentation": "<p>The web ACL capacity units (WCUs) required for this rule group.</p> <p>When you create your own rule group, you define this, and you cannot change it after creation. When you add or modify the rules in a rule group, AWS WAF enforces this limit. You can check the capacity for a set of rules using <a>CheckCapacity</a>.</p> <p>AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. </p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the rule group that helps with identification. You cannot change the description of a rule group after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs to associate with the resource.</p>"
        }
      }
    },
    "CreateRuleGroupResponse": {
      "type": "structure",
      "members": {
        "Summary": {
          "shape": "RuleGroupSummary",
          "documentation": "<p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
        }
      }
    },
    "CreateWebACLRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "DefaultAction",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "DefaultAction": {
          "shape": "DefaultAction",
          "documentation": "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the Web ACL that helps with identification. You cannot change the description of a Web ACL after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs to associate with the resource.</p>"
        }
      }
    },
    "CreateWebACLResponse": {
      "type": "structure",
      "members": {
        "Summary": {
          "shape": "WebACLSummary",
          "documentation": "<p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>"
        }
      }
    },
    "DefaultAction": {
      "type": "structure",
      "members": {
        "Block": {
          "shape": "BlockAction",
          "documentation": "<p>Specifies that AWS WAF should block requests by default. </p>"
        },
        "Allow": {
          "shape": "AllowAction",
          "documentation": "<p>Specifies that AWS WAF should allow requests by default.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>In a <a>WebACL</a>, this is the action that you want AWS WAF to perform when a web request doesn't match any of the rules in the <code>WebACL</code>. The default action must be a terminating action, so count is not allowed.</p>"
    },
    "DeleteFirewallManagerRuleGroupsRequest": {
      "type": "structure",
      "required": [
        "WebACLArn",
        "WebACLLockToken"
      ],
      "members": {
        "WebACLArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the web ACL.</p>"
        },
        "WebACLLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteFirewallManagerRuleGroupsResponse": {
      "type": "structure",
      "members": {
        "NextWebACLLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteIPSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteIPSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteLoggingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>"
        }
      }
    },
    "DeleteLoggingConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeletePermissionPolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the rule group from which you want to delete the policy.</p> <p>You must be the owner of the rule group to perform this operation.</p>"
        }
      }
    },
    "DeletePermissionPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRegexPatternSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the set. You cannot change the name after you create the set.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteRegexPatternSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRuleGroupRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteRuleGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteWebACLRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "DeleteWebACLResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeManagedRuleGroupRequest": {
      "type": "structure",
      "required": [
        "VendorName",
        "Name",
        "Scope"
      ],
      "members": {
        "VendorName": {
          "shape": "VendorName",
          "documentation": "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
        },
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        }
      }
    },
    "DescribeManagedRuleGroupResponse": {
      "type": "structure",
      "members": {
        "Capacity": {
          "shape": "CapacityUnit",
          "documentation": "<p>The web ACL capacity units (WCUs) required for this rule group. AWS WAF uses web ACL capacity units (WCU) to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect each rule's relative cost. Rule group capacity is fixed at creation, so users can plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. </p>"
        },
        "Rules": {
          "shape": "RuleSummaries",
          "documentation": "<p/>"
        }
      }
    },
    "DisassociateWebACLRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to disassociate from the web ACL. </p> <p>The ARN must be in one of the following formats:</p> <ul> <li> <p>For an Application Load Balancer: <code>arn:aws:elasticloadbalancing:<i>region</i>:<i>account-id</i>:loadbalancer/app/<i>load-balancer-name</i>/<i>load-balancer-id</i> </code> </p> </li> <li> <p>For an Amazon API Gateway stage: <code>arn:aws:apigateway:<i>region</i>::/restapis/<i>api-id</i>/stages/<i>stage-name</i> </code> </p> </li> </ul>"
        }
      }
    },
    "DisassociateWebACLResponse": {
      "type": "structure",
      "members": {}
    },
    "EntityDescription": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[\\w+=:#@/\\-,\\.][\\w+=:#@/\\-,\\.\\s]+[\\w+=:#@/\\-,\\.]$"
    },
    "EntityId": {
      "type": "string",
      "max": 36,
      "min": 1,
      "pattern": "^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"
    },
    "EntityName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[\\w\\-]+$"
    },
    "ExcludedRule": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule to exclude.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Specifies a single rule to exclude from the rule group. Excluding a rule overrides its action setting for the rule group in the web ACL, setting it to <code>COUNT</code>. This effectively excludes the rule from acting on web requests. </p>"
    },
    "ExcludedRules": {
      "type": "list",
      "member": {
        "shape": "ExcludedRule"
      }
    },
    "FallbackBehavior": {
      "type": "string",
      "enum": [
        "MATCH",
        "NO_MATCH"
      ]
    },
    "FieldToMatch": {
      "type": "structure",
      "members": {
        "SingleHeader": {
          "shape": "SingleHeader",
          "documentation": "<p>Inspect a single header. Provide the name of the header to inspect, for example, <code>User-Agent</code> or <code>Referer</code>. This setting isn't case sensitive.</p>"
        },
        "SingleQueryArgument": {
          "shape": "SingleQueryArgument",
          "documentation": "<p>Inspect a single query argument. Provide the name of the query argument to inspect, such as <i>UserName</i> or <i>SalesRegion</i>. The name can be up to 30 characters long and isn't case sensitive. </p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
        },
        "AllQueryArguments": {
          "shape": "AllQueryArguments",
          "documentation": "<p>Inspect all query arguments. </p>"
        },
        "UriPath": {
          "shape": "UriPath",
          "documentation": "<p>Inspect the request URI path. This is the part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p>"
        },
        "QueryString": {
          "shape": "QueryString",
          "documentation": "<p>Inspect the query string. This is the part of a URL that appears after a <code>?</code> character, if any.</p>"
        },
        "Body": {
          "shape": "Body",
          "documentation": "<p>Inspect the request body, which immediately follows the request headers. This is the part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. </p> <p>Note that only the first 8 KB (8192 bytes) of the request body are forwarded to AWS WAF for inspection by the underlying host service. If you don't need to inspect more than 8 KB, you can guarantee that you don't allow additional bytes in by combining a statement that inspects the body of the web request, such as <a>ByteMatchStatement</a> or <a>RegexPatternSetReferenceStatement</a>, with a <a>SizeConstraintStatement</a> that enforces an 8 KB size limit on the body of the request. AWS WAF doesn't support inspecting the entire contents of web requests whose bodies exceed the 8 KB limit.</p>"
        },
        "Method": {
          "shape": "Method",
          "documentation": "<p>Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The part of a web request that you want AWS WAF to inspect. Include the single <code>FieldToMatch</code> type that you want to inspect, with additional specifications as needed, according to the type. You specify a single request component in <code>FieldToMatch</code> for each rule statement that requires it. To inspect more than one component of a web request, create a separate rule statement for each component.</p>"
    },
    "FieldToMatchData": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "FirewallManagerRuleGroup": {
      "type": "structure",
      "required": [
        "Name",
        "Priority",
        "FirewallManagerStatement",
        "OverrideAction",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Priority": {
          "shape": "RulePriority",
          "documentation": "<p>If you define more than one rule group in the first or last Firewall Manager rule groups, AWS WAF evaluates each request against the rule groups in order, starting from the lowest priority setting. The priorities don't need to be consecutive, but they must all be different.</p>"
        },
        "FirewallManagerStatement": {
          "shape": "FirewallManagerStatement",
          "documentation": "<p>The processing guidance for an AWS Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>"
        },
        "OverrideAction": {
          "shape": "OverrideAction"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig"
        }
      },
      "documentation": "<p>A rule group that's defined for an AWS Firewall Manager WAF policy.</p>"
    },
    "FirewallManagerRuleGroups": {
      "type": "list",
      "member": {
        "shape": "FirewallManagerRuleGroup"
      }
    },
    "FirewallManagerStatement": {
      "type": "structure",
      "members": {
        "ManagedRuleGroupStatement": {
          "shape": "ManagedRuleGroupStatement"
        },
        "RuleGroupReferenceStatement": {
          "shape": "RuleGroupReferenceStatement"
        }
      },
      "documentation": "<p>The processing guidance for an AWS Firewall Manager rule. This is like a regular rule <a>Statement</a>, but it can only contain a rule group reference.</p>"
    },
    "ForwardedIPConfig": {
      "type": "structure",
      "required": [
        "HeaderName",
        "FallbackBehavior"
      ],
      "members": {
        "HeaderName": {
          "shape": "ForwardedIPHeaderName",
          "documentation": "<p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note>"
        },
        "FallbackBehavior": {
          "shape": "FallbackBehavior",
          "documentation": "<p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note> <p>You can specify the following fallback behaviors:</p> <ul> <li> <p>MATCH - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.</p> </li> <li> <p>NO_MATCH - Treat the web request as not matching the rule statement.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note> <p>This configuration is used for <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>. For <a>IPSetReferenceStatement</a>, use <a>IPSetForwardedIPConfig</a> instead. </p> <p>AWS WAF only evaluates the first IP address found in the specified HTTP header. </p>"
    },
    "ForwardedIPHeaderName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[a-zA-Z0-9-]+$"
    },
    "ForwardedIPPosition": {
      "type": "string",
      "enum": [
        "FIRST",
        "LAST",
        "ANY"
      ]
    },
    "GeoMatchStatement": {
      "type": "structure",
      "members": {
        "CountryCodes": {
          "shape": "CountryCodes",
          "documentation": "<p>An array of two-character country codes, for example, <code>[ \"US\", \"CN\" ]</code>, from the alpha-2 country ISO codes of the ISO 3166 international standard. </p>"
        },
        "ForwardedIPConfig": {
          "shape": "ForwardedIPConfig",
          "documentation": "<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement used to identify web requests based on country of origin. </p>"
    },
    "GetIPSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        }
      }
    },
    "GetIPSetResponse": {
      "type": "structure",
      "members": {
        "IPSet": {
          "shape": "IPSet",
          "documentation": "<p/>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "GetLoggingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>"
        }
      }
    },
    "GetLoggingConfigurationResponse": {
      "type": "structure",
      "members": {
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>The <a>LoggingConfiguration</a> for the specified web ACL.</p>"
        }
      }
    },
    "GetPermissionPolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the rule group for which you want to get the policy.</p>"
        }
      }
    },
    "GetPermissionPolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "PolicyString",
          "documentation": "<p>The IAM policy that is attached to the specified rule group.</p>"
        }
      }
    },
    "GetRateBasedStatementManagedKeysRequest": {
      "type": "structure",
      "required": [
        "Scope",
        "WebACLName",
        "WebACLId",
        "RuleName"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "WebACLName": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "WebACLId": {
          "shape": "EntityId",
          "documentation": "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "RuleName": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rate-based rule to get the keys for.</p>"
        }
      }
    },
    "GetRateBasedStatementManagedKeysResponse": {
      "type": "structure",
      "members": {
        "ManagedKeysIPV4": {
          "shape": "RateBasedStatementManagedKeysIPSet",
          "documentation": "<p>The keys that are of Internet Protocol version 4 (IPv4). </p>"
        },
        "ManagedKeysIPV6": {
          "shape": "RateBasedStatementManagedKeysIPSet",
          "documentation": "<p>The keys that are of Internet Protocol version 6 (IPv6). </p>"
        }
      }
    },
    "GetRegexPatternSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the set. You cannot change the name after you create the set.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        }
      }
    },
    "GetRegexPatternSetResponse": {
      "type": "structure",
      "members": {
        "RegexPatternSet": {
          "shape": "RegexPatternSet",
          "documentation": "<p/>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "GetRuleGroupRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        }
      }
    },
    "GetRuleGroupResponse": {
      "type": "structure",
      "members": {
        "RuleGroup": {
          "shape": "RuleGroup",
          "documentation": "<p/>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "GetSampledRequestsRequest": {
      "type": "structure",
      "required": [
        "WebAclArn",
        "RuleMetricName",
        "Scope",
        "TimeWindow",
        "MaxItems"
      ],
      "members": {
        "WebAclArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon resource name (ARN) of the <code>WebACL</code> for which you want a sample of requests.</p>"
        },
        "RuleMetricName": {
          "shape": "MetricName",
          "documentation": "<p>The metric name assigned to the <code>Rule</code> or <code>RuleGroup</code> for which you want a sample of requests.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "TimeWindow": {
          "shape": "TimeWindow",
          "documentation": "<p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>"
        },
        "MaxItems": {
          "shape": "ListMaxItems",
          "documentation": "<p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> returns information about all of them. </p>"
        }
      }
    },
    "GetSampledRequestsResponse": {
      "type": "structure",
      "members": {
        "SampledRequests": {
          "shape": "SampledHTTPRequests",
          "documentation": "<p>A complex type that contains detailed information about each of the requests in the sample.</p>"
        },
        "PopulationSize": {
          "shape": "PopulationSize",
          "documentation": "<p>The total number of requests from which <code>GetSampledRequests</code> got a sample of <code>MaxItems</code> requests. If <code>PopulationSize</code> is less than <code>MaxItems</code>, the sample includes every request that your AWS resource received during the specified time range.</p>"
        },
        "TimeWindow": {
          "shape": "TimeWindow",
          "documentation": "<p>Usually, <code>TimeWindow</code> is the time range that you specified in the <code>GetSampledRequests</code> request. However, if your AWS resource received more than 5,000 requests during the time range that you specified in the request, <code>GetSampledRequests</code> returns the time range for the first 5,000 requests. Times are in Coordinated Universal Time (UTC) format.</p>"
        }
      }
    },
    "GetWebACLForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN (Amazon Resource Name) of the resource.</p>"
        }
      }
    },
    "GetWebACLForResourceResponse": {
      "type": "structure",
      "members": {
        "WebACL": {
          "shape": "WebACL",
          "documentation": "<p>The Web ACL that is associated with the resource. If there is no associated resource, AWS WAF returns a null Web ACL.</p>"
        }
      }
    },
    "GetWebACLRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        }
      }
    },
    "GetWebACLResponse": {
      "type": "structure",
      "members": {
        "WebACL": {
          "shape": "WebACL",
          "documentation": "<p>The Web ACL specification. You can modify the settings in this Web ACL and use it to update this Web ACL or create a new one.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "HTTPHeader": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "HeaderName",
          "documentation": "<p>The name of the HTTP header.</p>"
        },
        "Value": {
          "shape": "HeaderValue",
          "documentation": "<p>The value of the HTTP header.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests. </p>"
    },
    "HTTPHeaders": {
      "type": "list",
      "member": {
        "shape": "HTTPHeader"
      }
    },
    "HTTPMethod": {
      "type": "string"
    },
    "HTTPRequest": {
      "type": "structure",
      "members": {
        "ClientIP": {
          "shape": "IPString",
          "documentation": "<p>The IP address that the request originated from. If the web ACL is associated with a CloudFront distribution, this is the value of one of the following fields in CloudFront access logs:</p> <ul> <li> <p> <code>c-ip</code>, if the viewer did not use an HTTP proxy or a load balancer to send the request</p> </li> <li> <p> <code>x-forwarded-for</code>, if the viewer did use an HTTP proxy or a load balancer to send the request</p> </li> </ul>"
        },
        "Country": {
          "shape": "Country",
          "documentation": "<p>The two-letter country code for the country that the request originated from. For a current list of country codes, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2\">ISO 3166-1 alpha-2</a>.</p>"
        },
        "URI": {
          "shape": "URIString",
          "documentation": "<p>The URI path of the request, which identifies the resource, for example, <code>/images/daily-ad.jpg</code>.</p>"
        },
        "Method": {
          "shape": "HTTPMethod",
          "documentation": "<p>The HTTP method specified in the sampled web request. </p>"
        },
        "HTTPVersion": {
          "shape": "HTTPVersion",
          "documentation": "<p>The HTTP version specified in the sampled web request, for example, <code>HTTP/1.1</code>.</p>"
        },
        "Headers": {
          "shape": "HTTPHeaders",
          "documentation": "<p>A complex type that contains the name and value for each header in the sampled web request.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Part of the response from <a>GetSampledRequests</a>. This is a complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests. </p>"
    },
    "HTTPVersion": {
      "type": "string"
    },
    "HeaderName": {
      "type": "string"
    },
    "HeaderValue": {
      "type": "string"
    },
    "IPAddress": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "IPAddressVersion": {
      "type": "string",
      "enum": [
        "IPV4",
        "IPV6"
      ]
    },
    "IPAddresses": {
      "type": "list",
      "member": {
        "shape": "IPAddress"
      }
    },
    "IPSet": {
      "type": "structure",
      "required": [
        "Name",
        "Id",
        "ARN",
        "IPAddressVersion",
        "Addresses"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the IP set that helps with identification. You cannot change the description of an IP set after you create it.</p>"
        },
        "IPAddressVersion": {
          "shape": "IPAddressVersion",
          "documentation": "<p>Specify IPV4 or IPV6. </p>"
        },
        "Addresses": {
          "shape": "IPAddresses",
          "documentation": "<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6. </p> <p>Examples: </p> <ul> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p> </li> </ul> <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports any CIDR range. For information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>. </p> <p>AWS WAF assigns an ARN to each <code>IPSet</code> that you create. To use an IP set in a rule, you provide the ARN to the <a>Rule</a> statement <a>IPSetReferenceStatement</a>. </p>"
    },
    "IPSetForwardedIPConfig": {
      "type": "structure",
      "required": [
        "HeaderName",
        "FallbackBehavior",
        "Position"
      ],
      "members": {
        "HeaderName": {
          "shape": "ForwardedIPHeaderName",
          "documentation": "<p>The name of the HTTP header to use for the IP address. For example, to use the X-Forwarded-For (XFF) header, set this to <code>X-Forwarded-For</code>.</p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note>"
        },
        "FallbackBehavior": {
          "shape": "FallbackBehavior",
          "documentation": "<p>The match status to assign to the web request if the request doesn't have a valid IP address in the specified position.</p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note> <p>You can specify the following fallback behaviors:</p> <ul> <li> <p>MATCH - Treat the web request as matching the rule statement. AWS WAF applies the rule action to the request.</p> </li> <li> <p>NO_MATCH - Treat the web request as not matching the rule statement.</p> </li> </ul>"
        },
        "Position": {
          "shape": "ForwardedIPPosition",
          "documentation": "<p>The position in the header to search for the IP address. The header can contain IP addresses of the original client and also of proxies. For example, the header value could be <code>10.1.1.1, 127.0.0.0, 10.10.10.10</code> where the first IP address identifies the original client and the rest identify proxies that the request went through. </p> <p>The options for this setting are the following: </p> <ul> <li> <p>FIRST - Inspect the first IP address in the list of IP addresses in the header. This is usually the client's original IP.</p> </li> <li> <p>LAST - Inspect the last IP address in the list of IP addresses in the header.</p> </li> <li> <p>ANY - Inspect all IP addresses in the header for a match. If the header contains more than 10 IP addresses, AWS WAF inspects the last 10.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note> <p>This configuration is used only for <a>IPSetReferenceStatement</a>. For <a>GeoMatchStatement</a> and <a>RateBasedStatement</a>, use <a>ForwardedIPConfig</a> instead. </p>"
    },
    "IPSetReferenceStatement": {
      "type": "structure",
      "required": [
        "ARN"
      ],
      "members": {
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a>IPSet</a> that this statement references.</p>"
        },
        "IPSetForwardedIPConfig": {
          "shape": "IPSetForwardedIPConfig",
          "documentation": "<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p> <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>"
    },
    "IPSetSummaries": {
      "type": "list",
      "member": {
        "shape": "IPSetSummary"
      }
    },
    "IPSetSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the IP set that helps with identification. You cannot change the description of an IP set after you create it.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about an <a>IPSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage an <code>IPSet</code>, and the ARN, that you provide to the <a>IPSetReferenceStatement</a> to use the address set in a <a>Rule</a>.</p>"
    },
    "IPString": {
      "type": "string"
    },
    "ListAvailableManagedRuleGroupsRequest": {
      "type": "structure",
      "required": [
        "Scope"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListAvailableManagedRuleGroupsResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "ManagedRuleGroups": {
          "shape": "ManagedRuleGroupSummaries",
          "documentation": "<p/>"
        }
      }
    },
    "ListIPSetsRequest": {
      "type": "structure",
      "required": [
        "Scope"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListIPSetsResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "IPSets": {
          "shape": "IPSetSummaries",
          "documentation": "<p>Array of IPSets. This may not be the full list of IPSets that you have defined. See the <code>Limit</code> specification for this request.</p>"
        }
      }
    },
    "ListLoggingConfigurationsRequest": {
      "type": "structure",
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListLoggingConfigurationsResponse": {
      "type": "structure",
      "members": {
        "LoggingConfigurations": {
          "shape": "LoggingConfigurations",
          "documentation": "<p/>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        }
      }
    },
    "ListMaxItems": {
      "type": "long",
      "max": 500,
      "min": 1
    },
    "ListRegexPatternSetsRequest": {
      "type": "structure",
      "required": [
        "Scope"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListRegexPatternSetsResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "RegexPatternSets": {
          "shape": "RegexPatternSetSummaries",
          "documentation": "<p/>"
        }
      }
    },
    "ListResourcesForWebACLRequest": {
      "type": "structure",
      "required": [
        "WebACLArn"
      ],
      "members": {
        "WebACLArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Web ACL.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Used for web ACLs that are scoped for regional applications. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p>"
        }
      }
    },
    "ListResourcesForWebACLResponse": {
      "type": "structure",
      "members": {
        "ResourceArns": {
          "shape": "ResourceArns",
          "documentation": "<p>The array of Amazon Resource Names (ARNs) of the associated resources.</p>"
        }
      }
    },
    "ListRuleGroupsRequest": {
      "type": "structure",
      "required": [
        "Scope"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListRuleGroupsResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "RuleGroups": {
          "shape": "RuleGroupSummaries",
          "documentation": "<p/>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        },
        "ResourceARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "TagInfoForResource": {
          "shape": "TagInfoForResource",
          "documentation": "<p>The collection of tagging definitions for the resource. </p>"
        }
      }
    },
    "ListWebACLsRequest": {
      "type": "structure",
      "required": [
        "Scope"
      ],
      "members": {
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "Limit": {
          "shape": "PaginationLimit",
          "documentation": "<p>The maximum number of objects that you want AWS WAF to return for this request. If more objects are available, in the response, AWS WAF provides a <code>NextMarker</code> value that you can use in a subsequent call to get the next batch of objects.</p>"
        }
      }
    },
    "ListWebACLsResponse": {
      "type": "structure",
      "members": {
        "NextMarker": {
          "shape": "NextMarker",
          "documentation": "<p>When you request a list of objects with a <code>Limit</code> setting, if the number of objects that are still available for retrieval exceeds the limit, AWS WAF returns a <code>NextMarker</code> value in the response. To retrieve the next batch of objects, provide the marker from the prior call in your next request.</p>"
        },
        "WebACLs": {
          "shape": "WebACLSummaries",
          "documentation": "<p/>"
        }
      }
    },
    "LockToken": {
      "type": "string",
      "max": 36,
      "min": 1,
      "pattern": "^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"
    },
    "LogDestinationConfigs": {
      "type": "list",
      "member": {
        "shape": "ResourceArn"
      },
      "max": 100,
      "min": 1
    },
    "LoggingConfiguration": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "LogDestinationConfigs"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the web ACL that you want to associate with <code>LogDestinationConfigs</code>.</p>"
        },
        "LogDestinationConfigs": {
          "shape": "LogDestinationConfigs",
          "documentation": "<p>The Amazon Kinesis Data Firehose Amazon Resource Name (ARNs) that you want to associate with the web ACL.</p>"
        },
        "RedactedFields": {
          "shape": "RedactedFields",
          "documentation": "<p>The parts of the request that you want to keep out of the logs. For example, if you redact the <code>HEADER</code> field, the <code>HEADER</code> field in the firehose will be <code>xxx</code>. </p> <note> <p>You must use one of the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>, or <code>METHOD</code>.</p> </note>"
        },
        "ManagedByFirewallManager": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only Firewall Manager can modify or delete the configuration. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Defines an association between Amazon Kinesis Data Firehose destinations and a web ACL resource, for logging from AWS WAF. As part of the association, you can specify parts of the standard logging fields to keep out of the logs. </p>"
    },
    "LoggingConfigurations": {
      "type": "list",
      "member": {
        "shape": "LoggingConfiguration"
      }
    },
    "ManagedRuleGroupStatement": {
      "type": "structure",
      "required": [
        "VendorName",
        "Name"
      ],
      "members": {
        "VendorName": {
          "shape": "VendorName",
          "documentation": "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
        },
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
        },
        "ExcludedRules": {
          "shape": "ExcludedRules",
          "documentation": "<p>The rules whose actions are set to <code>COUNT</code> by the web ACL, regardless of the action that is set on the rule. This effectively excludes the rule from acting on web requests. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p> <p>You can't nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
    },
    "ManagedRuleGroupSummaries": {
      "type": "list",
      "member": {
        "shape": "ManagedRuleGroupSummary"
      }
    },
    "ManagedRuleGroupSummary": {
      "type": "structure",
      "members": {
        "VendorName": {
          "shape": "VendorName",
          "documentation": "<p>The name of the managed rule group vendor. You use this, along with the rule group name, to identify the rule group.</p>"
        },
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the managed rule group. You use this, along with the vendor name, to identify the rule group.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>The description of the managed rule group, provided by AWS Managed Rules or the AWS Marketplace seller who manages it.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about a managed rule group, returned by <a>ListAvailableManagedRuleGroups</a>. This provides information like the name and vendor name, that you provide when you add a <a>ManagedRuleGroupStatement</a> to a web ACL. Managed rule groups include AWS Managed Rules rule groups, which are free of charge to AWS WAF customers, and AWS Marketplace managed rule groups, which you can subscribe to through AWS Marketplace. </p>"
    },
    "Method": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The HTTP method of a web request. The method indicates the type of operation that the request is asking the origin to perform. </p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "MetricName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[\\w#:\\.\\-/]+$"
    },
    "NextMarker": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "NoneAction": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Specifies that AWS WAF should do nothing. This is generally used to try out a rule without performing any actions. You set the <code>OverrideAction</code> on the <a>Rule</a>. </p> <p>This is used only in the context of other settings, for example to specify values for <a>RuleAction</a> and web ACL <a>DefaultAction</a>. </p>"
    },
    "NotStatement": {
      "type": "structure",
      "required": [
        "Statement"
      ],
      "members": {
        "Statement": {
          "shape": "Statement",
          "documentation": "<p>The statement to negate. You can use any statement that can be nested.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>"
    },
    "OrStatement": {
      "type": "structure",
      "required": [
        "Statements"
      ],
      "members": {
        "Statements": {
          "shape": "Statements",
          "documentation": "<p>The statements to combine with OR logic. You can use any statements that can be nested.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>"
    },
    "OverrideAction": {
      "type": "structure",
      "members": {
        "Count": {
          "shape": "CountAction",
          "documentation": "<p>Override the rule action setting to count.</p>"
        },
        "None": {
          "shape": "NoneAction",
          "documentation": "<p>Don't override the rule action setting.</p>"
        }
      },
      "documentation": "<p>The override action to apply to the rules in a rule group. Used only for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p> <p>Set the override action to none to leave the rule actions in effect. Set it to count to only count matches, regardless of the rule action settings. </p> <p>In a <a>Rule</a>, you must specify either this <code>OverrideAction</code> setting or the rule <code>Action</code> setting, but not both:</p> <ul> <li> <p>If the rule statement references a rule group, use this override action setting and not the action setting. </p> </li> <li> <p>If the rule statement does not reference a rule group, use the rule action setting and not this rule override action setting. </p> </li> </ul>"
    },
    "PaginationLimit": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "PolicyString": {
      "type": "string",
      "min": 1
    },
    "PopulationSize": {
      "type": "long"
    },
    "PositionalConstraint": {
      "type": "string",
      "enum": [
        "EXACTLY",
        "STARTS_WITH",
        "ENDS_WITH",
        "CONTAINS",
        "CONTAINS_WORD"
      ]
    },
    "PutLoggingConfigurationRequest": {
      "type": "structure",
      "required": [
        "LoggingConfiguration"
      ],
      "members": {
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p/>"
        }
      }
    },
    "PutLoggingConfigurationResponse": {
      "type": "structure",
      "members": {
        "LoggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p/>"
        }
      }
    },
    "PutPermissionPolicyRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Policy"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a>RuleGroup</a> to which you want to attach the policy.</p>"
        },
        "Policy": {
          "shape": "PolicyString",
          "documentation": "<p>The policy to attach to the specified rule group. </p> <p>The policy specifications must conform to the following:</p> <ul> <li> <p>The policy must be composed using IAM Policy version 2012-10-17 or version 2015-01-01.</p> </li> <li> <p>The policy must include specifications for <code>Effect</code>, <code>Action</code>, and <code>Principal</code>.</p> </li> <li> <p> <code>Effect</code> must specify <code>Allow</code>.</p> </li> <li> <p> <code>Action</code> must specify <code>wafv2:CreateWebACL</code>, <code>wafv2:UpdateWebACL</code>, and <code>wafv2:PutFirewallManagerRuleGroups</code>. AWS WAF rejects any extra actions or wildcard actions in the policy.</p> </li> <li> <p>The policy must not include a <code>Resource</code> parameter.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html\">IAM Policies</a>. </p>"
        }
      }
    },
    "PutPermissionPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "QueryString": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The query string of a web request. This is the part of a URL that appears after a <code>?</code> character, if any.</p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "RateBasedStatement": {
      "type": "structure",
      "required": [
        "Limit",
        "AggregateKeyType"
      ],
      "members": {
        "Limit": {
          "shape": "RateLimit",
          "documentation": "<p>The limit on requests per 5-minute period for a single originating IP address. If the statement includes a <code>ScopeDownStatement</code>, this limit is applied only to the requests that match the statement.</p>"
        },
        "AggregateKeyType": {
          "shape": "RateBasedStatementAggregateKeyType",
          "documentation": "<p>Setting that indicates how to aggregate the request counts. The options are the following:</p> <ul> <li> <p>IP - Aggregate the request counts on the IP address from the web request origin.</p> </li> <li> <p>FORWARDED_IP - Aggregate the request counts on the first IP address in an HTTP header. If you use this, configure the <code>ForwardedIPConfig</code>, to specify the header to use. </p> </li> </ul>"
        },
        "ScopeDownStatement": {
          "shape": "Statement",
          "documentation": "<p>An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement.</p>"
        },
        "ForwardedIPConfig": {
          "shape": "ForwardedIPConfig",
          "documentation": "<p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p> <note> <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p> </note> <p>This is required if <code>AggregateKeyType</code> is set to <code>FORWARDED_IP</code>.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests.</p> <p>When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.</p> <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p> <ul> <li> <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p> </li> <li> <p>A string match statement that searches in the User-Agent header for the string BadBot.</p> </li> </ul> <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p> <p>You cannot nest a <code>RateBasedStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
    },
    "RateBasedStatementAggregateKeyType": {
      "type": "string",
      "enum": [
        "IP",
        "FORWARDED_IP"
      ]
    },
    "RateBasedStatementManagedKeysIPSet": {
      "type": "structure",
      "members": {
        "IPAddressVersion": {
          "shape": "IPAddressVersion"
        },
        "Addresses": {
          "shape": "IPAddresses",
          "documentation": "<p>The IP addresses that are currently blocked.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The set of IP addresses that are currently blocked for a rate-based statement.</p>"
    },
    "RateLimit": {
      "type": "long",
      "max": 2000000000,
      "min": 100
    },
    "RedactedFields": {
      "type": "list",
      "member": {
        "shape": "FieldToMatch"
      },
      "max": 100
    },
    "Regex": {
      "type": "structure",
      "members": {
        "RegexString": {
          "shape": "RegexPatternString",
          "documentation": "<p>The string representing the regular expression.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A single regular expression. This is used in a <a>RegexPatternSet</a>.</p>"
    },
    "RegexPatternSet": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the set. You cannot change the name after you create the set.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the set that helps with identification. You cannot change the description of a set after you create it.</p>"
        },
        "RegularExpressionList": {
          "shape": "RegularExpressionList",
          "documentation": "<p>The regular expression patterns in the set.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Contains one or more regular expressions. </p> <p>AWS WAF assigns an ARN to each <code>RegexPatternSet</code> that you create. To use a set in a rule, you provide the ARN to the <a>Rule</a> statement <a>RegexPatternSetReferenceStatement</a>. </p>"
    },
    "RegexPatternSetReferenceStatement": {
      "type": "structure",
      "required": [
        "ARN",
        "FieldToMatch",
        "TextTransformations"
      ],
      "members": {
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a>RegexPatternSet</a> that this statement references.</p>"
        },
        "FieldToMatch": {
          "shape": "FieldToMatch",
          "documentation": "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
        },
        "TextTransformations": {
          "shape": "TextTransformations",
          "documentation": "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p> <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>"
    },
    "RegexPatternSetSummaries": {
      "type": "list",
      "member": {
        "shape": "RegexPatternSetSummary"
      }
    },
    "RegexPatternSetSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the data type instance. You cannot change the name after you create the instance.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the set that helps with identification. You cannot change the description of a set after you create it.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about a <a>RegexPatternSet</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RegexPatternSet</code>, and the ARN, that you provide to the <a>RegexPatternSetReferenceStatement</a> to use the pattern set in a <a>Rule</a>.</p>"
    },
    "RegexPatternString": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": ".*"
    },
    "RegularExpressionList": {
      "type": "list",
      "member": {
        "shape": "Regex"
      }
    },
    "ResourceArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": ".*\\S.*"
    },
    "ResourceArns": {
      "type": "list",
      "member": {
        "shape": "ResourceArn"
      }
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "APPLICATION_LOAD_BALANCER",
        "API_GATEWAY"
      ]
    },
    "Rule": {
      "type": "structure",
      "required": [
        "Name",
        "Priority",
        "Statement",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule. You can't change the name of a <code>Rule</code> after you create it. </p>"
        },
        "Priority": {
          "shape": "RulePriority",
          "documentation": "<p>If you define more than one <code>Rule</code> in a <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code> in order based on the value of <code>Priority</code>. AWS WAF processes rules with lower priority first. The priorities don't need to be consecutive, but they must all be different.</p>"
        },
        "Statement": {
          "shape": "Statement",
          "documentation": "<p>The AWS WAF processing statement for the rule, for example <a>ByteMatchStatement</a> or <a>SizeConstraintStatement</a>. </p>"
        },
        "Action": {
          "shape": "RuleAction",
          "documentation": "<p>The action that AWS WAF should take on a web request when it matches the rule statement. Settings at the web ACL level can override the rule action setting. </p> <p>This is used only for rules whose statements do not reference a rule group. Rule statements that reference a rule group include <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p> <p>You must specify either this <code>Action</code> setting or the rule <code>OverrideAction</code> setting, but not both:</p> <ul> <li> <p>If the rule statement does not reference a rule group, use this rule action setting and not the rule override action setting. </p> </li> <li> <p>If the rule statement references a rule group, use the override action setting and not this action setting. </p> </li> </ul>"
        },
        "OverrideAction": {
          "shape": "OverrideAction",
          "documentation": "<p>The override action to apply to the rules in a rule group. Used only for rule statements that reference a rule group, like <code>RuleGroupReferenceStatement</code> and <code>ManagedRuleGroupStatement</code>. </p> <p>Set the override action to none to leave the rule actions in effect. Set it to count to only count matches, regardless of the rule action settings. </p> <p>In a <a>Rule</a>, you must specify either this <code>OverrideAction</code> setting or the rule <code>Action</code> setting, but not both:</p> <ul> <li> <p>If the rule statement references a rule group, use this override action setting and not the action setting. </p> </li> <li> <p>If the rule statement does not reference a rule group, use the rule action setting and not this rule override action setting. </p> </li> </ul>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A single rule, which you can use in a <a>WebACL</a> or <a>RuleGroup</a> to identify web requests that you want to allow, block, or count. Each rule includes one top-level <a>Statement</a> that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
    },
    "RuleAction": {
      "type": "structure",
      "members": {
        "Block": {
          "shape": "BlockAction",
          "documentation": "<p>Instructs AWS WAF to block the web request.</p>"
        },
        "Allow": {
          "shape": "AllowAction",
          "documentation": "<p>Instructs AWS WAF to allow the web request.</p>"
        },
        "Count": {
          "shape": "CountAction",
          "documentation": "<p>Instructs AWS WAF to count the web request and allow it.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The action that AWS WAF should take on a web request when it matches a rule's statement. Settings at the web ACL level can override the rule action setting. </p>"
    },
    "RuleGroup": {
      "type": "structure",
      "required": [
        "Name",
        "Id",
        "Capacity",
        "ARN",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Capacity": {
          "shape": "CapacityUnit",
          "documentation": "<p>The web ACL capacity units (WCUs) required for this rule group.</p> <p>When you create your own rule group, you define this, and you cannot change it after creation. When you add or modify the rules in a rule group, AWS WAF enforces this limit. You can check the capacity for a set of rules using <a>CheckCapacity</a>.</p> <p>AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. </p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the rule group that helps with identification. You cannot change the description of a rule group after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p> A rule group defines a collection of rules to inspect and control web requests that you can use in a <a>WebACL</a>. When you create a rule group, you define an immutable capacity limit. If you update a rule group, you must stay within the capacity. This allows others to reuse the rule group with confidence in its capacity requirements. </p>"
    },
    "RuleGroupReferenceStatement": {
      "type": "structure",
      "required": [
        "ARN"
      ],
      "members": {
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        },
        "ExcludedRules": {
          "shape": "ExcludedRules",
          "documentation": "<p>The names of rules that are in the referenced rule group, but that you want AWS WAF to exclude from processing for this rule statement. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p> <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
    },
    "RuleGroupSummaries": {
      "type": "list",
      "member": {
        "shape": "RuleGroupSummary"
      }
    },
    "RuleGroupSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the data type instance. You cannot change the name after you create the instance.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the rule group that helps with identification. You cannot change the description of a rule group after you create it.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about a <a>RuleGroup</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
    },
    "RulePriority": {
      "type": "integer",
      "min": 0
    },
    "RuleSummaries": {
      "type": "list",
      "member": {
        "shape": "RuleSummary"
      }
    },
    "RuleSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule. </p>"
        },
        "Action": {
          "shape": "RuleAction"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about a <a>Rule</a>, returned by operations like <a>DescribeManagedRuleGroup</a>. This provides information like the ID, that you can use to retrieve and manage a <code>RuleGroup</code>, and the ARN, that you provide to the <a>RuleGroupReferenceStatement</a> to use the rule group in a <a>Rule</a>.</p>"
    },
    "Rules": {
      "type": "list",
      "member": {
        "shape": "Rule"
      }
    },
    "SampleWeight": {
      "type": "long",
      "min": 0
    },
    "SampledHTTPRequest": {
      "type": "structure",
      "required": [
        "Request",
        "Weight"
      ],
      "members": {
        "Request": {
          "shape": "HTTPRequest",
          "documentation": "<p>A complex type that contains detailed information about the request.</p>"
        },
        "Weight": {
          "shape": "SampleWeight",
          "documentation": "<p>A value that indicates how one result in the response relates proportionally to other results in the response. For example, a result that has a weight of <code>2</code> represents roughly twice as many web requests as a result that has a weight of <code>1</code>.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).</p>"
        },
        "Action": {
          "shape": "Action",
          "documentation": "<p>The action for the <code>Rule</code> that the request matched: <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p>"
        },
        "RuleNameWithinRuleGroup": {
          "shape": "EntityName",
          "documentation": "<p>The name of the <code>Rule</code> that the request matched. For managed rule groups, the format for this name is <code>&lt;vendor name&gt;#&lt;managed rule group name&gt;#&lt;rule name&gt;</code>. For your own rule groups, the format for this name is <code>&lt;rule group name&gt;#&lt;rule name&gt;</code>. If the rule is not in a rule group, this field is absent. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Represents a single sampled web request. The response from <a>GetSampledRequests</a> includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains an array of <code>SampledHTTPRequest</code> objects.</p>"
    },
    "SampledHTTPRequests": {
      "type": "list",
      "member": {
        "shape": "SampledHTTPRequest"
      }
    },
    "Scope": {
      "type": "string",
      "enum": [
        "CLOUDFRONT",
        "REGIONAL"
      ]
    },
    "SearchString": {
      "type": "blob"
    },
    "SingleHeader": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "FieldToMatchData",
          "documentation": "<p>The name of the query header to inspect.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>One of the headers in a web request, identified by name, for example, <code>User-Agent</code> or <code>Referer</code>. This setting isn't case sensitive.</p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "SingleQueryArgument": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "FieldToMatchData",
          "documentation": "<p>The name of the query argument to inspect.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>One query argument in a web request, identified by name, for example <i>UserName</i> or <i>SalesRegion</i>. The name can be up to 30 characters long and isn't case sensitive. </p>"
    },
    "Size": {
      "type": "long",
      "max": 21474836480,
      "min": 0
    },
    "SizeConstraintStatement": {
      "type": "structure",
      "required": [
        "FieldToMatch",
        "ComparisonOperator",
        "Size",
        "TextTransformations"
      ],
      "members": {
        "FieldToMatch": {
          "shape": "FieldToMatch",
          "documentation": "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator",
          "documentation": "<p>The operator to use to compare the request part to the size setting. </p>"
        },
        "Size": {
          "shape": "Size",
          "documentation": "<p>The size, in byte, to compare to the request part, after any transformations.</p>"
        },
        "TextTransformations": {
          "shape": "TextTransformations",
          "documentation": "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (&gt;) or less than (&lt;). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p> <p>If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p> <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>"
    },
    "SqliMatchStatement": {
      "type": "structure",
      "required": [
        "FieldToMatch",
        "TextTransformations"
      ],
      "members": {
        "FieldToMatch": {
          "shape": "FieldToMatch",
          "documentation": "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
        },
        "TextTransformations": {
          "shape": "TextTransformations",
          "documentation": "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>"
    },
    "Statement": {
      "type": "structure",
      "members": {
        "ByteMatchStatement": {
          "shape": "ByteMatchStatement",
          "documentation": "<p>A rule statement that defines a string match search for AWS WAF to apply to web requests. The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings. The bytes to search for are typically a string that corresponds with ASCII characters. In the AWS WAF console and the developer guide, this is refered to as a string match statement.</p>"
        },
        "SqliMatchStatement": {
          "shape": "SqliMatchStatement",
          "documentation": "<p>Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database. To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions. An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect. Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.</p>"
        },
        "XssMatchStatement": {
          "shape": "XssMatchStatement",
          "documentation": "<p>A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers. The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings. </p>"
        },
        "SizeConstraintStatement": {
          "shape": "SizeConstraintStatement",
          "documentation": "<p>A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (&gt;) or less than (&lt;). For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes. </p> <p>If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes (8 KB). If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.</p> <p>If you choose URI for the value of Part of the request to filter on, the slash (/) in the URI counts as one character. For example, the URI <code>/logo.jpg</code> is nine characters long.</p>"
        },
        "GeoMatchStatement": {
          "shape": "GeoMatchStatement",
          "documentation": "<p>A rule statement used to identify web requests based on country of origin. </p>"
        },
        "RuleGroupReferenceStatement": {
          "shape": "RuleGroupReferenceStatement",
          "documentation": "<p>A rule statement used to run the rules that are defined in a <a>RuleGroup</a>. To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.</p> <p>You cannot nest a <code>RuleGroupReferenceStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
        },
        "IPSetReferenceStatement": {
          "shape": "IPSetReferenceStatement",
          "documentation": "<p>A rule statement used to detect web requests coming from particular IP addresses or address ranges. To use this, create an <a>IPSet</a> that specifies the addresses you want to detect, then use the ARN of that set in this statement. To create an IP set, see <a>CreateIPSet</a>.</p> <p>Each IP set rule statement references an IP set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>"
        },
        "RegexPatternSetReferenceStatement": {
          "shape": "RegexPatternSetReferenceStatement",
          "documentation": "<p>A rule statement used to search web request components for matches with regular expressions. To use this, create a <a>RegexPatternSet</a> that specifies the expressions that you want to detect, then use the ARN of that set in this statement. A web request matches the pattern set rule statement if the request component matches any of the patterns in the set. To create a regex pattern set, see <a>CreateRegexPatternSet</a>.</p> <p>Each regex pattern set rule statement references a regex pattern set. You create and maintain the set independent of your rules. This allows you to use the single set in multiple rules. When you update the referenced set, AWS WAF automatically updates all rules that reference it.</p>"
        },
        "RateBasedStatement": {
          "shape": "RateBasedStatement",
          "documentation": "<p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests.</p> <p>When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.</p> <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p> <ul> <li> <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p> </li> <li> <p>A string match statement that searches in the User-Agent header for the string BadBot.</p> </li> </ul> <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p> <p>You cannot nest a <code>RateBasedStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
        },
        "AndStatement": {
          "shape": "AndStatement",
          "documentation": "<p>A logical rule statement used to combine other rule statements with AND logic. You provide more than one <a>Statement</a> within the <code>AndStatement</code>. </p>"
        },
        "OrStatement": {
          "shape": "OrStatement",
          "documentation": "<p>A logical rule statement used to combine other rule statements with OR logic. You provide more than one <a>Statement</a> within the <code>OrStatement</code>. </p>"
        },
        "NotStatement": {
          "shape": "NotStatement",
          "documentation": "<p>A logical rule statement used to negate the results of another rule statement. You provide one <a>Statement</a> within the <code>NotStatement</code>.</p>"
        },
        "ManagedRuleGroupStatement": {
          "shape": "ManagedRuleGroupStatement",
          "documentation": "<p>A rule statement used to run the rules that are defined in a managed rule group. To use this, provide the vendor name and the name of the rule group in this statement. You can retrieve the required names by calling <a>ListAvailableManagedRuleGroups</a>.</p> <p>You can't nest a <code>ManagedRuleGroupStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The processing guidance for a <a>Rule</a>, used by AWS WAF to determine whether a web request matches the rule. </p>"
    },
    "Statements": {
      "type": "list",
      "member": {
        "shape": "Statement"
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
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are case-sensitive.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or \"companyB.\" Tag values are case-sensitive.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A tag associated with an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as \"environment\", and the tag value represents a specific value within that category, such as \"test,\" \"development,\" or \"production\". Or you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p> <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>"
    },
    "TagInfoForResource": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The array of <a>Tag</a> objects defined for the resource. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The collection of tagging definitions for an AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing or other management. Typically, the tag key represents a category, such as \"environment\", and the tag value represents a specific value within that category, such as \"test,\" \"development,\" or \"production\". Or you might set the tag key to \"customer\" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p> <p>You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You can't manage or view tags through the AWS WAF console. </p>"
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
      },
      "min": 1
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
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key:value pairs to associate with the resource.</p>"
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
    "TextTransformation": {
      "type": "structure",
      "required": [
        "Priority",
        "Type"
      ],
      "members": {
        "Priority": {
          "shape": "TextTransformationPriority",
          "documentation": "<p>Sets the relative processing order for multiple transformations that are defined for a rule statement. AWS WAF processes all transformations, from lowest priority to highest, before inspecting the transformed content. The priorities don't need to be consecutive, but they must all be different. </p>"
        },
        "Type": {
          "shape": "TextTransformationType",
          "documentation": "<p>You can specify the following transformation types:</p> <p> <b>CMD_LINE</b> </p> <p>When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:</p> <ul> <li> <p>Delete the following characters: \\ \" ' ^</p> </li> <li> <p>Delete spaces before the following characters: / (</p> </li> <li> <p>Replace the following characters with a space: , ;</p> </li> <li> <p>Replace multiple spaces with one space</p> </li> <li> <p>Convert uppercase letters (A-Z) to lowercase (a-z)</p> </li> </ul> <p> <b>COMPRESS_WHITE_SPACE</b> </p> <p>Use this option to replace the following characters with a space character (decimal 32):</p> <ul> <li> <p>\\f, formfeed, decimal 12</p> </li> <li> <p>\\t, tab, decimal 9</p> </li> <li> <p>\\n, newline, decimal 10</p> </li> <li> <p>\\r, carriage return, decimal 13</p> </li> <li> <p>\\v, vertical tab, decimal 11</p> </li> <li> <p>non-breaking space, decimal 160</p> </li> </ul> <p> <code>COMPRESS_WHITE_SPACE</code> also replaces multiple spaces with one space.</p> <p> <b>HTML_ENTITY_DECODE</b> </p> <p>Use this option to replace HTML-encoded characters with unencoded characters. <code>HTML_ENTITY_DECODE</code> performs the following operations:</p> <ul> <li> <p>Replaces <code>(ampersand)quot;</code> with <code>\"</code> </p> </li> <li> <p>Replaces <code>(ampersand)nbsp;</code> with a non-breaking space, decimal 160</p> </li> <li> <p>Replaces <code>(ampersand)lt;</code> with a \"less than\" symbol</p> </li> <li> <p>Replaces <code>(ampersand)gt;</code> with <code>&gt;</code> </p> </li> <li> <p>Replaces characters that are represented in hexadecimal format, <code>(ampersand)#xhhhh;</code>, with the corresponding characters</p> </li> <li> <p>Replaces characters that are represented in decimal format, <code>(ampersand)#nnnn;</code>, with the corresponding characters</p> </li> </ul> <p> <b>LOWERCASE</b> </p> <p>Use this option to convert uppercase letters (A-Z) to lowercase (a-z).</p> <p> <b>URL_DECODE</b> </p> <p>Use this option to decode a URL-encoded value.</p> <p> <b>NONE</b> </p> <p>Specify <code>NONE</code> if you don't want any text transformations.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. </p>"
    },
    "TextTransformationPriority": {
      "type": "integer",
      "min": 0
    },
    "TextTransformationType": {
      "type": "string",
      "enum": [
        "NONE",
        "COMPRESS_WHITE_SPACE",
        "HTML_ENTITY_DECODE",
        "LOWERCASE",
        "CMD_LINE",
        "URL_DECODE"
      ]
    },
    "TextTransformations": {
      "type": "list",
      "member": {
        "shape": "TextTransformation"
      },
      "min": 1
    },
    "TimeWindow": {
      "type": "structure",
      "required": [
        "StartTime",
        "EndTime"
      ],
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The beginning of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your AWS resource received. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end of the time range from which you want <code>GetSampledRequests</code> to return a sample of the requests that your AWS resource received. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special designator, <code>Z</code>. For example, <code>\"2016-09-27T14:50Z\"</code>. You can specify any time range in the previous three hours.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "URIString": {
      "type": "string"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>An array of keys identifying the tags to disassociate from the resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateIPSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "Addresses",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the IP set that helps with identification. You cannot change the description of an IP set after you create it.</p>"
        },
        "Addresses": {
          "shape": "IPAddresses",
          "documentation": "<p>Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6. </p> <p>Examples: </p> <ul> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p> </li> <li> <p>To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p> </li> </ul> <p>For more information about CIDR notation, see the Wikipedia entry <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Classless Inter-Domain Routing</a>.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "UpdateIPSetResponse": {
      "type": "structure",
      "members": {
        "NextLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
        }
      }
    },
    "UpdateRegexPatternSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "RegularExpressionList",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the set. You cannot change the name after you create the set.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the set that helps with identification. You cannot change the description of a set after you create it.</p>"
        },
        "RegularExpressionList": {
          "shape": "RegularExpressionList",
          "documentation": "<p/>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "UpdateRegexPatternSetResponse": {
      "type": "structure",
      "members": {
        "NextLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
        }
      }
    },
    "UpdateRuleGroupRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "VisibilityConfig",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the rule group. You cannot change the name of a rule group after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the rule group. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the rule group that helps with identification. You cannot change the description of a rule group after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "UpdateRuleGroupResponse": {
      "type": "structure",
      "members": {
        "NextLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
        }
      }
    },
    "UpdateWebACLRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Scope",
        "Id",
        "DefaultAction",
        "VisibilityConfig",
        "LockToken"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p> <ul> <li> <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p> </li> <li> <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p> </li> </ul>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "DefaultAction": {
          "shape": "DefaultAction",
          "documentation": "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the Web ACL that helps with identification. You cannot change the description of a Web ACL after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        }
      }
    },
    "UpdateWebACLResponse": {
      "type": "structure",
      "members": {
        "NextLockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns this token to your update requests. You use <code>NextLockToken</code> in the same manner as you use <code>LockToken</code>. </p>"
        }
      }
    },
    "UriPath": {
      "type": "structure",
      "members": {},
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>The path component of the URI of a web request. This is the part of a web request that identifies a resource, for example, <code>/images/daily-ad.jpg</code>.</p> <p>This is used only to indicate the web request component for AWS WAF to inspect, in the <a>FieldToMatch</a> specification. </p>"
    },
    "VendorName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "VisibilityConfig": {
      "type": "structure",
      "required": [
        "SampledRequestsEnabled",
        "CloudWatchMetricsEnabled",
        "MetricName"
      ],
      "members": {
        "SampledRequestsEnabled": {
          "shape": "Boolean",
          "documentation": "<p>A boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console. </p>"
        },
        "CloudWatchMetricsEnabled": {
          "shape": "Boolean",
          "documentation": "<p>A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics\">AWS WAF Metrics</a>.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>A name of the CloudWatch metric. The name can contain only the characters: A-Z, a-z, 0-9, - (hyphen), and _ (underscore). The name can be from one to 128 characters long. It can't contain whitespace or metric names reserved for AWS WAF, for example \"All\" and \"Default_Action.\" </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
    },
    "WebACL": {
      "type": "structure",
      "required": [
        "Name",
        "Id",
        "ARN",
        "DefaultAction",
        "VisibilityConfig"
      ],
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>A unique identifier for the <code>WebACL</code>. This ID is returned in the responses to create and list commands. You use this ID to do things like get, update, and delete a <code>WebACL</code>.</p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource.</p>"
        },
        "DefaultAction": {
          "shape": "DefaultAction",
          "documentation": "<p>The action to perform if none of the <code>Rules</code> contained in the <code>WebACL</code> match. </p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the Web ACL that helps with identification. You cannot change the description of a Web ACL after you create it.</p>"
        },
        "Rules": {
          "shape": "Rules",
          "documentation": "<p>The <a>Rule</a> statements used to identify the web requests that you want to allow, block, or count. Each rule includes one top-level statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them. </p>"
        },
        "VisibilityConfig": {
          "shape": "VisibilityConfig",
          "documentation": "<p>Defines and enables Amazon CloudWatch metrics and web request sample collection. </p>"
        },
        "Capacity": {
          "shape": "ConsumedCapacity",
          "documentation": "<p>The web ACL capacity units (WCUs) currently being used by this web ACL. </p> <p>AWS WAF uses WCUs to calculate and control the operating resources that are used to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity differently for each rule type, to reflect the relative cost of each rule. Simple rules that cost little to run use fewer WCUs than more complex rules that use more processing power. Rule group capacity is fixed at creation, which helps users plan their web ACL WCU usage when they use a rule group. The WCU limit for web ACLs is 1,500. </p>"
        },
        "PreProcessFirewallManagerRuleGroups": {
          "shape": "FirewallManagerRuleGroups",
          "documentation": "<p>The first set of rules for AWS WAF to process in the web ACL. This is defined in an AWS Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any rules and rule groups that you define for the web ACL are prioritized after these. </p> <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run first in the web ACL and a set of rule groups to run last. Within each set, the administrator prioritizes the rule groups, to determine their relative processing order.</p>"
        },
        "PostProcessFirewallManagerRuleGroups": {
          "shape": "FirewallManagerRuleGroups",
          "documentation": "<p>The last set of rules for AWS WAF to process in the web ACL. This is defined in an AWS Firewall Manager WAF policy and contains only rule group references. You can't alter these. Any rules and rule groups that you define for the web ACL are prioritized before these. </p> <p>In the Firewall Manager WAF policy, the Firewall Manager administrator can define a set of rule groups to run first in the web ACL and a set of rule groups to run last. Within each set, the administrator prioritizes the rule groups, to determine their relative processing order.</p>"
        },
        "ManagedByFirewallManager": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether this web ACL is managed by AWS Firewall Manager. If true, then only AWS Firewall Manager can delete the web ACL or any Firewall Manager rule groups in the web ACL. </p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p> A Web ACL defines a collection of rules to use to inspect and control web requests. Each rule has an action defined (allow, block, or count) for requests that match the statement of the rule. In the Web ACL, you assign a default action to take (allow, block) for any request that does not match any of the rules. The rules in a Web ACL can be a combination of the types <a>Rule</a>, <a>RuleGroup</a>, and managed rule group. You can associate a Web ACL with one or more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. </p>"
    },
    "WebACLSummaries": {
      "type": "list",
      "member": {
        "shape": "WebACLSummary"
      }
    },
    "WebACLSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "EntityName",
          "documentation": "<p>The name of the Web ACL. You cannot change the name of a Web ACL after you create it.</p>"
        },
        "Id": {
          "shape": "EntityId",
          "documentation": "<p>The unique identifier for the Web ACL. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>"
        },
        "Description": {
          "shape": "EntityDescription",
          "documentation": "<p>A description of the Web ACL that helps with identification. You cannot change the description of a Web ACL after you create it.</p>"
        },
        "LockToken": {
          "shape": "LockToken",
          "documentation": "<p>A token used for optimistic locking. AWS WAF returns a token to your get and list requests, to mark the state of the entity at the time of the request. To make changes to the entity associated with the token, you provide the token to operations like update and delete. AWS WAF uses the token to ensure that no changes have been made to the entity since you last retrieved it. If a change has been made, the update fails with a <code>WAFOptimisticLockException</code>. If this happens, perform another get, and use the new token returned by that operation. </p>"
        },
        "ARN": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>High-level information about a <a>WebACL</a>, returned by operations like create and list. This provides information like the ID, that you can use to retrieve and manage a <code>WebACL</code>, and the ARN, that you provide to operations like <a>AssociateWebACL</a>.</p>"
    },
    "XssMatchStatement": {
      "type": "structure",
      "required": [
        "FieldToMatch",
        "TextTransformations"
      ],
      "members": {
        "FieldToMatch": {
          "shape": "FieldToMatch",
          "documentation": "<p>The part of a web request that you want AWS WAF to inspect. For more information, see <a>FieldToMatch</a>. </p>"
        },
        "TextTransformations": {
          "shape": "TextTransformations",
          "documentation": "<p>Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content of the request component identified by <code>FieldToMatch</code>, starting from the lowest priority setting, before inspecting the content for a match.</p>"
        }
      },
      "documentation": "<note> <p>This is the latest version of <b>AWS WAF</b>, named AWS WAFV2, released in November, 2019. For information, including how to migrate your AWS WAF resources from the prior release, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>A rule statement that defines a cross-site scripting (XSS) match search for AWS WAF to apply to web requests. XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers. The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings. </p>"
    }
  },
  "documentation": "<note> <p>This is the latest version of the <b>AWS WAF</b> API, released in November, 2019. The names of the entities that you use to access this API, like endpoints and namespaces, all have the versioning information added, like \"V2\" or \"v2\", to distinguish from the prior version. We recommend migrating your resources to this version, because it has a number of significant improvements.</p> <p>If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API to access any AWS WAF resources that you created before. You can access your old rules, web ACLs, and other AWS WAF resources only through the AWS WAF Classic APIs. The AWS WAF Classic APIs have retained the prior names, endpoints, and namespaces. </p> <p>For information, including how to migrate your AWS WAF resources to this version, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html\">AWS WAF Developer Guide</a>. </p> </note> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API Gateway API, or an Application Load Balancer. AWS WAF also lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, API Gateway, CloudFront, or the Application Load Balancer responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You also can configure CloudFront to return a custom error page when a request is blocked.</p> <p>This API guide is for developers who need detailed information about AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use AWS WAF, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/\">AWS WAF Developer Guide</a>.</p> <p>You can make calls using the endpoints listed in <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region\">AWS Service Endpoints for AWS WAF</a>. </p> <ul> <li> <p>For regional applications, you can use any of the endpoints in the list. A regional application can be an Application Load Balancer (ALB) or an API Gateway stage. </p> </li> <li> <p>For AWS CloudFront applications, you must use the API endpoint listed for US East (N. Virginia): us-east-1.</p> </li> </ul> <p>Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p> <p>We currently provide two versions of the AWS WAF API: this API and the prior versions, the classic AWS WAF APIs. This new API provides the same functionality as the older versions, with the following major improvements:</p> <ul> <li> <p>You use one API for both global and regional applications. Where you need to distinguish the scope, you specify a <code>Scope</code> parameter and set it to <code>CLOUDFRONT</code> or <code>REGIONAL</code>. </p> </li> <li> <p>You can define a Web ACL or rule group with a single call, and update it with a single call. You define all rule specifications in JSON format, and pass them to your rule group or Web ACL calls.</p> </li> <li> <p>The limits AWS WAF places on the use of rules more closely reflects the cost of running each type of rule. Rule groups include capacity settings, so you know the maximum cost of a rule group when you use it.</p> </li> </ul>"
}
]===]))
