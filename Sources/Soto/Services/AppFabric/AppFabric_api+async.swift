//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AppFabric {
    // MARK: Async API Calls

    /// Gets user access details in a batch request. This action polls data from the tasks that are kicked off by the StartUserAccessTasks action.
    public func batchGetUserAccessTasks(_ input: BatchGetUserAccessTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetUserAccessTasksResponse {
        return try await self.client.execute(operation: "BatchGetUserAccessTasks", path: "/useraccess/batchget", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Establishes a connection between Amazon Web Services AppFabric and an application, which allows AppFabric to call the APIs of the application.
    public func connectAppAuthorization(_ input: ConnectAppAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConnectAppAuthorizationResponse {
        return try await self.client.execute(operation: "ConnectAppAuthorization", path: "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an app authorization within an app bundle, which allows AppFabric to connect to an application.
    public func createAppAuthorization(_ input: CreateAppAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppAuthorizationResponse {
        return try await self.client.execute(operation: "CreateAppAuthorization", path: "/appbundles/{appBundleIdentifier}/appauthorizations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an app bundle to collect data from an application using AppFabric.
    public func createAppBundle(_ input: CreateAppBundleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppBundleResponse {
        return try await self.client.execute(operation: "CreateAppBundle", path: "/appbundles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a data ingestion for an application.
    public func createIngestion(_ input: CreateIngestionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIngestionResponse {
        return try await self.client.execute(operation: "CreateIngestion", path: "/appbundles/{appBundleIdentifier}/ingestions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an ingestion destination, which specifies how an application's ingested data is processed by Amazon Web Services AppFabric and where it's delivered.
    public func createIngestionDestination(_ input: CreateIngestionDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIngestionDestinationResponse {
        return try await self.client.execute(operation: "CreateIngestionDestination", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an app authorization. You must delete the associated ingestion before you can delete an app authorization.
    public func deleteAppAuthorization(_ input: DeleteAppAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppAuthorizationResponse {
        return try await self.client.execute(operation: "DeleteAppAuthorization", path: "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an app bundle. You must delete all associated app authorizations before you can delete an app bundle.
    public func deleteAppBundle(_ input: DeleteAppBundleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppBundleResponse {
        return try await self.client.execute(operation: "DeleteAppBundle", path: "/appbundles/{appBundleIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an ingestion. You must stop (disable) the ingestion and you must delete all associated ingestion destinations before you can delete an app ingestion.
    public func deleteIngestion(_ input: DeleteIngestionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIngestionResponse {
        return try await self.client.execute(operation: "DeleteIngestion", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an ingestion destination. This deletes the association between an ingestion and it's destination. It doesn't delete previously ingested data or the storage destination, such as the Amazon S3 bucket where the data is delivered. If the ingestion destination is deleted while the associated ingestion is enabled, the ingestion will fail and is eventually disabled.
    public func deleteIngestionDestination(_ input: DeleteIngestionDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIngestionDestinationResponse {
        return try await self.client.execute(operation: "DeleteIngestionDestination", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an app authorization.
    public func getAppAuthorization(_ input: GetAppAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppAuthorizationResponse {
        return try await self.client.execute(operation: "GetAppAuthorization", path: "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an app bundle.
    public func getAppBundle(_ input: GetAppBundleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppBundleResponse {
        return try await self.client.execute(operation: "GetAppBundle", path: "/appbundles/{appBundleIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an ingestion.
    public func getIngestion(_ input: GetIngestionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIngestionResponse {
        return try await self.client.execute(operation: "GetIngestion", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an ingestion destination.
    public func getIngestionDestination(_ input: GetIngestionDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIngestionDestinationResponse {
        return try await self.client.execute(operation: "GetIngestionDestination", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all app authorizations configured for an app bundle.
    public func listAppAuthorizations(_ input: ListAppAuthorizationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppAuthorizationsResponse {
        return try await self.client.execute(operation: "ListAppAuthorizations", path: "/appbundles/{appBundleIdentifier}/appauthorizations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of app bundles.
    public func listAppBundles(_ input: ListAppBundlesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppBundlesResponse {
        return try await self.client.execute(operation: "ListAppBundles", path: "/appbundles", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all ingestion destinations configured for an ingestion.
    public func listIngestionDestinations(_ input: ListIngestionDestinationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIngestionDestinationsResponse {
        return try await self.client.execute(operation: "ListIngestionDestinations", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all ingestions configured for an app bundle.
    public func listIngestions(_ input: ListIngestionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIngestionsResponse {
        return try await self.client.execute(operation: "ListIngestions", path: "/appbundles/{appBundleIdentifier}/ingestions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts (enables) an ingestion, which collects data from an application.
    public func startIngestion(_ input: StartIngestionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartIngestionResponse {
        return try await self.client.execute(operation: "StartIngestion", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the tasks to search user access status for a specific email address. The tasks are stopped when the user access status data is found. The tasks are terminated when the API calls to the application time out.
    public func startUserAccessTasks(_ input: StartUserAccessTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartUserAccessTasksResponse {
        return try await self.client.execute(operation: "StartUserAccessTasks", path: "/useraccess/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops (disables) an ingestion.
    public func stopIngestion(_ input: StopIngestionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopIngestionResponse {
        return try await self.client.execute(operation: "StopIngestion", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag or tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an app authorization within an app bundle, which allows AppFabric to connect to an application. If the app authorization was in a connected state, updating the app authorization will set it back to a PendingConnect state.
    public func updateAppAuthorization(_ input: UpdateAppAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAppAuthorizationResponse {
        return try await self.client.execute(operation: "UpdateAppAuthorization", path: "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an ingestion destination, which specifies how an application's ingested data is processed by Amazon Web Services AppFabric and where it's delivered.
    public func updateIngestionDestination(_ input: UpdateIngestionDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIngestionDestinationResponse {
        return try await self.client.execute(operation: "UpdateIngestionDestination", path: "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AppFabric {
    /// Returns a list of all app authorizations configured for an app bundle.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppAuthorizationsPaginator(
        _ input: ListAppAuthorizationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppAuthorizationsRequest, ListAppAuthorizationsResponse> {
        return .init(
            input: input,
            command: self.listAppAuthorizations,
            inputKey: \ListAppAuthorizationsRequest.nextToken,
            outputKey: \ListAppAuthorizationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of app bundles.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppBundlesPaginator(
        _ input: ListAppBundlesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppBundlesRequest, ListAppBundlesResponse> {
        return .init(
            input: input,
            command: self.listAppBundles,
            inputKey: \ListAppBundlesRequest.nextToken,
            outputKey: \ListAppBundlesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of all ingestion destinations configured for an ingestion.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIngestionDestinationsPaginator(
        _ input: ListIngestionDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIngestionDestinationsRequest, ListIngestionDestinationsResponse> {
        return .init(
            input: input,
            command: self.listIngestionDestinations,
            inputKey: \ListIngestionDestinationsRequest.nextToken,
            outputKey: \ListIngestionDestinationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of all ingestions configured for an app bundle.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIngestionsPaginator(
        _ input: ListIngestionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIngestionsRequest, ListIngestionsResponse> {
        return .init(
            input: input,
            command: self.listIngestions,
            inputKey: \ListIngestionsRequest.nextToken,
            outputKey: \ListIngestionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}