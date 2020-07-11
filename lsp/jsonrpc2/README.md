<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [lsp/jsonrpc2/jsonrpc2.proto](#lsp/jsonrpc2/jsonrpc2.proto)
  
    - [Error](#lsp.jsonrpc2.Error)
    - [Notification](#lsp.jsonrpc2.Notification)
    - [Request](#lsp.jsonrpc2.Request)
    - [Response](#lsp.jsonrpc2.Response)
  
    - [Code](#lsp.jsonrpc2.Code)
  
  




<a name="lsp/jsonrpc2/jsonrpc2.proto"/>
<p align="right"><a href="#top">Top</a></p>

 <!-- end services -->

## lsp/jsonrpc2/jsonrpc2.proto



<a name="lsp.jsonrpc2.Error"/>

### Error
Error represents a JSON-RPC error.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [int32](#int32) |  | A number indicating the error type that occurred.  Which may an enum value of [Code][#code]. |
| message | [string](#string) |  | A string providing a short description of the error. |
| data | [string](#string) |  | A primitive or structured value that contains additional information about the error. Can be omitted. |






<a name="lsp.jsonrpc2.Notification"/>

### Notification
Notification is a processed notification message must not send a response back. They work
like events.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jsonrpc | [string](#string) |  | The jsonrpc version.  The language server protocol always uses “2.0” as the jsonrpc version. |
| method | [string](#string) |  | The method to be invoked. |
| params | [google.protobuf.Any](#google.protobuf.Any) |  | The method's params. |






<a name="lsp.jsonrpc2.Request"/>

### Request
Request to describe a request between the client and the server. Every processed
request must send a response back to the sender of the request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jsonrpc | [string](#string) |  | The jsonrpc version.  The language server protocol always uses “2.0” as the jsonrpc version. |
| id | [int32](#int32) |  | The request id.  proto3 `number` JSON mapping is (u)int32 |
| method | [string](#string) |  | The method to be invoked. |
| params | [google.protobuf.Any](#google.protobuf.Any) |  | The method's params. |






<a name="lsp.jsonrpc2.Response"/>

### Response
Response sent as a result of a request. If a request doesn’t provide a result value the
receiver of a request still needs to return a response message to conform to the JSON RPC
specification. The result property of the ResponseMessage should be set to null in this case
to signal a successful request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| jsonrpc | [string](#string) |  | The jsonrpc version.  The language server protocol always uses “2.0” as the jsonrpc version. |
| id | [int32](#int32) |  | The request id.  proto3 `number` JSON mapping is (u)int32 |
| result | [google.protobuf.Any](#google.protobuf.Any) |  | The result of a request. This member is require on success. This member MUST NOT exist if there was an error invoking the method. |
| error | [Error](#lsp.jsonrpc2.Error) |  | The error object in case a request fails. |





 <!-- end messages -->


<a name="lsp.jsonrpc2.Code"/>

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


