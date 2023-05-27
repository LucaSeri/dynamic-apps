local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2012-01-25",
    "endpointPrefix": "swf",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceAbbreviation": "Amazon SWF",
    "serviceFullName": "Amazon Simple Workflow Service",
    "serviceId": "SWF",
    "signatureVersion": "v4",
    "targetPrefix": "SimpleWorkflowService",
    "uid": "swf-2012-01-25"
  },
  "operations": {
    "CountClosedWorkflowExecutions": {
      "name": "CountClosedWorkflowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CountClosedWorkflowExecutionsInput"
      },
      "output": {
        "shape": "WorkflowExecutionCount"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CountOpenWorkflowExecutions": {
      "name": "CountOpenWorkflowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CountOpenWorkflowExecutionsInput"
      },
      "output": {
        "shape": "WorkflowExecutionCount"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CountPendingActivityTasks": {
      "name": "CountPendingActivityTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CountPendingActivityTasksInput"
      },
      "output": {
        "shape": "PendingTaskCount"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CountPendingDecisionTasks": {
      "name": "CountPendingDecisionTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CountPendingDecisionTasksInput"
      },
      "output": {
        "shape": "PendingTaskCount"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and isn't guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then <code>0</code> is returned.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DeprecateActivityType": {
      "name": "DeprecateActivityType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprecateActivityTypeInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TypeDeprecatedFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Deprecates the specified <i>activity type</i>. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated continue to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DeprecateDomain": {
      "name": "DeprecateDomain",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprecateDomainInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "DomainDeprecatedFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated continues to run.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DeprecateWorkflowType": {
      "name": "DeprecateWorkflowType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprecateWorkflowTypeInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TypeDeprecatedFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Deprecates the specified <i>workflow type</i>. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated continues to run. A deprecated workflow type may still be used when calling visibility actions.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DescribeActivityType": {
      "name": "DescribeActivityType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeActivityTypeInput"
      },
      "output": {
        "shape": "ActivityTypeDetail"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DescribeDomain": {
      "name": "DescribeDomain",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDomainInput"
      },
      "output": {
        "shape": "DomainDetail"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns information about the specified domain, including description and status.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DescribeWorkflowExecution": {
      "name": "DescribeWorkflowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkflowExecutionInput"
      },
      "output": {
        "shape": "WorkflowExecutionDetail"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns information about the specified workflow execution including its type and some statistics.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "DescribeWorkflowType": {
      "name": "DescribeWorkflowType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkflowTypeInput"
      },
      "output": {
        "shape": "WorkflowTypeDetail"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns information about the specified <i>workflow type</i>. This includes configuration settings specified when the type was registered and other information such as creation date, current status, etc.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "GetWorkflowExecutionHistory": {
      "name": "GetWorkflowExecutionHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkflowExecutionHistoryInput"
      },
      "output": {
        "shape": "History"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ListActivityTypes": {
      "name": "ListActivityTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListActivityTypesInput"
      },
      "output": {
        "shape": "ActivityTypeInfos"
      },
      "errors": [
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "UnknownResourceFault"
        }
      ],
      "documentation": "<p>Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ListClosedWorkflowExecutions": {
      "name": "ListClosedWorkflowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListClosedWorkflowExecutionsInput"
      },
      "output": {
        "shape": "WorkflowExecutionInfos"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ListDomains": {
      "name": "ListDomains",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDomainsInput"
      },
      "output": {
        "shape": "DomainInfos"
      },
      "errors": [
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains. The element must be set to <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is the account ID, with no dashes.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ListOpenWorkflowExecutions": {
      "name": "ListOpenWorkflowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOpenWorkflowExecutionsInput"
      },
      "output": {
        "shape": "WorkflowExecutionInfos"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</p> </li> <li> <p> <code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</p> </li> <li> <p> <code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>List tags for a given domain.</p>"
    },
    "ListWorkflowTypes": {
      "name": "ListWorkflowTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListWorkflowTypesInput"
      },
      "output": {
        "shape": "WorkflowTypeInfos"
      },
      "errors": [
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "UnknownResourceFault"
        }
      ],
      "documentation": "<p>Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "PollForActivityTask": {
      "name": "PollForActivityTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PollForActivityTaskInput"
      },
      "output": {
        "shape": "ActivityTask"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Used by workers to get an <a>ActivityTask</a> from the specified activity <code>taskList</code>. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.</p> <important> <p>Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "PollForDecisionTask": {
      "name": "PollForDecisionTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PollForDecisionTaskInput"
      },
      "output": {
        "shape": "DecisionTask"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Used by deciders to get a <a>DecisionTask</a> from the specified decision <code>taskList</code>. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.</p> <p>This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.</p> <important> <p>Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).</p> </important> <important> <p>Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the <code>nextPageToken</code> returned by the initial call. Note that you do <i>not</i> call <code>GetWorkflowExecutionHistory</code> with this <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code> again.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the <code>taskList.name</code> parameter by using a <code>Condition</code> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RecordActivityTaskHeartbeat": {
      "name": "RecordActivityTaskHeartbeat",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RecordActivityTaskHeartbeatInput"
      },
      "output": {
        "shape": "ActivityTaskStatus"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker can also specify details of the progress, for example percent complete, using the <code>details</code> parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned by the service is set to <code>true</code>.</p> <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p> <p>This action doesn't in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history contains a <code>ActivityTaskTimedOut</code> event that contains the information from the last heartbeat generated by the activity worker.</p> <note> <p>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</p> </note> <note> <p>This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted.</p> </note> <important> <p>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation request.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RegisterActivityType": {
      "name": "RegisterActivityType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterActivityTypeInput"
      },
      "errors": [
        {
          "shape": "TypeAlreadyExistsFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Registers a new <i>activity type</i> along with its configuration settings in the specified domain.</p> <important> <p>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RegisterDomain": {
      "name": "RegisterDomain",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterDomainInput"
      },
      "errors": [
        {
          "shape": "DomainAlreadyExistsFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "TooManyTagsFault"
        }
      ],
      "documentation": "<p>Registers a new domain.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RegisterWorkflowType": {
      "name": "RegisterWorkflowType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterWorkflowTypeInput"
      },
      "errors": [
        {
          "shape": "TypeAlreadyExistsFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Registers a new <i>workflow type</i> and its configuration settings in the specified domain.</p> <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p> <important> <p>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.</p> </important> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</p> </li> <li> <p> <code>name</code>: String constraint. The key is <code>swf:name</code>.</p> </li> <li> <p> <code>version</code>: String constraint. The key is <code>swf:version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RequestCancelWorkflowExecution": {
      "name": "RequestCancelWorkflowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RequestCancelWorkflowExecutionInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> <note> <p>If the runId isn't specified, the <code>WorkflowExecutionCancelRequested</code> event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.</p> </note> <note> <p>Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of <a>TerminateWorkflowExecution</a> when possible.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RespondActivityTaskCanceled": {
      "name": "RespondActivityTaskCanceled",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RespondActivityTaskCanceledInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can be provided using the <code>details</code> argument.</p> <p>These <code>details</code> (if provided) appear in the <code>ActivityTaskCanceled</code> event added to the workflow history.</p> <important> <p>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the activity can be safely undone or abandoned.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types\">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RespondActivityTaskCompleted": {
      "name": "RespondActivityTaskCompleted",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RespondActivityTaskCompletedInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided). The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the workflow history.</p> <important> <p>If the requested task doesn't complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call <a>RespondActivityTaskCanceled</a>.</p> </important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the task has <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types\">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RespondActivityTaskFailed": {
      "name": "RespondActivityTaskFailed",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RespondActivityTaskFailedInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code> event added to the workflow history.</p> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types\">timed out</a>.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RespondDecisionTaskCompleted": {
      "name": "RespondDecisionTaskCompleted",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RespondDecisionTaskCompletedInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Used by deciders to tell the service that the <a>DecisionTask</a> identified by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument specifies the list of decisions made while processing the task.</p> <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The <code>executionContext</code> specified is attached to the event in the workflow execution history.</p> <p> <b>Access Control</b> </p> <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it can express permissions for the list of decisions in the <code>decisions</code> parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "SignalWorkflowExecution": {
      "name": "SignalWorkflowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SignalWorkflowExecutionInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).</p> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionSignaled</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>If the specified workflow execution isn't open, this method fails with <code>UnknownResource</code>.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "StartWorkflowExecution": {
      "name": "StartWorkflowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartWorkflowExecutionInput"
      },
      "output": {
        "shape": "Run"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TypeDeprecatedFault"
        },
        {
          "shape": "WorkflowExecutionAlreadyStartedFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        },
        {
          "shape": "DefaultUndefinedFault"
        }
      ],
      "documentation": "<p>Starts an execution of the workflow type in the specified domain using the provided <code>workflowId</code> and input data.</p> <p>This action returns the newly started workflow execution.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</p> </li> <li> <p> <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</p> </li> <li> <p> <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</p> </li> <li> <p> <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</p> </li> <li> <p> <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</p> </li> <li> <p> <code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TooManyTagsFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Add a tag to a Amazon SWF domain.</p> <note> <p>Amazon SWF supports a maximum of 50 tags per resource.</p> </note>"
    },
    "TerminateWorkflowExecution": {
      "name": "TerminateWorkflowExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateWorkflowExecutionInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.</p> <important> <p>If the identified workflow execution was in progress, it is terminated immediately.</p> </important> <note> <p>If a runId isn't specified, then the <code>WorkflowExecutionTerminated</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</p> </note> <note> <p>You should consider using <a>RequestCancelWorkflowExecution</a> action instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> doesn't.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "UndeprecateActivityType": {
      "name": "UndeprecateActivityType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UndeprecateActivityTypeInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TypeAlreadyExistsFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Undeprecates a previously deprecated <i>activity type</i>. After an activity type has been undeprecated, you can create new tasks of that activity type.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "UndeprecateDomain": {
      "name": "UndeprecateDomain",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UndeprecateDomainInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "DomainAlreadyExistsFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Undeprecates a previously deprecated domain. After a domain has been undeprecated it can be used to create new workflow executions or register new types.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "UndeprecateWorkflowType": {
      "name": "UndeprecateWorkflowType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UndeprecateWorkflowTypeInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "TypeAlreadyExistsFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Undeprecates a previously deprecated <i>workflow type</i>. After a workflow type has been undeprecated, you can create new executions of that type. </p> <note> <p>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</p> </note> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "errors": [
        {
          "shape": "UnknownResourceFault"
        },
        {
          "shape": "LimitExceededFault"
        },
        {
          "shape": "OperationNotPermittedFault"
        }
      ],
      "documentation": "<p>Remove a tag from a Amazon SWF domain.</p>"
    }
  },
  "shapes": {
    "ActivityId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ActivityTask": {
      "type": "structure",
      "required": [
        "taskToken",
        "activityId",
        "startedEventId",
        "workflowExecution",
        "activityType"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>"
        },
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The unique ID of the task.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event recorded in the history.</p>"
        },
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The workflow execution that started this activity task.</p>"
        },
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The type of this activity task.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.</p>"
        }
      },
      "documentation": "<p>Unit of work sent to an activity worker.</p>"
    },
    "ActivityTaskCancelRequestedEventAttributes": {
      "type": "structure",
      "required": [
        "decisionTaskCompletedEventId",
        "activityId"
      ],
      "members": {
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The unique ID of the task.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>"
    },
    "ActivityTaskCanceledEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "details": {
          "shape": "Data",
          "documentation": "<p>Details of the cancellation.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "latestCancelRequestedEventId": {
          "shape": "EventId",
          "documentation": "<p>If set, contains the ID of the last <code>ActivityTaskCancelRequested</code> event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>"
    },
    "ActivityTaskCompletedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "result": {
          "shape": "Data",
          "documentation": "<p>The results of the activity task.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>"
    },
    "ActivityTaskFailedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason provided for the failure.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the failure.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>"
    },
    "ActivityTaskScheduledEventAttributes": {
      "type": "structure",
      "required": [
        "activityType",
        "activityId",
        "taskList",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The type of the activity task.</p>"
        },
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The unique ID of the activity task.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the activity task.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>"
        },
        "scheduleToStartTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum amount of time the activity task can wait to be assigned to a worker.</p>"
        },
        "scheduleToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum amount of time for this activity task.</p>"
        },
        "startToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum amount of time a worker may take to process the activity task.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The task list in which the activity task has been scheduled.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> The priority to assign to the scheduled activity task. If set, this overrides any default priority value that was assigned when the activity type was registered.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "heartbeatTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum time before which the worker processing this task must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or return a result, it is ignored.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>"
    },
    "ActivityTaskStartedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId"
      ],
      "members": {
        "identity": {
          "shape": "Identity",
          "documentation": "<p>Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>"
    },
    "ActivityTaskStatus": {
      "type": "structure",
      "required": [
        "cancelRequested"
      ],
      "members": {
        "cancelRequested": {
          "shape": "Canceled",
          "documentation": "<p>Set to <code>true</code> if cancellation of the task is requested.</p>"
        }
      },
      "documentation": "<p>Status information about an activity task.</p>"
    },
    "ActivityTaskTimedOutEventAttributes": {
      "type": "structure",
      "required": [
        "timeoutType",
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "timeoutType": {
          "shape": "ActivityTaskTimeoutType",
          "documentation": "<p>The type of the timeout that caused this event.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "details": {
          "shape": "LimitedData",
          "documentation": "<p>Contains the content of the <code>details</code> parameter for the last call made by the activity to <code>RecordActivityTaskHeartbeat</code>.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>"
    },
    "ActivityTaskTimeoutType": {
      "type": "string",
      "enum": [
        "START_TO_CLOSE",
        "SCHEDULE_TO_START",
        "SCHEDULE_TO_CLOSE",
        "HEARTBEAT"
      ]
    },
    "ActivityType": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of this activity.</p> <note> <p>The combination of activity type name and version must be unique within a domain.</p> </note>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of this activity.</p> <note> <p>The combination of activity type name and version must be unique with in a domain.</p> </note>"
        }
      },
      "documentation": "<p>Represents an activity type.</p>"
    },
    "ActivityTypeConfiguration": {
      "type": "structure",
      "members": {
        "defaultTaskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum duration for tasks of an activity type specified when registering the activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskHeartbeatTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum time, in seconds, before which a worker processing a task must report progress by calling <a>RecordActivityTaskHeartbeat</a>.</p> <p>You can specify this value only when <i>registering</i> an activity type. The registered default value can be overridden when you schedule a task through the <code>ScheduleActivityTask</code> <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskList": {
          "shape": "TaskList",
          "documentation": "<p> The default task list specified for this activity type at registration. This default is used if a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code> <a>Decision</a>. You can override the default registered task list when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p>"
        },
        "defaultTaskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> The default task priority for tasks of this activity type, specified at registration. If not set, then <code>0</code> is used as the default priority. This default can be overridden when scheduling an activity task.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "defaultTaskScheduleToStartTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum duration, specified when registering the activity type, that a task of an activity type can wait before being assigned to a worker. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskScheduleToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum duration, specified when registering the activity type, for tasks of this activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        }
      },
      "documentation": "<p>Configuration settings registered with the activity type.</p>"
    },
    "ActivityTypeDetail": {
      "type": "structure",
      "required": [
        "typeInfo",
        "configuration"
      ],
      "members": {
        "typeInfo": {
          "shape": "ActivityTypeInfo",
          "documentation": "<p>General information about the activity type.</p> <p>The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.</p> <ul> <li> <p> <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running. </p> </li> <li> <p> <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateActivityType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type. </p> </li> </ul>"
        },
        "configuration": {
          "shape": "ActivityTypeConfiguration",
          "documentation": "<p>The configuration settings registered with the activity type.</p>"
        }
      },
      "documentation": "<p>Detailed information about an activity type.</p>"
    },
    "ActivityTypeInfo": {
      "type": "structure",
      "required": [
        "activityType",
        "status",
        "creationDate"
      ],
      "members": {
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The <a>ActivityType</a> type structure representing the activity type.</p>"
        },
        "status": {
          "shape": "RegistrationStatus",
          "documentation": "<p>The current status of the activity type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the activity type provided in <a>RegisterActivityType</a>.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time this activity type was created through <a>RegisterActivityType</a>.</p>"
        },
        "deprecationDate": {
          "shape": "Timestamp",
          "documentation": "<p>If DEPRECATED, the date and time <a>DeprecateActivityType</a> was called.</p>"
        }
      },
      "documentation": "<p>Detailed information about an activity type.</p>"
    },
    "ActivityTypeInfoList": {
      "type": "list",
      "member": {
        "shape": "ActivityTypeInfo"
      }
    },
    "ActivityTypeInfos": {
      "type": "structure",
      "required": [
        "typeInfos"
      ],
      "members": {
        "typeInfos": {
          "shape": "ActivityTypeInfoList",
          "documentation": "<p>List of activity type information.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        }
      },
      "documentation": "<p>Contains a paginated list of activity type information structures.</p>"
    },
    "Arn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "CancelTimerDecisionAttributes": {
      "type": "structure",
      "required": [
        "timerId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p> The unique ID of the timer to cancel.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CancelTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CancelTimerFailedCause": {
      "type": "string",
      "enum": [
        "TIMER_ID_UNKNOWN",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "CancelTimerFailedEventAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p>The timerId provided in the <code>CancelTimer</code> decision that failed.</p>"
        },
        "cause": {
          "shape": "CancelTimerFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CancelTimerFailed</code> event.</p>"
    },
    "CancelWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "members": {
        "details": {
          "shape": "Data",
          "documentation": "<p> Details of the cancellation.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CancelWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNHANDLED_DECISION",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "CancelWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "cause": {
          "shape": "CancelWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>"
    },
    "Canceled": {
      "type": "boolean"
    },
    "CauseMessage": {
      "type": "string",
      "max": 1728
    },
    "ChildPolicy": {
      "type": "string",
      "enum": [
        "TERMINATE",
        "REQUEST_CANCEL",
        "ABANDON"
      ]
    },
    "ChildWorkflowExecutionCanceledEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "initiatedEventId",
        "startedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that was canceled.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>Details of the cancellation (if provided).</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>"
    },
    "ChildWorkflowExecutionCompletedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "initiatedEventId",
        "startedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that was completed.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "result": {
          "shape": "Data",
          "documentation": "<p>The result of the child workflow execution.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>"
    },
    "ChildWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "initiatedEventId",
        "startedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that failed.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason for the failure (if provided).</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the failure (if provided).</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>"
    },
    "ChildWorkflowExecutionStartedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "initiatedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that was started.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>"
    },
    "ChildWorkflowExecutionTerminatedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "initiatedEventId",
        "startedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that was terminated.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>"
    },
    "ChildWorkflowExecutionTimedOutEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "workflowType",
        "timeoutType",
        "initiatedEventId",
        "startedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The child workflow execution that timed out.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "timeoutType": {
          "shape": "WorkflowExecutionTimeoutType",
          "documentation": "<p>The type of the timeout that caused the child workflow execution to time out.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>"
    },
    "CloseStatus": {
      "type": "string",
      "enum": [
        "COMPLETED",
        "FAILED",
        "CANCELED",
        "TERMINATED",
        "CONTINUED_AS_NEW",
        "TIMED_OUT"
      ]
    },
    "CloseStatusFilter": {
      "type": "structure",
      "required": [
        "status"
      ],
      "members": {
        "status": {
          "shape": "CloseStatus",
          "documentation": "<p> The close status that must match the close status of an execution for it to meet the criteria of this filter.</p>"
        }
      },
      "documentation": "<p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>"
    },
    "CompleteWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "members": {
        "result": {
          "shape": "Data",
          "documentation": "<p>The result of the workflow execution. The form of the result is implementation defined.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "CompleteWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNHANDLED_DECISION",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "CompleteWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "cause": {
          "shape": "CompleteWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>"
    },
    "ContinueAsNewWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "members": {
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the new workflow execution.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the total duration for this workflow execution. This overrides the <code>defaultExecutionStartToCloseTimeout</code> specified when registering the workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The task list to use for the decisions of the new (continued) workflow execution.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> The task priority that, if set, specifies the priority for the decision tasks for this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>"
        },
        "workflowTypeVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the workflow to start.</p>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role to attach to the new (continued) execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tag</code> – A tag used to identify the workflow execution</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ContinueAsNewWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNHANDLED_DECISION",
        "WORKFLOW_TYPE_DEPRECATED",
        "WORKFLOW_TYPE_DOES_NOT_EXIST",
        "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_TASK_LIST_UNDEFINED",
        "DEFAULT_CHILD_POLICY_UNDEFINED",
        "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "ContinueAsNewWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "cause": {
          "shape": "ContinueAsNewWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>"
    },
    "Count": {
      "type": "integer",
      "min": 0
    },
    "CountClosedWorkflowExecutionsInput": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow executions to count.</p>"
        },
        "startTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>If specified, only workflow executions that meet the start time criteria of the filter are counted.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>"
        },
        "closeTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>If specified, only workflow executions that meet the close time criteria of the filter are counted.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>"
        },
        "executionFilter": {
          "shape": "WorkflowExecutionFilter",
          "documentation": "<p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "typeFilter": {
          "shape": "WorkflowTypeFilter",
          "documentation": "<p>If specified, indicates the type of the workflow executions to be counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "tagFilter": {
          "shape": "TagFilter",
          "documentation": "<p>If specified, only executions that have a tag that matches the filter are counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "closeStatusFilter": {
          "shape": "CloseStatusFilter",
          "documentation": "<p>If specified, only workflow executions that match this close status are counted. This filter has an affect only if <code>executionStatus</code> is specified as <code>CLOSED</code>.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        }
      }
    },
    "CountOpenWorkflowExecutionsInput": {
      "type": "structure",
      "required": [
        "domain",
        "startTimeFilter"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow executions to count.</p>"
        },
        "startTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>Specifies the start time criteria that workflow executions must meet in order to be counted.</p>"
        },
        "typeFilter": {
          "shape": "WorkflowTypeFilter",
          "documentation": "<p>Specifies the type of the workflow executions to be counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "tagFilter": {
          "shape": "TagFilter",
          "documentation": "<p>If specified, only executions that have a tag that matches the filter are counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "executionFilter": {
          "shape": "WorkflowExecutionFilter",
          "documentation": "<p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        }
      }
    },
    "CountPendingActivityTasksInput": {
      "type": "structure",
      "required": [
        "domain",
        "taskList"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the task list.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list.</p>"
        }
      }
    },
    "CountPendingDecisionTasksInput": {
      "type": "structure",
      "required": [
        "domain",
        "taskList"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the task list.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list.</p>"
        }
      }
    },
    "Data": {
      "type": "string",
      "max": 32768
    },
    "Decision": {
      "type": "structure",
      "required": [
        "decisionType"
      ],
      "members": {
        "decisionType": {
          "shape": "DecisionType",
          "documentation": "<p>Specifies the type of the decision.</p>"
        },
        "scheduleActivityTaskDecisionAttributes": {
          "shape": "ScheduleActivityTaskDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>ScheduleActivityTask</code> decision. It isn't set for other decision types.</p>"
        },
        "requestCancelActivityTaskDecisionAttributes": {
          "shape": "RequestCancelActivityTaskDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>RequestCancelActivityTask</code> decision. It isn't set for other decision types.</p>"
        },
        "completeWorkflowExecutionDecisionAttributes": {
          "shape": "CompleteWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>CompleteWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "failWorkflowExecutionDecisionAttributes": {
          "shape": "FailWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>FailWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "cancelWorkflowExecutionDecisionAttributes": {
          "shape": "CancelWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>CancelWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "continueAsNewWorkflowExecutionDecisionAttributes": {
          "shape": "ContinueAsNewWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "recordMarkerDecisionAttributes": {
          "shape": "RecordMarkerDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>RecordMarker</code> decision. It isn't set for other decision types.</p>"
        },
        "startTimerDecisionAttributes": {
          "shape": "StartTimerDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>StartTimer</code> decision. It isn't set for other decision types.</p>"
        },
        "cancelTimerDecisionAttributes": {
          "shape": "CancelTimerDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>CancelTimer</code> decision. It isn't set for other decision types.</p>"
        },
        "signalExternalWorkflowExecutionDecisionAttributes": {
          "shape": "SignalExternalWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "requestCancelExternalWorkflowExecutionDecisionAttributes": {
          "shape": "RequestCancelExternalWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "startChildWorkflowExecutionDecisionAttributes": {
          "shape": "StartChildWorkflowExecutionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision. It isn't set for other decision types.</p>"
        },
        "scheduleLambdaFunctionDecisionAttributes": {
          "shape": "ScheduleLambdaFunctionDecisionAttributes",
          "documentation": "<p>Provides the details of the <code>ScheduleLambdaFunction</code> decision. It isn't set for other decision types.</p>"
        }
      },
      "documentation": "<p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <p> <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</p> </li> <li> <p> <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</p> </li> <li> <p> <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</p> </li> <li> <p> <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</p> </li> <li> <p> <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they don't need to look at the history beyond the marker event.</p> </li> <li> <p> <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already assigned to a worker, then the worker is informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>ScheduleActivityTask</code> – Schedules an activity task.</p> </li> <li> <p> <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</p> </li> <li> <p> <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p> </li> </ul> <p> <b>Access Control</b> </p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <p> <b>Decision Failure</b> </p> <p>Decisions can fail for several reasons</p> <ul> <li> <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p> </li> <li> <p>A limit on your account was reached.</p> </li> <li> <p>The decision lacks sufficient permissions.</p> </li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <ul> <li> <p> <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't properly configured.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – A <code>RequestCancelActivityTask</code> decision failed. This could happen if there is no open activity task with the specified activityId.</p> </li> <li> <p> <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This could happen if there is another open timer with the same timerId.</p> </li> <li> <p> <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed. This could happen if there is no open timer with the specified timerId.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – A <code>StartChildWorkflowExecution</code> decision failed. This could happen if the workflow type specified isn't registered, is deprecated, or the decision isn't properly configured.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – A <code>SignalExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – A <code>RequestCancelExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A <code>CancelWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – A <code>CompleteWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – A <code>ContinueAsNewWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note> <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault is returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</p> </note> <p> <b>How to Code a Decision</b> </p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <p> <code> <a>ScheduleActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CompleteWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>FailWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RecordMarkerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartChildWorkflowExecutionDecisionAttributes</a> </code> </p> </li> </ul>"
    },
    "DecisionList": {
      "type": "list",
      "member": {
        "shape": "Decision"
      }
    },
    "DecisionTask": {
      "type": "structure",
      "required": [
        "taskToken",
        "startedEventId",
        "workflowExecution",
        "workflowType",
        "events"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskStarted</code> event recorded in the history.</p>"
        },
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The workflow execution for which this decision task was created.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the workflow execution for which this decision task was created.</p>"
        },
        "events": {
          "shape": "HistoryEventList",
          "documentation": "<p>A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        },
        "previousStartedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.</p>"
        }
      },
      "documentation": "<p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>"
    },
    "DecisionTaskCompletedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "executionContext": {
          "shape": "Data",
          "documentation": "<p>User defined context for the workflow execution.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>"
    },
    "DecisionTaskScheduledEventAttributes": {
      "type": "structure",
      "required": [
        "taskList"
      ],
      "members": {
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list in which the decision task was scheduled.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> A task priority that, if set, specifies the priority for this decision task. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "startToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration for this decision task. The task is considered timed out if it doesn't completed within this duration.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        }
      },
      "documentation": "<p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>"
    },
    "DecisionTaskStartedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId"
      ],
      "members": {
        "identity": {
          "shape": "Identity",
          "documentation": "<p>Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>"
    },
    "DecisionTaskTimedOutEventAttributes": {
      "type": "structure",
      "required": [
        "timeoutType",
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "timeoutType": {
          "shape": "DecisionTaskTimeoutType",
          "documentation": "<p>The type of timeout that expired before the decision task could be completed.</p>"
        },
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>"
    },
    "DecisionTaskTimeoutType": {
      "type": "string",
      "enum": [
        "START_TO_CLOSE"
      ]
    },
    "DecisionType": {
      "type": "string",
      "enum": [
        "ScheduleActivityTask",
        "RequestCancelActivityTask",
        "CompleteWorkflowExecution",
        "FailWorkflowExecution",
        "CancelWorkflowExecution",
        "ContinueAsNewWorkflowExecution",
        "RecordMarker",
        "StartTimer",
        "CancelTimer",
        "SignalExternalWorkflowExecution",
        "RequestCancelExternalWorkflowExecution",
        "StartChildWorkflowExecution",
        "ScheduleLambdaFunction"
      ]
    },
    "DeprecateActivityTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "activityType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the activity type is registered.</p>"
        },
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The activity type to deprecate.</p>"
        }
      }
    },
    "DeprecateDomainInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain to deprecate.</p>"
        }
      }
    },
    "DeprecateWorkflowTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the workflow type is registered.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type to deprecate.</p>"
        }
      }
    },
    "DescribeActivityTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "activityType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the activity type is registered.</p>"
        },
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The activity type to get information about. Activity types are identified by the <code>name</code> and <code>version</code> that were supplied when the activity was registered.</p>"
        }
      }
    },
    "DescribeDomainInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain to describe.</p>"
        }
      }
    },
    "DescribeWorkflowExecutionInput": {
      "type": "structure",
      "required": [
        "domain",
        "execution"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow execution.</p>"
        },
        "execution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The workflow execution to describe.</p>"
        }
      }
    },
    "DescribeWorkflowTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which this workflow type is registered.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type to describe.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 1024
    },
    "DomainConfiguration": {
      "type": "structure",
      "required": [
        "workflowExecutionRetentionPeriodInDays"
      ],
      "members": {
        "workflowExecutionRetentionPeriodInDays": {
          "shape": "DurationInDays",
          "documentation": "<p>The retention period for workflow executions in this domain.</p>"
        }
      },
      "documentation": "<p>Contains the configuration settings of a domain.</p>"
    },
    "DomainDetail": {
      "type": "structure",
      "required": [
        "domainInfo",
        "configuration"
      ],
      "members": {
        "domainInfo": {
          "shape": "DomainInfo",
          "documentation": "<p>The basic information about a domain, such as its name, status, and description.</p>"
        },
        "configuration": {
          "shape": "DomainConfiguration",
          "documentation": "<p>The domain configuration. Currently, this includes only the domain's retention period.</p>"
        }
      },
      "documentation": "<p>Contains details of a domain.</p>"
    },
    "DomainInfo": {
      "type": "structure",
      "required": [
        "name",
        "status"
      ],
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain. This name is unique within the account.</p>"
        },
        "status": {
          "shape": "RegistrationStatus",
          "documentation": "<p>The status of the domain:</p> <ul> <li> <p> <code>REGISTERED</code> – The domain is properly registered and available. You can use this domain for registering types and creating new workflow executions. </p> </li> <li> <p> <code>DEPRECATED</code> – The domain was deprecated using <a>DeprecateDomain</a>, but is still in use. You should not create new workflow executions in this domain. </p> </li> </ul>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the domain provided through <a>RegisterDomain</a>.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the domain.</p>"
        }
      },
      "documentation": "<p>Contains general information about a domain.</p>"
    },
    "DomainInfoList": {
      "type": "list",
      "member": {
        "shape": "DomainInfo"
      }
    },
    "DomainInfos": {
      "type": "structure",
      "required": [
        "domainInfos"
      ],
      "members": {
        "domainInfos": {
          "shape": "DomainInfoList",
          "documentation": "<p>A list of DomainInfo structures.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        }
      },
      "documentation": "<p>Contains a paginated collection of DomainInfo structures.</p>"
    },
    "DomainName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DurationInDays": {
      "type": "string",
      "max": 8,
      "min": 1
    },
    "DurationInSeconds": {
      "type": "string",
      "max": 8,
      "min": 1
    },
    "DurationInSecondsOptional": {
      "type": "string",
      "max": 8
    },
    "EventId": {
      "type": "long"
    },
    "EventType": {
      "type": "string",
      "enum": [
        "WorkflowExecutionStarted",
        "WorkflowExecutionCancelRequested",
        "WorkflowExecutionCompleted",
        "CompleteWorkflowExecutionFailed",
        "WorkflowExecutionFailed",
        "FailWorkflowExecutionFailed",
        "WorkflowExecutionTimedOut",
        "WorkflowExecutionCanceled",
        "CancelWorkflowExecutionFailed",
        "WorkflowExecutionContinuedAsNew",
        "ContinueAsNewWorkflowExecutionFailed",
        "WorkflowExecutionTerminated",
        "DecisionTaskScheduled",
        "DecisionTaskStarted",
        "DecisionTaskCompleted",
        "DecisionTaskTimedOut",
        "ActivityTaskScheduled",
        "ScheduleActivityTaskFailed",
        "ActivityTaskStarted",
        "ActivityTaskCompleted",
        "ActivityTaskFailed",
        "ActivityTaskTimedOut",
        "ActivityTaskCanceled",
        "ActivityTaskCancelRequested",
        "RequestCancelActivityTaskFailed",
        "WorkflowExecutionSignaled",
        "MarkerRecorded",
        "RecordMarkerFailed",
        "TimerStarted",
        "StartTimerFailed",
        "TimerFired",
        "TimerCanceled",
        "CancelTimerFailed",
        "StartChildWorkflowExecutionInitiated",
        "StartChildWorkflowExecutionFailed",
        "ChildWorkflowExecutionStarted",
        "ChildWorkflowExecutionCompleted",
        "ChildWorkflowExecutionFailed",
        "ChildWorkflowExecutionTimedOut",
        "ChildWorkflowExecutionCanceled",
        "ChildWorkflowExecutionTerminated",
        "SignalExternalWorkflowExecutionInitiated",
        "SignalExternalWorkflowExecutionFailed",
        "ExternalWorkflowExecutionSignaled",
        "RequestCancelExternalWorkflowExecutionInitiated",
        "RequestCancelExternalWorkflowExecutionFailed",
        "ExternalWorkflowExecutionCancelRequested",
        "LambdaFunctionScheduled",
        "LambdaFunctionStarted",
        "LambdaFunctionCompleted",
        "LambdaFunctionFailed",
        "LambdaFunctionTimedOut",
        "ScheduleLambdaFunctionFailed",
        "StartLambdaFunctionFailed"
      ]
    },
    "ExecutionStatus": {
      "type": "string",
      "enum": [
        "OPEN",
        "CLOSED"
      ]
    },
    "ExecutionTimeFilter": {
      "type": "structure",
      "required": [
        "oldestDate"
      ],
      "members": {
        "oldestDate": {
          "shape": "Timestamp",
          "documentation": "<p>Specifies the oldest start or close date and time to return.</p>"
        },
        "latestDate": {
          "shape": "Timestamp",
          "documentation": "<p>Specifies the latest start or close date and time to return.</p>"
        }
      },
      "documentation": "<p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href=\"https://en.wikipedia.org/wiki/Unix_time\">Unix Time format</a>. For example: <code>\"oldestDate\": 1325376070.</code> </p>"
    },
    "ExternalWorkflowExecutionCancelRequestedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "initiatedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The external workflow execution to which the cancellation request was delivered.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>"
    },
    "ExternalWorkflowExecutionSignaledEventAttributes": {
      "type": "structure",
      "required": [
        "workflowExecution",
        "initiatedEventId"
      ],
      "members": {
        "workflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The external workflow execution that the signal was delivered to.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>"
    },
    "FailWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "members": {
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>A descriptive reason for the failure that may help in diagnostics.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p> Details of the failure.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "FailWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNHANDLED_DECISION",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "FailWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "cause": {
          "shape": "FailWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>"
    },
    "FailureReason": {
      "type": "string",
      "max": 256
    },
    "FunctionId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "FunctionInput": {
      "type": "string",
      "max": 32768,
      "min": 0
    },
    "FunctionName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "GetWorkflowExecutionHistoryInput": {
      "type": "structure",
      "required": [
        "domain",
        "execution"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow execution.</p>"
        },
        "execution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>Specifies the workflow execution for which to return the history.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimeStamp</code> of the events.</p>"
        }
      }
    },
    "History": {
      "type": "structure",
      "required": [
        "events"
      ],
      "members": {
        "events": {
          "shape": "HistoryEventList",
          "documentation": "<p>The list of history events.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        }
      },
      "documentation": "<p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>"
    },
    "HistoryEvent": {
      "type": "structure",
      "required": [
        "eventTimestamp",
        "eventType",
        "eventId"
      ],
      "members": {
        "eventTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the event occurred.</p>"
        },
        "eventType": {
          "shape": "EventType",
          "documentation": "<p>The type of the history event.</p>"
        },
        "eventId": {
          "shape": "EventId",
          "documentation": "<p>The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.</p>"
        },
        "workflowExecutionStartedEventAttributes": {
          "shape": "WorkflowExecutionStartedEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionCompletedEventAttributes": {
          "shape": "WorkflowExecutionCompletedEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "completeWorkflowExecutionFailedEventAttributes": {
          "shape": "CompleteWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>CompleteWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionFailedEventAttributes": {
          "shape": "WorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "failWorkflowExecutionFailedEventAttributes": {
          "shape": "FailWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>FailWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionTimedOutEventAttributes": {
          "shape": "WorkflowExecutionTimedOutEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionCanceledEventAttributes": {
          "shape": "WorkflowExecutionCanceledEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "cancelWorkflowExecutionFailedEventAttributes": {
          "shape": "CancelWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>CancelWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionContinuedAsNewEventAttributes": {
          "shape": "WorkflowExecutionContinuedAsNewEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionContinuedAsNew</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "continueAsNewWorkflowExecutionFailedEventAttributes": {
          "shape": "ContinueAsNewWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>ContinueAsNewWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionTerminatedEventAttributes": {
          "shape": "WorkflowExecutionTerminatedEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionCancelRequestedEventAttributes": {
          "shape": "WorkflowExecutionCancelRequestedEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "decisionTaskScheduledEventAttributes": {
          "shape": "DecisionTaskScheduledEventAttributes",
          "documentation": "<p>If the event is of type <code>DecisionTaskScheduled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "decisionTaskStartedEventAttributes": {
          "shape": "DecisionTaskStartedEventAttributes",
          "documentation": "<p>If the event is of type <code>DecisionTaskStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "decisionTaskCompletedEventAttributes": {
          "shape": "DecisionTaskCompletedEventAttributes",
          "documentation": "<p>If the event is of type <code>DecisionTaskCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "decisionTaskTimedOutEventAttributes": {
          "shape": "DecisionTaskTimedOutEventAttributes",
          "documentation": "<p>If the event is of type <code>DecisionTaskTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskScheduledEventAttributes": {
          "shape": "ActivityTaskScheduledEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskScheduled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskStartedEventAttributes": {
          "shape": "ActivityTaskStartedEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskCompletedEventAttributes": {
          "shape": "ActivityTaskCompletedEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskFailedEventAttributes": {
          "shape": "ActivityTaskFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskTimedOutEventAttributes": {
          "shape": "ActivityTaskTimedOutEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskCanceledEventAttributes": {
          "shape": "ActivityTaskCanceledEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "activityTaskCancelRequestedEventAttributes": {
          "shape": "ActivityTaskCancelRequestedEventAttributes",
          "documentation": "<p>If the event is of type <code>ActivityTaskcancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "workflowExecutionSignaledEventAttributes": {
          "shape": "WorkflowExecutionSignaledEventAttributes",
          "documentation": "<p>If the event is of type <code>WorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "markerRecordedEventAttributes": {
          "shape": "MarkerRecordedEventAttributes",
          "documentation": "<p>If the event is of type <code>MarkerRecorded</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "recordMarkerFailedEventAttributes": {
          "shape": "RecordMarkerFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>DecisionTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "timerStartedEventAttributes": {
          "shape": "TimerStartedEventAttributes",
          "documentation": "<p>If the event is of type <code>TimerStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "timerFiredEventAttributes": {
          "shape": "TimerFiredEventAttributes",
          "documentation": "<p>If the event is of type <code>TimerFired</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "timerCanceledEventAttributes": {
          "shape": "TimerCanceledEventAttributes",
          "documentation": "<p>If the event is of type <code>TimerCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "startChildWorkflowExecutionInitiatedEventAttributes": {
          "shape": "StartChildWorkflowExecutionInitiatedEventAttributes",
          "documentation": "<p>If the event is of type <code>StartChildWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionStartedEventAttributes": {
          "shape": "ChildWorkflowExecutionStartedEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionCompletedEventAttributes": {
          "shape": "ChildWorkflowExecutionCompletedEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionFailedEventAttributes": {
          "shape": "ChildWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionTimedOutEventAttributes": {
          "shape": "ChildWorkflowExecutionTimedOutEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionCanceledEventAttributes": {
          "shape": "ChildWorkflowExecutionCanceledEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "childWorkflowExecutionTerminatedEventAttributes": {
          "shape": "ChildWorkflowExecutionTerminatedEventAttributes",
          "documentation": "<p>If the event is of type <code>ChildWorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "signalExternalWorkflowExecutionInitiatedEventAttributes": {
          "shape": "SignalExternalWorkflowExecutionInitiatedEventAttributes",
          "documentation": "<p>If the event is of type <code>SignalExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "externalWorkflowExecutionSignaledEventAttributes": {
          "shape": "ExternalWorkflowExecutionSignaledEventAttributes",
          "documentation": "<p>If the event is of type <code>ExternalWorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "signalExternalWorkflowExecutionFailedEventAttributes": {
          "shape": "SignalExternalWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>SignalExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "externalWorkflowExecutionCancelRequestedEventAttributes": {
          "shape": "ExternalWorkflowExecutionCancelRequestedEventAttributes",
          "documentation": "<p>If the event is of type <code>ExternalWorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types. </p>"
        },
        "requestCancelExternalWorkflowExecutionInitiatedEventAttributes": {
          "shape": "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes",
          "documentation": "<p>If the event is of type <code>RequestCancelExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "requestCancelExternalWorkflowExecutionFailedEventAttributes": {
          "shape": "RequestCancelExternalWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>RequestCancelExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "scheduleActivityTaskFailedEventAttributes": {
          "shape": "ScheduleActivityTaskFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>ScheduleActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "requestCancelActivityTaskFailedEventAttributes": {
          "shape": "RequestCancelActivityTaskFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>RequestCancelActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "startTimerFailedEventAttributes": {
          "shape": "StartTimerFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>StartTimerFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "cancelTimerFailedEventAttributes": {
          "shape": "CancelTimerFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>CancelTimerFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "startChildWorkflowExecutionFailedEventAttributes": {
          "shape": "StartChildWorkflowExecutionFailedEventAttributes",
          "documentation": "<p>If the event is of type <code>StartChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>"
        },
        "lambdaFunctionScheduledEventAttributes": {
          "shape": "LambdaFunctionScheduledEventAttributes",
          "documentation": "<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>"
        },
        "lambdaFunctionStartedEventAttributes": {
          "shape": "LambdaFunctionStartedEventAttributes",
          "documentation": "<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>"
        },
        "lambdaFunctionCompletedEventAttributes": {
          "shape": "LambdaFunctionCompletedEventAttributes",
          "documentation": "<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>"
        },
        "lambdaFunctionFailedEventAttributes": {
          "shape": "LambdaFunctionFailedEventAttributes",
          "documentation": "<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
        },
        "lambdaFunctionTimedOutEventAttributes": {
          "shape": "LambdaFunctionTimedOutEventAttributes",
          "documentation": "<p>Provides the details of the <code>LambdaFunctionTimedOut</code> event. It isn't set for other event types.</p>"
        },
        "scheduleLambdaFunctionFailedEventAttributes": {
          "shape": "ScheduleLambdaFunctionFailedEventAttributes",
          "documentation": "<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
        },
        "startLambdaFunctionFailedEventAttributes": {
          "shape": "StartLambdaFunctionFailedEventAttributes",
          "documentation": "<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
        }
      },
      "documentation": "<p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <p> <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the system.</p> </li> <li> <p> <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p> </li> <li> <p> <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</p> </li> <li> <p> <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</p> </li> <li> <p> <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p> </li> <li> <p> <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p> </li> <li> <p> <code>ActivityTaskTimedOut</code> – The activity task timed out.</p> </li> <li> <p> <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't configured properly, for example no timer exists with the specified timer Id.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was canceled and closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution, completed successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionFailed</code> – A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p> </li> <li> <p> <code>ChildWorkflowExecutionTerminated</code> – A child workflow execution, started by this workflow execution, was terminated.</p> </li> <li> <p> <code>ChildWorkflowExecutionTimedOut</code> – A child workflow execution, started by this workflow execution, timed out and was closed.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued as a new workflow execution.</p> </li> <li> <p> <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</p> </li> <li> <p> <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p> </li> <li> <p> <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p> </li> <li> <p> <code>DecisionTaskTimedOut</code> – The decision task timed out.</p> </li> <li> <p> <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was successfully delivered to the target execution.</p> </li> <li> <p> <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p> </li> <li> <p> <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</p> </li> <li> <p> <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens when the decision isn't configured properly.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution failed.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an external workflow execution.</p> </li> <li> <p> <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the decision isn't configured properly, for example the activity type specified isn't registered.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution failed.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p> </li> <li> <p> <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens when the decision isn't configured properly, for example the workflow type specified isn't registered.</p> </li> <li> <p> <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p> </li> <li> <p> <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't configured properly, for example a timer already exists with the specified timer Id.</p> </li> <li> <p> <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p> </li> <li> <p> <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p> </li> <li> <p> <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</p> </li> <li> <p> <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p> </li> <li> <p> <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p> </li> <li> <p> <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p> </li> <li> <p> <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type was created with the same workflowId.</p> </li> <li> <p> <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p> </li> <li> <p> <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p> </li> <li> <p> <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p> </li> <li> <p> <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p> </li> <li> <p> <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p> </li> </ul>"
    },
    "HistoryEventList": {
      "type": "list",
      "member": {
        "shape": "HistoryEvent"
      }
    },
    "Identity": {
      "type": "string",
      "max": 256
    },
    "LambdaFunctionCompletedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this Lambda task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "result": {
          "shape": "Data",
          "documentation": "<p>The results of the Lambda task.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>"
    },
    "LambdaFunctionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason provided for the failure.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the failure.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
    },
    "LambdaFunctionScheduledEventAttributes": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "id": {
          "shape": "FunctionId",
          "documentation": "<p>The unique ID of the Lambda task.</p>"
        },
        "name": {
          "shape": "FunctionName",
          "documentation": "<p>The name of the Lambda function.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the Lambda task.</p>"
        },
        "input": {
          "shape": "FunctionInput",
          "documentation": "<p>The input provided to the Lambda task.</p>"
        },
        "startToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum amount of time a worker can take to process the Lambda task.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision that resulted in scheduling this activity task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>"
    },
    "LambdaFunctionStartedEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId"
      ],
      "members": {
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>"
    },
    "LambdaFunctionTimedOutEventAttributes": {
      "type": "structure",
      "required": [
        "scheduledEventId",
        "startedEventId"
      ],
      "members": {
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskStarted</code> event that was recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "timeoutType": {
          "shape": "LambdaFunctionTimeoutType",
          "documentation": "<p>The type of the timeout that caused this event.</p>"
        }
      },
      "documentation": "<p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>"
    },
    "LambdaFunctionTimeoutType": {
      "type": "string",
      "enum": [
        "START_TO_CLOSE"
      ]
    },
    "LimitedData": {
      "type": "string",
      "max": 2048
    },
    "ListActivityTypesInput": {
      "type": "structure",
      "required": [
        "domain",
        "registrationStatus"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the activity types have been registered.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>If specified, only lists the activity types that have this name.</p>"
        },
        "registrationStatus": {
          "shape": "RegistrationStatus",
          "documentation": "<p>Specifies the registration status of the activity types to list.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the activity types.</p>"
        }
      }
    },
    "ListClosedWorkflowExecutionsInput": {
      "type": "structure",
      "required": [
        "domain"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the workflow executions to list.</p>"
        },
        "startTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>If specified, the workflow executions are included in the returned results based on whether their start times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their start times.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>"
        },
        "closeTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>If specified, the workflow executions are included in the returned results based on whether their close times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their close times.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>"
        },
        "executionFilter": {
          "shape": "WorkflowExecutionFilter",
          "documentation": "<p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "closeStatusFilter": {
          "shape": "CloseStatusFilter",
          "documentation": "<p>If specified, only workflow executions that match this <i>close status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED workflow executions are listed.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "typeFilter": {
          "shape": "WorkflowTypeFilter",
          "documentation": "<p>If specified, only executions of the type specified in the filter are returned.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "tagFilter": {
          "shape": "TagFilter",
          "documentation": "<p>If specified, only executions that have the matching tag are listed.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start or the close time of the executions.</p>"
        }
      }
    },
    "ListDomainsInput": {
      "type": "structure",
      "required": [
        "registrationStatus"
      ],
      "members": {
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "registrationStatus": {
          "shape": "RegistrationStatus",
          "documentation": "<p>Specifies the registration status of the domains to list.</p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the domains.</p>"
        }
      }
    },
    "ListOpenWorkflowExecutionsInput": {
      "type": "structure",
      "required": [
        "domain",
        "startTimeFilter"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the workflow executions to list.</p>"
        },
        "startTimeFilter": {
          "shape": "ExecutionTimeFilter",
          "documentation": "<p>Workflow executions are included in the returned results based on whether their start times are within the range specified by this filter.</p>"
        },
        "typeFilter": {
          "shape": "WorkflowTypeFilter",
          "documentation": "<p>If specified, only executions of the type specified in the filter are returned.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "tagFilter": {
          "shape": "TagFilter",
          "documentation": "<p>If specified, only executions that have the matching tag are listed.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start time of the executions.</p>"
        },
        "executionFilter": {
          "shape": "WorkflowExecutionFilter",
          "documentation": "<p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>"
        }
      }
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "ResourceTagList",
          "documentation": "<p>An array of tags associated with the domain.</p>"
        }
      }
    },
    "ListWorkflowTypesInput": {
      "type": "structure",
      "required": [
        "domain",
        "registrationStatus"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the workflow types have been registered.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>If specified, lists the workflow type with this name.</p>"
        },
        "registrationStatus": {
          "shape": "RegistrationStatus",
          "documentation": "<p>Specifies the registration status of the workflow types to list.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in ascending alphabetical order of the <code>name</code> of the workflow types.</p>"
        }
      }
    },
    "MarkerName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "MarkerRecordedEventAttributes": {
      "type": "structure",
      "required": [
        "markerName",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "markerName": {
          "shape": "MarkerName",
          "documentation": "<p>The name of the marker.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the marker.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarker</code> decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>MarkerRecorded</code> event.</p>"
    },
    "Name": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "OpenDecisionTasksCount": {
      "type": "integer",
      "max": 1,
      "min": 0
    },
    "PageSize": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "PageToken": {
      "type": "string",
      "max": 2048
    },
    "PendingTaskCount": {
      "type": "structure",
      "required": [
        "count"
      ],
      "members": {
        "count": {
          "shape": "Count",
          "documentation": "<p>The number of tasks in the task list.</p>"
        },
        "truncated": {
          "shape": "Truncated",
          "documentation": "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
        }
      },
      "documentation": "<p>Contains the count of tasks in a task list.</p>"
    },
    "PollForActivityTaskInput": {
      "type": "structure",
      "required": [
        "domain",
        "taskList"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain that contains the task lists being polled.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>Specifies the task list to poll for activity tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "identity": {
          "shape": "Identity",
          "documentation": "<p>Identity of the worker making the request, recorded in the <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>"
        }
      }
    },
    "PollForDecisionTaskInput": {
      "type": "structure",
      "required": [
        "domain",
        "taskList"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the task lists to poll.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>Specifies the task list to poll for decision tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "identity": {
          "shape": "Identity",
          "documentation": "<p>Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>NextPageToken</code> is returned there are more results available. The value of <code>NextPageToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 60 seconds. Using an expired pagination token will return a <code>400</code> error: \"<code>Specified token has exceeded its maximum lifetime</code>\". </p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call. </p> <note> <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve the next page of history records. Calling <a>PollForDecisionTask</a> with a <code>nextPageToken</code> doesn't return a new decision task.</p> </note>"
        },
        "maximumPageSize": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. Use <code>nextPageToken</code> to obtain further pages of results. </p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimestamp</code> of the events.</p>"
        }
      }
    },
    "RecordActivityTaskHeartbeatInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results. </p> </important>"
        },
        "details": {
          "shape": "LimitedData",
          "documentation": "<p>If specified, contains details about the progress of the task.</p>"
        }
      }
    },
    "RecordMarkerDecisionAttributes": {
      "type": "structure",
      "required": [
        "markerName"
      ],
      "members": {
        "markerName": {
          "shape": "MarkerName",
          "documentation": "<p> The name of the marker.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p> The details of the marker.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RecordMarker</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RecordMarkerFailedCause": {
      "type": "string",
      "enum": [
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "RecordMarkerFailedEventAttributes": {
      "type": "structure",
      "required": [
        "markerName",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "markerName": {
          "shape": "MarkerName",
          "documentation": "<p>The marker's name.</p>"
        },
        "cause": {
          "shape": "RecordMarkerFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarkerFailed</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>"
    },
    "RegisterActivityTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "name",
        "version"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which this activity is to be registered.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the activity type within the domain.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the activity type.</p> <note> <p>The activity type consists of the name and version, the combination of which must be unique within the domain.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A textual description of the activity type.</p>"
        },
        "defaultTaskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum duration that a worker can take to process tasks of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskHeartbeatTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskList": {
          "shape": "TaskList",
          "documentation": "<p>If set, specifies the default task list to use for scheduling tasks of this activity type. This default task list is used if a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p>"
        },
        "defaultTaskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The default task priority to assign to the activity type. If not assigned, then <code>0</code> is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>in the <i>Amazon SWF Developer Guide</i>.</i>.</p>"
        },
        "defaultTaskScheduleToStartTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum duration that a task of this activity type can wait before being assigned to a worker. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskScheduleToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum duration for a task of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        }
      }
    },
    "RegisterDomainInput": {
      "type": "structure",
      "required": [
        "name",
        "workflowExecutionRetentionPeriodInDays"
      ],
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p>Name of the domain to register. The name must be unique in the region that the domain is registered in.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A text description of the domain.</p>"
        },
        "workflowExecutionRetentionPeriodInDays": {
          "shape": "DurationInDays",
          "documentation": "<p>The duration (in days) that records and histories of workflow executions on the domain should be kept by the service. After the retention period, the workflow execution isn't available in the results of visibility calls.</p> <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow execution history isn't retained. As soon as the workflow execution completes, the execution record and its history are deleted.</p> <p>The maximum workflow execution retention period is 90 days. For more information about Amazon SWF service limits, see: <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html\">Amazon SWF Service Limits</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "tags": {
          "shape": "ResourceTagList",
          "documentation": "<p>Tags to be added when registering a domain.</p> <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      }
    },
    "RegisterWorkflowTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "name",
        "version"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which to register the workflow type.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the workflow type.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the workflow type.</p> <note> <p>The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the <a>ListWorkflowTypes</a> action.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>Textual description of the workflow type.</p>"
        },
        "defaultTaskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum duration of decision tasks for this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultExecutionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the default maximum duration for executions of this workflow type. You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of \"NONE\" for <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time that a workflow execution can run. Exceeding this limit always causes the workflow execution to time out.</p>"
        },
        "defaultTaskList": {
          "shape": "TaskList",
          "documentation": "<p>If set, specifies the default task list to use for scheduling decision tasks for executions of this workflow type. This default is used only if a task list isn't provided when starting the execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p>"
        },
        "defaultTaskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The default task priority to assign to the workflow type. If not assigned, then <code>0</code> is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "defaultChildPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>If set, specifies the default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "defaultLambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The default IAM role attached to this workflow type.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't specify an IAM role when you start this workflow type, the default Lambda role is attached to the execution. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        }
      }
    },
    "RegistrationStatus": {
      "type": "string",
      "enum": [
        "REGISTERED",
        "DEPRECATED"
      ]
    },
    "RequestCancelActivityTaskDecisionAttributes": {
      "type": "structure",
      "required": [
        "activityId"
      ],
      "members": {
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The <code>activityId</code> of the activity task to be canceled.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RequestCancelActivityTaskFailedCause": {
      "type": "string",
      "enum": [
        "ACTIVITY_ID_UNKNOWN",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "RequestCancelActivityTaskFailedEventAttributes": {
      "type": "structure",
      "required": [
        "activityId",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The activityId provided in the <code>RequestCancelActivityTask</code> decision that failed.</p>"
        },
        "cause": {
          "shape": "RequestCancelActivityTaskFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>"
    },
    "RequestCancelExternalWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "required": [
        "workflowId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p> The <code>workflowId</code> of the external workflow execution to cancel.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the external workflow execution to cancel.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "RequestCancelExternalWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION",
        "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "RequestCancelExternalWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "cause",
        "initiatedEventId",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the external workflow to which the cancel request was to be delivered.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the external workflow execution.</p>"
        },
        "cause": {
          "shape": "RequestCancelExternalWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>"
    },
    "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the external workflow execution to be canceled.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>"
    },
    "RequestCancelWorkflowExecutionInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowId"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow execution to cancel.</p>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The workflowId of the workflow execution to cancel.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The runId of the workflow execution to cancel.</p>"
        }
      }
    },
    "ResourceTag": {
      "type": "structure",
      "required": [
        "key"
      ],
      "members": {
        "key": {
          "shape": "ResourceTagKey",
          "documentation": "<p>The key of a tag.</p>"
        },
        "value": {
          "shape": "ResourceTagValue",
          "documentation": "<p>The value of a tag.</p>"
        }
      },
      "documentation": "<p>Tags are key-value pairs that can be associated with Amazon SWF state machines and activities.</p> <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>"
    },
    "ResourceTagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "ResourceTagKeyList": {
      "type": "list",
      "member": {
        "shape": "ResourceTagKey"
      }
    },
    "ResourceTagList": {
      "type": "list",
      "member": {
        "shape": "ResourceTag"
      }
    },
    "ResourceTagValue": {
      "type": "string",
      "max": 256
    },
    "RespondActivityTaskCanceledInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p> Information about the cancellation.</p>"
        }
      }
    },
    "RespondActivityTaskCompletedInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>"
        },
        "result": {
          "shape": "Data",
          "documentation": "<p>The result of the activity task. It is a free form string that is implementation specific.</p>"
        }
      }
    },
    "RespondActivityTaskFailedInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>"
        },
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>Description of the error that may assist in diagnostics.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p> Detailed information about the failure.</p>"
        }
      }
    },
    "RespondDecisionTaskCompletedInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>"
        },
        "decisions": {
          "shape": "DecisionList",
          "documentation": "<p>The list of decisions (possibly empty) made by the decider while processing this decision task. See the docs for the <a>Decision</a> structure for details.</p>"
        },
        "executionContext": {
          "shape": "Data",
          "documentation": "<p>User defined context to add to workflow execution.</p>"
        }
      },
      "documentation": "<p>Input data for a TaskCompleted response to a decision task.</p>"
    },
    "ReverseOrder": {
      "type": "boolean"
    },
    "Run": {
      "type": "structure",
      "members": {
        "runId": {
          "shape": "WorkflowRunId",
          "documentation": "<p>The <code>runId</code> of a workflow execution. This ID is generated by the service and can be used to uniquely identify the workflow execution within a domain.</p>"
        }
      },
      "documentation": "<p>Specifies the <code>runId</code> of a workflow execution.</p>"
    },
    "ScheduleActivityTaskDecisionAttributes": {
      "type": "structure",
      "required": [
        "activityType",
        "activityId"
      ],
      "members": {
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p> The type of the activity task to schedule.</p>"
        },
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p> The <code>activityId</code> of the activity task.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the activity task.</p>"
        },
        "scheduleToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration for this activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>If set, specifies the name of the task list in which to schedule the activity task. If not specified, the <code>defaultTaskList</code> registered with the activity type is used.</p> <note> <p>A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> If set, specifies the priority with which the activity task is to be assigned to a worker. This overrides the defaultTaskPriority specified when registering the activity type using <a>RegisterActivityType</a>. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "scheduleToStartTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> If set, specifies the maximum duration the activity task can wait to be assigned to a worker. This overrides the default schedule-to-start timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "startToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the maximum duration a worker may take to process this activity task. This overrides the default start-to-close timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "heartbeatTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>If set, specifies the maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or returns a result, it is ignored. This overrides the default heartbeat timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "ScheduleActivityTaskFailedCause": {
      "type": "string",
      "enum": [
        "ACTIVITY_TYPE_DEPRECATED",
        "ACTIVITY_TYPE_DOES_NOT_EXIST",
        "ACTIVITY_ID_ALREADY_IN_USE",
        "OPEN_ACTIVITIES_LIMIT_EXCEEDED",
        "ACTIVITY_CREATION_RATE_EXCEEDED",
        "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_TASK_LIST_UNDEFINED",
        "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED",
        "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "ScheduleActivityTaskFailedEventAttributes": {
      "type": "structure",
      "required": [
        "activityType",
        "activityId",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The activity type provided in the <code>ScheduleActivityTask</code> decision that failed.</p>"
        },
        "activityId": {
          "shape": "ActivityId",
          "documentation": "<p>The activityId provided in the <code>ScheduleActivityTask</code> decision that failed.</p>"
        },
        "cause": {
          "shape": "ScheduleActivityTaskFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>"
    },
    "ScheduleLambdaFunctionDecisionAttributes": {
      "type": "structure",
      "required": [
        "id",
        "name"
      ],
      "members": {
        "id": {
          "shape": "FunctionId",
          "documentation": "<p>A string that identifies the Lambda function execution in the event history.</p>"
        },
        "name": {
          "shape": "FunctionName",
          "documentation": "<p>The name, or ARN, of the Lambda function to schedule.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the Lambda task.</p>"
        },
        "input": {
          "shape": "FunctionInput",
          "documentation": "<p>The optional input data to be supplied to the Lambda function.</p>"
        },
        "startToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The timeout value, in seconds, after which the Lambda function is considered to be failed once it has started. This can be any integer from 1-300 (1s-5m). If no value is supplied, than a default value of 300s is assumed.</p>"
        }
      },
      "documentation": "<p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>"
    },
    "ScheduleLambdaFunctionFailedCause": {
      "type": "string",
      "enum": [
        "ID_ALREADY_IN_USE",
        "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED",
        "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED",
        "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION"
      ]
    },
    "ScheduleLambdaFunctionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "id": {
          "shape": "FunctionId",
          "documentation": "<p>The ID provided in the <code>ScheduleLambdaFunction</code> decision that failed. </p>"
        },
        "name": {
          "shape": "FunctionName",
          "documentation": "<p>The name of the Lambda function.</p>"
        },
        "cause": {
          "shape": "ScheduleLambdaFunctionFailedCause",
          "documentation": "<p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
    },
    "SignalExternalWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "signalName"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p> The <code>workflowId</code> of the workflow execution to be signaled.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the workflow execution to be signaled.</p>"
        },
        "signalName": {
          "shape": "SignalName",
          "documentation": "<p> The name of the signal.The target workflow execution uses the signal name and input to process the signal.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p> The input data to be provided with the signal. The target workflow execution uses the signal name and input data to process the signal.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that can be used by the decider in subsequent decision tasks.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "SignalExternalWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION",
        "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "SignalExternalWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "cause",
        "initiatedEventId",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the external workflow execution that the signal was being delivered to.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the external workflow execution that the signal was being delivered to.</p>"
        },
        "cause": {
          "shape": "SignalExternalWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>"
    },
    "SignalExternalWorkflowExecutionInitiatedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "signalName",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the external workflow execution.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The <code>runId</code> of the external workflow execution to send the signal to.</p>"
        },
        "signalName": {
          "shape": "SignalName",
          "documentation": "<p>The name of the signal.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the signal.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent decision tasks.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>"
    },
    "SignalName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "SignalWorkflowExecutionInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowId",
        "signalName"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain containing the workflow execution to signal.</p>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The workflowId of the workflow execution to signal.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The runId of the workflow execution to signal.</p>"
        },
        "signalName": {
          "shape": "SignalName",
          "documentation": "<p>The name of the signal. This name must be meaningful to the target workflow.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target workflow execution's history.</p>"
        }
      }
    },
    "StartChildWorkflowExecutionDecisionAttributes": {
      "type": "structure",
      "required": [
        "workflowType",
        "workflowId"
      ],
      "members": {
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p> The type of the workflow execution to be started.</p>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p> The <code>workflowId</code> of the workflow execution.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The input to be provided to the workflow execution.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list to be used for decision tasks of the child workflow execution.</p> <note> <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> A task priority that, if set, specifies the priority for a decision task of this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p> If set, specifies the policy to use for the child workflow executions if the workflow execution being started is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role attached to the child workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.N</code> – The key is \"swf:tagList.N\" where N is the tag number from 0 to 4, inclusive.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "StartChildWorkflowExecutionFailedCause": {
      "type": "string",
      "enum": [
        "WORKFLOW_TYPE_DOES_NOT_EXIST",
        "WORKFLOW_TYPE_DEPRECATED",
        "OPEN_CHILDREN_LIMIT_EXCEEDED",
        "OPEN_WORKFLOWS_LIMIT_EXCEEDED",
        "CHILD_CREATION_RATE_EXCEEDED",
        "WORKFLOW_ALREADY_RUNNING",
        "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_TASK_LIST_UNDEFINED",
        "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED",
        "DEFAULT_CHILD_POLICY_UNDEFINED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "StartChildWorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowType",
        "cause",
        "workflowId",
        "initiatedEventId",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type provided in the <code>StartChildWorkflowExecution</code> <a>Decision</a> that failed.</p>"
        },
        "cause": {
          "shape": "StartChildWorkflowExecutionFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>When <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision fails because it lacks sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\"> Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the child workflow execution.</p>"
        },
        "initiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>When the <code>cause</code> is <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is the ID of the <code>StartChildWorkflowExecutionInitiated</code> event that corresponds to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start the workflow execution. You can use this information to diagnose problems by tracing back the chain of events leading up to this event.</p> <p>When the <code>cause</code> isn't <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is set to <code>0</code> because the <code>StartChildWorkflowExecutionInitiated</code> event doesn't exist.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>"
    },
    "StartChildWorkflowExecutionInitiatedEventAttributes": {
      "type": "structure",
      "required": [
        "workflowId",
        "workflowType",
        "taskList",
        "decisionTaskCompletedEventId",
        "childPolicy"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The <code>workflowId</code> of the child workflow execution.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the child workflow execution.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent decision tasks. This data isn't sent to the activity.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The inputs provided to the child workflow execution.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration for the child workflow execution. If the workflow execution isn't closed within this duration, it is timed out and force-terminated.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list used for the decision tasks of the child workflow execution.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> The priority assigned for the decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the <a>TerminateWorkflowExecution</a> action or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration allowed for the decision tasks for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to associated with the child workflow execution.</p>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role to attach to the child workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>"
    },
    "StartLambdaFunctionFailedCause": {
      "type": "string",
      "enum": [
        "ASSUME_ROLE_FAILED"
      ]
    },
    "StartLambdaFunctionFailedEventAttributes": {
      "type": "structure",
      "members": {
        "scheduledEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>"
        },
        "cause": {
          "shape": "StartLambdaFunctionFailedCause",
          "documentation": "<p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because the IAM role attached to the execution lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">Lambda Tasks</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "message": {
          "shape": "CauseMessage",
          "documentation": "<p>A description that can help diagnose the cause of the fault.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>"
    },
    "StartTimerDecisionAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "startToFireTimeout"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p> The unique ID of the timer.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
        },
        "startToFireTimeout": {
          "shape": "DurationInSeconds",
          "documentation": "<p> The duration to wait before firing the timer.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
    },
    "StartTimerFailedCause": {
      "type": "string",
      "enum": [
        "TIMER_ID_ALREADY_IN_USE",
        "OPEN_TIMERS_LIMIT_EXCEEDED",
        "TIMER_CREATION_RATE_EXCEEDED",
        "OPERATION_NOT_PERMITTED"
      ]
    },
    "StartTimerFailedEventAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "cause",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p>The timerId provided in the <code>StartTimer</code> decision that failed.</p>"
        },
        "cause": {
          "shape": "StartTimerFailedCause",
          "documentation": "<p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html\">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>StartTimerFailed</code> event.</p>"
    },
    "StartWorkflowExecutionInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowId",
        "workflowType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain in which the workflow execution is created.</p>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The user defined identifier associated with the workflow execution. You can use this to associate a custom identifier with the workflow execution. You may specify the same identifier if a workflow execution is logically a <i>restart</i> of a previous execution. You cannot have two open workflow executions with the same <code>workflowId</code> at the same time within the same domain.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the workflow to start.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The task list to use for the decision tasks generated for this workflow execution. This overrides the <code>defaultTaskList</code> specified when registering the workflow type.</p> <note> <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\\u0000-\\u001f</code> | <code>\\u007f-\\u009f</code>). Also, it must not <i>be</i> the literal string <code>arn</code>.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The task priority to use for this workflow execution. This overrides any default priority that was assigned when the workflow type was registered. If not set, then the default task priority for the workflow type is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The input for the workflow execution. This is a free form string which should be meaningful to the workflow you are starting. This <code>input</code> is made available to the new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of \"NONE\" for this timeout; there is a one-year max limit on the time that a workflow execution can run.</p> <note> <p>An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.</p> </note>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to associate with the workflow execution. You can specify a maximum of 5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>If set, specifies the policy to use for the child workflow executions of this workflow execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role to attach to this workflow execution.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        }
      }
    },
    "Tag": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "TagFilter": {
      "type": "structure",
      "required": [
        "tag"
      ],
      "members": {
        "tag": {
          "shape": "Tag",
          "documentation": "<p> Specifies the tag that must be associated with the execution for it to meet the filter criteria.</p> <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      },
      "documentation": "<p>Used to filter the workflow executions in visibility APIs based on a tag.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 5
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>"
        },
        "tags": {
          "shape": "ResourceTagList",
          "documentation": "<p>The list of tags to add to a domain. </p> <p>Tags may only contain unicode letters, digits, whitespace, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      }
    },
    "TaskList": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the task list.</p>"
        }
      },
      "documentation": "<p>Represents a task list.</p>"
    },
    "TaskPriority": {
      "type": "string"
    },
    "TaskToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "TerminateReason": {
      "type": "string",
      "max": 256
    },
    "TerminateWorkflowExecutionInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowId"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The domain of the workflow execution to terminate.</p>"
        },
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The workflowId of the workflow execution to terminate.</p>"
        },
        "runId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>The runId of the workflow execution to terminate.</p>"
        },
        "reason": {
          "shape": "TerminateReason",
          "documentation": "<p> A descriptive reason for terminating the workflow execution.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p> Details for terminating the workflow execution.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>If set, specifies the policy to use for the child workflow executions of the workflow execution being terminated. This policy overrides the child policy specified for the workflow execution at registration time or when starting the execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>"
        }
      }
    },
    "TimerCanceledEventAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "startedEventId",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p>The unique ID of the timer that was canceled.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p> Provides the details of the <code>TimerCanceled</code> event. </p>"
    },
    "TimerFiredEventAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "startedEventId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p>The unique ID of the timer that fired.</p>"
        },
        "startedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>TimerFired</code> event.</p>"
    },
    "TimerId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "TimerStartedEventAttributes": {
      "type": "structure",
      "required": [
        "timerId",
        "startToFireTimeout",
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "timerId": {
          "shape": "TimerId",
          "documentation": "<p>The unique ID of the timer that was started.</p>"
        },
        "control": {
          "shape": "Data",
          "documentation": "<p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>"
        },
        "startToFireTimeout": {
          "shape": "DurationInSeconds",
          "documentation": "<p>The duration of time after which the timer fires.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>TimerStarted</code> event.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Truncated": {
      "type": "boolean"
    },
    "UndeprecateActivityTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "activityType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain of the deprecated activity type.</p>"
        },
        "activityType": {
          "shape": "ActivityType",
          "documentation": "<p>The activity type to undeprecate.</p>"
        }
      }
    },
    "UndeprecateDomainInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain of the deprecated workflow type.</p>"
        }
      }
    },
    "UndeprecateWorkflowTypeInput": {
      "type": "structure",
      "required": [
        "domain",
        "workflowType"
      ],
      "members": {
        "domain": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain of the deprecated workflow type.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The name of the domain of the deprecated workflow type.</p>"
        }
      }
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Amazon SWF domain.</p>"
        },
        "tagKeys": {
          "shape": "ResourceTagKeyList",
          "documentation": "<p>The list of tags to remove from the Amazon SWF domain.</p>"
        }
      }
    },
    "Version": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "VersionOptional": {
      "type": "string",
      "max": 64
    },
    "WorkflowExecution": {
      "type": "structure",
      "required": [
        "workflowId",
        "runId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The user defined identifier associated with the workflow execution.</p>"
        },
        "runId": {
          "shape": "WorkflowRunId",
          "documentation": "<p>A system-generated unique identifier for the workflow execution.</p>"
        }
      },
      "documentation": "<p>Represents a workflow execution.</p>"
    },
    "WorkflowExecutionCancelRequestedCause": {
      "type": "string",
      "enum": [
        "CHILD_POLICY_APPLIED"
      ]
    },
    "WorkflowExecutionCancelRequestedEventAttributes": {
      "type": "structure",
      "members": {
        "externalWorkflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The external workflow execution for which the cancellation was requested.</p>"
        },
        "externalInitiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "cause": {
          "shape": "WorkflowExecutionCancelRequestedCause",
          "documentation": "<p>If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>"
    },
    "WorkflowExecutionCanceledEventAttributes": {
      "type": "structure",
      "required": [
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the cancellation.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>"
    },
    "WorkflowExecutionCompletedEventAttributes": {
      "type": "structure",
      "required": [
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "result": {
          "shape": "Data",
          "documentation": "<p>The result produced by the workflow execution upon successful completion.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>"
    },
    "WorkflowExecutionConfiguration": {
      "type": "structure",
      "required": [
        "taskStartToCloseTimeout",
        "executionStartToCloseTimeout",
        "taskList",
        "childPolicy"
      ],
      "members": {
        "taskStartToCloseTimeout": {
          "shape": "DurationInSeconds",
          "documentation": "<p>The maximum duration allowed for decision tasks for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSeconds",
          "documentation": "<p>The total duration for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The task list used for the decision tasks generated for this workflow execution.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role attached to the child workflow execution.</p>"
        }
      },
      "documentation": "<p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>"
    },
    "WorkflowExecutionContinuedAsNewEventAttributes": {
      "type": "structure",
      "required": [
        "decisionTaskCompletedEventId",
        "newExecutionRunId",
        "taskList",
        "childPolicy",
        "workflowType"
      ],
      "members": {
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the new workflow execution.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "newExecutionRunId": {
          "shape": "WorkflowRunId",
          "documentation": "<p>The <code>runId</code> of the new workflow execution.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The total duration allowed for the new workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The task list to use for the decisions of the new (continued) workflow execution.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The priority of the task to use for the decisions of the new (continued) workflow execution.</p>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration of decision tasks for the new workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags associated with the new workflow execution.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type of this execution.</p>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role to attach to the new (continued) workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>"
    },
    "WorkflowExecutionCount": {
      "type": "structure",
      "required": [
        "count"
      ],
      "members": {
        "count": {
          "shape": "Count",
          "documentation": "<p>The number of workflow executions.</p>"
        },
        "truncated": {
          "shape": "Truncated",
          "documentation": "<p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>"
        }
      },
      "documentation": "<p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or <a>CountClosedWorkflowExecutions</a> </p>"
    },
    "WorkflowExecutionDetail": {
      "type": "structure",
      "required": [
        "executionInfo",
        "executionConfiguration",
        "openCounts"
      ],
      "members": {
        "executionInfo": {
          "shape": "WorkflowExecutionInfo",
          "documentation": "<p>Information about the workflow execution.</p>"
        },
        "executionConfiguration": {
          "shape": "WorkflowExecutionConfiguration",
          "documentation": "<p>The configuration settings for this workflow execution including timeout values, tasklist etc.</p>"
        },
        "openCounts": {
          "shape": "WorkflowExecutionOpenCounts",
          "documentation": "<p>The number of tasks for this workflow execution. This includes open and closed tasks of all types.</p>"
        },
        "latestActivityTaskTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.</p>"
        },
        "latestExecutionContext": {
          "shape": "Data",
          "documentation": "<p>The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using <a>RespondDecisionTaskCompleted</a>.</p>"
        }
      },
      "documentation": "<p>Contains details about a workflow execution.</p>"
    },
    "WorkflowExecutionFailedEventAttributes": {
      "type": "structure",
      "required": [
        "decisionTaskCompletedEventId"
      ],
      "members": {
        "reason": {
          "shape": "FailureReason",
          "documentation": "<p>The descriptive reason provided for the failure.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details of the failure.</p>"
        },
        "decisionTaskCompletedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>"
    },
    "WorkflowExecutionFilter": {
      "type": "structure",
      "required": [
        "workflowId"
      ],
      "members": {
        "workflowId": {
          "shape": "WorkflowId",
          "documentation": "<p>The workflowId to pass of match the criteria of this filter.</p>"
        }
      },
      "documentation": "<p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>"
    },
    "WorkflowExecutionInfo": {
      "type": "structure",
      "required": [
        "execution",
        "workflowType",
        "startTimestamp",
        "executionStatus"
      ],
      "members": {
        "execution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The workflow execution this information is about.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The type of the workflow execution.</p>"
        },
        "startTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the execution was started.</p>"
        },
        "closeTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the workflow execution was closed. Set only if the execution status is CLOSED.</p>"
        },
        "executionStatus": {
          "shape": "ExecutionStatus",
          "documentation": "<p>The current status of the execution.</p>"
        },
        "closeStatus": {
          "shape": "CloseStatus",
          "documentation": "<p>If the execution status is closed then this specifies how the execution was closed:</p> <ul> <li> <p> <code>COMPLETED</code> – the execution was successfully completed.</p> </li> <li> <p> <code>CANCELED</code> – the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.</p> </li> <li> <p> <code>TERMINATED</code> – the execution was force terminated.</p> </li> <li> <p> <code>FAILED</code> – the execution failed to complete.</p> </li> <li> <p> <code>TIMED_OUT</code> – the execution did not complete in the alloted time and was automatically timed out.</p> </li> <li> <p> <code>CONTINUED_AS_NEW</code> – the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.</p> </li> </ul>"
        },
        "parent": {
          "shape": "WorkflowExecution",
          "documentation": "<p>If this workflow execution is a child of another execution then contains the workflow execution that started this execution.</p>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.</p>"
        },
        "cancelRequested": {
          "shape": "Canceled",
          "documentation": "<p>Set to true if a cancellation is requested for this workflow execution.</p>"
        }
      },
      "documentation": "<p>Contains information about a workflow execution.</p>"
    },
    "WorkflowExecutionInfoList": {
      "type": "list",
      "member": {
        "shape": "WorkflowExecutionInfo"
      }
    },
    "WorkflowExecutionInfos": {
      "type": "structure",
      "required": [
        "executionInfos"
      ],
      "members": {
        "executionInfos": {
          "shape": "WorkflowExecutionInfoList",
          "documentation": "<p>The list of workflow information structures.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        }
      },
      "documentation": "<p>Contains a paginated list of information about workflow executions.</p>"
    },
    "WorkflowExecutionOpenCounts": {
      "type": "structure",
      "required": [
        "openActivityTasks",
        "openDecisionTasks",
        "openTimers",
        "openChildWorkflowExecutions"
      ],
      "members": {
        "openActivityTasks": {
          "shape": "Count",
          "documentation": "<p>The count of activity tasks whose status is <code>OPEN</code>.</p>"
        },
        "openDecisionTasks": {
          "shape": "OpenDecisionTasksCount",
          "documentation": "<p>The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.</p>"
        },
        "openTimers": {
          "shape": "Count",
          "documentation": "<p>The count of timers started by this workflow execution that have not fired yet.</p>"
        },
        "openChildWorkflowExecutions": {
          "shape": "Count",
          "documentation": "<p>The count of child workflow executions whose status is <code>OPEN</code>.</p>"
        },
        "openLambdaFunctions": {
          "shape": "Count",
          "documentation": "<p>The count of Lambda tasks whose status is <code>OPEN</code>.</p>"
        }
      },
      "documentation": "<p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>"
    },
    "WorkflowExecutionSignaledEventAttributes": {
      "type": "structure",
      "required": [
        "signalName"
      ],
      "members": {
        "signalName": {
          "shape": "SignalName",
          "documentation": "<p>The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.</p>"
        },
        "input": {
          "shape": "Data",
          "documentation": "<p>The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.</p>"
        },
        "externalWorkflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.</p>"
        },
        "externalInitiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflow</code> decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>"
    },
    "WorkflowExecutionStartedEventAttributes": {
      "type": "structure",
      "required": [
        "childPolicy",
        "taskList",
        "workflowType"
      ],
      "members": {
        "input": {
          "shape": "Data",
          "documentation": "<p>The input provided to the workflow execution.</p>"
        },
        "executionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "taskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p>The maximum duration of decision tasks for this workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "taskList": {
          "shape": "TaskList",
          "documentation": "<p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>"
        },
        "taskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p>The priority of the decision tasks in the workflow execution.</p>"
        },
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type of this execution.</p>"
        },
        "tagList": {
          "shape": "TagList",
          "documentation": "<p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>"
        },
        "continuedExecutionRunId": {
          "shape": "WorkflowRunIdOptional",
          "documentation": "<p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it contains the <code>runId</code> of the previous workflow execution that was closed and continued as this execution.</p>"
        },
        "parentWorkflowExecution": {
          "shape": "WorkflowExecution",
          "documentation": "<p>The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.</p>"
        },
        "parentInitiatedEventId": {
          "shape": "EventId",
          "documentation": "<p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>"
        },
        "lambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The IAM role attached to the workflow execution.</p>"
        }
      },
      "documentation": "<p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>"
    },
    "WorkflowExecutionTerminatedCause": {
      "type": "string",
      "enum": [
        "CHILD_POLICY_APPLIED",
        "EVENT_LIMIT_EXCEEDED",
        "OPERATOR_INITIATED"
      ]
    },
    "WorkflowExecutionTerminatedEventAttributes": {
      "type": "structure",
      "required": [
        "childPolicy"
      ],
      "members": {
        "reason": {
          "shape": "TerminateReason",
          "documentation": "<p>The reason provided for the termination.</p>"
        },
        "details": {
          "shape": "Data",
          "documentation": "<p>The details provided for the termination.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "cause": {
          "shape": "WorkflowExecutionTerminatedCause",
          "documentation": "<p>If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.</p>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>"
    },
    "WorkflowExecutionTimedOutEventAttributes": {
      "type": "structure",
      "required": [
        "timeoutType",
        "childPolicy"
      ],
      "members": {
        "timeoutType": {
          "shape": "WorkflowExecutionTimeoutType",
          "documentation": "<p>The type of timeout that caused this event.</p>"
        },
        "childPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>"
    },
    "WorkflowExecutionTimeoutType": {
      "type": "string",
      "enum": [
        "START_TO_CLOSE"
      ]
    },
    "WorkflowId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "WorkflowRunId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "WorkflowRunIdOptional": {
      "type": "string",
      "max": 64
    },
    "WorkflowType": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p> The name of the workflow type.</p> <note> <p>The combination of workflow type name and version must be unique with in a domain.</p> </note>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p> The version of the workflow type.</p> <note> <p>The combination of workflow type name and version must be unique with in a domain.</p> </note>"
        }
      },
      "documentation": "<p>Represents a workflow type.</p>"
    },
    "WorkflowTypeConfiguration": {
      "type": "structure",
      "members": {
        "defaultTaskStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum duration, specified when registering the workflow type, that a decision task for executions of this workflow type might take before returning completion or failure. If the task doesn'tdo close in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultExecutionStartToCloseTimeout": {
          "shape": "DurationInSecondsOptional",
          "documentation": "<p> The default maximum duration, specified when registering the workflow type, for executions of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>"
        },
        "defaultTaskList": {
          "shape": "TaskList",
          "documentation": "<p> The default task list, specified when registering the workflow type, for decisions tasks scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p>"
        },
        "defaultTaskPriority": {
          "shape": "TaskPriority",
          "documentation": "<p> The default task priority, specified when registering the workflow type, for all decision tasks of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html\">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>"
        },
        "defaultChildPolicy": {
          "shape": "ChildPolicy",
          "documentation": "<p> The default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>"
        },
        "defaultLambdaRole": {
          "shape": "Arn",
          "documentation": "<p>The default IAM role attached to this workflow type.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't specify an IAM role when starting this workflow type, the default Lambda role is attached to the execution. For more information, see <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html\">https://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>"
        }
      },
      "documentation": "<p>The configuration settings of a workflow type.</p>"
    },
    "WorkflowTypeDetail": {
      "type": "structure",
      "required": [
        "typeInfo",
        "configuration"
      ],
      "members": {
        "typeInfo": {
          "shape": "WorkflowTypeInfo",
          "documentation": "<p>General information about the workflow type.</p> <p>The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.</p> <ul> <li> <p> <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running.</p> </li> <li> <p> <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateWorkflowType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.</p> </li> </ul>"
        },
        "configuration": {
          "shape": "WorkflowTypeConfiguration",
          "documentation": "<p>Configuration settings of the workflow type registered through <a>RegisterWorkflowType</a> </p>"
        }
      },
      "documentation": "<p>Contains details about a workflow type.</p>"
    },
    "WorkflowTypeFilter": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p> Name of the workflow type.</p>"
        },
        "version": {
          "shape": "VersionOptional",
          "documentation": "<p>Version of the workflow type.</p>"
        }
      },
      "documentation": "<p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>"
    },
    "WorkflowTypeInfo": {
      "type": "structure",
      "required": [
        "workflowType",
        "status",
        "creationDate"
      ],
      "members": {
        "workflowType": {
          "shape": "WorkflowType",
          "documentation": "<p>The workflow type this information is about.</p>"
        },
        "status": {
          "shape": "RegistrationStatus",
          "documentation": "<p>The current status of the workflow type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the type registered through <a>RegisterWorkflowType</a>.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date when this type was registered.</p>"
        },
        "deprecationDate": {
          "shape": "Timestamp",
          "documentation": "<p>If the type is in deprecated state, then it is set to the date when the type was deprecated.</p>"
        }
      },
      "documentation": "<p>Contains information about a workflow type.</p>"
    },
    "WorkflowTypeInfoList": {
      "type": "list",
      "member": {
        "shape": "WorkflowTypeInfo"
      }
    },
    "WorkflowTypeInfos": {
      "type": "structure",
      "required": [
        "typeInfos"
      ],
      "members": {
        "typeInfos": {
          "shape": "WorkflowTypeInfoList",
          "documentation": "<p>The list of workflow type information.</p>"
        },
        "nextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>"
        }
      },
      "documentation": "<p>Contains a paginated list of information structures about workflow types.</p>"
    }
  },
  "documentation": "<fullname>Amazon Simple Workflow Service</fullname> <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to coordinate work across distributed components. In Amazon SWF, a <i>task</i> represents a logical unit of work that is performed by a component of your workflow. Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application.</p> <p>Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state.</p> <p>This documentation serves as reference only. For a broader overview of the Amazon SWF programming model, see the <i> <a href=\"https://docs.aws.amazon.com/amazonswf/latest/developerguide/\">Amazon SWF Developer Guide</a> </i>.</p>"
}
]===]))
