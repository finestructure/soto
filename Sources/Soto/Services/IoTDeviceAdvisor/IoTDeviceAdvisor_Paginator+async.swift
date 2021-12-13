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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension IoTDeviceAdvisor {
    ///  Lists the Device Advisor test suites you have created. Requires permission to access the ListSuiteDefinitions action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSuiteDefinitionsPaginator(
        _ input: ListSuiteDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSuiteDefinitionsRequest, ListSuiteDefinitionsResponse> {
        return .init(
            input: input,
            command: listSuiteDefinitions,
            inputKey: \ListSuiteDefinitionsRequest.nextToken,
            outputKey: \ListSuiteDefinitionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists runs of the specified Device Advisor test suite. You can list all runs of the test suite, or the runs of a specific version of the test suite. Requires permission to access the ListSuiteRuns action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSuiteRunsPaginator(
        _ input: ListSuiteRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSuiteRunsRequest, ListSuiteRunsResponse> {
        return .init(
            input: input,
            command: listSuiteRuns,
            inputKey: \ListSuiteRunsRequest.nextToken,
            outputKey: \ListSuiteRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
