<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [protocol/error.proto](#protocol/error.proto)
  
    - [Error](#protocol.Error)
  
    - [Code](#protocol.Code)
  
  




<a name="protocol/error.proto"/>
<p align="right"><a href="#top">Top</a></p>

 <!-- end services -->

## protocol/error.proto



<a name="protocol.Error"/>

### Error
Error represents a JSON-RPC error.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [int32](#int32) |  | A number indicating the error type that occurred.  Which may an enum value of [Code][#code]. |
| message | [string](#string) |  | A string providing a short description of the error. |
| data | [string](#string) |  | A primitive or structured value that contains additional information about the error. Can be omitted. |





 <!-- end messages -->


<a name="protocol.Code"/>

### Code
Code is the error code in case a request fails.

| Name | Number | Description |
| ---- | ------ | ----------- |
| OK | 0 | Conventional default for enums. Do not use this. |
| PARSE_ERROR | -32700 | Invalid JSON was received by the server. An error occurred on the server while parsing the JSON text. |
| INVALID_REQUEST | -32600 | The JSON sent is not a valid Request object. |
| METHOD_NOT_FOUND | -32601 | The method does not exist / is not available. |
| INVALID_PARAMS | -32602 | Invalid method parameter(s). |
| INTERNAL_ERROR | -32603 | Internal JSON-RPC error. |
| SERVER_NOT_INITIALIZED | -32002 | Server not initialized. |
| UNKNOWN_ERROR_CODE | -32001 | Unknown error. |
| REQUEST_CANCELLED | -32800 | Cancelled request. |
| CONTENT_MODIFIED | -32801 | Modified content. |


 <!-- end enums -->

 <!-- end HasExtensions -->


