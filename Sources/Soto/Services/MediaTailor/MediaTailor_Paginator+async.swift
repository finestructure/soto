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
extension MediaTailor {
    ///  Retrieves information about your channel's schedule.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getChannelSchedulePaginator(
        _ input: GetChannelScheduleRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetChannelScheduleRequest, GetChannelScheduleResponse> {
        return .init(
            input: input,
            command: getChannelSchedule,
            inputKey: \GetChannelScheduleRequest.nextToken,
            outputKey: \GetChannelScheduleResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the alerts that are associated with a MediaTailor channel assembly resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAlertsPaginator(
        _ input: ListAlertsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAlertsRequest, ListAlertsResponse> {
        return .init(
            input: input,
            command: listAlerts,
            inputKey: \ListAlertsRequest.nextToken,
            outputKey: \ListAlertsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the channels that are associated with the current AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the live sources contained in a source location. A source represents a piece of content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLiveSourcesPaginator(
        _ input: ListLiveSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLiveSourcesRequest, ListLiveSourcesResponse> {
        return .init(
            input: input,
            command: listLiveSources,
            inputKey: \ListLiveSourcesRequest.nextToken,
            outputKey: \ListLiveSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves existing playback configurations. For information about MediaTailor configurations, see Working with Configurations in AWS Elemental MediaTailor.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlaybackConfigurationsPaginator(
        _ input: ListPlaybackConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlaybackConfigurationsRequest, ListPlaybackConfigurationsResponse> {
        return .init(
            input: input,
            command: listPlaybackConfigurations,
            inputKey: \ListPlaybackConfigurationsRequest.nextToken,
            outputKey: \ListPlaybackConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the prefetch schedules for a playback configuration.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPrefetchSchedulesPaginator(
        _ input: ListPrefetchSchedulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPrefetchSchedulesRequest, ListPrefetchSchedulesResponse> {
        return .init(
            input: input,
            command: listPrefetchSchedules,
            inputKey: \ListPrefetchSchedulesRequest.nextToken,
            outputKey: \ListPrefetchSchedulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the source locations for a channel. A source location defines the host server URL, and contains a list of sources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSourceLocationsPaginator(
        _ input: ListSourceLocationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSourceLocationsRequest, ListSourceLocationsResponse> {
        return .init(
            input: input,
            command: listSourceLocations,
            inputKey: \ListSourceLocationsRequest.nextToken,
            outputKey: \ListSourceLocationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the VOD sources contained in a source location. A source represents a piece of content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVodSourcesPaginator(
        _ input: ListVodSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVodSourcesRequest, ListVodSourcesResponse> {
        return .init(
            input: input,
            command: listVodSources,
            inputKey: \ListVodSourcesRequest.nextToken,
            outputKey: \ListVodSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)