//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
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

/// Service object for interacting with AWS ChimeSDKMediaPipelines service.
///
/// The Amazon Chime SDK media pipeline APIs in this section allow software developers to create Amazon Chime SDK media pipelines that capture, concatenate, or stream your Amazon Chime SDK meetings. For more information about media pipelines, see Amazon Chime SDK media pipelines.
public struct ChimeSDKMediaPipelines: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ChimeSDKMediaPipelines client
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
            service: "media-pipelines-chime",
            signingName: "chime",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-15",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "media-pipelines-chime-fips.us-east-1.amazonaws.com",
                    "us-west-2": "media-pipelines-chime-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: ChimeSDKMediaPipelinesErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a media pipeline.
    public func createMediaCapturePipeline(_ input: CreateMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaCapturePipelineResponse> {
        return self.client.execute(operation: "CreateMediaCapturePipeline", path: "/sdk-media-capture-pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a media concatenation pipeline.
    public func createMediaConcatenationPipeline(_ input: CreateMediaConcatenationPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaConcatenationPipelineResponse> {
        return self.client.execute(operation: "CreateMediaConcatenationPipeline", path: "/sdk-media-concatenation-pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a media insights pipeline.
    public func createMediaInsightsPipeline(_ input: CreateMediaInsightsPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaInsightsPipelineResponse> {
        return self.client.execute(operation: "CreateMediaInsightsPipeline", path: "/media-insights-pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A structure that contains the static configurations for a media insights pipeline.
    public func createMediaInsightsPipelineConfiguration(_ input: CreateMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaInsightsPipelineConfigurationResponse> {
        return self.client.execute(operation: "CreateMediaInsightsPipelineConfiguration", path: "/media-insights-pipeline-configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a media live connector pipeline in an Amazon Chime SDK meeting.
    public func createMediaLiveConnectorPipeline(_ input: CreateMediaLiveConnectorPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaLiveConnectorPipelineResponse> {
        return self.client.execute(operation: "CreateMediaLiveConnectorPipeline", path: "/sdk-media-live-connector-pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Kinesis video stream pool for the media pipeline.
    public func createMediaPipelineKinesisVideoStreamPool(_ input: CreateMediaPipelineKinesisVideoStreamPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaPipelineKinesisVideoStreamPoolResponse> {
        return self.client.execute(operation: "CreateMediaPipelineKinesisVideoStreamPool", path: "/media-pipeline-kinesis-video-stream-pools", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a streaming media pipeline.
    public func createMediaStreamPipeline(_ input: CreateMediaStreamPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaStreamPipelineResponse> {
        return self.client.execute(operation: "CreateMediaStreamPipeline", path: "/sdk-media-stream-pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the media pipeline.
    @discardableResult public func deleteMediaCapturePipeline(_ input: DeleteMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMediaCapturePipeline", path: "/sdk-media-capture-pipelines/{MediaPipelineId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified configuration settings.
    @discardableResult public func deleteMediaInsightsPipelineConfiguration(_ input: DeleteMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMediaInsightsPipelineConfiguration", path: "/media-insights-pipeline-configurations/{Identifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the media pipeline.
    @discardableResult public func deleteMediaPipeline(_ input: DeleteMediaPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMediaPipeline", path: "/sdk-media-pipelines/{MediaPipelineId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Kinesis video stream pool.
    @discardableResult public func deleteMediaPipelineKinesisVideoStreamPool(_ input: DeleteMediaPipelineKinesisVideoStreamPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteMediaPipelineKinesisVideoStreamPool", path: "/media-pipeline-kinesis-video-stream-pools/{Identifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an existing media pipeline.
    public func getMediaCapturePipeline(_ input: GetMediaCapturePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMediaCapturePipelineResponse> {
        return self.client.execute(operation: "GetMediaCapturePipeline", path: "/sdk-media-capture-pipelines/{MediaPipelineId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the configuration settings for a media insights pipeline.
    public func getMediaInsightsPipelineConfiguration(_ input: GetMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMediaInsightsPipelineConfigurationResponse> {
        return self.client.execute(operation: "GetMediaInsightsPipelineConfiguration", path: "/media-insights-pipeline-configurations/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an existing media pipeline.
    public func getMediaPipeline(_ input: GetMediaPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMediaPipelineResponse> {
        return self.client.execute(operation: "GetMediaPipeline", path: "/sdk-media-pipelines/{MediaPipelineId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an Kinesis video stream pool.
    public func getMediaPipelineKinesisVideoStreamPool(_ input: GetMediaPipelineKinesisVideoStreamPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMediaPipelineKinesisVideoStreamPoolResponse> {
        return self.client.execute(operation: "GetMediaPipelineKinesisVideoStreamPool", path: "/media-pipeline-kinesis-video-stream-pools/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of the specified speaker search task.
    public func getSpeakerSearchTask(_ input: GetSpeakerSearchTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSpeakerSearchTaskResponse> {
        return self.client.execute(operation: "GetSpeakerSearchTask", path: "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of a voice tone analysis task.
    public func getVoiceToneAnalysisTask(_ input: GetVoiceToneAnalysisTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVoiceToneAnalysisTaskResponse> {
        return self.client.execute(operation: "GetVoiceToneAnalysisTask", path: "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of media pipelines.
    public func listMediaCapturePipelines(_ input: ListMediaCapturePipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaCapturePipelinesResponse> {
        return self.client.execute(operation: "ListMediaCapturePipelines", path: "/sdk-media-capture-pipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the available media insights pipeline configurations.
    public func listMediaInsightsPipelineConfigurations(_ input: ListMediaInsightsPipelineConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaInsightsPipelineConfigurationsResponse> {
        return self.client.execute(operation: "ListMediaInsightsPipelineConfigurations", path: "/media-insights-pipeline-configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the video stream pools in the media pipeline.
    public func listMediaPipelineKinesisVideoStreamPools(_ input: ListMediaPipelineKinesisVideoStreamPoolsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaPipelineKinesisVideoStreamPoolsResponse> {
        return self.client.execute(operation: "ListMediaPipelineKinesisVideoStreamPools", path: "/media-pipeline-kinesis-video-stream-pools", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of media pipelines.
    public func listMediaPipelines(_ input: ListMediaPipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMediaPipelinesResponse> {
        return self.client.execute(operation: "ListMediaPipelines", path: "/sdk-media-pipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags available for a media pipeline.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a speaker search task.  Before starting any speaker search tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the AWS service terms for the Amazon Chime SDK.
    public func startSpeakerSearchTask(_ input: StartSpeakerSearchTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSpeakerSearchTaskResponse> {
        return self.client.execute(operation: "StartSpeakerSearchTask", path: "/media-insights-pipelines/{Identifier}/speaker-search-tasks?operation=start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a voice tone analysis task. For more information about voice tone analysis, see Using Amazon Chime SDK voice analytics in the Amazon Chime SDK Developer Guide.  Before starting any voice tone analysis tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the AWS service terms for the Amazon Chime SDK.
    public func startVoiceToneAnalysisTask(_ input: StartVoiceToneAnalysisTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartVoiceToneAnalysisTaskResponse> {
        return self.client.execute(operation: "StartVoiceToneAnalysisTask", path: "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks?operation=start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a speaker search task.
    @discardableResult public func stopSpeakerSearchTask(_ input: StopSpeakerSearchTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopSpeakerSearchTask", path: "/media-insights-pipelines/{Identifier}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a voice tone analysis task.
    @discardableResult public func stopVoiceToneAnalysisTask(_ input: StopVoiceToneAnalysisTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StopVoiceToneAnalysisTask", path: "/media-insights-pipelines/{Identifier}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The ARN of the media pipeline that you want to tag. Consists of the pipeline's endpoint region, resource ID, and pipeline ID.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags?operation=tag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes any tags from a media pipeline.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags?operation=untag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the media insights pipeline's configuration settings.
    public func updateMediaInsightsPipelineConfiguration(_ input: UpdateMediaInsightsPipelineConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMediaInsightsPipelineConfigurationResponse> {
        return self.client.execute(operation: "UpdateMediaInsightsPipelineConfiguration", path: "/media-insights-pipeline-configurations/{Identifier}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the status of a media insights pipeline.
    @discardableResult public func updateMediaInsightsPipelineStatus(_ input: UpdateMediaInsightsPipelineStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateMediaInsightsPipelineStatus", path: "/media-insights-pipeline-status/{Identifier}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an Kinesis video stream pool in a media pipeline.
    public func updateMediaPipelineKinesisVideoStreamPool(_ input: UpdateMediaPipelineKinesisVideoStreamPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMediaPipelineKinesisVideoStreamPoolResponse> {
        return self.client.execute(operation: "UpdateMediaPipelineKinesisVideoStreamPool", path: "/media-pipeline-kinesis-video-stream-pools/{Identifier}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ChimeSDKMediaPipelines {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ChimeSDKMediaPipelines, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ChimeSDKMediaPipelines {
    /// Returns a list of media pipelines.
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
    public func listMediaCapturePipelinesPaginator<Result>(
        _ input: ListMediaCapturePipelinesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMediaCapturePipelinesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMediaCapturePipelines,
            inputKey: \ListMediaCapturePipelinesRequest.nextToken,
            outputKey: \ListMediaCapturePipelinesResponse.nextToken,
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
    public func listMediaCapturePipelinesPaginator(
        _ input: ListMediaCapturePipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMediaCapturePipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMediaCapturePipelines,
            inputKey: \ListMediaCapturePipelinesRequest.nextToken,
            outputKey: \ListMediaCapturePipelinesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists the available media insights pipeline configurations.
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
    public func listMediaInsightsPipelineConfigurationsPaginator<Result>(
        _ input: ListMediaInsightsPipelineConfigurationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMediaInsightsPipelineConfigurationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMediaInsightsPipelineConfigurations,
            inputKey: \ListMediaInsightsPipelineConfigurationsRequest.nextToken,
            outputKey: \ListMediaInsightsPipelineConfigurationsResponse.nextToken,
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
    public func listMediaInsightsPipelineConfigurationsPaginator(
        _ input: ListMediaInsightsPipelineConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMediaInsightsPipelineConfigurationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMediaInsightsPipelineConfigurations,
            inputKey: \ListMediaInsightsPipelineConfigurationsRequest.nextToken,
            outputKey: \ListMediaInsightsPipelineConfigurationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists the video stream pools in the media pipeline.
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
    public func listMediaPipelineKinesisVideoStreamPoolsPaginator<Result>(
        _ input: ListMediaPipelineKinesisVideoStreamPoolsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMediaPipelineKinesisVideoStreamPoolsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMediaPipelineKinesisVideoStreamPools,
            inputKey: \ListMediaPipelineKinesisVideoStreamPoolsRequest.nextToken,
            outputKey: \ListMediaPipelineKinesisVideoStreamPoolsResponse.nextToken,
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
    public func listMediaPipelineKinesisVideoStreamPoolsPaginator(
        _ input: ListMediaPipelineKinesisVideoStreamPoolsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMediaPipelineKinesisVideoStreamPoolsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMediaPipelineKinesisVideoStreamPools,
            inputKey: \ListMediaPipelineKinesisVideoStreamPoolsRequest.nextToken,
            outputKey: \ListMediaPipelineKinesisVideoStreamPoolsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of media pipelines.
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
    public func listMediaPipelinesPaginator<Result>(
        _ input: ListMediaPipelinesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMediaPipelinesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listMediaPipelines,
            inputKey: \ListMediaPipelinesRequest.nextToken,
            outputKey: \ListMediaPipelinesResponse.nextToken,
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
    public func listMediaPipelinesPaginator(
        _ input: ListMediaPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMediaPipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listMediaPipelines,
            inputKey: \ListMediaPipelinesRequest.nextToken,
            outputKey: \ListMediaPipelinesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaCapturePipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaCapturePipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaInsightsPipelineConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaInsightsPipelineConfigurationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaPipelineKinesisVideoStreamPoolsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaPipelineKinesisVideoStreamPoolsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKMediaPipelines.ListMediaPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKMediaPipelines.ListMediaPipelinesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
