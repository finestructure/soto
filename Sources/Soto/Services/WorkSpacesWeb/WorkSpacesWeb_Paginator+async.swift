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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension WorkSpacesWeb {
    ///  Retrieves a list of browser settings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBrowserSettingsPaginator(
        _ input: ListBrowserSettingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBrowserSettingsRequest, ListBrowserSettingsResponse> {
        return .init(
            input: input,
            command: listBrowserSettings,
            inputKey: \ListBrowserSettingsRequest.nextToken,
            outputKey: \ListBrowserSettingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of identity providers for a specific web portal.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIdentityProvidersRequest, ListIdentityProvidersResponse> {
        return .init(
            input: input,
            command: listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of network settings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNetworkSettingsPaginator(
        _ input: ListNetworkSettingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNetworkSettingsRequest, ListNetworkSettingsResponse> {
        return .init(
            input: input,
            command: listNetworkSettings,
            inputKey: \ListNetworkSettingsRequest.nextToken,
            outputKey: \ListNetworkSettingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list or web portals.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPortalsPaginator(
        _ input: ListPortalsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPortalsRequest, ListPortalsResponse> {
        return .init(
            input: input,
            command: listPortals,
            inputKey: \ListPortalsRequest.nextToken,
            outputKey: \ListPortalsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of trust store certificates.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrustStoreCertificatesPaginator(
        _ input: ListTrustStoreCertificatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrustStoreCertificatesRequest, ListTrustStoreCertificatesResponse> {
        return .init(
            input: input,
            command: listTrustStoreCertificates,
            inputKey: \ListTrustStoreCertificatesRequest.nextToken,
            outputKey: \ListTrustStoreCertificatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of trust stores.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrustStoresPaginator(
        _ input: ListTrustStoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrustStoresRequest, ListTrustStoresResponse> {
        return .init(
            input: input,
            command: listTrustStores,
            inputKey: \ListTrustStoresRequest.nextToken,
            outputKey: \ListTrustStoresResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of user settings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserSettingsPaginator(
        _ input: ListUserSettingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserSettingsRequest, ListUserSettingsResponse> {
        return .init(
            input: input,
            command: listUserSettings,
            inputKey: \ListUserSettingsRequest.nextToken,
            outputKey: \ListUserSettingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
