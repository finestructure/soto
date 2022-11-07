//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension PI {
    ///  For a specific time period, retrieve the top N dimension keys for a metric.   Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeDimensionKeysPaginator(
        _ input: DescribeDimensionKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeDimensionKeysRequest, DescribeDimensionKeysResponse> {
        return .init(
            input: input,
            command: describeDimensionKeys,
            inputKey: \DescribeDimensionKeysRequest.nextToken,
            outputKey: \DescribeDimensionKeysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve Performance Insights metrics for a set of data sources over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.  Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourceMetricsPaginator(
        _ input: GetResourceMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourceMetricsRequest, GetResourceMetricsResponse> {
        return .init(
            input: input,
            command: getResourceMetrics,
            inputKey: \GetResourceMetricsRequest.nextToken,
            outputKey: \GetResourceMetricsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAvailableResourceDimensionsPaginator(
        _ input: ListAvailableResourceDimensionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAvailableResourceDimensionsRequest, ListAvailableResourceDimensionsResponse> {
        return .init(
            input: input,
            command: listAvailableResourceDimensions,
            inputKey: \ListAvailableResourceDimensionsRequest.nextToken,
            outputKey: \ListAvailableResourceDimensionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve metrics of the specified types that can be queried for a specified DB instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAvailableResourceMetricsPaginator(
        _ input: ListAvailableResourceMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAvailableResourceMetricsRequest, ListAvailableResourceMetricsResponse> {
        return .init(
            input: input,
            command: listAvailableResourceMetrics,
            inputKey: \ListAvailableResourceMetricsRequest.nextToken,
            outputKey: \ListAvailableResourceMetricsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)