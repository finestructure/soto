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
extension Inspector {
    ///  Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getExclusionsPreviewPaginator(
        _ input: GetExclusionsPreviewRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetExclusionsPreviewRequest, GetExclusionsPreviewResponse> {
        return .init(
            input: input,
            command: getExclusionsPreview,
            inputKey: \GetExclusionsPreviewRequest.nextToken,
            outputKey: \GetExclusionsPreviewResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentRunAgentsPaginator(
        _ input: ListAssessmentRunAgentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentRunAgentsRequest, ListAssessmentRunAgentsResponse> {
        return .init(
            input: input,
            command: listAssessmentRunAgents,
            inputKey: \ListAssessmentRunAgentsRequest.nextToken,
            outputKey: \ListAssessmentRunAgentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentRunsPaginator(
        _ input: ListAssessmentRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentRunsRequest, ListAssessmentRunsResponse> {
        return .init(
            input: input,
            command: listAssessmentRuns,
            inputKey: \ListAssessmentRunsRequest.nextToken,
            outputKey: \ListAssessmentRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentTargetsPaginator(
        _ input: ListAssessmentTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentTargetsRequest, ListAssessmentTargetsResponse> {
        return .init(
            input: input,
            command: listAssessmentTargets,
            inputKey: \ListAssessmentTargetsRequest.nextToken,
            outputKey: \ListAssessmentTargetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssessmentTemplatesPaginator(
        _ input: ListAssessmentTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssessmentTemplatesRequest, ListAssessmentTemplatesResponse> {
        return .init(
            input: input,
            command: listAssessmentTemplates,
            inputKey: \ListAssessmentTemplatesRequest.nextToken,
            outputKey: \ListAssessmentTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventSubscriptionsPaginator(
        _ input: ListEventSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventSubscriptionsRequest, ListEventSubscriptionsResponse> {
        return .init(
            input: input,
            command: listEventSubscriptions,
            inputKey: \ListEventSubscriptionsRequest.nextToken,
            outputKey: \ListEventSubscriptionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List exclusions that are generated by the assessment run.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExclusionsPaginator(
        _ input: ListExclusionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExclusionsRequest, ListExclusionsResponse> {
        return .init(
            input: input,
            command: listExclusions,
            inputKey: \ListExclusionsRequest.nextToken,
            outputKey: \ListExclusionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
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

    ///  Lists all available Amazon Inspector rules packages.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRulesPackagesPaginator(
        _ input: ListRulesPackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRulesPackagesRequest, ListRulesPackagesResponse> {
        return .init(
            input: input,
            command: listRulesPackages,
            inputKey: \ListRulesPackagesRequest.nextToken,
            outputKey: \ListRulesPackagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func previewAgentsPaginator(
        _ input: PreviewAgentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<PreviewAgentsRequest, PreviewAgentsResponse> {
        return .init(
            input: input,
            command: previewAgents,
            inputKey: \PreviewAgentsRequest.nextToken,
            outputKey: \PreviewAgentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)