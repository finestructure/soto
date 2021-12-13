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
extension IoTSiteWise {
    ///  Gets aggregated values for an asset property. For more information, see Querying aggregates in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getAssetPropertyAggregatesPaginator(
        _ input: GetAssetPropertyAggregatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetAssetPropertyAggregatesRequest, GetAssetPropertyAggregatesResponse> {
        return .init(
            input: input,
            command: getAssetPropertyAggregates,
            inputKey: \GetAssetPropertyAggregatesRequest.nextToken,
            outputKey: \GetAssetPropertyAggregatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the history of an asset property's values. For more information, see Querying historical values in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getAssetPropertyValueHistoryPaginator(
        _ input: GetAssetPropertyValueHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetAssetPropertyValueHistoryRequest, GetAssetPropertyValueHistoryResponse> {
        return .init(
            input: input,
            command: getAssetPropertyValueHistory,
            inputKey: \GetAssetPropertyValueHistoryRequest.nextToken,
            outputKey: \GetAssetPropertyValueHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Get interpolated values for an asset property for a specified time interval, during a period of time. If your time series is missing data points during the specified time interval, you can use interpolation to estimate the missing data. For example, you can use this operation to return the interpolated temperature values for a wind turbine every 24 hours over a duration of 7 days. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getInterpolatedAssetPropertyValuesPaginator(
        _ input: GetInterpolatedAssetPropertyValuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetInterpolatedAssetPropertyValuesRequest, GetInterpolatedAssetPropertyValuesResponse> {
        return .init(
            input: input,
            command: getInterpolatedAssetPropertyValues,
            inputKey: \GetInterpolatedAssetPropertyValuesRequest.nextToken,
            outputKey: \GetInterpolatedAssetPropertyValuesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of access policies for an identity (an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or project).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccessPoliciesPaginator(
        _ input: ListAccessPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccessPoliciesRequest, ListAccessPoliciesResponse> {
        return .init(
            input: input,
            command: listAccessPolicies,
            inputKey: \ListAccessPoliciesRequest.nextToken,
            outputKey: \ListAccessPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of summaries of all asset models.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssetModelsPaginator(
        _ input: ListAssetModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssetModelsRequest, ListAssetModelsResponse> {
        return .init(
            input: input,
            command: listAssetModels,
            inputKey: \ListAssetModelsRequest.nextToken,
            outputKey: \ListAssetModelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of asset relationships for an asset. You can use this operation to identify an asset's root asset and all associated assets between that asset and its root.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssetRelationshipsPaginator(
        _ input: ListAssetRelationshipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssetRelationshipsRequest, ListAssetRelationshipsResponse> {
        return .init(
            input: input,
            command: listAssetRelationships,
            inputKey: \ListAssetRelationshipsRequest.nextToken,
            outputKey: \ListAssetRelationshipsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of asset summaries. You can use this operation to do the following:   List assets based on a specific asset model.   List top-level assets.   You can't use this operation to list all assets. To retrieve summaries for all of your assets, use ListAssetModels to get all of your asset model IDs. Then, use ListAssets to get all assets for each asset model.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssetsPaginator(
        _ input: ListAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssetsRequest, ListAssetsResponse> {
        return .init(
            input: input,
            command: listAssets,
            inputKey: \ListAssetsRequest.nextToken,
            outputKey: \ListAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of associated assets. You can use this operation to do the following:   List child assets associated to a parent asset by a hierarchy that you specify.   List an asset's parent asset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssociatedAssetsPaginator(
        _ input: ListAssociatedAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssociatedAssetsRequest, ListAssociatedAssetsResponse> {
        return .init(
            input: input,
            command: listAssociatedAssets,
            inputKey: \ListAssociatedAssetsRequest.nextToken,
            outputKey: \ListAssociatedAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDashboardsPaginator(
        _ input: ListDashboardsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDashboardsRequest, ListDashboardsResponse> {
        return .init(
            input: input,
            command: listDashboards,
            inputKey: \ListDashboardsRequest.nextToken,
            outputKey: \ListDashboardsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of gateways.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGatewaysPaginator(
        _ input: ListGatewaysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGatewaysRequest, ListGatewaysResponse> {
        return .init(
            input: input,
            command: listGateways,
            inputKey: \ListGatewaysRequest.nextToken,
            outputKey: \ListGatewaysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of IoT SiteWise Monitor portals.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPortalsPaginator(
        _ input: ListPortalsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPortalsRequest, ListPortalsResponse> {
        return .init(
            input: input,
            command: listPortals,
            inputKey: \ListPortalsRequest.nextToken,
            outputKey: \ListPortalsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of assets associated with an IoT SiteWise Monitor project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProjectAssetsPaginator(
        _ input: ListProjectAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProjectAssetsRequest, ListProjectAssetsResponse> {
        return .init(
            input: input,
            command: listProjectAssets,
            inputKey: \ListProjectAssetsRequest.nextToken,
            outputKey: \ListProjectAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResponse> {
        return .init(
            input: input,
            command: listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a paginated list of time series (data streams).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTimeSeriesPaginator(
        _ input: ListTimeSeriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTimeSeriesRequest, ListTimeSeriesResponse> {
        return .init(
            input: input,
            command: listTimeSeries,
            inputKey: \ListTimeSeriesRequest.nextToken,
            outputKey: \ListTimeSeriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
