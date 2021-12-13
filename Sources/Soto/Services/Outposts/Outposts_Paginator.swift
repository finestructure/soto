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

extension Outposts {
    ///  Use to create a list of every item in the catalog. Add filters to your request to return a more specific list of results. Use filters to match an item class, storage option, or EC2 family.  If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
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
    public func listCatalogItemsPaginator<Result>(
        _ input: ListCatalogItemsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCatalogItemsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCatalogItems,
            inputKey: \ListCatalogItemsInput.nextToken,
            outputKey: \ListCatalogItemsOutput.nextToken,
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
    public func listCatalogItemsPaginator(
        _ input: ListCatalogItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCatalogItemsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCatalogItems,
            inputKey: \ListCatalogItemsInput.nextToken,
            outputKey: \ListCatalogItemsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Create a list of the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to  return a more specific list of results.
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
    public func listOrdersPaginator<Result>(
        _ input: ListOrdersInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOrdersOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listOrders,
            inputKey: \ListOrdersInput.nextToken,
            outputKey: \ListOrdersOutput.nextToken,
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
    public func listOrdersPaginator(
        _ input: ListOrdersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOrdersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listOrders,
            inputKey: \ListOrdersInput.nextToken,
            outputKey: \ListOrdersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Create a list of the Outposts for your Amazon Web Services account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1).   If you specify multiple filters, the filters are joined with an AND, and the request returns only  results that match all of the specified filters.
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
    public func listOutpostsPaginator<Result>(
        _ input: ListOutpostsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOutpostsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
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
    public func listOutpostsPaginator(
        _ input: ListOutpostsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOutpostsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the sites for your Amazon Web Services account.
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
    public func listSitesPaginator<Result>(
        _ input: ListSitesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSitesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
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
    public func listSitesPaginator(
        _ input: ListSitesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSitesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Outposts.ListCatalogItemsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListCatalogItemsInput {
        return .init(
            ec2FamilyFilter: self.ec2FamilyFilter,
            itemClassFilter: self.itemClassFilter,
            maxResults: self.maxResults,
            nextToken: token,
            supportedStorageFilter: self.supportedStorageFilter
        )
    }
}

extension Outposts.ListOrdersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListOrdersInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifierFilter: self.outpostIdentifierFilter
        )
    }
}

extension Outposts.ListOutpostsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListOutpostsInput {
        return .init(
            availabilityZoneFilter: self.availabilityZoneFilter,
            availabilityZoneIdFilter: self.availabilityZoneIdFilter,
            lifeCycleStatusFilter: self.lifeCycleStatusFilter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Outposts.ListSitesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListSitesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
