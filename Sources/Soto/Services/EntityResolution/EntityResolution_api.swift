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

/// Service object for interacting with AWS EntityResolution service.
///
/// Welcome to the Entity Resolution API Reference. Entity Resolution is an Amazon Web Services service that provides pre-configured entity resolution capabilities  that enable developers and analysts at advertising and marketing companies to build an accurate and  complete view of their consumers.  With Entity Resolution, you can match source records containing consumer identifiers, such as name, email address,  and phone number. This is true even when these records have incomplete or conflicting identifiers. For example,  Entity Resolution can effectively match a source record from a customer relationship management (CRM) system  with a source record from a marketing system containing campaign information. To learn more about Entity Resolution concepts, procedures, and best practices, see the Entity Resolution  User Guide.
public struct EntityResolution: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the EntityResolution client
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
            service: "entityresolution",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: EntityResolutionErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a MatchingWorkflow object which stores the configuration of the data processing job  to be run.  It is important to note that there should not be a pre-existing MatchingWorkflow  with the same name. To modify an existing workflow, utilize the UpdateMatchingWorkflow API.
    public func createMatchingWorkflow(_ input: CreateMatchingWorkflowInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMatchingWorkflowOutput> {
        return self.client.execute(operation: "CreateMatchingWorkflow", path: "/matchingworkflows", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a schema mapping, which defines the schema of the input customer records table. The SchemaMapping also provides Entity Resolution with some metadata about the table, such as the attribute types of the columns and which columns to match on.
    public func createSchemaMapping(_ input: CreateSchemaMappingInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaMappingOutput> {
        return self.client.execute(operation: "CreateSchemaMapping", path: "/schemas", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the MatchingWorkflow with a given name. This operation will succeed even if a  workflow with the given name does not exist.
    public func deleteMatchingWorkflow(_ input: DeleteMatchingWorkflowInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMatchingWorkflowOutput> {
        return self.client.execute(operation: "DeleteMatchingWorkflow", path: "/matchingworkflows/{workflowName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the SchemaMapping with a given name. This operation will succeed even if a schema  with the given name does not exist. This operation will fail if there is a DataIntegrationWorkflow  object that references the SchemaMapping in the workflow's InputSourceConfig.
    public func deleteSchemaMapping(_ input: DeleteSchemaMappingInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSchemaMappingOutput> {
        return self.client.execute(operation: "DeleteSchemaMapping", path: "/schemas/{schemaName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the corresponding Match ID of a customer record if the record has been processed.
    public func getMatchId(_ input: GetMatchIdInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMatchIdOutput> {
        return self.client.execute(operation: "GetMatchId", path: "/matchingworkflows/{workflowName}/matches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the status, metrics, and errors (if there are any) that are associated with a job.
    public func getMatchingJob(_ input: GetMatchingJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMatchingJobOutput> {
        return self.client.execute(operation: "GetMatchingJob", path: "/matchingworkflows/{workflowName}/jobs/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the MatchingWorkflow with a given name, if it exists.
    public func getMatchingWorkflow(_ input: GetMatchingWorkflowInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMatchingWorkflowOutput> {
        return self.client.execute(operation: "GetMatchingWorkflow", path: "/matchingworkflows/{workflowName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the SchemaMapping of a given name.
    public func getSchemaMapping(_ input: GetSchemaMappingInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSchemaMappingOutput> {
        return self.client.execute(operation: "GetSchemaMapping", path: "/schemas/{schemaName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all jobs for a given workflow.
    public func listMatchingJobs(_ input: ListMatchingJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMatchingJobsOutput> {
        return self.client.execute(operation: "ListMatchingJobs", path: "/matchingworkflows/{workflowName}/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MatchingWorkflows that have been created for an Amazon Web Services account.
    public func listMatchingWorkflows(_ input: ListMatchingWorkflowsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMatchingWorkflowsOutput> {
        return self.client.execute(operation: "ListMatchingWorkflows", path: "/matchingworkflows", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the SchemaMappings that have been created for an Amazon Web Services account.
    public func listSchemaMappings(_ input: ListSchemaMappingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemaMappingsOutput> {
        return self.client.execute(operation: "ListSchemaMappings", path: "/schemas", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with an Entity Resolution resource. In Entity Resolution, SchemaMapping, and MatchingWorkflow can be tagged.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the MatchingJob of a workflow. The workflow must have previously been created  using the CreateMatchingWorkflow endpoint.
    public func startMatchingJob(_ input: StartMatchingJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMatchingJobOutput> {
        return self.client.execute(operation: "StartMatchingJob", path: "/matchingworkflows/{workflowName}/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified Entity Resolution resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Entity Resolution, SchemaMapping and MatchingWorkflow can be tagged. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified Entity Resolution resource. In Entity Resolution, SchemaMapping, and MatchingWorkflow can be tagged.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing MatchingWorkflow. This method is identical to  CreateMatchingWorkflow, except it uses an HTTP PUT request instead of  a POST request, and the MatchingWorkflow must already exist for the  method to succeed.
    public func updateMatchingWorkflow(_ input: UpdateMatchingWorkflowInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMatchingWorkflowOutput> {
        return self.client.execute(operation: "UpdateMatchingWorkflow", path: "/matchingworkflows/{workflowName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension EntityResolution {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: EntityResolution, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension EntityResolution {
    /// Lists all jobs for a given workflow.
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
    public func listMatchingJobsPaginator<Result>(
        _ input: ListMatchingJobsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMatchingJobsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMatchingJobs,
            inputKey: \ListMatchingJobsInput.nextToken,
            outputKey: \ListMatchingJobsOutput.nextToken,
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
    public func listMatchingJobsPaginator(
        _ input: ListMatchingJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMatchingJobsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMatchingJobs,
            inputKey: \ListMatchingJobsInput.nextToken,
            outputKey: \ListMatchingJobsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of all the MatchingWorkflows that have been created for an Amazon Web Services account.
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
    public func listMatchingWorkflowsPaginator<Result>(
        _ input: ListMatchingWorkflowsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMatchingWorkflowsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMatchingWorkflows,
            inputKey: \ListMatchingWorkflowsInput.nextToken,
            outputKey: \ListMatchingWorkflowsOutput.nextToken,
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
    public func listMatchingWorkflowsPaginator(
        _ input: ListMatchingWorkflowsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMatchingWorkflowsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMatchingWorkflows,
            inputKey: \ListMatchingWorkflowsInput.nextToken,
            outputKey: \ListMatchingWorkflowsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of all the SchemaMappings that have been created for an Amazon Web Services account.
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
    public func listSchemaMappingsPaginator<Result>(
        _ input: ListSchemaMappingsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSchemaMappingsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSchemaMappings,
            inputKey: \ListSchemaMappingsInput.nextToken,
            outputKey: \ListSchemaMappingsOutput.nextToken,
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
    public func listSchemaMappingsPaginator(
        _ input: ListSchemaMappingsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSchemaMappingsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSchemaMappings,
            inputKey: \ListSchemaMappingsInput.nextToken,
            outputKey: \ListSchemaMappingsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension EntityResolution.ListMatchingJobsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EntityResolution.ListMatchingJobsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workflowName: self.workflowName
        )
    }
}

extension EntityResolution.ListMatchingWorkflowsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EntityResolution.ListMatchingWorkflowsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension EntityResolution.ListSchemaMappingsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EntityResolution.ListSchemaMappingsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}