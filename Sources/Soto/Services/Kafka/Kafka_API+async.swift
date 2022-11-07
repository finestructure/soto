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
extension Kafka {
    // MARK: Async API Calls

    /// Associates one or more Scram Secrets with an Amazon MSK cluster.
    public func batchAssociateScramSecret(_ input: BatchAssociateScramSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateScramSecretResponse {
        return try await self.client.execute(operation: "BatchAssociateScramSecret", path: "/v1/clusters/{ClusterArn}/scram-secrets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates one or more Scram Secrets from an Amazon MSK cluster.
    public func batchDisassociateScramSecret(_ input: BatchDisassociateScramSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateScramSecretResponse {
        return try await self.client.execute(operation: "BatchDisassociateScramSecret", path: "/v1/clusters/{ClusterArn}/scram-secrets", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        return try await self.client.execute(operation: "CreateCluster", path: "/v1/clusters", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MSK cluster.
    public func createClusterV2(_ input: CreateClusterV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterV2Response {
        return try await self.client.execute(operation: "CreateClusterV2", path: "/api/v2/clusters", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new MSK configuration.
    public func createConfiguration(_ input: CreateConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigurationResponse {
        return try await self.client.execute(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        return try await self.client.execute(operation: "DeleteCluster", path: "/v1/clusters/{ClusterArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an MSK Configuration.
    public func deleteConfiguration(_ input: DeleteConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigurationResponse {
        return try await self.client.execute(operation: "DeleteConfiguration", path: "/v1/configurations/{Arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResponse {
        return try await self.client.execute(operation: "DescribeCluster", path: "/v1/clusters/{ClusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of the cluster operation specified by the ARN.
    public func describeClusterOperation(_ input: DescribeClusterOperationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterOperationResponse {
        return try await self.client.execute(operation: "DescribeClusterOperation", path: "/v1/operations/{ClusterOperationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeClusterV2(_ input: DescribeClusterV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterV2Response {
        return try await self.client.execute(operation: "DescribeClusterV2", path: "/api/v2/clusters/{ClusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of this MSK configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigurationResponse {
        return try await self.client.execute(operation: "DescribeConfiguration", path: "/v1/configurations/{Arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a description of this revision of the configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigurationRevisionResponse {
        return try await self.client.execute(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{Arn}/revisions/{Revision}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBootstrapBrokersResponse {
        return try await self.client.execute(operation: "GetBootstrapBrokers", path: "/v1/clusters/{ClusterArn}/bootstrap-brokers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the Apache Kafka versions to which you can update the MSK cluster.
    public func getCompatibleKafkaVersions(_ input: GetCompatibleKafkaVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCompatibleKafkaVersionsResponse {
        return try await self.client.execute(operation: "GetCompatibleKafkaVersions", path: "/v1/compatible-kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the operations that have been performed on the specified MSK cluster.
    public func listClusterOperations(_ input: ListClusterOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClusterOperationsResponse {
        return try await self.client.execute(operation: "ListClusterOperations", path: "/v1/clusters/{ClusterArn}/operations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK clusters in the current Region.
    public func listClusters(_ input: ListClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClustersResponse {
        return try await self.client.execute(operation: "ListClusters", path: "/v1/clusters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK clusters in the current Region.
    public func listClustersV2(_ input: ListClustersV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClustersV2Response {
        return try await self.client.execute(operation: "ListClustersV2", path: "/api/v2/clusters", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK configurations in this Region.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationRevisionsResponse {
        return try await self.client.execute(operation: "ListConfigurationRevisions", path: "/v1/configurations/{Arn}/revisions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the MSK configurations in this Region.
    public func listConfigurations(_ input: ListConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationsResponse {
        return try await self.client.execute(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Apache Kafka versions.
    public func listKafkaVersions(_ input: ListKafkaVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKafkaVersionsResponse {
        return try await self.client.execute(operation: "ListKafkaVersions", path: "/v1/kafka-versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNodesResponse {
        return try await self.client.execute(operation: "ListNodes", path: "/v1/clusters/{ClusterArn}/nodes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the Scram Secrets associated with an Amazon MSK cluster.
    public func listScramSecrets(_ input: ListScramSecretsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScramSecretsResponse {
        return try await self.client.execute(operation: "ListScramSecrets", path: "/v1/clusters/{ClusterArn}/scram-secrets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reboots brokers.
    public func rebootBroker(_ input: RebootBrokerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootBrokerResponse {
        return try await self.client.execute(operation: "RebootBroker", path: "/v1/clusters/{ClusterArn}/reboot-broker", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified MSK resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/v1/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the tags associated with the keys that are provided in the query.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/v1/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the number of broker nodes in the cluster.
    public func updateBrokerCount(_ input: UpdateBrokerCountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerCountResponse {
        return try await self.client.execute(operation: "UpdateBrokerCount", path: "/v1/clusters/{ClusterArn}/nodes/count", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the EBS storage associated with MSK brokers.
    public func updateBrokerStorage(_ input: UpdateBrokerStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerStorageResponse {
        return try await self.client.execute(operation: "UpdateBrokerStorage", path: "/v1/clusters/{ClusterArn}/nodes/storage", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates EC2 instance type.
    public func updateBrokerType(_ input: UpdateBrokerTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrokerTypeResponse {
        return try await self.client.execute(operation: "UpdateBrokerType", path: "/v1/clusters/{ClusterArn}/nodes/type", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the cluster with the configuration that is specified in the request body.
    public func updateClusterConfiguration(_ input: UpdateClusterConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterConfigurationResponse {
        return try await self.client.execute(operation: "UpdateClusterConfiguration", path: "/v1/clusters/{ClusterArn}/configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the Apache Kafka version for the cluster.
    public func updateClusterKafkaVersion(_ input: UpdateClusterKafkaVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterKafkaVersionResponse {
        return try await self.client.execute(operation: "UpdateClusterKafkaVersion", path: "/v1/clusters/{ClusterArn}/version", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an MSK configuration.
    public func updateConfiguration(_ input: UpdateConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConfigurationResponse {
        return try await self.client.execute(operation: "UpdateConfiguration", path: "/v1/configurations/{Arn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the cluster's connectivity configuration.
    public func updateConnectivity(_ input: UpdateConnectivityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConnectivityResponse {
        return try await self.client.execute(operation: "UpdateConnectivity", path: "/v1/clusters/{ClusterArn}/connectivity", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.
    public func updateMonitoring(_ input: UpdateMonitoringRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMonitoringResponse {
        return try await self.client.execute(operation: "UpdateMonitoring", path: "/v1/clusters/{ClusterArn}/monitoring", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the security settings for the cluster. You can use this operation to specify encryption and authentication on existing clusters.
    public func updateSecurity(_ input: UpdateSecurityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecurityResponse {
        return try await self.client.execute(operation: "UpdateSecurity", path: "/v1/clusters/{ClusterArn}/security", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates cluster broker volume size (or) sets cluster storage mode to TIERED.
    public func updateStorage(_ input: UpdateStorageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStorageResponse {
        return try await self.client.execute(operation: "UpdateStorage", path: "/v1/clusters/{ClusterArn}/storage", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)