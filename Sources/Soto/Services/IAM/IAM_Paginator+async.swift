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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IAM {
    ///  Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services account, including their relationships to one another. Use this operation to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.  Policies returned by this operation are URL-encoded compliant  with RFC 3986. You can use a URL  decoding method to convert the policy back to plain JSON text. For example, if you use Java, you  can use the decode method of the java.net.URLDecoder utility class in  the Java SDK. Other languages and SDKs provide similar functionality.  You can optionally filter the results using the Filter parameter. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getAccountAuthorizationDetailsPaginator(
        _ input: GetAccountAuthorizationDetailsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetAccountAuthorizationDetailsRequest, GetAccountAuthorizationDetailsResponse> {
        return .init(
            input: input,
            command: getAccountAuthorizationDetails,
            inputKey: \GetAccountAuthorizationDetailsRequest.marker,
            outputKey: \GetAccountAuthorizationDetailsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getGroupPaginator(
        _ input: GetGroupRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetGroupRequest, GetGroupResponse> {
        return .init(
            input: input,
            command: getGroup,
            inputKey: \GetGroupRequest.marker,
            outputKey: \GetGroupResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list. Although each user is limited to a small number of keys, you can still paginate the results using the MaxItems and Marker parameters. If the UserName is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request. If a temporary access key is used, then UserName is required. If a long-term key is assigned to the user, then UserName is not required. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.  To ensure the security of your Amazon Web Services account, the secret access key is accessible only during key and user creation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccessKeysPaginator(
        _ input: ListAccessKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccessKeysRequest, ListAccessKeysResponse> {
        return .init(
            input: input,
            command: listAccessKeys,
            inputKey: \ListAccessKeysRequest.marker,
            outputKey: \ListAccessKeysResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the account alias associated with the Amazon Web Services account (Note: you can have only one). For information about using an Amazon Web Services account alias, see Using an alias for your Amazon Web Services account ID in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAliasesPaginator(
        _ input: ListAccountAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAliasesRequest, ListAccountAliasesResponse> {
        return .init(
            input: input,
            command: listAccountAliases,
            inputKey: \ListAccountAliasesRequest.marker,
            outputKey: \ListAccountAliasesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM group. An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use ListGroupPolicies. For information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttachedGroupPoliciesPaginator(
        _ input: ListAttachedGroupPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttachedGroupPoliciesRequest, ListAttachedGroupPoliciesResponse> {
        return .init(
            input: input,
            command: listAttachedGroupPolicies,
            inputKey: \ListAttachedGroupPoliciesRequest.marker,
            outputKey: \ListAttachedGroupPoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM role. An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use ListRolePolicies. For information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttachedRolePoliciesPaginator(
        _ input: ListAttachedRolePoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttachedRolePoliciesRequest, ListAttachedRolePoliciesResponse> {
        return .init(
            input: input,
            command: listAttachedRolePolicies,
            inputKey: \ListAttachedRolePoliciesRequest.marker,
            outputKey: \ListAttachedRolePoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all managed policies that are attached to the specified IAM user. An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use ListUserPolicies. For information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. You can use the PathPrefix parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttachedUserPoliciesPaginator(
        _ input: ListAttachedUserPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttachedUserPoliciesRequest, ListAttachedUserPoliciesResponse> {
        return .init(
            input: input,
            command: listAttachedUserPolicies,
            inputKey: \ListAttachedUserPoliciesRequest.marker,
            outputKey: \ListAttachedUserPoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all IAM users, groups, and roles that the specified managed policy is attached to. You can use the optional EntityFilter parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set EntityFilter to Role. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEntitiesForPolicyPaginator(
        _ input: ListEntitiesForPolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEntitiesForPolicyRequest, ListEntitiesForPolicyResponse> {
        return .init(
            input: input,
            command: listEntitiesForPolicy,
            inputKey: \ListEntitiesForPolicyRequest.marker,
            outputKey: \ListEntitiesForPolicyResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the names of the inline policies that are embedded in the specified IAM group. An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use ListAttachedGroupPolicies. For more information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupPoliciesPaginator(
        _ input: ListGroupPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupPoliciesRequest, ListGroupPoliciesResponse> {
        return .init(
            input: input,
            command: listGroupPolicies,
            inputKey: \ListGroupPoliciesRequest.marker,
            outputKey: \ListGroupPoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IAM groups that have the specified path prefix. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.marker,
            outputKey: \ListGroupsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IAM groups that the specified IAM user belongs to. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsForUserPaginator(
        _ input: ListGroupsForUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsForUserRequest, ListGroupsForUserResponse> {
        return .init(
            input: input,
            command: listGroupsForUser,
            inputKey: \ListGroupsForUserRequest.marker,
            outputKey: \ListGroupsForUserResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, see About instance profiles.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an instance profile, see GetInstanceProfile.  You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceProfilesPaginator(
        _ input: ListInstanceProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceProfilesRequest, ListInstanceProfilesResponse> {
        return .init(
            input: input,
            command: listInstanceProfiles,
            inputKey: \ListInstanceProfilesRequest.marker,
            outputKey: \ListInstanceProfilesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to About instance profiles. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceProfilesForRolePaginator(
        _ input: ListInstanceProfilesForRoleRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceProfilesForRoleRequest, ListInstanceProfilesForRoleResponse> {
        return .init(
            input: input,
            command: listInstanceProfilesForRole,
            inputKey: \ListInstanceProfilesForRoleRequest.marker,
            outputKey: \ListInstanceProfilesForRoleResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services access key ID signing the request for this operation. You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMFADevicesPaginator(
        _ input: ListMFADevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMFADevicesRequest, ListMFADevicesResponse> {
        return .init(
            input: input,
            command: listMFADevices,
            inputKey: \ListMFADevicesRequest.marker,
            outputKey: \ListMFADevicesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies. You can filter the list of policies that is returned using the optional OnlyAttached, Scope, and PathPrefix parameters. For example, to list only the customer managed policies in your Amazon Web Services account, set Scope to Local. To list only Amazon Web Services managed policies, set Scope to AWS. You can paginate the results using the MaxItems and Marker parameters. For more information about managed policies, see Managed policies and inline policies in the IAM User Guide.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see GetPolicy.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPoliciesPaginator(
        _ input: ListPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPoliciesRequest, ListPoliciesResponse> {
        return .init(
            input: input,
            command: listPolicies,
            inputKey: \ListPoliciesRequest.marker,
            outputKey: \ListPoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version. For more information about managed policies, see Managed policies and inline policies in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPolicyVersionsPaginator(
        _ input: ListPolicyVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPolicyVersionsRequest, ListPolicyVersionsResponse> {
        return .init(
            input: input,
            command: listPolicyVersions,
            inputKey: \ListPolicyVersionsRequest.marker,
            outputKey: \ListPolicyVersionsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the names of the inline policies that are embedded in the specified IAM role. An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use ListAttachedRolePolicies. For more information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRolePoliciesPaginator(
        _ input: ListRolePoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRolePoliciesRequest, ListRolePoliciesResponse> {
        return .init(
            input: input,
            command: listRolePolicies,
            inputKey: \ListRolePoliciesRequest.marker,
            outputKey: \ListRolePoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, see Working with roles.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a role, see GetRole.  You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRolesPaginator(
        _ input: ListRolesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRolesRequest, ListRolesResponse> {
        return .init(
            input: input,
            command: listRoles,
            inputKey: \ListRolesRequest.marker,
            outputKey: \ListRolesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list. The SSH public keys returned by this operation are used only for authenticating the IAM user to an CodeCommit repository. For more information about using SSH keys to authenticate to an CodeCommit repository, see Set up CodeCommit for SSH connections in the CodeCommit User Guide. Although each user is limited to a small number of keys, you can still paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSSHPublicKeysPaginator(
        _ input: ListSSHPublicKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSSHPublicKeysRequest, ListSSHPublicKeysResponse> {
        return .init(
            input: input,
            command: listSSHPublicKeys,
            inputKey: \ListSSHPublicKeysRequest.marker,
            outputKey: \ListSSHPublicKeysResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list. You can paginate the results using the MaxItems and Marker parameters. For more information about working with server certificates, see Working with server certificates in the IAM User Guide. This topic also includes a list of Amazon Web Services services that can use the server certificates that you manage with IAM.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see GetServerCertificate.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServerCertificatesPaginator(
        _ input: ListServerCertificatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServerCertificatesRequest, ListServerCertificatesResponse> {
        return .init(
            input: input,
            command: listServerCertificates,
            inputKey: \ListServerCertificatesRequest.marker,
            outputKey: \ListServerCertificatesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list. Although each user is limited to a small number of signing certificates, you can still paginate the results using the MaxItems and Marker parameters. If the UserName field is not specified, the user name is determined implicitly based on the Amazon Web Services access key ID used to sign the request for this operation. This operation works for access keys under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated users.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSigningCertificatesPaginator(
        _ input: ListSigningCertificatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSigningCertificatesRequest, ListSigningCertificatesResponse> {
        return .init(
            input: input,
            command: listSigningCertificates,
            inputKey: \ListSigningCertificatesRequest.marker,
            outputKey: \ListSigningCertificatesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the names of the inline policies embedded in the specified IAM user. An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use ListAttachedUserPolicies. For more information about policies, see Managed policies and inline policies in the IAM User Guide. You can paginate the results using the MaxItems and Marker parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserPoliciesPaginator(
        _ input: ListUserPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserPoliciesRequest, ListUserPoliciesResponse> {
        return .init(
            input: input,
            command: listUserPolicies,
            inputKey: \ListUserPoliciesRequest.marker,
            outputKey: \ListUserPoliciesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the tags that are attached to the specified IAM user. The returned list of tags is sorted by tag key. For more information about tagging, see Tagging IAM resources in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserTagsPaginator(
        _ input: ListUserTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserTagsRequest, ListUserTagsResponse> {
        return .init(
            input: input,
            command: listUserTags,
            inputKey: \ListUserTagsRequest.marker,
            outputKey: \ListUserTagsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the Amazon Web Services account. If there are none, the operation returns an empty list.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a user, see GetUser.  You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.marker,
            outputKey: \ListUsersResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be Assigned, Unassigned, or Any.  IAM resource-listing operations return a subset of the available  attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see ListMFADeviceTags.  You can paginate the results using the MaxItems and Marker parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVirtualMFADevicesPaginator(
        _ input: ListVirtualMFADevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVirtualMFADevicesRequest, ListVirtualMFADevicesResponse> {
        return .init(
            input: input,
            command: listVirtualMFADevices,
            inputKey: \ListVirtualMFADevicesRequest.marker,
            outputKey: \ListVirtualMFADevicesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions. The policies are provided as strings. The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations. You can simulate resources that don't exist in your account. If you want to simulate existing policies that are attached to an IAM user, group, or role, use SimulatePrincipalPolicy instead. Context keys are variables that are maintained by Amazon Web Services and its services and which provide details about the context of an API query request. You can use the Condition element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForCustomPolicy. If the output is long, you can use MaxItems and Marker parameters to paginate the results. For more information about using the policy simulator, see Testing IAM policies with the IAM policy simulator in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func simulateCustomPolicyPaginator(
        _ input: SimulateCustomPolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SimulateCustomPolicyRequest, SimulatePolicyResponse> {
        return .init(
            input: input,
            command: simulateCustomPolicy,
            inputKey: \SimulateCustomPolicyRequest.marker,
            outputKey: \SimulatePolicyResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and Amazon Web Services resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to. You can simulate resources that don't exist in your account. You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use SimulateCustomPolicy instead. You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation. The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.  Note: This operation discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use SimulateCustomPolicy instead. Context keys are variables maintained by Amazon Web Services and its services that provide details about the context of an API query request. You can use the Condition element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use GetContextKeysForPrincipalPolicy. If the output is long, you can use the MaxItems and Marker parameters to paginate the results. For more information about using the policy simulator, see Testing IAM policies with the IAM policy simulator in the IAM User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func simulatePrincipalPolicyPaginator(
        _ input: SimulatePrincipalPolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SimulatePrincipalPolicyRequest, SimulatePolicyResponse> {
        return .init(
            input: input,
            command: simulatePrincipalPolicy,
            inputKey: \SimulatePrincipalPolicyRequest.marker,
            outputKey: \SimulatePolicyResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)