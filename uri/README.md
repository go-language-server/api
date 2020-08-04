<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [uri/uri.proto](#uri/uri.proto)
  
    - [URI](#uri.URI)
  
    - [Scheme](#uri.Scheme)
  
  




<a name="uri/uri.proto"/>
<p align="right"><a href="#top">Top</a></p>

 <!-- end services -->

## uri/uri.proto



<a name="uri.URI"/>

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


<a name="uri.Scheme"/>

### Scheme
Scheme is the generic URI syntax scheme.
(-- api-linter: core::0126::upper-snake-values=disabled --)

| Name | Number | Description |
| ---- | ------ | ----------- |
| SCHEME_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| file | 1 | File schema of filesystem path. |
| http | 2 | HTTP schema of http. |
| https | 3 | HTTPS schema of https. |


 <!-- end enums -->

 <!-- end HasExtensions -->


