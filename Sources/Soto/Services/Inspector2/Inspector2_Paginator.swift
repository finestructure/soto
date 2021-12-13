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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Inspector2 {
    ///  Lists the permissions an account has to configure Amazon Inspector.
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
    public func listAccountPermissionsPaginator<Result>(
        _ input: ListAccountPermissionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccountPermissionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountPermissions,
            inputKey: \ListAccountPermissionsRequest.nextToken,
            outputKey: \ListAccountPermissionsResponse.nextToken,
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
    public func listAccountPermissionsPaginator(
        _ input: ListAccountPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccountPermissionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountPermissions,
            inputKey: \ListAccountPermissionsRequest.nextToken,
            outputKey: \ListAccountPermissionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists coverage details for you environment.
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
    public func listCoveragePaginator<Result>(
        _ input: ListCoverageRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCoverageResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCoverage,
            inputKey: \ListCoverageRequest.nextToken,
            outputKey: \ListCoverageResponse.nextToken,
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
    public func listCoveragePaginator(
        _ input: ListCoverageRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCoverageResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCoverage,
            inputKey: \ListCoverageRequest.nextToken,
            outputKey: \ListCoverageResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists Amazon Inspector coverage statistics for your environment.
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
    public func listCoverageStatisticsPaginator<Result>(
        _ input: ListCoverageStatisticsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCoverageStatisticsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCoverageStatistics,
            inputKey: \ListCoverageStatisticsRequest.nextToken,
            outputKey: \ListCoverageStatisticsResponse.nextToken,
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
    public func listCoverageStatisticsPaginator(
        _ input: ListCoverageStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCoverageStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCoverageStatistics,
            inputKey: \ListCoverageStatisticsRequest.nextToken,
            outputKey: \ListCoverageStatisticsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists information about the Amazon Inspector delegated administrator of your organization.
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
    public func listDelegatedAdminAccountsPaginator<Result>(
        _ input: ListDelegatedAdminAccountsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDelegatedAdminAccountsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDelegatedAdminAccounts,
            inputKey: \ListDelegatedAdminAccountsRequest.nextToken,
            outputKey: \ListDelegatedAdminAccountsResponse.nextToken,
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
    public func listDelegatedAdminAccountsPaginator(
        _ input: ListDelegatedAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDelegatedAdminAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDelegatedAdminAccounts,
            inputKey: \ListDelegatedAdminAccountsRequest.nextToken,
            outputKey: \ListDelegatedAdminAccountsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the filters associated with your account.
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
    public func listFiltersPaginator<Result>(
        _ input: ListFiltersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFiltersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFilters,
            inputKey: \ListFiltersRequest.nextToken,
            outputKey: \ListFiltersResponse.nextToken,
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
    public func listFiltersPaginator(
        _ input: ListFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFilters,
            inputKey: \ListFiltersRequest.nextToken,
            outputKey: \ListFiltersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists aggregated finding data for your environment based on specific criteria.
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
    public func listFindingAggregationsPaginator<Result>(
        _ input: ListFindingAggregationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingAggregationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindingAggregations,
            inputKey: \ListFindingAggregationsRequest.nextToken,
            outputKey: \ListFindingAggregationsResponse.nextToken,
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
    public func listFindingAggregationsPaginator(
        _ input: ListFindingAggregationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingAggregationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindingAggregations,
            inputKey: \ListFindingAggregationsRequest.nextToken,
            outputKey: \ListFindingAggregationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists findings for your environment.
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
    public func listFindingsPaginator<Result>(
        _ input: ListFindingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
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
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List members associated with the Amazon Inspector delegated administrator for your organization.
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
    public func listMembersPaginator<Result>(
        _ input: ListMembersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMembersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
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
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMembersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Amazon Inspector usage totals over the last 30 days.
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
    public func listUsageTotalsPaginator<Result>(
        _ input: ListUsageTotalsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListUsageTotalsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listUsageTotals,
            inputKey: \ListUsageTotalsRequest.nextToken,
            outputKey: \ListUsageTotalsResponse.nextToken,
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
    public func listUsageTotalsPaginator(
        _ input: ListUsageTotalsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUsageTotalsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listUsageTotals,
            inputKey: \ListUsageTotalsRequest.nextToken,
            outputKey: \ListUsageTotalsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Inspector2.ListAccountPermissionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListAccountPermissionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            service: self.service
        )
    }
}

extension Inspector2.ListCoverageRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListCoverageRequest {
        return .init(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector2.ListCoverageStatisticsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListCoverageStatisticsRequest {
        return .init(
            filterCriteria: self.filterCriteria,
            groupBy: self.groupBy,
            nextToken: token
        )
    }
}

extension Inspector2.ListDelegatedAdminAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListDelegatedAdminAccountsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector2.ListFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListFiltersRequest {
        return .init(
            action: self.action,
            arns: self.arns,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector2.ListFindingAggregationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListFindingAggregationsRequest {
        return .init(
            accountIds: self.accountIds,
            aggregationRequest: self.aggregationRequest,
            aggregationType: self.aggregationType,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Inspector2.ListFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListFindingsRequest {
        return .init(
            filterCriteria: self.filterCriteria,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension Inspector2.ListMembersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListMembersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )
    }
}

extension Inspector2.ListUsageTotalsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Inspector2.ListUsageTotalsRequest {
        return .init(
            accountIds: self.accountIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
