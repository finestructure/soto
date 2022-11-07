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

import SotoCore

// MARK: Paginators

extension Route53RecoveryCluster {
    ///  List routing control names and Amazon Resource Names (ARNs), as well as the routing control
    ///  			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    ///  			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    ///  			all the routing controls in the cluster.
    ///  		       A routing control is a simple on/off switch in Route 53 ARC that you
    ///  			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    ///  			the state is Off, traffic does not flow.
    ///  		       Before you can create a routing control, you must first create a cluster, and then host the control
    ///  			in a control panel on the cluster. For more information, see
    ///  				Create routing control structures in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///  			You access one of the endpoints for the cluster to get or update the routing control state to
    ///  			redirect traffic for your application.
    ///  		        You must specify Regional endpoints when you work with API cluster operations
    ///  			to use this API operation to list routing controls in Route 53 ARC.
    ///  		       Learn more about working with routing controls in the following topics in the
    ///  			Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    ///  				Viewing and updating routing control states     Working with
    ///  				routing controls in Route 53 ARC
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
    public func listRoutingControlsPaginator<Result>(
        _ input: ListRoutingControlsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRoutingControlsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listRoutingControls,
            inputKey: \ListRoutingControlsRequest.nextToken,
            outputKey: \ListRoutingControlsResponse.nextToken,
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
    public func listRoutingControlsPaginator(
        _ input: ListRoutingControlsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRoutingControlsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listRoutingControls,
            inputKey: \ListRoutingControlsRequest.nextToken,
            outputKey: \ListRoutingControlsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Route53RecoveryCluster.ListRoutingControlsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryCluster.ListRoutingControlsRequest {
        return .init(
            controlPanelArn: self.controlPanelArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}