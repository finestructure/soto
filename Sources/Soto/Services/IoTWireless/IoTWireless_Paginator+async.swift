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
extension IoTWireless {
    ///  Lists the destinations registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDestinationsPaginator(
        _ input: ListDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDestinationsRequest, ListDestinationsResponse> {
        return .init(
            input: input,
            command: listDestinations,
            inputKey: \ListDestinationsRequest.nextToken,
            outputKey: \ListDestinationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the device profiles registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeviceProfilesPaginator(
        _ input: ListDeviceProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeviceProfilesRequest, ListDeviceProfilesResponse> {
        return .init(
            input: input,
            command: listDeviceProfiles,
            inputKey: \ListDeviceProfilesRequest.nextToken,
            outputKey: \ListDeviceProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the FUOTA tasks registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFuotaTasksPaginator(
        _ input: ListFuotaTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFuotaTasksRequest, ListFuotaTasksResponse> {
        return .init(
            input: input,
            command: listFuotaTasks,
            inputKey: \ListFuotaTasksRequest.nextToken,
            outputKey: \ListFuotaTasksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the multicast groups registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMulticastGroupsPaginator(
        _ input: ListMulticastGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMulticastGroupsRequest, ListMulticastGroupsResponse> {
        return .init(
            input: input,
            command: listMulticastGroups,
            inputKey: \ListMulticastGroupsRequest.nextToken,
            outputKey: \ListMulticastGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all multicast groups associated with a fuota task.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMulticastGroupsByFuotaTaskPaginator(
        _ input: ListMulticastGroupsByFuotaTaskRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMulticastGroupsByFuotaTaskRequest, ListMulticastGroupsByFuotaTaskResponse> {
        return .init(
            input: input,
            command: listMulticastGroupsByFuotaTask,
            inputKey: \ListMulticastGroupsByFuotaTaskRequest.nextToken,
            outputKey: \ListMulticastGroupsByFuotaTaskResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the network analyzer configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNetworkAnalyzerConfigurationsPaginator(
        _ input: ListNetworkAnalyzerConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNetworkAnalyzerConfigurationsRequest, ListNetworkAnalyzerConfigurationsResponse> {
        return .init(
            input: input,
            command: listNetworkAnalyzerConfigurations,
            inputKey: \ListNetworkAnalyzerConfigurationsRequest.nextToken,
            outputKey: \ListNetworkAnalyzerConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List position configurations for a given resource, such as positioning solvers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPositionConfigurationsPaginator(
        _ input: ListPositionConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPositionConfigurationsRequest, ListPositionConfigurationsResponse> {
        return .init(
            input: input,
            command: listPositionConfigurations,
            inputKey: \ListPositionConfigurationsRequest.nextToken,
            outputKey: \ListPositionConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List queued messages in the downlink queue.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueuedMessagesPaginator(
        _ input: ListQueuedMessagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueuedMessagesRequest, ListQueuedMessagesResponse> {
        return .init(
            input: input,
            command: listQueuedMessages,
            inputKey: \ListQueuedMessagesRequest.nextToken,
            outputKey: \ListQueuedMessagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the service profiles registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceProfilesPaginator(
        _ input: ListServiceProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceProfilesRequest, ListServiceProfilesResponse> {
        return .init(
            input: input,
            command: listServiceProfiles,
            inputKey: \ListServiceProfilesRequest.nextToken,
            outputKey: \ListServiceProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the wireless devices registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWirelessDevicesPaginator(
        _ input: ListWirelessDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWirelessDevicesRequest, ListWirelessDevicesResponse> {
        return .init(
            input: input,
            command: listWirelessDevices,
            inputKey: \ListWirelessDevicesRequest.nextToken,
            outputKey: \ListWirelessDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the wireless gateways registered to your AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWirelessGatewaysPaginator(
        _ input: ListWirelessGatewaysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWirelessGatewaysRequest, ListWirelessGatewaysResponse> {
        return .init(
            input: input,
            command: listWirelessGateways,
            inputKey: \ListWirelessGatewaysRequest.nextToken,
            outputKey: \ListWirelessGatewaysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)