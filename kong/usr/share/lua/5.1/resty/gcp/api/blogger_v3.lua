return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/blogger"] = {
          description = "Manage your Blogger account",
        },
        ["https://www.googleapis.com/auth/blogger.readonly"] = {
          description = "View your Blogger account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://blogger.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Blogger",
  description = "The Blogger API provides access to posts, comments and pages of a Blogger blog.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/blogger/docs/3.0/getting_started",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "blogger:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://blogger.mtls.googleapis.com/",
  name = "blogger",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    ["$.xgafv"] = {
      description = "V1 error format.",
      enum = {
        "1",
        "2",
      },
      enumDescriptions = {
        "v1 error format",
        "v2 error format",
      },
      location = "query",
      type = "string",
    },
    access_token = {
      description = "OAuth access token.",
      location = "query",
      type = "string",
    },
    alt = {
      default = "json",
      description = "Data format for response.",
      enum = {
        "json",
        "media",
        "proto",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
        "Media download with context-dependent Content-Type",
        "Responses with Content-Type of application/x-protobuf",
      },
      location = "query",
      type = "string",
    },
    callback = {
      description = "JSONP",
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    uploadType = {
      description = "Legacy upload protocol for media (e.g. \"media\", \"multipart\").",
      location = "query",
      type = "string",
    },
    upload_protocol = {
      description = "Upload protocol for media (e.g. \"raw\", \"multipart\").",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    blogUserInfos = {
      methods = {
        get = {
          description = "Gets one blog and user info pair by blog id and user id.",
          flatPath = "v3/users/{userId}/blogs/{blogId}",
          httpMethod = "GET",
          id = "blogger.blogUserInfos.get",
          parameterOrder = {
            "userId",
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            maxPosts = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            userId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/users/{userId}/blogs/{blogId}",
          response = {
            ["$ref"] = "BlogUserInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
      },
    },
    blogs = {
      methods = {
        get = {
          description = "Gets a blog by id.",
          flatPath = "v3/blogs/{blogId}",
          httpMethod = "GET",
          id = "blogger.blogs.get",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            maxPosts = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}",
          response = {
            ["$ref"] = "Blog",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        getByUrl = {
          description = "Gets a blog by url.",
          flatPath = "v3/blogs/byurl",
          httpMethod = "GET",
          id = "blogger.blogs.getByUrl",
          parameterOrder = {
            "url",
          },
          parameters = {
            url = {
              location = "query",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/byurl",
          response = {
            ["$ref"] = "Blog",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        listByUser = {
          description = "Lists blogs by user.",
          flatPath = "v3/users/{userId}/blogs",
          httpMethod = "GET",
          id = "blogger.blogs.listByUser",
          parameterOrder = {
            "userId",
          },
          parameters = {
            fetchUserInfo = {
              location = "query",
              type = "boolean",
            },
            role = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            status = {
              default = "LIVE",
              description = "Default value of status is LIVE.",
              enum = {
                "LIVE",
                "DELETED",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            userId = {
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/users/{userId}/blogs",
          response = {
            ["$ref"] = "BlogList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
      },
    },
    comments = {
      methods = {
        approve = {
          description = "Marks a comment as not spam by blog id, post id and comment id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve",
          httpMethod = "POST",
          id = "blogger.comments.approve",
          parameterOrder = {
            "blogId",
            "postId",
            "commentId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            commentId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        delete = {
          description = "Deletes a comment by blog id, post id and comment id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}",
          httpMethod = "DELETE",
          id = "blogger.comments.delete",
          parameterOrder = {
            "blogId",
            "postId",
            "commentId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            commentId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}",
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        get = {
          description = "Gets a comment by id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}",
          httpMethod = "GET",
          id = "blogger.comments.get",
          parameterOrder = {
            "blogId",
            "postId",
            "commentId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            commentId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        list = {
          description = "Lists comments.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments",
          httpMethod = "GET",
          id = "blogger.comments.list",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            endDate = {
              location = "query",
              type = "string",
            },
            fetchBodies = {
              location = "query",
              type = "boolean",
            },
            maxResults = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              location = "query",
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            startDate = {
              location = "query",
              type = "string",
            },
            status = {
              enum = {
                "LIVE",
                "EMPTIED",
                "PENDING",
                "SPAM",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments",
          response = {
            ["$ref"] = "CommentList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        listByBlog = {
          description = "Lists comments by blog.",
          flatPath = "v3/blogs/{blogId}/comments",
          httpMethod = "GET",
          id = "blogger.comments.listByBlog",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            endDate = {
              location = "query",
              type = "string",
            },
            fetchBodies = {
              location = "query",
              type = "boolean",
            },
            maxResults = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              location = "query",
              type = "string",
            },
            startDate = {
              location = "query",
              type = "string",
            },
            status = {
              enum = {
                "LIVE",
                "EMPTIED",
                "PENDING",
                "SPAM",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/comments",
          response = {
            ["$ref"] = "CommentList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        markAsSpam = {
          description = "Marks a comment as spam by blog id, post id and comment id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam",
          httpMethod = "POST",
          id = "blogger.comments.markAsSpam",
          parameterOrder = {
            "blogId",
            "postId",
            "commentId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            commentId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        removeContent = {
          description = "Removes the content of a comment by blog id, post id and comment id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent",
          httpMethod = "POST",
          id = "blogger.comments.removeContent",
          parameterOrder = {
            "blogId",
            "postId",
            "commentId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            commentId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
      },
    },
    pageViews = {
      methods = {
        get = {
          description = "Gets page views by blog id.",
          flatPath = "v3/blogs/{blogId}/pageviews",
          httpMethod = "GET",
          id = "blogger.pageViews.get",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            range = {
              enum = {
                "all",
                "30DAYS",
                "7DAYS",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/pageviews",
          response = {
            ["$ref"] = "Pageviews",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
      },
    },
    pages = {
      methods = {
        delete = {
          description = "Deletes a page by blog id and page id.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}",
          httpMethod = "DELETE",
          id = "blogger.pages.delete",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
            useTrash = {
              description = "Move to Trash if possible",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}",
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        get = {
          description = "Gets a page by blog id and page id.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}",
          httpMethod = "GET",
          id = "blogger.pages.get",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}",
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        insert = {
          description = "Inserts a page.",
          flatPath = "v3/blogs/{blogId}/pages",
          httpMethod = "POST",
          id = "blogger.pages.insert",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            isDraft = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/pages",
          request = {
            ["$ref"] = "Page",
          },
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        list = {
          description = "Lists pages.",
          flatPath = "v3/blogs/{blogId}/pages",
          httpMethod = "GET",
          id = "blogger.pages.list",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBodies = {
              location = "query",
              type = "boolean",
            },
            maxResults = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              location = "query",
              type = "string",
            },
            status = {
              enum = {
                "LIVE",
                "DRAFT",
                "SOFT_TRASHED",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/pages",
          response = {
            ["$ref"] = "PageList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        patch = {
          description = "Patches a page.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}",
          httpMethod = "PATCH",
          id = "blogger.pages.patch",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
            publish = {
              location = "query",
              type = "boolean",
            },
            revert = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}",
          request = {
            ["$ref"] = "Page",
          },
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        publish = {
          description = "Publishes a page.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}/publish",
          httpMethod = "POST",
          id = "blogger.pages.publish",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}/publish",
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        revert = {
          description = "Reverts a published or scheduled page to draft state.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}/revert",
          httpMethod = "POST",
          id = "blogger.pages.revert",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}/revert",
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        update = {
          description = "Updates a page by blog id and page id.",
          flatPath = "v3/blogs/{blogId}/pages/{pageId}",
          httpMethod = "PUT",
          id = "blogger.pages.update",
          parameterOrder = {
            "blogId",
            "pageId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              location = "path",
              required = true,
              type = "string",
            },
            publish = {
              location = "query",
              type = "boolean",
            },
            revert = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/pages/{pageId}",
          request = {
            ["$ref"] = "Page",
          },
          response = {
            ["$ref"] = "Page",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
      },
    },
    postUserInfos = {
      methods = {
        get = {
          description = "Gets one post and user info pair, by post_id and user_id.",
          flatPath = "v3/users/{userId}/blogs/{blogId}/posts/{postId}",
          httpMethod = "GET",
          id = "blogger.postUserInfos.get",
          parameterOrder = {
            "userId",
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            maxComments = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/users/{userId}/blogs/{blogId}/posts/{postId}",
          response = {
            ["$ref"] = "PostUserInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        list = {
          description = "Lists post and user info pairs.",
          flatPath = "v3/users/{userId}/blogs/{blogId}/posts",
          httpMethod = "GET",
          id = "blogger.postUserInfos.list",
          parameterOrder = {
            "userId",
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            endDate = {
              location = "query",
              type = "string",
            },
            fetchBodies = {
              default = "false",
              location = "query",
              type = "boolean",
            },
            labels = {
              location = "query",
              type = "string",
            },
            maxResults = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            orderBy = {
              default = "PUBLISHED",
              enum = {
                "ORDER_BY_UNSPECIFIED",
                "PUBLISHED",
                "UPDATED",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              location = "query",
              type = "string",
            },
            startDate = {
              location = "query",
              type = "string",
            },
            status = {
              enum = {
                "LIVE",
                "DRAFT",
                "SCHEDULED",
                "SOFT_TRASHED",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            userId = {
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/users/{userId}/blogs/{blogId}/posts",
          response = {
            ["$ref"] = "PostUserInfosList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
      },
    },
    posts = {
      methods = {
        delete = {
          description = "Deletes a post by blog id and post id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}",
          httpMethod = "DELETE",
          id = "blogger.posts.delete",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            useTrash = {
              description = "Move to Trash if possible",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}",
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        get = {
          description = "Gets a post by blog id and post id",
          flatPath = "v3/blogs/{blogId}/posts/{postId}",
          httpMethod = "GET",
          id = "blogger.posts.get",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBody = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            fetchImages = {
              location = "query",
              type = "boolean",
            },
            maxComments = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}",
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        getByPath = {
          description = "Gets a post by path.",
          flatPath = "v3/blogs/{blogId}/posts/bypath",
          httpMethod = "GET",
          id = "blogger.posts.getByPath",
          parameterOrder = {
            "blogId",
            "path",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            maxComments = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            path = {
              location = "query",
              required = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/bypath",
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        insert = {
          description = "Inserts a post.",
          flatPath = "v3/blogs/{blogId}/posts",
          httpMethod = "POST",
          id = "blogger.posts.insert",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBody = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            fetchImages = {
              location = "query",
              type = "boolean",
            },
            isDraft = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/posts",
          request = {
            ["$ref"] = "Post",
          },
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        list = {
          description = "Lists posts.",
          flatPath = "v3/blogs/{blogId}/posts",
          httpMethod = "GET",
          id = "blogger.posts.list",
          parameterOrder = {
            "blogId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            endDate = {
              location = "query",
              type = "string",
            },
            fetchBodies = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            fetchImages = {
              location = "query",
              type = "boolean",
            },
            labels = {
              location = "query",
              type = "string",
            },
            maxResults = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            orderBy = {
              default = "PUBLISHED",
              enum = {
                "ORDER_BY_UNSPECIFIED",
                "PUBLISHED",
                "UPDATED",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              location = "query",
              type = "string",
            },
            sortOption = {
              default = "DESCENDING",
              description = "Sort direction applied to post list.",
              enum = {
                "SORT_OPTION_UNSPECIFIED",
                "DESCENDING",
                "ASCENDING",
              },
              enumDescriptions = {
                "The unspecified sort option.",
                "The option to sort posts in descending order in time.",
                "The option to sort posts in ascending order in time.",
              },
              location = "query",
              type = "string",
            },
            startDate = {
              location = "query",
              type = "string",
            },
            status = {
              enum = {
                "LIVE",
                "DRAFT",
                "SCHEDULED",
                "SOFT_TRASHED",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            view = {
              enum = {
                "VIEW_TYPE_UNSPECIFIED",
                "READER",
                "AUTHOR",
                "ADMIN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts",
          response = {
            ["$ref"] = "PostList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        patch = {
          description = "Patches a post.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}",
          httpMethod = "PATCH",
          id = "blogger.posts.patch",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBody = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            fetchImages = {
              location = "query",
              type = "boolean",
            },
            maxComments = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            publish = {
              location = "query",
              type = "boolean",
            },
            revert = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}",
          request = {
            ["$ref"] = "Post",
          },
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        publish = {
          description = "Publishes a post.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/publish",
          httpMethod = "POST",
          id = "blogger.posts.publish",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            publishDate = {
              location = "query",
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/publish",
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        revert = {
          description = "Reverts a published or scheduled post to draft state.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}/revert",
          httpMethod = "POST",
          id = "blogger.posts.revert",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}/revert",
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
        search = {
          description = "Searches for posts matching given query terms in the specified blog.",
          flatPath = "v3/blogs/{blogId}/posts/search",
          httpMethod = "GET",
          id = "blogger.posts.search",
          parameterOrder = {
            "blogId",
            "q",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBodies = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            orderBy = {
              default = "PUBLISHED",
              enum = {
                "ORDER_BY_UNSPECIFIED",
                "PUBLISHED",
                "UPDATED",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            q = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "v3/blogs/{blogId}/posts/search",
          response = {
            ["$ref"] = "PostList",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
        update = {
          description = "Updates a post by blog id and post id.",
          flatPath = "v3/blogs/{blogId}/posts/{postId}",
          httpMethod = "PUT",
          id = "blogger.posts.update",
          parameterOrder = {
            "blogId",
            "postId",
          },
          parameters = {
            blogId = {
              location = "path",
              required = true,
              type = "string",
            },
            fetchBody = {
              default = "true",
              location = "query",
              type = "boolean",
            },
            fetchImages = {
              location = "query",
              type = "boolean",
            },
            maxComments = {
              format = "uint32",
              location = "query",
              type = "integer",
            },
            postId = {
              location = "path",
              required = true,
              type = "string",
            },
            publish = {
              location = "query",
              type = "boolean",
            },
            revert = {
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/blogs/{blogId}/posts/{postId}",
          request = {
            ["$ref"] = "Post",
          },
          response = {
            ["$ref"] = "Post",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
          },
        },
      },
    },
    users = {
      methods = {
        get = {
          description = "Gets one user by user_id.",
          flatPath = "v3/users/{userId}",
          httpMethod = "GET",
          id = "blogger.users.get",
          parameterOrder = {
            "userId",
          },
          parameters = {
            userId = {
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v3/users/{userId}",
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/blogger",
            "https://www.googleapis.com/auth/blogger.readonly",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://blogger.googleapis.com/",
  schemas = {
    Blog = {
      id = "Blog",
      properties = {
        customMetaData = {
          description = "The JSON custom meta-data for the Blog.",
          type = "string",
        },
        description = {
          description = "The description of this blog. This is displayed underneath the title.",
          type = "string",
        },
        id = {
          description = "The identifier for this resource.",
          type = "string",
        },
        kind = {
          description = "The kind of this entry. Always blogger#blog.",
          type = "string",
        },
        locale = {
          description = "The locale this Blog is set to.",
          properties = {
            country = {
              description = "The country this blog's locale is set to.",
              type = "string",
            },
            language = {
              description = "The language this blog is authored in.",
              type = "string",
            },
            variant = {
              description = "The language variant this blog is authored in.",
              type = "string",
            },
          },
          type = "object",
        },
        name = {
          description = "The name of this blog. This is displayed as the title.",
          type = "string",
        },
        pages = {
          description = "The container of pages in this blog.",
          properties = {
            selfLink = {
              description = "The URL of the container for pages in this blog.",
              type = "string",
            },
            totalItems = {
              description = "The count of pages in this blog.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        posts = {
          description = "The container of posts in this blog.",
          properties = {
            items = {
              description = "The List of Posts for this Blog.",
              items = {
                ["$ref"] = "Post",
              },
              type = "array",
            },
            selfLink = {
              description = "The URL of the container for posts in this blog.",
              type = "string",
            },
            totalItems = {
              description = "The count of posts in this blog.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        published = {
          description = "RFC 3339 date-time when this blog was published.",
          type = "string",
        },
        selfLink = {
          description = "The API REST URL to fetch this resource from.",
          type = "string",
        },
        status = {
          description = "The status of the blog.",
          enum = {
            "LIVE",
            "DELETED",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        updated = {
          description = "RFC 3339 date-time when this blog was last updated.",
          type = "string",
        },
        url = {
          description = "The URL where this blog is published.",
          type = "string",
        },
      },
      type = "object",
    },
    BlogList = {
      id = "BlogList",
      properties = {
        blogUserInfos = {
          description = "Admin level list of blog per-user information.",
          items = {
            ["$ref"] = "BlogUserInfo",
          },
          type = "array",
        },
        items = {
          description = "The list of Blogs this user has Authorship or Admin rights over.",
          items = {
            ["$ref"] = "Blog",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entity. Always blogger#blogList.",
          type = "string",
        },
      },
      type = "object",
    },
    BlogPerUserInfo = {
      id = "BlogPerUserInfo",
      properties = {
        blogId = {
          description = "ID of the Blog resource.",
          type = "string",
        },
        hasAdminAccess = {
          description = "True if the user has Admin level access to the blog.",
          type = "boolean",
        },
        kind = {
          description = "The kind of this entity. Always blogger#blogPerUserInfo.",
          type = "string",
        },
        photosAlbumKey = {
          description = "The Photo Album Key for the user when adding photos to the blog.",
          type = "string",
        },
        role = {
          description = "Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER).",
          enum = {
            "VIEW_TYPE_UNSPECIFIED",
            "READER",
            "AUTHOR",
            "ADMIN",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        userId = {
          description = "ID of the User.",
          type = "string",
        },
      },
      type = "object",
    },
    BlogUserInfo = {
      id = "BlogUserInfo",
      properties = {
        blog = {
          ["$ref"] = "Blog",
          description = "The Blog resource.",
        },
        blog_user_info = {
          ["$ref"] = "BlogPerUserInfo",
          description = "Information about a User for the Blog.",
        },
        kind = {
          description = "The kind of this entity. Always blogger#blogUserInfo.",
          type = "string",
        },
      },
      type = "object",
    },
    Comment = {
      id = "Comment",
      properties = {
        author = {
          description = "The author of this Comment.",
          properties = {
            displayName = {
              description = "The display name.",
              type = "string",
            },
            id = {
              description = "The identifier of the creator.",
              type = "string",
            },
            image = {
              description = "The creator's avatar.",
              properties = {
                url = {
                  description = "The creator's avatar URL.",
                  type = "string",
                },
              },
              type = "object",
            },
            url = {
              description = "The URL of the creator's Profile page.",
              type = "string",
            },
          },
          type = "object",
        },
        blog = {
          description = "Data about the blog containing this comment.",
          properties = {
            id = {
              description = "The identifier of the blog containing this comment.",
              type = "string",
            },
          },
          type = "object",
        },
        content = {
          description = "The actual content of the comment. May include HTML markup.",
          type = "string",
        },
        id = {
          description = "The identifier for this resource.",
          type = "string",
        },
        inReplyTo = {
          description = "Data about the comment this is in reply to.",
          properties = {
            id = {
              description = "The identified of the parent of this comment.",
              type = "string",
            },
          },
          type = "object",
        },
        kind = {
          description = "The kind of this entry. Always blogger#comment.",
          type = "string",
        },
        post = {
          description = "Data about the post containing this comment.",
          properties = {
            id = {
              description = "The identifier of the post containing this comment.",
              type = "string",
            },
          },
          type = "object",
        },
        published = {
          description = "RFC 3339 date-time when this comment was published.",
          type = "string",
        },
        selfLink = {
          description = "The API REST URL to fetch this resource from.",
          type = "string",
        },
        status = {
          description = "The status of the comment (only populated for admin users).",
          enum = {
            "LIVE",
            "EMPTIED",
            "PENDING",
            "SPAM",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        updated = {
          description = "RFC 3339 date-time when this comment was last updated.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentList = {
      id = "CommentList",
      properties = {
        etag = {
          description = "Etag of the response.",
          type = "string",
        },
        items = {
          description = "The List of Comments for a Post.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entry. Always blogger#commentList.",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to fetch the next page, if one exists.",
          type = "string",
        },
        prevPageToken = {
          description = "Pagination token to fetch the previous page, if one exists.",
          type = "string",
        },
      },
      type = "object",
    },
    Page = {
      id = "Page",
      properties = {
        author = {
          description = "The author of this Page.",
          properties = {
            displayName = {
              description = "The display name.",
              type = "string",
            },
            id = {
              description = "The identifier of the creator.",
              type = "string",
            },
            image = {
              description = "The creator's avatar.",
              properties = {
                url = {
                  description = "The creator's avatar URL.",
                  type = "string",
                },
              },
              type = "object",
            },
            url = {
              description = "The URL of the creator's Profile page.",
              type = "string",
            },
          },
          type = "object",
        },
        blog = {
          description = "Data about the blog containing this Page.",
          properties = {
            id = {
              description = "The identifier of the blog containing this page.",
              type = "string",
            },
          },
          type = "object",
        },
        content = {
          description = "The body content of this Page, in HTML.",
          type = "string",
        },
        etag = {
          description = "Etag of the resource.",
          type = "string",
        },
        id = {
          description = "The identifier for this resource.",
          type = "string",
        },
        kind = {
          description = "The kind of this entity. Always blogger#page.",
          type = "string",
        },
        published = {
          description = "RFC 3339 date-time when this Page was published.",
          type = "string",
        },
        selfLink = {
          description = "The API REST URL to fetch this resource from.",
          type = "string",
        },
        status = {
          description = "The status of the page for admin resources (either LIVE or DRAFT).",
          enum = {
            "LIVE",
            "DRAFT",
            "SOFT_TRASHED",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        title = {
          description = "The title of this entity. This is the name displayed in the Admin user interface.",
          type = "string",
        },
        trashed = {
          description = "RFC 3339 date-time when this Page was trashed.",
          type = "string",
        },
        updated = {
          description = "RFC 3339 date-time when this Page was last updated.",
          type = "string",
        },
        url = {
          description = "The URL that this Page is displayed at.",
          type = "string",
        },
      },
      type = "object",
    },
    PageList = {
      id = "PageList",
      properties = {
        etag = {
          description = "Etag of the response.",
          type = "string",
        },
        items = {
          description = "The list of Pages for a Blog.",
          items = {
            ["$ref"] = "Page",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entity. Always blogger#pageList.",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to fetch the next page, if one exists.",
          type = "string",
        },
      },
      type = "object",
    },
    Pageviews = {
      id = "Pageviews",
      properties = {
        blogId = {
          description = "Blog Id.",
          type = "string",
        },
        counts = {
          description = "The container of posts in this blog.",
          items = {
            properties = {
              count = {
                description = "Count of page views for the given time range.",
                format = "int64",
                type = "string",
              },
              timeRange = {
                description = "Time range the given count applies to.",
                enum = {
                  "ALL_TIME",
                  "THIRTY_DAYS",
                  "SEVEN_DAYS",
                },
                enumDescriptions = {
                  "",
                  "",
                  "",
                },
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entry. Always blogger#page_views.",
          type = "string",
        },
      },
      type = "object",
    },
    Post = {
      id = "Post",
      properties = {
        author = {
          description = "The author of this Post.",
          properties = {
            displayName = {
              description = "The display name.",
              type = "string",
            },
            id = {
              description = "The identifier of the creator.",
              type = "string",
            },
            image = {
              description = "The creator's avatar.",
              properties = {
                url = {
                  description = "The creator's avatar URL.",
                  type = "string",
                },
              },
              type = "object",
            },
            url = {
              description = "The URL of the creator's Profile page.",
              type = "string",
            },
          },
          type = "object",
        },
        blog = {
          description = "Data about the blog containing this Post.",
          properties = {
            id = {
              description = "The identifier of the Blog that contains this Post.",
              type = "string",
            },
          },
          type = "object",
        },
        content = {
          description = "The content of the Post. May contain HTML markup.",
          type = "string",
        },
        customMetaData = {
          description = "The JSON meta-data for the Post.",
          type = "string",
        },
        etag = {
          description = "Etag of the resource.",
          type = "string",
        },
        id = {
          description = "The identifier of this Post.",
          type = "string",
        },
        images = {
          description = "Display image for the Post.",
          items = {
            properties = {
              url = {
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entity. Always blogger#post.",
          type = "string",
        },
        labels = {
          description = "The list of labels this Post was tagged with.",
          items = {
            type = "string",
          },
          type = "array",
        },
        location = {
          description = "The location for geotagged posts.",
          properties = {
            lat = {
              description = "Location's latitude.",
              format = "double",
              type = "number",
            },
            lng = {
              description = "Location's longitude.",
              format = "double",
              type = "number",
            },
            name = {
              description = "Location name.",
              type = "string",
            },
            span = {
              description = "Location's viewport span. Can be used when rendering a map preview.",
              type = "string",
            },
          },
          type = "object",
        },
        published = {
          description = "RFC 3339 date-time when this Post was published.",
          type = "string",
        },
        readerComments = {
          description = "Comment control and display setting for readers of this post.",
          enum = {
            "ALLOW",
            "DONT_ALLOW_SHOW_EXISTING",
            "DONT_ALLOW_HIDE_EXISTING",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        replies = {
          description = "The container of comments on this Post.",
          properties = {
            items = {
              description = "The List of Comments for this Post.",
              items = {
                ["$ref"] = "Comment",
              },
              type = "array",
            },
            selfLink = {
              description = "The URL of the comments on this post.",
              type = "string",
            },
            totalItems = {
              description = "The count of comments on this post.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "The API REST URL to fetch this resource from.",
          type = "string",
        },
        status = {
          description = "Status of the post. Only set for admin-level requests.",
          enum = {
            "LIVE",
            "DRAFT",
            "SCHEDULED",
            "SOFT_TRASHED",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        title = {
          description = "The title of the Post.",
          type = "string",
        },
        titleLink = {
          description = "The title link URL, similar to atom's related link.",
          type = "string",
        },
        trashed = {
          description = "RFC 3339 date-time when this Post was last trashed.",
          type = "string",
        },
        updated = {
          description = "RFC 3339 date-time when this Post was last updated.",
          type = "string",
        },
        url = {
          description = "The URL where this Post is displayed.",
          type = "string",
        },
      },
      type = "object",
    },
    PostList = {
      id = "PostList",
      properties = {
        etag = {
          description = "Etag of the response.",
          type = "string",
        },
        items = {
          description = "The list of Posts for this Blog.",
          items = {
            ["$ref"] = "Post",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entity. Always blogger#postList.",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to fetch the next page, if one exists.",
          type = "string",
        },
        prevPageToken = {
          description = "Pagination token to fetch the previous page, if one exists.",
          type = "string",
        },
      },
      type = "object",
    },
    PostPerUserInfo = {
      id = "PostPerUserInfo",
      properties = {
        blogId = {
          description = "ID of the Blog that the post resource belongs to.",
          type = "string",
        },
        hasEditAccess = {
          description = "True if the user has Author level access to the post.",
          type = "boolean",
        },
        kind = {
          description = "The kind of this entity. Always blogger#postPerUserInfo.",
          type = "string",
        },
        postId = {
          description = "ID of the Post resource.",
          type = "string",
        },
        userId = {
          description = "ID of the User.",
          type = "string",
        },
      },
      type = "object",
    },
    PostUserInfo = {
      id = "PostUserInfo",
      properties = {
        kind = {
          description = "The kind of this entity. Always blogger#postUserInfo.",
          type = "string",
        },
        post = {
          ["$ref"] = "Post",
          description = "The Post resource.",
        },
        post_user_info = {
          ["$ref"] = "PostPerUserInfo",
          description = "Information about a User for the Post.",
        },
      },
      type = "object",
    },
    PostUserInfosList = {
      id = "PostUserInfosList",
      properties = {
        items = {
          description = "The list of Posts with User information for the post, for this Blog.",
          items = {
            ["$ref"] = "PostUserInfo",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this entity. Always blogger#postList.",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to fetch the next page, if one exists.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      id = "User",
      properties = {
        about = {
          description = "Profile summary information.",
          type = "string",
        },
        blogs = {
          description = "The container of blogs for this user.",
          properties = {
            selfLink = {
              description = "The URL of the Blogs for this user.",
              type = "string",
            },
          },
          type = "object",
        },
        created = {
          description = "The timestamp of when this profile was created, in seconds since epoch.",
          type = "string",
        },
        displayName = {
          description = "The display name.",
          type = "string",
        },
        id = {
          description = "The identifier for this User.",
          type = "string",
        },
        kind = {
          description = "The kind of this entity. Always blogger#user.",
          type = "string",
        },
        locale = {
          description = "This user's locale",
          properties = {
            country = {
              description = "The country this blog's locale is set to.",
              type = "string",
            },
            language = {
              description = "The language this blog is authored in.",
              type = "string",
            },
            variant = {
              description = "The language variant this blog is authored in.",
              type = "string",
            },
          },
          type = "object",
        },
        selfLink = {
          description = "The API REST URL to fetch this resource from.",
          type = "string",
        },
        url = {
          description = "The user's profile page.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Blogger API",
  version = "v3",
}
