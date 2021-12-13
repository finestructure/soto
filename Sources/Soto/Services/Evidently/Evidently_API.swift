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

@_exported import SotoCore

/// Service object for interacting with AWS Evidently service.
///
/// You can use Amazon CloudWatch Evidently to safely validate new features by serving them to a specified percentage of your users while you roll out the feature. You can monitor the performance of the new feature to help you decide when to ramp up traffic to your users. This helps you  reduce risk and identify unintended consequences before you fully launch the feature. You can also conduct A/B experiments to make feature design decisions based on evidence and data. An experiment can test as many as five variations at once. Evidently collects experiment data and analyzes it using statistical methods. It also provides clear recommendations about which variations perform better. You can test both user-facing features and backend features.
public struct Evidently: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Evidently client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "evidently",
            serviceProtocol: .restjson,
            apiVersion: "2021-02-01",
            endpoint: endpoint,
            serviceEndpoints: ["ap-northeast-1": "evidently.ap-northeast-1.amazonaws.com", "ap-southeast-1": "evidently.ap-southeast-1.amazonaws.com", "ap-southeast-2": "evidently.ap-southeast-2.amazonaws.com", "eu-central-1": "evidently.eu-central-1.amazonaws.com", "eu-north-1": "evidently.eu-north-1.amazonaws.com", "eu-west-1": "evidently.eu-west-1.amazonaws.com", "us-east-1": "evidently.us-east-1.amazonaws.com", "us-east-2": "evidently.us-east-2.amazonaws.com", "us-west-2": "evidently.us-west-2.amazonaws.com"],
            errorType: EvidentlyErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// This operation assigns feature variation to user sessions. For each user session, you pass in an entityID that represents the user. Evidently then checks the evaluation rules and assigns the variation. The first rules that are evaluated are the override rules. If the user's entityID matches an override rule, the user is served the variation specified by that rule. Next, if there is a launch of the feature, the user might be assigned to a variation in the launch. The chance of this depends on the percentage of users that are allocated to that launch. If the user is enrolled in the launch, the variation they are served depends on the allocation of the various feature variations used for the launch. If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might  be assigned to a variation in the experiment. The chance of this depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment,  the variation they are served depends on the allocation of the various feature variations used for the experiment.  If the user is not assigned to a launch or experiment, they are served the default variation.
    public func batchEvaluateFeature(_ input: BatchEvaluateFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchEvaluateFeatureResponse> {
        return self.client.execute(operation: "BatchEvaluateFeature", path: "/projects/{project}/evaluations", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "dataplane.", logger: logger, on: eventLoop)
    }

    /// Creates an Evidently experiment. Before you create an experiment, you must create the feature to use for the experiment. An experiment helps you make feature design  decisions based on evidence and data. An experiment can test as many as five variations at once. Evidently collects experiment data and analyzes it by statistical methods, and provides clear recommendations about which variations perform better. Don't use this operation to update an existing experiment. Instead, use  UpdateExperiment.
    public func createExperiment(_ input: CreateExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExperimentResponse> {
        return self.client.execute(operation: "CreateExperiment", path: "/projects/{project}/experiments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Evidently feature that you want to launch or test. You can define up to  five variations of a feature, and use these variations in your launches and experiments. A feature must be created in a project. For information about creating a project, see CreateProject. Don't use this operation to update an existing feature. Instead, use  UpdateFeature.
    public func createFeature(_ input: CreateFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFeatureResponse> {
        return self.client.execute(operation: "CreateFeature", path: "/projects/{project}/features", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a launch of a given feature. Before you create a launch, you must create the feature to use for the launch. You can use a launch to safely validate new features by serving them to a specified percentage of your users while you roll out the feature. You can monitor the performance of the new feature to help you decide when to ramp up traffic to more users. This helps you reduce risk and identify unintended consequences before you fully launch the feature. Don't use this operation to update an existing launch. Instead, use  UpdateLaunch.
    public func createLaunch(_ input: CreateLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLaunchResponse> {
        return self.client.execute(operation: "CreateLaunch", path: "/projects/{project}/launches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a project, which is the logical object in Evidently that can contain features, launches, and  experiments. Use projects to group similar features together. To update an existing project, use UpdateProject.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        return self.client.execute(operation: "CreateProject", path: "/projects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Evidently experiment. The feature used for the experiment is not deleted. To stop an experiment without deleting it, use StopExperiment.
    public func deleteExperiment(_ input: DeleteExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExperimentResponse> {
        return self.client.execute(operation: "DeleteExperiment", path: "/projects/{project}/experiments/{experiment}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Evidently feature.
    public func deleteFeature(_ input: DeleteFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFeatureResponse> {
        return self.client.execute(operation: "DeleteFeature", path: "/projects/{project}/features/{feature}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Evidently launch. The feature used for the launch is not deleted. To stop a launch without deleting it, use StopLaunch.
    public func deleteLaunch(_ input: DeleteLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLaunchResponse> {
        return self.client.execute(operation: "DeleteLaunch", path: "/projects/{project}/launches/{launch}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Evidently project. Before you can delete a project, you must delete all the features that the project contains. To delete a feature, use DeleteFeature.
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResponse> {
        return self.client.execute(operation: "DeleteProject", path: "/projects/{project}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation assigns a feature variation to one given user session. You pass in an entityID that represents the user. Evidently then checks the evaluation rules and assigns the variation. The first rules that are evaluated are the override rules. If the user's entityID matches an override rule, the user is served the variation specified by that rule. Next, if there is a launch of the feature, the user might be assigned to a variation in the launch. The chance of this depends on the percentage of users that are allocated to that launch. If the user is enrolled in the launch, the variation they are served depends on the allocation of the various feature variations used for the launch. If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might  be assigned to a variation in the experiment. The chance of this depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment,  the variation they are served depends on the allocation of the various feature variations used for the experiment.  If the user is not assigned to a launch or experiment, they are served the default variation.
    public func evaluateFeature(_ input: EvaluateFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateFeatureResponse> {
        return self.client.execute(operation: "EvaluateFeature", path: "/projects/{project}/evaluations/{feature}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "dataplane.", logger: logger, on: eventLoop)
    }

    /// Returns the details about one experiment. You must already know the  experiment name. To retrieve a list of experiments in your account, use ListExperiments.
    public func getExperiment(_ input: GetExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExperimentResponse> {
        return self.client.execute(operation: "GetExperiment", path: "/projects/{project}/experiments/{experiment}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the results of a running or completed experiment.
    public func getExperimentResults(_ input: GetExperimentResultsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetExperimentResultsResponse> {
        return self.client.execute(operation: "GetExperimentResults", path: "/projects/{project}/experiments/{experiment}/results", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details about one feature. You must already know the feature name. To retrieve a list of features in your account, use ListFeatures.
    public func getFeature(_ input: GetFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFeatureResponse> {
        return self.client.execute(operation: "GetFeature", path: "/projects/{project}/features/{feature}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details about one launch. You must already know the  launch name. To retrieve a list of launches in your account, use ListLaunches.
    public func getLaunch(_ input: GetLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLaunchResponse> {
        return self.client.execute(operation: "GetLaunch", path: "/projects/{project}/launches/{launch}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details about one launch. You must already know the  project name. To retrieve a list of projects in your account, use ListProjects.
    public func getProject(_ input: GetProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProjectResponse> {
        return self.client.execute(operation: "GetProject", path: "/projects/{project}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns configuration details about all the experiments in the specified project.
    public func listExperiments(_ input: ListExperimentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExperimentsResponse> {
        return self.client.execute(operation: "ListExperiments", path: "/projects/{project}/experiments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns configuration details about all the features in the specified project.
    public func listFeatures(_ input: ListFeaturesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFeaturesResponse> {
        return self.client.execute(operation: "ListFeatures", path: "/projects/{project}/features", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns configuration details about all the launches in the specified project.
    public func listLaunches(_ input: ListLaunchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLaunchesResponse> {
        return self.client.execute(operation: "ListLaunches", path: "/projects/{project}/launches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns configuration details about all the projects in the current Region in your account.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResponse> {
        return self.client.execute(operation: "ListProjects", path: "/projects", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with an Evidently resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends performance events to Evidently. These events can be used to evaluate a launch or an experiment.
    public func putProjectEvents(_ input: PutProjectEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutProjectEventsResponse> {
        return self.client.execute(operation: "PutProjectEvents", path: "/events/projects/{project}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "dataplane.", logger: logger, on: eventLoop)
    }

    /// Starts an existing experiment. To create an experiment,  use CreateExperiment.
    public func startExperiment(_ input: StartExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartExperimentResponse> {
        return self.client.execute(operation: "StartExperiment", path: "/projects/{project}/experiments/{experiment}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an existing launch. To create a launch,  use CreateLaunch.
    public func startLaunch(_ input: StartLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLaunchResponse> {
        return self.client.execute(operation: "StartLaunch", path: "/projects/{project}/launches/{launch}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an experiment that is currently running. If you stop an experiment, you can't resume it or restart it.
    public func stopExperiment(_ input: StopExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopExperimentResponse> {
        return self.client.execute(operation: "StopExperiment", path: "/projects/{project}/experiments/{experiment}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a launch that is currently running. After you stop a launch, you will not be able to resume it or restart it.  Also, it  will not be evaluated as a rule for traffic allocation, and the traffic that was allocated to the launch will instead be available to the feature's experiment, if there is one. Otherwise, all traffic will be served the default variation after the launch is stopped.
    public func stopLaunch(_ input: StopLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLaunchResponse> {
        return self.client.execute(operation: "StopLaunch", path: "/projects/{project}/launches/{launch}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently resource. Projects, features, launches, and experiments can be tagged. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags.  If you specify a new tag key for the resource,  this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. For more information, see Tagging Amazon Web Services resources.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Evidently experiment.  Don't use this operation to update an experiment's tag. Instead, use  TagResource.
    public func updateExperiment(_ input: UpdateExperimentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateExperimentResponse> {
        return self.client.execute(operation: "UpdateExperiment", path: "/projects/{project}/experiments/{experiment}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing feature. You can't use this operation to update the tags of an existing feature. Instead, use  TagResource.
    public func updateFeature(_ input: UpdateFeatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFeatureResponse> {
        return self.client.execute(operation: "UpdateFeature", path: "/projects/{project}/features/{feature}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a launch of a given feature.  Don't use this operation to update the tags of an existing launch. Instead, use  TagResource.
    public func updateLaunch(_ input: UpdateLaunchRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLaunchResponse> {
        return self.client.execute(operation: "UpdateLaunch", path: "/projects/{project}/launches/{launch}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the description of an existing project. To create a new project, use CreateProject. Don't use this operation to update the data storage options of a project. Instead, use  UpdateProjectDataDelivery.  Don't use this operation to update the tags of a project. Instead, use  TagResource.
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        return self.client.execute(operation: "UpdateProject", path: "/projects/{project}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the data storage options for this project. If you store evaluation events, you an keep them and analyze them on your own. If you choose not to store evaluation events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. You can't specify both cloudWatchLogs and s3Destination in the same operation.
    public func updateProjectDataDelivery(_ input: UpdateProjectDataDeliveryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectDataDeliveryResponse> {
        return self.client.execute(operation: "UpdateProjectDataDelivery", path: "/projects/{project}/data-delivery", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Evidently {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Evidently, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
