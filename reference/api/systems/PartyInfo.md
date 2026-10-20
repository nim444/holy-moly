# PartyInfo

Type: System  
Namespace: `C_PartyInfo`  
Environment: All

## Functions

### C_PartyInfo.AllowedToDoPartyConversion

```lua
C_PartyInfo.AllowedToDoPartyConversion(toRaid: bool) -> allowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.CanFormCrossFactionParties

```lua
C_PartyInfo.CanFormCrossFactionParties() -> canFormCrossFactionParties: bool
```

### C_PartyInfo.CanInvite

```lua
C_PartyInfo.CanInvite() -> allowedToInvite: bool
```

### C_PartyInfo.CanStartInstanceAbandonVote

```lua
C_PartyInfo.CanStartInstanceAbandonVote() -> canStart: bool
```

Returns whether it's possible to start a vote at this time

### C_PartyInfo.ChallengeModeRestrictionsActive

```lua
C_PartyInfo.ChallengeModeRestrictionsActive() -> restrictionsActive: bool
```

### C_PartyInfo.ConfirmConvertToRaid

```lua
C_PartyInfo.ConfirmConvertToRaid()
```

Flags: HasRestrictions  

Immediately convert to raid with no regard for potentially destructive actions.

### C_PartyInfo.ConfirmInviteTravelPass

```lua
C_PartyInfo.ConfirmInviteTravelPass(targetName: cstring, targetGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.ConfirmInviteUnit

```lua
C_PartyInfo.ConfirmInviteUnit(targetName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidInviteTarget  

Immediately invites the named unit to a party, with no regard for potentially destructive actions.

### C_PartyInfo.ConfirmLeaveParty

```lua
C_PartyInfo.ConfirmLeaveParty(category: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Immediately leave the party with no regard for potentially destructive actions

### C_PartyInfo.ConfirmReadyCheck

```lua
C_PartyInfo.ConfirmReadyCheck(isReady: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.ConfirmRequestInviteFromUnit

```lua
C_PartyInfo.ConfirmRequestInviteFromUnit(targetName: cstring, tank: bool?, healer: bool?, dps: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidInviteTarget  

Immediately request an invite into the target party, this is the confirmation function to call after RequestInviteFromUnit, or if you would like to skip the confirmation process.

### C_PartyInfo.ConvertToParty

```lua
C_PartyInfo.ConvertToParty()
```

Flags: HasRestrictions  

### C_PartyInfo.ConvertToRaid

```lua
C_PartyInfo.ConvertToRaid()
```

Flags: HasRestrictions  

Usually this will convert to raid immediately. In some cases (e.g. PartySync) the user will be prompted to confirm converting to raid, because it's potentially destructive.

### C_PartyInfo.DelveTeleportOut

```lua
C_PartyInfo.DelveTeleportOut()
```

### C_PartyInfo.DemoteAssistant

```lua
C_PartyInfo.DemoteAssistant(name: cstring, exactNameMatch: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.DoCountdown

```lua
C_PartyInfo.DoCountdown(seconds: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.DoReadyCheck

```lua
C_PartyInfo.DoReadyCheck()
```

Flags: HasRestrictions  

### C_PartyInfo.GetActiveCategories

```lua
C_PartyInfo.GetActiveCategories() -> categories: table<number>
```

Flags: MayReturnNothing  

### C_PartyInfo.GetAvailableLootMethods

```lua
C_PartyInfo.GetAvailableLootMethods() -> methods: table<LootMethod>
```

### C_PartyInfo.GetInstanceAbandonShutdownTime

```lua
C_PartyInfo.GetInstanceAbandonShutdownTime() -> durationSeconds: number = 0, timeLeftSeconds: number = 0
```

Returns the total duration of the shutdown time after a vote passes and how much time is left before it ends

### C_PartyInfo.GetInstanceAbandonVoteCooldownTime

```lua
C_PartyInfo.GetInstanceAbandonVoteCooldownTime() -> durationSeconds: number = 0, timeLeftSeconds: number = 0
```

Flags: MayReturnNothing  

Returns the total duration of the abandon vote cooldown and how much time is left before it ends

### C_PartyInfo.GetInstanceAbandonVoteRequirements

```lua
C_PartyInfo.GetInstanceAbandonVoteRequirements() -> votesRequired: number = 0, keystoneOwnerVoteWeight: number = 0
```

Returns values controlling the vote

### C_PartyInfo.GetInstanceAbandonVoteResponse

```lua
C_PartyInfo.GetInstanceAbandonVoteResponse() -> response: bool?
```

Returns how the player voted, nil for not yet

### C_PartyInfo.GetInstanceAbandonVoteTime

```lua
C_PartyInfo.GetInstanceAbandonVoteTime() -> durationSeconds: number = 0, timeLeftSeconds: number = 0
```

Returns the total duration of the vote and how much time is left before it ends

### C_PartyInfo.GetInviteConfirmationInvalidQueues

```lua
C_PartyInfo.GetInviteConfirmationInvalidQueues(inviteGUID: WOWGUID) -> invalidQueues: table<QueueSpecificInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PartyInfo.GetInviteReferralInfo

```lua
C_PartyInfo.GetInviteReferralInfo(inviteGUID: WOWGUID) -> outReferredByGuid: WOWGUID, outReferredByName: cstring, outRelationType: PartyRequestJoinRelation, outIsQuickJoin: bool, outClubId: ClubId
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PartyInfo.GetLootMethod

```lua
C_PartyInfo.GetLootMethod() -> method: LootMethod, masterLootPartyID: number?, masterLooterRaidID: number?
```

### C_PartyInfo.GetLootMethodStyle

```lua
C_PartyInfo.GetLootMethodStyle() -> methodStyle: LootMethodStyles
```

### C_PartyInfo.GetMinItemLevel

```lua
C_PartyInfo.GetMinItemLevel(avgItemLevelCategory: AvgItemLevelCategories) -> minItemLevel: number, playerNameWithLowestItemLevel: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.GetMinLevel

```lua
C_PartyInfo.GetMinLevel(category: luaIndex?) -> minLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.GetNumInstanceAbandonGroupVoteResponses

```lua
C_PartyInfo.GetNumInstanceAbandonGroupVoteResponses() -> count: number
```

Returns how many players have voted either way

### C_PartyInfo.GetRestrictPings

```lua
C_PartyInfo.GetRestrictPings() -> restrictTo: RestrictPingsTo
```

### C_PartyInfo.InviteUnit

```lua
C_PartyInfo.InviteUnit(targetName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidInviteTarget  

Attempt to invite the named unit to a party, requires confirmation in some cases (e.g. the party will convert to a raid, or if there is a party sync in progress).

### C_PartyInfo.IsChallengeModeActive

```lua
C_PartyInfo.IsChallengeModeActive() -> active: bool
```

### C_PartyInfo.IsChallengeModeKeystoneOwner

```lua
C_PartyInfo.IsChallengeModeKeystoneOwner() -> isKeystoneOwner: bool
```

### C_PartyInfo.IsCrossFactionParty

```lua
C_PartyInfo.IsCrossFactionParty(category: luaIndex?) -> isCrossFactionParty: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.IsDelveComplete

```lua
C_PartyInfo.IsDelveComplete() -> isDelveComplete: bool
```

### C_PartyInfo.IsDelveInProgress

```lua
C_PartyInfo.IsDelveInProgress() -> isDelveComplete: bool
```

### C_PartyInfo.IsGUIDInGroup

```lua
C_PartyInfo.IsGUIDInGroup(guid: WOWGUID, category: luaIndex?) -> isInGroup: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.IsLootMethodAvailable

```lua
C_PartyInfo.IsLootMethodAvailable(method: LootMethod) -> available: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.IsPartyFull

```lua
C_PartyInfo.IsPartyFull(category: luaIndex?) -> isFull: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PartyInfo.IsPartyInJailersTower

```lua
C_PartyInfo.IsPartyInJailersTower() -> isPartyInJailersTower: bool
```

### C_PartyInfo.IsPartyWalkIn

```lua
C_PartyInfo.IsPartyWalkIn() -> isPartyWalkIn: bool
```

### C_PartyInfo.LeaveParty

```lua
C_PartyInfo.LeaveParty(category: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Usually this will leave the party immediately. In some cases (e.g. PartySync) the user will be prompted to confirm leaving the party, because it's potentially destructive

### C_PartyInfo.PromoteToAssistant

```lua
C_PartyInfo.PromoteToAssistant(name: cstring, exactNameMatch: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.PromoteToLeader

```lua
C_PartyInfo.PromoteToLeader(name: cstring, exactNameMatch: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.RequestInviteFromUnit

```lua
C_PartyInfo.RequestInviteFromUnit(targetName: cstring, tank: bool?, healer: bool?, dps: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidInviteTarget  

Attempt to request an invite into the target party, requires confirmation in some cases (e.g. there is a party sync in progress).

### C_PartyInfo.SetEveryoneIsAssistant

```lua
C_PartyInfo.SetEveryoneIsAssistant(isAssistant: bool) -> updated: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.SetInstanceAbandonVoteResponse

```lua
C_PartyInfo.SetInstanceAbandonVoteResponse(response: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Vote on whether to abandon instance, true for yes, false for no

### C_PartyInfo.SetLootMethod

```lua
C_PartyInfo.SetLootMethod(method: LootMethod, lootMaster: string?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.SetRestrictPings

```lua
C_PartyInfo.SetRestrictPings(restrictTo: RestrictPingsTo)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PartyInfo.StartInstanceAbandonVote

```lua
C_PartyInfo.StartInstanceAbandonVote()
```

Flags: HasRestrictions  

Start the vote

### C_PartyInfo.UninviteUnit

```lua
C_PartyInfo.UninviteUnit(name: cstring, reason: cstring?, exactNameMatch: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### BNET_REQUEST_INVITE_CONFIRMATION

Payload: `gameAccountID: number, questSessionActive: bool, tank: bool, healer: bool, dps: bool`  
Flags: SynchronousEvent  

### CONVERT_TO_RAID_CONFIRMATION

Payload: `none`  
Flags: SynchronousEvent  

### ENTERED_DIFFERENT_INSTANCE_FROM_PARTY

Payload: `none`  
Flags: SynchronousEvent  

### GROUP_FORMED

Payload: `category: number, partyGUID: WOWGUID`  
Flags: SynchronousEvent  

### GROUP_INVITE_CONFIRMATION

Payload: `none`  
Flags: SynchronousEvent  

### GROUP_JOINED

Payload: `category: number, partyGUID: WOWGUID`  
Flags: SynchronousEvent  

### GROUP_LEFT

Payload: `category: number, partyGUID: WOWGUID`  
Flags: SynchronousEvent  

### GROUP_ROSTER_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### INSTANCE_ABANDON_VOTE_FINISHED

Payload: `votePassed: bool`  
Flags: SynchronousEvent  

### INSTANCE_ABANDON_VOTE_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_ABANDON_VOTE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_BOOT_START

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_BOOT_STOP

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_GROUP_SIZE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### INVITE_TO_PARTY_CONFIRMATION

Payload: `targetName: cstring, willConvertToRaid: bool, questSessionActive: bool`  
Flags: SynchronousEvent  

### INVITE_TRAVEL_PASS_CONFIRMATION

Payload: `targetName: cstring, targetGUID: WOWGUID, willConvertToRaid: bool, questSessionActive: bool`  
Flags: SynchronousEvent  

### LEAVE_PARTY_CONFIRMATION

Payload: `reason: LeavePartyConfirmReason`  
Flags: SynchronousEvent  

### PARTY_INVITE_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### PARTY_INVITE_REQUEST

Payload: `name: cstring, isTank: bool, isHealer: bool, isDamage: bool, isNativeRealm: bool, allowMultipleRoles: bool, inviterGUID: WOWGUID, questSessionActive: bool`  
Flags: SynchronousEvent  

### PARTY_LEADER_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### PARTY_LFG_RESTRICTED

Payload: `none`  
Flags: SynchronousEvent  

### PARTY_LOOT_METHOD_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### PARTY_MEMBER_DISABLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PARTY_MEMBER_ENABLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_DIFFICULTY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_ROLES_ASSIGNED

Payload: `none`  
Flags: UniqueEvent  

### RAID_ROSTER_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### READY_CHECK

Payload: `initiatorName: cstring, readyCheckTimeLeft: time_t`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### READY_CHECK_CONFIRM

Payload: `unitTarget: UnitTokenVariant, isReady: bool`  
Flags: SynchronousEvent  

### READY_CHECK_FINISHED

Payload: `preempted: bool`  
Flags: SynchronousEvent  

### REQUEST_INVITE_CONFIRMATION

Payload: `targetName: cstring, partyLevelLink: number, questSessionActive: bool, tank: bool?, healer: bool?, dps: bool?`  
Flags: SynchronousEvent  

### VOTE_KICK_REASON_NEEDED

Payload: `name: cstring, resultGUID: WOWGUID`  
Flags: SynchronousEvent  

## Tables

### LeavePartyConfirmReason (Enumeration)

| Name | Value |
|---|---|
| QuestSync | 0 |
| RestrictedChallengeMode | 1 |

## Preconditions

- `RequiresValidInviteTarget` (FailureMode=ReturnNothing)
