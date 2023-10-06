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
extension ManagedBlockchainQuery {
    // MARK: Async API Calls

    /// Gets the token balance for a batch of tokens by using the GetTokenBalance  action for every token in the request.  Only the native tokens BTC,ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    public func batchGetTokenBalance(_ input: BatchGetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetTokenBalanceOutput {
        return try await self.client.execute(operation: "BatchGetTokenBalance", path: "/batch-get-token-balance", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.  Only the native tokens BTC,ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    public func getTokenBalance(_ input: GetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTokenBalanceOutput {
        return try await self.client.execute(operation: "GetTokenBalance", path: "/get-token-balance", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the details of a transaction.
    public func getTransaction(_ input: GetTransactionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTransactionOutput {
        return try await self.client.execute(operation: "GetTransaction", path: "/get-transaction", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action returns the following for a given a blockchain network:   Lists all token balances owned by an address (either a contact  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    public func listTokenBalances(_ input: ListTokenBalancesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTokenBalancesOutput {
        return try await self.client.execute(operation: "ListTokenBalances", path: "/list-token-balances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// An array of TransactionEvent objects. Each object contains details  about the transaction event.
    public func listTransactionEvents(_ input: ListTransactionEventsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTransactionEventsOutput {
        return try await self.client.execute(operation: "ListTransactionEvents", path: "/list-transaction-events", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the transactions on a given wallet address or to a specific contract.
    public func listTransactions(_ input: ListTransactionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTransactionsOutput {
        return try await self.client.execute(operation: "ListTransactions", path: "/list-transactions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ManagedBlockchainQuery {
    /// This action returns the following for a given a blockchain network:   Lists all token balances owned by an address (either a contact  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTokenBalancesPaginator(
        _ input: ListTokenBalancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutput> {
        return .init(
            input: input,
            command: self.listTokenBalances,
            inputKey: \ListTokenBalancesInput.nextToken,
            outputKey: \ListTokenBalancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// An array of TransactionEvent objects. Each object contains details  about the transaction event.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTransactionEventsPaginator(
        _ input: ListTransactionEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutput> {
        return .init(
            input: input,
            command: self.listTransactionEvents,
            inputKey: \ListTransactionEventsInput.nextToken,
            outputKey: \ListTransactionEventsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all of the transactions on a given wallet address or to a specific contract.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTransactionsPaginator(
        _ input: ListTransactionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTransactionsInput, ListTransactionsOutput> {
        return .init(
            input: input,
            command: self.listTransactions,
            inputKey: \ListTransactionsInput.nextToken,
            outputKey: \ListTransactionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}