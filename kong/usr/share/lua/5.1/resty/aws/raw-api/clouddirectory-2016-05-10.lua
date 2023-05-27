local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2016-05-10",
    "endpointPrefix":"clouddirectory",
    "protocol":"rest-json",
    "serviceFullName":"Amazon CloudDirectory",
    "serviceId":"CloudDirectory",
    "signatureVersion":"v4",
    "signingName":"clouddirectory",
    "uid":"clouddirectory-2016-05-10"
  },
  "operations":{
    "AddFacetToObject":{
      "name":"AddFacetToObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/facets",
        "responseCode":200
      },
      "input":{"shape":"AddFacetToObjectRequest"},
      "output":{"shape":"AddFacetToObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Adds a new <a>Facet</a> to an object. An object can have more than one facet applied on it.</p>"
    },
    "ApplySchema":{
      "name":"ApplySchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/apply",
        "responseCode":200
      },
      "input":{"shape":"ApplySchemaRequest"},
      "output":{"shape":"ApplySchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidAttachmentException"}
      ],
      "documentation":"<p>Copies the input published schema, at the specified version, into the <a>Directory</a> with the same name and version as that of the published schema.</p>"
    },
    "AttachObject":{
      "name":"AttachObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/attach",
        "responseCode":200
      },
      "input":{"shape":"AttachObjectRequest"},
      "output":{"shape":"AttachObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"LinkNameAlreadyInUseException"},
        {"shape":"InvalidAttachmentException"},
        {"shape":"ValidationException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Attaches an existing object to another object. An object can be accessed in two ways:</p> <ol> <li> <p>Using the path</p> </li> <li> <p>Using <code>ObjectIdentifier</code> </p> </li> </ol>"
    },
    "AttachPolicy":{
      "name":"AttachPolicy",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/policy/attach",
        "responseCode":200
      },
      "input":{"shape":"AttachPolicyRequest"},
      "output":{"shape":"AttachPolicyResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"NotPolicyException"}
      ],
      "documentation":"<p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>"
    },
    "AttachToIndex":{
      "name":"AttachToIndex",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/index/attach",
        "responseCode":200
      },
      "input":{"shape":"AttachToIndexRequest"},
      "output":{"shape":"AttachToIndexResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"InvalidAttachmentException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"LinkNameAlreadyInUseException"},
        {"shape":"IndexedAttributeMissingException"},
        {"shape":"NotIndexException"}
      ],
      "documentation":"<p>Attaches the specified object to the specified index.</p>"
    },
    "AttachTypedLink":{
      "name":"AttachTypedLink",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/attach",
        "responseCode":200
      },
      "input":{"shape":"AttachTypedLinkRequest"},
      "output":{"shape":"AttachTypedLinkResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidAttachmentException"},
        {"shape":"ValidationException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "BatchRead":{
      "name":"BatchRead",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/batchread",
        "responseCode":200
      },
      "input":{"shape":"BatchReadRequest"},
      "output":{"shape":"BatchReadResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"}
      ],
      "documentation":"<p>Performs all the read operations in a batch. </p>"
    },
    "BatchWrite":{
      "name":"BatchWrite",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/batchwrite",
        "responseCode":200
      },
      "input":{"shape":"BatchWriteRequest"},
      "output":{"shape":"BatchWriteResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"BatchWriteException"}
      ],
      "documentation":"<p>Performs all the write operations in a batch. Either all the operations succeed or none.</p>"
    },
    "CreateDirectory":{
      "name":"CreateDirectory",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory/create",
        "responseCode":200
      },
      "input":{"shape":"CreateDirectoryRequest"},
      "output":{"shape":"CreateDirectoryResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryAlreadyExistsException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Creates a <a>Directory</a> by copying the published schema into the directory. A directory cannot be created without a schema.</p>"
    },
    "CreateFacet":{
      "name":"CreateFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet/create",
        "responseCode":200
      },
      "input":{"shape":"CreateFacetRequest"},
      "output":{"shape":"CreateFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetAlreadyExistsException"},
        {"shape":"InvalidRuleException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Creates a new <a>Facet</a> in a schema. Facet creation is allowed only in development or applied schemas.</p>"
    },
    "CreateIndex":{
      "name":"CreateIndex",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/index",
        "responseCode":200
      },
      "input":{"shape":"CreateIndexRequest"},
      "output":{"shape":"CreateIndexResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"},
        {"shape":"LinkNameAlreadyInUseException"},
        {"shape":"UnsupportedIndexTypeException"}
      ],
      "documentation":"<p>Creates an index object. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html\">Indexing</a> for more information.</p>"
    },
    "CreateObject":{
      "name":"CreateObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object",
        "responseCode":200
      },
      "input":{"shape":"CreateObjectRequest"},
      "output":{"shape":"CreateObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"},
        {"shape":"LinkNameAlreadyInUseException"},
        {"shape":"UnsupportedIndexTypeException"}
      ],
      "documentation":"<p>Creates an object in a <a>Directory</a>. Additionally attaches the object to a parent, if a parent reference and <code>LinkName</code> is specified. An object is simply a collection of <a>Facet</a> attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. </p>"
    },
    "CreateSchema":{
      "name":"CreateSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/create",
        "responseCode":200
      },
      "input":{"shape":"CreateSchemaRequest"},
      "output":{"shape":"CreateSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"SchemaAlreadyExistsException"},
        {"shape":"AccessDeniedException"}
      ],
      "documentation":"<p>Creates a new schema in a development state. A schema can exist in three phases:</p> <ul> <li> <p> <i>Development:</i> This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.</p> </li> <li> <p> <i>Published:</i> Published schemas are immutable and have a version associated with them.</p> </li> <li> <p> <i>Applied:</i> Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories. </p> </li> </ul>"
    },
    "CreateTypedLinkFacet":{
      "name":"CreateTypedLinkFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet/create",
        "responseCode":200
      },
      "input":{"shape":"CreateTypedLinkFacetRequest"},
      "output":{"shape":"CreateTypedLinkFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetAlreadyExistsException"},
        {"shape":"InvalidRuleException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Creates a <a>TypedLinkFacet</a>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "DeleteDirectory":{
      "name":"DeleteDirectory",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory",
        "responseCode":200
      },
      "input":{"shape":"DeleteDirectoryRequest"},
      "output":{"shape":"DeleteDirectoryResponse"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"DirectoryNotDisabledException"},
        {"shape":"InternalServiceException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryDeletedException"},
        {"shape":"RetryableConflictException"},
        {"shape":"InvalidArnException"}
      ],
      "documentation":"<p>Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.</p>"
    },
    "DeleteFacet":{
      "name":"DeleteFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet/delete",
        "responseCode":200
      },
      "input":{"shape":"DeleteFacetRequest"},
      "output":{"shape":"DeleteFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"},
        {"shape":"FacetInUseException"}
      ],
      "documentation":"<p>Deletes a given <a>Facet</a>. All attributes and <a>Rule</a>s that are associated with the facet will be deleted. Only development schema facets are allowed deletion.</p>"
    },
    "DeleteObject":{
      "name":"DeleteObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/delete",
        "responseCode":200
      },
      "input":{"shape":"DeleteObjectRequest"},
      "output":{"shape":"DeleteObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"ObjectNotDetachedException"}
      ],
      "documentation":"<p>Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.</p>"
    },
    "DeleteSchema":{
      "name":"DeleteSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema",
        "responseCode":200
      },
      "input":{"shape":"DeleteSchemaRequest"},
      "output":{"shape":"DeleteSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"StillContainsLinksException"}
      ],
      "documentation":"<p>Deletes a given schema. Schemas in a development and published state can only be deleted. </p>"
    },
    "DeleteTypedLinkFacet":{
      "name":"DeleteTypedLinkFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
        "responseCode":200
      },
      "input":{"shape":"DeleteTypedLinkFacetRequest"},
      "output":{"shape":"DeleteTypedLinkFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"}
      ],
      "documentation":"<p>Deletes a <a>TypedLinkFacet</a>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "DetachFromIndex":{
      "name":"DetachFromIndex",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/index/detach",
        "responseCode":200
      },
      "input":{"shape":"DetachFromIndexRequest"},
      "output":{"shape":"DetachFromIndexResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"ObjectAlreadyDetachedException"},
        {"shape":"NotIndexException"}
      ],
      "documentation":"<p>Detaches the specified object from the specified index.</p>"
    },
    "DetachObject":{
      "name":"DetachObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/detach",
        "responseCode":200
      },
      "input":{"shape":"DetachObjectRequest"},
      "output":{"shape":"DetachObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"NotNodeException"}
      ],
      "documentation":"<p>Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.</p>"
    },
    "DetachPolicy":{
      "name":"DetachPolicy",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/policy/detach",
        "responseCode":200
      },
      "input":{"shape":"DetachPolicyRequest"},
      "output":{"shape":"DetachPolicyResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"NotPolicyException"}
      ],
      "documentation":"<p>Detaches a policy from an object.</p>"
    },
    "DetachTypedLink":{
      "name":"DetachTypedLink",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/detach",
        "responseCode":200
      },
      "input":{"shape":"DetachTypedLinkRequest"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "DisableDirectory":{
      "name":"DisableDirectory",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory/disable",
        "responseCode":200
      },
      "input":{"shape":"DisableDirectoryRequest"},
      "output":{"shape":"DisableDirectoryResponse"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"DirectoryDeletedException"},
        {"shape":"InternalServiceException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"RetryableConflictException"},
        {"shape":"InvalidArnException"}
      ],
      "documentation":"<p>Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.</p>"
    },
    "EnableDirectory":{
      "name":"EnableDirectory",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory/enable",
        "responseCode":200
      },
      "input":{"shape":"EnableDirectoryRequest"},
      "output":{"shape":"EnableDirectoryResponse"},
      "errors":[
        {"shape":"ResourceNotFoundException"},
        {"shape":"DirectoryDeletedException"},
        {"shape":"InternalServiceException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"RetryableConflictException"},
        {"shape":"InvalidArnException"}
      ],
      "documentation":"<p>Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.</p>"
    },
    "GetAppliedSchemaVersion":{
      "name":"GetAppliedSchemaVersion",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/getappliedschema",
        "responseCode":200
      },
      "input":{"shape":"GetAppliedSchemaVersionRequest"},
      "output":{"shape":"GetAppliedSchemaVersionResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Returns current applied schema version ARN, including the minor version in use.</p>"
    },
    "GetDirectory":{
      "name":"GetDirectory",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory/get",
        "responseCode":200
      },
      "input":{"shape":"GetDirectoryRequest"},
      "output":{"shape":"GetDirectoryResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"}
      ],
      "documentation":"<p>Retrieves metadata about a directory.</p>"
    },
    "GetFacet":{
      "name":"GetFacet",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet",
        "responseCode":200
      },
      "input":{"shape":"GetFacetRequest"},
      "output":{"shape":"GetFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"}
      ],
      "documentation":"<p>Gets details of the <a>Facet</a>, such as facet name, attributes, <a>Rule</a>s, or <code>ObjectType</code>. You can call this on all kinds of schema facets -- published, development, or applied.</p>"
    },
    "GetLinkAttributes":{
      "name":"GetLinkAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/attributes/get",
        "responseCode":200
      },
      "input":{"shape":"GetLinkAttributesRequest"},
      "output":{"shape":"GetLinkAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Retrieves attributes that are associated with a typed link.</p>"
    },
    "GetObjectAttributes":{
      "name":"GetObjectAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/attributes/get",
        "responseCode":200
      },
      "input":{"shape":"GetObjectAttributesRequest"},
      "output":{"shape":"GetObjectAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Retrieves attributes within a facet that are associated with an object.</p>"
    },
    "GetObjectInformation":{
      "name":"GetObjectInformation",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/information",
        "responseCode":200
      },
      "input":{"shape":"GetObjectInformationRequest"},
      "output":{"shape":"GetObjectInformationResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Retrieves metadata about an object.</p>"
    },
    "GetSchemaAsJson":{
      "name":"GetSchemaAsJson",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/json",
        "responseCode":200
      },
      "input":{"shape":"GetSchemaAsJsonRequest"},
      "output":{"shape":"GetSchemaAsJsonResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"ValidationException"}
      ],
      "documentation":"<p>Retrieves a JSON representation of the schema. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat\">JSON Schema Format</a> for more information.</p>"
    },
    "GetTypedLinkFacetInformation":{
      "name":"GetTypedLinkFacetInformation",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet/get",
        "responseCode":200
      },
      "input":{"shape":"GetTypedLinkFacetInformationRequest"},
      "output":{"shape":"GetTypedLinkFacetInformationResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"FacetNotFoundException"}
      ],
      "documentation":"<p>Returns the identity attribute order for a specific <a>TypedLinkFacet</a>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "ListAppliedSchemaArns":{
      "name":"ListAppliedSchemaArns",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/applied",
        "responseCode":200
      },
      "input":{"shape":"ListAppliedSchemaArnsRequest"},
      "output":{"shape":"ListAppliedSchemaArnsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Lists schema major versions applied to a directory. If <code>SchemaArn</code> is provided, lists the minor version.</p>"
    },
    "ListAttachedIndices":{
      "name":"ListAttachedIndices",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/indices",
        "responseCode":200
      },
      "input":{"shape":"ListAttachedIndicesRequest"},
      "output":{"shape":"ListAttachedIndicesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Lists indices attached to the specified object.</p>"
    },
    "ListDevelopmentSchemaArns":{
      "name":"ListDevelopmentSchemaArns",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/development",
        "responseCode":200
      },
      "input":{"shape":"ListDevelopmentSchemaArnsRequest"},
      "output":{"shape":"ListDevelopmentSchemaArnsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Retrieves each Amazon Resource Name (ARN) of schemas in the development state.</p>"
    },
    "ListDirectories":{
      "name":"ListDirectories",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/directory/list",
        "responseCode":200
      },
      "input":{"shape":"ListDirectoriesRequest"},
      "output":{"shape":"ListDirectoriesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Lists directories created within an account.</p>"
    },
    "ListFacetAttributes":{
      "name":"ListFacetAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet/attributes",
        "responseCode":200
      },
      "input":{"shape":"ListFacetAttributesRequest"},
      "output":{"shape":"ListFacetAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Retrieves attributes attached to the facet.</p>"
    },
    "ListFacetNames":{
      "name":"ListFacetNames",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet/list",
        "responseCode":200
      },
      "input":{"shape":"ListFacetNamesRequest"},
      "output":{"shape":"ListFacetNamesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Retrieves the names of facets that exist in a schema.</p>"
    },
    "ListIncomingTypedLinks":{
      "name":"ListIncomingTypedLinks",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/incoming",
        "responseCode":200
      },
      "input":{"shape":"ListIncomingTypedLinksRequest"},
      "output":{"shape":"ListIncomingTypedLinksResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "ListIndex":{
      "name":"ListIndex",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/index/targets",
        "responseCode":200
      },
      "input":{"shape":"ListIndexRequest"},
      "output":{"shape":"ListIndexResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"FacetValidationException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"NotIndexException"}
      ],
      "documentation":"<p>Lists objects attached to the specified index.</p>"
    },
    "ListObjectAttributes":{
      "name":"ListObjectAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/attributes",
        "responseCode":200
      },
      "input":{"shape":"ListObjectAttributesRequest"},
      "output":{"shape":"ListObjectAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Lists all attributes that are associated with an object. </p>"
    },
    "ListObjectChildren":{
      "name":"ListObjectChildren",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/children",
        "responseCode":200
      },
      "input":{"shape":"ListObjectChildrenRequest"},
      "output":{"shape":"ListObjectChildrenResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"NotNodeException"}
      ],
      "documentation":"<p>Returns a paginated list of child objects that are associated with a given object.</p>"
    },
    "ListObjectParentPaths":{
      "name":"ListObjectParentPaths",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/parentpaths",
        "responseCode":200
      },
      "input":{"shape":"ListObjectParentPathsRequest"},
      "output":{"shape":"ListObjectParentPathsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure\">Directory Structure</a>.</p> <p>Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined <code>MaxResults</code>, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.</p>"
    },
    "ListObjectParents":{
      "name":"ListObjectParents",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/parent",
        "responseCode":200
      },
      "input":{"shape":"ListObjectParentsRequest"},
      "output":{"shape":"ListObjectParentsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"CannotListParentOfRootException"}
      ],
      "documentation":"<p>Lists parent objects that are associated with a given object in pagination fashion.</p>"
    },
    "ListObjectPolicies":{
      "name":"ListObjectPolicies",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/policy",
        "responseCode":200
      },
      "input":{"shape":"ListObjectPoliciesRequest"},
      "output":{"shape":"ListObjectPoliciesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Returns policies attached to an object in pagination fashion.</p>"
    },
    "ListOutgoingTypedLinks":{
      "name":"ListOutgoingTypedLinks",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/outgoing",
        "responseCode":200
      },
      "input":{"shape":"ListOutgoingTypedLinksRequest"},
      "output":{"shape":"ListOutgoingTypedLinksResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "ListPolicyAttachments":{
      "name":"ListPolicyAttachments",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/policy/attachment",
        "responseCode":200
      },
      "input":{"shape":"ListPolicyAttachmentsRequest"},
      "output":{"shape":"ListPolicyAttachmentsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"NotPolicyException"}
      ],
      "documentation":"<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"
    },
    "ListPublishedSchemaArns":{
      "name":"ListPublishedSchemaArns",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/published",
        "responseCode":200
      },
      "input":{"shape":"ListPublishedSchemaArnsRequest"},
      "output":{"shape":"ListPublishedSchemaArnsResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Lists the major version families of each published schema. If a major version ARN is provided as <code>SchemaArn</code>, the minor version revisions in that family are listed instead.</p>"
    },
    "ListTagsForResource":{
      "name":"ListTagsForResource",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/tags",
        "responseCode":200
      },
      "input":{"shape":"ListTagsForResourceRequest"},
      "output":{"shape":"ListTagsForResourceResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidTaggingRequestException"}
      ],
      "documentation":"<p>Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.</p>"
    },
    "ListTypedLinkFacetAttributes":{
      "name":"ListTypedLinkFacetAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet/attributes",
        "responseCode":200
      },
      "input":{"shape":"ListTypedLinkFacetAttributesRequest"},
      "output":{"shape":"ListTypedLinkFacetAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Returns a paginated list of all attribute definitions for a particular <a>TypedLinkFacet</a>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "ListTypedLinkFacetNames":{
      "name":"ListTypedLinkFacetNames",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet/list",
        "responseCode":200
      },
      "input":{"shape":"ListTypedLinkFacetNamesRequest"},
      "output":{"shape":"ListTypedLinkFacetNamesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidNextTokenException"}
      ],
      "documentation":"<p>Returns a paginated list of <code>TypedLink</code> facet names for a particular schema. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "LookupPolicy":{
      "name":"LookupPolicy",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/policy/lookup",
        "responseCode":200
      },
      "input":{"shape":"LookupPolicyRequest"},
      "output":{"shape":"LookupPolicyResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"InvalidNextTokenException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code> for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
    },
    "PublishSchema":{
      "name":"PublishSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/publish",
        "responseCode":200
      },
      "input":{"shape":"PublishSchemaRequest"},
      "output":{"shape":"PublishSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"SchemaAlreadyPublishedException"}
      ],
      "documentation":"<p>Publishes a development schema with a major version and a recommended minor version.</p>"
    },
    "PutSchemaFromJson":{
      "name":"PutSchemaFromJson",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/json",
        "responseCode":200
      },
      "input":{"shape":"PutSchemaFromJsonRequest"},
      "output":{"shape":"PutSchemaFromJsonResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"InvalidSchemaDocException"},
        {"shape":"InvalidRuleException"}
      ],
      "documentation":"<p>Allows a schema to be updated using JSON upload. Only available for development schemas. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat\">JSON Schema Format</a> for more information.</p>"
    },
    "RemoveFacetFromObject":{
      "name":"RemoveFacetFromObject",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/facets/delete",
        "responseCode":200
      },
      "input":{"shape":"RemoveFacetFromObjectRequest"},
      "output":{"shape":"RemoveFacetFromObjectResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Removes the specified facet from the specified object.</p>"
    },
    "TagResource":{
      "name":"TagResource",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/tags/add",
        "responseCode":200
      },
      "input":{"shape":"TagResourceRequest"},
      "output":{"shape":"TagResourceResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidTaggingRequestException"}
      ],
      "documentation":"<p>An API operation for adding tags to a resource.</p>"
    },
    "UntagResource":{
      "name":"UntagResource",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/tags/remove",
        "responseCode":200
      },
      "input":{"shape":"UntagResourceRequest"},
      "output":{"shape":"UntagResourceResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidTaggingRequestException"}
      ],
      "documentation":"<p>An API operation for removing tags from a resource.</p>"
    },
    "UpdateFacet":{
      "name":"UpdateFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/facet",
        "responseCode":200
      },
      "input":{"shape":"UpdateFacetRequest"},
      "output":{"shape":"UpdateFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"InvalidFacetUpdateException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"},
        {"shape":"InvalidRuleException"}
      ],
      "documentation":"<p>Does the following:</p> <ol> <li> <p>Adds new <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p> </li> <li> <p>Updates existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p> </li> <li> <p>Deletes existing <code>Attributes</code>, <code>Rules</code>, or <code>ObjectTypes</code>.</p> </li> </ol>"
    },
    "UpdateLinkAttributes":{
      "name":"UpdateLinkAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/attributes/update",
        "responseCode":200
      },
      "input":{"shape":"UpdateLinkAttributesRequest"},
      "output":{"shape":"UpdateLinkAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>.</p>"
    },
    "UpdateObjectAttributes":{
      "name":"UpdateObjectAttributes",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/object/update",
        "responseCode":200
      },
      "input":{"shape":"UpdateObjectAttributesRequest"},
      "output":{"shape":"UpdateObjectAttributesResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"DirectoryNotEnabledException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"LinkNameAlreadyInUseException"},
        {"shape":"FacetValidationException"}
      ],
      "documentation":"<p>Updates a given object's attributes.</p>"
    },
    "UpdateSchema":{
      "name":"UpdateSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/update",
        "responseCode":200
      },
      "input":{"shape":"UpdateSchemaRequest"},
      "output":{"shape":"UpdateSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"}
      ],
      "documentation":"<p>Updates the schema name with a new name. Only development schema names can be updated.</p>"
    },
    "UpdateTypedLinkFacet":{
      "name":"UpdateTypedLinkFacet",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/typedlink/facet",
        "responseCode":200
      },
      "input":{"shape":"UpdateTypedLinkFacetRequest"},
      "output":{"shape":"UpdateTypedLinkFacetResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"LimitExceededException"},
        {"shape":"AccessDeniedException"},
        {"shape":"FacetValidationException"},
        {"shape":"InvalidFacetUpdateException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"FacetNotFoundException"},
        {"shape":"InvalidRuleException"}
      ],
      "documentation":"<p>Updates a <a>TypedLinkFacet</a>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
    },
    "UpgradeAppliedSchema":{
      "name":"UpgradeAppliedSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/upgradeapplied",
        "responseCode":200
      },
      "input":{"shape":"UpgradeAppliedSchemaRequest"},
      "output":{"shape":"UpgradeAppliedSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"IncompatibleSchemaException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidAttachmentException"}
      ],
      "documentation":"<p>Upgrades a single directory in-place using the <code>PublishedSchemaArn</code> with schema updates found in <code>MinorVersion</code>. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.</p>"
    },
    "UpgradePublishedSchema":{
      "name":"UpgradePublishedSchema",
      "http":{
        "method":"PUT",
        "requestUri":"/amazonclouddirectory/2017-01-11/schema/upgradepublished",
        "responseCode":200
      },
      "input":{"shape":"UpgradePublishedSchemaRequest"},
      "output":{"shape":"UpgradePublishedSchemaResponse"},
      "errors":[
        {"shape":"InternalServiceException"},
        {"shape":"InvalidArnException"},
        {"shape":"RetryableConflictException"},
        {"shape":"ValidationException"},
        {"shape":"IncompatibleSchemaException"},
        {"shape":"AccessDeniedException"},
        {"shape":"ResourceNotFoundException"},
        {"shape":"InvalidAttachmentException"},
        {"shape":"LimitExceededException"}
      ],
      "documentation":"<p>Upgrades a published schema under a new minor version revision using the current contents of <code>DevelopmentSchemaArn</code>.</p>"
    }
  },
  "shapes":{
    "AccessDeniedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Access denied. Check your permissions.</p>",
      "error":{"httpStatusCode":403},
      "exception":true
    },
    "AddFacetToObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "SchemaFacet",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>"
        },
        "ObjectAttributeList":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>Attributes on the facet that you are adding to the object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object you are adding the specified facet to.</p>"
        }
      }
    },
    "AddFacetToObjectResponse":{
      "type":"structure",
      "members":{
      }
    },
    "ApplySchemaRequest":{
      "type":"structure",
      "required":[
        "PublishedSchemaArn",
        "DirectoryArn"
      ],
      "members":{
        "PublishedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more information, see <a>arns</a>.</p>"
        },
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> into which the schema is copied. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "ApplySchemaResponse":{
      "type":"structure",
      "members":{
        "AppliedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on this directory. For more information, see <a>arns</a>.</p>"
        },
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "Arn":{"type":"string"},
    "Arns":{
      "type":"list",
      "member":{"shape":"Arn"}
    },
    "AttachObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ParentReference",
        "ChildReference",
        "LinkName"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The parent object reference.</p>"
        },
        "ChildReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The child object reference to be attached to the object.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The link name with which the child object is attached to the parent.</p>"
        }
      }
    },
    "AttachObjectResponse":{
      "type":"structure",
      "members":{
        "AttachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The attached <code>ObjectIdentifier</code>, which is the child <code>ObjectIdentifier</code>.</p>"
        }
      }
    },
    "AttachPolicyRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "PolicyReference",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that is associated with the policy object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object to which the policy will be attached.</p>"
        }
      }
    },
    "AttachPolicyResponse":{
      "type":"structure",
      "members":{
      }
    },
    "AttachToIndexRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "IndexReference",
        "TargetReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory where the object and index exist.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the index that you are attaching the object to.</p>"
        },
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object that you are attaching to the index.</p>"
        }
      }
    },
    "AttachToIndexResponse":{
      "type":"structure",
      "members":{
        "AttachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"
        }
      }
    },
    "AttachTypedLinkRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "SourceObjectReference",
        "TargetObjectReference",
        "TypedLinkFacet",
        "Attributes"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed link.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "SourceObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the source object that the typed link will attach to.</p>"
        },
        "TargetObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the target object that the typed link will attach to.</p>"
        },
        "TypedLinkFacet":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Identifies the typed link facet that is associated with the typed link.</p>"
        },
        "Attributes":{
          "shape":"AttributeNameAndValueList",
          "documentation":"<p>A set of attributes that are associated with the typed link.</p>"
        }
      }
    },
    "AttachTypedLinkResponse":{
      "type":"structure",
      "members":{
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Returns a typed link specifier as output.</p>"
        }
      }
    },
    "AttributeKey":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "FacetName",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the schema that contains the facet and attribute.</p>"
        },
        "FacetName":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet that the attribute exists within.</p>"
        },
        "Name":{
          "shape":"AttributeName",
          "documentation":"<p>The name of the attribute.</p>"
        }
      },
      "documentation":"<p>A unique identifier for an attribute.</p>"
    },
    "AttributeKeyAndValue":{
      "type":"structure",
      "required":[
        "Key",
        "Value"
      ],
      "members":{
        "Key":{
          "shape":"AttributeKey",
          "documentation":"<p>The key of the attribute.</p>"
        },
        "Value":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The value of the attribute.</p>"
        }
      },
      "documentation":"<p>The combination of an attribute key and an attribute value.</p>"
    },
    "AttributeKeyAndValueList":{
      "type":"list",
      "member":{"shape":"AttributeKeyAndValue"}
    },
    "AttributeKeyList":{
      "type":"list",
      "member":{"shape":"AttributeKey"}
    },
    "AttributeName":{
      "type":"string",
      "max":64,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "AttributeNameAndValue":{
      "type":"structure",
      "required":[
        "AttributeName",
        "Value"
      ],
      "members":{
        "AttributeName":{
          "shape":"AttributeName",
          "documentation":"<p>The attribute name of the typed link.</p>"
        },
        "Value":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The value for the typed link.</p>"
        }
      },
      "documentation":"<p>Identifies the attribute name and value for a typed link.</p>"
    },
    "AttributeNameAndValueList":{
      "type":"list",
      "member":{"shape":"AttributeNameAndValue"}
    },
    "AttributeNameList":{
      "type":"list",
      "member":{"shape":"AttributeName"}
    },
    "BatchAddFacetToObject":{
      "type":"structure",
      "required":[
        "SchemaFacet",
        "ObjectAttributeList",
        "ObjectReference"
      ],
      "members":{
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>Represents the facet being added to the object.</p>"
        },
        "ObjectAttributeList":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attributes to set on the object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object being mutated.</p>"
        }
      },
      "documentation":"<p>Represents the output of a batch add facet to object operation.</p>"
    },
    "BatchAddFacetToObjectResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>The result of a batch add facet to object operation.</p>"
    },
    "BatchAttachObject":{
      "type":"structure",
      "required":[
        "ParentReference",
        "ChildReference",
        "LinkName"
      ],
      "members":{
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The parent object reference.</p>"
        },
        "ChildReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The child object reference that is to be attached to the object.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of the link.</p>"
        }
      },
      "documentation":"<p>Represents the output of an <a>AttachObject</a> operation.</p>"
    },
    "BatchAttachObjectResponse":{
      "type":"structure",
      "members":{
        "attachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>"
        }
      },
      "documentation":"<p>Represents the output batch <a>AttachObject</a> response operation.</p>"
    },
    "BatchAttachPolicy":{
      "type":"structure",
      "required":[
        "PolicyReference",
        "ObjectReference"
      ],
      "members":{
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that is associated with the policy object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object to which the policy will be attached.</p>"
        }
      },
      "documentation":"<p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchAttachPolicyResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Represents the output of an <a>AttachPolicy</a> response operation.</p>"
    },
    "BatchAttachToIndex":{
      "type":"structure",
      "required":[
        "IndexReference",
        "TargetReference"
      ],
      "members":{
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the index that you are attaching the object to.</p>"
        },
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object that you are attaching to the index.</p>"
        }
      },
      "documentation":"<p>Attaches the specified object to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>AttachToIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchAttachToIndexResponse":{
      "type":"structure",
      "members":{
        "AttachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>AttachToIndex</a> response operation.</p>"
    },
    "BatchAttachTypedLink":{
      "type":"structure",
      "required":[
        "SourceObjectReference",
        "TargetObjectReference",
        "TypedLinkFacet",
        "Attributes"
      ],
      "members":{
        "SourceObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the source object that the typed link will attach to.</p>"
        },
        "TargetObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the target object that the typed link will attach to.</p>"
        },
        "TypedLinkFacet":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Identifies the typed link facet that is associated with the typed link.</p>"
        },
        "Attributes":{
          "shape":"AttributeNameAndValueList",
          "documentation":"<p>A set of attributes that are associated with the typed link.</p>"
        }
      },
      "documentation":"<p>Attaches a typed link to a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>AttachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchAttachTypedLinkResponse":{
      "type":"structure",
      "members":{
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Returns a typed link specifier as output.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>AttachTypedLink</a> response operation.</p>"
    },
    "BatchCreateIndex":{
      "type":"structure",
      "required":[
        "OrderedIndexedAttributeList",
        "IsUnique"
      ],
      "members":{
        "OrderedIndexedAttributeList":{
          "shape":"AttributeKeyList",
          "documentation":"<p>Specifies the attributes that should be indexed on. Currently only a single attribute is supported.</p>"
        },
        "IsUnique":{
          "shape":"Bool",
          "documentation":"<p>Indicates whether the attribute that is being indexed has unique values or not.</p>"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the parent object that contains the index object.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of the link between the parent object and the index object.</p>"
        },
        "BatchReferenceName":{
          "shape":"BatchReferenceName",
          "documentation":"<p>The batch reference name. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches\">Batches</a> for more information.</p>"
        }
      },
      "documentation":"<p>Creates an index object inside of a <a>BatchRead</a> operation. For more information, see <a>CreateIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchCreateIndexResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>CreateIndex</a> response operation.</p>"
    },
    "BatchCreateObject":{
      "type":"structure",
      "required":[
        "SchemaFacet",
        "ObjectAttributeList"
      ],
      "members":{
        "SchemaFacet":{
          "shape":"SchemaFacetList",
          "documentation":"<p>A list of <code>FacetArns</code> that will be associated with the object. For more information, see <a>arns</a>.</p>"
        },
        "ObjectAttributeList":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>An attribute map, which contains an attribute ARN as the key and attribute value as the map value.</p>"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>If specified, the parent reference to which this object will be attached.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of the link.</p>"
        },
        "BatchReferenceName":{
          "shape":"BatchReferenceName",
          "documentation":"<p>The batch reference name. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches\">Batches</a> for more information.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>CreateObject</a> operation.</p>"
    },
    "BatchCreateObjectResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The ID that is associated with the object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>CreateObject</a> response operation.</p>"
    },
    "BatchDeleteObject":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>DeleteObject</a> operation.</p>"
    },
    "BatchDeleteObjectResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Represents the output of a <a>DeleteObject</a> response operation.</p>"
    },
    "BatchDetachFromIndex":{
      "type":"structure",
      "required":[
        "IndexReference",
        "TargetReference"
      ],
      "members":{
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the index object.</p>"
        },
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object being detached from the index.</p>"
        }
      },
      "documentation":"<p>Detaches the specified object from the specified index inside a <a>BatchRead</a> operation. For more information, see <a>DetachFromIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchDetachFromIndexResponse":{
      "type":"structure",
      "members":{
        "DetachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>DetachFromIndex</a> response operation.</p>"
    },
    "BatchDetachObject":{
      "type":"structure",
      "required":[
        "ParentReference",
        "LinkName"
      ],
      "members":{
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Parent reference from which the object with the specified link name is detached.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of the link.</p>"
        },
        "BatchReferenceName":{
          "shape":"BatchReferenceName",
          "documentation":"<p>The batch reference name. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#batches\">Batches</a> for more information.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>DetachObject</a> operation.</p>"
    },
    "BatchDetachObjectResponse":{
      "type":"structure",
      "members":{
        "detachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the detached object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>DetachObject</a> response operation.</p>"
    },
    "BatchDetachPolicy":{
      "type":"structure",
      "required":[
        "PolicyReference",
        "ObjectReference"
      ],
      "members":{
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the policy object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose policy object will be detached.</p>"
        }
      },
      "documentation":"<p>Detaches the specified policy from the specified directory inside a <a>BatchWrite</a> operation. For more information, see <a>DetachPolicy</a> and <a>BatchWriteRequest$Operations</a>.</p>"
    },
    "BatchDetachPolicyResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Represents the output of a <a>DetachPolicy</a> response operation.</p>"
    },
    "BatchDetachTypedLink":{
      "type":"structure",
      "required":["TypedLinkSpecifier"],
      "members":{
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Used to accept a typed link specifier as input.</p>"
        }
      },
      "documentation":"<p>Detaches a typed link from a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>DetachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchDetachTypedLinkResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Represents the output of a <a>DetachTypedLink</a> response operation.</p>"
    },
    "BatchGetLinkAttributes":{
      "type":"structure",
      "required":[
        "TypedLinkSpecifier",
        "AttributeNames"
      ],
      "members":{
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Allows a typed link specifier to be accepted as input.</p>"
        },
        "AttributeNames":{
          "shape":"AttributeNameList",
          "documentation":"<p>A list of attribute names whose values will be retrieved.</p>"
        }
      },
      "documentation":"<p>Retrieves attributes that are associated with a typed link inside a <a>BatchRead</a> operation. For more information, see <a>GetLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchGetLinkAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attributes that are associated with the typed link.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>GetLinkAttributes</a> response operation.</p>"
    },
    "BatchGetObjectAttributes":{
      "type":"structure",
      "required":[
        "ObjectReference",
        "SchemaFacet",
        "AttributeNames"
      ],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose attributes will be retrieved.</p>"
        },
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>"
        },
        "AttributeNames":{
          "shape":"AttributeNameList",
          "documentation":"<p>List of attribute names whose values will be retrieved.</p>"
        }
      },
      "documentation":"<p>Retrieves attributes within a facet that are associated with an object inside an <a>BatchRead</a> operation. For more information, see <a>GetObjectAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchGetObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attribute values that are associated with an object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>GetObjectAttributes</a> response operation.</p>"
    },
    "BatchGetObjectInformation":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object.</p>"
        }
      },
      "documentation":"<p>Retrieves metadata about an object inside a <a>BatchRead</a> operation. For more information, see <a>GetObjectInformation</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchGetObjectInformationResponse":{
      "type":"structure",
      "members":{
        "SchemaFacets":{
          "shape":"SchemaFacetList",
          "documentation":"<p>The facets attached to the specified object.</p>"
        },
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the specified object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>GetObjectInformation</a> response operation.</p>"
    },
    "BatchListAttachedIndices":{
      "type":"structure",
      "required":["TargetReference"],
      "members":{
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object that has indices attached.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Lists indices attached to an object inside a <a>BatchRead</a> operation. For more information, see <a>ListAttachedIndices</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListAttachedIndicesResponse":{
      "type":"structure",
      "members":{
        "IndexAttachments":{
          "shape":"IndexAttachmentList",
          "documentation":"<p>The indices attached to the specified object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListAttachedIndices</a> response operation.</p>"
    },
    "BatchListIncomingTypedLinks":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose attributes will be listed.</p>"
        },
        "FilterAttributeRanges":{
          "shape":"TypedLinkAttributeRangeList",
          "documentation":"<p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>"
        },
        "FilterTypedLink":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListIncomingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListIncomingTypedLinksResponse":{
      "type":"structure",
      "members":{
        "LinkSpecifiers":{
          "shape":"TypedLinkSpecifierList",
          "documentation":"<p>Returns one or more typed link specifiers as output.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListIncomingTypedLinks</a> response operation.</p>"
    },
    "BatchListIndex":{
      "type":"structure",
      "required":["IndexReference"],
      "members":{
        "RangesOnIndexedValues":{
          "shape":"ObjectAttributeRangeList",
          "documentation":"<p>Specifies the ranges of indexed values that you want to query.</p>"
        },
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference to the index to list.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Lists objects attached to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>ListIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListIndexResponse":{
      "type":"structure",
      "members":{
        "IndexAttachments":{
          "shape":"IndexAttachmentList",
          "documentation":"<p>The objects and indexed values attached to the index.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListIndex</a> response operation.</p>"
    },
    "BatchListObjectAttributes":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference of the object whose attributes need to be listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "FacetFilter":{
          "shape":"SchemaFacet",
          "documentation":"<p>Used to filter the list of object attributes that are associated with a certain facet.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectAttributes</a> operation.</p>"
    },
    "BatchListObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attributes map that is associated with the object. <code>AttributeArn</code> is the key; attribute value is the value.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectAttributes</a> response operation.</p>"
    },
    "BatchListObjectChildren":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference of the object for which child objects are being listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>Maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectChildren</a> operation.</p>"
    },
    "BatchListObjectChildrenResponse":{
      "type":"structure",
      "members":{
        "Children":{
          "shape":"LinkNameToObjectIdentifierMap",
          "documentation":"<p>The children structure, which is a map with the key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectChildren</a> response operation.</p>"
    },
    "BatchListObjectParentPaths":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose attributes will be listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectParentPaths</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListObjectParentPathsResponse":{
      "type":"structure",
      "members":{
        "PathToObjectIdentifiersList":{
          "shape":"PathToObjectIdentifiersList",
          "documentation":"<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the directory.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectParentPaths</a> response operation.</p>"
    },
    "BatchListObjectPolicies":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose attributes will be listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Returns policies attached to an object in pagination fashion inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectPolicies</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListObjectPoliciesResponse":{
      "type":"structure",
      "members":{
        "AttachedPolicyIds":{
          "shape":"ObjectIdentifierList",
          "documentation":"<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListObjectPolicies</a> response operation.</p>"
    },
    "BatchListOutgoingTypedLinks":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose attributes will be listed.</p>"
        },
        "FilterAttributeRanges":{
          "shape":"TypedLinkAttributeRangeList",
          "documentation":"<p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>"
        },
        "FilterTypedLink":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListOutgoingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListOutgoingTypedLinksResponse":{
      "type":"structure",
      "members":{
        "TypedLinkSpecifiers":{
          "shape":"TypedLinkSpecifierList",
          "documentation":"<p>Returns a typed link specifier as output.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListOutgoingTypedLinks</a> response operation.</p>"
    },
    "BatchListPolicyAttachments":{
      "type":"structure",
      "required":["PolicyReference"],
      "members":{
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the policy object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached inside a <a>BatchRead</a> operation. For more information, see <a>ListPolicyAttachments</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchListPolicyAttachmentsResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifiers":{
          "shape":"ObjectIdentifierList",
          "documentation":"<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>ListPolicyAttachments</a> response operation.</p>"
    },
    "BatchLookupPolicy":{
      "type":"structure",
      "required":["ObjectReference"],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose policies will be looked up.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      },
      "documentation":"<p>Lists all policies from the root of the Directory to the object specified inside a <a>BatchRead</a> operation. For more information, see <a>LookupPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchLookupPolicyResponse":{
      "type":"structure",
      "members":{
        "PolicyToPathList":{
          "shape":"PolicyToPathList",
          "documentation":"<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and <code>PolicyType</code>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <a>LookupPolicy</a> response operation.</p>"
    },
    "BatchOperationIndex":{"type":"integer"},
    "BatchReadException":{
      "type":"structure",
      "members":{
        "Type":{
          "shape":"BatchReadExceptionType",
          "documentation":"<p>A type of exception, such as <code>InvalidArnException</code>.</p>"
        },
        "Message":{
          "shape":"ExceptionMessage",
          "documentation":"<p>An exception message that is associated with the failure.</p>"
        }
      },
      "documentation":"<p>The batch read exception structure, which contains the exception type and message.</p>"
    },
    "BatchReadExceptionType":{
      "type":"string",
      "enum":[
        "ValidationException",
        "InvalidArnException",
        "ResourceNotFoundException",
        "InvalidNextTokenException",
        "AccessDeniedException",
        "NotNodeException",
        "FacetValidationException",
        "CannotListParentOfRootException",
        "NotIndexException",
        "NotPolicyException",
        "DirectoryNotEnabledException",
        "LimitExceededException",
        "InternalServiceException"
      ]
    },
    "BatchReadOperation":{
      "type":"structure",
      "members":{
        "ListObjectAttributes":{
          "shape":"BatchListObjectAttributes",
          "documentation":"<p>Lists all attributes that are associated with an object.</p>"
        },
        "ListObjectChildren":{
          "shape":"BatchListObjectChildren",
          "documentation":"<p>Returns a paginated list of child objects that are associated with a given object.</p>"
        },
        "ListAttachedIndices":{
          "shape":"BatchListAttachedIndices",
          "documentation":"<p>Lists indices attached to an object.</p>"
        },
        "ListObjectParentPaths":{
          "shape":"BatchListObjectParentPaths",
          "documentation":"<p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure\">Directory Structure</a>.</p>"
        },
        "GetObjectInformation":{
          "shape":"BatchGetObjectInformation",
          "documentation":"<p>Retrieves metadata about an object.</p>"
        },
        "GetObjectAttributes":{
          "shape":"BatchGetObjectAttributes",
          "documentation":"<p>Retrieves attributes within a facet that are associated with an object.</p>"
        },
        "ListObjectPolicies":{
          "shape":"BatchListObjectPolicies",
          "documentation":"<p>Returns policies attached to an object in pagination fashion.</p>"
        },
        "ListPolicyAttachments":{
          "shape":"BatchListPolicyAttachments",
          "documentation":"<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"
        },
        "LookupPolicy":{
          "shape":"BatchLookupPolicy",
          "documentation":"<p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code> for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
        },
        "ListIndex":{
          "shape":"BatchListIndex",
          "documentation":"<p>Lists objects attached to the specified index.</p>"
        },
        "ListOutgoingTypedLinks":{
          "shape":"BatchListOutgoingTypedLinks",
          "documentation":"<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "ListIncomingTypedLinks":{
          "shape":"BatchListIncomingTypedLinks",
          "documentation":"<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "GetLinkAttributes":{
          "shape":"BatchGetLinkAttributes",
          "documentation":"<p>Retrieves attributes that are associated with a typed link.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchRead</code> operation.</p>"
    },
    "BatchReadOperationList":{
      "type":"list",
      "member":{"shape":"BatchReadOperation"}
    },
    "BatchReadOperationResponse":{
      "type":"structure",
      "members":{
        "SuccessfulResponse":{
          "shape":"BatchReadSuccessfulResponse",
          "documentation":"<p>Identifies which operation in a batch has succeeded.</p>"
        },
        "ExceptionResponse":{
          "shape":"BatchReadException",
          "documentation":"<p>Identifies which operation in a batch has failed.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchRead</code> response operation.</p>"
    },
    "BatchReadOperationResponseList":{
      "type":"list",
      "member":{"shape":"BatchReadOperationResponse"}
    },
    "BatchReadRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "Operations"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Operations":{
          "shape":"BatchReadOperationList",
          "documentation":"<p>A list of operations that are part of the batch.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "BatchReadResponse":{
      "type":"structure",
      "members":{
        "Responses":{
          "shape":"BatchReadOperationResponseList",
          "documentation":"<p>A list of all the responses for each batch read.</p>"
        }
      }
    },
    "BatchReadSuccessfulResponse":{
      "type":"structure",
      "members":{
        "ListObjectAttributes":{
          "shape":"BatchListObjectAttributesResponse",
          "documentation":"<p>Lists all attributes that are associated with an object.</p>"
        },
        "ListObjectChildren":{
          "shape":"BatchListObjectChildrenResponse",
          "documentation":"<p>Returns a paginated list of child objects that are associated with a given object.</p>"
        },
        "GetObjectInformation":{
          "shape":"BatchGetObjectInformationResponse",
          "documentation":"<p>Retrieves metadata about an object.</p>"
        },
        "GetObjectAttributes":{
          "shape":"BatchGetObjectAttributesResponse",
          "documentation":"<p>Retrieves attributes within a facet that are associated with an object.</p>"
        },
        "ListAttachedIndices":{
          "shape":"BatchListAttachedIndicesResponse",
          "documentation":"<p>Lists indices attached to an object.</p>"
        },
        "ListObjectParentPaths":{
          "shape":"BatchListObjectParentPathsResponse",
          "documentation":"<p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure\">Directory Structure</a>.</p>"
        },
        "ListObjectPolicies":{
          "shape":"BatchListObjectPoliciesResponse",
          "documentation":"<p>Returns policies attached to an object in pagination fashion.</p>"
        },
        "ListPolicyAttachments":{
          "shape":"BatchListPolicyAttachmentsResponse",
          "documentation":"<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"
        },
        "LookupPolicy":{
          "shape":"BatchLookupPolicyResponse",
          "documentation":"<p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code> for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
        },
        "ListIndex":{
          "shape":"BatchListIndexResponse",
          "documentation":"<p>Lists objects attached to the specified index.</p>"
        },
        "ListOutgoingTypedLinks":{
          "shape":"BatchListOutgoingTypedLinksResponse",
          "documentation":"<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "ListIncomingTypedLinks":{
          "shape":"BatchListIncomingTypedLinksResponse",
          "documentation":"<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "GetLinkAttributes":{
          "shape":"BatchGetLinkAttributesResponse",
          "documentation":"<p>The list of attributes to retrieve from the typed link.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchRead</code> success response operation.</p>"
    },
    "BatchReferenceName":{"type":"string"},
    "BatchRemoveFacetFromObject":{
      "type":"structure",
      "required":[
        "SchemaFacet",
        "ObjectReference"
      ],
      "members":{
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>The facet to remove from the object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object whose facet will be removed.</p>"
        }
      },
      "documentation":"<p>A batch operation to remove a facet from an object.</p>"
    },
    "BatchRemoveFacetFromObjectResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>An empty result that represents success.</p>"
    },
    "BatchUpdateLinkAttributes":{
      "type":"structure",
      "required":[
        "TypedLinkSpecifier",
        "AttributeUpdates"
      ],
      "members":{
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Allows a typed link specifier to be accepted as input.</p>"
        },
        "AttributeUpdates":{
          "shape":"LinkAttributeUpdateList",
          "documentation":"<p>The attributes update structure.</p>"
        }
      },
      "documentation":"<p>Updates a given typed link’s attributes inside a <a>BatchRead</a> operation. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>. For more information, see <a>UpdateLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
    },
    "BatchUpdateLinkAttributesResponse":{
      "type":"structure",
      "members":{
      },
      "documentation":"<p>Represents the output of a <a>UpdateLinkAttributes</a> response operation.</p>"
    },
    "BatchUpdateObjectAttributes":{
      "type":"structure",
      "required":[
        "ObjectReference",
        "AttributeUpdates"
      ],
      "members":{
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object.</p>"
        },
        "AttributeUpdates":{
          "shape":"ObjectAttributeUpdateList",
          "documentation":"<p>Attributes update structure.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchUpdate</code> operation. </p>"
    },
    "BatchUpdateObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>ID that is associated with the object.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchUpdate</code> response operation.</p>"
    },
    "BatchWriteException":{
      "type":"structure",
      "members":{
        "Index":{"shape":"BatchOperationIndex"},
        "Type":{"shape":"BatchWriteExceptionType"},
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>A <code>BatchWrite</code> exception has occurred.</p>",
      "exception":true
    },
    "BatchWriteExceptionType":{
      "type":"string",
      "enum":[
        "InternalServiceException",
        "ValidationException",
        "InvalidArnException",
        "LinkNameAlreadyInUseException",
        "StillContainsLinksException",
        "FacetValidationException",
        "ObjectNotDetachedException",
        "ResourceNotFoundException",
        "AccessDeniedException",
        "InvalidAttachmentException",
        "NotIndexException",
        "NotNodeException",
        "IndexedAttributeMissingException",
        "ObjectAlreadyDetachedException",
        "NotPolicyException",
        "DirectoryNotEnabledException",
        "LimitExceededException",
        "UnsupportedIndexTypeException"
      ]
    },
    "BatchWriteOperation":{
      "type":"structure",
      "members":{
        "CreateObject":{
          "shape":"BatchCreateObject",
          "documentation":"<p>Creates an object.</p>"
        },
        "AttachObject":{
          "shape":"BatchAttachObject",
          "documentation":"<p>Attaches an object to a <a>Directory</a>.</p>"
        },
        "DetachObject":{
          "shape":"BatchDetachObject",
          "documentation":"<p>Detaches an object from a <a>Directory</a>.</p>"
        },
        "UpdateObjectAttributes":{
          "shape":"BatchUpdateObjectAttributes",
          "documentation":"<p>Updates a given object's attributes.</p>"
        },
        "DeleteObject":{
          "shape":"BatchDeleteObject",
          "documentation":"<p>Deletes an object in a <a>Directory</a>.</p>"
        },
        "AddFacetToObject":{
          "shape":"BatchAddFacetToObject",
          "documentation":"<p>A batch operation that adds a facet to an object.</p>"
        },
        "RemoveFacetFromObject":{
          "shape":"BatchRemoveFacetFromObject",
          "documentation":"<p>A batch operation that removes a facet from an object.</p>"
        },
        "AttachPolicy":{
          "shape":"BatchAttachPolicy",
          "documentation":"<p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>"
        },
        "DetachPolicy":{
          "shape":"BatchDetachPolicy",
          "documentation":"<p>Detaches a policy from a <a>Directory</a>.</p>"
        },
        "CreateIndex":{
          "shape":"BatchCreateIndex",
          "documentation":"<p>Creates an index object. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html\">Indexing</a> for more information.</p>"
        },
        "AttachToIndex":{
          "shape":"BatchAttachToIndex",
          "documentation":"<p>Attaches the specified object to the specified index.</p>"
        },
        "DetachFromIndex":{
          "shape":"BatchDetachFromIndex",
          "documentation":"<p>Detaches the specified object from the specified index.</p>"
        },
        "AttachTypedLink":{
          "shape":"BatchAttachTypedLink",
          "documentation":"<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "DetachTypedLink":{
          "shape":"BatchDetachTypedLink",
          "documentation":"<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "UpdateLinkAttributes":{
          "shape":"BatchUpdateLinkAttributes",
          "documentation":"<p>Updates a given object's attributes.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchWrite</code> operation. </p>"
    },
    "BatchWriteOperationList":{
      "type":"list",
      "member":{"shape":"BatchWriteOperation"}
    },
    "BatchWriteOperationResponse":{
      "type":"structure",
      "members":{
        "CreateObject":{
          "shape":"BatchCreateObjectResponse",
          "documentation":"<p>Creates an object in a <a>Directory</a>.</p>"
        },
        "AttachObject":{
          "shape":"BatchAttachObjectResponse",
          "documentation":"<p>Attaches an object to a <a>Directory</a>.</p>"
        },
        "DetachObject":{
          "shape":"BatchDetachObjectResponse",
          "documentation":"<p>Detaches an object from a <a>Directory</a>.</p>"
        },
        "UpdateObjectAttributes":{
          "shape":"BatchUpdateObjectAttributesResponse",
          "documentation":"<p>Updates a given object’s attributes.</p>"
        },
        "DeleteObject":{
          "shape":"BatchDeleteObjectResponse",
          "documentation":"<p>Deletes an object in a <a>Directory</a>.</p>"
        },
        "AddFacetToObject":{
          "shape":"BatchAddFacetToObjectResponse",
          "documentation":"<p>The result of an add facet to object batch operation.</p>"
        },
        "RemoveFacetFromObject":{
          "shape":"BatchRemoveFacetFromObjectResponse",
          "documentation":"<p>The result of a batch remove facet from object operation.</p>"
        },
        "AttachPolicy":{
          "shape":"BatchAttachPolicyResponse",
          "documentation":"<p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>"
        },
        "DetachPolicy":{
          "shape":"BatchDetachPolicyResponse",
          "documentation":"<p>Detaches a policy from a <a>Directory</a>.</p>"
        },
        "CreateIndex":{
          "shape":"BatchCreateIndexResponse",
          "documentation":"<p>Creates an index object. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html\">Indexing</a> for more information.</p>"
        },
        "AttachToIndex":{
          "shape":"BatchAttachToIndexResponse",
          "documentation":"<p>Attaches the specified object to the specified index.</p>"
        },
        "DetachFromIndex":{
          "shape":"BatchDetachFromIndexResponse",
          "documentation":"<p>Detaches the specified object from the specified index.</p>"
        },
        "AttachTypedLink":{
          "shape":"BatchAttachTypedLinkResponse",
          "documentation":"<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "DetachTypedLink":{
          "shape":"BatchDetachTypedLinkResponse",
          "documentation":"<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        },
        "UpdateLinkAttributes":{
          "shape":"BatchUpdateLinkAttributesResponse",
          "documentation":"<p>Represents the output of a <code>BatchWrite</code> response operation.</p>"
        }
      },
      "documentation":"<p>Represents the output of a <code>BatchWrite</code> response operation.</p>"
    },
    "BatchWriteOperationResponseList":{
      "type":"list",
      "member":{"shape":"BatchWriteOperationResponse"}
    },
    "BatchWriteRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "Operations"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Operations":{
          "shape":"BatchWriteOperationList",
          "documentation":"<p>A list of operations that are part of the batch.</p>"
        }
      }
    },
    "BatchWriteResponse":{
      "type":"structure",
      "members":{
        "Responses":{
          "shape":"BatchWriteOperationResponseList",
          "documentation":"<p>A list of all the responses for each batch write.</p>"
        }
      }
    },
    "BinaryAttributeValue":{"type":"blob"},
    "Bool":{"type":"boolean"},
    "BooleanAttributeValue":{"type":"boolean"},
    "CannotListParentOfRootException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Cannot list the parents of a <a>Directory</a> root.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "ConsistencyLevel":{
      "type":"string",
      "enum":[
        "SERIALIZABLE",
        "EVENTUAL"
      ]
    },
    "CreateDirectoryRequest":{
      "type":"structure",
      "required":[
        "Name",
        "SchemaArn"
      ],
      "members":{
        "Name":{
          "shape":"DirectoryName",
          "documentation":"<p>The name of the <a>Directory</a>. Should be unique per account, per region.</p>"
        },
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the published schema that will be copied into the data <a>Directory</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "CreateDirectoryResponse":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "Name",
        "ObjectIdentifier",
        "AppliedSchemaArn"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"DirectoryArn",
          "documentation":"<p>The ARN that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>"
        },
        "Name":{
          "shape":"DirectoryName",
          "documentation":"<p>The name of the <a>Directory</a>.</p>"
        },
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The root object node of the created directory.</p>"
        },
        "AppliedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the published schema in the <a>Directory</a>. Once a published schema is copied into the directory, it has its own ARN, which is referred to applied schema ARN. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "CreateFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name",
        "ObjectType"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The schema ARN in which the new <a>Facet</a> will be created. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the <a>Facet</a>, which is unique for a given schema.</p>"
        },
        "Attributes":{
          "shape":"FacetAttributeList",
          "documentation":"<p>The attributes that are associated with the <a>Facet</a>.</p>"
        },
        "ObjectType":{
          "shape":"ObjectType",
          "documentation":"<p>Specifies whether a given object created from this facet is of type node, leaf node, policy or index.</p> <ul> <li> <p>Node: Can have multiple children but one parent.</p> </li> </ul> <ul> <li> <p>Leaf node: Cannot have children but can have multiple parents.</p> </li> </ul> <ul> <li> <p>Policy: Allows you to store a policy document and policy type. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p> </li> </ul> <ul> <li> <p>Index: Can be created with the Index API.</p> </li> </ul>"
        }
      }
    },
    "CreateFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "CreateIndexRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "OrderedIndexedAttributeList",
        "IsUnique"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory where the index should be created.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "OrderedIndexedAttributeList":{
          "shape":"AttributeKeyList",
          "documentation":"<p>Specifies the attributes that should be indexed on. Currently only a single attribute is supported.</p>"
        },
        "IsUnique":{
          "shape":"Bool",
          "documentation":"<p>Indicates whether the attribute that is being indexed has unique values or not.</p>"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the parent object that contains the index object.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of the link between the parent object and the index object.</p>"
        }
      }
    },
    "CreateIndexResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>"
        }
      }
    },
    "CreateObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "SchemaFacets"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> in which the object will be created. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "SchemaFacets":{
          "shape":"SchemaFacetList",
          "documentation":"<p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>"
        },
        "ObjectAttributeList":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attribute map whose attribute ARN contains the key and attribute value as the map value.</p>"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>If specified, the parent reference to which this object will be attached.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The name of link that is used to attach this object to a parent.</p>"
        }
      }
    },
    "CreateObjectResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The identifier that is associated with the object.</p>"
        }
      }
    },
    "CreateSchemaRequest":{
      "type":"structure",
      "required":["Name"],
      "members":{
        "Name":{
          "shape":"SchemaName",
          "documentation":"<p>The name that is associated with the schema. This is unique to each account and in each region.</p>"
        }
      }
    },
    "CreateSchemaResponse":{
      "type":"structure",
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "CreateTypedLinkFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Facet"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Facet":{
          "shape":"TypedLinkFacet",
          "documentation":"<p> <a>Facet</a> structure that is associated with the typed link facet.</p>"
        }
      }
    },
    "CreateTypedLinkFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "Date":{"type":"timestamp"},
    "DatetimeAttributeValue":{"type":"timestamp"},
    "DeleteDirectoryRequest":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory to delete.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "DeleteDirectoryResponse":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the deleted directory.</p>"
        }
      }
    },
    "DeleteFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet to delete.</p>"
        }
      }
    },
    "DeleteFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "DeleteObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference that identifies the object.</p>"
        }
      }
    },
    "DeleteObjectResponse":{
      "type":"structure",
      "members":{
      }
    },
    "DeleteSchemaRequest":{
      "type":"structure",
      "required":["SchemaArn"],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "DeleteSchemaResponse":{
      "type":"structure",
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The input ARN that is returned as part of the response. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "DeleteTypedLinkFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        }
      }
    },
    "DeleteTypedLinkFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "DetachFromIndexRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "IndexReference",
        "TargetReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory the index and object exist in.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the index object.</p>"
        },
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object being detached from the index.</p>"
        }
      }
    },
    "DetachFromIndexResponse":{
      "type":"structure",
      "members":{
        "DetachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"
        }
      }
    },
    "DetachObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ParentReference",
        "LinkName"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ParentReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The parent reference from which the object with the specified link name is detached.</p>"
        },
        "LinkName":{
          "shape":"LinkName",
          "documentation":"<p>The link name associated with the object that needs to be detached.</p>"
        }
      }
    },
    "DetachObjectResponse":{
      "type":"structure",
      "members":{
        "DetachedObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> that was detached from the object.</p>"
        }
      }
    },
    "DetachPolicyRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "PolicyReference",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where both objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the policy object.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose policy object will be detached.</p>"
        }
      }
    },
    "DetachPolicyResponse":{
      "type":"structure",
      "members":{
      }
    },
    "DetachTypedLinkRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "TypedLinkSpecifier"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed link.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Used to accept a typed link specifier as input.</p>"
        }
      }
    },
    "Directory":{
      "type":"structure",
      "members":{
        "Name":{
          "shape":"DirectoryName",
          "documentation":"<p>The name of the directory.</p>"
        },
        "DirectoryArn":{
          "shape":"DirectoryArn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the directory. For more information, see <a>arns</a>.</p>"
        },
        "State":{
          "shape":"DirectoryState",
          "documentation":"<p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>"
        },
        "CreationDateTime":{
          "shape":"Date",
          "documentation":"<p>The date and time when the directory was created.</p>"
        }
      },
      "documentation":"<p>Directory structure that includes the directory name and directory ARN.</p>"
    },
    "DirectoryAlreadyExistsException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that a <a>Directory</a> could not be created due to a naming conflict. Choose a different name and try again.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "DirectoryArn":{"type":"string"},
    "DirectoryDeletedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>A directory that has been deleted and to which access has been attempted. Note: The requested resource will eventually cease to exist.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "DirectoryList":{
      "type":"list",
      "member":{"shape":"Directory"}
    },
    "DirectoryName":{
      "type":"string",
      "max":64,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "DirectoryNotDisabledException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>An operation can only operate on a disabled directory.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "DirectoryNotEnabledException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Operations are only permitted on enabled directories.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "DirectoryState":{
      "type":"string",
      "enum":[
        "ENABLED",
        "DISABLED",
        "DELETED"
      ]
    },
    "DisableDirectoryRequest":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory to disable.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "DisableDirectoryResponse":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory that has been disabled.</p>"
        }
      }
    },
    "EnableDirectoryRequest":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory to enable.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "EnableDirectoryResponse":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the enabled directory.</p>"
        }
      }
    },
    "ExceptionMessage":{"type":"string"},
    "Facet":{
      "type":"structure",
      "members":{
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the <a>Facet</a>.</p>"
        },
        "ObjectType":{
          "shape":"ObjectType",
          "documentation":"<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"
        }
      },
      "documentation":"<p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <code> <a>Rule</a>s</code>, and <code>ObjectTypes</code>. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/whatarefacets.html\">Facets</a> for more information.</p>"
    },
    "FacetAlreadyExistsException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>A facet with the same name already exists.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "FacetAttribute":{
      "type":"structure",
      "required":["Name"],
      "members":{
        "Name":{
          "shape":"AttributeName",
          "documentation":"<p>The name of the facet attribute.</p>"
        },
        "AttributeDefinition":{
          "shape":"FacetAttributeDefinition",
          "documentation":"<p>A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences\">Attribute References</a> for more information.</p>"
        },
        "AttributeReference":{
          "shape":"FacetAttributeReference",
          "documentation":"<p>An attribute reference that is associated with the attribute. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences\">Attribute References</a> for more information.</p>"
        },
        "RequiredBehavior":{
          "shape":"RequiredAttributeBehavior",
          "documentation":"<p>The required behavior of the <code>FacetAttribute</code>.</p>"
        }
      },
      "documentation":"<p>An attribute that is associated with the <a>Facet</a>.</p>"
    },
    "FacetAttributeDefinition":{
      "type":"structure",
      "required":["Type"],
      "members":{
        "Type":{
          "shape":"FacetAttributeType",
          "documentation":"<p>The type of the attribute.</p>"
        },
        "DefaultValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The default value of the attribute (if configured).</p>"
        },
        "IsImmutable":{
          "shape":"Bool",
          "documentation":"<p>Whether the attribute is mutable or not.</p>"
        },
        "Rules":{
          "shape":"RuleMap",
          "documentation":"<p>Validation rules attached to the attribute definition.</p>"
        }
      },
      "documentation":"<p>A facet attribute definition. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences\">Attribute References</a> for more information.</p>"
    },
    "FacetAttributeList":{
      "type":"list",
      "member":{"shape":"FacetAttribute"}
    },
    "FacetAttributeReference":{
      "type":"structure",
      "required":[
        "TargetFacetName",
        "TargetAttributeName"
      ],
      "members":{
        "TargetFacetName":{
          "shape":"FacetName",
          "documentation":"<p>The target facet name that is associated with the facet reference. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences\">Attribute References</a> for more information.</p>"
        },
        "TargetAttributeName":{
          "shape":"AttributeName",
          "documentation":"<p>The target attribute name that is associated with the facet reference. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences\">Attribute References</a> for more information.</p>"
        }
      },
      "documentation":"<p>The facet attribute reference that specifies the attribute definition that contains the attribute facet name and attribute name.</p>"
    },
    "FacetAttributeType":{
      "type":"string",
      "enum":[
        "STRING",
        "BINARY",
        "BOOLEAN",
        "NUMBER",
        "DATETIME"
      ]
    },
    "FacetAttributeUpdate":{
      "type":"structure",
      "members":{
        "Attribute":{
          "shape":"FacetAttribute",
          "documentation":"<p>The attribute to update.</p>"
        },
        "Action":{
          "shape":"UpdateActionType",
          "documentation":"<p>The action to perform when updating the attribute.</p>"
        }
      },
      "documentation":"<p>A structure that contains information used to update an attribute.</p>"
    },
    "FacetAttributeUpdateList":{
      "type":"list",
      "member":{"shape":"FacetAttributeUpdate"}
    },
    "FacetInUseException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Occurs when deleting a facet that contains an attribute that is a target to an attribute reference in a different facet.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "FacetName":{
      "type":"string",
      "max":64,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "FacetNameList":{
      "type":"list",
      "member":{"shape":"FacetName"}
    },
    "FacetNotFoundException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>The specified <a>Facet</a> could not be found.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "FacetValidationException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>The <a>Facet</a> that you provided was not well formed or could not be validated with the schema.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "GetAppliedSchemaVersionRequest":{
      "type":"structure",
      "required":["SchemaArn"],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the applied schema.</p>"
        }
      }
    },
    "GetAppliedSchemaVersionResponse":{
      "type":"structure",
      "members":{
        "AppliedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>Current applied schema ARN, including the minor version in use if one was provided.</p>"
        }
      }
    },
    "GetDirectoryRequest":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"DirectoryArn",
          "documentation":"<p>The ARN of the directory.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "GetDirectoryResponse":{
      "type":"structure",
      "required":["Directory"],
      "members":{
        "Directory":{
          "shape":"Directory",
          "documentation":"<p>Metadata about the directory.</p>"
        }
      }
    },
    "GetFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet to retrieve.</p>"
        }
      }
    },
    "GetFacetResponse":{
      "type":"structure",
      "members":{
        "Facet":{
          "shape":"Facet",
          "documentation":"<p>The <a>Facet</a> structure that is associated with the facet.</p>"
        }
      }
    },
    "GetLinkAttributesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "TypedLinkSpecifier",
        "AttributeNames"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Allows a typed link specifier to be accepted as input.</p>"
        },
        "AttributeNames":{
          "shape":"AttributeNameList",
          "documentation":"<p>A list of attribute names whose values will be retrieved.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level at which to retrieve the attributes on a typed link.</p>"
        }
      }
    },
    "GetLinkAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attributes that are associated with the typed link.</p>"
        }
      }
    },
    "GetObjectAttributesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference",
        "SchemaFacet",
        "AttributeNames"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose attributes will be retrieved.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level at which to retrieve the attributes on an object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        },
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>"
        },
        "AttributeNames":{
          "shape":"AttributeNameList",
          "documentation":"<p>List of attribute names whose values will be retrieved.</p>"
        }
      }
    },
    "GetObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The attributes that are associated with the object.</p>"
        }
      }
    },
    "GetObjectInformationRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory being retrieved.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level at which to retrieve the object information.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "GetObjectInformationResponse":{
      "type":"structure",
      "members":{
        "SchemaFacets":{
          "shape":"SchemaFacetList",
          "documentation":"<p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>"
        },
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the specified object.</p>"
        }
      }
    },
    "GetSchemaAsJsonRequest":{
      "type":"structure",
      "required":["SchemaArn"],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the schema to retrieve.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        }
      }
    },
    "GetSchemaAsJsonResponse":{
      "type":"structure",
      "members":{
        "Name":{
          "shape":"SchemaName",
          "documentation":"<p>The name of the retrieved schema.</p>"
        },
        "Document":{
          "shape":"SchemaJsonDocument",
          "documentation":"<p>The JSON representation of the schema document.</p>"
        }
      }
    },
    "GetTypedLinkFacetInformationRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        }
      }
    },
    "GetTypedLinkFacetInformationResponse":{
      "type":"structure",
      "members":{
        "IdentityAttributeOrder":{
          "shape":"AttributeNameList",
          "documentation":"<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        }
      }
    },
    "IncompatibleSchemaException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates a failure occurred while performing a check for backward compatibility between the specified schema and the schema that is currently applied to the directory.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "IndexAttachment":{
      "type":"structure",
      "members":{
        "IndexedAttributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>The indexed attribute values.</p>"
        },
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>"
        }
      },
      "documentation":"<p>Represents an index and an attached object.</p>"
    },
    "IndexAttachmentList":{
      "type":"list",
      "member":{"shape":"IndexAttachment"}
    },
    "IndexedAttributeMissingException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>An object has been attempted to be attached to an object that does not have the appropriate attribute value.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InternalServiceException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <a href=\"http://status.aws.amazon.com/\">AWS Service Health Dashboard</a> site to see if there are any operational issues with the service.</p>",
      "error":{"httpStatusCode":500},
      "exception":true
    },
    "InvalidArnException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the provided ARN value is not valid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidAttachmentException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that an attempt to attach an object with the same link name or to apply a schema with the same name has occurred. Rename the link or the schema and then try again.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidFacetUpdateException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>An attempt to modify a <a>Facet</a> resulted in an invalid schema exception.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidNextTokenException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the <code>NextToken</code> value is not valid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidRuleException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Occurs when any of the rule parameter keys or values are invalid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidSchemaDocException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the provided <code>SchemaDoc</code> value is not valid.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "InvalidTaggingRequestException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "LimitExceededException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that limits are exceeded. See <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html\">Limits</a> for more information.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "LinkAttributeAction":{
      "type":"structure",
      "members":{
        "AttributeActionType":{
          "shape":"UpdateActionType",
          "documentation":"<p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>"
        },
        "AttributeUpdateValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The value that you want to update to.</p>"
        }
      },
      "documentation":"<p>The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.</p>"
    },
    "LinkAttributeUpdate":{
      "type":"structure",
      "members":{
        "AttributeKey":{
          "shape":"AttributeKey",
          "documentation":"<p>The key of the attribute being updated.</p>"
        },
        "AttributeAction":{
          "shape":"LinkAttributeAction",
          "documentation":"<p>The action to perform as part of the attribute update.</p>"
        }
      },
      "documentation":"<p>Structure that contains attribute update information.</p>"
    },
    "LinkAttributeUpdateList":{
      "type":"list",
      "member":{"shape":"LinkAttributeUpdate"}
    },
    "LinkName":{
      "type":"string",
      "max":64,
      "min":1,
      "pattern":"[^\\/\\[\\]\\(\\):\\{\\}#@!?\\s\\\\;]+"
    },
    "LinkNameAlreadyInUseException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "LinkNameToObjectIdentifierMap":{
      "type":"map",
      "key":{"shape":"LinkName"},
      "value":{"shape":"ObjectIdentifier"}
    },
    "ListAppliedSchemaArnsRequest":{
      "type":"structure",
      "required":["DirectoryArn"],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory you are listing.</p>"
        },
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListAppliedSchemaArnsResponse":{
      "type":"structure",
      "members":{
        "SchemaArns":{
          "shape":"Arns",
          "documentation":"<p>The ARNs of schemas that are applied to the directory.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListAttachedIndicesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "TargetReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "TargetReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object that has indices attached.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level to use for this operation.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListAttachedIndicesResponse":{
      "type":"structure",
      "members":{
        "IndexAttachments":{
          "shape":"IndexAttachmentList",
          "documentation":"<p>The indices attached to the specified object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListDevelopmentSchemaArnsRequest":{
      "type":"structure",
      "members":{
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListDevelopmentSchemaArnsResponse":{
      "type":"structure",
      "members":{
        "SchemaArns":{
          "shape":"Arns",
          "documentation":"<p>The ARNs of retrieved development schemas.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListDirectoriesRequest":{
      "type":"structure",
      "members":{
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        },
        "state":{
          "shape":"DirectoryState",
          "documentation":"<p>The state of the directories in the list. Can be either Enabled, Disabled, or Deleted.</p>"
        }
      }
    },
    "ListDirectoriesResponse":{
      "type":"structure",
      "required":["Directories"],
      "members":{
        "Directories":{
          "shape":"DirectoryList",
          "documentation":"<p>Lists all directories that are associated with your account in pagination fashion.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListFacetAttributesRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the schema where the facet resides.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet whose attributes will be retrieved.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListFacetAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"FacetAttributeList",
          "documentation":"<p>The attributes attached to the facet.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListFacetNamesRequest":{
      "type":"structure",
      "required":["SchemaArn"],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListFacetNamesResponse":{
      "type":"structure",
      "members":{
        "FacetNames":{
          "shape":"FacetNameList",
          "documentation":"<p>The names of facets that exist within the schema.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListIncomingTypedLinksRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose attributes will be listed.</p>"
        },
        "FilterAttributeRanges":{
          "shape":"TypedLinkAttributeRangeList",
          "documentation":"<p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>"
        },
        "FilterTypedLink":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level to execute the request at.</p>"
        }
      }
    },
    "ListIncomingTypedLinksResponse":{
      "type":"structure",
      "members":{
        "LinkSpecifiers":{
          "shape":"TypedLinkSpecifierList",
          "documentation":"<p>Returns one or more typed link specifiers as output.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListIndexRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "IndexReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory that the index exists in.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "RangesOnIndexedValues":{
          "shape":"ObjectAttributeRangeList",
          "documentation":"<p>Specifies the ranges of indexed values that you want to query.</p>"
        },
        "IndexReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference to the index to list.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html#limits_cd\">AWS Directory Service Limits</a>.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level to execute the request at.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListIndexResponse":{
      "type":"structure",
      "members":{
        "IndexAttachments":{
          "shape":"IndexAttachmentList",
          "documentation":"<p>The objects and indexed values attached to the index.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListObjectAttributesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose attributes will be listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        },
        "FacetFilter":{
          "shape":"SchemaFacet",
          "documentation":"<p>Used to filter the list of object attributes that are associated with a certain facet.</p>"
        }
      }
    },
    "ListObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeKeyAndValueList",
          "documentation":"<p>Attributes map that is associated with the object. <code>AttributeArn</code> is the key, and attribute value is the value.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListObjectChildrenRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object for which child objects are being listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListObjectChildrenResponse":{
      "type":"structure",
      "members":{
        "Children":{
          "shape":"LinkNameToObjectIdentifierMap",
          "documentation":"<p>Children structure, which is a map with key as the <code>LinkName</code> and <code>ObjectIdentifier</code> as the value.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListObjectParentPathsRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory to which the parent path applies.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object whose parent paths are listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        }
      }
    },
    "ListObjectParentPathsResponse":{
      "type":"structure",
      "members":{
        "PathToObjectIdentifiersList":{
          "shape":"PathToObjectIdentifiersList",
          "documentation":"<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the directory.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListObjectParentsRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object for which parent objects are being listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListObjectParentsResponse":{
      "type":"structure",
      "members":{
        "Parents":{
          "shape":"ObjectIdentifierToLinkNameMap",
          "documentation":"<p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and LinkName as the value.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListObjectPoliciesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object for which policies will be listed.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListObjectPoliciesResponse":{
      "type":"structure",
      "members":{
        "AttachedPolicyIds":{
          "shape":"ObjectIdentifierList",
          "documentation":"<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListOutgoingTypedLinksRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed links.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference that identifies the object whose attributes will be listed.</p>"
        },
        "FilterAttributeRanges":{
          "shape":"TypedLinkAttributeRangeList",
          "documentation":"<p>Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.</p>"
        },
        "FilterTypedLink":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>The consistency level to execute the request at.</p>"
        }
      }
    },
    "ListOutgoingTypedLinksResponse":{
      "type":"structure",
      "members":{
        "TypedLinkSpecifiers":{
          "shape":"TypedLinkSpecifierList",
          "documentation":"<p>Returns a typed link specifier as output.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListPolicyAttachmentsRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "PolicyReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where objects reside. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "PolicyReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the policy object.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        },
        "ConsistencyLevel":{
          "shape":"ConsistencyLevel",
          "documentation":"<p>Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.</p>",
          "location":"header",
          "locationName":"x-amz-consistency-level"
        }
      }
    },
    "ListPolicyAttachmentsResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifiers":{
          "shape":"ObjectIdentifierList",
          "documentation":"<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListPublishedSchemaArnsRequest":{
      "type":"structure",
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListPublishedSchemaArnsResponse":{
      "type":"structure",
      "members":{
        "SchemaArns":{
          "shape":"Arns",
          "documentation":"<p>The ARNs of published schemas.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListTagsForResourceRequest":{
      "type":"structure",
      "required":["ResourceArn"],
      "members":{
        "ResourceArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token. This is for future use. Currently pagination is not supported for tagging.</p>"
        },
        "MaxResults":{
          "shape":"TagsNumberResults",
          "documentation":"<p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. This is for future use and is not supported currently.</p>"
        }
      }
    },
    "ListTagsForResourceResponse":{
      "type":"structure",
      "members":{
        "Tags":{
          "shape":"TagList",
          "documentation":"<p>A list of tag key value pairs that are associated with the response.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "ListTypedLinkFacetAttributesRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListTypedLinkFacetAttributesResponse":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"TypedLinkAttributeDefinitionList",
          "documentation":"<p>An ordered set of attributes associate with the typed link.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "ListTypedLinkFacetNamesRequest":{
      "type":"structure",
      "required":["SchemaArn"],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of results to retrieve.</p>"
        }
      }
    },
    "ListTypedLinkFacetNamesResponse":{
      "type":"structure",
      "members":{
        "FacetNames":{
          "shape":"TypedLinkNameList",
          "documentation":"<p>The names of typed link facets that exist within the schema.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "LookupPolicyRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Reference that identifies the object whose policies will be looked up.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The token to request the next page of results.</p>"
        },
        "MaxResults":{
          "shape":"NumberResults",
          "documentation":"<p>The maximum number of items to be retrieved in a single call. This is an approximate number.</p>"
        }
      }
    },
    "LookupPolicyResponse":{
      "type":"structure",
      "members":{
        "PolicyToPathList":{
          "shape":"PolicyToPathList",
          "documentation":"<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and <code>PolicyType</code>. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
        },
        "NextToken":{
          "shape":"NextToken",
          "documentation":"<p>The pagination token.</p>"
        }
      }
    },
    "NextToken":{"type":"string"},
    "NotIndexException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the requested operation can only operate on index objects.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "NotNodeException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Occurs when any invalid operations are performed on an object that is not a node, such as calling <code>ListObjectChildren</code> for a leaf node object.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "NotPolicyException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the requested operation can only operate on policy objects.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "NumberAttributeValue":{"type":"string"},
    "NumberResults":{
      "type":"integer",
      "min":1
    },
    "ObjectAlreadyDetachedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the object is not attached to the index.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "ObjectAttributeAction":{
      "type":"structure",
      "members":{
        "ObjectAttributeActionType":{
          "shape":"UpdateActionType",
          "documentation":"<p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>"
        },
        "ObjectAttributeUpdateValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The value that you want to update to.</p>"
        }
      },
      "documentation":"<p>The action to take on the object attribute.</p>"
    },
    "ObjectAttributeRange":{
      "type":"structure",
      "members":{
        "AttributeKey":{
          "shape":"AttributeKey",
          "documentation":"<p>The key of the attribute that the attribute range covers.</p>"
        },
        "Range":{
          "shape":"TypedAttributeValueRange",
          "documentation":"<p>The range of attribute values being selected.</p>"
        }
      },
      "documentation":"<p>A range of attributes.</p>"
    },
    "ObjectAttributeRangeList":{
      "type":"list",
      "member":{"shape":"ObjectAttributeRange"}
    },
    "ObjectAttributeUpdate":{
      "type":"structure",
      "members":{
        "ObjectAttributeKey":{
          "shape":"AttributeKey",
          "documentation":"<p>The key of the attribute being updated.</p>"
        },
        "ObjectAttributeAction":{
          "shape":"ObjectAttributeAction",
          "documentation":"<p>The action to perform as part of the attribute update.</p>"
        }
      },
      "documentation":"<p>Structure that contains attribute update information.</p>"
    },
    "ObjectAttributeUpdateList":{
      "type":"list",
      "member":{"shape":"ObjectAttributeUpdate"}
    },
    "ObjectIdentifier":{"type":"string"},
    "ObjectIdentifierList":{
      "type":"list",
      "member":{"shape":"ObjectIdentifier"}
    },
    "ObjectIdentifierToLinkNameMap":{
      "type":"map",
      "key":{"shape":"ObjectIdentifier"},
      "value":{"shape":"LinkName"}
    },
    "ObjectNotDetachedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the requested operation cannot be completed because the object has not been detached from the tree.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "ObjectReference":{
      "type":"structure",
      "members":{
        "Selector":{
          "shape":"SelectorObjectReference",
          "documentation":"<p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#accessingobjects\">Accessing Objects</a>. You can identify an object in one of the following ways:</p> <ul> <li> <p> <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier</p> </li> <li> <p> <i>/some/path</i> - Identifies the object based on path</p> </li> <li> <p> <i>#SomeBatchReference</i> - Identifies the object in a batch call</p> </li> </ul>"
        }
      },
      "documentation":"<p>The reference that identifies an object.</p>"
    },
    "ObjectType":{
      "type":"string",
      "enum":[
        "NODE",
        "LEAF_NODE",
        "POLICY",
        "INDEX"
      ]
    },
    "PathString":{"type":"string"},
    "PathToObjectIdentifiers":{
      "type":"structure",
      "members":{
        "Path":{
          "shape":"PathString",
          "documentation":"<p>The path that is used to identify the object starting from directory root.</p>"
        },
        "ObjectIdentifiers":{
          "shape":"ObjectIdentifierList",
          "documentation":"<p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the request.</p>"
        }
      },
      "documentation":"<p>Returns the path to the <code>ObjectIdentifiers</code> that is associated with the directory.</p>"
    },
    "PathToObjectIdentifiersList":{
      "type":"list",
      "member":{"shape":"PathToObjectIdentifiers"}
    },
    "PolicyAttachment":{
      "type":"structure",
      "members":{
        "PolicyId":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The ID of <code>PolicyAttachment</code>.</p>"
        },
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> that is associated with <code>PolicyAttachment</code>.</p>"
        },
        "PolicyType":{
          "shape":"PolicyType",
          "documentation":"<p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>"
        }
      },
      "documentation":"<p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is attached. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies\">Policies</a>.</p>"
    },
    "PolicyAttachmentList":{
      "type":"list",
      "member":{"shape":"PolicyAttachment"}
    },
    "PolicyToPath":{
      "type":"structure",
      "members":{
        "Path":{
          "shape":"PathString",
          "documentation":"<p>The path that is referenced from the root.</p>"
        },
        "Policies":{
          "shape":"PolicyAttachmentList",
          "documentation":"<p>List of policy objects.</p>"
        }
      },
      "documentation":"<p>Used when a regular object exists in a <a>Directory</a> and you want to find all of the policies that are associated with that object and the parent to that object.</p>"
    },
    "PolicyToPathList":{
      "type":"list",
      "member":{"shape":"PolicyToPath"}
    },
    "PolicyType":{"type":"string"},
    "PublishSchemaRequest":{
      "type":"structure",
      "required":[
        "DevelopmentSchemaArn",
        "Version"
      ],
      "members":{
        "DevelopmentSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the development schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Version":{
          "shape":"Version",
          "documentation":"<p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>"
        },
        "MinorVersion":{
          "shape":"Version",
          "documentation":"<p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>"
        },
        "Name":{
          "shape":"SchemaName",
          "documentation":"<p>The new name under which the schema will be published. If this is not provided, the development schema is considered.</p>"
        }
      }
    },
    "PublishSchemaResponse":{
      "type":"structure",
      "members":{
        "PublishedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "PutSchemaFromJsonRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Document"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the schema to update.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Document":{
          "shape":"SchemaJsonDocument",
          "documentation":"<p>The replacement JSON schema.</p>"
        }
      }
    },
    "PutSchemaFromJsonResponse":{
      "type":"structure",
      "members":{
        "Arn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the schema to update.</p>"
        }
      }
    },
    "RangeMode":{
      "type":"string",
      "enum":[
        "FIRST",
        "LAST",
        "LAST_BEFORE_MISSING_VALUES",
        "INCLUSIVE",
        "EXCLUSIVE"
      ]
    },
    "RemoveFacetFromObjectRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "SchemaFacet",
        "ObjectReference"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory in which the object resides.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "SchemaFacet":{
          "shape":"SchemaFacet",
          "documentation":"<p>The facet to remove. See <a>SchemaFacet</a> for details.</p>"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>A reference to the object to remove the facet from.</p>"
        }
      }
    },
    "RemoveFacetFromObjectResponse":{
      "type":"structure",
      "members":{
      }
    },
    "RequiredAttributeBehavior":{
      "type":"string",
      "enum":[
        "REQUIRED_ALWAYS",
        "NOT_REQUIRED"
      ]
    },
    "ResourceNotFoundException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>The specified resource could not be found.</p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "RetryableConflictException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.</p>",
      "error":{"httpStatusCode":409},
      "exception":true
    },
    "Rule":{
      "type":"structure",
      "members":{
        "Type":{
          "shape":"RuleType",
          "documentation":"<p>The type of attribute validation rule.</p>"
        },
        "Parameters":{
          "shape":"RuleParameterMap",
          "documentation":"<p>The minimum and maximum parameters that are associated with the rule.</p>"
        }
      },
      "documentation":"<p>Contains an Amazon Resource Name (ARN) and parameters that are associated with the rule.</p>"
    },
    "RuleKey":{
      "type":"string",
      "max":64,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "RuleMap":{
      "type":"map",
      "key":{"shape":"RuleKey"},
      "value":{"shape":"Rule"}
    },
    "RuleParameterKey":{"type":"string"},
    "RuleParameterMap":{
      "type":"map",
      "key":{"shape":"RuleParameterKey"},
      "value":{"shape":"RuleParameterValue"}
    },
    "RuleParameterValue":{"type":"string"},
    "RuleType":{
      "type":"string",
      "enum":[
        "BINARY_LENGTH",
        "NUMBER_COMPARISON",
        "STRING_FROM_SET",
        "STRING_LENGTH"
      ]
    },
    "SchemaAlreadyExistsException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "SchemaAlreadyPublishedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that a schema is already published.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "SchemaFacet":{
      "type":"structure",
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/inplaceschemaupgrade.html\">In-Place Schema Upgrade</a> for a description of when to provide minor versions.</p>"
        },
        "FacetName":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet.</p>"
        }
      },
      "documentation":"<p>A facet.</p>"
    },
    "SchemaFacetList":{
      "type":"list",
      "member":{"shape":"SchemaFacet"}
    },
    "SchemaJsonDocument":{"type":"string"},
    "SchemaName":{
      "type":"string",
      "max":32,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "SelectorObjectReference":{"type":"string"},
    "StillContainsLinksException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>The object could not be deleted because links still exist. Remove the links and then try the operation again.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "StringAttributeValue":{"type":"string"},
    "Tag":{
      "type":"structure",
      "members":{
        "Key":{
          "shape":"TagKey",
          "documentation":"<p>The key that is associated with the tag.</p>"
        },
        "Value":{
          "shape":"TagValue",
          "documentation":"<p>The value that is associated with the tag.</p>"
        }
      },
      "documentation":"<p>The tag structure that contains a tag key and value.</p>"
    },
    "TagKey":{"type":"string"},
    "TagKeyList":{
      "type":"list",
      "member":{"shape":"TagKey"}
    },
    "TagList":{
      "type":"list",
      "member":{"shape":"Tag"}
    },
    "TagResourceRequest":{
      "type":"structure",
      "required":[
        "ResourceArn",
        "Tags"
      ],
      "members":{
        "ResourceArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>"
        },
        "Tags":{
          "shape":"TagList",
          "documentation":"<p>A list of tag key-value pairs.</p>"
        }
      }
    },
    "TagResourceResponse":{
      "type":"structure",
      "members":{
      }
    },
    "TagValue":{"type":"string"},
    "TagsNumberResults":{
      "type":"integer",
      "min":50
    },
    "TypedAttributeValue":{
      "type":"structure",
      "members":{
        "StringValue":{
          "shape":"StringAttributeValue",
          "documentation":"<p>A string data value.</p>"
        },
        "BinaryValue":{
          "shape":"BinaryAttributeValue",
          "documentation":"<p>A binary data value.</p>"
        },
        "BooleanValue":{
          "shape":"BooleanAttributeValue",
          "documentation":"<p>A Boolean data value.</p>"
        },
        "NumberValue":{
          "shape":"NumberAttributeValue",
          "documentation":"<p>A number data value.</p>"
        },
        "DatetimeValue":{
          "shape":"DatetimeAttributeValue",
          "documentation":"<p>A date and time value.</p>"
        }
      },
      "documentation":"<p>Represents the data for a typed attribute. You can set one, and only one, of the elements. Each attribute in an item is a name-value pair. Attributes have a single value.</p>"
    },
    "TypedAttributeValueRange":{
      "type":"structure",
      "required":[
        "StartMode",
        "EndMode"
      ],
      "members":{
        "StartMode":{
          "shape":"RangeMode",
          "documentation":"<p>The inclusive or exclusive range start.</p>"
        },
        "StartValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The value to start the range at.</p>"
        },
        "EndMode":{
          "shape":"RangeMode",
          "documentation":"<p>The inclusive or exclusive range end.</p>"
        },
        "EndValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The attribute value to terminate the range at.</p>"
        }
      },
      "documentation":"<p>A range of attribute values. For more information, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#rangefilters\">Range Filters</a>.</p>"
    },
    "TypedLinkAttributeDefinition":{
      "type":"structure",
      "required":[
        "Name",
        "Type",
        "RequiredBehavior"
      ],
      "members":{
        "Name":{
          "shape":"AttributeName",
          "documentation":"<p>The unique name of the typed link attribute.</p>"
        },
        "Type":{
          "shape":"FacetAttributeType",
          "documentation":"<p>The type of the attribute.</p>"
        },
        "DefaultValue":{
          "shape":"TypedAttributeValue",
          "documentation":"<p>The default value of the attribute (if configured).</p>"
        },
        "IsImmutable":{
          "shape":"Bool",
          "documentation":"<p>Whether the attribute is mutable or not.</p>"
        },
        "Rules":{
          "shape":"RuleMap",
          "documentation":"<p>Validation rules that are attached to the attribute definition.</p>"
        },
        "RequiredBehavior":{
          "shape":"RequiredAttributeBehavior",
          "documentation":"<p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>"
        }
      },
      "documentation":"<p>A typed link attribute definition.</p>"
    },
    "TypedLinkAttributeDefinitionList":{
      "type":"list",
      "member":{"shape":"TypedLinkAttributeDefinition"}
    },
    "TypedLinkAttributeRange":{
      "type":"structure",
      "required":["Range"],
      "members":{
        "AttributeName":{
          "shape":"AttributeName",
          "documentation":"<p>The unique name of the typed link attribute.</p>"
        },
        "Range":{
          "shape":"TypedAttributeValueRange",
          "documentation":"<p>The range of attribute values that are being selected.</p>"
        }
      },
      "documentation":"<p>Identifies the range of attributes that are used by a specified filter.</p>"
    },
    "TypedLinkAttributeRangeList":{
      "type":"list",
      "member":{"shape":"TypedLinkAttributeRange"}
    },
    "TypedLinkFacet":{
      "type":"structure",
      "required":[
        "Name",
        "Attributes",
        "IdentityAttributeOrder"
      ],
      "members":{
        "Name":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        },
        "Attributes":{
          "shape":"TypedLinkAttributeDefinitionList",
          "documentation":"<p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>"
        },
        "IdentityAttributeOrder":{
          "shape":"AttributeNameList",
          "documentation":"<p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>"
        }
      },
      "documentation":"<p>Defines the typed links structure and its attributes. To create a typed link facet, use the <a>CreateTypedLinkFacet</a> API.</p>"
    },
    "TypedLinkFacetAttributeUpdate":{
      "type":"structure",
      "required":[
        "Attribute",
        "Action"
      ],
      "members":{
        "Attribute":{
          "shape":"TypedLinkAttributeDefinition",
          "documentation":"<p>The attribute to update.</p>"
        },
        "Action":{
          "shape":"UpdateActionType",
          "documentation":"<p>The action to perform when updating the attribute.</p>"
        }
      },
      "documentation":"<p>A typed link facet attribute update.</p>"
    },
    "TypedLinkFacetAttributeUpdateList":{
      "type":"list",
      "member":{"shape":"TypedLinkFacetAttributeUpdate"}
    },
    "TypedLinkName":{
      "type":"string",
      "pattern":"^[a-zA-Z0-9._-]*$"
    },
    "TypedLinkNameList":{
      "type":"list",
      "member":{"shape":"TypedLinkName"}
    },
    "TypedLinkSchemaAndFacetName":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "TypedLinkName"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>"
        },
        "TypedLinkName":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        }
      },
      "documentation":"<p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed link.</p>"
    },
    "TypedLinkSpecifier":{
      "type":"structure",
      "required":[
        "TypedLinkFacet",
        "SourceObjectReference",
        "TargetObjectReference",
        "IdentityAttributeValues"
      ],
      "members":{
        "TypedLinkFacet":{
          "shape":"TypedLinkSchemaAndFacetName",
          "documentation":"<p>Identifies the typed link facet that is associated with the typed link.</p>"
        },
        "SourceObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the source object that the typed link will attach to.</p>"
        },
        "TargetObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>Identifies the target object that the typed link will attach to.</p>"
        },
        "IdentityAttributeValues":{
          "shape":"AttributeNameAndValueList",
          "documentation":"<p>Identifies the attribute value to update.</p>"
        }
      },
      "documentation":"<p>Contains all the information that is used to uniquely identify a typed link. The parameters discussed in this topic are used to uniquely specify the typed link being operated on. The <a>AttachTypedLink</a> API returns a typed link specifier while the <a>DetachTypedLink</a> API accepts one as input. Similarly, the <a>ListIncomingTypedLinks</a> and <a>ListOutgoingTypedLinks</a> API operations provide typed link specifiers as output. You can also construct a typed link specifier from scratch.</p>"
    },
    "TypedLinkSpecifierList":{
      "type":"list",
      "member":{"shape":"TypedLinkSpecifier"}
    },
    "UnsupportedIndexTypeException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that the requested index type is not supported.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "UntagResourceRequest":{
      "type":"structure",
      "required":[
        "ResourceArn",
        "TagKeys"
      ],
      "members":{
        "ResourceArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for directories.</p>"
        },
        "TagKeys":{
          "shape":"TagKeyList",
          "documentation":"<p>Keys of the tag that need to be removed from the resource.</p>"
        }
      }
    },
    "UntagResourceResponse":{
      "type":"structure",
      "members":{
      }
    },
    "UpdateActionType":{
      "type":"string",
      "enum":[
        "CREATE_OR_UPDATE",
        "DELETE"
      ]
    },
    "UpdateFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"FacetName",
          "documentation":"<p>The name of the facet.</p>"
        },
        "AttributeUpdates":{
          "shape":"FacetAttributeUpdateList",
          "documentation":"<p>List of attributes that need to be updated in a given schema <a>Facet</a>. Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update operation to perform. </p>"
        },
        "ObjectType":{
          "shape":"ObjectType",
          "documentation":"<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"
        }
      }
    },
    "UpdateFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "UpdateLinkAttributesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "TypedLinkSpecifier",
        "AttributeUpdates"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "TypedLinkSpecifier":{
          "shape":"TypedLinkSpecifier",
          "documentation":"<p>Allows a typed link specifier to be accepted as input.</p>"
        },
        "AttributeUpdates":{
          "shape":"LinkAttributeUpdateList",
          "documentation":"<p>The attributes update structure.</p>"
        }
      }
    },
    "UpdateLinkAttributesResponse":{
      "type":"structure",
      "members":{
      }
    },
    "UpdateObjectAttributesRequest":{
      "type":"structure",
      "required":[
        "DirectoryArn",
        "ObjectReference",
        "AttributeUpdates"
      ],
      "members":{
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "ObjectReference":{
          "shape":"ObjectReference",
          "documentation":"<p>The reference that identifies the object.</p>"
        },
        "AttributeUpdates":{
          "shape":"ObjectAttributeUpdateList",
          "documentation":"<p>The attributes update structure.</p>"
        }
      }
    },
    "UpdateObjectAttributesResponse":{
      "type":"structure",
      "members":{
        "ObjectIdentifier":{
          "shape":"ObjectIdentifier",
          "documentation":"<p>The <code>ObjectIdentifier</code> of the updated object.</p>"
        }
      }
    },
    "UpdateSchemaRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the development schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"SchemaName",
          "documentation":"<p>The name of the schema.</p>"
        }
      }
    },
    "UpdateSchemaResponse":{
      "type":"structure",
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>"
        }
      }
    },
    "UpdateTypedLinkFacetRequest":{
      "type":"structure",
      "required":[
        "SchemaArn",
        "Name",
        "AttributeUpdates",
        "IdentityAttributeOrder"
      ],
      "members":{
        "SchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The Amazon Resource Name (ARN) that is associated with the schema. For more information, see <a>arns</a>.</p>",
          "location":"header",
          "locationName":"x-amz-data-partition"
        },
        "Name":{
          "shape":"TypedLinkName",
          "documentation":"<p>The unique name of the typed link facet.</p>"
        },
        "AttributeUpdates":{
          "shape":"TypedLinkFacetAttributeUpdateList",
          "documentation":"<p>Attributes update structure.</p>"
        },
        "IdentityAttributeOrder":{
          "shape":"AttributeNameList",
          "documentation":"<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed links considers the order that the attributes are defined on the typed link facet. When providing ranges to a typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range. Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls. For more information about identity attributes, see <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/objectsandlinks.html#typedlink\">Typed link</a>.</p>"
        }
      }
    },
    "UpdateTypedLinkFacetResponse":{
      "type":"structure",
      "members":{
      }
    },
    "UpgradeAppliedSchemaRequest":{
      "type":"structure",
      "required":[
        "PublishedSchemaArn",
        "DirectoryArn"
      ],
      "members":{
        "PublishedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The revision of the published schema to upgrade the directory to.</p>"
        },
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN for the directory to which the upgraded schema will be applied.</p>"
        },
        "DryRun":{
          "shape":"Bool",
          "documentation":"<p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>"
        }
      }
    },
    "UpgradeAppliedSchemaResponse":{
      "type":"structure",
      "members":{
        "UpgradedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the upgraded schema that is returned as part of the response.</p>"
        },
        "DirectoryArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the directory that is returned as part of the response.</p>"
        }
      }
    },
    "UpgradePublishedSchemaRequest":{
      "type":"structure",
      "required":[
        "DevelopmentSchemaArn",
        "PublishedSchemaArn",
        "MinorVersion"
      ],
      "members":{
        "DevelopmentSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the development schema with the changes used for the upgrade.</p>"
        },
        "PublishedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the published schema to be upgraded.</p>"
        },
        "MinorVersion":{
          "shape":"Version",
          "documentation":"<p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>"
        },
        "DryRun":{
          "shape":"Bool",
          "documentation":"<p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>"
        }
      }
    },
    "UpgradePublishedSchemaResponse":{
      "type":"structure",
      "members":{
        "UpgradedSchemaArn":{
          "shape":"Arn",
          "documentation":"<p>The ARN of the upgraded schema that is returned as part of the response.</p>"
        }
      }
    },
    "ValidationException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"ExceptionMessage"}
      },
      "documentation":"<p>Indicates that your request is malformed in some manner. See the exception message.</p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "Version":{
      "type":"string",
      "max":10,
      "min":1,
      "pattern":"^[a-zA-Z0-9._-]*$"
    }
  },
  "documentation":"<fullname>Amazon Cloud Directory</fullname> <p>Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile, and IoT applications. This guide describes the Cloud Directory operations that you can call programmatically and includes detailed information on data types and errors. For information about AWS Directory Services features, see <a href=\"https://aws.amazon.com/directoryservice/\">AWS Directory Service</a> and the <a href=\"http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html\">AWS Directory Service Administration Guide</a>.</p>"
}

]===]))
