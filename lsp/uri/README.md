<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [lsp/uri/uri.proto](#lsp/uri/uri.proto)
  
    - [DocumentURI](#lsp.uri.DocumentURI)
    - [URI](#lsp.uri.URI)
  
    - [Scheme](#lsp.uri.Scheme)
  
  




<a name="lsp/uri/uri.proto"/>
<p align="right"><a href="#top">Top</a></p>

 <!-- end services -->

## lsp/uri/uri.proto



<a name="lsp.uri.DocumentURI"/>

### DocumentURI
DocumentURI are transferred as strings. The URI’s format is defined in
http://tools.ietf.org/html/rfc3986.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_uri | [string](#string) |  |  |






<a name="lsp.uri.URI"/>

### URI
URI Uniform Resource Identifier (URI) https://tools.ietf.org/html/rfc3986.

This class is a simple parser which creates the basic component parts
(http://tools.ietf.org/html/rfc3986#section-3) with minimal validation
and encoding.

       foo://example.com:8042/over/there?name=ferret#nose
       \_/   \______________/\_________/ \_________/ \__/
        |           |            |            |        |
     scheme     authority       path        query   fragment
        |   _____________________|__
       / \ /                        \
       urn:example:animal:ferret:nose


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [string](#string) |  |  |





 <!-- end messages -->


<a name="lsp.uri.Scheme"/>

### Scheme
Scheme is the generic URI syntax scheme.

| Name | Number | Description |
| ---- | ------ | ----------- |
| SCHEME_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| SCHEME_FILE | 1 | File schema of filesystem path. |
| SCHEME_HTTP | 2 | HTTP schema of http. |
| SCHEME_HTTPS | 3 | HTTPS schema of https. |


 <!-- end enums -->

 <!-- end HasExtensions -->


