# GuildInfo

Type: System  
Namespace: `C_GuildInfo`  
Environment: All

## Functions

### C_GuildInfo.AreGuildEventsEnabled

```lua
C_GuildInfo.AreGuildEventsEnabled() -> enabled: bool
```

### C_GuildInfo.CanEditOfficerNote

```lua
C_GuildInfo.CanEditOfficerNote() -> canEditOfficerNote: bool
```

### C_GuildInfo.CanSpeakInGuildChat

```lua
C_GuildInfo.CanSpeakInGuildChat() -> canSpeakInGuildChat: bool
```

### C_GuildInfo.CanViewOfficerNote

```lua
C_GuildInfo.CanViewOfficerNote() -> canViewOfficerNote: bool
```

### C_GuildInfo.Demote

```lua
C_GuildInfo.Demote(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.Disband

```lua
C_GuildInfo.Disband()
```

### C_GuildInfo.GetGuildNewsInfo

```lua
C_GuildInfo.GetGuildNewsInfo(index: luaIndex) -> newsInfo: GuildNewsInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_GuildInfo.GetGuildRankOrder

```lua
C_GuildInfo.GetGuildRankOrder(guid: WOWGUID) -> rankOrder: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.GetGuildTabardInfo

```lua
C_GuildInfo.GetGuildTabardInfo(unit: UnitToken?) -> tabardInfo: GuildTabardInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.GetInfoText

```lua
C_GuildInfo.GetInfoText() -> infoText: string
```

Flags: HasRestrictions  

### C_GuildInfo.GetMOTD

```lua
C_GuildInfo.GetMOTD() -> motd: string
```

Flags: HasRestrictions  

### C_GuildInfo.GetPreferredPlaySettings

```lua
C_GuildInfo.GetPreferredPlaySettings() -> loaded: bool, preferredLocaleID: number, preferredDatacenterLocalityID: number, lastPreferredLocaleChangeDate: time_t, lastPreferredDatacenterLocalityChangeDate: time_t, changeCooldownDays: number
```

### C_GuildInfo.GetPreferredPlaySettingsFeatures

```lua
C_GuildInfo.GetPreferredPlaySettingsFeatures() -> canChangeLocale: bool, canChangeDatacenterLocality: bool
```

### C_GuildInfo.GuildControlGetRankFlags

```lua
C_GuildInfo.GuildControlGetRankFlags(rankOrder: luaIndex) -> permissions: table<bool>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.GuildRoster

```lua
C_GuildInfo.GuildRoster()
```

### C_GuildInfo.Invite

```lua
C_GuildInfo.Invite(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.IsDiscordStreamSeparate

```lua
C_GuildInfo.IsDiscordStreamSeparate() -> separateStream: bool
```

### C_GuildInfo.IsEncounterGuildNewsEnabled

```lua
C_GuildInfo.IsEncounterGuildNewsEnabled() -> enabled: bool
```

### C_GuildInfo.IsGuildOfficer

```lua
C_GuildInfo.IsGuildOfficer() -> isOfficer: bool
```

### C_GuildInfo.IsGuildRankAssignmentAllowed

```lua
C_GuildInfo.IsGuildRankAssignmentAllowed(guid: WOWGUID, rankOrder: luaIndex) -> isGuildRankAssignmentAllowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.IsGuildReputationEnabled

```lua
C_GuildInfo.IsGuildReputationEnabled() -> enabled: bool
```

### C_GuildInfo.Leave

```lua
C_GuildInfo.Leave()
```

### C_GuildInfo.MemberExistsByName

```lua
C_GuildInfo.MemberExistsByName(name: cstring) -> exists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.Promote

```lua
C_GuildInfo.Promote(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.QueryGuildMemberRecipes

```lua
C_GuildInfo.QueryGuildMemberRecipes(guildMemberGUID: WOWGUID, skillLineID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.QueryGuildMembersForRecipe

```lua
C_GuildInfo.QueryGuildMembersForRecipe(skillLineID: number, recipeSpellID: number, recipeLevel: luaIndex?) -> updatedRecipeSpellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_GuildInfo.RemoveFromGuild

```lua
C_GuildInfo.RemoveFromGuild(guid: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.RequestGuildRename

```lua
C_GuildInfo.RequestGuildRename(desiredName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.RequestGuildRenameRefund

```lua
C_GuildInfo.RequestGuildRenameRefund()
```

Flags: HasRestrictions  

### C_GuildInfo.RequestPreferredPlaySettings

```lua
C_GuildInfo.RequestPreferredPlaySettings() -> startedSuccessfully: bool
```

### C_GuildInfo.RequestRenameNameCheck

```lua
C_GuildInfo.RequestRenameNameCheck(desiredName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.RequestRenameStatus

```lua
C_GuildInfo.RequestRenameStatus() -> ableToRequest: bool
```

### C_GuildInfo.SetGuildRankOrder

```lua
C_GuildInfo.SetGuildRankOrder(guid: WOWGUID, rankOrder: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.SetInfoText

```lua
C_GuildInfo.SetInfoText(infoText: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.SetLeader

```lua
C_GuildInfo.SetLeader(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.SetMOTD

```lua
C_GuildInfo.SetMOTD(motd: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.SetNote

```lua
C_GuildInfo.SetNote(guid: WOWGUID, note: cstring, isPublic: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GuildInfo.SetPreferredPlaySettings

```lua
C_GuildInfo.SetPreferredPlaySettings(preferredLocaleID: number = 0, preferredDatacenterLocalityID: number = 0) -> startedSuccessfully: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GuildInfo.Uninvite

```lua
C_GuildInfo.Uninvite(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CLOSE_TABARD_FRAME

Payload: `none`  
Flags: SynchronousEvent  

### DISABLE_DECLINE_GUILD_INVITE

Payload: `none`  
Flags: SynchronousEvent  

### ENABLE_DECLINE_GUILD_INVITE

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_CHALLENGE_COMPLETED

Payload: `challengeType: number, currentCount: number, maxCount: number, goldAwarded: number`  
Flags: SynchronousEvent  

### GUILD_CHALLENGE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_EVENT_LOG_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_INVITE_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_INVITE_REQUEST

Payload: `inviter: cstring, guildName: cstring, guildAchievementPoints: number, oldGuildName: cstring, isNewGuild: bool?, tabardInfo: GuildTabardInfo?`  
Flags: SynchronousEvent  

### GUILD_MOTD

Payload: `motdText: cstring`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### GUILD_NEWS_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### GUILD_PARTY_STATE_UPDATED

Payload: `inGuildParty: bool`  
Flags: SynchronousEvent  

### GUILD_PREFERRED_PLAY_SETTINGS_UPDATED

Payload: `status: PreferredPlaySettingsStatus, preferredLocaleID: number, preferredDatacenterLocalityID: number, lastPreferredLocaleChangeDate: time_t, lastPreferredDatacenterLocalityChangeDate: time_t`  
Flags: SynchronousEvent  

### GUILD_RANKS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_RANKS_UPDATE_ACTIVE_PLAYER

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_RECIPE_KNOWN_BY_MEMBERS

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_REGISTRAR_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_REGISTRAR_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_RENAME_NAME_CHECK

Payload: `desiredName: cstring, status: GuildErrorType, nameErrorToken: cstring?`  
Flags: SynchronousEvent  

### GUILD_RENAME_REFUND_RESULT

Payload: `guildName: cstring, status: GuildErrorType`  
Flags: SynchronousEvent  

### GUILD_RENAME_REQUIRED

Payload: `flagSet: bool`  
Flags: SynchronousEvent  

### GUILD_RENAME_STATUS_UPDATE

Payload: `status: GuildRenameStatus`  
Flags: SynchronousEvent  

### GUILD_REWARDS_LIST

Payload: `none`  
Flags: SynchronousEvent  

### GUILD_REWARDS_LIST_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### GUILD_ROSTER_UPDATE

Payload: `canRequestRosterUpdate: bool`  
Flags: SynchronousEvent  

### GUILD_TRADESKILL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### GUILDTABARD_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### OPEN_TABARD_FRAME

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_GUILD_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### REQUESTED_GUILD_RENAME_RESULT

Payload: `newName: cstring, status: GuildErrorType`  
Flags: SynchronousEvent  

### REQUIRED_GUILD_RENAME_RESULT

Payload: `success: bool`  
Flags: SynchronousEvent  

### TABARD_CANSAVE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### TABARD_SAVE_PENDING

Payload: `none`  
Flags: SynchronousEvent  

### UNIT_GUILD_LEVEL

Payload: `newLevel: number`  
Flags: SynchronousEvent  

## Tables

### GuildNewsInfo (Structure)

- `isSticky: bool`
- `isHeader: bool`
- `newsType: number`
- `whoText: string?`
- `whatText: string?`
- `newsDataID: number`
- `data: table<number>`
- `weekday: number`
- `day: number`
- `month: number`
- `year: number`
- `guildMembersPresent: number`

### GuildRenameStatus (Structure)

- `isNameChangeEnabled: bool`
- `isPlayerGuildMaster: bool`
- `refundEligibleEndTime: time_t`
- `nextRenameTime: time_t`
- `renamePrice: WOWMONEY`
- `refundAmount: WOWMONEY`
- `currentGuildMoney: WOWMONEY`
- `result: GuildErrorType`
- `oldGuildName: cstring`
- `reservedName: cstring`
- `reservedNameExpirationTime: time_t`
