<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [protocol/protocol.proto](#protocol/protocol.proto)
  
    - [Command](#protocol.Command)
    - [CreateFile](#protocol.CreateFile)
    - [CreateFileOptions](#protocol.CreateFileOptions)
    - [DeleteFile](#protocol.DeleteFile)
    - [DeleteFileOptions](#protocol.DeleteFileOptions)
    - [Diagnostic](#protocol.Diagnostic)
    - [DiagnosticRelatedInformation](#protocol.DiagnosticRelatedInformation)
    - [DocumentFilter](#protocol.DocumentFilter)
    - [DocumentURI](#protocol.DocumentURI)
    - [FileResourceChange](#protocol.FileResourceChange)
    - [Location](#protocol.Location)
    - [LocationLink](#protocol.LocationLink)
    - [MarkupContent](#protocol.MarkupContent)
    - [Position](#protocol.Position)
    - [Range](#protocol.Range)
    - [RenameFile](#protocol.RenameFile)
    - [RenameFileOptions](#protocol.RenameFileOptions)
    - [StaticRegistrationOptions](#protocol.StaticRegistrationOptions)
    - [TextDocumentEdit](#protocol.TextDocumentEdit)
    - [TextDocumentIdentifier](#protocol.TextDocumentIdentifier)
    - [TextDocumentItem](#protocol.TextDocumentItem)
    - [TextDocumentPositionParams](#protocol.TextDocumentPositionParams)
    - [TextDocumentRegistrationOptions](#protocol.TextDocumentRegistrationOptions)
    - [TextDocumentRegistrationOptions.DocumentSelector](#protocol.TextDocumentRegistrationOptions.DocumentSelector)
    - [TextEdit](#protocol.TextEdit)
    - [VersionedTextDocumentIdentifier](#protocol.VersionedTextDocumentIdentifier)
    - [WorkDoneProgressBegin](#protocol.WorkDoneProgressBegin)
    - [WorkDoneProgressEnd](#protocol.WorkDoneProgressEnd)
    - [WorkDoneProgressOptions](#protocol.WorkDoneProgressOptions)
    - [WorkDoneProgressReport](#protocol.WorkDoneProgressReport)
    - [WorkspaceEdit](#protocol.WorkspaceEdit)
    - [WorkspaceEdit.ChangesEntry](#protocol.WorkspaceEdit.ChangesEntry)
    - [WorkspaceEdit.CreateFiles](#protocol.WorkspaceEdit.CreateFiles)
    - [WorkspaceEdit.DeleteFiles](#protocol.WorkspaceEdit.DeleteFiles)
    - [WorkspaceEdit.RenameFiles](#protocol.WorkspaceEdit.RenameFiles)
    - [WorkspaceEdit.TextDocumentEdits](#protocol.WorkspaceEdit.TextDocumentEdits)
    - [WorkspaceEdit.TextEdits](#protocol.WorkspaceEdit.TextEdits)
    - [WorkspaceEditClientCapabilities](#protocol.WorkspaceEditClientCapabilities)
  
    - [DiagnosticSeverity](#protocol.DiagnosticSeverity)
    - [DiagnosticTag](#protocol.DiagnosticTag)
    - [FailureHandlingKind](#protocol.FailureHandlingKind)
    - [MarkupKind](#protocol.MarkupKind)
    - [ResourceOperationKind](#protocol.ResourceOperationKind)
    - [TraceValue](#protocol.TraceValue)
  
  

- [protocol/error.proto](#protocol/error.proto)
  
    - [Error](#protocol.Error)
  
    - [Code](#protocol.Code)
  
  




<a name="protocol/protocol.proto"/>
<p align="right"><a href="#top">Top</a></p>

 <!-- end services -->

## protocol/protocol.proto



<a name="protocol.Command"/>

### Command
Command represents a reference to a command.

Provides a title which will be used to represent a command in the UI. Commands are identified by
a string identifier. The recommended way to handle commands is to implement their execution on
the server side if the client and server provides the corresponding capabilities.
Alternatively the tool extension code could handle the command.

The protocol currently doesn’t specify a set of well-known commands.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | Title of the command, like `save`. |
| command | [string](#string) |  | The identifier of the actual command handler. |
| arguments | [google.protobuf.Any](#google.protobuf.Any) | repeated | Arguments that the command handler should be invoked with. (-- api-linter: core::0140::reserved-words=disabled --) |






<a name="protocol.CreateFile"/>

### CreateFile
CreateFile create file operation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | The kind of CreateFile message. (-- api-linter: core::0192::only-leading-comments=disabled --)  always 'create' |
| uri | [uri.URI](#uri.URI) |  | The resource to create. |
| options | [CreateFileOptions](#protocol.CreateFileOptions) |  | Optional. Additional options |






<a name="protocol.CreateFileOptions"/>

### CreateFileOptions
CreateFileOptions is the options to create a file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| overwrite | [bool](#bool) |  | Optional. Overwrite existing file. Overwrite wins over `ignoreIfExists`. |
| ignore_if_exists | [bool](#bool) |  | Optional. Ignore if exists. |






<a name="protocol.DeleteFile"/>

### DeleteFile
DeleteFile delete file operation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | The kind of DeleteFile message.  always 'delete' |
| uri | [uri.URI](#uri.URI) |  | The file to delete. |
| options | [DeleteFileOptions](#protocol.DeleteFileOptions) |  | Optional. Delete options. |






<a name="protocol.DeleteFileOptions"/>

### DeleteFileOptions
DeleteFileOptions is the options to delete a file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| recursive | [bool](#bool) |  | Optional. Delete the content recursively if a folder is denoted. |
| ignore_if_exists | [bool](#bool) |  | Optional. Ignore the operation if the file doesn't exist. |






<a name="protocol.Diagnostic"/>

### Diagnostic
Diagnostic represents a diagnostic, such as a compiler error or warning. Diagnostic objects are
only valid in the scope of a resource.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [Range](#protocol.Range) |  | The range at which the message applies. |
| severity | [DiagnosticSeverity](#protocol.DiagnosticSeverity) |  | Optional. The diagnostic's severity. Can be omitted. If omitted it is up to the client to interpret diagnostics as error, warning, info or hint. |
| code | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | Optional. The diagnostic's code, which might appear in the user interface. |
| source | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. A human-readable string describing the source of this diagnostic, e.g. 'typescript' or 'super lint'. |
| message | [string](#string) |  | The diagnostic's message. |
| tags | [DiagnosticTag](#protocol.DiagnosticTag) | repeated | Optional. Additional metadata about the diagnostic.  @since 3.15.0 |
| related_information | [DiagnosticRelatedInformation](#protocol.DiagnosticRelatedInformation) | repeated | Optional. An array of related diagnostic information, e.g. when symbol-names within a scope collide all definitions can be marked via this property. (-- api-linter: core::0140::abbreviations=disabled --) |






<a name="protocol.DiagnosticRelatedInformation"/>

### DiagnosticRelatedInformation
DiagnosticRelatedInformation represents a related message and source code location for a
diagnostic.

This should be used to point to code locations that cause or are related to a diagnostics,
e.g when duplicating a symbol in a scope.
(-- api-linter: core::0140::abbreviations=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location | [Location](#protocol.Location) |  | The location of this related diagnostic information. |
| message | [string](#string) |  | The message of this related diagnostic information. |






<a name="protocol.DocumentFilter"/>

### DocumentFilter
DocumentFilter is a document filter denotes a document through properties like language, scheme
or pattern. An example is a filter that applies to TypeScript files on disk. Another example is a
filter the applies to JSON files with name package.json:


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. A language id, like `typescript`.  (-- api-linter: core::0143::standardized-codes=disabled --) |
| scheme | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. A URI [scheme](#uri.Scheme), like `file` or `untitled`. |
| pattern | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. A glob pattern, like `*.{ts,js}`.  Glob patterns can have the following syntax: - `*` to match one or more characters in a path segment - `?` to match on one character in a path segment - `**` to match any number of path segments, including none - `{}` to group conditions (e.g. `**/*.{ts,js}` matches all TypeScript and JavaScript files) - `[]` to declare a range of characters to match in a path segment (e.g., `example.[0-9]` to match on `example.0`, `example.1`, …) - `[!...]` to negate a range of characters to match in a path segment (e.g., `example.[!0-9]` to match on `example.a`, `example.b`, but not `example.0`) |






<a name="protocol.DocumentURI"/>

### DocumentURI
DocumentURI are transferred as strings. The URI’s format is defined in
http://tools.ietf.org/html/rfc3986.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_uri | [string](#string) |  |  |






<a name="protocol.FileResourceChange"/>

### FileResourceChange
FileResourceChange allow servers to create, rename and delete files and folders via the client.

Note that the names talk about files but the operations are supposed to work on files and
folders. This is in line with other naming in the Language Server Protocol (see file watchers
which can watch files and folders).

New in version 3.13.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| create_file | [CreateFile](#protocol.CreateFile) |  | CreateFile create file operation. |
| rename_file | [RenameFile](#protocol.RenameFile) |  | RenameFile rename file operation. |
| delete_file | [DeleteFile](#protocol.DeleteFile) |  | DeleteFile delete file operation. |






<a name="protocol.Location"/>

### Location
Location represents a location inside a resource, such as a line inside a text file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [uri.URI](#uri.URI) |  | The text document's uri. |
| range | [Range](#protocol.Range) |  | The location's range. |






<a name="protocol.LocationLink"/>

### LocationLink
LocationLink represents a link between a source and a target location.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| origin_selection_range | [Range](#protocol.Range) |  | Optional. The span of the origin of this link.  Used as the underlined span for mouse interaction. Defaults to the word range at the mouse position. |
| target_uri | [uri.URI](#uri.URI) |  | The target resource identifier of this link. |
| target_range | [Range](#protocol.Range) |  | The full target range of this link.  If the target for example is a symbol then target range is the range enclosing this symbol not including leading/trailing whitespace but everything else like comments. This information is typically used to highlight the range in the editor. |
| target_selection_range | [Range](#protocol.Range) |  | The range that should be selected and revealed when this link is being followed, e.g the name of a function. Must be contained by the the `targetRange`. See also [DocumentSymbol#range][DocumentSymbol]. |






<a name="protocol.MarkupContent"/>

### MarkupContent
MarkupContent is a MarkupContent literal represents a string value which content can be
represented in different formats. Currently plaintext and markdown are supported formats. A
MarkupContent is usually used in documentation properties of result literals like CompletionItem
or SignatureInformation.

A `MarkupContent` literal represents a string value which content is interpreted base on its
kind flag. Currently the protocol supports `plaintext` and `markdown` as markup kinds.

If the kind is `markdown` then the value can contain fenced code blocks like in GitHub issues.
See https://help.github.com/articles/creating-and-highlighting-code-blocks/#syntax-highlighting

Here is an example how such a string can be constructed using JavaScript / TypeScript:

```markdown
```typescript
let markdown: MarkdownContent = {
 kind: MarkupKind.Markdown,
     value: [
     	'# Header',
     	'Some text',
     	'```typescript',
     	'someCode();',
     	'```'
     ].join('\n')
};
```
```

NOTE: clients might sanitize the return markdown. A client could decide to
remove HTML from the markdown to avoid script execution.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [MarkupKind](#protocol.MarkupKind) |  | The type of the Markup. |
| value | [string](#string) |  | The content itself. |






<a name="protocol.Position"/>

### Position
Position in a text document expressed as zero-based line and zero-based character offset.
A position is between two characters like an ‘insert’ cursor in a editor.
Special values like for example -1 to denote the end of a line are not supported.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| line | [int32](#int32) |  | Line position in a document (zero-based). |
| character | [int32](#int32) |  | Character offset on a line in a document (zero-based). Assuming that the line is represented as a string, the `character` value represents the gap between the `character` and `character + 1`.  If the character value is greater than the line length it defaults back to the line length.  The offsets are based on a UTF-16 string representation. |






<a name="protocol.Range"/>

### Range
Range in a text document expressed as (zero-based) start and end positions.

A range is comparable to a selection in an editor. Therefore the end position is exclusive.
If you want to specify a range that contains a line including the line ending character(s)
then use an end position denoting the start of the next line.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [Position](#protocol.Position) |  | The range's start position. |
| end | [Position](#protocol.Position) |  | The range's end position. |






<a name="protocol.RenameFile"/>

### RenameFile
RenameFile rename file operation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | The kind of RenameFile message.  always 'rename' |
| old_uri | [uri.URI](#uri.URI) |  | The old (existing) location. |
| new_uri | [uri.URI](#uri.URI) |  | The new location. |
| options | [RenameFileOptions](#protocol.RenameFileOptions) |  | Optional. Rename options. |






<a name="protocol.RenameFileOptions"/>

### RenameFileOptions
RenameFileOptions is the options to rename a file.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| overwrite | [bool](#bool) |  | Optional. Overwrite target if existing. Overwrite wins over `ignoreIfExists`. |
| ignore_if_exists | [bool](#bool) |  | Optional. Ignores if target exists. |






<a name="protocol.StaticRegistrationOptions"/>

### StaticRegistrationOptions
StaticRegistrationOptions can be used to register a feature in the initialize result with a given
server control ID to be able to un-register the feature later on. Static registration options to
be returned in the initialize request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. The id used to register the request. The id can be used to deregister the request again. See also Registration#id. |






<a name="protocol.TextDocumentEdit"/>

### TextDocumentEdit
TextDocumentEdit describes textual changes on a single text document.

The text document is referred to as a VersionedTextDocumentIdentifier to allow clients to check
the text document version before an edit is applied. A TextDocumentEdit describes all changes on
a version Si and after they are applied move the document to version Si+1. So the creator of a
TextDocumentEdit doesn’t need to sort the array of edits or do any kind of ordering. However the
edits must be non overlapping.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [VersionedTextDocumentIdentifier](#protocol.VersionedTextDocumentIdentifier) |  | The text document to change. |
| edits | [TextEdit](#protocol.TextEdit) | repeated | The edits to be applied. |






<a name="protocol.TextDocumentIdentifier"/>

### TextDocumentIdentifier
TextDocumentIdentifier text documents are identified using a URI. On the protocol level, URIs are
passed as strings. The corresponding JSON structure looks like this:
(-- api-linter: core::0140::abbreviations=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [uri.URI](#uri.URI) |  | The text document's URI. |






<a name="protocol.TextDocumentItem"/>

### TextDocumentItem
TextDocumentItem an item to transfer a text document from the client to the server.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [uri.URI](#uri.URI) |  | The text document's URI. |
| language_id | [string](#string) |  | The text document's language identifier. |
| version | [int32](#int32) |  | The version number of this document (it will increase after each change, including undo/redo). |
| text | [string](#string) |  | The content of the opened text document. |






<a name="protocol.TextDocumentPositionParams"/>

### TextDocumentPositionParams
TextDocumentPositionParams was TextDocumentPosition in 1.0 with inlined parameters.
A parameter literal used in requests to pass a text document and a position inside that document.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [TextDocumentIdentifier](#protocol.TextDocumentIdentifier) |  | The text document. |
| position | [Position](#protocol.Position) |  | The position inside the text document. |






<a name="protocol.TextDocumentRegistrationOptions"/>

### TextDocumentRegistrationOptions
TextDocumentRegistrationOptions options to dynamically register for requests for a set of text
documents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| selector | [TextDocumentRegistrationOptions.DocumentSelector](#protocol.TextDocumentRegistrationOptions.DocumentSelector) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="protocol.TextDocumentRegistrationOptions.DocumentSelector"/>

### TextDocumentRegistrationOptions.DocumentSelector
DocumentSelector is a document selector is the combination of one or more document filters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_selector | [DocumentFilter](#protocol.DocumentFilter) | repeated |  |






<a name="protocol.TextEdit"/>

### TextEdit
TextEdit is a textual edit applicable to a text document.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [Range](#protocol.Range) |  | The range of the text document to be manipulated. To insert text into a document create a range where start === end. |
| new_text | [string](#string) |  | The string to be inserted. For delete operations use an empty string. |






<a name="protocol.VersionedTextDocumentIdentifier"/>

### VersionedTextDocumentIdentifier
(-- api-linter: core::0140::abbreviations=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_identifier | [TextDocumentIdentifier](#protocol.TextDocumentIdentifier) |  | TextDocumentIdentifier text documents are identified using a URI. On the protocol level, URIs are passed as strings. |
| version | [bool](#bool) |  | Optional. The version number of this document. If a versioned text document identifier is sent from the server to the client and the file is not open in the editor (the server has not received an open notification before) the server can send `null` to indicate that the version is known and the content on disk is the master (as speced with document content ownership).  The version number of a document will increase after each change, including undo/redo. The number doesn't need to be consecutive. |






<a name="protocol.WorkDoneProgressBegin"/>

### WorkDoneProgressBegin
WorkDoneProgressBegin to start progress reporting a $/progress notification with the payload must
be sent.

@since 3.15.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | WorkDoneProgressBegin kind.  always 'begin' |
| title | [string](#string) |  | Mandatory title of the progress operation. Used to briefly inform about the kind of operation being performed.  Examples: "Indexing" or "Linking dependencies". |
| cancellable | [bool](#bool) |  | Optional. Controls if a cancel button should show to allow the user to cancel the long running operation. Clients that don't support cancellation are allowed to ignore the setting. |
| message | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional, more detailed associated progress message. Contains complementary information to the `title`.  Examples: "3/25 files", "project/src/module2", "node_modules/some_dep". If unset, the previous progress message (if any) is still valid. |
| percentage | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | Optional progress percentage to display (value 100 is considered 100%). If not provided infinite progress is assumed and clients are allowed to ignore the `percentage` value in subsequent in report notifications.  The value should be steadily rising. Clients are free to ignore values that are not following this rule. |






<a name="protocol.WorkDoneProgressEnd"/>

### WorkDoneProgressEnd
WorkDoneProgressEnd signaling the end of a progress reporting is done using the payload.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | WorkDoneProgressEnd kind.  always 'end' |
| message | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional, a final message indicating to for example indicate the outcome of the operation. |






<a name="protocol.WorkDoneProgressOptions"/>

### WorkDoneProgressOptions
WorkDoneProgressOptions options to signal work done progress support in server capabilities.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress | [bool](#bool) |  | Optional. |






<a name="protocol.WorkDoneProgressReport"/>

### WorkDoneProgressReport
WorkDoneProgressReport reporting progress is done using the payload.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kind | [string](#string) |  | WorkDoneProgressReport kind.  always 'report' |
| cancellable | [bool](#bool) |  | Optional. Controls enablement state of a cancel button. This property is only valid if a cancel button got requested in the `WorkDoneProgressStart` payload.  Clients that don't support cancellation or don't support control the button's enablement state are allowed to ignore the setting. |
| message | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional, more detailed associated progress message. Contains complementary information to the `title`.  Examples: "3/25 files", "project/src/module2", "node_modules/some_dep". If unset, the previous progress message (if any) is still valid. |
| percentage | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | Optional progress percentage to display (value 100 is considered 100%). If not provided infinite progress is assumed and clients are allowed to ignore the `percentage` value in subsequent in report notifications.  The value should be steadily rising. Clients are free to ignore values that are not following this rule. |






<a name="protocol.WorkspaceEdit"/>

### WorkspaceEdit
WorkspaceEdit a workspace edit represents changes to many resources managed in the workspace. The
edit should either provide changes or documentChanges. If the client can handle versioned
document edits and if documentChanges are present, the latter are preferred over changes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| changes | [WorkspaceEdit.ChangesEntry](#protocol.WorkspaceEdit.ChangesEntry) | repeated | Holds changes to existing resources.  The map key is uri.URI (-- api-linter: core::0192::only-leading-comments=disabled --) |
| text_document_edits | [WorkspaceEdit.TextDocumentEdits](#protocol.WorkspaceEdit.TextDocumentEdits) |  |  |
| create_files | [WorkspaceEdit.CreateFiles](#protocol.WorkspaceEdit.CreateFiles) |  |  |
| rename_files | [WorkspaceEdit.RenameFiles](#protocol.WorkspaceEdit.RenameFiles) |  |  |
| delete_files | [WorkspaceEdit.DeleteFiles](#protocol.WorkspaceEdit.DeleteFiles) |  |  |






<a name="protocol.WorkspaceEdit.ChangesEntry"/>

### WorkspaceEdit.ChangesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [WorkspaceEdit.TextEdits](#protocol.WorkspaceEdit.TextEdits) |  |  |






<a name="protocol.WorkspaceEdit.CreateFiles"/>

### WorkspaceEdit.CreateFiles



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| create_files | [CreateFile](#protocol.CreateFile) | repeated |  |






<a name="protocol.WorkspaceEdit.DeleteFiles"/>

### WorkspaceEdit.DeleteFiles



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| delete_files | [DeleteFile](#protocol.DeleteFile) | repeated |  |






<a name="protocol.WorkspaceEdit.RenameFiles"/>

### WorkspaceEdit.RenameFiles



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rename_files | [RenameFile](#protocol.RenameFile) | repeated |  |






<a name="protocol.WorkspaceEdit.TextDocumentEdits"/>

### WorkspaceEdit.TextDocumentEdits



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_edits | [TextDocumentEdit](#protocol.TextDocumentEdit) | repeated |  |






<a name="protocol.WorkspaceEdit.TextEdits"/>

### WorkspaceEdit.TextEdits



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edits | [TextEdit](#protocol.TextEdit) | repeated |  |






<a name="protocol.WorkspaceEditClientCapabilities"/>

### WorkspaceEditClientCapabilities
WorkspaceEditClientCapabilities ResourceOperationKind and FailureHandlingKind and the client
capability workspace.workspaceEdit.resourceOperations as well as
workspace.workspaceEdit.failureHandling.

New in version 3.13.

The capabilities of a workspace edit has evolved over the time. Clients can describe their
support using the following client capability:
- property path (optional): workspace.workspaceEdit
- property type: WorkspaceEditClientCapabilities defined as follows.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_changes | [bool](#bool) |  | Optional. The client supports versioned document changes in `WorkspaceEdit`s. |
| resource_operations | [ResourceOperationKind](#protocol.ResourceOperationKind) | repeated | The resource operations the client supports. Clients should at least support 'create', 'rename' and 'delete' files and folders.  @since 3.13.0 |
| failure_handling | [FailureHandlingKind](#protocol.FailureHandlingKind) |  | Optional. The failure handling strategy of a client if applying the workspace edit fails.  @since 3.13.0 |





 <!-- end messages -->


<a name="protocol.DiagnosticSeverity"/>

### DiagnosticSeverity
DiagnosticSeverity represents a diagnostic severity level.

| Name | Number | Description |
| ---- | ------ | ----------- |
| DIAGNOSTIC_SEVERITY_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| ERROR | 1 | Reports an error. |
| WARNING | 2 | Reports a warning. |
| INFORMATION | 3 | Reports an information. (-- api-linter: core::0140::abbreviations=disabled --) |
| HINT | 4 | Reports a hint. |



<a name="protocol.DiagnosticTag"/>

### DiagnosticTag
DiagnosticTag is the diagnostic tags.

@since 3.15.0

| Name | Number | Description |
| ---- | ------ | ----------- |
| DIAGNOSTIC_TAG_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| UNNECESSARY | 1 | Unused or unnecessary code.  Clients are allowed to render diagnostics with this tag faded out instead of having an error squiggle. |
| DEPRECATED | 2 | Deprecated or obsolete code.  Clients are allowed to rendered diagnostics with this tag strike through. |



<a name="protocol.FailureHandlingKind"/>

### FailureHandlingKind


| Name | Number | Description |
| ---- | ------ | ----------- |
| FAILURE_HANDLING_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| ABORT | 1 | Applying the workspace change is simply aborted if one of the changes provided fails. All operations executed before the failing operation stay executed. |
| TRANSACTIONAL | 2 | All operations are executed transactional. That means they either all succeed or no changes at all are applied to the workspace. |
| TEXT_ONLY_TRANSACTIONAL | 3 | If the workspace edit contains only textual file changes they are executed transactional. If resource changes (create, rename or delete file) are part of the change the failure handling strategy is abort. |
| UNDO | 4 | The client tries to undo the operations already executed. But there is no guarantee that this is succeeding. |



<a name="protocol.MarkupKind"/>

### MarkupKind
MarkupKind describes the content type that a client supports in various
result literals like `Hover`, `ParameterInfo` or `CompletionItem`.

Please note that `MarkupKinds` must not start with a `$`. This kinds
are reserved for internal usage.

| Name | Number | Description |
| ---- | ------ | ----------- |
| MARKUP_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| PLAIN_TEXT | 1 | Plain text is supported as a content format |
| MARKDOWN | 2 | Markdown is supported as a content format |



<a name="protocol.ResourceOperationKind"/>

### ResourceOperationKind
ResourceOperationKind is the kind of resource operations supported by the client.

| Name | Number | Description |
| ---- | ------ | ----------- |
| RESOURCE_OPERATION_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| CREATE | 1 | Supports creating new files and folders. |
| RENAME | 2 | Supports renaming existing files and folders. |
| DELETE | 3 | Supports deleting existing files and folders. |



<a name="protocol.TraceValue"/>

### TraceValue
TraceValue represents the level of verbosity with which the server systematically reports its
execution trace using $/logTrace notifications. The initial trace value is set by the client at
initialization and can be modified later using the $/setTrace notification.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TRACE_VALUE_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| OFF | 1 | trace is off. |
| MESSAGE | 2 | message trace level. |
| VERBOSE | 3 | verbose trace level. |


 <!-- end enums -->

 <!-- end HasExtensions -->



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


