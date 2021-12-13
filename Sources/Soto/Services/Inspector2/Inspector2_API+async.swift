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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Inspector2 {
    // MARK: Async API Calls

    /// Associates an Amazon Web Services account with an Amazon Inspector delegated administrator.
    public func associateMember(_ input: AssociateMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateMemberResponse {
        return try await self.client.execute(operation: "AssociateMember", path: "/members/associate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts within your environment.
    public func batchGetAccountStatus(_ input: BatchGetAccountStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetAccountStatusResponse {
        return try await self.client.execute(operation: "BatchGetAccountStatus", path: "/status/batch/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets free trial status for multiple Amazon Web Services accounts.
    public func batchGetFreeTrialInfo(_ input: BatchGetFreeTrialInfoRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetFreeTrialInfoResponse {
        return try await self.client.execute(operation: "BatchGetFreeTrialInfo", path: "/freetrialinfo/batchget", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the given findings report.
    public func cancelFindingsReport(_ input: CancelFindingsReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFindingsReportResponse {
        return try await self.client.execute(operation: "CancelFindingsReport", path: "/reporting/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a filter resource using specified filter criteria.
    public func createFilter(_ input: CreateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFilterResponse {
        return try await self.client.execute(operation: "CreateFilter", path: "/filters/create", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a finding report.
    public func createFindingsReport(_ input: CreateFindingsReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFindingsReportResponse {
        return try await self.client.execute(operation: "CreateFindingsReport", path: "/reporting/create", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a filter resource.
    public func deleteFilter(_ input: DeleteFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFilterResponse {
        return try await self.client.execute(operation: "DeleteFilter", path: "/filters/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe Amazon Inspector configuration settings for an Amazon Web Services organization
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/organizationconfiguration/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables Amazon Inspector scans for one or more Amazon Web Services accounts. Disabling all scan types in an account disables the Amazon Inspector service.
    public func disable(_ input: DisableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableResponse {
        return try await self.client.execute(operation: "Disable", path: "/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the Amazon Inspector delegated administrator for your organization.
    public func disableDelegatedAdminAccount(_ input: DisableDelegatedAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDelegatedAdminAccountResponse {
        return try await self.client.execute(operation: "DisableDelegatedAdminAccount", path: "/delegatedadminaccounts/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a member account from an Amazon Inspector delegated administrator.
    public func disassociateMember(_ input: DisassociateMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateMemberResponse {
        return try await self.client.execute(operation: "DisassociateMember", path: "/members/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables Amazon Inspector scans for one or more Amazon Web Services accounts.
    public func enable(_ input: EnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableResponse {
        return try await self.client.execute(operation: "Enable", path: "/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the Amazon Inspector delegated administrator for your Organizations organization.
    public func enableDelegatedAdminAccount(_ input: EnableDelegatedAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableDelegatedAdminAccountResponse {
        return try await self.client.execute(operation: "EnableDelegatedAdminAccount", path: "/delegatedadminaccounts/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the Amazon Inspector delegated administrator for your organization.
    public func getDelegatedAdminAccount(_ input: GetDelegatedAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDelegatedAdminAccountResponse {
        return try await self.client.execute(operation: "GetDelegatedAdminAccount", path: "/delegatedadminaccounts/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the status of a findings report.
    public func getFindingsReportStatus(_ input: GetFindingsReportStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFindingsReportStatusResponse {
        return try await self.client.execute(operation: "GetFindingsReportStatus", path: "/reporting/status/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets member information for your organization.
    public func getMember(_ input: GetMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMemberResponse {
        return try await self.client.execute(operation: "GetMember", path: "/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the permissions an account has to configure Amazon Inspector.
    public func listAccountPermissions(_ input: ListAccountPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountPermissionsResponse {
        return try await self.client.execute(operation: "ListAccountPermissions", path: "/accountpermissions/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists coverage details for you environment.
    public func listCoverage(_ input: ListCoverageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCoverageResponse {
        return try await self.client.execute(operation: "ListCoverage", path: "/coverage/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Amazon Inspector coverage statistics for your environment.
    public func listCoverageStatistics(_ input: ListCoverageStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCoverageStatisticsResponse {
        return try await self.client.execute(operation: "ListCoverageStatistics", path: "/coverage/statistics/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about the Amazon Inspector delegated administrator of your organization.
    public func listDelegatedAdminAccounts(_ input: ListDelegatedAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDelegatedAdminAccountsResponse {
        return try await self.client.execute(operation: "ListDelegatedAdminAccounts", path: "/delegatedadminaccounts/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the filters associated with your account.
    public func listFilters(_ input: ListFiltersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFiltersResponse {
        return try await self.client.execute(operation: "ListFilters", path: "/filters/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists aggregated finding data for your environment based on specific criteria.
    public func listFindingAggregations(_ input: ListFindingAggregationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingAggregationsResponse {
        return try await self.client.execute(operation: "ListFindingAggregations", path: "/findings/aggregation/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists findings for your environment.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingsResponse {
        return try await self.client.execute(operation: "ListFindings", path: "/findings/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List members associated with the Amazon Inspector delegated administrator for your organization.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/members/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags attached to a given resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Inspector usage totals over the last 30 days.
    public func listUsageTotals(_ input: ListUsageTotalsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsageTotalsResponse {
        return try await self.client.execute(operation: "ListUsageTotals", path: "/usage/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies the action that is to be applied to the findings that match the filter.
    public func updateFilter(_ input: UpdateFilterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFilterResponse {
        return try await self.client.execute(operation: "UpdateFilter", path: "/filters/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configurations for your Amazon Inspector organization.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/organizationconfiguration/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
