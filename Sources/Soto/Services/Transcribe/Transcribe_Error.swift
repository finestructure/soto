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

import SotoCore

/// Error enum for Transcribe
public struct TranscribeErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case internalFailureException = "InternalFailureException"
        case limitExceededException = "LimitExceededException"
        case notFoundException = "NotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Transcribe
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

    /// Your request didn't pass one or more validation tests. This can occur when the entity you're  trying to delete doesn't exist or if it's in a non-terminal state (such as  IN PROGRESS). See the exception message field for more information.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// A resource already exists with this name. Resource names must be unique within an  Amazon Web Services account.
    public static var conflictException: Self { .init(.conflictException) }
    /// There was an internal error. Check the error message, correct the issue, and try your request again.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// You've either sent too many requests or your input file is too long. Wait before retrying  your request, or use a smaller file and try your request again.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// We can't find the requested resource. Check that the specified name is correct and try your request again.
    public static var notFoundException: Self { .init(.notFoundException) }
}

extension TranscribeErrorType: Equatable {
    public static func == (lhs: TranscribeErrorType, rhs: TranscribeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension TranscribeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}