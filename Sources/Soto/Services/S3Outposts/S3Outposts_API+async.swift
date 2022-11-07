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

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension S3Outposts {
    // MARK: Async API Calls

    /// Creates an endpoint and associates it with the specified Outpost.  It can take up to 5 minutes for this action to finish.    Related actions include:    DeleteEndpoint     ListEndpoints
    public func createEndpoint(_ input: CreateEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEndpointResult {
        return try await self.client.execute(operation: "CreateEndpoint", path: "/S3Outposts/CreateEndpoint", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an endpoint.  It can take up to 5 minutes for this action to finish.    Related actions include:    CreateEndpoint     ListEndpoints
    public func deleteEndpoint(_ input: DeleteEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteEndpoint", path: "/S3Outposts/DeleteEndpoint", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists endpoints associated with the specified Outpost.  Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listEndpoints(_ input: ListEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEndpointsResult {
        return try await self.client.execute(operation: "ListEndpoints", path: "/S3Outposts/ListEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listSharedEndpoints(_ input: ListSharedEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSharedEndpointsResult {
        return try await self.client.execute(operation: "ListSharedEndpoints", path: "/S3Outposts/ListSharedEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)