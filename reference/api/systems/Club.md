# Club

Type: System  
Namespace: `C_Club`  
Environment: All

## Functions

### C_Club.AcceptInvitation

```lua
C_Club.AcceptInvitation(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.AddClubStreamChatChannel

```lua
C_Club.AddClubStreamChatChannel(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.AdvanceStreamViewMarker

```lua
C_Club.AdvanceStreamViewMarker(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.AreMembersReady

```lua
C_Club.AreMembersReady(clubId: ClubId) -> membersReady: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.AssignMemberRole

```lua
C_Club.AssignMemberRole(clubId: ClubId, memberId: ClubMemberOpaqueId, roleId: ClubRoleIdentifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.CanResolvePlayerLocationFromClubMessageData

```lua
C_Club.CanResolvePlayerLocationFromClubMessageData(clubId: ClubId, streamId: ClubStreamId, epoch: BigUInteger, position: BigUInteger) -> canResolve: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.ClearAutoAdvanceStreamViewMarker

```lua
C_Club.ClearAutoAdvanceStreamViewMarker()
```

Flags: RequiresClubsInitialized  

### C_Club.ClearClubPresenceSubscription

```lua
C_Club.ClearClubPresenceSubscription()
```

Flags: RequiresClubsInitialized  

### C_Club.CompareBattleNetDisplayName

```lua
C_Club.CompareBattleNetDisplayName(clubId: ClubId, lhsMemberId: number, rhsMemberId: number) -> comparison: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.CreateClub

```lua
C_Club.CreateClub(name: string, shortName: string?, description: string, clubType: ClubType, avatarId: number, isCrossFaction: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.CreateStream

```lua
C_Club.CreateStream(clubId: ClubId, name: string, subject: string, leadersAndModeratorsOnly: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check the canCreateStream privilege.

### C_Club.CreateTicket

```lua
C_Club.CreateTicket(clubId: ClubId, allowedRedeemCount: number?, duration: number?, defaultStreamId: ClubStreamId?, isCrossFaction: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check canCreateTicket privilege.

### C_Club.DeclineInvitation

```lua
C_Club.DeclineInvitation(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.DestroyClub

```lua
C_Club.DestroyClub(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check the canDestroy privilege.

### C_Club.DestroyMessage

```lua
C_Club.DestroyMessage(clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.DestroyStream

```lua
C_Club.DestroyStream(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check canDestroyStream privilege.

### C_Club.DestroyTicket

```lua
C_Club.DestroyTicket(clubId: ClubId, ticketId: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check canDestroyTicket privilege.

### C_Club.DoesAnyCommunityHaveUnreadMessages

```lua
C_Club.DoesAnyCommunityHaveUnreadMessages() -> hasUnreadMessages: bool
```

Flags: RequiresClubsInitialized  

### C_Club.DoesCommunityHaveMembersOfTheOppositeFaction

```lua
C_Club.DoesCommunityHaveMembersOfTheOppositeFaction(clubId: ClubId) -> hasMembersOfOppositeFaction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.EditClub

```lua
C_Club.EditClub(clubId: ClubId, name: string?, shortName: string?, description: string?, avatarId: number?, broadcast: string?, crossFaction: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

nil arguments will not change existing club data

### C_Club.EditMessage

```lua
C_Club.EditMessage(clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier, message: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.EditStream

```lua
C_Club.EditStream(clubId: ClubId, streamId: ClubStreamId, name: string?, subject: string?, leadersAndModeratorsOnly: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check the canSetStreamName, canSetStreamSubject, canSetStreamAccess privileges. nil arguments will not change existing stream data.

### C_Club.Flush

```lua
C_Club.Flush()
```

Flags: RequiresClubsInitialized  

### C_Club.FocusCommunityStreams

```lua
C_Club.FocusCommunityStreams()
```

Flags: RequiresClubsInitialized  

### C_Club.FocusMembers

```lua
C_Club.FocusMembers(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.FocusStream

```lua
C_Club.FocusStream(clubId: ClubId, streamId: ClubStreamId) -> focused: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetAssignableRoles

```lua
C_Club.GetAssignableRoles(clubId: ClubId, memberId: ClubMemberOpaqueId) -> assignableRoles: table<ClubRoleIdentifier>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetAvatarIdList

```lua
C_Club.GetAvatarIdList(clubType: ClubType) -> avatarIds: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

listen for AVATAR_LIST_UPDATED event. This can happen if we haven't downloaded the battle.net avatar list yet

### C_Club.GetClubCapacity

```lua
C_Club.GetClubCapacity() -> capacity: number
```

Flags: RequiresClubsInitialized  

### C_Club.GetClubInfo

```lua
C_Club.GetClubInfo(clubId: ClubId) -> info: ClubInfo?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetClubLimits

```lua
C_Club.GetClubLimits(clubType: ClubType) -> clubLimits: ClubLimits
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetClubMembers

```lua
C_Club.GetClubMembers(clubId: ClubId, streamId: ClubStreamId?) -> members: table<ClubMemberOpaqueId>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetClubPrivileges

```lua
C_Club.GetClubPrivileges(clubId: ClubId) -> privilegeInfo: ClubPrivilegeInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

The privileges for the logged in user for this club

### C_Club.GetClubStreamNotificationSettings

```lua
C_Club.GetClubStreamNotificationSettings(clubId: ClubId) -> settings: table<ClubStreamNotificationSetting>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetCommunityNameResultText

```lua
C_Club.GetCommunityNameResultText(result: ValidateNameResult) -> errorCode: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetGuildClubId

```lua
C_Club.GetGuildClubId() -> guildClubId: ClubId?
```

Flags: RequiresClubsInitialized  

### C_Club.GetInfoFromLastCommunityChatLine

```lua
C_Club.GetInfoFromLastCommunityChatLine() -> messageInfo: ClubMessageInfo, clubId: ClubId, streamId: ClubStreamId, clubType: ClubType
```

Secret: SecretInChatMessagingLockdown  

Flags: MayReturnNothing, RequiresClubsInitialized  

### C_Club.GetInvitationCandidates

```lua
C_Club.GetInvitationCandidates(filter: string?, maxResults: number?, cursorPosition: number?, allowFullMatch: bool?, clubId: ClubId) -> candidates: table<ClubInvitationCandidateInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Returns a list of players that you can send a request to a Battle.net club. Returns an empty list for Character based clubs

### C_Club.GetInvitationInfo

```lua
C_Club.GetInvitationInfo(clubId: ClubId) -> invitation: ClubSelfInvitationInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get info about a specific club the active player has been invited to.

### C_Club.GetInvitationsForClub

```lua
C_Club.GetInvitationsForClub(clubId: ClubId) -> invitations: table<ClubInvitationInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get the pending invitations for this club. Call RequestInvitationsForClub() to retrieve invitations from server.

### C_Club.GetInvitationsForSelf

```lua
C_Club.GetInvitationsForSelf() -> invitations: table<ClubSelfInvitationInfo>
```

Flags: RequiresClubsInitialized  

These are the clubs the active player has been invited to.

### C_Club.GetLastTicketResponse

```lua
C_Club.GetLastTicketResponse(ticket: string) -> error: ClubErrorType, info: ClubInfo?, showError: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, HasRestrictions, RequiresClubsInitialized  

### C_Club.GetMemberInfo

```lua
C_Club.GetMemberInfo(clubId: ClubId, memberId: ClubMemberOpaqueId) -> info: ClubMemberInfo?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetMemberInfoForSelf

```lua
C_Club.GetMemberInfoForSelf(clubId: ClubId) -> info: ClubMemberInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Info for the logged in user for this club

### C_Club.GetMessageInfo

```lua
C_Club.GetMessageInfo(clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier) -> message: ClubMessageInfo?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get info about a particular message.

### C_Club.GetMessageRanges

```lua
C_Club.GetMessageRanges(clubId: ClubId, streamId: ClubStreamId) -> ranges: table<ClubMessageRange>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get the ranges of the messages currently downloaded.

### C_Club.GetMessagesBefore

```lua
C_Club.GetMessagesBefore(clubId: ClubId, streamId: ClubStreamId, newest: ClubMessageIdentifier, count: number) -> messages: table<ClubMessageInfo>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get downloaded messages before (and including) the specified messageId limited by count. These are filtered by ignored players

### C_Club.GetMessagesInRange

```lua
C_Club.GetMessagesInRange(clubId: ClubId, streamId: ClubStreamId, oldest: ClubMessageIdentifier, newest: ClubMessageIdentifier) -> messages: table<ClubMessageInfo>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get downloaded messages in the given range. These are filtered by ignored players

### C_Club.GetStreamInfo

```lua
C_Club.GetStreamInfo(clubId: ClubId, streamId: ClubStreamId) -> streamInfo: ClubStreamInfo?
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetStreamViewMarker

```lua
C_Club.GetStreamViewMarker(clubId: ClubId, streamId: ClubStreamId) -> lastReadTime: BigUInteger?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetStreams

```lua
C_Club.GetStreams(clubId: ClubId) -> streams: table<ClubStreamInfo>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.GetSubscribedClubs

```lua
C_Club.GetSubscribedClubs() -> clubs: table<ClubInfo>
```

Secret: SecretInChatMessagingLockdown  

Flags: RequiresClubsInitialized  

### C_Club.GetTickets

```lua
C_Club.GetTickets(clubId: ClubId) -> tickets: table<ClubTicketInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Get the existing tickets for this club. Call RequestTickets() to retrieve tickets from server.

### C_Club.IsAccountMuted

```lua
C_Club.IsAccountMuted(clubId: ClubId) -> accountMuted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.IsBeginningOfStream

```lua
C_Club.IsBeginningOfStream(clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier) -> isBeginningOfStream: bool
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Returns whether the given message is the first message in the stream, taking into account ignored messages

### C_Club.IsEnabled

```lua
C_Club.IsEnabled() -> clubsEnabled: bool
```

Flags: RequiresClubsInitialized  

### C_Club.IsRestricted

```lua
C_Club.IsRestricted() -> restrictionReason: ClubRestrictionReason
```

Flags: RequiresClubsInitialized  

### C_Club.IsSubscribedToStream

```lua
C_Club.IsSubscribedToStream(clubId: ClubId, streamId: ClubStreamId) -> subscribed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.KickMember

```lua
C_Club.KickMember(clubId: ClubId, memberId: ClubMemberOpaqueId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check kickableRoleIds privilege.

### C_Club.LeaveClub

```lua
C_Club.LeaveClub(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.RedeemTicket

```lua
C_Club.RedeemTicket(ticketId: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.RequestInvitationsForClub

```lua
C_Club.RequestInvitationsForClub(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Request invitations for this club from server. Check canGetInvitation privilege.

### C_Club.RequestMoreMessagesBefore

```lua
C_Club.RequestMoreMessagesBefore(clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier?, count: number?) -> alreadyHasMessages: bool
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Call this when the user scrolls near the top of the message view, and more need to be displayed. The history will be downloaded backwards (newest to oldest).

### C_Club.RequestTicket

```lua
C_Club.RequestTicket(ticketId: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.RequestTickets

```lua
C_Club.RequestTickets(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Request tickets from server. Check canGetTicket privilege.

### C_Club.RevokeInvitation

```lua
C_Club.RevokeInvitation(clubId: ClubId, memberId: ClubMemberOpaqueId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check canRevokeOwnInvitation or canRevokeOtherInvitation

### C_Club.SendBattleTagFriendRequest

```lua
C_Club.SendBattleTagFriendRequest(guildClubId: ClubId, memberId: ClubMemberOpaqueId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.SendCharacterInvitation

```lua
C_Club.SendCharacterInvitation(clubId: ClubId, character: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.SendInvitation

```lua
C_Club.SendInvitation(clubId: ClubId, memberId: ClubMemberOpaqueId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check the canSendInvitation privilege.

### C_Club.SendMessage

```lua
C_Club.SendMessage(clubId: ClubId, streamId: ClubStreamId, message: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.SendTitleFriendRequest

```lua
C_Club.SendTitleFriendRequest(guildClubId: ClubId, memberId: ClubMemberOpaqueId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.SetAutoAdvanceStreamViewMarker

```lua
C_Club.SetAutoAdvanceStreamViewMarker(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

Only one stream can be set for auto-advance at a time. Focused streams will have their view times advanced automatically.

### C_Club.SetAvatarTexture

```lua
C_Club.SetAvatarTexture(texture: SimpleTexture, avatarId: number, clubType: ClubType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

### C_Club.SetClubMemberNote

```lua
C_Club.SetClubMemberNote(clubId: ClubId, memberId: ClubMemberOpaqueId, note: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresClubsInitialized  

Check the canSetOwnMemberNote and canSetOtherMemberNote privileges.

### C_Club.SetClubPresenceSubscription

```lua
C_Club.SetClubPresenceSubscription(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

You can only be subscribed to 0 or 1 clubs for presence.  Subscribing to a new club automatically unsuscribes you to existing subscription.

### C_Club.SetClubStreamNotificationSettings

```lua
C_Club.SetClubStreamNotificationSettings(clubId: ClubId, settings: table<ClubStreamNotificationSetting>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.SetCommunityID

```lua
C_Club.SetCommunityID(communityID: BigUInteger)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.SetFavorite

```lua
C_Club.SetFavorite(clubId: ClubId, isFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.SetSocialQueueingEnabled

```lua
C_Club.SetSocialQueueingEnabled(clubId: ClubId, enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.ShouldAllowClubType

```lua
C_Club.ShouldAllowClubType(clubType: ClubType) -> clubTypeIsAllowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.UnfocusAllStreams

```lua
C_Club.UnfocusAllStreams(unsubscribe: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.UnfocusMembers

```lua
C_Club.UnfocusMembers(clubId: ClubId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.UnfocusStream

```lua
C_Club.UnfocusStream(clubId: ClubId, streamId: ClubStreamId)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

### C_Club.ValidateText

```lua
C_Club.ValidateText(clubType: ClubType, text: string, clubFieldType: ClubFieldType) -> result: ValidateNameResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresClubsInitialized  

## Events

### AVATAR_LIST_UPDATED

Payload: `clubType: ClubType`  
Flags: SynchronousEvent  

### CLUB_ADDED

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### CLUB_ERROR

Payload: `action: ClubActionType, error: ClubErrorType, clubType: ClubType`  
Flags: SynchronousEvent  

### CLUB_INVITATION_ADDED_FOR_SELF

Payload: `invitation: ClubSelfInvitationInfo`  
Flags: SynchronousEvent  

### CLUB_INVITATION_REMOVED_FOR_SELF

Payload: `invitationId: ClubInvitationId`  
Flags: SynchronousEvent  

### CLUB_INVITATIONS_RECEIVED_FOR_CLUB

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### CLUB_MEMBER_ADDED

Payload: `clubId: ClubId, memberId: ClubMemberOpaqueId`  
Flags: SynchronousEvent  

### CLUB_MEMBER_PRESENCE_UPDATED

Payload: `clubId: ClubId, memberId: ClubMemberOpaqueId, presence: ClubMemberPresence`  
Flags: SynchronousEvent  

### CLUB_MEMBER_REMOVED

Payload: `clubId: ClubId, memberId: ClubMemberOpaqueId`  
Flags: SynchronousEvent  

### CLUB_MEMBER_ROLE_UPDATED

Payload: `clubId: ClubId, memberId: ClubMemberOpaqueId, roleId: number`  
Flags: SynchronousEvent  

### CLUB_MEMBER_UPDATED

Payload: `clubId: ClubId, memberId: ClubMemberOpaqueId`  
Flags: SynchronousEvent  

### CLUB_MEMBERS_UPDATED

Payload: `clubId: ClubId`  
Flags: UniqueEvent  

### CLUB_MESSAGE_ADDED

Payload: `clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier`  
Flags: SynchronousEvent  

### CLUB_MESSAGE_HISTORY_RECEIVED

Payload: `clubId: ClubId, streamId: ClubStreamId, downloadedRange: ClubMessageRange, contiguousRange: ClubMessageRange`  
Flags: SynchronousEvent  

### CLUB_MESSAGE_UPDATED

Payload: `clubId: ClubId, streamId: ClubStreamId, messageId: ClubMessageIdentifier`  
Flags: SynchronousEvent  

### CLUB_REMOVED

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### CLUB_REMOVED_MESSAGE

Payload: `clubName: string, clubRemovedReason: ClubRemovedReason`  
Flags: SynchronousEvent  

### CLUB_SELF_MEMBER_ROLE_UPDATED

Payload: `clubId: ClubId, roleId: number`  
Flags: SynchronousEvent  

### CLUB_STREAM_ADDED

Payload: `clubId: ClubId, streamId: ClubStreamId`  
Flags: SynchronousEvent, UniqueEvent  

### CLUB_STREAM_REMOVED

Payload: `clubId: ClubId, streamId: ClubStreamId`  
Flags: SynchronousEvent, UniqueEvent  

### CLUB_STREAM_SUBSCRIBED

Payload: `clubId: ClubId, streamId: ClubStreamId`  
Flags: SynchronousEvent  

### CLUB_STREAM_UNSUBSCRIBED

Payload: `clubId: ClubId, streamId: ClubStreamId`  
Flags: SynchronousEvent  

### CLUB_STREAM_UPDATED

Payload: `clubId: ClubId, streamId: ClubStreamId`  
Flags: SynchronousEvent, UniqueEvent  

### CLUB_STREAMS_LOADED

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### CLUB_TICKET_CREATED

Payload: `clubId: ClubId, ticketInfo: ClubTicketInfo`  
Flags: SynchronousEvent  

### CLUB_TICKET_RECEIVED

Payload: `ticket: string`  
Flags: SynchronousEvent  

### CLUB_TICKETS_RECEIVED

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### CLUB_UPDATED

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  

### INITIAL_CLUBS_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### STREAM_VIEW_MARKER_UPDATED

Payload: `clubId: ClubId, streamId: ClubStreamId, lastReadTime: BigUInteger?`  
Flags: SynchronousEvent, UniqueEvent  

## Tables

### ClubActionType (Enumeration)

| Name | Value |
|---|---|
| ErrorClubActionSubscribe | 0 |
| ErrorClubActionCreate | 1 |
| ErrorClubActionEdit | 2 |
| ErrorClubActionDestroy | 3 |
| ErrorClubActionLeave | 4 |
| ErrorClubActionCreateTicket | 5 |
| ErrorClubActionDestroyTicket | 6 |
| ErrorClubActionRedeemTicket | 7 |
| ErrorClubActionGetTicket | 8 |
| ErrorClubActionGetTickets | 9 |
| ErrorClubActionGetBans | 10 |
| ErrorClubActionGetInvitations | 11 |
| ErrorClubActionRevokeInvitation | 12 |
| ErrorClubActionAcceptInvitation | 13 |
| ErrorClubActionDeclineInvitation | 14 |
| ErrorClubActionCreateStream | 15 |
| ErrorClubActionEditStream | 16 |
| ErrorClubActionDestroyStream | 17 |
| ErrorClubActionInviteMember | 18 |
| ErrorClubActionEditMember | 19 |
| ErrorClubActionEditMemberNote | 20 |
| ErrorClubActionKickMember | 21 |
| ErrorClubActionAddBan | 22 |
| ErrorClubActionRemoveBan | 23 |
| ErrorClubActionCreateMessage | 24 |
| ErrorClubActionEditMessage | 25 |
| ErrorClubActionDestroyMessage | 26 |

### ClubErrorType (Enumeration)

| Name | Value |
|---|---|
| ErrorCommunitiesNone | 0 |
| ErrorCommunitiesUnknown | 1 |
| ErrorCommunitiesNeutralFaction | 2 |
| ErrorCommunitiesUnknownRealm | 3 |
| ErrorCommunitiesBadTarget | 4 |
| ErrorCommunitiesWrongFaction | 5 |
| ErrorCommunitiesRestricted | 6 |
| ErrorCommunitiesIgnored | 7 |
| ErrorCommunitiesGuild | 8 |
| ErrorCommunitiesWrongRegion | 9 |
| ErrorCommunitiesUnknownTicket | 10 |
| ErrorCommunitiesMissingShortName | 11 |
| ErrorCommunitiesProfanity | 12 |
| ErrorCommunitiesTrial | 13 |
| ErrorCommunitiesVeteranTrial | 14 |
| ErrorCommunitiesChatMute | 15 |
| ErrorClubFull | 16 |
| ErrorClubNoClub | 17 |
| ErrorClubNotMember | 18 |
| ErrorClubAlreadyMember | 19 |
| ErrorClubNoSuchMember | 20 |
| ErrorClubNoSuchInvitation | 21 |
| ErrorClubInvitationAlreadyExists | 22 |
| ErrorClubInvalidRoleID | 23 |
| ErrorClubInsufficientPrivileges | 24 |
| ErrorClubTooManyClubsJoined | 25 |
| ErrorClubVoiceFull | 26 |
| ErrorClubStreamNoStream | 27 |
| ErrorClubStreamInvalidName | 28 |
| ErrorClubStreamCountAtMin | 29 |
| ErrorClubStreamCountAtMax | 30 |
| ErrorClubMemberHasRequiredRole | 31 |
| ErrorClubSentInvitationCountAtMax | 32 |
| ErrorClubReceivedInvitationCountAtMax | 33 |
| ErrorClubTargetIsBanned | 34 |
| ErrorClubBanAlreadyExists | 35 |
| ErrorClubBanCountAtMax | 36 |
| ErrorClubTicketCountAtMax | 37 |
| ErrorClubTicketNoSuchTicket | 38 |
| ErrorClubTicketHasConsumedAllowedRedeemCount | 39 |
| ErrorClubDoesntAllowCrossFaction | 40 |
| ErrorClubEditHasCrossFactionMembers | 41 |

### ClubFieldType (Enumeration)

| Name | Value |
|---|---|
| ClubName | 0 |
| ClubShortName | 1 |
| ClubDescription | 2 |
| ClubBroadcast | 3 |
| ClubStreamName | 4 |
| ClubStreamSubject | 5 |
| NumTypes | 6 |

### ClubInvitationCandidateStatus (Enumeration)

| Name | Value |
|---|---|
| Available | 0 |
| InvitePending | 1 |
| AlreadyMember | 2 |

### ClubMemberPresence (Enumeration)

| Name | Value |
|---|---|
| Unknown | 0 |
| Online | 1 |
| OnlineMobile | 2 |
| Offline | 3 |
| Away | 4 |
| Busy | 5 |

### ClubRemovedReason (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Banned | 1 |
| Removed | 2 |
| ClubDestroyed | 3 |

### ClubRestrictionReason (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Unavailable | 1 |

### ClubStreamNotificationFilter (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Mention | 1 |
| All | 2 |

### ClubStreamType (Enumeration)

| Name | Value |
|---|---|
| General | 0 |
| Guild | 1 |
| Officer | 2 |
| Discord | 3 |
| Other | 4 |

### ClubType (Enumeration)

| Name | Value |
|---|---|
| BattleNet | 0 |
| Character | 1 |
| Guild | 2 |
| Other | 3 |

### ClubInfo (Structure)

- `clubId: ClubId`
- `name: string`
- `shortName: string?`
- `description: string`
- `broadcast: string`
- `clubType: ClubType`
- `avatarId: number`
- `memberCount: number?`
- `favoriteTimeStamp: BigUInteger?`
- `joinTime: BigUInteger?`
- `socialQueueingEnabled: bool?`
- `crossFaction: bool?`

### ClubInvitationCandidateInfo (Structure)

- `memberId: ClubMemberOpaqueId`
- `name: string`
- `priority: luaIndex`
- `status: ClubInvitationCandidateStatus`

### ClubInvitationInfo (Structure)

- `invitationId: ClubInvitationId`
- `isMyInvitation: bool`
- `invitee: ClubMemberInfo`

### ClubLimits (Structure)

- `maximumNumberOfStreams: number`

### ClubMemberInfo (Structure)

- `isSelf: bool`
- `memberId: ClubMemberOpaqueId`
- `name: string?` name may be encoded as a Kstring
- `role: ClubRoleIdentifier?`
- `presence: ClubMemberPresence`
- `clubType: ClubType?`
- `guid: WOWGUID?`
- `bnetAccountId: number?`
- `memberNote: string?`
- `officerNote: string?`
- `classID: number?`
- `race: number?`
- `level: number?`
- `zone: string?`
- `achievementPoints: number?`
- `profession1ID: number?`
- `profession1Rank: number?`
- `profession1Name: string?`
- `profession2ID: number?`
- `profession2Rank: number?`
- `profession2Name: string?`
- `lastOnlineYear: number?`
- `lastOnlineMonth: number?`
- `lastOnlineDay: number?`
- `lastOnlineHour: number?`
- `guildRank: string?`
- `guildRankOrder: luaIndex?`
- `isRemoteChat: bool?`
- `overallDungeonScore: number?`
- `faction: PvPFaction?`
- `timerunningSeasonID: number?`
- `discordInfo: DiscordChatInfo?`

### ClubMessageIdentifier (Structure)

- `epoch: BigUInteger` number of microseconds since the UNIX epoch.
- `position: BigUInteger` sort order for messages at the same time

### ClubMessageInfo (Structure)

- `messageId: ClubMessageIdentifier`
- `content: kstringClubMessage`
- `author: ClubMemberInfo`
- `destroyer: ClubMemberInfo?` May be nil even if the message has been destroyed
- `destroyed: bool`
- `edited: bool`

### ClubMessageRange (Structure)

- `oldestMessageId: ClubMessageIdentifier`
- `newestMessageId: ClubMessageIdentifier`

### ClubPrivilegeInfo (Structure)

- `canDestroy: bool`
- `canSetAttribute: bool`
- `canSetName: bool`
- `canSetDescription: bool`
- `canSetAvatar: bool`
- `canSetBroadcast: bool`
- `canSetPrivacyLevel: bool`
- `canSetOwnMemberAttribute: bool`
- `canSetOtherMemberAttribute: bool`
- `canSetOwnMemberNote: bool`
- `canSetOtherMemberNote: bool`
- `canSetOwnVoiceState: bool`
- `canSetOwnPresenceLevel: bool`
- `canUseVoice: bool`
- `canVoiceMuteMemberForAll: bool`
- `canGetInvitation: bool`
- `canSendInvitation: bool`
- `canSendGuestInvitation: bool`
- `canRevokeOwnInvitation: bool`
- `canRevokeOtherInvitation: bool`
- `canGetBan: bool`
- `canGetSuggestion: bool`
- `canSuggestMember: bool`
- `canGetTicket: bool`
- `canCreateTicket: bool`
- `canDestroyTicket: bool`
- `canAddBan: bool`
- `canRemoveBan: bool`
- `canCreateStream: bool`
- `canDestroyStream: bool`
- `canSetStreamPosition: bool`
- `canSetStreamAttribute: bool`
- `canSetStreamName: bool`
- `canSetStreamSubject: bool`
- `canSetStreamAccess: bool`
- `canSetStreamVoiceLevel: bool`
- `canCreateMessage: bool`
- `canDestroyOwnMessage: bool`
- `canDestroyOtherMessage: bool`
- `canEditOwnMessage: bool`
- `canPinMessage: bool`
- `kickableRoleIds: table<number>` Roles that can be kicked and banned

### ClubRoleInfo (Structure)

- `roleId: number`
- `name: string`
- `required: bool` At least one user must be in this role
- `unique: bool` At most one user can be in this role

### ClubSelfInvitationInfo (Structure)

- `invitationId: ClubInvitationId`
- `club: ClubInfo`
- `inviter: ClubMemberInfo`
- `leaders: table<ClubMemberInfo>`

### ClubStreamInfo (Structure)

- `streamId: ClubStreamId`
- `name: string`
- `subject: string`
- `leadersAndModeratorsOnly: bool`
- `streamType: ClubStreamType`
- `creationTime: BigUInteger`

### ClubStreamNotificationSetting (Structure)

- `streamId: ClubStreamId`
- `filter: ClubStreamNotificationFilter`

### ClubTicketInfo (Structure)

- `ticketId: string`
- `allowedRedeemCount: number`
- `currentRedeemCount: number`
- `creationTime: BigUInteger` Creation time in microseconds since the UNIX epoch.
- `expirationTime: BigUInteger` Expiration time in microseconds since the UNIX epoch.
- `defaultStreamId: ClubStreamId?`
- `creator: ClubMemberInfo`

## Preconditions

- `RequiresClubsInitialized` (FailureMode=ReturnNothing)
