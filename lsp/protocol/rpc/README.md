<!-- protoc-gen-doc template https://github.com/pseudomuto/protoc-gen-doc/tree/master/resources -->
# Protocol Documentation
<a name="top"/>

## Table of Contents

- [lsp/protocol/rpc/rpc.proto](#lsp/protocol/rpc/rpc.proto)
    - [LanguageServerProtocol](#lsp.protocol.rpc.LanguageServerProtocol)
  
    - [ApplyWorkspaceEditRequest](#lsp.protocol.rpc.ApplyWorkspaceEditRequest)
    - [ApplyWorkspaceEditResponse](#lsp.protocol.rpc.ApplyWorkspaceEditResponse)
    - [CallHierarchyClientCapabilities](#lsp.protocol.rpc.CallHierarchyClientCapabilities)
    - [CallHierarchyIncomingCall](#lsp.protocol.rpc.CallHierarchyIncomingCall)
    - [CallHierarchyIncomingCallsRequest](#lsp.protocol.rpc.CallHierarchyIncomingCallsRequest)
    - [CallHierarchyIncomingCallsResponse](#lsp.protocol.rpc.CallHierarchyIncomingCallsResponse)
    - [CallHierarchyIncomingCallsResponse.PartialResult](#lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.PartialResult)
    - [CallHierarchyIncomingCallsResponse.Result](#lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.Result)
    - [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem)
    - [CallHierarchyOptions](#lsp.protocol.rpc.CallHierarchyOptions)
    - [CallHierarchyOutgoingCall](#lsp.protocol.rpc.CallHierarchyOutgoingCall)
    - [CallHierarchyOutgoingCallsRequest](#lsp.protocol.rpc.CallHierarchyOutgoingCallsRequest)
    - [CallHierarchyOutgoingCallsResponse](#lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse)
    - [CallHierarchyOutgoingCallsResponse.PartialResult](#lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.PartialResult)
    - [CallHierarchyOutgoingCallsResponse.Result](#lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.Result)
    - [CallHierarchyPrepareRequest](#lsp.protocol.rpc.CallHierarchyPrepareRequest)
    - [CallHierarchyPrepareResponse](#lsp.protocol.rpc.CallHierarchyPrepareResponse)
    - [CallHierarchyPrepareResponse.Result](#lsp.protocol.rpc.CallHierarchyPrepareResponse.Result)
    - [CallHierarchyRegistrationOptions](#lsp.protocol.rpc.CallHierarchyRegistrationOptions)
    - [CancelRequest](#lsp.protocol.rpc.CancelRequest)
    - [ClientCapabilities](#lsp.protocol.rpc.ClientCapabilities)
    - [ClientCapabilities.Window](#lsp.protocol.rpc.ClientCapabilities.Window)
    - [ClientCapabilities.Workspace](#lsp.protocol.rpc.ClientCapabilities.Workspace)
    - [CodeAction](#lsp.protocol.rpc.CodeAction)
    - [CodeActionClientCapabilities](#lsp.protocol.rpc.CodeActionClientCapabilities)
    - [CodeActionClientCapabilities.CodeActionLiteralSupport](#lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport)
    - [CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind](#lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind)
    - [CodeActionContext](#lsp.protocol.rpc.CodeActionContext)
    - [CodeActionOptions](#lsp.protocol.rpc.CodeActionOptions)
    - [CodeActionRegistrationOptions](#lsp.protocol.rpc.CodeActionRegistrationOptions)
    - [CodeActionRequest](#lsp.protocol.rpc.CodeActionRequest)
    - [CodeActionResponse](#lsp.protocol.rpc.CodeActionResponse)
    - [CodeActionResponse.PartialResult](#lsp.protocol.rpc.CodeActionResponse.PartialResult)
    - [CodeActionResponse.Result](#lsp.protocol.rpc.CodeActionResponse.Result)
    - [CodeLens](#lsp.protocol.rpc.CodeLens)
    - [CodeLensClientCapabilities](#lsp.protocol.rpc.CodeLensClientCapabilities)
    - [CodeLensOptions](#lsp.protocol.rpc.CodeLensOptions)
    - [CodeLensRegistrationOptions](#lsp.protocol.rpc.CodeLensRegistrationOptions)
    - [CodeLensRequest](#lsp.protocol.rpc.CodeLensRequest)
    - [CodeLensResolveRequest](#lsp.protocol.rpc.CodeLensResolveRequest)
    - [CodeLensResolveResponse](#lsp.protocol.rpc.CodeLensResolveResponse)
    - [CodeLensResponse](#lsp.protocol.rpc.CodeLensResponse)
    - [CodeLensResponse.PartialResult](#lsp.protocol.rpc.CodeLensResponse.PartialResult)
    - [CodeLensResponse.Result](#lsp.protocol.rpc.CodeLensResponse.Result)
    - [Color](#lsp.protocol.rpc.Color)
    - [ColorInformation](#lsp.protocol.rpc.ColorInformation)
    - [ColorPresentation](#lsp.protocol.rpc.ColorPresentation)
    - [ColorPresentationRequest](#lsp.protocol.rpc.ColorPresentationRequest)
    - [ColorPresentationResponse](#lsp.protocol.rpc.ColorPresentationResponse)
    - [ColorPresentationResponse.PartialResult](#lsp.protocol.rpc.ColorPresentationResponse.PartialResult)
    - [ColorPresentationResponse.Result](#lsp.protocol.rpc.ColorPresentationResponse.Result)
    - [CompletionClientCapabilities](#lsp.protocol.rpc.CompletionClientCapabilities)
    - [CompletionClientCapabilities.CompletionItem](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem)
    - [CompletionClientCapabilities.CompletionItem.TagSupport](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem.TagSupport)
    - [CompletionClientCapabilities.CompletionItemKind](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItemKind)
    - [CompletionContext](#lsp.protocol.rpc.CompletionContext)
    - [CompletionItem](#lsp.protocol.rpc.CompletionItem)
    - [CompletionItemResolveRequest](#lsp.protocol.rpc.CompletionItemResolveRequest)
    - [CompletionItemResolveResponse](#lsp.protocol.rpc.CompletionItemResolveResponse)
    - [CompletionItems](#lsp.protocol.rpc.CompletionItems)
    - [CompletionList](#lsp.protocol.rpc.CompletionList)
    - [CompletionOptions](#lsp.protocol.rpc.CompletionOptions)
    - [CompletionRegistrationOptions](#lsp.protocol.rpc.CompletionRegistrationOptions)
    - [CompletionRequest](#lsp.protocol.rpc.CompletionRequest)
    - [CompletionResponse](#lsp.protocol.rpc.CompletionResponse)
    - [ConfigurationItem](#lsp.protocol.rpc.ConfigurationItem)
    - [ConfigurationRequest](#lsp.protocol.rpc.ConfigurationRequest)
    - [ConfigurationResponse](#lsp.protocol.rpc.ConfigurationResponse)
    - [ConfigurationResponse.Anys](#lsp.protocol.rpc.ConfigurationResponse.Anys)
    - [DeclarationClientCapabilities](#lsp.protocol.rpc.DeclarationClientCapabilities)
    - [DeclarationOptions](#lsp.protocol.rpc.DeclarationOptions)
    - [DeclarationRegistrationOptions](#lsp.protocol.rpc.DeclarationRegistrationOptions)
    - [DeclarationRequest](#lsp.protocol.rpc.DeclarationRequest)
    - [DeclarationResponse](#lsp.protocol.rpc.DeclarationResponse)
    - [DeclarationResponse.PartialResult](#lsp.protocol.rpc.DeclarationResponse.PartialResult)
    - [DeclarationResponse.Result](#lsp.protocol.rpc.DeclarationResponse.Result)
    - [DefinitionClientCapabilities](#lsp.protocol.rpc.DefinitionClientCapabilities)
    - [DefinitionOptions](#lsp.protocol.rpc.DefinitionOptions)
    - [DefinitionRegistrationOptions](#lsp.protocol.rpc.DefinitionRegistrationOptions)
    - [DefinitionRequest](#lsp.protocol.rpc.DefinitionRequest)
    - [DefinitionResponse](#lsp.protocol.rpc.DefinitionResponse)
    - [DefinitionResponse.PartialResult](#lsp.protocol.rpc.DefinitionResponse.PartialResult)
    - [DefinitionResponse.Result](#lsp.protocol.rpc.DefinitionResponse.Result)
    - [DidChangeConfigurationClientCapabilities](#lsp.protocol.rpc.DidChangeConfigurationClientCapabilities)
    - [DidChangeConfigurationRequest](#lsp.protocol.rpc.DidChangeConfigurationRequest)
    - [DidChangeTextDocumentRequest](#lsp.protocol.rpc.DidChangeTextDocumentRequest)
    - [DidChangeWatchedFilesClientCapabilities](#lsp.protocol.rpc.DidChangeWatchedFilesClientCapabilities)
    - [DidChangeWatchedFilesRegistrationOptions](#lsp.protocol.rpc.DidChangeWatchedFilesRegistrationOptions)
    - [DidChangeWatchedFilesRequest](#lsp.protocol.rpc.DidChangeWatchedFilesRequest)
    - [DidChangeWorkspaceFoldersRequest](#lsp.protocol.rpc.DidChangeWorkspaceFoldersRequest)
    - [DidCloseTextDocumentRequest](#lsp.protocol.rpc.DidCloseTextDocumentRequest)
    - [DidOpenTextDocumentRequest](#lsp.protocol.rpc.DidOpenTextDocumentRequest)
    - [DidSaveTextDocumentRequest](#lsp.protocol.rpc.DidSaveTextDocumentRequest)
    - [DocumentColorClientCapabilities](#lsp.protocol.rpc.DocumentColorClientCapabilities)
    - [DocumentColorOptions](#lsp.protocol.rpc.DocumentColorOptions)
    - [DocumentColorRegistrationOptions](#lsp.protocol.rpc.DocumentColorRegistrationOptions)
    - [DocumentColorRequest](#lsp.protocol.rpc.DocumentColorRequest)
    - [DocumentColorResponse](#lsp.protocol.rpc.DocumentColorResponse)
    - [DocumentColorResponse.PartialResult](#lsp.protocol.rpc.DocumentColorResponse.PartialResult)
    - [DocumentColorResponse.Result](#lsp.protocol.rpc.DocumentColorResponse.Result)
    - [DocumentFormattingClientCapabilities](#lsp.protocol.rpc.DocumentFormattingClientCapabilities)
    - [DocumentFormattingOptions](#lsp.protocol.rpc.DocumentFormattingOptions)
    - [DocumentFormattingRegistrationOptions](#lsp.protocol.rpc.DocumentFormattingRegistrationOptions)
    - [DocumentFormattingRequest](#lsp.protocol.rpc.DocumentFormattingRequest)
    - [DocumentFormattingResponse](#lsp.protocol.rpc.DocumentFormattingResponse)
    - [DocumentHighlight](#lsp.protocol.rpc.DocumentHighlight)
    - [DocumentHighlightClientCapabilities](#lsp.protocol.rpc.DocumentHighlightClientCapabilities)
    - [DocumentHighlightOptions](#lsp.protocol.rpc.DocumentHighlightOptions)
    - [DocumentHighlightRegistrationOptions](#lsp.protocol.rpc.DocumentHighlightRegistrationOptions)
    - [DocumentHighlightRequest](#lsp.protocol.rpc.DocumentHighlightRequest)
    - [DocumentHighlightsResponse](#lsp.protocol.rpc.DocumentHighlightsResponse)
    - [DocumentHighlightsResponse.PartialResult](#lsp.protocol.rpc.DocumentHighlightsResponse.PartialResult)
    - [DocumentHighlightsResponse.Result](#lsp.protocol.rpc.DocumentHighlightsResponse.Result)
    - [DocumentLink](#lsp.protocol.rpc.DocumentLink)
    - [DocumentLinkClientCapabilities](#lsp.protocol.rpc.DocumentLinkClientCapabilities)
    - [DocumentLinkOptions](#lsp.protocol.rpc.DocumentLinkOptions)
    - [DocumentLinkRegistrationOptions](#lsp.protocol.rpc.DocumentLinkRegistrationOptions)
    - [DocumentLinkRequest](#lsp.protocol.rpc.DocumentLinkRequest)
    - [DocumentLinkResolveRequest](#lsp.protocol.rpc.DocumentLinkResolveRequest)
    - [DocumentLinkResolveResponse](#lsp.protocol.rpc.DocumentLinkResolveResponse)
    - [DocumentLinkResponse](#lsp.protocol.rpc.DocumentLinkResponse)
    - [DocumentLinkResponse.PartialResult](#lsp.protocol.rpc.DocumentLinkResponse.PartialResult)
    - [DocumentLinkResponse.Result](#lsp.protocol.rpc.DocumentLinkResponse.Result)
    - [DocumentOnTypeFormattingClientCapabilities](#lsp.protocol.rpc.DocumentOnTypeFormattingClientCapabilities)
    - [DocumentOnTypeFormattingOptions](#lsp.protocol.rpc.DocumentOnTypeFormattingOptions)
    - [DocumentOnTypeFormattingRegistrationOptions](#lsp.protocol.rpc.DocumentOnTypeFormattingRegistrationOptions)
    - [DocumentOnTypeFormattingRequest](#lsp.protocol.rpc.DocumentOnTypeFormattingRequest)
    - [DocumentOnTypeFormattingResponse](#lsp.protocol.rpc.DocumentOnTypeFormattingResponse)
    - [DocumentRangeFormattingClientCapabilities](#lsp.protocol.rpc.DocumentRangeFormattingClientCapabilities)
    - [DocumentRangeFormattingOptions](#lsp.protocol.rpc.DocumentRangeFormattingOptions)
    - [DocumentRangeFormattingRegistrationOptions](#lsp.protocol.rpc.DocumentRangeFormattingRegistrationOptions)
    - [DocumentRangeFormattingRequest](#lsp.protocol.rpc.DocumentRangeFormattingRequest)
    - [DocumentRangeFormattingResponse](#lsp.protocol.rpc.DocumentRangeFormattingResponse)
    - [DocumentSymbol](#lsp.protocol.rpc.DocumentSymbol)
    - [DocumentSymbolClientCapabilities](#lsp.protocol.rpc.DocumentSymbolClientCapabilities)
    - [DocumentSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.DocumentSymbolClientCapabilities.SymbolKind)
    - [DocumentSymbolOptions](#lsp.protocol.rpc.DocumentSymbolOptions)
    - [DocumentSymbolRegistrationOptions](#lsp.protocol.rpc.DocumentSymbolRegistrationOptions)
    - [DocumentSymbolRequest](#lsp.protocol.rpc.DocumentSymbolRequest)
    - [DocumentSymbolResponse](#lsp.protocol.rpc.DocumentSymbolResponse)
    - [DocumentSymbolResponse.PartialResult](#lsp.protocol.rpc.DocumentSymbolResponse.PartialResult)
    - [DocumentSymbolResponse.Result](#lsp.protocol.rpc.DocumentSymbolResponse.Result)
    - [ExecuteCommandClientCapabilities](#lsp.protocol.rpc.ExecuteCommandClientCapabilities)
    - [ExecuteCommandOptions](#lsp.protocol.rpc.ExecuteCommandOptions)
    - [ExecuteCommandParams](#lsp.protocol.rpc.ExecuteCommandParams)
    - [ExecuteCommandRegistrationOptions](#lsp.protocol.rpc.ExecuteCommandRegistrationOptions)
    - [ExecuteCommandResponse](#lsp.protocol.rpc.ExecuteCommandResponse)
    - [FileEvent](#lsp.protocol.rpc.FileEvent)
    - [FileSystemWatcher](#lsp.protocol.rpc.FileSystemWatcher)
    - [FoldingRange](#lsp.protocol.rpc.FoldingRange)
    - [FoldingRangeClientCapabilities](#lsp.protocol.rpc.FoldingRangeClientCapabilities)
    - [FoldingRangeOptions](#lsp.protocol.rpc.FoldingRangeOptions)
    - [FoldingRangeRegistrationOptions](#lsp.protocol.rpc.FoldingRangeRegistrationOptions)
    - [FoldingRangeRequest](#lsp.protocol.rpc.FoldingRangeRequest)
    - [FoldingRangeResponse](#lsp.protocol.rpc.FoldingRangeResponse)
    - [FoldingRangeResponse.PartialResult](#lsp.protocol.rpc.FoldingRangeResponse.PartialResult)
    - [FoldingRangeResponse.Result](#lsp.protocol.rpc.FoldingRangeResponse.Result)
    - [FormattingOptions](#lsp.protocol.rpc.FormattingOptions)
    - [FormattingOptions.KeyEntry](#lsp.protocol.rpc.FormattingOptions.KeyEntry)
    - [FormattingOptions.Value](#lsp.protocol.rpc.FormattingOptions.Value)
    - [Hover](#lsp.protocol.rpc.Hover)
    - [Hover.MarkedStrings](#lsp.protocol.rpc.Hover.MarkedStrings)
    - [HoverClientCapabilities](#lsp.protocol.rpc.HoverClientCapabilities)
    - [HoverOptions](#lsp.protocol.rpc.HoverOptions)
    - [HoverRegistrationOptions](#lsp.protocol.rpc.HoverRegistrationOptions)
    - [HoverRequest](#lsp.protocol.rpc.HoverRequest)
    - [HoverResponse](#lsp.protocol.rpc.HoverResponse)
    - [ImplementationClientCapabilities](#lsp.protocol.rpc.ImplementationClientCapabilities)
    - [ImplementationOptions](#lsp.protocol.rpc.ImplementationOptions)
    - [ImplementationRegistrationOptions](#lsp.protocol.rpc.ImplementationRegistrationOptions)
    - [ImplementationRequest](#lsp.protocol.rpc.ImplementationRequest)
    - [ImplementationResponse](#lsp.protocol.rpc.ImplementationResponse)
    - [ImplementationResponse.PartialResult](#lsp.protocol.rpc.ImplementationResponse.PartialResult)
    - [ImplementationResponse.Result](#lsp.protocol.rpc.ImplementationResponse.Result)
    - [InitializeErrorData](#lsp.protocol.rpc.InitializeErrorData)
    - [InitializeErrorUnknownProtocolVersion](#lsp.protocol.rpc.InitializeErrorUnknownProtocolVersion)
    - [InitializeRequest](#lsp.protocol.rpc.InitializeRequest)
    - [InitializeRequest.ClientInfo](#lsp.protocol.rpc.InitializeRequest.ClientInfo)
    - [InitializeResponse](#lsp.protocol.rpc.InitializeResponse)
    - [InitializeResponse.ServerInfo](#lsp.protocol.rpc.InitializeResponse.ServerInfo)
    - [InitializedRequest](#lsp.protocol.rpc.InitializedRequest)
    - [LocationLinks](#lsp.protocol.rpc.LocationLinks)
    - [Locations](#lsp.protocol.rpc.Locations)
    - [LogMessageRequest](#lsp.protocol.rpc.LogMessageRequest)
    - [LogTraceRequest](#lsp.protocol.rpc.LogTraceRequest)
    - [MarkedString](#lsp.protocol.rpc.MarkedString)
    - [MarkedString.CodeBlock](#lsp.protocol.rpc.MarkedString.CodeBlock)
    - [MessageActionItem](#lsp.protocol.rpc.MessageActionItem)
    - [ParameterInformation](#lsp.protocol.rpc.ParameterInformation)
    - [ParameterInformation.Offset](#lsp.protocol.rpc.ParameterInformation.Offset)
    - [PartialResultParams](#lsp.protocol.rpc.PartialResultParams)
    - [PrepareRenameRequest](#lsp.protocol.rpc.PrepareRenameRequest)
    - [PrepareRenameResponse](#lsp.protocol.rpc.PrepareRenameResponse)
    - [PrepareRenameResponse.Result](#lsp.protocol.rpc.PrepareRenameResponse.Result)
    - [ProgressRequest](#lsp.protocol.rpc.ProgressRequest)
    - [ProgressToken](#lsp.protocol.rpc.ProgressToken)
    - [PublishDiagnosticsClientCapabilities](#lsp.protocol.rpc.PublishDiagnosticsClientCapabilities)
    - [PublishDiagnosticsClientCapabilities.TagSupport](#lsp.protocol.rpc.PublishDiagnosticsClientCapabilities.TagSupport)
    - [PublishDiagnosticsRequest](#lsp.protocol.rpc.PublishDiagnosticsRequest)
    - [ReferenceClientCapabilities](#lsp.protocol.rpc.ReferenceClientCapabilities)
    - [ReferenceContext](#lsp.protocol.rpc.ReferenceContext)
    - [ReferenceOptions](#lsp.protocol.rpc.ReferenceOptions)
    - [ReferenceRegistrationOptions](#lsp.protocol.rpc.ReferenceRegistrationOptions)
    - [ReferenceRequest](#lsp.protocol.rpc.ReferenceRequest)
    - [ReferenceResponse](#lsp.protocol.rpc.ReferenceResponse)
    - [ReferenceResponse.PartialResult](#lsp.protocol.rpc.ReferenceResponse.PartialResult)
    - [ReferenceResponse.Result](#lsp.protocol.rpc.ReferenceResponse.Result)
    - [Registration](#lsp.protocol.rpc.Registration)
    - [RegistrationParams](#lsp.protocol.rpc.RegistrationParams)
    - [RenameClientCapabilities](#lsp.protocol.rpc.RenameClientCapabilities)
    - [RenameOptions](#lsp.protocol.rpc.RenameOptions)
    - [RenameRegistrationOptions](#lsp.protocol.rpc.RenameRegistrationOptions)
    - [RenameRequest](#lsp.protocol.rpc.RenameRequest)
    - [RenameResponse](#lsp.protocol.rpc.RenameResponse)
    - [SaveOptions](#lsp.protocol.rpc.SaveOptions)
    - [SelectionRange](#lsp.protocol.rpc.SelectionRange)
    - [SelectionRangeClientCapabilities](#lsp.protocol.rpc.SelectionRangeClientCapabilities)
    - [SelectionRangeOptions](#lsp.protocol.rpc.SelectionRangeOptions)
    - [SelectionRangeRegistrationOptions](#lsp.protocol.rpc.SelectionRangeRegistrationOptions)
    - [SelectionRangeRequest](#lsp.protocol.rpc.SelectionRangeRequest)
    - [SelectionRangeResponse](#lsp.protocol.rpc.SelectionRangeResponse)
    - [SelectionRangeResponse.PartialResult](#lsp.protocol.rpc.SelectionRangeResponse.PartialResult)
    - [SelectionRangeResponse.Result](#lsp.protocol.rpc.SelectionRangeResponse.Result)
    - [SemanticTokens](#lsp.protocol.rpc.SemanticTokens)
    - [SemanticTokensClientCapabilities](#lsp.protocol.rpc.SemanticTokensClientCapabilities)
    - [SemanticTokensClientCapabilities.Requests](#lsp.protocol.rpc.SemanticTokensClientCapabilities.Requests)
    - [SemanticTokensDelta](#lsp.protocol.rpc.SemanticTokensDelta)
    - [SemanticTokensDeltaParams](#lsp.protocol.rpc.SemanticTokensDeltaParams)
    - [SemanticTokensDeltaPartialResult](#lsp.protocol.rpc.SemanticTokensDeltaPartialResult)
    - [SemanticTokensEdit](#lsp.protocol.rpc.SemanticTokensEdit)
    - [SemanticTokensLegend](#lsp.protocol.rpc.SemanticTokensLegend)
    - [SemanticTokensOptions](#lsp.protocol.rpc.SemanticTokensOptions)
    - [SemanticTokensParams](#lsp.protocol.rpc.SemanticTokensParams)
    - [SemanticTokensPartialResult](#lsp.protocol.rpc.SemanticTokensPartialResult)
    - [SemanticTokensRegistrationOptions](#lsp.protocol.rpc.SemanticTokensRegistrationOptions)
    - [ServerCapabilities](#lsp.protocol.rpc.ServerCapabilities)
    - [ServerCapabilities.Workspace](#lsp.protocol.rpc.ServerCapabilities.Workspace)
    - [SetTraceRequest](#lsp.protocol.rpc.SetTraceRequest)
    - [ShowMessageRequestParams](#lsp.protocol.rpc.ShowMessageRequestParams)
    - [ShowMessageRequestRequest](#lsp.protocol.rpc.ShowMessageRequestRequest)
    - [ShowMessageResponse](#lsp.protocol.rpc.ShowMessageResponse)
    - [SignatureHelp](#lsp.protocol.rpc.SignatureHelp)
    - [SignatureHelpClientCapabilities](#lsp.protocol.rpc.SignatureHelpClientCapabilities)
    - [SignatureHelpClientCapabilities.SignatureInformation](#lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation)
    - [SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation](#lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation)
    - [SignatureHelpContext](#lsp.protocol.rpc.SignatureHelpContext)
    - [SignatureHelpOptions](#lsp.protocol.rpc.SignatureHelpOptions)
    - [SignatureHelpRegistrationOptions](#lsp.protocol.rpc.SignatureHelpRegistrationOptions)
    - [SignatureHelpRequest](#lsp.protocol.rpc.SignatureHelpRequest)
    - [SignatureHelpResponse](#lsp.protocol.rpc.SignatureHelpResponse)
    - [SignatureInformation](#lsp.protocol.rpc.SignatureInformation)
    - [SymbolInformation](#lsp.protocol.rpc.SymbolInformation)
    - [TelemetryParams](#lsp.protocol.rpc.TelemetryParams)
    - [TextDocumentChangeRegistrationOptions](#lsp.protocol.rpc.TextDocumentChangeRegistrationOptions)
    - [TextDocumentClientCapabilities](#lsp.protocol.rpc.TextDocumentClientCapabilities)
    - [TextDocumentContentChangeEvent](#lsp.protocol.rpc.TextDocumentContentChangeEvent)
    - [TextDocumentContentChangeEvent.ContentChangeEvent](#lsp.protocol.rpc.TextDocumentContentChangeEvent.ContentChangeEvent)
    - [TextDocumentSaveRegistrationOptions](#lsp.protocol.rpc.TextDocumentSaveRegistrationOptions)
    - [TextDocumentSyncClientCapabilities](#lsp.protocol.rpc.TextDocumentSyncClientCapabilities)
    - [TextDocumentSyncOptions](#lsp.protocol.rpc.TextDocumentSyncOptions)
    - [TextEdits](#lsp.protocol.rpc.TextEdits)
    - [TypeDefinitionClientCapabilities](#lsp.protocol.rpc.TypeDefinitionClientCapabilities)
    - [TypeDefinitionOptions](#lsp.protocol.rpc.TypeDefinitionOptions)
    - [TypeDefinitionRegistrationOptions](#lsp.protocol.rpc.TypeDefinitionRegistrationOptions)
    - [TypeDefinitionRequest](#lsp.protocol.rpc.TypeDefinitionRequest)
    - [TypeDefinitionResponse](#lsp.protocol.rpc.TypeDefinitionResponse)
    - [TypeDefinitionResponse.PartialResult](#lsp.protocol.rpc.TypeDefinitionResponse.PartialResult)
    - [TypeDefinitionResponse.Result](#lsp.protocol.rpc.TypeDefinitionResponse.Result)
    - [Unregistration](#lsp.protocol.rpc.Unregistration)
    - [UnregistrationParams](#lsp.protocol.rpc.UnregistrationParams)
    - [WillSaveTextDocumentRequest](#lsp.protocol.rpc.WillSaveTextDocumentRequest)
    - [WillSaveTextDocumentResponse](#lsp.protocol.rpc.WillSaveTextDocumentResponse)
    - [WorkDoneProgressCancelRequest](#lsp.protocol.rpc.WorkDoneProgressCancelRequest)
    - [WorkDoneProgressCreateRequest](#lsp.protocol.rpc.WorkDoneProgressCreateRequest)
    - [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams)
    - [WorkspaceFolder](#lsp.protocol.rpc.WorkspaceFolder)
    - [WorkspaceFoldersChangeEvent](#lsp.protocol.rpc.WorkspaceFoldersChangeEvent)
    - [WorkspaceFoldersResponse](#lsp.protocol.rpc.WorkspaceFoldersResponse)
    - [WorkspaceFoldersResponse.WorkspaceFolders](#lsp.protocol.rpc.WorkspaceFoldersResponse.WorkspaceFolders)
    - [WorkspaceFoldersServerCapabilities](#lsp.protocol.rpc.WorkspaceFoldersServerCapabilities)
    - [WorkspaceSymbolClientCapabilities](#lsp.protocol.rpc.WorkspaceSymbolClientCapabilities)
    - [WorkspaceSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.WorkspaceSymbolClientCapabilities.SymbolKind)
    - [WorkspaceSymbolParams](#lsp.protocol.rpc.WorkspaceSymbolParams)
    - [WorkspaceSymbolsResponse](#lsp.protocol.rpc.WorkspaceSymbolsResponse)
    - [WorkspaceSymbolsResponse.SymbolInformations](#lsp.protocol.rpc.WorkspaceSymbolsResponse.SymbolInformations)
  
    - [CodeActionKind](#lsp.protocol.rpc.CodeActionKind)
    - [CompletionItemKind](#lsp.protocol.rpc.CompletionItemKind)
    - [CompletionItemTag](#lsp.protocol.rpc.CompletionItemTag)
    - [CompletionTriggerKind](#lsp.protocol.rpc.CompletionTriggerKind)
    - [DocumentHighlight.DocumentHighlightKind](#lsp.protocol.rpc.DocumentHighlight.DocumentHighlightKind)
    - [FileEvent.FileChangeType](#lsp.protocol.rpc.FileEvent.FileChangeType)
    - [FileSystemWatcher.WatchKind](#lsp.protocol.rpc.FileSystemWatcher.WatchKind)
    - [FoldingRangeKind](#lsp.protocol.rpc.FoldingRangeKind)
    - [InsertTextFormat](#lsp.protocol.rpc.InsertTextFormat)
    - [MessageType](#lsp.protocol.rpc.MessageType)
    - [SemanticTokenModifiers](#lsp.protocol.rpc.SemanticTokenModifiers)
    - [SemanticTokenTypes](#lsp.protocol.rpc.SemanticTokenTypes)
    - [SignatureHelpContext.SignatureHelpTriggerKind](#lsp.protocol.rpc.SignatureHelpContext.SignatureHelpTriggerKind)
    - [SymbolKind](#lsp.protocol.rpc.SymbolKind)
    - [SymbolTag](#lsp.protocol.rpc.SymbolTag)
    - [TextDocumentSaveReason](#lsp.protocol.rpc.TextDocumentSaveReason)
    - [TextDocumentSyncKind](#lsp.protocol.rpc.TextDocumentSyncKind)
    - [TokenFormat](#lsp.protocol.rpc.TokenFormat)
  
  




<a name="lsp/protocol/rpc/rpc.proto"/>
<p align="right"><a href="#top">Top</a></p>


<a name="lsp.protocol.rpc.LanguageServerProtocol"/>

### LanguageServerProtocol
Language Server Protocol API.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Cancel | [CancelRequest](#lsp.protocol.rpc.CancelRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.CancelRequest) | Cancel notification is the base protocol offers support for request cancellation. To cancel a request, a CancelRequest notification message is sent.  A request that got canceled still needs to return from the server and send a response back. It can not be left open / hanging. This is in line with the JSON RPC protocol that requires that every request sends a response back. In addition it allows for returning partial results on cancel. If the request returns an error response on cancellation it is advised to set the error code to [Codes.RequestCancelled][lsp.jsonrpc2.Codes]. |
| Progress | [ProgressRequest](#lsp.protocol.rpc.ProgressRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.ProgressRequest) | Progress notification is the base protocol offers also support to report progress in a generic fashion. This mechanism can be used to report any kind of progress including work done progress (usually used to report progress in the user interface using a progress bar) and partial result progress to support streaming of results.  Progress is reported against a token. The token is different than the request ID which allows to report progress out of band and also for notification.  @since 3.15.0 |
| Initialize | [InitializeRequest](#lsp.protocol.rpc.InitializeRequest) | [InitializeResponse](#lsp.protocol.rpc.InitializeRequest) | Initialize request is sent as the first request from the client to the server. If the server receives a request or notification before the initialize request it should act as follows:  - For a request the response should be an error with `code: -32002`. The message can be picked by the server. - Notifications should be dropped, except for the exit notification. This will allow the exit of a server without an initialize request.  Until the server has responded to the `initialize` request with an `InitializeResponse`, the client must not send any additional requests or notifications to the server. In addition the server is not allowed to send any requests or notifications to the client until it has responded with an `InitializeResponse`, with the exception that during the initialize request the server is allowed to send the notifications `window/showMessage`, `window/logMessage` and `telemetry/event` as well as the `window/showMessageRequest` request to the client. In case the client sets up a progress token in the initialize params (e.g. property `workDoneToken`) the server is also allowed to use that token (and only that token) using the `$/progress` notification sent from the server to the client.  The initialize request may only be sent once. |
| Initialized | [InitializedRequest](#lsp.protocol.rpc.InitializedRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.InitializedRequest) | Initialized notification is sent from the client to the server after the client received the result of the `initialize` request but before the client is sending any other request or notification to the server.  The server can use the `initialized` notification for example to dynamically register capabilities.  The `initialized` notification may only be sent once. |
| Shutdown | [.google.protobuf.Empty](#google.protobuf.Empty) | [.lsp.jsonrpc2.Error](#google.protobuf.Empty) | Shutdown request is sent from the client to the server.  It asks the server to shut down, but to not exit (otherwise the response might not be delivered correctly to the client). There is a separate exit notification that asks the server to exit.  Clients must not send any notifications other than exit or requests to a server to which they have sent a shutdown request.  If a server receives requests after a shutdown request those requests should error with `InvalidRequest`. |
| Exit | [.google.protobuf.Empty](#google.protobuf.Empty) | [.google.protobuf.Empty](#google.protobuf.Empty) | Exit notification to ask the server to exit its process.  The server should exit with `success` code 0 if the shutdown request has been received before; otherwise with `error` code 1. |
| LogTrace | [LogTraceRequest](#lsp.protocol.rpc.LogTraceRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.LogTraceRequest) | LogTrace notification to log the trace of the server’s execution.  The amount and content of these notifications depends on the current `trace` configuration. If `trace` is `'off'`, the server should not send any `logTrace` notification. If `trace` is `'message'`, the server should not add the `'verbose'` field in the logTraceRequest.  `$/logTrace` should be used for systematic trace reporting. For single debugging messages, the server should send window/logMessage notifications. |
| SetTrace | [SetTraceRequest](#lsp.protocol.rpc.SetTraceRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.SetTraceRequest) | SetTrace notification that should be used by the client to modify the trace setting of the server.  (-- api-linter: core::0134::synonyms=disabled api-linter: core::0136::http-method=disabled --) |
| ShowMessage | [ShowMessageRequestParams](#lsp.protocol.rpc.ShowMessageRequestParams) | [.google.protobuf.Empty](#lsp.protocol.rpc.ShowMessageRequestParams) | ShowMessage notification is the show message notification is sent from a server to a client to ask the client to display a particular message in the user interface. |
| ShowMessageRequest | [ShowMessageRequestRequest](#lsp.protocol.rpc.ShowMessageRequestRequest) | [ShowMessageResponse](#lsp.protocol.rpc.ShowMessageRequestRequest) | ShowMessageRequest request is the show message request is sent from a server to a client to ask the client to display a particular message in the user interface. In addition to the show message notification the request allows to pass actions and to wait for an answer from the client. |
| LogMessage | [LogMessageRequest](#lsp.protocol.rpc.LogMessageRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.LogMessageRequest) | LogMessage notification is the log message notification is sent from the server to the client to ask the client to log a particular message. |
| CreateWorkDoneProgress | [WorkDoneProgressCreateRequest](#lsp.protocol.rpc.WorkDoneProgressCreateRequest) | [.lsp.jsonrpc2.Error](#lsp.protocol.rpc.WorkDoneProgressCreateRequest) | CreateWorkDoneProgress is the `window/workDoneProgress/create` request is sent from the server to the client to ask the client to create a work done progress.  (-- api-linter: core::0133::http-uri-parent=disabled api-linter: core::0133::http-body=disabled api-linter: core::0133::request-message-name=disabled api-linter: core::0133::response-message-name=disabled --) |
| CancelWorkDoneProgress | [WorkDoneProgressCancelRequest](#lsp.protocol.rpc.WorkDoneProgressCancelRequest) | [.lsp.jsonrpc2.Error](#lsp.protocol.rpc.WorkDoneProgressCancelRequest) | CancelWorkDoneProgress is the `window/workDoneProgress/cancel` notification is sent from the client to the server to cancel a progress initiated on the server side using the `window/workDoneProgress/create`. |
| Telemetry | [.google.protobuf.Any](#google.protobuf.Any) | [.google.protobuf.Empty](#google.protobuf.Any) | Telemetry notification is the telemetry notification is sent from the server to the client to ask the client to log a telemetry event. |
| WorkspaceFolders | [.google.protobuf.Empty](#google.protobuf.Empty) | [WorkspaceFoldersResponse](#google.protobuf.Empty) | WorkspaceFolders request is the workspace/workspaceFolders request is sent from the server to the client to fetch the current open list of workspace folders.  Returns null in the response if only a single file is open in the tool. Returns an empty array if a workspace is open but no folders are configured.  @since 3.6.0 |
| DidChangeWorkspaceFolders | [DidChangeWorkspaceFoldersRequest](#lsp.protocol.rpc.DidChangeWorkspaceFoldersRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidChangeWorkspaceFoldersRequest) | DidChangeWorkspaceFolders notification is the `workspace/didChangeWorkspaceFolders` notification is sent from the client to the server to inform the server about workspace folder configuration changes.  The notification is sent by default if both client capability `workspace.workspaceFolders` and the server capability `workspace.workspaceFolders.supported` are true; or if the server has registered itself to receive this notification. To register for the `workspace/didChangeWorkspaceFolders` send a client/registerCapability request from the server to the client. The `registration` parameter must have a registrations item of the following form, where id is a unique id used to unregister the capability (the example uses a UUID):  @since 3.6.0 |
| DidChangeConfiguration | [DidChangeConfigurationRequest](#lsp.protocol.rpc.DidChangeConfigurationRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidChangeConfigurationRequest) | DidChangeConfiguration a notification sent from the client to the server to signal the change of configuration settings. |
| Configuration | [ConfigurationRequest](#lsp.protocol.rpc.ConfigurationRequest) | [ConfigurationResponse](#lsp.protocol.rpc.ConfigurationRequest) | Configuration request is the `workspace/configuration` request is sent from the server to the client to fetch configuration settings from the client.  The request can fetch several configuration settings in one roundtrip. The order of the returned configuration settings correspond to the order of the passed `ConfigurationItems` (e.g. the first item in the response is the result for the first configuration item in the params).  @since 3.6.0 |
| DidChangeWatchedFiles | [DidChangeWatchedFilesRequest](#lsp.protocol.rpc.DidChangeWatchedFilesRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidChangeWatchedFilesRequest) | DidChangeWatchedFiles notification is the watched files notification is sent from the client to the server when the client detects changes to files watched by the language client.  It is recommended that servers register for these file events using the registration mechanism. In former implementations clients pushed file events without the server actively asking for it. |
| WorkspaceSymbols | [ConfigurationRequest](#lsp.protocol.rpc.ConfigurationRequest) | [WorkspaceSymbolsResponse](#lsp.protocol.rpc.ConfigurationRequest) | WorkspaceSymbols request is the workspace symbol request is sent from the client to the server to list project-wide symbols matching the query string.  (-- api-linter: core::0136::http-uri-suffix=disabled --) |
| ExecuteCommand | [ExecuteCommandParams](#lsp.protocol.rpc.ExecuteCommandParams) | [ExecuteCommandResponse](#lsp.protocol.rpc.ExecuteCommandParams) | ExecuteCommand is the `workspace/executeCommand` request is sent from the client to the server to trigger command execution on the server.  In most cases the server creates a `WorkspaceEdit` structure and applies the changes to the workspace using the request `workspace/applyEdit` which is sent from the server to the client. |
| ApplyEdit | [ApplyWorkspaceEditRequest](#lsp.protocol.rpc.ApplyWorkspaceEditRequest) | [ApplyWorkspaceEditResponse](#lsp.protocol.rpc.ApplyWorkspaceEditRequest) | ApplyEdit request is sent from the server to the client to modify resource on the client side. |
| DidOpenTextDocument | [DidOpenTextDocumentRequest](#lsp.protocol.rpc.DidOpenTextDocumentRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidOpenTextDocumentRequest) | DidOpenTextDocument notification is the `DidOpenTextDocumentRequest` contain the language id the document is associated with.  If the language Id of a document changes, the client needs to send a `textDocument/didClose` to the server followed by a `textDocument/didOpen` with the new language id if the server handles the new language id as well. |
| DidChangeTextDocument | [DidChangeTextDocumentRequest](#lsp.protocol.rpc.DidChangeTextDocumentRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidChangeTextDocumentRequest) | DidChangeTextDocument notification is the document change notification is sent from the client to the server to signal changes to a text document.  Before a client can change a text document it must claim ownership of its content using the textDocument/didOpen notification.  In 2.0 the shape of the params has changed to include proper version numbers and language ids. |
| WillSaveTextDocument | [WillSaveTextDocumentRequest](#lsp.protocol.rpc.WillSaveTextDocumentRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.WillSaveTextDocumentRequest) | WillSaveTextDocument notification is the document will save notification is sent from the client to the server before the document is actually saved. |
| WillSaveWaitUntilTextDocument | [WillSaveTextDocumentRequest](#lsp.protocol.rpc.WillSaveTextDocumentRequest) | [WillSaveTextDocumentResponse](#lsp.protocol.rpc.WillSaveTextDocumentRequest) | WillSaveWaitUntilTextDocument request is the document will save request is sent from the client to the server before the document is actually saved.  The request can return an array of TextEdits which will be applied to the text document before it is saved.  Please note that clients might drop results if computing the text edits took too long or if a server constantly fails on this request. This is done to keep the save fast and reliable. |
| DidSaveTextDocument | [DidSaveTextDocumentRequest](#lsp.protocol.rpc.DidSaveTextDocumentRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidSaveTextDocumentRequest) | DidSaveTextDocument notification is the document save notification is sent from the client to the server when the document was saved in the client. |
| DidCloseTextDocument | [DidCloseTextDocumentRequest](#lsp.protocol.rpc.DidCloseTextDocumentRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.DidCloseTextDocumentRequest) | DidCloseTextDocument notification is the document close notification is sent from the client to the server when the document got closed in the client.  The document’s master now exists where the document’s Uri points to (e.g. if the document’s Uri is a file Uri the master now exists on disk). As with the open notification the close notification is about managing the document’s content.  Receiving a close notification doesn’t mean that the document was open in an editor before. A close notification requires a previous open notification to be sent. Note that a server’s ability to fulfill requests is independent of whether a text document is open or closed. |
| PublishDiagnostics | [PublishDiagnosticsRequest](#lsp.protocol.rpc.PublishDiagnosticsRequest) | [.google.protobuf.Empty](#lsp.protocol.rpc.PublishDiagnosticsRequest) | PublishDiagnostics notification is the diagnostics notification are sent from the server to the client to signal results of validation runs. |
| Completion | [CompletionRequest](#lsp.protocol.rpc.CompletionRequest) | [CompletionResponse](#lsp.protocol.rpc.CompletionRequest) | Completion request is the Completion request is sent from the client to the server to compute completion items at a given cursor position.  Completion items are presented in the IntelliSense user interface. If computing full completion items is expensive, servers can additionally provide a handler for the completion item resolve request (‘completionItem/resolve’).  This request is sent when a completion item is selected in the user interface. A typical use case is for example: the `textDocument/completion` request doesn’t fill in the documentation property for returned completion items since it is expensive to compute. When the item is selected in the user interface then a `completionItem/resolve` request is sent with the selected completion item as a parameter.  The returned completion item should have the documentation property filled in. The request can only delay the computation of the `detail` and `documentation` properties. Other properties like `sortText`, `filterText`, `insertText`, `textEdit` and `additionalTextEdits` must be provided in the `textDocument/completion` response and must not be changed during resolve. |
| CompletionItemResolve | [CompletionItemResolveRequest](#lsp.protocol.rpc.CompletionItemResolveRequest) | [CompletionItemResolveResponse](#lsp.protocol.rpc.CompletionItemResolveRequest) | CompletionItemResolve request is the request is sent from the client to the server to resolve additional information for a given completion item. |
| Hover | [HoverRequest](#lsp.protocol.rpc.HoverRequest) | [HoverResponse](#lsp.protocol.rpc.HoverRequest) | Hover Request is the hover request is sent from the client to the server to request hover information at a given text document position. |
| SignatureHelp | [SignatureHelpRequest](#lsp.protocol.rpc.SignatureHelpRequest) | [SignatureHelpResponse](#lsp.protocol.rpc.SignatureHelpRequest) | SignatureHelp request is the signature help request is sent from the client to the server to request signature information at a given cursor position. |
| GotoDeclaration | [DeclarationRequest](#lsp.protocol.rpc.DeclarationRequest) | [DeclarationResponse](#lsp.protocol.rpc.DeclarationRequest) | GotoDeclaration request is the go to declaration request is sent from the client to the server to resolve the declaration location of a symbol at a given text document position.  The result type [LocationLinks][LocationLinks] got introduced with version 3.14.0 and depends on the corresponding client capability `textDocument.declaration.linkSupport`.  @since 3.14.0 |
| GotoDefinition | [DefinitionRequest](#lsp.protocol.rpc.DefinitionRequest) | [DefinitionResponse](#lsp.protocol.rpc.DefinitionRequest) | GotoDefinition request is the go to definition request is sent from the client to the server to resolve the definition location of a symbol at a given text document position.  The result type [LocationLinks][LocationLinks] got introduced with version 3.14.0 and depends on the corresponding client capability `textDocument.definition.linkSupport`. |
| GotoTypeDefinition | [TypeDefinitionRequest](#lsp.protocol.rpc.TypeDefinitionRequest) | [TypeDefinitionResponse](#lsp.protocol.rpc.TypeDefinitionRequest) | GotoTypeDefinition request is the go to type definition request is sent from the client to the server to resolve the type definition location of a symbol at a given text document position.  The result type [LocationLinks][LocationLinks] got introduced with version 3.14.0 and depends on the corresponding client capability `textDocument.typeDefinition.linkSupport`.  @since 3.6.0 |
| GotoImplementation | [ImplementationRequest](#lsp.protocol.rpc.ImplementationRequest) | [ImplementationResponse](#lsp.protocol.rpc.ImplementationRequest) | GotoImplementation request is the go to implementation request is sent from the client to the server to resolve the implementation location of a symbol at a given text document position.  The result type [LocationLinks][LocationLinks] got introduced with version 3.14.0 and depends on the corresponding client capability `textDocument.implementation.linkSupport`.  @since 3.6.0 |
| FindReferences | [ReferenceRequest](#lsp.protocol.rpc.ReferenceRequest) | [ReferenceResponse](#lsp.protocol.rpc.ReferenceRequest) | FindReferences request is the references request is sent from the client to the server to resolve project-wide references for the symbol denoted by the given text document position. |
| DocumentHighlights | [DocumentHighlightRequest](#lsp.protocol.rpc.DocumentHighlightRequest) | [DocumentHighlightsResponse](#lsp.protocol.rpc.DocumentHighlightRequest) | DocumentHighlights request is the document highlight request is sent from the client to the server to resolve a document highlights for a given text document position.  For programming languages this usually highlights all references to the symbol scoped to this file. However we kept `textDocument/documentHighlight` and `textDocument/references` separate requests since the first one is allowed to be more fuzzy.  Symbol matches usually have a DocumentHighlightKind of `Read` or `Write` whereas fuzzy or textual matches use `Text` as the kind. |
| DocumentSymbols | [DocumentSymbolRequest](#lsp.protocol.rpc.DocumentSymbolRequest) | [DocumentSymbolResponse](#lsp.protocol.rpc.DocumentSymbolRequest) | DocumentSymbols request is the document symbol request is sent from the client to the server.  The returned result is either  - SymbolInformation[] which is a flat list of all symbols found in a given text document. Then neither the symbol’s location range nor the symbol’s container name should be used to infer a hierarchy.  - DocumentSymbol[] which is a hierarchy of symbols found in a given text document. |
| CodeAction | [CodeActionRequest](#lsp.protocol.rpc.CodeActionRequest) | [CodeActionResponse](#lsp.protocol.rpc.CodeActionRequest) | CodeAction request is the code action request is sent from the client to the server to compute commands for a given text document and range.  These commands are typically code fixes to either fix problems or to beautify/refactor code.  The result of a `textDocument/codeAction` request is an array of `Command` literals which are typically presented in the user interface. To ensure that a server is useful in many clients the commands specified in a code actions should be handled by the server and not by the client (see `workspace/executeCommand` and `ServerCapabilities.executeCommandProvider`). If the client supports providing edits with a code action then the mode should be used.  When the command is selected the server should be contacted again (via the `workspace/executeCommand`) request to execute the command.  Since version 3.8.0: support for CodeAction literals to enable the following scenarios:  - the ability to directly return a workspace edit from the code action request. This avoids having another server roundtrip to execute an actual code action. However server providers should be aware that if the code action is expensive to compute or the edits are huge it might still be beneficial if the result is simply a command and the actual edit is only computed when needed.  - the ability to group code actions using a kind. Clients are allowed to ignore that information. However it allows them to better group code action for example into corresponding menus (e.g. all refactor code actions into a refactor menu).  Clients need to announce their support for code action literals (e.g. literals of type `CodeAction`) and code action kinds via the corresponding client capability `codeAction.codeActionLiteralSupport`. |
| CodeLens | [CodeLensRequest](#lsp.protocol.rpc.CodeLensRequest) | [CodeLensResponse](#lsp.protocol.rpc.CodeLensRequest) | CodeLens request is the code lens request is sent from the client to the server to compute code lenses for a given text document. |
| CodeLensResolve | [CodeLensResolveRequest](#lsp.protocol.rpc.CodeLensResolveRequest) | [CodeLensResolveResponse](#lsp.protocol.rpc.CodeLensResolveRequest) | CodeLensResolve request is the code lens resolve request is sent from the client to the server to resolve the command for a given code lens item. |
| DocumentLink | [DocumentLinkRequest](#lsp.protocol.rpc.DocumentLinkRequest) | [DocumentLinkResponse](#lsp.protocol.rpc.DocumentLinkRequest) | DocumentLink request is the document links request is sent from the client to the server to request the location of links in a document. |
| DocumentLinkResolve | [DocumentLinkResolveRequest](#lsp.protocol.rpc.DocumentLinkResolveRequest) | [DocumentLinkResolveResponse](#lsp.protocol.rpc.DocumentLinkResolveRequest) | DocumentLinkResolve request is the document link resolve request is sent from the client to the server to resolve the target of a given document link. |
| DocumentColor | [DocumentColorRequest](#lsp.protocol.rpc.DocumentColorRequest) | [DocumentColorResponse](#lsp.protocol.rpc.DocumentColorRequest) | DocumentColor request is the document color request is sent from the client to the server to list all color references found in a given text document. Along with the range, a color value in RGB is returned.  Clients can use the result to decorate color references in an editor. For example:  - Color boxes showing the actual color next to the reference  - Show a color picker when a color reference is edited  @since 3.6.0 |
| ColorPresentation | [ColorPresentationRequest](#lsp.protocol.rpc.ColorPresentationRequest) | [ColorPresentationResponse](#lsp.protocol.rpc.ColorPresentationRequest) | ColorPresentation request is the color presentation request is sent from the client to the server to obtain a list of presentations for a color value at a given location. Clients can use the result to  - modify a color reference. - show in a color picker and let users pick one of the presentations  This request has no special capabilities and registration options since it is send as a resolve request for the `textDocument/documentColor` request.  @since 3.6.0 |
| DocumentFormatting | [DocumentFormattingRequest](#lsp.protocol.rpc.DocumentFormattingRequest) | [DocumentFormattingResponse](#lsp.protocol.rpc.DocumentFormattingRequest) | DocumentFormatting request is the document formatting request is sent from the client to the server to format a whole document. |
| DocumentRangeFormatting | [DocumentRangeFormattingRequest](#lsp.protocol.rpc.DocumentRangeFormattingRequest) | [DocumentRangeFormattingResponse](#lsp.protocol.rpc.DocumentRangeFormattingRequest) | DocumentRangeFormatting Request is the document range formatting request is sent from the client to the server to format a given range in a document. |
| OnTypeFormatting | [DocumentOnTypeFormattingRequest](#lsp.protocol.rpc.DocumentOnTypeFormattingRequest) | [DocumentOnTypeFormattingResponse](#lsp.protocol.rpc.DocumentOnTypeFormattingRequest) | OnTypeFormatting request is the document on type formatting request is sent from the client to the server to format parts of the document during typing. |
| Rename | [RenameRequest](#lsp.protocol.rpc.RenameRequest) | [RenameResponse](#lsp.protocol.rpc.RenameRequest) | Rename request is the rename request is sent from the client to the server to ask the server to compute a workspace change so that the client can perform a workspace-wide rename of a symbol. |
| PrepareRename | [PrepareRenameRequest](#lsp.protocol.rpc.PrepareRenameRequest) | [PrepareRenameResponse](#lsp.protocol.rpc.PrepareRenameRequest) | PrepareRename request is the prepare rename request is sent from the client to the server to setup and test the validity of a rename operation at a given location.  @since 3.12.0 |
| FoldingRange | [FoldingRangeRequest](#lsp.protocol.rpc.FoldingRangeRequest) | [FoldingRangeResponse](#lsp.protocol.rpc.FoldingRangeRequest) | FoldingRange request is the folding range request is sent from the client to the server to return all folding ranges found in a given text document.  @since 3.10.0 |
| SelectionRange | [SelectionRangeRequest](#lsp.protocol.rpc.SelectionRangeRequest) | [SelectionRangeResponse](#lsp.protocol.rpc.SelectionRangeRequest) | SelectionRange request is the selection range request is sent from the client to the server to return suggested selection ranges at an array of given positions.  A selection range is a range around the cursor position which the user might be interested in selecting. A selection range in the return array is for the position in the provided parameters at the same index. Therefore positions[i] must be contained in result[i].range.  Typically, but not necessary, selection ranges correspond to the nodes of the syntax tree.  @since 3.15.0 |
| PrepareCallHierarchy | [CallHierarchyPrepareRequest](#lsp.protocol.rpc.CallHierarchyPrepareRequest) | [CallHierarchyPrepareResponse](#lsp.protocol.rpc.CallHierarchyPrepareRequest) | PrepareCallHierarchy request is the call hierarchy request is sent from the client to the server to return a call hierarchy for the language element of given text document positions.  The call hierarchy requests are executed in two steps:  - first a call hierarchy item is resolved for the given text document position  - for a call hierarchy item the incoming or outgoing call hierarchy items are resolved.  @since 3.16.0 |
| CallHierarchyIncomingCalls | [CallHierarchyIncomingCallsRequest](#lsp.protocol.rpc.CallHierarchyIncomingCallsRequest) | [CallHierarchyIncomingCallsResponse](#lsp.protocol.rpc.CallHierarchyIncomingCallsRequest) | CallHierarchyIncomingCalls request is sent from the client to the server to resolve incoming calls for a given call hierarchy item.  The request doesn’t define its own client and server capabilities. It is only issued if a server registers for the `textDocument/prepareCallHierarchy` request.  @since 3.16.0 |
| CallHierarchyOutgoingCalls | [CallHierarchyOutgoingCallsRequest](#lsp.protocol.rpc.CallHierarchyOutgoingCallsRequest) | [CallHierarchyOutgoingCallsResponse](#lsp.protocol.rpc.CallHierarchyOutgoingCallsRequest) | CallHierarchyOutgoingCalls is the request is sent from the client to the server to resolve outgoing calls for a given call hierarchy item.  The request doesn’t define its own client and server capabilities. It is only issued if a server registers for the textDocument/prepareCallHierarchy request.  @since 3.16.0 |

 <!-- end services -->

## lsp/protocol/rpc/rpc.proto



<a name="lsp.protocol.rpc.ApplyWorkspaceEditRequest"/>

### ApplyWorkspaceEditRequest
ApplyWorkspaceEditRequest is the parameters of a `workspace/applyEdit` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | An optional label of the workspace edit. This label is presented in the user interface for example on an undo stack to undo the workspace edit. |
| edit | [lsp.protocol.WorkspaceEdit](#lsp.protocol.WorkspaceEdit) |  | The edits to apply. |






<a name="lsp.protocol.rpc.ApplyWorkspaceEditResponse"/>

### ApplyWorkspaceEditResponse
ApplyWorkspaceEditResponse is the parameters of a ApplyWorkspaceEdit response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| applied | [bool](#bool) |  | Indicates whether the edit was applied or not. |
| failure_reason | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | An optional textual description for why the edit was not applied. This may be used may be used by the server for diagnostic logging or to provide a suitable error for a request that triggered the edit. |






<a name="lsp.protocol.rpc.CallHierarchyClientCapabilities"/>

### CallHierarchyClientCapabilities
CallHierarchyClientCapabilities represents a client capabilities of
`textDocument/prepareCallHierarchy` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementation supports dynamic registration. If this is set to `true` the client supports the new `([TextDocumentRegistrationOptions][TextDocumentRegistrationOptions] & [StaticRegistrationOptions][StaticRegistrationOptions])` return value for the corresponding server capability as well. |






<a name="lsp.protocol.rpc.CallHierarchyIncomingCall"/>

### CallHierarchyIncomingCall
CallHierarchyIncomingCall represents a item of call hierarchy incoming call.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| from | [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem) |  | The item that makes the call. (-- api-linter: core::0140::reserved-words=disabled api-linter: core::0140::prepositions=disabled --) |
| from_ranges | [lsp.protocol.Range](#lsp.protocol.Range) | repeated | The ranges at which the calls appear. This is relative to the caller denoted by [`this.from`][CallHierarchyIncomingCall.from]. (-- api-linter: core::0140::prepositions=disabled --) |






<a name="lsp.protocol.rpc.CallHierarchyIncomingCallsRequest"/>

### CallHierarchyIncomingCallsRequest
CallHierarchyIncomingCallsRequest is the parameters of a `textDocument/incomingCalls` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| item | [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyIncomingCallsResponse"/>

### CallHierarchyIncomingCallsResponse
CallHierarchyIncomingCallsResponse represents a CallHierarchyIncomingCalls response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [CallHierarchyIncomingCallsResponse.Result](#lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.Result) |  |  |
| partial_result | [CallHierarchyIncomingCallsResponse.PartialResult](#lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.PartialResult"/>

### CallHierarchyIncomingCallsResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| call_hierarchy_incoming_calls | [CallHierarchyIncomingCall](#lsp.protocol.rpc.CallHierarchyIncomingCall) | repeated |  |






<a name="lsp.protocol.rpc.CallHierarchyIncomingCallsResponse.Result"/>

### CallHierarchyIncomingCallsResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| call_hierarchy_incoming_calls | [CallHierarchyIncomingCall](#lsp.protocol.rpc.CallHierarchyIncomingCall) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyItem"/>

### CallHierarchyItem
CallHierarchyItem represents a item of call hierarchy.

@since 3.16.0
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of this item. |
| kind | [SymbolKind](#lsp.protocol.rpc.SymbolKind) |  | The kind of this item. |
| tags | [SymbolTag](#lsp.protocol.rpc.SymbolTag) | repeated | Tags for this item. |
| detail | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | More detail for this item, e.g. the signature of a function. |
| uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The resource identifier of this item. |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range enclosing this symbol not including leading/trailing whitespace but everything else, e.g. comments and code. |
| selection_range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range that should be selected and revealed when this symbol is being picked, e.g. the name of a function. Must be contained by the [`range`][CallHierarchyItem.range]. |






<a name="lsp.protocol.rpc.CallHierarchyOptions"/>

### CallHierarchyOptions
CallHierarchyOptions represents a server capabilities option of callHierarchyProvider.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.CallHierarchyOutgoingCall"/>

### CallHierarchyOutgoingCall
CallHierarchyOutgoingCall represents a item of call hierarchy outgoing call.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| to | [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem) |  | The item that is called. (-- api-linter: core::0140::prepositions=disabled --) |
| from_ranges | [lsp.protocol.Range](#lsp.protocol.Range) | repeated | The range at which this item is called. This is the range relative to the caller, e.g the item passed to [`provideCallHierarchyOutgoingCalls`][CallHierarchyItemProvider.provideCallHierarchyOutgoingCalls] and not [`this.to`][CallHierarchyOutgoingCall.to]. (-- api-linter: core::0140::prepositions=disabled --) |






<a name="lsp.protocol.rpc.CallHierarchyOutgoingCallsRequest"/>

### CallHierarchyOutgoingCallsRequest
CallHierarchyOutgoingCallsRequest is the parameters of a `callHierarchy/outgoingCalls` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| item | [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse"/>

### CallHierarchyOutgoingCallsResponse
CallHierarchyIncomingCallsResponse represents a CallHierarchyOutgoingCalls response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [CallHierarchyOutgoingCallsResponse.Result](#lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.Result) |  |  |
| partial_result | [CallHierarchyOutgoingCallsResponse.PartialResult](#lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.PartialResult"/>

### CallHierarchyOutgoingCallsResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| call_hierarchy_outgoing_calls | [CallHierarchyOutgoingCall](#lsp.protocol.rpc.CallHierarchyOutgoingCall) | repeated |  |






<a name="lsp.protocol.rpc.CallHierarchyOutgoingCallsResponse.Result"/>

### CallHierarchyOutgoingCallsResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| call_hierarchy_outgoing_calls | [CallHierarchyOutgoingCall](#lsp.protocol.rpc.CallHierarchyOutgoingCall) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyPrepareRequest"/>

### CallHierarchyPrepareRequest
CallHierarchyPrepareRequest is the parameters of a `textDocument/prepareCallHierarchy` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |






<a name="lsp.protocol.rpc.CallHierarchyPrepareResponse"/>

### CallHierarchyPrepareResponse
CallHierarchyPrepareResponse represents a PrepareCallHierarchy response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [CallHierarchyPrepareResponse.Result](#lsp.protocol.rpc.CallHierarchyPrepareResponse.Result) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyPrepareResponse.Result"/>

### CallHierarchyPrepareResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| call_hierarchy_items | [CallHierarchyItem](#lsp.protocol.rpc.CallHierarchyItem) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.CallHierarchyRegistrationOptions"/>

### CallHierarchyRegistrationOptions
CallHierarchyRegistrationOptions represents a registration option of CallHierarchy.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| call_hierarchy_options | [CallHierarchyOptions](#lsp.protocol.rpc.CallHierarchyOptions) |  |  |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.CancelRequest"/>

### CancelRequest
CancelRequest represents a cancel notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int32](#int32) |  | Required. The request id to cancel. |






<a name="lsp.protocol.rpc.ClientCapabilities"/>

### ClientCapabilities
ClientCapabilities define capabilities for dynamic registration, workspace and text document
features the client supports.

The experimental can be used to pass experimental capabilities under development. For future
compatibility a ClientCapabilities object literal can have more properties set than currently
defined. Servers receiving a ClientCapabilities object literal with unknown properties should
ignore these properties. A missing property should be interpreted as an absence of the
capability. If a missing property normally defines sub properties, all missing sub properties
should be interpreted as an absence of the corresponding capability.

Client capabilities got introduced with version 3.0 of the protocol. They therefore only describe
capabilities that got introduced in 3.x or later. Capabilities that existed in the 2.x version of
the protocol are still mandatory for clients. Clients cannot opt out of providing them. So even
if a client omits the ClientCapabilities.textDocument.synchronization it is still required that
the client provides text document synchronization (e.g. open, changed and close notifications).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [ClientCapabilities.Workspace](#lsp.protocol.rpc.ClientCapabilities.Workspace) |  | Optional. Workspace specific client capabilities. |
| text_document | [TextDocumentClientCapabilities](#lsp.protocol.rpc.TextDocumentClientCapabilities) |  | Optional. Text document specific client capabilities. |
| window | [ClientCapabilities.Window](#lsp.protocol.rpc.ClientCapabilities.Window) |  | Optional. Window specific client capabilities. |
| experimental | [google.protobuf.Any](#google.protobuf.Any) |  | Optional. Experimental client capabilities. |






<a name="lsp.protocol.rpc.ClientCapabilities.Window"/>

### ClientCapabilities.Window
Window specific client capabilities.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress | [bool](#bool) |  | Optional. Whether client supports handling progress notifications. If set servers are allowed to report in `workDoneProgress` property in the request specific server capabilities.  @since 3.15.0 |






<a name="lsp.protocol.rpc.ClientCapabilities.Workspace"/>

### ClientCapabilities.Workspace
Workspace specific client capabilities.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply_edit | [bool](#bool) |  | Optional. The client supports applying batch edits to the workspace by supporting the request 'workspace/applyEdit'. |
| workspace_edit | [lsp.protocol.WorkspaceEditClientCapabilities](#lsp.protocol.WorkspaceEditClientCapabilities) |  | Optional. Capabilities specific to `WorkspaceEdit`s. |
| did_change_configuration | [DidChangeConfigurationClientCapabilities](#lsp.protocol.rpc.DidChangeConfigurationClientCapabilities) |  | Optional. Capabilities specific to the `workspace/didChangeConfiguration` notification. |
| did_change_watched_files | [DidChangeWatchedFilesClientCapabilities](#lsp.protocol.rpc.DidChangeWatchedFilesClientCapabilities) |  | Optional. Capabilities specific to the `workspace/didChangeWatchedFiles` notification. |
| symbol | [WorkspaceSymbolClientCapabilities](#lsp.protocol.rpc.WorkspaceSymbolClientCapabilities) |  | Optional. Capabilities specific to the `workspace/symbol` request. |
| execute_command | [ExecuteCommandClientCapabilities](#lsp.protocol.rpc.ExecuteCommandClientCapabilities) |  | Optional. Capabilities specific to the `workspace/executeCommand` request. |
| workspace_folders | [bool](#bool) |  | Optional. The client has support for workspace folders.  @since 3.6.0 |
| configuration | [bool](#bool) |  | Optional. The client supports `workspace/configuration` requests.  @since 3.6.0 |






<a name="lsp.protocol.rpc.CodeAction"/>

### CodeAction
CodeAction is a code action represents a change that can be performed in code, e.g. to fix a
problem or to refactor code.

A CodeAction must set either `edit` and/or a `command`. If both are supplied, the `edit` is
applied first, then the `command` is executed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | A short, human-readable, title for this code action. |
| kind | [CodeActionKind](#lsp.protocol.rpc.CodeActionKind) |  | The kind of the code action.  Used to filter code actions. |
| diagnostics | [lsp.protocol.Diagnostic](#lsp.protocol.Diagnostic) | repeated | The diagnostics that this code action resolves. |
| is_preferred | [bool](#bool) |  | Optional. Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted by keybindings.  A quick fix should be marked preferred if it properly addresses the underlying error. A refactoring should be marked preferred if it is the most reasonable choice of actions to take.  @since 3.15.0 |
| edit | [lsp.protocol.WorkspaceEdit](#lsp.protocol.WorkspaceEdit) |  | Optional. The workspace edit this code action performs. |
| command | [lsp.protocol.Command](#lsp.protocol.Command) |  | Optional. A command this code action executes. If a code action provides an edit and a command, first the edit is executed and then the command. |






<a name="lsp.protocol.rpc.CodeActionClientCapabilities"/>

### CodeActionClientCapabilities
CodeActionClientCapabilities represents a client capabilities of `textDocument/codeAction`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether code action supports dynamic registration. |
| code_action_literal_support | [CodeActionClientCapabilities.CodeActionLiteralSupport](#lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport) |  | The client supports code action literals as a valid response of the `textDocument/codeAction` request.  @since 3.8.0 |
| is_preferred_support | [bool](#bool) |  | Optional. Whether code action supports the `isPreferred` property.  @since 3.15.0 |






<a name="lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport"/>

### CodeActionClientCapabilities.CodeActionLiteralSupport



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code_action_kind | [CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind](#lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind) |  | The code action kind is supported with the following value set. |






<a name="lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind"/>

### CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind](#lsp.protocol.rpc.CodeActionClientCapabilities.CodeActionLiteralSupport.CodeActionKind) | repeated | The code action kind values the client supports. When this property exists the client also guarantees that it will handle values outside its set gracefully and falls back to a default value when unknown. |






<a name="lsp.protocol.rpc.CodeActionContext"/>

### CodeActionContext
CodeActionContext contains additional diagnostic information about the context in which
a code action is run.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| diagnostics | [lsp.protocol.Diagnostic](#lsp.protocol.Diagnostic) | repeated | An array of diagnostics known on the client side overlapping the range provided to the `textDocument/codeAction` request. They are provided so that the server knows which errors are currently presented to the user for the given range. There is no guarantee that these accurately reflect the error state of the resource. The primary parameter to compute code actions is the provided range. |
| only | [CodeActionKind](#lsp.protocol.rpc.CodeActionKind) | repeated | Requested kind of actions to return.  Actions not of this kind are filtered out by the client before being shown. So servers can omit computing them. |






<a name="lsp.protocol.rpc.CodeActionOptions"/>

### CodeActionOptions
CodeActionOptions represents a server capabilities option of codeActionProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| code_action_kinds | [CodeActionKind](#lsp.protocol.rpc.CodeActionKind) | repeated | CodeActionKinds that this server may return.  The list of kinds may be generic, such as `CodeActionKind.Refactor`, or the server may list out every specific kind they provide. |






<a name="lsp.protocol.rpc.CodeActionRegistrationOptions"/>

### CodeActionRegistrationOptions
CodeActionRegistrationOptions represents a registration option of CodeAction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| code_action_options | [CodeActionOptions](#lsp.protocol.rpc.CodeActionOptions) |  | extends |






<a name="lsp.protocol.rpc.CodeActionRequest"/>

### CodeActionRequest
CodeActionRequest params for the CodeActionRequest.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document in which the command was invoked. |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range for which the command was invoked. |
| context | [CodeActionContext](#lsp.protocol.rpc.CodeActionContext) |  | Context carrying additional information. |






<a name="lsp.protocol.rpc.CodeActionResponse"/>

### CodeActionResponse
CodeActionResponse represents a CodeAction response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [CodeActionResponse.Result](#lsp.protocol.rpc.CodeActionResponse.Result) |  |  |
| partial_result | [CodeActionResponse.PartialResult](#lsp.protocol.rpc.CodeActionResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CodeActionResponse.PartialResult"/>

### CodeActionResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| commands | [lsp.protocol.Command](#lsp.protocol.Command) | repeated |  |
| code_actions | [CodeAction](#lsp.protocol.rpc.CodeAction) | repeated |  |






<a name="lsp.protocol.rpc.CodeActionResponse.Result"/>

### CodeActionResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| commands | [lsp.protocol.Command](#lsp.protocol.Command) | repeated |  |
| code_actions | [CodeAction](#lsp.protocol.rpc.CodeAction) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.CodeLens"/>

### CodeLens
CodeLens is a code lens represents a command that should be shown along with
source text, like the number of references, a way to run tests, etc.

A code lens is _unresolved_ when no command is associated to it. For performance
reasons the creation of a code lens and resolving should be done in two stages.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range in which this code lens is valid. Should only span a single line. |
| command | [lsp.protocol.Command](#lsp.protocol.Command) |  | The command this code lens represents. |
| data | [google.protobuf.Any](#google.protobuf.Any) |  | A data entry field that is preserved on a code lens item between a code lens and a code lens resolve request. |






<a name="lsp.protocol.rpc.CodeLensClientCapabilities"/>

### CodeLensClientCapabilities
CodeLensClientCapabilities represents a client capabilities of `textDocument/codeLens` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether code lens supports dynamic registration. |






<a name="lsp.protocol.rpc.CodeLensOptions"/>

### CodeLensOptions
CodeLensOptions represents a server capabilities option of codeLensProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| resolve_provider | [bool](#bool) |  | Optional. Code lens has a resolve provider as well. |






<a name="lsp.protocol.rpc.CodeLensRegistrationOptions"/>

### CodeLensRegistrationOptions
CodeLensRegistrationOptions represents a registration option of CodeLens.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| code_lens_options | [CodeLensOptions](#lsp.protocol.rpc.CodeLensOptions) |  | extends |






<a name="lsp.protocol.rpc.CodeLensRequest"/>

### CodeLensRequest
CodeLensRequest is the parameters of a `textDocument/codeLens` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document to request code lens for. |






<a name="lsp.protocol.rpc.CodeLensResolveRequest"/>

### CodeLensResolveRequest
CodeLensResolveRequest represents a CodeLensResolveRequest request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code_lens | [CodeLens](#lsp.protocol.rpc.CodeLens) |  |  |






<a name="lsp.protocol.rpc.CodeLensResolveResponse"/>

### CodeLensResolveResponse
CodeLensResolveResponse represents a CodeLensResolve response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code_lens | [CodeLens](#lsp.protocol.rpc.CodeLens) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CodeLensResponse"/>

### CodeLensResponse
CodeLensResponse represents a CodeLens response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [CodeLensResponse.Result](#lsp.protocol.rpc.CodeLensResponse.Result) |  |  |
| partial_result | [CodeLensResponse.PartialResult](#lsp.protocol.rpc.CodeLensResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CodeLensResponse.PartialResult"/>

### CodeLensResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code_lens | [CodeLens](#lsp.protocol.rpc.CodeLens) | repeated |  |






<a name="lsp.protocol.rpc.CodeLensResponse.Result"/>

### CodeLensResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code_lens | [CodeLens](#lsp.protocol.rpc.CodeLens) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.Color"/>

### Color
Color represents a color in RGBA space.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| red | [int32](#int32) |  | The red component of this color in the range [0-1].  readonly |
| green | [int32](#int32) |  | The green component of this color in the range [0-1].  readonly |
| blue | [int32](#int32) |  | The blue component of this color in the range [0-1].  readonly |
| alpha | [int32](#int32) |  | The alpha component of this color in the range [0-1].  readonly |






<a name="lsp.protocol.rpc.ColorInformation"/>

### ColorInformation
ColorInformation represents a color information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range in the document where this color appears. |
| color | [Color](#lsp.protocol.rpc.Color) |  | The actual color value for this color range. |






<a name="lsp.protocol.rpc.ColorPresentation"/>

### ColorPresentation
ColorPresentation represents a respeonse of `textDocument/colorPresentation`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [string](#string) |  | The label of this color presentation. It will be shown on the color picker header. By default this is also the text that is inserted when selecting this color presentation. |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) |  | An [edit][TextEdit] which is applied to a document when selecting this presentation for the color. When `falsy` the [label][ColorPresentation.label] is used. |
| additional_text_edits | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) | repeated | An optional array of additional [text edits](#TextEdit) that are applied when selecting this color presentation. Edits must not overlap with the main [edit][ColorPresentation.textEdit] nor with themselves. |






<a name="lsp.protocol.rpc.ColorPresentationRequest"/>

### ColorPresentationRequest
ColorPresentationRequest is the parameters of a `textDocument/colorPresentation` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |
| color | [Color](#lsp.protocol.rpc.Color) |  | The color information to request presentations for. |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range where the color would be inserted. Serves as a context. |






<a name="lsp.protocol.rpc.ColorPresentationResponse"/>

### ColorPresentationResponse
ColorPresentationResponse represents a ColorPresentation response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ColorPresentationResponse.Result](#lsp.protocol.rpc.ColorPresentationResponse.Result) |  |  |
| partial_result | [ColorPresentationResponse.PartialResult](#lsp.protocol.rpc.ColorPresentationResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ColorPresentationResponse.PartialResult"/>

### ColorPresentationResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| color_presentations | [ColorPresentation](#lsp.protocol.rpc.ColorPresentation) | repeated |  |






<a name="lsp.protocol.rpc.ColorPresentationResponse.Result"/>

### ColorPresentationResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| color_presentations | [ColorPresentation](#lsp.protocol.rpc.ColorPresentation) | repeated |  |






<a name="lsp.protocol.rpc.CompletionClientCapabilities"/>

### CompletionClientCapabilities
CompletionClientCapabilities represents a client capabilities of
`textDocument/completion` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Whether completion supports dynamic registration. |
| completion_item | [CompletionClientCapabilities.CompletionItem](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem) |  | The client supports the following `CompletionItem` specific capabilities. |
| completion_item_kind | [CompletionClientCapabilities.CompletionItemKind](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItemKind) |  |  |
| context_support | [bool](#bool) |  | Optional. The client supports to send additional context information for a `textDocument/completion` request. |






<a name="lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem"/>

### CompletionClientCapabilities.CompletionItem



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| snippet_support | [bool](#bool) |  | Optional. Client supports snippets as insert text.  A snippet can define tab stops and placeholders with `$1`, `$2` and `${3:foo}`. `$0` defines the final tab stop, it defaults to the end of the snippet. Placeholders with equal identifiers are linked, that is typing in one will update others too. |
| commit_characters_support | [bool](#bool) |  | Optional. Client supports commit characters on a completion item. |
| documentation_format | [lsp.protocol.MarkupKind](#lsp.protocol.MarkupKind) | repeated | Client supports the follow content formats for the documentation property. The order describes the preferred format of the client. |
| deprecated_support | [bool](#bool) |  | Optional. Client supports the deprecated property on a completion item. |
| preselect_support | [bool](#bool) |  | Optional. Client supports the preselect property on a completion item. |
| tag_support | [CompletionClientCapabilities.CompletionItem.TagSupport](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem.TagSupport) |  | Client supports the tag property on a completion item. Clients supporting tags have to handle unknown tags gracefully. Clients especially need to preserve unknown tags when sending a completion item back to the server in a resolve call.  @since 3.15.0 |
| insert_replace_support | [bool](#bool) |  | Optional. Client support insert replace edit to control different behavior if a completion item is inserted in the text or should replace text.  @since 3.16.0 - Proposed state |
| resolve_additional_text_edits_support | [bool](#bool) |  | Optional. Client supports to resolve `additionalTextEdits` in the `completionItem/resolve` request. So servers can postpone computing them.  @since 3.16.0 - Proposed state |






<a name="lsp.protocol.rpc.CompletionClientCapabilities.CompletionItem.TagSupport"/>

### CompletionClientCapabilities.CompletionItem.TagSupport



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [CompletionItemTag](#lsp.protocol.rpc.CompletionItemTag) | repeated | The tags supported by the client. |






<a name="lsp.protocol.rpc.CompletionClientCapabilities.CompletionItemKind"/>

### CompletionClientCapabilities.CompletionItemKind



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [CompletionClientCapabilities.CompletionItemKind](#lsp.protocol.rpc.CompletionClientCapabilities.CompletionItemKind) | repeated | The completion item kind values the client supports. When this property exists the client also guarantees that it will handle values outside its set gracefully and falls back to a default value when unknown.  If this property is not present the client only supports the completion items kinds from `Text` to `Reference` as defined in the initial version of the protocol. |






<a name="lsp.protocol.rpc.CompletionContext"/>

### CompletionContext
CompletionContext contains additional information about the context in which a completion request
is triggered.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trigger_kind | [CompletionTriggerKind](#lsp.protocol.rpc.CompletionTriggerKind) |  | How the completion was triggered. |
| trigger_character | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | The trigger character (a single character) that has trigger code complete. Is undefined if `triggerKind !== CompletionTriggerKind.TriggerCharacter` |






<a name="lsp.protocol.rpc.CompletionItem"/>

### CompletionItem
CompletionItem is the completion items.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [string](#string) |  | The label of this completion item. By default also the text that is inserted when selecting this completion. |
| kind | [CompletionItemKind](#lsp.protocol.rpc.CompletionItemKind) |  | The kind of this completion item. Based of the kind an icon is chosen by the editor. The standardized set of available values is defined in `CompletionItemKind`. |
| tags | [CompletionItemTag](#lsp.protocol.rpc.CompletionItemTag) | repeated | Tags for this completion item.  @since 3.15.0 |
| detail | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | A human-readable string with additional information about this item, like type or symbol information. |
| markup_content | [lsp.protocol.MarkupContent](#lsp.protocol.MarkupContent) |  |  |
| content | [string](#string) |  |  |
| deprecated | [bool](#bool) |  | Indicates if this item is deprecated.  Use tags instead if supported. |
| preselect | [bool](#bool) |  | Optional. Select this item when showing.  *Note* that only one completion item can be selected and that the tool / client decides which item that is. The rule is that the *first* item of those that match best is selected. |
| sort_text | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | A string that should be used when comparing this item with other items. When `falsy` the label is used. |
| filter_text | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | A string that should be used when filtering a set of completion items. When `falsy` the label is used. |
| insert_text | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | A string that should be inserted into a document when selecting this completion. When `falsy` the label is used.  The `insertText` is subject to interpretation by the client side. Some tools might not take the string literally. For example VS Code when code complete is requested in this example `con<cursor position>` and a completion item with an `insertText` of `console` is provided it will only insert `sole`. Therefore it is recommended to use `textEdit` instead since it avoids additional client side interpretation. |
| insert_text_format | [InsertTextFormat](#lsp.protocol.rpc.InsertTextFormat) |  | The format of the insert text. The format applies to both the `insertText` property and the `newText` property of a provided `textEdit`. If omitted defaults to `InsertTextFormat.PlainText`. |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) |  | An edit which is applied to a document when selecting this completion. When an edit is provided the value of `insertText` is ignored.  NOTE: The range of the edit must be a single line range and it must contain the position at which completion has been requested. |
| additional_text_edits | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) | repeated | An optional array of additional text edits that are applied when selecting this completion. Edits must not overlap (including the same insert position) with the main edit nor with themselves.  Additional text edits should be used to change text unrelated to the current cursor position (for example adding an import statement at the top of the file if the completion item will insert an unqualified type). |
| commit_characters | [string](#string) | repeated | An optional set of characters that when pressed while this completion is active will accept it first and then type that character. *Note* that all commit characters should have `length=1` and that superfluous characters will be ignored. |
| command | [lsp.protocol.Command](#lsp.protocol.Command) |  | Optional. An optional command that is executed *after* inserting this completion. *Note* that additional modifications to the current document should be described with the additionalTextEdits-property. |
| data | [google.protobuf.Any](#google.protobuf.Any) |  | A data entry field that is preserved on a completion item between a completion and a completion resolve request. |






<a name="lsp.protocol.rpc.CompletionItemResolveRequest"/>

### CompletionItemResolveRequest
CompletionItemResolveRequest represents a CompletionItemResolve request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| completion_items | [CompletionItems](#lsp.protocol.rpc.CompletionItems) |  |  |






<a name="lsp.protocol.rpc.CompletionItemResolveResponse"/>

### CompletionItemResolveResponse
CompletionItemResolveRequest represents a CompletionItemResolve response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| completion_items | [CompletionItems](#lsp.protocol.rpc.CompletionItems) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.CompletionItems"/>

### CompletionItems
CompletionItems represents a list of CompletionItem.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| completion_items | [CompletionItems](#lsp.protocol.rpc.CompletionItems) | repeated |  |






<a name="lsp.protocol.rpc.CompletionList"/>

### CompletionList
CompletionList represents a collection of [completion items](#CompletionItem) to be presented
in the editor.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_incomplete | [bool](#bool) |  | Optional. This list it not complete. Further typing should result in recomputing this list. |
| items | [CompletionItem](#lsp.protocol.rpc.CompletionItem) | repeated | The completion items. |






<a name="lsp.protocol.rpc.CompletionOptions"/>

### CompletionOptions
CompletionOptions represents a server capabilities option of completionProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| trigger_characters | [string](#string) | repeated | Most tools trigger completion request automatically without explicitly requesting it using a keyboard shortcut (e.g. Ctrl+Space). Typically they do so when the user starts to type an identifier. For example if the user types `c` in a JavaScript file code complete will automatically pop up present `console` besides others as a completion item. Characters that make up identifiers don't need to be listed here.  If code complete should automatically be trigger on characters not being valid inside an identifier (for example `.` in JavaScript) list them in `triggerCharacters`. |
| all_commit_characters | [string](#string) | repeated | The list of all possible characters that commit a completion. This field can be used if clients don't support individual commit characters per completion item. See `ClientCapabilities.textDocument.completion.completionItem.commitCharactersSupport`.  If a server provides both `allCommitCharacters` and commit characters on an individual completion item the ones on the completion item win.  @since 3.2.0 |
| resolve_provider | [bool](#bool) |  | Optional. The server provides support to resolve additional information for a completion item. |






<a name="lsp.protocol.rpc.CompletionRegistrationOptions"/>

### CompletionRegistrationOptions
CompletionRegistrationOptions represents a registration option of Completion.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| completion_options | [CompletionOptions](#lsp.protocol.rpc.CompletionOptions) |  | extends |






<a name="lsp.protocol.rpc.CompletionRequest"/>

### CompletionRequest
CompletionRequest is the parameters of a `textDocument/completion` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| context | [CompletionContext](#lsp.protocol.rpc.CompletionContext) |  | The completion context. This is only available if the client specifies to send this using `ClientCapabilities.textDocument.completion.contextSupport === true` |






<a name="lsp.protocol.rpc.CompletionResponse"/>

### CompletionResponse
CompletionResponse represents a Completion response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| completion_items | [CompletionItems](#lsp.protocol.rpc.CompletionItems) |  |  |
| completion_list | [CompletionList](#lsp.protocol.rpc.CompletionList) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ConfigurationItem"/>

### ConfigurationItem
ConfigurationItem represents a configuration section to ask for and an additional scope URI.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| scope_uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The scope to get the configuration section for. |
| section | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | The configuration section asked for. |






<a name="lsp.protocol.rpc.ConfigurationRequest"/>

### ConfigurationRequest
ConfigurationRequest represents a Configuration request params.

@since 3.6.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [ConfigurationItem](#lsp.protocol.rpc.ConfigurationItem) | repeated |  |






<a name="lsp.protocol.rpc.ConfigurationResponse"/>

### ConfigurationResponse
ConfigurationResponse represents a Configuration response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| anys | [ConfigurationResponse.Anys](#lsp.protocol.rpc.ConfigurationResponse.Anys) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ConfigurationResponse.Anys"/>

### ConfigurationResponse.Anys



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| anys | [google.protobuf.Any](#google.protobuf.Any) | repeated |  |






<a name="lsp.protocol.rpc.DeclarationClientCapabilities"/>

### DeclarationClientCapabilities
DeclarationClientCapabilities represents a client capabilities of `textDocument/declaration`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether declaration supports dynamic registration. If this is set to `true` the client supports the new `DeclarationRegistrationOptions` return value for the corresponding server capability as well. |
| link_support | [bool](#bool) |  | Optional. The client supports additional metadata in the form of declaration links. |






<a name="lsp.protocol.rpc.DeclarationOptions"/>

### DeclarationOptions
DeclarationOptions represents a server capabilities option of declarationProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DeclarationRegistrationOptions"/>

### DeclarationRegistrationOptions
SignatureHelpRegistrationOptions represents a registration option of Declaration.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| declaration_options | [DeclarationOptions](#lsp.protocol.rpc.DeclarationOptions) |  | extends |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.DeclarationRequest"/>

### DeclarationRequest
DeclarationRequest is the parameters of a `textDocument/declaration` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |






<a name="lsp.protocol.rpc.DeclarationResponse"/>

### DeclarationResponse
DeclarationResponse represents a Declaration response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DeclarationResponse.Result](#lsp.protocol.rpc.DeclarationResponse.Result) |  |  |
| partial_result | [DeclarationResponse.PartialResult](#lsp.protocol.rpc.DeclarationResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DeclarationResponse.PartialResult"/>

### DeclarationResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |






<a name="lsp.protocol.rpc.DeclarationResponse.Result"/>

### DeclarationResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location | [lsp.protocol.Location](#lsp.protocol.Location) |  |  |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.DefinitionClientCapabilities"/>

### DefinitionClientCapabilities
DefinitionClientCapabilities represents a client capabilities of `textDocument/definition`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether definition supports dynamic registration. |
| link_support | [bool](#bool) |  | Optional. The client supports additional metadata in the form of definition links.  @since 3.14.0 |






<a name="lsp.protocol.rpc.DefinitionOptions"/>

### DefinitionOptions
DefinitionOptions represents a server capabilities option of definitionProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DefinitionRegistrationOptions"/>

### DefinitionRegistrationOptions
DefinitionRegistrationOptions represents a registration option of Definition.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| definition_options | [DefinitionOptions](#lsp.protocol.rpc.DefinitionOptions) |  | extends |






<a name="lsp.protocol.rpc.DefinitionRequest"/>

### DefinitionRequest
DefinitionRequest is the parameters of a `textDocument/definition` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |






<a name="lsp.protocol.rpc.DefinitionResponse"/>

### DefinitionResponse
DefinitionResponse represents a Definition response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DefinitionResponse.Result](#lsp.protocol.rpc.DefinitionResponse.Result) |  |  |
| partial_result | [DefinitionResponse.PartialResult](#lsp.protocol.rpc.DefinitionResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DefinitionResponse.PartialResult"/>

### DefinitionResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |






<a name="lsp.protocol.rpc.DefinitionResponse.Result"/>

### DefinitionResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location | [lsp.protocol.Location](#lsp.protocol.Location) |  |  |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.DidChangeConfigurationClientCapabilities"/>

### DidChangeConfigurationClientCapabilities
DidChangeConfigurationClientCapabilities represents a client capabilities of
`workspace/didChangeConfiguration` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Did change configuration notification supports dynamic registration. |






<a name="lsp.protocol.rpc.DidChangeConfigurationRequest"/>

### DidChangeConfigurationRequest
DidChangeConfigurationRequest represents a `workspace/didChangeConfiguration` notification
params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| settings | [google.protobuf.Any](#google.protobuf.Any) |  | The actual changed settings |






<a name="lsp.protocol.rpc.DidChangeTextDocumentRequest"/>

### DidChangeTextDocumentRequest
DidChangeTextDocumentRequest is the parameters of a `textDocument/didChange` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [lsp.protocol.VersionedTextDocumentIdentifier](#lsp.protocol.VersionedTextDocumentIdentifier) |  | The document that did change. The version number points to the version after all provided content changes have been applied. |
| content_changes | [TextDocumentContentChangeEvent](#lsp.protocol.rpc.TextDocumentContentChangeEvent) | repeated | The actual content changes. The content changes describe single state changes to the document. So if there are two content changes c1 (at array index 0) and c2 (at array index 1) for a document in state S then c1 moves the document from S to S' and c2 from S' to S''. So c1 is computed on the state S and c2 is computed on the state S'.  To mirror the content of a document using change events use the following approach: - start with the same initial content - apply the 'textDocument/didChange' notifications in the order you receive them. - apply the `TextDocumentContentChangeEvent`s in a single notification in the order you receive them. |






<a name="lsp.protocol.rpc.DidChangeWatchedFilesClientCapabilities"/>

### DidChangeWatchedFilesClientCapabilities
DidChangeWatchedFilesClientCapabilities represents a client capabilities of
`workspace/didChangeWatchedFiles` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Did change watched files notification supports dynamic registration. Please note that the current protocol doesn't support static configuration for file changes from the server side. |






<a name="lsp.protocol.rpc.DidChangeWatchedFilesRegistrationOptions"/>

### DidChangeWatchedFilesRegistrationOptions
DidChangeWatchedFilesRegistrationOptions describe options to be used when registering for file
system change events.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| watchers | [FileSystemWatcher](#lsp.protocol.rpc.FileSystemWatcher) | repeated | The watchers to register. |






<a name="lsp.protocol.rpc.DidChangeWatchedFilesRequest"/>

### DidChangeWatchedFilesRequest
DidChangeWatchedFilesRequest is the parameters of a `workspace/didChangeWatchedFiles`
notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| changes | [FileEvent](#lsp.protocol.rpc.FileEvent) | repeated | The actual file events. |






<a name="lsp.protocol.rpc.DidChangeWorkspaceFoldersRequest"/>

### DidChangeWorkspaceFoldersRequest
DidChangeWorkspaceFoldersRequest represents a `workspace/didChangeWorkspaceFolders` notification
params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event | [WorkspaceFoldersChangeEvent](#lsp.protocol.rpc.WorkspaceFoldersChangeEvent) |  | The actual workspace folder change event. |






<a name="lsp.protocol.rpc.DidCloseTextDocumentRequest"/>

### DidCloseTextDocumentRequest
DidCloseTextDocumentRequest is the parameters of a `textDocument/didClose` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document that was closed. |






<a name="lsp.protocol.rpc.DidOpenTextDocumentRequest"/>

### DidOpenTextDocumentRequest
DidOpenTextDocumentRequest is the parameters of a `textDocument/didOpen` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [lsp.protocol.TextDocumentItem](#lsp.protocol.TextDocumentItem) |  | The document that was opened. |






<a name="lsp.protocol.rpc.DidSaveTextDocumentRequest"/>

### DidSaveTextDocumentRequest
DidSaveTextDocumentRequest is the parameters of a `textDocument/didSave` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document that was saved. |
| text | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional the content when saved. Depends on the includeText value when the save notification was requested. |






<a name="lsp.protocol.rpc.DocumentColorClientCapabilities"/>

### DocumentColorClientCapabilities
DocumentColorClientCapabilities represents a client capabilities of `textDocument/documentColor`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether document color supports dynamic registration. |






<a name="lsp.protocol.rpc.DocumentColorOptions"/>

### DocumentColorOptions
DocumentColorOptions represents a server capabilities option of documentColorProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentColorRegistrationOptions"/>

### DocumentColorRegistrationOptions
DocumentColorRegistrationOptions represents a registration option of DocumentColor.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |
| document_color_options | [DocumentColorOptions](#lsp.protocol.rpc.DocumentColorOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentColorRequest"/>

### DocumentColorRequest
DocumentColorRequest is the parameters of a `textDocument/documentColor` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |






<a name="lsp.protocol.rpc.DocumentColorResponse"/>

### DocumentColorResponse
DocumentColorResponse represents a DocumentColor response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DocumentColorResponse.Result](#lsp.protocol.rpc.DocumentColorResponse.Result) |  |  |
| partial_result | [DocumentColorResponse.PartialResult](#lsp.protocol.rpc.DocumentColorResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentColorResponse.PartialResult"/>

### DocumentColorResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| color_informations | [ColorInformation](#lsp.protocol.rpc.ColorInformation) | repeated |  |






<a name="lsp.protocol.rpc.DocumentColorResponse.Result"/>

### DocumentColorResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| color_informations | [ColorInformation](#lsp.protocol.rpc.ColorInformation) | repeated |  |






<a name="lsp.protocol.rpc.DocumentFormattingClientCapabilities"/>

### DocumentFormattingClientCapabilities
DocumentFormattingClientCapabilities represents a client capabilities of
`textDocument/formatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether formatting supports dynamic registration. |






<a name="lsp.protocol.rpc.DocumentFormattingOptions"/>

### DocumentFormattingOptions
DocumentFormattingOptions represents a server capabilities option of documentFormattingProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentFormattingRegistrationOptions"/>

### DocumentFormattingRegistrationOptions
DocumentFormattingRegistrationOptions represents a registration option of DocumentFormatting.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_formatting_options | [DocumentFormattingOptions](#lsp.protocol.rpc.DocumentFormattingOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentFormattingRequest"/>

### DocumentFormattingRequest
DocumentFormattingRequest is the parameters of a `textDocument/formatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document to format. |
| options | [FormattingOptions](#lsp.protocol.rpc.FormattingOptions) |  | The format options. |






<a name="lsp.protocol.rpc.DocumentFormattingResponse"/>

### DocumentFormattingResponse
DocumentFormattingResponse represents a DocumentFormatting response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentHighlight"/>

### DocumentHighlight
DocumentHighlight is a document highlight is a range inside a text document which deserves
special attention. Usually a document highlight is visualized by changing
the background color of its range.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range this highlight applies to. |
| kind | [DocumentHighlight.DocumentHighlightKind](#lsp.protocol.rpc.DocumentHighlight.DocumentHighlightKind) |  | Optional. The highlight kind, default is DocumentHighlightKind.Text. |






<a name="lsp.protocol.rpc.DocumentHighlightClientCapabilities"/>

### DocumentHighlightClientCapabilities
DocumentHighlightClientCapabilities represents a client capabilities of
`textDocument/documentHighlight` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether document highlight supports dynamic registration. |






<a name="lsp.protocol.rpc.DocumentHighlightOptions"/>

### DocumentHighlightOptions
DocumentHighlightOptions represents a server capabilities option of documentHighlightProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentHighlightRegistrationOptions"/>

### DocumentHighlightRegistrationOptions
DocumentHighlightRegistrationOptions represents a registration option of DocumentHighlight.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_highlight_options | [DocumentHighlightOptions](#lsp.protocol.rpc.DocumentHighlightOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentHighlightRequest"/>

### DocumentHighlightRequest
DocumentHighlightRequest is the parameters of a `textDocument/documentHighlight` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |






<a name="lsp.protocol.rpc.DocumentHighlightsResponse"/>

### DocumentHighlightsResponse
DocumentHighlightsResponse represents a DocumentHighlights response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DocumentHighlightsResponse.Result](#lsp.protocol.rpc.DocumentHighlightsResponse.Result) |  |  |
| partial_result | [DocumentHighlightsResponse.PartialResult](#lsp.protocol.rpc.DocumentHighlightsResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentHighlightsResponse.PartialResult"/>

### DocumentHighlightsResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_highlights | [DocumentHighlight](#lsp.protocol.rpc.DocumentHighlight) | repeated |  |






<a name="lsp.protocol.rpc.DocumentHighlightsResponse.Result"/>

### DocumentHighlightsResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_highlights | [DocumentHighlight](#lsp.protocol.rpc.DocumentHighlight) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.DocumentLink"/>

### DocumentLink
DocumentLink is a document link is a range in a text document that links to an internal or
external resource, like another text document or a web site.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range this link applies to. |
| target | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The uri this link points to. If missing a resolve request is sent later. |
| tooltip | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | The tooltip text when you hover over this link.  If a tooltip is provided, is will be displayed in a string that includes instructions on how to trigger the link, such as `{0} (ctrl + click)`. The specific instructions vary depending on OS, user settings, and localization.  @since 3.15.0 |
| data | [google.protobuf.Any](#google.protobuf.Any) |  | A data entry field that is preserved on a document link between a DocumentLinkRequest and a DocumentLinkResolveRequest. |






<a name="lsp.protocol.rpc.DocumentLinkClientCapabilities"/>

### DocumentLinkClientCapabilities
DocumentLinkClientCapabilities represents a client capabilities of `textDocument/documentLink`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether document link supports dynamic registration. |
| tooltip_support | [bool](#bool) |  | Optional. Whether the client supports the `tooltip` property on `DocumentLink`.  @since 3.15.0 |






<a name="lsp.protocol.rpc.DocumentLinkOptions"/>

### DocumentLinkOptions
DocumentLinkOptions represents a server capabilities option of documentLinkProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| resolve_provider | [bool](#bool) |  | Optional. Document links have a resolve provider as well. |






<a name="lsp.protocol.rpc.DocumentLinkRegistrationOptions"/>

### DocumentLinkRegistrationOptions
DocumentLinkRegistrationOptions represents a registration option of DocumentLink.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_link_options | [DocumentLinkOptions](#lsp.protocol.rpc.DocumentLinkOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentLinkRequest"/>

### DocumentLinkRequest
DocumentLinkRequest is the parameters of a `textDocument/documentLink` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document to provide document links for. |






<a name="lsp.protocol.rpc.DocumentLinkResolveRequest"/>

### DocumentLinkResolveRequest
DocumentLinkResolveRequest represents a DocumentLinkResolveRequest request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_link | [DocumentLink](#lsp.protocol.rpc.DocumentLink) |  |  |






<a name="lsp.protocol.rpc.DocumentLinkResolveResponse"/>

### DocumentLinkResolveResponse
DocumentLinkResolveResponse represents a DocumentLinkResolve response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_link | [DocumentLink](#lsp.protocol.rpc.DocumentLink) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentLinkResponse"/>

### DocumentLinkResponse
DocumentLinkResponse represents a DocumentLink response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DocumentLinkResponse.Result](#lsp.protocol.rpc.DocumentLinkResponse.Result) |  |  |
| partial_result | [DocumentLinkResponse.PartialResult](#lsp.protocol.rpc.DocumentLinkResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentLinkResponse.PartialResult"/>

### DocumentLinkResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_links | [DocumentLink](#lsp.protocol.rpc.DocumentLink) | repeated |  |






<a name="lsp.protocol.rpc.DocumentLinkResponse.Result"/>

### DocumentLinkResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_links | [DocumentLink](#lsp.protocol.rpc.DocumentLink) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.DocumentOnTypeFormattingClientCapabilities"/>

### DocumentOnTypeFormattingClientCapabilities
DocumentOnTypeFormattingClientCapabilities represents a client capabilities of
`textDocument/onTypeFormatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether on type formatting supports dynamic registration. |






<a name="lsp.protocol.rpc.DocumentOnTypeFormattingOptions"/>

### DocumentOnTypeFormattingOptions
DocumentOnTypeFormattingOptions represents a server capabilities option of
documentOnTypeFormattingProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| first_trigger_character | [string](#string) |  | A character on which formatting should be triggered, like `}`. |
| more_trigger_character | [google.protobuf.StringValue](#google.protobuf.StringValue) | repeated | More trigger characters. |






<a name="lsp.protocol.rpc.DocumentOnTypeFormattingRegistrationOptions"/>

### DocumentOnTypeFormattingRegistrationOptions
DocumentOnTypeFormattingRegistrationOptions represents a registration option of
DocumentOnTypeFormatting.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_on_type_formatting_options | [DocumentOnTypeFormattingOptions](#lsp.protocol.rpc.DocumentOnTypeFormattingOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentOnTypeFormattingRequest"/>

### DocumentOnTypeFormattingRequest
DocumentOnTypeFormattingRequest is the parameters of a `textDocument/onTypeFormatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| ch | [string](#string) |  | The character that has been typed. |
| options | [FormattingOptions](#lsp.protocol.rpc.FormattingOptions) |  | The format options. |






<a name="lsp.protocol.rpc.DocumentOnTypeFormattingResponse"/>

### DocumentOnTypeFormattingResponse
DocumentOnTypeFormattingResponse represents a OnTypeFormatting response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentRangeFormattingClientCapabilities"/>

### DocumentRangeFormattingClientCapabilities
DocumentRangeFormattingClientCapabilities represents a client capabilities of
`textDocument/rangeFormatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether formatting supports dynamic registration. |






<a name="lsp.protocol.rpc.DocumentRangeFormattingOptions"/>

### DocumentRangeFormattingOptions
DocumentRangeFormattingOptions represents a server capabilities option of
documentRangeFormattingProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentRangeFormattingRegistrationOptions"/>

### DocumentRangeFormattingRegistrationOptions
DocumentRangeFormattingRegistrationOptions represents a registration option of
DocumentRangeFormatting.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_formatting_options | [DocumentFormattingOptions](#lsp.protocol.rpc.DocumentFormattingOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentRangeFormattingRequest"/>

### DocumentRangeFormattingRequest
DocumentRangeFormattingRequest is the parameters of a `textDocument/rangeFormatting` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document to format. |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range to format |
| options | [FormattingOptions](#lsp.protocol.rpc.FormattingOptions) |  | The format options |






<a name="lsp.protocol.rpc.DocumentRangeFormattingResponse"/>

### DocumentRangeFormattingResponse
DocumentRangeFormattingResponse represents a DocumentRangeFormatting response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentSymbol"/>

### DocumentSymbol
DocumentSymbol represents programming constructs like variables, classes, interfaces etc. that
appear in a document. Document symbols can be hierarchical and they have two ranges: one that
encloses its definition and one that points to its most interesting range, e.g. the range of an
identifier.
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of this symbol. Will be displayed in the user interface and therefore must not be an empty string or a string only consisting of white spaces. |
| detail | [string](#string) |  | More detail for this symbol, e.g the signature of a function. |
| kind | [SymbolKind](#lsp.protocol.rpc.SymbolKind) |  | The kind of this symbol. |
| deprecated | [bool](#bool) |  | Optional. Indicates if this symbol is deprecated. |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range enclosing this symbol not including leading/trailing whitespace but everything else like comments. This information is typically used to determine if the clients cursor is inside the symbol to reveal in the symbol in the UI. |
| selection_range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range that should be selected and revealed when this symbol is being picked, e.g the name of a function. Must be contained by the `range`. |
| children | [DocumentSymbol](#lsp.protocol.rpc.DocumentSymbol) | repeated | Children of this symbol, e.g. properties of a class. |






<a name="lsp.protocol.rpc.DocumentSymbolClientCapabilities"/>

### DocumentSymbolClientCapabilities
DocumentSymbolClientCapabilities represents a client capabilities of
`textDocument/documentSymbol` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether document symbol supports dynamic registration. |
| symbol_kind | [DocumentSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.DocumentSymbolClientCapabilities.SymbolKind) |  | Specific capabilities for the `SymbolKind` in the `textDocument/documentSymbol` request. |
| hierarchical_document_symbol_support | [bool](#bool) |  | Optional. The client supports hierarchical document symbols. |






<a name="lsp.protocol.rpc.DocumentSymbolClientCapabilities.SymbolKind"/>

### DocumentSymbolClientCapabilities.SymbolKind



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [DocumentSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.DocumentSymbolClientCapabilities.SymbolKind) | repeated | The symbol kind values the client supports. When this property exists the client also guarantees that it will handle values outside its set gracefully and falls back to a default value when unknown.  If this property is not present the client only supports the symbol kinds from `File` to `Array` as defined in the initial version of the protocol. |






<a name="lsp.protocol.rpc.DocumentSymbolOptions"/>

### DocumentSymbolOptions
DocumentSymbolOptions represents a server capabilities option of documentSymbolProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentSymbolRegistrationOptions"/>

### DocumentSymbolRegistrationOptions
DocumentSymbolRegistrationOptions represents a registration option of DocumentSymbol.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| document_symbol_options | [DocumentSymbolOptions](#lsp.protocol.rpc.DocumentSymbolOptions) |  | extends |






<a name="lsp.protocol.rpc.DocumentSymbolRequest"/>

### DocumentSymbolRequest
DocumentSymbolRequest is the parameters of a `textDocument/documentSymbol` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |






<a name="lsp.protocol.rpc.DocumentSymbolResponse"/>

### DocumentSymbolResponse
DocumentSymbolResponse represents a DocumentSymbol response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [DocumentSymbolResponse.Result](#lsp.protocol.rpc.DocumentSymbolResponse.Result) |  |  |
| partial_result | [DocumentSymbolResponse.PartialResult](#lsp.protocol.rpc.DocumentSymbolResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.DocumentSymbolResponse.PartialResult"/>

### DocumentSymbolResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_symbols | [DocumentSymbol](#lsp.protocol.rpc.DocumentSymbol) | repeated |  |
| symbol_informations | [SymbolInformation](#lsp.protocol.rpc.SymbolInformation) | repeated |  |






<a name="lsp.protocol.rpc.DocumentSymbolResponse.Result"/>

### DocumentSymbolResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| document_symbols | [DocumentSymbol](#lsp.protocol.rpc.DocumentSymbol) | repeated |  |
| symbol_informations | [SymbolInformation](#lsp.protocol.rpc.SymbolInformation) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.ExecuteCommandClientCapabilities"/>

### ExecuteCommandClientCapabilities
ExecuteCommandClientCapabilities represents a client capabilities of
`workspace/executeCommand` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Execute command supports dynamic registration. |






<a name="lsp.protocol.rpc.ExecuteCommandOptions"/>

### ExecuteCommandOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| commands | [string](#string) | repeated | The commands to be executed on the server |






<a name="lsp.protocol.rpc.ExecuteCommandParams"/>

### ExecuteCommandParams
ExecuteCommandParams is the parameters of a `workspace/executeCommand` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| command | [string](#string) |  | The identifier of the actual command handler. |
| arguments | [google.protobuf.Any](#google.protobuf.Any) | repeated | Arguments that the command should be invoked with. (-- api-linter: core::0140::reserved-words=disabled --) |






<a name="lsp.protocol.rpc.ExecuteCommandRegistrationOptions"/>

### ExecuteCommandRegistrationOptions
ExecuteCommandRegistrationOptions execute command registration options.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| execute_command_options | [ExecuteCommandOptions](#lsp.protocol.rpc.ExecuteCommandOptions) |  | extends |






<a name="lsp.protocol.rpc.ExecuteCommandResponse"/>

### ExecuteCommandResponse
ExecuteCommandResponse represents a ExecuteCommand response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| any | [google.protobuf.Any](#google.protobuf.Any) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.FileEvent"/>

### FileEvent
FileEvent an event describing a file change.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The file's URI. |
| type | [FileEvent.FileChangeType](#lsp.protocol.rpc.FileEvent.FileChangeType) |  | The change type. |






<a name="lsp.protocol.rpc.FileSystemWatcher"/>

### FileSystemWatcher
FileSystemWatcher represents a watcher of file system.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| glob_pattern | [string](#string) |  | The glob pattern to watch.  Glob patterns can have the following syntax: - `*` to match one or more characters in a path segment - `?` to match on one character in a path segment - `**` to match any number of path segments, including none - `{}` to group conditions (e.g. `**​/*.{ts,js}` matches all TypeScript and JavaScript files) - `[]` to declare a range of characters to match in a path segment (e.g., `example.[0-9]` to match on `example.0`, `example.1`, …) - `[!...]` to negate a range of characters to match in a path segment (e.g., `example.[!0-9]` to match on `example.a`, `example.b`, but not `example.0`) |
| kind | [FileSystemWatcher.WatchKind](#lsp.protocol.rpc.FileSystemWatcher.WatchKind) |  | Optional. The kind of events of interest. If omitted it defaults to follows which is 7.   WatchKind.CREATE \| WatchKind.CHANGE \| WatchKind.DELETE |






<a name="lsp.protocol.rpc.FoldingRange"/>

### FoldingRange
FoldingRange represents a folding range.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_line | [int32](#int32) |  | The zero-based line number from where the folded range starts. |
| start_character | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The zero-based character offset from where the folded range starts. If not defined, defaults to the length of the start line. |
| end_line | [int32](#int32) |  | The zero-based line number where the folded range ends. |
| end_character | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The zero-based character offset before the folded range ends. If not defined, defaults to the length of the end line. |
| kind | [FoldingRangeKind](#lsp.protocol.rpc.FoldingRangeKind) |  | Describes the kind of the folding range such as `comment` or `region`. The kind is used to categorize folding ranges and used by commands like 'Fold all comments'. See [FoldingRangeKind][FoldingRangeKind] for an enumeration of standardized kinds. |






<a name="lsp.protocol.rpc.FoldingRangeClientCapabilities"/>

### FoldingRangeClientCapabilities
FoldingRangeClientCapabilities represents a client capabilities of `textDocument/foldingRange`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementation supports dynamic registration for folding range providers. If this is set to `true` the client supports the new `FoldingRangeRegistrationOptions` return value for the corresponding server capability as well. |
| range_limit | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The maximum number of folding ranges that the client prefers to receive per document. The value serves as a hint, servers are free to follow the limit. |
| line_folding_only | [bool](#bool) |  | Optional. If set, the client signals that it only supports folding complete lines. If set, client will ignore specified `startCharacter` and `endCharacter` properties in a FoldingRange. |






<a name="lsp.protocol.rpc.FoldingRangeOptions"/>

### FoldingRangeOptions
FoldingRangeOptions represents a server capabilities option of foldingRangeProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.FoldingRangeRegistrationOptions"/>

### FoldingRangeRegistrationOptions
FoldingRangeRegistrationOptions represents a registration option of FoldingRange.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| folding_range_options | [FoldingRangeOptions](#lsp.protocol.rpc.FoldingRangeOptions) |  |  |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.FoldingRangeRequest"/>

### FoldingRangeRequest
FoldingRangeRequest is the parameters of a `textDocument/foldingRange` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |






<a name="lsp.protocol.rpc.FoldingRangeResponse"/>

### FoldingRangeResponse
FoldingRangeResponse represents a FoldingRange response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [FoldingRangeResponse.Result](#lsp.protocol.rpc.FoldingRangeResponse.Result) |  |  |
| partial_result | [FoldingRangeResponse.PartialResult](#lsp.protocol.rpc.FoldingRangeResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.FoldingRangeResponse.PartialResult"/>

### FoldingRangeResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| folding_ranges | [FoldingRange](#lsp.protocol.rpc.FoldingRange) | repeated |  |






<a name="lsp.protocol.rpc.FoldingRangeResponse.Result"/>

### FoldingRangeResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| folding_ranges | [FoldingRange](#lsp.protocol.rpc.FoldingRange) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.FormattingOptions"/>

### FormattingOptions
FormattingOptions value-object describing what options formatting should use.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tab_size | [int32](#int32) |  | Size of a tab in spaces. |
| insert_spaces | [bool](#bool) |  | Prefer spaces over tabs. |
| trim_trailing_whitespace | [bool](#bool) |  | Optional. Trim trailing whitespace on a line.  @since 3.15.0 |
| insert_final_newline | [bool](#bool) |  | Optional. Insert a newline character at the end of the file if one does not exist.  @since 3.15.0 |
| trim_final_newlines | [bool](#bool) |  | Optional. Trim all newlines after the final newline at the end of the file.  @since 3.15.0 |
| key | [FormattingOptions.KeyEntry](#lsp.protocol.rpc.FormattingOptions.KeyEntry) | repeated | Signature for further properties. |






<a name="lsp.protocol.rpc.FormattingOptions.KeyEntry"/>

### FormattingOptions.KeyEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [FormattingOptions.Value](#lsp.protocol.rpc.FormattingOptions.Value) |  |  |






<a name="lsp.protocol.rpc.FormattingOptions.Value"/>

### FormattingOptions.Value
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enable | [bool](#bool) |  |  |
| number | [int32](#int32) |  |  |
| name | [string](#string) |  |  |






<a name="lsp.protocol.rpc.Hover"/>

### Hover
Hover is the result of a hover request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| marked_string | [MarkedString](#lsp.protocol.rpc.MarkedString) |  |  |
| marked_strings | [Hover.MarkedStrings](#lsp.protocol.rpc.Hover.MarkedStrings) |  |  |
| markup_content | [lsp.protocol.MarkupContent](#lsp.protocol.MarkupContent) |  |  |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | An optional range is a range inside a text document that is used to visualize a hover, e.g. by changing the background color. |






<a name="lsp.protocol.rpc.Hover.MarkedStrings"/>

### Hover.MarkedStrings



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| marked_string | [MarkedString](#lsp.protocol.rpc.MarkedString) | repeated |  |






<a name="lsp.protocol.rpc.HoverClientCapabilities"/>

### HoverClientCapabilities
HoverClientCapabilities represents a client capabilities of `textDocument/hover` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether hover supports dynamic registration. |
| content_format | [lsp.protocol.MarkupKind](#lsp.protocol.MarkupKind) | repeated | Client supports the follow content formats for the content property. The order describes the preferred format of the client. |






<a name="lsp.protocol.rpc.HoverOptions"/>

### HoverOptions
HoverOptions represents a server capabilities option of hoverProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.HoverRegistrationOptions"/>

### HoverRegistrationOptions
CompletionRegistrationOptions represents a registration option of Hover.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| hover_options | [HoverOptions](#lsp.protocol.rpc.HoverOptions) |  | extends |






<a name="lsp.protocol.rpc.HoverRequest"/>

### HoverRequest
HoverRequest is the parameters of a `textDocument/hover` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |






<a name="lsp.protocol.rpc.HoverResponse"/>

### HoverResponse
HoverResponse represents a Hover response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hover | [Hover](#lsp.protocol.rpc.Hover) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ImplementationClientCapabilities"/>

### ImplementationClientCapabilities
ImplementationClientCapabilities represents a client capabilities of
`textDocument/implementation` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementation supports dynamic registration. If this is set to `true` the client supports the new `ImplementationRegistrationOptions` return value for the corresponding server capability as well. |
| link_support | [bool](#bool) |  | Optional. The client supports additional metadata in the form of definition links.  @since 3.14.0 |






<a name="lsp.protocol.rpc.ImplementationOptions"/>

### ImplementationOptions
ImplementationOptions represents a server capabilities option of implementationProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.ImplementationRegistrationOptions"/>

### ImplementationRegistrationOptions
ImplementationRegistrationOptions represents a registration option of Implementation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| implementation_options | [ImplementationOptions](#lsp.protocol.rpc.ImplementationOptions) |  | extends |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.ImplementationRequest"/>

### ImplementationRequest
ImplementationRequest is the parameters of a `textDocument/implementation` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |






<a name="lsp.protocol.rpc.ImplementationResponse"/>

### ImplementationResponse
ImplementationResponse represents a Implementation response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ImplementationResponse.Result](#lsp.protocol.rpc.ImplementationResponse.Result) |  |  |
| partial_result | [ImplementationResponse.PartialResult](#lsp.protocol.rpc.ImplementationResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ImplementationResponse.PartialResult"/>

### ImplementationResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |






<a name="lsp.protocol.rpc.ImplementationResponse.Result"/>

### ImplementationResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location | [lsp.protocol.Location](#lsp.protocol.Location) |  |  |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.InitializeErrorData"/>

### InitializeErrorData
InitializeError known error data for InitializeResponse response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| retry | [bool](#bool) |  | Indicates whether the client execute the following retry logic: (1) show the message provided by the ResponseError to the user (2) user selects retry or cancel (3) if user selected retry the initialize method is sent again. |






<a name="lsp.protocol.rpc.InitializeErrorUnknownProtocolVersion"/>

### InitializeErrorUnknownProtocolVersion
InitializeError known error codes.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unknown_protocol_version | [int32](#int32) |  | If the protocol version provided by the client can't be handled by the server.  This initialize error got replaced by client capabilities. There is no version handshake in version 3.0x. |






<a name="lsp.protocol.rpc.InitializeRequest"/>

### InitializeRequest
InitializeRequest is the sent as the first request from the client to the server. If the server
receives a request or notification before the initialize request it should act as follows:

- For a request the response should be an error with code: -32002. The message can be picked by
the server.
- Notifications should be dropped, except for the exit notification. This will allow the exit of
a server without an initialize request.

Until the server has responded to the initialize request with an InitializeResponse, the client
must not send any additional requests or notifications to the server.

In addition the server is not allowed to send any requests or notifications to the client until
it has responded with an InitializeResponse, with the exception that during the initialize
request the server is allowed to send the notifications window/showMessage, window/logMessage and
telemetry/event as well as the window/showMessageRequest request to the client.

In case the client sets up a progress token in the initialize params (e.g. property
workDoneToken) the server is also allowed to use that token (and only that token) using the
$/progress notification sent from the server to the client.

The initialize request may only be sent once.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| process_id | [int32](#int32) |  | Required. The process Id of the parent process that started the server. Is null if the process has not been started by another process. If the parent process is not alive then the server should exit (see exit notification) its process. |
| client_info | [InitializeRequest.ClientInfo](#lsp.protocol.rpc.InitializeRequest.ClientInfo) |  | Optional. Information about the client.  @since 3.15.0 |
| root_path | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. The rootPath of the workspace. Is null if no folder is open.  Use rootUri instead of. |
| root_uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The rootUri of the workspace. Is null if no folder is open. If both `rootPath` and `rootUri` are set `rootUri` wins.  nullable |
| initialization_options | [google.protobuf.Any](#google.protobuf.Any) |  | Optional. User provided initialization options. |
| capabilities | [ClientCapabilities](#lsp.protocol.rpc.ClientCapabilities) |  | Required. The capabilities provided by the client (editor or tool) |
| trace | [lsp.protocol.TraceValue](#lsp.protocol.TraceValue) |  | Optional. The initial trace setting. If omitted trace is disabled ('off'). |
| workspace_folders | [WorkspaceFolder](#lsp.protocol.rpc.WorkspaceFolder) | repeated | Optional. The workspace folders configured in the client when the server starts. This property is only available if the client supports workspace folders. It can be `null` if the client supports workspace folders but none are configured.  @since 3.6.0  nullable |






<a name="lsp.protocol.rpc.InitializeRequest.ClientInfo"/>

### InitializeRequest.ClientInfo
(-- api-linter: core::0140::abbreviations=disabled
    api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the client as defined by the client. |
| version | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. The client's version as defined by the client. |






<a name="lsp.protocol.rpc.InitializeResponse"/>

### InitializeResponse
InitializeResponse result of Initialize.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capabilities | [ServerCapabilities](#lsp.protocol.rpc.ServerCapabilities) |  | The capabilities the language server provides. |
| server_info | [InitializeResponse.ServerInfo](#lsp.protocol.rpc.InitializeResponse.ServerInfo) |  | Optional. Information about the server.  @since 3.15.0 |






<a name="lsp.protocol.rpc.InitializeResponse.ServerInfo"/>

### InitializeResponse.ServerInfo
Information about the server.

@since 3.15.0
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the server as defined by the server. |
| version | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. The server's version as defined by the server. |






<a name="lsp.protocol.rpc.InitializedRequest"/>

### InitializedRequest
InitializedRequest is the initialized notification is sent from the client to the server after
the client received the result of the initialize request but before the client is sending any
other request or notification to the server. The server can use the initialized notification for
example to dynamically register capabilities. The initialized notification may only be sent once.






<a name="lsp.protocol.rpc.LocationLinks"/>

### LocationLinks
LocationLinks represents a list of LocationLink.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) | repeated |  |






<a name="lsp.protocol.rpc.Locations"/>

### Locations
Locations represents a list of Location.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) | repeated |  |






<a name="lsp.protocol.rpc.LogMessageRequest"/>

### LogMessageRequest
LogMessageRequest represents a notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [MessageType](#lsp.protocol.rpc.MessageType) |  | The message type. See [MessageType][MessageType]. |
| message | [string](#string) |  | The actual message |






<a name="lsp.protocol.rpc.LogTraceRequest"/>

### LogTraceRequest
LogTraceRequest represents a `$/logTrace` notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  | The message to be logged. |
| verbose | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | Optional. Additional information that can be computed if the `trace` configuration is set to `'verbose'`. |






<a name="lsp.protocol.rpc.MarkedString"/>

### MarkedString
MarkedString can be used to render human readable text. It is either a markdown string
or a code-block that provides a language and a code snippet. The language identifier
is semantically equal to the optional language identifier in fenced code blocks in GitHub
issues. See
https://help.github.com/articles/creating-and-highlighting-code-blocks/#syntax-highlighting

The pair of a language and a value is an equivalent to markdown:

```${language}
${value}
```

Note that markdown strings will be sanitized - that means html will be escaped.

Deprecated: use MarkupContent instead.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text | [string](#string) |  |  |
| code_block | [MarkedString.CodeBlock](#lsp.protocol.rpc.MarkedString.CodeBlock) |  |  |






<a name="lsp.protocol.rpc.MarkedString.CodeBlock"/>

### MarkedString.CodeBlock



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| language | [string](#string) |  | (-- api-linter: core::0143::standardized-codes=disabled --) |
| value | [string](#string) |  |  |






<a name="lsp.protocol.rpc.MessageActionItem"/>

### MessageActionItem
MessageActionItem is the message action items to present.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | A short title like 'Retry', 'Open Log' etc. |






<a name="lsp.protocol.rpc.ParameterInformation"/>

### ParameterInformation
ParameterInformation represents a parameter of a callable-signature. A parameter can
have a label and a doc-comment.
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| offset | [ParameterInformation.Offset](#lsp.protocol.rpc.ParameterInformation.Offset) |  |  |
| markup | [string](#string) |  |  |
| markup_content | [lsp.protocol.MarkupContent](#lsp.protocol.MarkupContent) |  |  |






<a name="lsp.protocol.rpc.ParameterInformation.Offset"/>

### ParameterInformation.Offset



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [int32](#int32) |  |  |
| end | [int32](#int32) |  |  |






<a name="lsp.protocol.rpc.PartialResultParams"/>

### PartialResultParams
PartialResultParams a parameter literal used to pass a partial result token.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| partial_result_token | [int32](#int32) |  | An optional token that a server can use to report partial results (e.g. streaming) to the client. |






<a name="lsp.protocol.rpc.PrepareRenameRequest"/>

### PrepareRenameRequest
PrepareRenameRequest is the parameters of a `textDocument/prepareRename` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |






<a name="lsp.protocol.rpc.PrepareRenameResponse"/>

### PrepareRenameResponse
PrepareRenameResponse represents a PrepareRename response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  |  |
| result | [PrepareRenameResponse.Result](#lsp.protocol.rpc.PrepareRenameResponse.Result) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.PrepareRenameResponse.Result"/>

### PrepareRenameResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  |  |
| place_holder | [string](#string) |  |  |






<a name="lsp.protocol.rpc.ProgressRequest"/>

### ProgressRequest
ProgressRequest represents a progress notification params.

@since 3.15.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [ProgressToken](#lsp.protocol.rpc.ProgressToken) |  | Required. The progress token provided by the client or server. |
| value | [google.protobuf.Any](#google.protobuf.Any) |  | Required. The progress data. |






<a name="lsp.protocol.rpc.ProgressToken"/>

### ProgressToken
ProgressToken is the report progress token.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [int32](#int32) |  | Required. |






<a name="lsp.protocol.rpc.PublishDiagnosticsClientCapabilities"/>

### PublishDiagnosticsClientCapabilities
PublishDiagnosticsClientCapabilities represents a client capabilities of
`textDocument/publishDiagnostics` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| related_information | [bool](#bool) |  | Optional. Whether the clients accepts diagnostics with related information. |
| tag_support | [PublishDiagnosticsClientCapabilities.TagSupport](#lsp.protocol.rpc.PublishDiagnosticsClientCapabilities.TagSupport) |  | Client supports the tag property to provide meta data about a diagnostic. Clients supporting tags have to handle unknown tags gracefully.  @since 3.15.0 |
| version_support | [bool](#bool) |  | Optional. Whether the client interprets the version property of the `textDocument/publishDiagnostics` notification's parameter.  @since 3.15.0 |






<a name="lsp.protocol.rpc.PublishDiagnosticsClientCapabilities.TagSupport"/>

### PublishDiagnosticsClientCapabilities.TagSupport



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [lsp.protocol.DiagnosticTag](#lsp.protocol.DiagnosticTag) | repeated | The tags supported by the client. |






<a name="lsp.protocol.rpc.PublishDiagnosticsRequest"/>

### PublishDiagnosticsRequest
PublishDiagnosticsRequest is the parameters of a `textDocument/publishDiagnostics` notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The URI for which diagnostic information is reported. |
| version | [int32](#int32) |  | Optional the version number of the document the diagnostics are published for.  @since 3.15.0 |
| diagnostics | [lsp.protocol.Diagnostic](#lsp.protocol.Diagnostic) | repeated | An array of diagnostic information items. |






<a name="lsp.protocol.rpc.ReferenceClientCapabilities"/>

### ReferenceClientCapabilities
ImplementationClientCapabilities represents a client capabilities of `textDocument/references`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether references supports dynamic registration. |






<a name="lsp.protocol.rpc.ReferenceContext"/>

### ReferenceContext
ReferenceContext whether the references supports include the declaration


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| include_declaration | [bool](#bool) |  | Include the declaration of the current symbol. |






<a name="lsp.protocol.rpc.ReferenceOptions"/>

### ReferenceOptions
ReferenceOptions represents a server capabilities option of referenceProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.ReferenceRegistrationOptions"/>

### ReferenceRegistrationOptions
ReferenceRegistrationOptions represents a registration option of Reference.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| reference_options | [ReferenceOptions](#lsp.protocol.rpc.ReferenceOptions) |  | extends |






<a name="lsp.protocol.rpc.ReferenceRequest"/>

### ReferenceRequest
ReferenceRequest is the parameters of a `textDocument/references` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| context | [ReferenceContext](#lsp.protocol.rpc.ReferenceContext) |  |  |






<a name="lsp.protocol.rpc.ReferenceResponse"/>

### ReferenceResponse
ReferenceResponse represents a Reference response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [ReferenceResponse.Result](#lsp.protocol.rpc.ReferenceResponse.Result) |  |  |
| partial_result | [ReferenceResponse.PartialResult](#lsp.protocol.rpc.ReferenceResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.ReferenceResponse.PartialResult"/>

### ReferenceResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |






<a name="lsp.protocol.rpc.ReferenceResponse.Result"/>

### ReferenceResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.Registration"/>

### Registration
Registration is the general parameters to register for a capability.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The id used to register the request. The id can be used to deregister the request again. |
| method | [string](#string) |  | The method / capability to register for. |
| register_options | [google.protobuf.Any](#google.protobuf.Any) |  | Options necessary for the registration. |






<a name="lsp.protocol.rpc.RegistrationParams"/>

### RegistrationParams
RegistrationParams represents a `client/registerCapability` request params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| registrations | [Registration](#lsp.protocol.rpc.Registration) | repeated |  |






<a name="lsp.protocol.rpc.RenameClientCapabilities"/>

### RenameClientCapabilities
RenameClientCapabilities represents a client capabilities of `textDocument/rename` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether rename supports dynamic registration. |
| prepare_support | [bool](#bool) |  | Optional. Client supports testing for validity of rename operations before execution.  @since version 3.12.0 |






<a name="lsp.protocol.rpc.RenameOptions"/>

### RenameOptions
RenameOptions represents a server capabilities option of renameProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| prepare_provider | [bool](#bool) |  | Optional. Renames should be checked and tested before being executed. |






<a name="lsp.protocol.rpc.RenameRegistrationOptions"/>

### RenameRegistrationOptions
RenameRegistrationOptions represents a registration option of Rename.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| rename_options | [RenameOptions](#lsp.protocol.rpc.RenameOptions) |  | extends |






<a name="lsp.protocol.rpc.RenameRequest"/>

### RenameRequest
RenameRequest is the parameters of a `textDocument/rename` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| new_name | [string](#string) |  | The new name of the symbol. If the given name is not valid the request must return a [ResponseError](#ResponseError) with an appropriate message set.  (-- api-linter: core::0122::name-suffix=disabled --) |






<a name="lsp.protocol.rpc.RenameResponse"/>

### RenameResponse
RenameResponse represents a Rename response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace_edit | [lsp.protocol.WorkspaceEdit](#lsp.protocol.WorkspaceEdit) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.SaveOptions"/>

### SaveOptions
SaveOptions represents a server capabilities option of textDocumentSync.save.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| include_text | [bool](#bool) |  | Optional. The client is supposed to include the content on save. |






<a name="lsp.protocol.rpc.SelectionRange"/>

### SelectionRange
SelectionRange represents a range of selection.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The [range][Range] of this selection range. |
| parent | [SelectionRange](#lsp.protocol.rpc.SelectionRange) |  | The parent selection range containing this range. Therefore `parent.range` must contain `this.range`. |






<a name="lsp.protocol.rpc.SelectionRangeClientCapabilities"/>

### SelectionRangeClientCapabilities
FoldingRangeClientCapabilities represents a client capabilities of `textDocument/selectionRange`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementatirn supports dynamic registration for selection range providers. If this is set to `true` the client supports the new `SelectionRangeRegistrationOptions` return value for the corresponding server capability as well. |






<a name="lsp.protocol.rpc.SelectionRangeOptions"/>

### SelectionRangeOptions
SelectionRangeOptions represents a server capabilities option of selectionRangeProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.SelectionRangeRegistrationOptions"/>

### SelectionRangeRegistrationOptions
SelectionRangeRegistrationOptions represents a registration option of SelectionRange.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| selection_range_options | [SelectionRangeOptions](#lsp.protocol.rpc.SelectionRangeOptions) |  |  |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.SelectionRangeRequest"/>

### SelectionRangeRequest
SelectionRangeRequest is the parameters of a `textDocument/selectionRange` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |
| positions | [lsp.protocol.Position](#lsp.protocol.Position) | repeated | The positions inside the text document. |






<a name="lsp.protocol.rpc.SelectionRangeResponse"/>

### SelectionRangeResponse
SelectionRangeResponse represents a SelectionRangeResponse response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [SelectionRangeResponse.Result](#lsp.protocol.rpc.SelectionRangeResponse.Result) |  |  |
| partial_result | [SelectionRangeResponse.PartialResult](#lsp.protocol.rpc.SelectionRangeResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.SelectionRangeResponse.PartialResult"/>

### SelectionRangeResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| selection_ranges | [SelectionRange](#lsp.protocol.rpc.SelectionRange) | repeated |  |






<a name="lsp.protocol.rpc.SelectionRangeResponse.Result"/>

### SelectionRangeResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| selection_ranges | [SelectionRange](#lsp.protocol.rpc.SelectionRange) | repeated |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.SemanticTokens"/>

### SemanticTokens
SemanticTokens represents a list of semantic token.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result_id | [google.protobuf.StringValue](#google.protobuf.StringValue) |  | An optional result id. If provided and clients support delta updating the client will include the result id in the next semantic token request. A server can then instead of computing all semantic tokens again simply send a delta. |
| data | [int32](#int32) | repeated | The actual tokens. |






<a name="lsp.protocol.rpc.SemanticTokensClientCapabilities"/>

### SemanticTokensClientCapabilities
SemanticTokensClientCapabilities represents a client capabilities of
`textDocument/semanticTokens/*` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementation supports dynamic registration. If this is set to `true` the client supports the new `([TextDocumentRegistrationOptions][TextDocumentRegistrationOptions] & [StaticRegistrationOptions][StaticRegistrationOptions])` return value for the corresponding server capability as well. |
| requests | [SemanticTokensClientCapabilities.Requests](#lsp.protocol.rpc.SemanticTokensClientCapabilities.Requests) |  | Which requests the client supports and might send to the server. |
| token_types | [SemanticTokenTypes](#lsp.protocol.rpc.SemanticTokenTypes) | repeated | The token types that the client supports. |
| token_modifiers | [SemanticTokenModifiers](#lsp.protocol.rpc.SemanticTokenModifiers) | repeated | The token modifiers that the client supports. |
| formats | [TokenFormat](#lsp.protocol.rpc.TokenFormat) | repeated | The formats the clients supports. |






<a name="lsp.protocol.rpc.SemanticTokensClientCapabilities.Requests"/>

### SemanticTokensClientCapabilities.Requests



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enable_range | [bool](#bool) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| enable_full | [bool](#bool) |  |  |
| delta | [bool](#bool) |  |  |






<a name="lsp.protocol.rpc.SemanticTokensDelta"/>

### SemanticTokensDelta
SemanticTokensDelta represents a list of semantic delta token.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result_id | [string](#string) |  | readonly |
| edits | [SemanticTokensEdit](#lsp.protocol.rpc.SemanticTokensEdit) | repeated | The semantic token edits to transform a previous result into a new result. |






<a name="lsp.protocol.rpc.SemanticTokensDeltaParams"/>

### SemanticTokensDeltaParams
SemanticTokensDeltaParams is the parameters of a `textDocument/semanticTokens/full/delta`
request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |
| previous_result_id | [string](#string) |  | The previous result id. |






<a name="lsp.protocol.rpc.SemanticTokensDeltaPartialResult"/>

### SemanticTokensDeltaPartialResult
SemanticTokensDeltaPartialResult represents a partial result of
`textDocument/semanticTokens/full/delta` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| edits | [SemanticTokensEdit](#lsp.protocol.rpc.SemanticTokensEdit) | repeated |  |






<a name="lsp.protocol.rpc.SemanticTokensEdit"/>

### SemanticTokensEdit
SemanticTokensEdit represents a semantic token edit.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [int32](#int32) |  | The start offset of the edit. |
| delete_count | [int32](#int32) |  | The count of elements to remove. |
| data | [int32](#int32) | repeated | The elements to insert. |






<a name="lsp.protocol.rpc.SemanticTokensLegend"/>

### SemanticTokensLegend
SemanticTokensLegend represents a legend of semantic tokens.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token_types | [SemanticTokenTypes](#lsp.protocol.rpc.SemanticTokenTypes) | repeated | The token types a server uses. |
| token_modifiers | [SemanticTokenModifiers](#lsp.protocol.rpc.SemanticTokenModifiers) | repeated | The token modifiers a server uses. |






<a name="lsp.protocol.rpc.SemanticTokensOptions"/>

### SemanticTokensOptions
SemanticTokensOptions represents a server capabilities option of semanticTokensProvider.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| legend | [SemanticTokensLegend](#lsp.protocol.rpc.SemanticTokensLegend) |  | The legend used by the server |
| enable_range | [bool](#bool) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| enable_full | [bool](#bool) |  |  |
| delta | [bool](#bool) |  |  |






<a name="lsp.protocol.rpc.SemanticTokensParams"/>

### SemanticTokensParams
SemanticTokensParams is the parameters of a `textDocument/semanticTokens/full` request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The text document. |






<a name="lsp.protocol.rpc.SemanticTokensPartialResult"/>

### SemanticTokensPartialResult
SemanticTokensPartialResult represents a partial result of `textDocument/semanticTokens/full`
request.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [int32](#int32) | repeated |  |






<a name="lsp.protocol.rpc.SemanticTokensRegistrationOptions"/>

### SemanticTokensRegistrationOptions
SemanticTokensRegistrationOptions represents a registration option of SemanticTokens.

@since 3.16.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| semantic_tokens_options | [SemanticTokensOptions](#lsp.protocol.rpc.SemanticTokensOptions) |  |  |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.ServerCapabilities"/>

### ServerCapabilities
ServerCapabilities is the signal of server capabilities.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_sync_options | [TextDocumentSyncOptions](#lsp.protocol.rpc.TextDocumentSyncOptions) |  |  |
| text_document_sync_kind | [TextDocumentSyncKind](#lsp.protocol.rpc.TextDocumentSyncKind) |  |  |
| completion_provider | [CompletionOptions](#lsp.protocol.rpc.CompletionOptions) |  | Optional. The server provides completion support. |
| enable_hover_provider | [bool](#bool) |  |  |
| hover_options | [HoverOptions](#lsp.protocol.rpc.HoverOptions) |  |  |
| signature_help_provider | [SignatureHelpOptions](#lsp.protocol.rpc.SignatureHelpOptions) |  | Optional. The server provides signature help support. |
| enable_declaration_provider | [bool](#bool) |  |  |
| declaration_options | [DeclarationOptions](#lsp.protocol.rpc.DeclarationOptions) |  |  |
| declaration_registration_options | [DeclarationRegistrationOptions](#lsp.protocol.rpc.DeclarationRegistrationOptions) |  |  |
| enable_definition_provider | [bool](#bool) |  |  |
| definition_options | [DefinitionOptions](#lsp.protocol.rpc.DefinitionOptions) |  |  |
| enable_type_definition_provider | [bool](#bool) |  |  |
| type_definition_options | [TypeDefinitionOptions](#lsp.protocol.rpc.TypeDefinitionOptions) |  |  |
| type_definition_registration_options | [TypeDefinitionRegistrationOptions](#lsp.protocol.rpc.TypeDefinitionRegistrationOptions) |  |  |
| enable_implementation_provider | [bool](#bool) |  |  |
| implementation_options | [ImplementationOptions](#lsp.protocol.rpc.ImplementationOptions) |  |  |
| implementation_registration_options | [ImplementationRegistrationOptions](#lsp.protocol.rpc.ImplementationRegistrationOptions) |  |  |
| enable_references_provider | [bool](#bool) |  |  |
| reference_options | [ReferenceOptions](#lsp.protocol.rpc.ReferenceOptions) |  |  |
| enable_document_highlight_provider | [bool](#bool) |  |  |
| document_highlight_options | [DocumentHighlightOptions](#lsp.protocol.rpc.DocumentHighlightOptions) |  |  |
| enable_document_symbol_provider | [bool](#bool) |  |  |
| document_symbol_options | [DocumentSymbolOptions](#lsp.protocol.rpc.DocumentSymbolOptions) |  |  |
| enable_code_action_provider | [bool](#bool) |  |  |
| code_action_options | [CodeActionOptions](#lsp.protocol.rpc.CodeActionOptions) |  |  |
| codelens_provider | [CodeLensOptions](#lsp.protocol.rpc.CodeLensOptions) |  | Optional. The server provides code lens. |
| document_link_provider | [DocumentLinkOptions](#lsp.protocol.rpc.DocumentLinkOptions) |  | Optional. The server provides document link support. |
| enable_color_provider | [bool](#bool) |  |  |
| document_color_options | [DocumentColorOptions](#lsp.protocol.rpc.DocumentColorOptions) |  |  |
| document_color_registration_options | [DocumentColorRegistrationOptions](#lsp.protocol.rpc.DocumentColorRegistrationOptions) |  |  |
| enable_document_formatting_provider | [bool](#bool) |  |  |
| document_formatting_options | [DocumentFormattingOptions](#lsp.protocol.rpc.DocumentFormattingOptions) |  |  |
| enable_document_range_formatting_provider | [bool](#bool) |  |  |
| document_range_formatting_options | [DocumentRangeFormattingOptions](#lsp.protocol.rpc.DocumentRangeFormattingOptions) |  |  |
| document_on_type_formatting_provider | [DocumentOnTypeFormattingOptions](#lsp.protocol.rpc.DocumentOnTypeFormattingOptions) |  | Optional. The server provides document formatting on typing. |
| enable_rename_provider | [bool](#bool) |  |  |
| rename_options | [RenameOptions](#lsp.protocol.rpc.RenameOptions) |  |  |
| enable_folding_range_provider | [bool](#bool) |  |  |
| folding_range_options | [FoldingRangeOptions](#lsp.protocol.rpc.FoldingRangeOptions) |  |  |
| folding_range_registration_options | [FoldingRangeRegistrationOptions](#lsp.protocol.rpc.FoldingRangeRegistrationOptions) |  |  |
| execute_command_provider | [ExecuteCommandOptions](#lsp.protocol.rpc.ExecuteCommandOptions) |  | Optional. The server provides execute command support. |
| enable_selection_range_provider | [bool](#bool) |  |  |
| selection_range_options | [SelectionRangeOptions](#lsp.protocol.rpc.SelectionRangeOptions) |  |  |
| selection_range_registration_options | [SelectionRangeRegistrationOptions](#lsp.protocol.rpc.SelectionRangeRegistrationOptions) |  |  |
| workspace_symbol_provider | [bool](#bool) |  | The server provides workspace symbol support. |
| workspace | [ServerCapabilities.Workspace](#lsp.protocol.rpc.ServerCapabilities.Workspace) |  | Optional. |
| experimental | [google.protobuf.Any](#google.protobuf.Any) |  | Optional. Experimental server capabilities. |






<a name="lsp.protocol.rpc.ServerCapabilities.Workspace"/>

### ServerCapabilities.Workspace
Workspace specific server capabilities


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace_folders | [WorkspaceFoldersServerCapabilities](#lsp.protocol.rpc.WorkspaceFoldersServerCapabilities) |  | Optional. The server supports workspace folder.  @since 3.6.0 |






<a name="lsp.protocol.rpc.SetTraceRequest"/>

### SetTraceRequest
SetTraceRequest represents a `$/setTrace` notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [lsp.protocol.TraceValue](#lsp.protocol.TraceValue) |  | The new value that should be assigned to the trace setting. |






<a name="lsp.protocol.rpc.ShowMessageRequestParams"/>

### ShowMessageRequestParams
ShowMessageRequestParams represents a `window/showMessage` notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [MessageType](#lsp.protocol.rpc.MessageType) |  | The message type. See [MessageType][MessageType]. |
| message | [string](#string) |  | The actual message. |






<a name="lsp.protocol.rpc.ShowMessageRequestRequest"/>

### ShowMessageRequestRequest
ShowMessageRequestRequest represents a `window/showMessageRequest` request params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [MessageType](#lsp.protocol.rpc.MessageType) |  | The message type. See [MessageType][MessageType]. |
| message | [string](#string) |  | The actual message. |
| actions | [MessageActionItem](#lsp.protocol.rpc.MessageActionItem) | repeated | The message action items to present. |






<a name="lsp.protocol.rpc.ShowMessageResponse"/>

### ShowMessageResponse
ShowMessageResponse represents a ShowMessage response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_action_item | [MessageActionItem](#lsp.protocol.rpc.MessageActionItem) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.SignatureHelp"/>

### SignatureHelp
SignatureHelp represents the signature of something
callable. There can be multiple signature but only one
active and only one active parameter.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signatures | [SignatureInformation](#lsp.protocol.rpc.SignatureInformation) | repeated | One or more signatures. If no signatures are available the signature help request should return `null`. |
| active_signature | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The active signature. If omitted or the value lies outside the range of `signatures` the value defaults to zero or is ignore if the `SignatureHelp` as no signatures.  Whenever possible implementors should make an active decision about the active signature and shouldn't rely on a default value.  In future version of the protocol this property might become mandatory to better express this. |
| active_parameter | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The active parameter of the active signature. If omitted or the value lies outside the range of `signatures[activeSignature].parameters` defaults to 0 if the active signature has parameters. If the active signature has no parameters it is ignored. In future version of the protocol this property might become mandatory to better express the active parameter if the active signature does have any. |






<a name="lsp.protocol.rpc.SignatureHelpClientCapabilities"/>

### SignatureHelpClientCapabilities
SignatureHelpClientCapabilities represents a client capabilities of `textDocument/signatureHelp`
request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether signature help supports dynamic registration. |
| signature_information | [SignatureHelpClientCapabilities.SignatureInformation](#lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation) |  |  |
| context_support | [bool](#bool) |  | Optional. The client supports to send additional context information for a `textDocument/signatureHelp` request. A client that opts into contextSupport will also support the `retriggerCharacters` on `SignatureHelpOptions`.  @since 3.15.0 |






<a name="lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation"/>

### SignatureHelpClientCapabilities.SignatureInformation
The client supports the following `SignatureInformation`
specific properties.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| documentation_format | [lsp.protocol.MarkupKind](#lsp.protocol.MarkupKind) | repeated | Client supports the follow content formats for the documentation property. The order describes the preferred format of the client. |
| parameter_information | [SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation](#lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation) |  | Client capabilities specific to parameter information. |
| active_parameter_support | [bool](#bool) |  | Optional. The client support the `activeParameter` property on `SignatureInformation` literal.  @since 3.16.0 - proposed state |






<a name="lsp.protocol.rpc.SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation"/>

### SignatureHelpClientCapabilities.SignatureInformation.ParameterInformation



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label_offset_support | [bool](#bool) |  | Optional. The client supports processing label offsets instead of a simple label string.  @since 3.14.0 |






<a name="lsp.protocol.rpc.SignatureHelpContext"/>

### SignatureHelpContext
Additional information about the context in which a signature help request was triggered.

@since 3.15.0


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trigger_kind | [SignatureHelpContext.SignatureHelpTriggerKind](#lsp.protocol.rpc.SignatureHelpContext.SignatureHelpTriggerKind) |  | Action that caused signature help to be triggered. |
| trigger_character | [string](#string) |  | Character that caused signature help to be triggered.  This is undefined when `trigger_kind !== SignatureHelpTriggerKind.TriggerCharacter` |
| is_retrigger | [bool](#bool) |  | `true` if signature help was already showing when it was triggered.  Retriggers occur when the signature help is already active and can be caused by actions such as typing a trigger character, a cursor move, or document content changes. |
| active_signature_help | [SignatureHelp](#lsp.protocol.rpc.SignatureHelp) |  | The currently active `SignatureHelp`.  The `activeSignatureHelp` has its `SignatureHelp.activeSignature` field updated based on the user navigating through available signatures. |






<a name="lsp.protocol.rpc.SignatureHelpOptions"/>

### SignatureHelpOptions
SignatureHelpOptions represents a server capabilities option of signatureHelpProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |
| trigger_characters | [string](#string) | repeated | The characters that trigger signature help automatically. |
| retrigger_characters | [string](#string) | repeated | List of characters that re-trigger signature help.  These trigger characters are only active when signature help is already showing. All trigger characters are also counted as re-trigger characters.  @since 3.15.0 |






<a name="lsp.protocol.rpc.SignatureHelpRegistrationOptions"/>

### SignatureHelpRegistrationOptions
SignatureHelpRegistrationOptions represents a registration option of SignatureHelp.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| signature_help_options | [SignatureHelpOptions](#lsp.protocol.rpc.SignatureHelpOptions) |  | extends |






<a name="lsp.protocol.rpc.SignatureHelpRequest"/>

### SignatureHelpRequest
SignatureHelpRequest is the parameters of a `textDocument/signatureHelp` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| context | [SignatureHelpContext](#lsp.protocol.rpc.SignatureHelpContext) |  | The signature help context. This is only available if the client specifies to send this using the client capability `textDocument.signatureHelp.contextSupport === true`  @since 3.15.0 |






<a name="lsp.protocol.rpc.SignatureHelpResponse"/>

### SignatureHelpResponse
SignatureHelpResponse represents a SignatureHelp response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_help | [SignatureHelp](#lsp.protocol.rpc.SignatureHelp) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.SignatureInformation"/>

### SignatureInformation
SignatureInformation represents the signature of something callable. A signature
can have a label, like a function-name, a doc-comment, and
a set of parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| label | [string](#string) |  | The label of this signature. Will be shown in the UI. |
| markup | [string](#string) |  |  |
| markup_content | [lsp.protocol.MarkupContent](#lsp.protocol.MarkupContent) |  |  |
| parameters | [ParameterInformation](#lsp.protocol.rpc.ParameterInformation) | repeated | The parameters of this signature. |
| active_parameter | [google.protobuf.Int32Value](#google.protobuf.Int32Value) |  | The index of the active parameter.  If provided, this is used in place of `SignatureHelp.activeParameter`.  @since 3.16.0 - proposed state |






<a name="lsp.protocol.rpc.SymbolInformation"/>

### SymbolInformation
SymbolInformation represents information about programming constructs like variables, classes,
interfaces etc.
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of this symbol. |
| kind | [SymbolKind](#lsp.protocol.rpc.SymbolKind) |  | The kind of this symbol. |
| deprecated | [bool](#bool) |  | Optional. Indicates if this symbol is deprecated. |
| location | [lsp.protocol.Location](#lsp.protocol.Location) |  | The location of this symbol. The location's range is used by a tool to reveal the location in the editor. If the symbol is selected in the tool the range's start information is used to position the cursor. So the range usually spans more then the actual symbol's name and does normally include things like visibility modifiers.  The range doesn't have to denote a node range in the sense of a abstract syntax tree. It can therefore not be used to re-construct a hierarchy of the symbols. |
| container_name | [string](#string) |  | Optional. The name of the symbol containing this symbol. This information is for user interface purposes (e.g. to render a qualifier in the user interface if necessary). It can't be used to re-infer a hierarchy for the document symbols. (-- api-linter: core::0123::resource-annotation=disabled api-linter: core::0122::name-suffix=disabled --) |






<a name="lsp.protocol.rpc.TelemetryParams"/>

### TelemetryParams
TelemetryParams represents a `telemetry/event` notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| params | [google.protobuf.Any](#google.protobuf.Any) |  | Optional. |






<a name="lsp.protocol.rpc.TextDocumentChangeRegistrationOptions"/>

### TextDocumentChangeRegistrationOptions
TextDocumentChangeRegistrationOptions describe options to be used when registering for text
document change events.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| sync_kind | [TextDocumentSyncKind](#lsp.protocol.rpc.TextDocumentSyncKind) |  | How documents are synced to the server. See TextDocumentSyncKind.Full and TextDocumentSyncKind.Incremental. |






<a name="lsp.protocol.rpc.TextDocumentClientCapabilities"/>

### TextDocumentClientCapabilities
TextDocumentClientCapabilities define capabilities the editor / tool provides on text documents.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| synchronization | [TextDocumentSyncClientCapabilities](#lsp.protocol.rpc.TextDocumentSyncClientCapabilities) |  |  |
| completion | [CompletionClientCapabilities](#lsp.protocol.rpc.CompletionClientCapabilities) |  | Capabilities specific to the `textDocument/completion` request. |
| hover | [HoverClientCapabilities](#lsp.protocol.rpc.HoverClientCapabilities) |  | Capabilities specific to the `textDocument/hover` request. |
| signature_help | [SignatureHelpClientCapabilities](#lsp.protocol.rpc.SignatureHelpClientCapabilities) |  | Capabilities specific to the `textDocument/signatureHelp` request. |
| declaration | [DeclarationClientCapabilities](#lsp.protocol.rpc.DeclarationClientCapabilities) |  | Capabilities specific to the `textDocument/declaration` request.  @since 3.14.0 |
| definition | [DefinitionClientCapabilities](#lsp.protocol.rpc.DefinitionClientCapabilities) |  | Capabilities specific to the `textDocument/definition` request. |
| type_definition | [TypeDefinitionClientCapabilities](#lsp.protocol.rpc.TypeDefinitionClientCapabilities) |  | Capabilities specific to the `textDocument/typeDefinition` request.  @since 3.6.0 |
| implementation | [ImplementationClientCapabilities](#lsp.protocol.rpc.ImplementationClientCapabilities) |  | Capabilities specific to the `textDocument/implementation` request.  @since 3.6.0 |
| references | [ReferenceClientCapabilities](#lsp.protocol.rpc.ReferenceClientCapabilities) |  | Capabilities specific to the `textDocument/references` request. |
| document_highlight | [DocumentHighlightClientCapabilities](#lsp.protocol.rpc.DocumentHighlightClientCapabilities) |  | Capabilities specific to the `textDocument/documentHighlight` request. |
| document_symbol | [DocumentSymbolClientCapabilities](#lsp.protocol.rpc.DocumentSymbolClientCapabilities) |  | Capabilities specific to the `textDocument/documentSymbol` request. |
| code_action | [CodeActionClientCapabilities](#lsp.protocol.rpc.CodeActionClientCapabilities) |  | Capabilities specific to the `textDocument/codeAction` request. |
| code_lens | [CodeLensClientCapabilities](#lsp.protocol.rpc.CodeLensClientCapabilities) |  | Capabilities specific to the `textDocument/codeLens` request. |
| document_link | [DocumentLinkClientCapabilities](#lsp.protocol.rpc.DocumentLinkClientCapabilities) |  | Capabilities specific to the `textDocument/documentLink` request. |
| color_provider | [DocumentColorClientCapabilities](#lsp.protocol.rpc.DocumentColorClientCapabilities) |  | Capabilities specific to the `textDocument/documentColor` and the `textDocument/colorPresentation` request.  @since 3.6.0 |
| formatting | [DocumentFormattingClientCapabilities](#lsp.protocol.rpc.DocumentFormattingClientCapabilities) |  | Capabilities specific to the `textDocument/formatting` request. |
| range_formatting | [DocumentRangeFormattingClientCapabilities](#lsp.protocol.rpc.DocumentRangeFormattingClientCapabilities) |  | Capabilities specific to the `textDocument/rangeFormatting` request. |
| on_type_formatting | [DocumentOnTypeFormattingClientCapabilities](#lsp.protocol.rpc.DocumentOnTypeFormattingClientCapabilities) |  | Capabilities specific to the `textDocument/onTypeFormatting` request. |
| rename | [RenameClientCapabilities](#lsp.protocol.rpc.RenameClientCapabilities) |  | Capabilities specific to the `textDocument/rename` request. |
| publish_diagnostics | [PublishDiagnosticsClientCapabilities](#lsp.protocol.rpc.PublishDiagnosticsClientCapabilities) |  | Capabilities specific to the `textDocument/publishDiagnostics` notification. |
| folding_range | [FoldingRangeClientCapabilities](#lsp.protocol.rpc.FoldingRangeClientCapabilities) |  | Capabilities specific to the `textDocument/foldingRange` request.  @since 3.10.0 |
| selection_range | [SelectionRangeClientCapabilities](#lsp.protocol.rpc.SelectionRangeClientCapabilities) |  | Capabilities specific to the `textDocument/selectionRange` request.  @since 3.15.0 |






<a name="lsp.protocol.rpc.TextDocumentContentChangeEvent"/>

### TextDocumentContentChangeEvent
TextDocumentContentChangeEvent an event describing a change to a text document. If range and
rangeLength are omitted the new text is considered to be the full content of the document.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content_change_event | [TextDocumentContentChangeEvent.ContentChangeEvent](#lsp.protocol.rpc.TextDocumentContentChangeEvent.ContentChangeEvent) |  |  |
| text | [string](#string) |  | The new text of the whole document. |






<a name="lsp.protocol.rpc.TextDocumentContentChangeEvent.ContentChangeEvent"/>

### TextDocumentContentChangeEvent.ContentChangeEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| range | [lsp.protocol.Range](#lsp.protocol.Range) |  | The range of the document that changed. |
| range_length | [int32](#int32) |  | The optional length of the range that got replaced.  Use range instead. |
| text | [string](#string) |  | The new text for the provided range. |






<a name="lsp.protocol.rpc.TextDocumentSaveRegistrationOptions"/>

### TextDocumentSaveRegistrationOptions
TextDocumentSaveRegistrationOptions represents a registration option of TextDocumentSave.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| include_text | [bool](#bool) |  | Optional. The client is supposed to include the content on save. |






<a name="lsp.protocol.rpc.TextDocumentSyncClientCapabilities"/>

### TextDocumentSyncClientCapabilities
TextDocumentSyncClientCapabilities represents a client capabilities of `textDocument/didXXX`
notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether text document synchronization supports dynamic registration. |
| will_save | [bool](#bool) |  | Optional. The client supports sending will save notifications. |
| will_save_wait_until | [bool](#bool) |  | Optional. The client supports sending a will save request and waits for a response providing text edits which will be applied to the document before it is saved. |
| did_save | [bool](#bool) |  | Optional. The client supports did save notifications. |






<a name="lsp.protocol.rpc.TextDocumentSyncOptions"/>

### TextDocumentSyncOptions
TextDocumentSyncOptions represents a server capabilities option of textDocumentSync.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| open_close | [bool](#bool) |  | Optional. Open and close notifications are sent to the server. If omitted open close notification should not be sent. |
| change | [TextDocumentSyncKind](#lsp.protocol.rpc.TextDocumentSyncKind) |  | Optional. Change notifications are sent to the server. See [TextDocumentSyncKind][TextDocumentSyncKind]. If omitted it defaults to TextDocumentSyncKind.None. |
| will_save | [bool](#bool) |  | Optional. If present will save notifications are sent to the server. If omitted the notification should not be sent. |
| will_save_wait_until | [bool](#bool) |  | Optional. If present will save wait until requests are sent to the server. If omitted the request should not be sent. |
| enable | [bool](#bool) |  |  |
| save_options | [SaveOptions](#lsp.protocol.rpc.SaveOptions) |  |  |






<a name="lsp.protocol.rpc.TextEdits"/>

### TextEdits
TextEdits represents a list of TextEdit.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edit | [lsp.protocol.TextEdit](#lsp.protocol.TextEdit) | repeated |  |






<a name="lsp.protocol.rpc.TypeDefinitionClientCapabilities"/>

### TypeDefinitionClientCapabilities
TypeDefinitionClientCapabilities represents a client capabilities of
`textDocument/typeDefinition` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Whether implementation supports dynamic registration. If this is set to `true` the client supports the new `TypeDefinitionRegistrationOptions` return value for the corresponding server capability as well. |
| link_support | [bool](#bool) |  | Optional. The client supports additional metadata in the form of definition links.  @since 3.14.0 |






<a name="lsp.protocol.rpc.TypeDefinitionOptions"/>

### TypeDefinitionOptions
TypeDefinitionOptions represents a server capabilities option of typeDefinitionProvider.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_options | [lsp.protocol.WorkDoneProgressOptions](#lsp.protocol.WorkDoneProgressOptions) |  | extends |






<a name="lsp.protocol.rpc.TypeDefinitionRegistrationOptions"/>

### TypeDefinitionRegistrationOptions
TypeDefinitionRegistrationOptions represents a registration option of TypeDefinition.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_registration_options | [lsp.protocol.TextDocumentRegistrationOptions](#lsp.protocol.TextDocumentRegistrationOptions) |  | extends |
| type_definition_options | [TypeDefinitionOptions](#lsp.protocol.rpc.TypeDefinitionOptions) |  | extends |
| static_registration_options | [lsp.protocol.StaticRegistrationOptions](#lsp.protocol.StaticRegistrationOptions) |  | extends |






<a name="lsp.protocol.rpc.TypeDefinitionRequest"/>

### TypeDefinitionRequest
TypeDefinitionRequest is the parameters of a `textDocument/typeDefinition` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document_position_params | [lsp.protocol.TextDocumentPositionParams](#lsp.protocol.TextDocumentPositionParams) |  | extends |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |






<a name="lsp.protocol.rpc.TypeDefinitionResponse"/>

### TypeDefinitionResponse
TypeDefinitionResponse represents a TypeDefinition response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [TypeDefinitionResponse.Result](#lsp.protocol.rpc.TypeDefinitionResponse.Result) |  |  |
| partial_result | [TypeDefinitionResponse.PartialResult](#lsp.protocol.rpc.TypeDefinitionResponse.PartialResult) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.TypeDefinitionResponse.PartialResult"/>

### TypeDefinitionResponse.PartialResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |






<a name="lsp.protocol.rpc.TypeDefinitionResponse.Result"/>

### TypeDefinitionResponse.Result



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| location | [lsp.protocol.Location](#lsp.protocol.Location) |  |  |
| locations | [Locations](#lsp.protocol.rpc.Locations) |  |  |
| location_links | [LocationLinks](#lsp.protocol.rpc.LocationLinks) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |






<a name="lsp.protocol.rpc.Unregistration"/>

### Unregistration
Unregistration is the general parameters to unregister a capability.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The id used to unregister the request or notification. Usually an id provided during the register request. |
| method | [string](#string) |  | The method / capability to unregister for. |






<a name="lsp.protocol.rpc.UnregistrationParams"/>

### UnregistrationParams
UnregistrationParams represents a `client/unregisterCapability` request params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unregisterations | [Unregistration](#lsp.protocol.rpc.Unregistration) | repeated | This should correctly be named `unregistrations`. However changing this is a breaking change and needs to wait until we deliver a 4.x version of the specification. |






<a name="lsp.protocol.rpc.WillSaveTextDocumentRequest"/>

### WillSaveTextDocumentRequest
WillSaveTextDocumentRequest is the parameters send in a will save `textDocument/willSave`
notification.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_document | [lsp.protocol.TextDocumentIdentifier](#lsp.protocol.TextDocumentIdentifier) |  | The document that will be saved. |
| reason | [TextDocumentSaveReason](#lsp.protocol.rpc.TextDocumentSaveReason) |  | The [TextDocumentSaveReason][TextDocumentSaveReason]. |






<a name="lsp.protocol.rpc.WillSaveTextDocumentResponse"/>

### WillSaveTextDocumentResponse
WillSaveTextDocumentResponse represents a WillSaveTextDocument response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| text_edits | [TextEdits](#lsp.protocol.rpc.TextEdits) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.WorkDoneProgressCancelRequest"/>

### WorkDoneProgressCancelRequest
WorkDoneProgressCancelRequest represents a canceling a work done progress notification params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [ProgressToken](#lsp.protocol.rpc.ProgressToken) |  | The token to be used to report progress. |






<a name="lsp.protocol.rpc.WorkDoneProgressCreateRequest"/>

### WorkDoneProgressCreateRequest
WorkDoneProgressCreateRequest represents a Creating Work Done Progress request params.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [ProgressToken](#lsp.protocol.rpc.ProgressToken) |  | The token to be used to report progress. |






<a name="lsp.protocol.rpc.WorkDoneProgressParams"/>

### WorkDoneProgressParams
WorkDoneProgressParams a parameter literal used to pass a work done progress token.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_token | [ProgressToken](#lsp.protocol.rpc.ProgressToken) |  | An optional token that a server can use to report work done progress. |






<a name="lsp.protocol.rpc.WorkspaceFolder"/>

### WorkspaceFolder
WorkspaceFolder represents a workspace root folder.
(-- api-linter: core::0123::resource-annotation=disabled --)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [lsp.uri.DocumentURI](#lsp.uri.DocumentURI) |  | The associated URI for this workspace folder. |
| name | [string](#string) |  | The name of the workspace folder. Used to refer to this workspace folder in the user interface. |






<a name="lsp.protocol.rpc.WorkspaceFoldersChangeEvent"/>

### WorkspaceFoldersChangeEvent
WorkspaceFoldersChangeEvent is the workspace folder change event.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| added | [WorkspaceFolder](#lsp.protocol.rpc.WorkspaceFolder) | repeated | The array of added workspace folders. |
| removed | [WorkspaceFolder](#lsp.protocol.rpc.WorkspaceFolder) | repeated | The array of the removed workspace folders. |






<a name="lsp.protocol.rpc.WorkspaceFoldersResponse"/>

### WorkspaceFoldersResponse
WorkspaceFoldersResponse represents a WorkspaceFolders response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace_folders | [WorkspaceFoldersResponse.WorkspaceFolders](#lsp.protocol.rpc.WorkspaceFoldersResponse.WorkspaceFolders) |  |  |
| empty | [google.protobuf.NullValue](#google.protobuf.NullValue) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.WorkspaceFoldersResponse.WorkspaceFolders"/>

### WorkspaceFoldersResponse.WorkspaceFolders



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace_folders | [WorkspaceFolder](#lsp.protocol.rpc.WorkspaceFolder) | repeated |  |






<a name="lsp.protocol.rpc.WorkspaceFoldersServerCapabilities"/>

### WorkspaceFoldersServerCapabilities
WorkspaceFoldersServerCapabilities is the an additional property of
InitializeRequest.workspaceFolders.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| supported | [bool](#bool) |  | Optional. The server has support for workspace folders |
| id | [string](#string) |  | The id of registered notification. |
| enable | [bool](#bool) |  | Whether the enable change notifications. |






<a name="lsp.protocol.rpc.WorkspaceSymbolClientCapabilities"/>

### WorkspaceSymbolClientCapabilities
WorkspaceSymbolClientCapabilities represents a client capabilities of
`workspace/symbol` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dynamic_registration | [bool](#bool) |  | Optional. Symbol request supports dynamic registration. |
| symbol_kind | [WorkspaceSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.WorkspaceSymbolClientCapabilities.SymbolKind) |  | Specific capabilities for the `SymbolKind` in the `workspace/symbol` request. |






<a name="lsp.protocol.rpc.WorkspaceSymbolClientCapabilities.SymbolKind"/>

### WorkspaceSymbolClientCapabilities.SymbolKind



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value_set | [WorkspaceSymbolClientCapabilities.SymbolKind](#lsp.protocol.rpc.WorkspaceSymbolClientCapabilities.SymbolKind) | repeated | The symbol kind values the client supports. When this property exists the client also guarantees that it will handle values outside its set gracefully and falls back to a default value when unknown.  If this property is not present the client only supports the symbol kinds from `File` to `Array` as defined in the initial version of the protocol. |






<a name="lsp.protocol.rpc.WorkspaceSymbolParams"/>

### WorkspaceSymbolParams
WorkspaceSymbolParams is the parameters of a `workspace/symbol` request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| work_done_progress_params | [WorkDoneProgressParams](#lsp.protocol.rpc.WorkDoneProgressParams) |  | extends |
| partial_result_params | [PartialResultParams](#lsp.protocol.rpc.PartialResultParams) |  | extends |
| query | [string](#string) |  | A query string to filter symbols by. Clients may send an empty string here to request all symbols. |






<a name="lsp.protocol.rpc.WorkspaceSymbolsResponse"/>

### WorkspaceSymbolsResponse
WorkspaceSymbolsResponse represents a WorkspaceSymbols response.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| symbol_informations | [WorkspaceSymbolsResponse.SymbolInformations](#lsp.protocol.rpc.WorkspaceSymbolsResponse.SymbolInformations) |  |  |
| error | [lsp.jsonrpc2.Error](#lsp.jsonrpc2.Error) |  |  |






<a name="lsp.protocol.rpc.WorkspaceSymbolsResponse.SymbolInformations"/>

### WorkspaceSymbolsResponse.SymbolInformations



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| symbol_informations | [SymbolInformation](#lsp.protocol.rpc.SymbolInformation) | repeated |  |





 <!-- end messages -->


<a name="lsp.protocol.rpc.CodeActionKind"/>

### CodeActionKind
CodeActionKind is the kind of a code action.

Kinds are a hierarchical list of identifiers separated by `.`, e.g.
`"refactor.extract.function"`.

The set of kinds is open and client needs to announce the kinds it supports to the server during
initialization.

A set of predefined code action kinds.
(-- api-linter: core::0126::unspecified=disabled --)

| Name | Number | Description |
| ---- | ------ | ----------- |
| EMPTY | 0 | Empty kind. |
| QUICKFIX | 1 | Base kind for quickfix actions: 'quickfix'. |
| REFACTOR | 2 | Base kind for refactoring actions: 'refactor'. |
| REFACTOR_EXTRACT | 3 | Base kind for refactoring extraction actions: 'refactor.extract'.  Example extract actions:  - Extract method - Extract function - Extract variable - Extract interface from class - ... |
| REFACTOR_INLINE | 4 | Base kind for refactoring inline actions: 'refactor.inline'.  Example inline actions:  - Inline function - Inline variable - Inline constant - ... |
| REFACTOR_REWRITE | 5 | Base kind for refactoring rewrite actions: 'refactor.rewrite'.  Example rewrite actions:  - Convert JavaScript function to class - Add or remove parameter - Encapsulate field - Make method static - Move method to base class - ... |
| SOURCE | 6 | Base kind for source actions: `source`.  Source code actions apply to the entire file. |
| SOURCE_ORGANIZE_IMPORTS | 7 | Base kind for an organize imports source action: `source.organizeImports`. |



<a name="lsp.protocol.rpc.CompletionItemKind"/>

### CompletionItemKind
CompletionItemKind is the kind of a completion entry.

| Name | Number | Description |
| ---- | ------ | ----------- |
| COMPLETION_ITEM_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| COMPLETION_TEXT | 1 |  |
| COMPLETION_METHOD | 2 |  |
| COMPLETION_FUNCTION | 3 |  |
| COMPLETION_CONSTRUCTOR | 4 |  |
| COMPLETION_FIELD | 5 |  |
| COMPLETION_VARIABLE | 6 |  |
| COMPLETION_CLASS | 7 |  |
| COMPLETION_INTERFACE | 8 |  |
| COMPLETION_MODULE | 9 |  |
| COMPLETION_PROPERTY | 10 |  |
| COMPLETION_UNIT | 11 |  |
| COMPLETION_VALUE | 12 |  |
| COMPLETION_ENUM | 13 |  |
| COMPLETION_KEYWORD | 14 |  |
| COMPLETION_SNIPPET | 15 |  |
| COMPLETION_COLOR | 16 |  |
| COMPLETION_FILE | 17 |  |
| COMPLETION_REFERENCE | 18 |  |
| COMPLETION_FOLDER | 19 |  |
| COMPLETION_ENUMMEMBER | 20 |  |
| COMPLETION_CONSTANT | 21 |  |
| COMPLETION_STRUCT | 22 |  |
| COMPLETION_EVENT | 23 |  |
| COMPLETION_OPERATOR | 24 |  |
| COMPLETION_TYPEPARAMETER | 25 |  |



<a name="lsp.protocol.rpc.CompletionItemTag"/>

### CompletionItemTag
CompletionItemTag completion item tags are extra annotations that tweak the rendering of a
completion item.

@since 3.15.0

| Name | Number | Description |
| ---- | ------ | ----------- |
| COMPLETION_ITEM_TAG_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| DEPRECATED_TAG | 1 | Render a completion as obsolete, usually using a strike-out. |



<a name="lsp.protocol.rpc.CompletionTriggerKind"/>

### CompletionTriggerKind
CompletionTriggerKind how a completion was triggered.

| Name | Number | Description |
| ---- | ------ | ----------- |
| COMPLETION_TRIGGER_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| INVOKED | 1 | Completion was triggered by typing an identifier (24x7 code complete), manual invocation (e.g Ctrl+Space) or via API. |
| TRIGGER_CHARACTER | 2 | Completion was triggered by a trigger character specified by the `triggerCharacters` properties of the `CompletionRegistrationOptions`. |
| TRIGGER_FOR_INCOMPLETE_COMPLETIONS | 3 | Completion was re-triggered as the current completion list is incomplete. |



<a name="lsp.protocol.rpc.DocumentHighlight.DocumentHighlightKind"/>

### DocumentHighlight.DocumentHighlightKind
DocumentHighlightKind is a document highlight kind.

| Name | Number | Description |
| ---- | ------ | ----------- |
| DOCUMENT_HIGHLIGHT_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| TEXT | 1 | A textual occurrence. |
| READ | 2 | Read-access of a symbol, like reading a variable. |
| WRITE | 3 | Write-access of a symbol, like writing to a variable. |



<a name="lsp.protocol.rpc.FileEvent.FileChangeType"/>

### FileEvent.FileChangeType
FileChangeType is the file event type.

| Name | Number | Description |
| ---- | ------ | ----------- |
| FILE_CHANGE_TYPE_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| CREATED | 1 | The file got created. |
| CHANGED | 2 | The file got changed. |
| DELETED | 3 | The file got deleted. |



<a name="lsp.protocol.rpc.FileSystemWatcher.WatchKind"/>

### FileSystemWatcher.WatchKind


| Name | Number | Description |
| ---- | ------ | ----------- |
| WATCH_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| CREATE | 1 | Interested in create events. |
| CHANGE | 2 | Interested in change events |
| DELETE | 4 | Interested in delete events |



<a name="lsp.protocol.rpc.FoldingRangeKind"/>

### FoldingRangeKind
FoldingRangeKind Enum of known range kinds.

| Name | Number | Description |
| ---- | ------ | ----------- |
| FOLDING_RANGE_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| COMMENT_RANGE | 1 | Folding range for a comment.  string: 'comment' |
| IMPORTS_RANGE | 2 | Folding range for a imports or includes.  string: 'imports' |
| REGION_RANGE | 3 | Folding range for a region (e.g. `#region`).  string: 'region' |



<a name="lsp.protocol.rpc.InsertTextFormat"/>

### InsertTextFormat
InsertTextFormat defines whether the insert text in a completion item should be interpreted as
plain text or a snippet.

| Name | Number | Description |
| ---- | ------ | ----------- |
| INSERT_TEXT_FORMAT_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| PLAINTEXT | 1 | The primary text to be inserted is treated as a plain string. |
| SNIPPET_FORMAT | 2 | The primary text to be inserted is treated as a snippet.  A snippet can define tab stops and placeholders with `$1`, `$2` and `${3:foo}`. `$0` defines the final tab stop, it defaults to the end of the snippet. Placeholders with equal identifiers are linked, that is typing in one will update others too.  (-- Add `_FORMAT` suffix for avoid `Note that enum values use C++ scoping rules, meaning that enum values are siblings of their type, not children of it.` warning on [CompletionItemKind][CompletionItemKind]. --) |



<a name="lsp.protocol.rpc.MessageType"/>

### MessageType
MessageType represents a ShowMessage and ShowMessageRequestRequest message type.

| Name | Number | Description |
| ---- | ------ | ----------- |
| MESSAGE_TYPE_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| ERROR | 1 | An error message. |
| WARNING | 2 | A warning message. |
| INFO | 3 | An information message. |
| LOG | 4 | A log message. |



<a name="lsp.protocol.rpc.SemanticTokenModifiers"/>

### SemanticTokenModifiers
SemanticTokenModifiers represents a semantic token modifiers.

(-- api-linter: core::0192::only-leading-comments=disabled --)

| Name | Number | Description |
| ---- | ------ | ----------- |
| SEMANTIC_TOKEN_MODIFIERS_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| DECLARATION | 1 | 'declaration', |
| DEFINITION | 2 | 'definition', |
| READONLY | 3 | 'readonly', |
| STATIC | 4 | 'static', |
| DEPRECATED | 5 | 'deprecated', |
| ABSTRACT | 6 | 'abstract', |
| ASYNC | 7 | 'async', |
| MODIFICATION | 8 | 'modification', |
| DOCUMENTATION | 9 | 'documentation', |
| DEFAULT_LIBRARY | 10 | 'defaultLibrary' |



<a name="lsp.protocol.rpc.SemanticTokenTypes"/>

### SemanticTokenTypes
SemanticTokenTypes represents a semantic token type.

(-- api-linter: core::0192::only-leading-comments=disabled --)

| Name | Number | Description |
| ---- | ------ | ----------- |
| SEMANTIC_TOKEN_TYPES_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| NAMESPACE | 1 | 'namespace', |
| TYPE | 2 | 'type', |
| CLASS | 3 | 'class', |
| ENUM | 4 | 'enum', |
| INTERFACE | 5 | 'interface', |
| STRUCT | 6 | 'struct', |
| TYPE_PARAMETER | 7 | 'typeParameter', |
| PARAMETER | 8 | 'parameter', |
| VARIABLE | 9 | 'variable', |
| PROPERTY | 10 | 'property', |
| ENUMMEMBER | 11 | 'enumMember', |
| EVENT | 12 | 'event', |
| FUNCTION | 13 | 'function', |
| MEMBER | 14 | 'member', |
| MACRO | 15 | 'macro', |
| KEYWORD | 16 | 'keyword', |
| MODIFIER | 17 | 'modifier', |
| COMMENT | 18 | 'comment', |
| STRING | 19 | 'string', |
| NUMBER | 20 | 'number', |
| REGEXP | 21 | 'regexp', |
| OPERATOR | 22 | 'operator' |



<a name="lsp.protocol.rpc.SignatureHelpContext.SignatureHelpTriggerKind"/>

### SignatureHelpContext.SignatureHelpTriggerKind
SignatureHelpTriggerKind how a signature help was triggered.

@since 3.15.0

| Name | Number | Description |
| ---- | ------ | ----------- |
| SIGNATURE_HELP_TRIGGER_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| INVOKED | 1 | Signature help was invoked manually by the user or by a command. |
| TRIGGER_CHARACTER | 2 | Signature help was triggered by a trigger character. |
| CONTENT_CHANGE | 3 | Signature help was triggered by the cursor moving or by the document content changing. |



<a name="lsp.protocol.rpc.SymbolKind"/>

### SymbolKind
SymbolKind is a symbol kind.

| Name | Number | Description |
| ---- | ------ | ----------- |
| SYMBOL_KIND_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| SYMBOL_FILE | 1 |  |
| SYMBOL_MODULE | 2 |  |
| SYMBOL_NAMESPACE | 3 |  |
| SYMBOL_PACKAGE | 4 |  |
| SYMBOL_CLASS | 5 |  |
| SYMBOL_METHOD | 6 |  |
| SYMBOL_PROPERTY | 7 |  |
| SYMBOL_FIELD | 8 |  |
| SYMBOL_CONSTRUCTOR | 9 |  |
| SYMBOL_ENUM | 10 |  |
| SYMBOL_INTERFACE | 11 |  |
| SYMBOL_FUNCTION | 12 |  |
| SYMBOL_VARIABLE | 13 |  |
| SYMBOL_CONSTANT | 14 |  |
| SYMBOL_STRING | 15 |  |
| SYMBOL_NUMBER | 16 |  |
| SYMBOL_BOOLEAN | 17 |  |
| SYMBOL_ARRAY | 18 |  |
| SYMBOL_OBJECT | 19 |  |
| SYMBOL_KEY | 20 |  |
| SYMBOL_NULL | 21 |  |
| SYMBOL_ENUMMEMBER | 22 |  |
| SYMBOL_STRUCT | 23 |  |
| SYMBOL_EVENT | 24 |  |
| SYMBOL_OPERATOR | 25 |  |
| SYMBOL_TYPEPARAMETER | 26 |  |



<a name="lsp.protocol.rpc.SymbolTag"/>

### SymbolTag
SymbolTag are extra annotations that tweak the rendering of a symbol.

@since 3.15

| Name | Number | Description |
| ---- | ------ | ----------- |
| SYMBOL_TAG_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| DEPRECATED_SYMBOL_TAG | 1 | Render a symbol as obsolete, usually using a strike-out. |



<a name="lsp.protocol.rpc.TextDocumentSaveReason"/>

### TextDocumentSaveReason
TextDocumentSaveReason represents reasons why a text document is saved.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TEXT_DOCUMENT_SAVE_REASON_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| MANUAL | 1 | Manually triggered, e.g. by the user pressing save, by starting debugging, or by an API call. |
| AFTERDELAY | 2 | Automatic after a delay. |
| FOCUSOUT | 3 | When the editor lost focus. |



<a name="lsp.protocol.rpc.TextDocumentSyncKind"/>

### TextDocumentSyncKind
TextDocumentSyncKind defines how the host (editor) should sync document changes to the language
server.
(-- api-linter: core::0126::unspecified=disabled --)

| Name | Number | Description |
| ---- | ------ | ----------- |
| NONE | 0 | Documents should not be synced at all. |
| FULL | 1 | Documents are synced by always sending the full content of the document. |
| INCREMENTAL | 2 | Documents are synced by sending the full content on open. After that only incremental updates to the document are send. |



<a name="lsp.protocol.rpc.TokenFormat"/>

### TokenFormat
TokenFormat represents a format of token.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TOKEN_FORMAT_UNSPECIFIED | 0 | Conventional default for enums. Do not use this. |
| RELATIVE | 1 | string: 'relative' |


 <!-- end enums -->

 <!-- end HasExtensions -->


