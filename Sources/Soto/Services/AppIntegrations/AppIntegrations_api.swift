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

@_exported import SotoCore

/// Service object for interacting with AWS AppIntegrations service.
///
/// The Amazon AppIntegrations service enables you to configure and reuse connections to external applications. For information about how you can use external applications with Amazon Connect, see Set up pre-built integrations and Deliver information to agents using Amazon Connect Wisdom in the Amazon Connect Administrator Guide.
public struct AppIntegrations: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppIntegrations client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "app-integrations",
            serviceProtocol: .restjson,
            apiVersion: "2020-07-29",
            endpoint: endpoint,
            errorType: AppIntegrationsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// This API is in preview release and subject to change. Creates and persists an Application resource.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return self.client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates and persists a DataIntegration resource.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.
    public func createDataIntegration(_ input: CreateDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataIntegrationResponse> {
        return self.client.execute(operation: "CreateDataIntegration", path: "/dataIntegrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an EventIntegration, given a specified name, description, and a reference to an Amazon EventBridge bus in your account and a partner event source that pushes events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.
    public func createEventIntegration(_ input: CreateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEventIntegrationResponse> {
        return self.client.execute(operation: "CreateEventIntegration", path: "/eventIntegrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the DataIntegration. Only DataIntegrations that don't have any DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the underlying Amazon AppFlow flow and service linked role.   You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    public func deleteDataIntegration(_ input: DeleteDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataIntegrationResponse> {
        return self.client.execute(operation: "DeleteDataIntegration", path: "/dataIntegrations/{DataIntegrationIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.
    public func deleteEventIntegration(_ input: DeleteEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEventIntegrationResponse> {
        return self.client.execute(operation: "DeleteEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This API is in preview release and subject to change. Get an Application resource.
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApplicationResponse> {
        return self.client.execute(operation: "GetApplication", path: "/applications/{Arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the DataIntegration.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    public func getDataIntegration(_ input: GetDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataIntegrationResponse> {
        return self.client.execute(operation: "GetDataIntegration", path: "/dataIntegrations/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the event integration.
    public func getEventIntegration(_ input: GetEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEventIntegrationResponse> {
        return self.client.execute(operation: "GetEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This API is in preview release and subject to change. Lists applications in the account.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return self.client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of DataIntegration associations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    public func listDataIntegrationAssociations(_ input: ListDataIntegrationAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataIntegrationAssociationsResponse> {
        return self.client.execute(operation: "ListDataIntegrationAssociations", path: "/dataIntegrations/{DataIntegrationIdentifier}/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of DataIntegrations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    public func listDataIntegrations(_ input: ListDataIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataIntegrationsResponse> {
        return self.client.execute(operation: "ListDataIntegrations", path: "/dataIntegrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of event integration associations in the account.
    public func listEventIntegrationAssociations(_ input: ListEventIntegrationAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventIntegrationAssociationsResponse> {
        return self.client.execute(operation: "ListEventIntegrationAssociations", path: "/eventIntegrations/{EventIntegrationName}/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of event integrations in the account.
    public func listEventIntegrations(_ input: ListEventIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEventIntegrationsResponse> {
        return self.client.execute(operation: "ListEventIntegrations", path: "/eventIntegrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This API is in preview release and subject to change. Updates and persists an Application resource.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return self.client.execute(operation: "UpdateApplication", path: "/applications/{Arn}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the description of a DataIntegration.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    public func updateDataIntegration(_ input: UpdateDataIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataIntegrationResponse> {
        return self.client.execute(operation: "UpdateDataIntegration", path: "/dataIntegrations/{Identifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the description of an event integration.
    public func updateEventIntegration(_ input: UpdateEventIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEventIntegrationResponse> {
        return self.client.execute(operation: "UpdateEventIntegration", path: "/eventIntegrations/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension AppIntegrations {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AppIntegrations, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension AppIntegrations {
    /// This API is in preview release and subject to change. Lists applications in the account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listApplicationsPaginator<Result>(
        _ input: ListApplicationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListApplicationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a paginated list of DataIntegration associations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDataIntegrationAssociationsPaginator<Result>(
        _ input: ListDataIntegrationAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDataIntegrationAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDataIntegrationAssociations,
            inputKey: \ListDataIntegrationAssociationsRequest.nextToken,
            outputKey: \ListDataIntegrationAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDataIntegrationAssociationsPaginator(
        _ input: ListDataIntegrationAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDataIntegrationAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDataIntegrationAssociations,
            inputKey: \ListDataIntegrationAssociationsRequest.nextToken,
            outputKey: \ListDataIntegrationAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a paginated list of DataIntegrations in the account.  You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    /// Use a different DataIntegration, or recreate the DataIntegration using the
    /// CreateDataIntegration API.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDataIntegrationsPaginator<Result>(
        _ input: ListDataIntegrationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDataIntegrationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDataIntegrations,
            inputKey: \ListDataIntegrationsRequest.nextToken,
            outputKey: \ListDataIntegrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDataIntegrationsPaginator(
        _ input: ListDataIntegrationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDataIntegrationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDataIntegrations,
            inputKey: \ListDataIntegrationsRequest.nextToken,
            outputKey: \ListDataIntegrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a paginated list of event integration associations in the account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEventIntegrationAssociationsPaginator<Result>(
        _ input: ListEventIntegrationAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventIntegrationAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listEventIntegrationAssociations,
            inputKey: \ListEventIntegrationAssociationsRequest.nextToken,
            outputKey: \ListEventIntegrationAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEventIntegrationAssociationsPaginator(
        _ input: ListEventIntegrationAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventIntegrationAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listEventIntegrationAssociations,
            inputKey: \ListEventIntegrationAssociationsRequest.nextToken,
            outputKey: \ListEventIntegrationAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a paginated list of event integrations in the account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEventIntegrationsPaginator<Result>(
        _ input: ListEventIntegrationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEventIntegrationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listEventIntegrations,
            inputKey: \ListEventIntegrationsRequest.nextToken,
            outputKey: \ListEventIntegrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEventIntegrationsPaginator(
        _ input: ListEventIntegrationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventIntegrationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listEventIntegrations,
            inputKey: \ListEventIntegrationsRequest.nextToken,
            outputKey: \ListEventIntegrationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension AppIntegrations.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppIntegrations.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppIntegrations.ListDataIntegrationAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppIntegrations.ListDataIntegrationAssociationsRequest {
        return .init(
            dataIntegrationIdentifier: self.dataIntegrationIdentifier,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppIntegrations.ListDataIntegrationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppIntegrations.ListDataIntegrationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppIntegrations.ListEventIntegrationAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppIntegrations.ListEventIntegrationAssociationsRequest {
        return .init(
            eventIntegrationName: self.eventIntegrationName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppIntegrations.ListEventIntegrationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppIntegrations.ListEventIntegrationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
