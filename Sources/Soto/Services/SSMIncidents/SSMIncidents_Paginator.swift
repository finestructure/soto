//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension SSMIncidents {
    ///  Retrieves the resource policies attached to the specified response plan.
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
    public func getResourcePoliciesPaginator<Result>(
        _ input: GetResourcePoliciesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetResourcePoliciesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getResourcePolicies,
            inputKey: \GetResourcePoliciesInput.nextToken,
            outputKey: \GetResourcePoliciesOutput.nextToken,
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
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetResourcePoliciesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getResourcePolicies,
            inputKey: \GetResourcePoliciesInput.nextToken,
            outputKey: \GetResourcePoliciesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.
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
    public func listIncidentRecordsPaginator<Result>(
        _ input: ListIncidentRecordsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListIncidentRecordsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listIncidentRecords,
            inputKey: \ListIncidentRecordsInput.nextToken,
            outputKey: \ListIncidentRecordsOutput.nextToken,
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
    public func listIncidentRecordsPaginator(
        _ input: ListIncidentRecordsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIncidentRecordsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listIncidentRecords,
            inputKey: \ListIncidentRecordsInput.nextToken,
            outputKey: \ListIncidentRecordsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all related items for an incident record.
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
    public func listRelatedItemsPaginator<Result>(
        _ input: ListRelatedItemsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRelatedItemsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRelatedItems,
            inputKey: \ListRelatedItemsInput.nextToken,
            outputKey: \ListRelatedItemsOutput.nextToken,
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
    public func listRelatedItemsPaginator(
        _ input: ListRelatedItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRelatedItemsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRelatedItems,
            inputKey: \ListRelatedItemsInput.nextToken,
            outputKey: \ListRelatedItemsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists details about the replication set configured in your account.
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
    public func listReplicationSetsPaginator<Result>(
        _ input: ListReplicationSetsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListReplicationSetsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listReplicationSets,
            inputKey: \ListReplicationSetsInput.nextToken,
            outputKey: \ListReplicationSetsOutput.nextToken,
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
    public func listReplicationSetsPaginator(
        _ input: ListReplicationSetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListReplicationSetsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listReplicationSets,
            inputKey: \ListReplicationSetsInput.nextToken,
            outputKey: \ListReplicationSetsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all response plans in your account.
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
    public func listResponsePlansPaginator<Result>(
        _ input: ListResponsePlansInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListResponsePlansOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listResponsePlans,
            inputKey: \ListResponsePlansInput.nextToken,
            outputKey: \ListResponsePlansOutput.nextToken,
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
    public func listResponsePlansPaginator(
        _ input: ListResponsePlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResponsePlansOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listResponsePlans,
            inputKey: \ListResponsePlansInput.nextToken,
            outputKey: \ListResponsePlansOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists timeline events of the specified incident record.
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
    public func listTimelineEventsPaginator<Result>(
        _ input: ListTimelineEventsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTimelineEventsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTimelineEvents,
            inputKey: \ListTimelineEventsInput.nextToken,
            outputKey: \ListTimelineEventsOutput.nextToken,
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
    public func listTimelineEventsPaginator(
        _ input: ListTimelineEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTimelineEventsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTimelineEvents,
            inputKey: \ListTimelineEventsInput.nextToken,
            outputKey: \ListTimelineEventsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SSMIncidents.GetResourcePoliciesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.GetResourcePoliciesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )
    }
}

extension SSMIncidents.ListIncidentRecordsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListIncidentRecordsInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListRelatedItemsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListRelatedItemsInput {
        return .init(
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListReplicationSetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListReplicationSetsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListResponsePlansInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListResponsePlansInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SSMIncidents.ListTimelineEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SSMIncidents.ListTimelineEventsInput {
        return .init(
            filters: self.filters,
            incidentRecordArn: self.incidentRecordArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}