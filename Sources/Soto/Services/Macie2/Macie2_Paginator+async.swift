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
extension Macie2 {
    ///  Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBucketsPaginator(
        _ input: DescribeBucketsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBucketsRequest, DescribeBucketsResponse> {
        return .init(
            input: input,
            command: describeBuckets,
            inputKey: \DescribeBucketsRequest.nextToken,
            outputKey: \DescribeBucketsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUsageStatisticsPaginator(
        _ input: GetUsageStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsageStatisticsRequest, GetUsageStatisticsResponse> {
        return .init(
            input: input,
            command: getUsageStatistics,
            inputKey: \GetUsageStatisticsRequest.nextToken,
            outputKey: \GetUsageStatisticsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about one or more classification jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClassificationJobsPaginator(
        _ input: ListClassificationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClassificationJobsRequest, ListClassificationJobsResponse> {
        return .init(
            input: input,
            command: listClassificationJobs,
            inputKey: \ListClassificationJobsRequest.nextToken,
            outputKey: \ListClassificationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about all the custom data identifiers for an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomDataIdentifiersPaginator(
        _ input: ListCustomDataIdentifiersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomDataIdentifiersRequest, ListCustomDataIdentifiersResponse> {
        return .init(
            input: input,
            command: listCustomDataIdentifiers,
            inputKey: \ListCustomDataIdentifiersRequest.nextToken,
            outputKey: \ListCustomDataIdentifiersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about one or more findings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsRequest, ListFindingsResponse> {
        return .init(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a subset of information about all the findings filters for an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFindingsFiltersPaginator(
        _ input: ListFindingsFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsFiltersRequest, ListFindingsFiltersResponse> {
        return .init(
            input: input,
            command: listFindingsFilters,
            inputKey: \ListFindingsFiltersRequest.nextToken,
            outputKey: \ListFindingsFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the Amazon Macie membership invitations that were received by an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInvitationsRequest, ListInvitationsResponse> {
        return .init(
            input: input,
            command: listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the accounts that are associated with an Amazon Macie administrator account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMembersRequest, ListMembersResponse> {
        return .init(
            input: input,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationAdminAccountsRequest, ListOrganizationAdminAccountsResponse> {
        return .init(
            input: input,
            command: listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves (queries) statistical data and other information about Amazon Web Services resources that Amazon Macie monitors and analyzes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchResourcesPaginator(
        _ input: SearchResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchResourcesRequest, SearchResourcesResponse> {
        return .init(
            input: input,
            command: searchResources,
            inputKey: \SearchResourcesRequest.nextToken,
            outputKey: \SearchResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
