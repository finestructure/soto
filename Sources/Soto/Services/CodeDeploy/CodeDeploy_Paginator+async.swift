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
extension CodeDeploy {
    ///  Lists information about revisions for an application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationRevisionsPaginator(
        _ input: ListApplicationRevisionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationRevisionsInput, ListApplicationRevisionsOutput> {
        return .init(
            input: input,
            command: listApplicationRevisions,
            inputKey: \ListApplicationRevisionsInput.nextToken,
            outputKey: \ListApplicationRevisionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the applications registered with the IAM user or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationsPaginator(
        _ input: ListApplicationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationsInput, ListApplicationsOutput> {
        return .init(
            input: input,
            command: listApplications,
            inputKey: \ListApplicationsInput.nextToken,
            outputKey: \ListApplicationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the deployment configurations with the IAM user or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentConfigsPaginator(
        _ input: ListDeploymentConfigsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentConfigsInput, ListDeploymentConfigsOutput> {
        return .init(
            input: input,
            command: listDeploymentConfigs,
            inputKey: \ListDeploymentConfigsInput.nextToken,
            outputKey: \ListDeploymentConfigsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the deployment groups for an application registered with the IAM user or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentGroupsPaginator(
        _ input: ListDeploymentGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentGroupsInput, ListDeploymentGroupsOutput> {
        return .init(
            input: input,
            command: listDeploymentGroups,
            inputKey: \ListDeploymentGroupsInput.nextToken,
            outputKey: \ListDeploymentGroupsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or Lambda.   Lists the instance for a deployment associated with the IAM user or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This operation is deprecated, use ListDeploymentTargets instead.")
    public func listDeploymentInstancesPaginator(
        _ input: ListDeploymentInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentInstancesInput, ListDeploymentInstancesOutput> {
        return .init(
            input: input,
            command: listDeploymentInstances,
            inputKey: \ListDeploymentInstancesInput.nextToken,
            outputKey: \ListDeploymentInstancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the deployments in a deployment group for an application registered with the IAM user or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeploymentsInput, ListDeploymentsOutput> {
        return .init(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsInput.nextToken,
            outputKey: \ListDeploymentsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)