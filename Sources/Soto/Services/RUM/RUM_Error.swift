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

/// Error enum for RUM
public struct RUMErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize RUM
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

    /// You don't have sufficient permissions to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// This operation attempted to create a resource that already exists.
    public static var conflictException: Self { .init(.conflictException) }
    /// Internal service exception.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Resource not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// This request exceeds a service quota.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The request was throttled because of quota limits.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// One of the arguments for the request is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension RUMErrorType: Equatable {
    public static func == (lhs: RUMErrorType, rhs: RUMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RUMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
