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

/// Error enum for Kinesis
public struct KinesisErrorType: AWSErrorType {
    enum Code: String {
        case expiredIteratorException = "ExpiredIteratorException"
        case expiredNextTokenException = "ExpiredNextTokenException"
        case internalFailureException = "InternalFailureException"
        case invalidArgumentException = "InvalidArgumentException"
        case kmsAccessDeniedException = "KMSAccessDeniedException"
        case kmsDisabledException = "KMSDisabledException"
        case kmsInvalidStateException = "KMSInvalidStateException"
        case kmsNotFoundException = "KMSNotFoundException"
        case kmsOptInRequired = "KMSOptInRequired"
        case kmsThrottlingException = "KMSThrottlingException"
        case limitExceededException = "LimitExceededException"
        case provisionedThroughputExceededException = "ProvisionedThroughputExceededException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Kinesis
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

    /// The provided iterator exceeds the maximum age allowed.
    public static var expiredIteratorException: Self { .init(.expiredIteratorException) }
    /// The pagination token passed to the operation is expired.
    public static var expiredNextTokenException: Self { .init(.expiredNextTokenException) }
    /// The processing of the request failed because of an unknown error, exception, or failure.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// The ciphertext references a key that doesn't exist or that you don't have access to.
    public static var kmsAccessDeniedException: Self { .init(.kmsAccessDeniedException) }
    /// The request was rejected because the specified customer master key (CMK) isn't enabled.
    public static var kmsDisabledException: Self { .init(.kmsDisabledException) }
    /// The request was rejected because the state of the specified resource isn't valid for this request. For more information, see How Key State Affects Use of a Customer Master Key in the Amazon Web Services Key Management Service Developer Guide.
    public static var kmsInvalidStateException: Self { .init(.kmsInvalidStateException) }
    /// The request was rejected because the specified entity or resource can't be found.
    public static var kmsNotFoundException: Self { .init(.kmsNotFoundException) }
    /// The Amazon Web Services access key ID needs a subscription for the service.
    public static var kmsOptInRequired: Self { .init(.kmsOptInRequired) }
    /// The request was denied due to request throttling. For more information about throttling, see Limits in the Amazon Web Services Key Management Service Developer Guide.
    public static var kmsThrottlingException: Self { .init(.kmsThrottlingException) }
    /// The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see Streams Limits in the Amazon Kinesis Data Streams Developer Guide, and Error Retries and Exponential Backoff in Amazon Web Services in the Amazon Web Services General Reference.
    public static var provisionedThroughputExceededException: Self { .init(.provisionedThroughputExceededException) }
    /// The resource is not available for this operation. For successful operation, the resource must be in the ACTIVE state.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The requested resource could not be found. The stream might not be specified correctly.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    ///
    public static var validationException: Self { .init(.validationException) }
}

extension KinesisErrorType: Equatable {
    public static func == (lhs: KinesisErrorType, rhs: KinesisErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension KinesisErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
