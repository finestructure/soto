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

import SotoCore

/// Error enum for FinspaceData
public struct FinspaceDataErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize FinspaceData
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request conflicts with an existing resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// The request processing has failed because of an unknown error, exception or failure.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// A limit has exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// One or more resources can't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints specified by an AWS service.
    public static var validationException: Self { .init(.validationException) }
}

extension FinspaceDataErrorType: Equatable {
    public static func == (lhs: FinspaceDataErrorType, rhs: FinspaceDataErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FinspaceDataErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
