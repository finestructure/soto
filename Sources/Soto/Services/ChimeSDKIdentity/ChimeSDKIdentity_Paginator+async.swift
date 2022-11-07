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
extension ChimeSDKIdentity {
    ///  Returns a list of the administrators in the AppInstance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstanceAdminsPaginator(
        _ input: ListAppInstanceAdminsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstanceAdminsRequest, ListAppInstanceAdminsResponse> {
        return .init(
            input: input,
            command: listAppInstanceAdmins,
            inputKey: \ListAppInstanceAdminsRequest.nextToken,
            outputKey: \ListAppInstanceAdminsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the AppInstanceUserEndpoints created under a single AppInstanceUser.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstanceUserEndpointsPaginator(
        _ input: ListAppInstanceUserEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstanceUserEndpointsRequest, ListAppInstanceUserEndpointsResponse> {
        return .init(
            input: input,
            command: listAppInstanceUserEndpoints,
            inputKey: \ListAppInstanceUserEndpointsRequest.nextToken,
            outputKey: \ListAppInstanceUserEndpointsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all AppInstanceUsers created under a single AppInstance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstanceUsersPaginator(
        _ input: ListAppInstanceUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstanceUsersRequest, ListAppInstanceUsersResponse> {
        return .init(
            input: input,
            command: listAppInstanceUsers,
            inputKey: \ListAppInstanceUsersRequest.nextToken,
            outputKey: \ListAppInstanceUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Amazon Chime AppInstances created under a single AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstancesPaginator(
        _ input: ListAppInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstancesRequest, ListAppInstancesResponse> {
        return .init(
            input: input,
            command: listAppInstances,
            inputKey: \ListAppInstancesRequest.nextToken,
            outputKey: \ListAppInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)