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
extension ControlTower {
    // MARK: Async API Calls

    /// This API call turns off a control. It starts an asynchronous operation that deletes AWS resources on the specified organizational unit and the accounts it contains. The resources will vary according to the control that you specify.
    public func disableControl(_ input: DisableControlInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableControlOutput {
        return try await self.client.execute(operation: "DisableControl", path: "/disable-control", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This API call activates a control. It starts an asynchronous operation that creates AWS resources on the specified organizational unit and the accounts it contains. The resources created will vary according to the control that you specify.
    public func enableControl(_ input: EnableControlInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableControlOutput {
        return try await self.client.execute(operation: "EnableControl", path: "/enable-control", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the status of a particular EnableControl or DisableControl operation. Displays a message in case of error. Details for an operation are available for 90 days.
    public func getControlOperation(_ input: GetControlOperationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetControlOperationOutput {
        return try await self.client.execute(operation: "GetControlOperation", path: "/get-control-operation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the controls enabled by AWS Control Tower on the specified organizational unit and the accounts it contains.
    public func listEnabledControls(_ input: ListEnabledControlsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnabledControlsOutput {
        return try await self.client.execute(operation: "ListEnabledControls", path: "/list-enabled-controls", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ControlTower {
    ///  Lists the controls enabled by AWS Control Tower on the specified organizational unit and the accounts it contains.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnabledControlsPaginator(
        _ input: ListEnabledControlsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnabledControlsInput, ListEnabledControlsOutput> {
        return .init(
            input: input,
            command: self.listEnabledControls,
            inputKey: \ListEnabledControlsInput.nextToken,
            outputKey: \ListEnabledControlsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)