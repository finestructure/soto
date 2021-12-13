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

/// Service object for interacting with AWS LexModelsV2 service.
public struct LexModelsV2: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LexModelsV2 client
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
            service: "models-v2-lex",
            signingName: "lex",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-07",
            endpoint: endpoint,
            errorType: LexModelsV2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Builds a bot, its intents, and its slot types into a specific locale. A bot can be built into multiple locales. At runtime the locale is used to choose a specific build of the bot.
    public func buildBotLocale(_ input: BuildBotLocaleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BuildBotLocaleResponse> {
        return self.client.execute(operation: "BuildBotLocale", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon Lex conversational bot.
    public func createBot(_ input: CreateBotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotResponse> {
        return self.client.execute(operation: "CreateBot", path: "/bots", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an alias for the specified version of a bot. Use an alias to enable you to change the version of a bot without updating applications that use the bot. For example, you can create an alias called "PROD" that your applications use to call the Amazon Lex bot.
    public func createBotAlias(_ input: CreateBotAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotAliasResponse> {
        return self.client.execute(operation: "CreateBotAlias", path: "/bots/{botId}/botaliases", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a locale in the bot. The locale contains the intents and slot types that the bot uses in conversations with users in the specified language and locale. You must add a locale to a bot before you can add intents and slot types to the bot.
    public func createBotLocale(_ input: CreateBotLocaleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotLocaleResponse> {
        return self.client.execute(operation: "CreateBotLocale", path: "/bots/{botId}/botversions/{botVersion}/botlocales", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new version of the bot based on the DRAFT version. If the DRAFT version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version, it returns the last created version. When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1.
    public func createBotVersion(_ input: CreateBotVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBotVersionResponse> {
        return self.client.execute(operation: "CreateBotVersion", path: "/bots/{botId}/botversions", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a zip archive containing the contents of a bot or a bot locale. The archive contains a directory structure that contains JSON files that define the bot. You can create an archive that contains the complete definition of a bot, or you can specify that the archive contain only the definition of a single bot locale. For more information about exporting bots, and about the structure of the export archive, see  Importing and exporting bots
    public func createExport(_ input: CreateExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportResponse> {
        return self.client.execute(operation: "CreateExport", path: "/exports", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an intent. To define the interaction between the user and your bot, you define one or more intents. For example, for a pizza ordering bot you would create an OrderPizza intent. When you create an intent, you must provide a name. You can optionally provide the following:   Sample utterances. For example, "I want to order a pizza" and "Can I order a pizza." You can't provide utterances for built-in intents.   Information to be gathered. You specify slots for the information that you bot requests from the user. You can specify standard slot types, such as date and time, or custom slot types for your application.   How the intent is fulfilled. You can provide a Lambda function or configure the intent to return the intent information to your client application. If you use a Lambda function, Amazon Lex invokes the function when all of the intent information is available.   A confirmation prompt to send to the user to confirm an intent. For example, "Shall I order your pizza?"   A conclusion statement to send to the user after the intent is fulfilled. For example, "I ordered your pizza."   A follow-up prompt that asks the user for additional activity. For example, "Do you want a drink with your pizza?"
    public func createIntent(_ input: CreateIntentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIntentResponse> {
        return self.client.execute(operation: "CreateIntent", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new resource policy with the specified policy statements.
    public func createResourcePolicy(_ input: CreateResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourcePolicyResponse> {
        return self.client.execute(operation: "CreateResourcePolicy", path: "/policy/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new resource policy statement to a bot or bot alias. If a resource policy exists, the statement is added to the current resource policy. If a policy doesn't exist, a new policy is created. You can't create a resource policy statement that allows cross-account access.
    public func createResourcePolicyStatement(_ input: CreateResourcePolicyStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResourcePolicyStatementResponse> {
        return self.client.execute(operation: "CreateResourcePolicyStatement", path: "/policy/{resourceArn}/statements", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a slot in an intent. A slot is a variable needed to fulfill an intent. For example, an OrderPizza intent might need slots for size, crust, and number of pizzas. For each slot, you define one or more utterances that Amazon Lex uses to elicit a response from the user.
    public func createSlot(_ input: CreateSlotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSlotResponse> {
        return self.client.execute(operation: "CreateSlot", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom slot type To create a custom slot type, specify a name for the slot type and a set of enumeration values, the values that a slot of this type can assume.
    public func createSlotType(_ input: CreateSlotTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSlotTypeResponse> {
        return self.client.execute(operation: "CreateSlotType", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a pre-signed S3 write URL that you use to upload the zip archive when importing a bot or a bot locale.
    public func createUploadUrl(_ input: CreateUploadUrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUploadUrlResponse> {
        return self.client.execute(operation: "CreateUploadUrl", path: "/createuploadurl", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes all versions of a bot, including the Draft version. To delete a specific version, use the DeleteBotVersion operation. When you delete a bot, all of the resources contained in the bot are also deleted. Deleting a bot removes all locales, intents, slot, and slot types defined for the bot. If a bot has an alias, the DeleteBot operation returns a ResourceInUseException exception. If you want to delete the bot and the alias, set the skipResourceInUseCheck parameter to true.
    public func deleteBot(_ input: DeleteBotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBotResponse> {
        return self.client.execute(operation: "DeleteBot", path: "/bots/{botId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified bot alias.
    public func deleteBotAlias(_ input: DeleteBotAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBotAliasResponse> {
        return self.client.execute(operation: "DeleteBotAlias", path: "/bots/{botId}/botaliases/{botAliasId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a locale from a bot. When you delete a locale, all intents, slots, and slot types defined for the locale are also deleted.
    public func deleteBotLocale(_ input: DeleteBotLocaleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBotLocaleResponse> {
        return self.client.execute(operation: "DeleteBotLocale", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specific version of a bot. To delete all version of a bot, use the DeleteBot operation.
    public func deleteBotVersion(_ input: DeleteBotVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBotVersionResponse> {
        return self.client.execute(operation: "DeleteBotVersion", path: "/bots/{botId}/botversions/{botVersion}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a previous export and the associated files stored in an S3 bucket.
    public func deleteExport(_ input: DeleteExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExportResponse> {
        return self.client.execute(operation: "DeleteExport", path: "/exports/{exportId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a previous import and the associated file stored in an S3 bucket.
    public func deleteImport(_ input: DeleteImportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImportResponse> {
        return self.client.execute(operation: "DeleteImport", path: "/imports/{importId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified intent. Deleting an intent also deletes the slots associated with the intent.
    @discardableResult public func deleteIntent(_ input: DeleteIntentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteIntent", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an existing policy from a bot or bot alias. If the resource doesn't have a policy attached, Amazon Lex returns an exception.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourcePolicyResponse> {
        return self.client.execute(operation: "DeleteResourcePolicy", path: "/policy/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a policy statement from a resource policy. If you delete the last statement from a policy, the policy is deleted. If you specify a statement ID that doesn't exist in the policy, or if the bot or bot alias doesn't have a policy attached, Amazon Lex returns an exception.
    public func deleteResourcePolicyStatement(_ input: DeleteResourcePolicyStatementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResourcePolicyStatementResponse> {
        return self.client.execute(operation: "DeleteResourcePolicyStatement", path: "/policy/{resourceArn}/statements/{statementId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified slot from an intent.
    @discardableResult public func deleteSlot(_ input: DeleteSlotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSlot", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a slot type from a bot locale. If a slot is using the slot type, Amazon Lex throws a ResourceInUseException exception. To avoid the exception, set the skipResourceInUseCheck parameter to true.
    @discardableResult public func deleteSlotType(_ input: DeleteSlotTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSlotType", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes stored utterances. Amazon Lex stores the utterances that users send to your bot. Utterances are stored for 15 days for use with the ListAggregatedUtterances operation, and then stored indefinitely for use in improving the ability of your bot to respond to user input.. Use the DeleteUtterances operation to manually delete utterances for a specific session. When you use the DeleteUtterances operation, utterances stored for improving your bot's ability to respond to user input are deleted immediately. Utterances stored for use with the ListAggregatedUtterances operation are deleted after 15 days.
    public func deleteUtterances(_ input: DeleteUtterancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUtterancesResponse> {
        return self.client.execute(operation: "DeleteUtterances", path: "/bots/{botId}/utterances", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides metadata information about a bot.
    public func describeBot(_ input: DescribeBotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotResponse> {
        return self.client.execute(operation: "DescribeBot", path: "/bots/{botId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about a specific bot alias.
    public func describeBotAlias(_ input: DescribeBotAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotAliasResponse> {
        return self.client.execute(operation: "DescribeBotAlias", path: "/bots/{botId}/botaliases/{botAliasId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the settings that a bot has for a specific locale.
    public func describeBotLocale(_ input: DescribeBotLocaleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotLocaleResponse> {
        return self.client.execute(operation: "DescribeBotLocale", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides metadata information about a bot recommendation. This information will enable you to get a description on the request inputs, to download associated transcripts after processing is complete, and to download intents and slot-types generated by the bot recommendation.
    public func describeBotRecommendation(_ input: DescribeBotRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotRecommendationResponse> {
        return self.client.execute(operation: "DescribeBotRecommendation", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides metadata about a version of a bot.
    public func describeBotVersion(_ input: DescribeBotVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBotVersionResponse> {
        return self.client.execute(operation: "DescribeBotVersion", path: "/bots/{botId}/botversions/{botVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specific export.
    public func describeExport(_ input: DescribeExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportResponse> {
        return self.client.execute(operation: "DescribeExport", path: "/exports/{exportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specific import.
    public func describeImport(_ input: DescribeImportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImportResponse> {
        return self.client.execute(operation: "DescribeImport", path: "/imports/{importId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about an intent.
    public func describeIntent(_ input: DescribeIntentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntentResponse> {
        return self.client.execute(operation: "DescribeIntent", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the resource policy and policy revision for a bot or bot alias.
    public func describeResourcePolicy(_ input: DescribeResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePolicyResponse> {
        return self.client.execute(operation: "DescribeResourcePolicy", path: "/policy/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets metadata information about a slot.
    public func describeSlot(_ input: DescribeSlotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlotResponse> {
        return self.client.execute(operation: "DescribeSlot", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets metadata information about a slot type.
    public func describeSlotType(_ input: DescribeSlotTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlotTypeResponse> {
        return self.client.execute(operation: "DescribeSlotType", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of utterances that users have sent to the bot. Utterances are aggregated by the text of the utterance. For example, all instances where customers used the phrase "I want to order pizza" are aggregated into the same line in the response. You can see both detected utterances and missed utterances. A detected utterance is where the bot properly recognized the utterance and activated the associated intent. A missed utterance was not recognized by the bot and didn't activate an intent. Utterances can be aggregated for a bot alias or for a bot version, but not both at the same time. Utterances statistics are not generated under the following conditions:   The childDirected field was set to true when the bot was created.   You are using slot obfuscation with one or more slots.   You opted out of participating in improving Amazon Lex.
    public func listAggregatedUtterances(_ input: ListAggregatedUtterancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAggregatedUtterancesResponse> {
        return self.client.execute(operation: "ListAggregatedUtterances", path: "/bots/{botId}/aggregatedutterances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of aliases for the specified bot.
    public func listBotAliases(_ input: ListBotAliasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBotAliasesResponse> {
        return self.client.execute(operation: "ListBotAliases", path: "/bots/{botId}/botaliases", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of locales for the specified bot.
    public func listBotLocales(_ input: ListBotLocalesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBotLocalesResponse> {
        return self.client.execute(operation: "ListBotLocales", path: "/bots/{botId}/botversions/{botVersion}/botlocales", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a list of bot recommendations that meet the specified criteria.
    public func listBotRecommendations(_ input: ListBotRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBotRecommendationsResponse> {
        return self.client.execute(operation: "ListBotRecommendations", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about all of the versions of a bot. The ListBotVersions operation returns a summary of each version of a bot. For example, if a bot has three numbered versions, the ListBotVersions operation returns for summaries, one for each numbered version and one for the DRAFT version. The ListBotVersions operation always returns at least one version, the DRAFT version.
    public func listBotVersions(_ input: ListBotVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBotVersionsResponse> {
        return self.client.execute(operation: "ListBotVersions", path: "/bots/{botId}/botversions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of available bots.
    public func listBots(_ input: ListBotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBotsResponse> {
        return self.client.execute(operation: "ListBots", path: "/bots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of built-in intents provided by Amazon Lex that you can use in your bot.  To use a built-in intent as a the base for your own intent, include the built-in intent signature in the parentIntentSignature parameter when you call the CreateIntent operation. For more information, see CreateIntent.
    public func listBuiltInIntents(_ input: ListBuiltInIntentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuiltInIntentsResponse> {
        return self.client.execute(operation: "ListBuiltInIntents", path: "/builtins/locales/{localeId}/intents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of built-in slot types that meet the specified criteria.
    public func listBuiltInSlotTypes(_ input: ListBuiltInSlotTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBuiltInSlotTypesResponse> {
        return self.client.execute(operation: "ListBuiltInSlotTypes", path: "/builtins/locales/{localeId}/slottypes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the exports for a bot or bot locale. Exports are kept in the list for 7 days.
    public func listExports(_ input: ListExportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListExportsResponse> {
        return self.client.execute(operation: "ListExports", path: "/exports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the imports for a bot or bot locale. Imports are kept in the list for 7 days.
    public func listImports(_ input: ListImportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImportsResponse> {
        return self.client.execute(operation: "ListImports", path: "/imports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a list of intents that meet the specified criteria.
    public func listIntents(_ input: ListIntentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIntentsResponse> {
        return self.client.execute(operation: "ListIntents", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of recommended intents provided by the bot recommendation that you can use in your bot.
    public func listRecommendedIntents(_ input: ListRecommendedIntentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecommendedIntentsResponse> {
        return self.client.execute(operation: "ListRecommendedIntents", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of slot types that match the specified criteria.
    public func listSlotTypes(_ input: ListSlotTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSlotTypesResponse> {
        return self.client.execute(operation: "ListSlotTypes", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of slots that match the specified criteria.
    public func listSlots(_ input: ListSlotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSlotsResponse> {
        return self.client.execute(operation: "ListSlots", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of tags associated with a resource. Only bots, bot aliases, and bot channels can have tags associated with them.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceARN}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Search for associated transcripts that meet the specified criteria.
    public func searchAssociatedTranscripts(_ input: SearchAssociatedTranscriptsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchAssociatedTranscriptsResponse> {
        return self.client.execute(operation: "SearchAssociatedTranscripts", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this to provide your transcript data, and to start the bot recommendation process.
    public func startBotRecommendation(_ input: StartBotRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBotRecommendationResponse> {
        return self.client.execute(operation: "StartBotRecommendation", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts importing a bot or bot locale from a zip archive that you uploaded to an S3 bucket.
    public func startImport(_ input: StartImportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartImportResponse> {
        return self.client.execute(operation: "StartImport", path: "/imports", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource. If a tag key already exists, the existing value is replaced with the new value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceARN}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a bot, bot alias, or bot channel.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceARN}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing bot.
    public func updateBot(_ input: UpdateBotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotResponse> {
        return self.client.execute(operation: "UpdateBot", path: "/bots/{botId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing bot alias.
    public func updateBotAlias(_ input: UpdateBotAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotAliasResponse> {
        return self.client.execute(operation: "UpdateBotAlias", path: "/bots/{botId}/botaliases/{botAliasId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings that a bot has for a specific locale.
    public func updateBotLocale(_ input: UpdateBotLocaleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotLocaleResponse> {
        return self.client.execute(operation: "UpdateBotLocale", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing bot recommendation request.
    public func updateBotRecommendation(_ input: UpdateBotRecommendationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBotRecommendationResponse> {
        return self.client.execute(operation: "UpdateBotRecommendation", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the password used to protect an export zip archive. The password is not required. If you don't supply a password, Amazon Lex generates a zip file that is not protected by a password. This is the archive that is available at the pre-signed S3 URL provided by the DescribeExport operation.
    public func updateExport(_ input: UpdateExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateExportResponse> {
        return self.client.execute(operation: "UpdateExport", path: "/exports/{exportId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings for an intent.
    public func updateIntent(_ input: UpdateIntentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIntentResponse> {
        return self.client.execute(operation: "UpdateIntent", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Replaces the existing resource policy for a bot or bot alias with a new one. If the policy doesn't exist, Amazon Lex returns an exception.
    public func updateResourcePolicy(_ input: UpdateResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResourcePolicyResponse> {
        return self.client.execute(operation: "UpdateResourcePolicy", path: "/policy/{resourceArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the settings for a slot.
    public func updateSlot(_ input: UpdateSlotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSlotResponse> {
        return self.client.execute(operation: "UpdateSlot", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of an existing slot type.
    public func updateSlotType(_ input: UpdateSlotTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSlotTypeResponse> {
        return self.client.execute(operation: "UpdateSlotType", path: "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension LexModelsV2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LexModelsV2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
