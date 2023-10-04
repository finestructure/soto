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

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LookoutVision {
    // MARK: Async API Calls

    /// Creates a new dataset  in an Amazon Lookout for Vision project. CreateDataset can create a  training or a test dataset from a valid dataset source (DatasetSource). If you want a single dataset project, specify train for the value of  DatasetType. To have a project with separate training and test datasets, call CreateDataset twice. On the first call, specify train for the value of  DatasetType. On the second call, specify test for the value of  DatasetType.  This operation requires permissions to perform the lookoutvision:CreateDataset operation.
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        return try await self.client.execute(operation: "CreateDataset", path: "/2020-11-20/projects/{ProjectName}/datasets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new version of a model within an an Amazon Lookout for Vision project.  CreateModel is an asynchronous operation in which Amazon Lookout for Vision trains, tests, and evaluates a new version of a model.  To get the current status, check the Status field returned in the response from DescribeModel. If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset to create a training and a test dataset.   If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test  the model.  After training completes, the evaluation metrics are stored at the location specified in OutputConfig.   This operation requires permissions to perform the lookoutvision:CreateModel operation. If you want to tag your model, you also require permission to the lookoutvision:TagResource operation.
    public func createModel(_ input: CreateModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelResponse {
        return try await self.client.execute(operation: "CreateModel", path: "/2020-11-20/projects/{ProjectName}/models", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling CreateDataset. This operation requires permissions to perform the lookoutvision:CreateProject operation.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        return try await self.client.execute(operation: "CreateProject", path: "/2020-11-20/projects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Amazon Lookout for Vision dataset.  If your the project has a single dataset, you must create a new dataset before you can create a model. If you project has a training dataset and a test dataset consider the following.    If you delete the test dataset, your project reverts to a single dataset project. If you then train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.   If you delete the training dataset, you must create a training dataset before you can create a model.   This operation requires permissions to perform the lookoutvision:DeleteDataset operation.
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatasetResponse {
        return try await self.client.execute(operation: "DeleteDataset", path: "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model, use the StopModel operation. It might take a few seconds to delete a model. To determine if a model has been deleted, call ListModels and check if the version of the model (ModelVersion) is in the Models array.   This operation requires permissions to perform the lookoutvision:DeleteModel operation.
    public func deleteModel(_ input: DeleteModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelResponse {
        return try await self.client.execute(operation: "DeleteModel", path: "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon Lookout for Vision project. To delete a project, you must first delete each version of the model associated with  the project. To delete a model use the DeleteModel operation. You also have to delete the dataset(s) associated with the model. For more information, see  DeleteDataset.  The images referenced by the training and test datasets aren't deleted.   This operation requires permissions to perform the lookoutvision:DeleteProject operation.
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        return try await self.client.execute(operation: "DeleteProject", path: "/2020-11-20/projects/{ProjectName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe an Amazon Lookout for Vision dataset. This operation requires permissions to perform the lookoutvision:DescribeDataset operation.
    public func describeDataset(_ input: DescribeDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetResponse {
        return try await self.client.execute(operation: "DescribeDataset", path: "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a version of an Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:DescribeModel operation.
    public func describeModel(_ input: DescribeModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelResponse {
        return try await self.client.execute(operation: "DescribeModel", path: "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an Amazon Lookout for Vision model packaging job.
    ///  This operation requires permissions to perform the lookoutvision:DescribeModelPackagingJob operation. For more information, see  Using your Amazon Lookout for Vision model on an edge device in the  Amazon Lookout for Vision Developer Guide.
    public func describeModelPackagingJob(_ input: DescribeModelPackagingJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelPackagingJobResponse {
        return try await self.client.execute(operation: "DescribeModelPackagingJob", path: "/2020-11-20/projects/{ProjectName}/modelpackagingjobs/{JobName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an Amazon Lookout for Vision project. This operation requires permissions to perform the lookoutvision:DescribeProject operation.
    public func describeProject(_ input: DescribeProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        return try await self.client.execute(operation: "DescribeProject", path: "/2020-11-20/projects/{ProjectName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detects anomalies in an image that you supply.  The response from DetectAnomalies includes a boolean prediction that the image contains one or more anomalies and a confidence value for the prediction. If the model is an image segmentation model, the response also includes segmentation information for each type of anomaly found in the image.  Before calling DetectAnomalies, you must first start your model with the StartModel operation. You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your model uses. If you are not using a model, use the StopModel operation to stop your model.   For more information, see Detecting anomalies in an image in the Amazon Lookout for Vision developer guide. This operation requires permissions to perform the lookoutvision:DetectAnomalies operation.
    public func detectAnomalies(_ input: DetectAnomaliesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectAnomaliesResponse {
        return try await self.client.execute(operation: "DetectAnomalies", path: "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/detect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly information for a single image, including the image location and the assigned label. This operation requires permissions to perform the lookoutvision:ListDatasetEntries operation.
    public func listDatasetEntries(_ input: ListDatasetEntriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetEntriesResponse {
        return try await self.client.execute(operation: "ListDatasetEntries", path: "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the model packaging jobs created for an Amazon Lookout for Vision project.
    ///  This operation requires permissions to perform the lookoutvision:ListModelPackagingJobs operation.
    ///  For more information, see  Using your Amazon Lookout for Vision model on an edge device in the  Amazon Lookout for Vision Developer Guide.
    public func listModelPackagingJobs(_ input: ListModelPackagingJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelPackagingJobsResponse {
        return try await self.client.execute(operation: "ListModelPackagingJobs", path: "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the versions of a model in an Amazon Lookout for Vision project. The ListModels operation is eventually consistent.   Recent calls to CreateModel might take a while to appear in the response from ListProjects. This operation requires permissions to perform the lookoutvision:ListModels operation.
    public func listModels(_ input: ListModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelsResponse {
        return try await self.client.execute(operation: "ListModels", path: "/2020-11-20/projects/{ProjectName}/models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Lookout for Vision projects in your AWS account that are in the AWS Region in  which you call ListProjects. The ListProjects operation is eventually consistent.   Recent calls to CreateProject and DeleteProject might take a while to appear in the response from ListProjects. This operation requires permissions to perform the lookoutvision:ListProjects operation.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectsResponse {
        return try await self.client.execute(operation: "ListProjects", path: "/2020-11-20/projects", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags attached to the specified Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:ListTagsForResource operation.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/2020-11-20/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while to complete. To check the current state of the model, use DescribeModel. A model is ready to use when its status is HOSTED. Once the model is running, you can detect custom labels in new images by calling  DetectAnomalies.  You are charged for the amount of time that the model is running. To stop a running model, call StopModel.  This operation requires permissions to perform the lookoutvision:StartModel operation.
    public func startModel(_ input: StartModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartModelResponse {
        return try await self.client.execute(operation: "StartModel", path: "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an Amazon Lookout for Vision model packaging job. A model packaging job creates an AWS IoT Greengrass component for a Lookout for Vision model. You can use the component to deploy your model to an edge device managed by Greengrass.
    ///  Use the DescribeModelPackagingJob API to determine the current status of the job.  The model packaging job is complete if the value of Status is SUCCEEDED. To deploy the component to the target device, use the component name and component version with the AWS IoT Greengrass CreateDeployment API. This operation requires the following permissions:    lookoutvision:StartModelPackagingJob     s3:PutObject     s3:GetBucketLocation     kms:GenerateDataKey     greengrass:CreateComponentVersion     greengrass:DescribeComponent    (Optional) greengrass:TagResource. Only required if you want to tag the component.   For more information, see  Using your Amazon Lookout for Vision model on an edge device in the  Amazon Lookout for Vision Developer Guide.
    public func startModelPackagingJob(_ input: StartModelPackagingJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartModelPackagingJobResponse {
        return try await self.client.execute(operation: "StartModelPackagingJob", path: "/2020-11-20/projects/{ProjectName}/modelpackagingjobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the hosting of a running model. The operation might take a while to complete. To check the current status, call DescribeModel.  After the model hosting stops, the Status of the model is TRAINED. This operation requires permissions to perform the lookoutvision:StopModel operation.
    public func stopModel(_ input: StopModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopModelResponse {
        return try await self.client.execute(operation: "StopModel", path: "/2020-11-20/projects/{ProjectName}/models/{ModelVersion}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more key-value tags to an Amazon Lookout for Vision model.  For more information, see Tagging a model in the Amazon Lookout for Vision Developer Guide.  This operation requires permissions to perform the lookoutvision:TagResource operation.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/2020-11-20/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from an Amazon Lookout for Vision model. For more information, see  Tagging a model in the Amazon Lookout for Vision Developer Guide.  This operation requires permissions to perform the lookoutvision:UntagResource operation.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/2020-11-20/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates one or more JSON Line entries in a dataset. A JSON Line includes information about an image used for training or testing an Amazon Lookout for Vision model. To update an existing JSON Line, use the source-ref field to identify the JSON Line. The JSON line that you supply replaces the existing JSON line. Any existing annotations that are not in the new JSON line are removed from the dataset.  For more information, see  Defining JSON lines for anomaly classification in the  Amazon Lookout for Vision Developer Guide.   The images you reference in the source-ref field of a JSON line, must be  in the same S3 bucket as the existing images in the dataset.   Updating a dataset might take a while to complete. To check the current status, call DescribeDataset and check the Status field in the response. This operation requires permissions to perform the lookoutvision:UpdateDatasetEntries operation.
    public func updateDatasetEntries(_ input: UpdateDatasetEntriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatasetEntriesResponse {
        return try await self.client.execute(operation: "UpdateDatasetEntries", path: "/2020-11-20/projects/{ProjectName}/datasets/{DatasetType}/entries", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LookoutVision {
    /// Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly information for a single image, including the image location and the assigned label. This operation requires permissions to perform the lookoutvision:ListDatasetEntries operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetEntriesPaginator(
        _ input: ListDatasetEntriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetEntriesRequest, ListDatasetEntriesResponse> {
        return .init(
            input: input,
            command: self.listDatasetEntries,
            inputKey: \ListDatasetEntriesRequest.nextToken,
            outputKey: \ListDatasetEntriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the model packaging jobs created for an Amazon Lookout for Vision project.
    ///  This operation requires permissions to perform the lookoutvision:ListModelPackagingJobs operation.
    ///  For more information, see  Using your Amazon Lookout for Vision model on an edge device in the  Amazon Lookout for Vision Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listModelPackagingJobsPaginator(
        _ input: ListModelPackagingJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListModelPackagingJobsRequest, ListModelPackagingJobsResponse> {
        return .init(
            input: input,
            command: self.listModelPackagingJobs,
            inputKey: \ListModelPackagingJobsRequest.nextToken,
            outputKey: \ListModelPackagingJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the versions of a model in an Amazon Lookout for Vision project. The ListModels operation is eventually consistent.   Recent calls to CreateModel might take a while to appear in the response from ListProjects. This operation requires permissions to perform the lookoutvision:ListModels operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listModelsPaginator(
        _ input: ListModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListModelsRequest, ListModelsResponse> {
        return .init(
            input: input,
            command: self.listModels,
            inputKey: \ListModelsRequest.nextToken,
            outputKey: \ListModelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the Amazon Lookout for Vision projects in your AWS account that are in the AWS Region in  which you call ListProjects. The ListProjects operation is eventually consistent.   Recent calls to CreateProject and DeleteProject might take a while to appear in the response from ListProjects. This operation requires permissions to perform the lookoutvision:ListProjects operation.
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
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
