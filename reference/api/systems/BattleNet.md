# BattleNet

Type: System  
Namespace: `C_BattleNet`  
Environment: All

## Functions

### C_BattleNet.AreFriendTagsEnabled

```lua
C_BattleNet.AreFriendTagsEnabled() -> areFriendTagsEnabled: bool
```

### C_BattleNet.AreHighResTexturesInstalled

```lua
C_BattleNet.AreHighResTexturesInstalled() -> installed: bool
```

### C_BattleNet.AreRealIDFriendsEnabled

```lua
C_BattleNet.AreRealIDFriendsEnabled() -> areRealIDFriendsEnabled: bool
```

### C_BattleNet.AreTitleFriendCustomNamesEnabled

```lua
C_BattleNet.AreTitleFriendCustomNamesEnabled() -> areTitleFriendCustomNamesEnabled: bool
```

### C_BattleNet.AreTitleFriendsEnabled

```lua
C_BattleNet.AreTitleFriendsEnabled() -> areTitleFriendsEnabled: bool
```

### C_BattleNet.BNCheckBattleTagInviteToRecentAlly

```lua
C_BattleNet.BNCheckBattleTagInviteToRecentAlly(recentAllyGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.BNCheckTitleFriendInviteToUnit

```lua
C_BattleNet.BNCheckTitleFriendInviteToUnit(unit: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.CanToggleHighResTexturesWithoutClientReload

```lua
C_BattleNet.CanToggleHighResTexturesWithoutClientReload() -> canToggle: bool
```

### C_BattleNet.GetAccountInfoByGUID

```lua
C_BattleNet.GetAccountInfoByGUID(guid: WOWGUID) -> accountInfo: BNetAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetAccountInfoByID

```lua
C_BattleNet.GetAccountInfoByID(id: number, wowAccountGUID: WOWGUID?) -> accountInfo: BNetAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetCustomTitleFriendName

```lua
C_BattleNet.GetCustomTitleFriendName(id: number) -> customName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_BattleNet.GetFriendAccountInfo

```lua
C_BattleNet.GetFriendAccountInfo(friendIndex: luaIndex, wowAccountGUID: WOWGUID?) -> accountInfo: BNetAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetFriendGameAccountInfo

```lua
C_BattleNet.GetFriendGameAccountInfo(friendIndex: luaIndex, accountIndex: luaIndex) -> gameAccountInfo: BNetGameAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetFriendInviteInfo

```lua
C_BattleNet.GetFriendInviteInfo(inviteIndex: luaIndex) -> inviteInfo: BNetFriendInviteInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetFriendLevelFromInviteText

```lua
C_BattleNet.GetFriendLevelFromInviteText(inviteText: cstring) -> friendLevel: BattleNetFriendLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetFriendNumGameAccounts

```lua
C_BattleNet.GetFriendNumGameAccounts(friendIndex: luaIndex) -> numGameAccounts: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetGameAccountInfoByGUID

```lua
C_BattleNet.GetGameAccountInfoByGUID(guid: WOWGUID) -> gameAccountInfo: BNetGameAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.GetGameAccountInfoByID

```lua
C_BattleNet.GetGameAccountInfoByID(id: number) -> gameAccountInfo: BNetGameAccountInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.InstallHighResTextures

```lua
C_BattleNet.InstallHighResTextures()
```

Flags: HasRestrictions  

### C_BattleNet.InviteFriend

```lua
C_BattleNet.InviteFriend(gameAccountID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.IsBattleNetFriendsListEnabled

```lua
C_BattleNet.IsBattleNetFriendsListEnabled() -> isBattleNetFriendsListEnabled: bool
```

### C_BattleNet.IsBattleNetFriendsListSupported

```lua
C_BattleNet.IsBattleNetFriendsListSupported() -> isBattleNetFriendsListSupported: bool
```

### C_BattleNet.IsFriendTagSupportedForCurrentGameType

```lua
C_BattleNet.IsFriendTagSupportedForCurrentGameType(friendTag: BattleNetFriendTag) -> isFriendTagSupportedForCurrentGameType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.SearchFriends

```lua
C_BattleNet.SearchFriends(searchInfo: AuroraFriendsSearchInfo) -> friendsData: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SendGameData

```lua
C_BattleNet.SendGameData(gameAccountID: number, prefix: stringView, data: stringView) -> result: SendAddonMessageResult
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.SendTitleFriendInviteByName

```lua
C_BattleNet.SendTitleFriendInviteByName(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SendVerifiedBattleNetFriendInvite

```lua
C_BattleNet.SendVerifiedBattleNetFriendInvite()
```

### C_BattleNet.SendWhisper

```lua
C_BattleNet.SendWhisper(bnetAccountID: number, text: stringView) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RestrictedForMacroChatMessages  

### C_BattleNet.SetAFK

```lua
C_BattleNet.SetAFK(isAFK: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SetAppearOffline

```lua
C_BattleNet.SetAppearOffline(isAppearOffline: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SetBlocked

```lua
C_BattleNet.SetBlocked(bnetAccountID: number, block: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SetCustomMessage

```lua
C_BattleNet.SetCustomMessage(text: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SetCustomTitleFriendName

```lua
C_BattleNet.SetCustomTitleFriendName(id: number, customName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_BattleNet.SetDND

```lua
C_BattleNet.SetDND(isDND: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_BattleNet.SetFriendTags

```lua
C_BattleNet.SetFriendTags(id: number, friendTags: table<BattleNetFriendTag>)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### AuroraFriendsSearchInfo (Structure)

- `searchText: string`
- `isOnline: bool`
- `isOffline: bool`
- `isDND: bool`
- `isAFK: bool`
- `isInQueue: bool`
- `isAvailableForQueue: bool`
- `tags: table<BattleNetFriendTag>`

### BNetAccountInfo (Structure)

- `bnetAccountID: number`
- `accountName: string`
- `battleTag: string`
- `isFriend: bool`
- `isBattleTagFriend: bool`
- `friendLevel: BattleNetFriendLevel?`
- `lastOnlineTime: number`
- `isAFK: bool`
- `isDND: bool`
- `isFavorite: bool`
- `friendTags: table<BattleNetFriendTag>`
- `appearOffline: bool`
- `customMessage: string`
- `customMessageTime: number`
- `note: string`
- `rafLinkType: RafLinkType`
- `gameAccountInfo: BNetGameAccountInfo`

### BNetFriendInviteInfo (Structure)

- `inviteID: number`
- `accountName: kstringAuroraName`
- `creationTimestamp: number`
- `friendLevel: BattleNetFriendLevel?`

### BNetGameAccountInfo (Structure)

- `gameAccountID: number`
- `clientProgram: string`
- `isOnline: bool`
- `isGameBusy: bool`
- `isGameAFK: bool`
- `isAppearOffline: bool`
- `wowProjectID: number?`
- `characterName: string?`
- `realmName: string?`
- `realmDisplayName: string?`
- `realmID: number?`
- `factionName: string?`
- `raceName: string?`
- `classID: number?`
- `className: string?`
- `classFilename: cstring?`
- `areaName: string?`
- `characterLevel: number?`
- `richPresence: string?`
- `playerGuid: WOWGUID?`
- `canSummon: bool`
- `hasFocus: bool`
- `regionID: number`
- `isInCurrentRegion: bool`
- `timerunningSeasonID: number?`
