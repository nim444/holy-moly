# FriendList

Type: System  
Namespace: `C_FriendList`  
Environment: All

## Functions

### C_FriendList.AddFriend

```lua
C_FriendList.AddFriend(name: cstring, notes: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresFriendList  

### C_FriendList.AddIgnore

```lua
C_FriendList.AddIgnore(name: cstring) -> added: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.AddOrDelIgnore

```lua
C_FriendList.AddOrDelIgnore(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.AddOrRemoveFriend

```lua
C_FriendList.AddOrRemoveFriend(name: cstring, notes: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresFriendList  

### C_FriendList.DelIgnore

```lua
C_FriendList.DelIgnore(name: cstring) -> removed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.DelIgnoreByIndex

```lua
C_FriendList.DelIgnoreByIndex(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.GetFriendInfo

```lua
C_FriendList.GetFriendInfo(name: cstring) -> info: FriendInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresFriendList  

### C_FriendList.GetFriendInfoByIndex

```lua
C_FriendList.GetFriendInfoByIndex(index: luaIndex) -> info: FriendInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresFriendList  

### C_FriendList.GetIgnoreName

```lua
C_FriendList.GetIgnoreName(index: luaIndex) -> name: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.GetNumFriends

```lua
C_FriendList.GetNumFriends() -> numFriends: number
```

Flags: RequiresFriendList  

### C_FriendList.GetNumIgnores

```lua
C_FriendList.GetNumIgnores() -> numIgnores: number
```

Flags: RequiresFriendList  

### C_FriendList.GetNumOnlineFriends

```lua
C_FriendList.GetNumOnlineFriends() -> numOnline: number
```

Flags: RequiresFriendList  

### C_FriendList.GetNumWhoResults

```lua
C_FriendList.GetNumWhoResults() -> numWhos: number, totalNumWhos: number
```

Flags: RequiresFriendList  

### C_FriendList.GetSelectedFriend

```lua
C_FriendList.GetSelectedFriend() -> index: luaIndex?
```

Flags: RequiresFriendList  

### C_FriendList.GetSelectedIgnore

```lua
C_FriendList.GetSelectedIgnore() -> index: luaIndex?
```

Flags: RequiresFriendList  

### C_FriendList.GetWhoInfo

```lua
C_FriendList.GetWhoInfo(index: luaIndex) -> info: WhoInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresFriendList  

### C_FriendList.GetWhoRaceFilters

```lua
C_FriendList.GetWhoRaceFilters() -> filters: table<WhoFilter>
```

Flags: RequiresFriendList  

### C_FriendList.IsFriend

```lua
C_FriendList.IsFriend(guid: WOWGUID) -> isFriend: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.IsIgnored

```lua
C_FriendList.IsIgnored(token: cstring) -> isIgnored: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.IsIgnoredByGuid

```lua
C_FriendList.IsIgnoredByGuid(guid: WOWGUID) -> isIgnored: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.IsLegacyFriendSystemEnabled

```lua
C_FriendList.IsLegacyFriendSystemEnabled() -> isLegacyFriendSystemEnabled: bool
```

Flags: RequiresFriendList  

### C_FriendList.IsOnIgnoredList

```lua
C_FriendList.IsOnIgnoredList(token: cstring) -> isIgnored: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.RemoveFriend

```lua
C_FriendList.RemoveFriend(name: cstring) -> removed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.RemoveFriendByIndex

```lua
C_FriendList.RemoveFriendByIndex(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.SendWho

```lua
C_FriendList.SendWho(filter: cstring, origin: number?, filters: SendWhoFilters?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions, RequiresFriendList  

### C_FriendList.SetFriendNotes

```lua
C_FriendList.SetFriendNotes(name: cstring, notes: cstring) -> found: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.SetFriendNotesByIndex

```lua
C_FriendList.SetFriendNotesByIndex(index: luaIndex, notes: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.SetSelectedFriend

```lua
C_FriendList.SetSelectedFriend(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.SetSelectedIgnore

```lua
C_FriendList.SetSelectedIgnore(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.SetWhoToUi

```lua
C_FriendList.SetWhoToUi(whoToUi: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

### C_FriendList.ShowFriends

```lua
C_FriendList.ShowFriends()
```

Flags: RequiresFriendList  

### C_FriendList.SortWho

```lua
C_FriendList.SortWho(sorting: cstring, ascending: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresFriendList  

## Events

### BATTLE_NET_FRIEND_TAG_ENABLED_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### BATTLE_NET_TITLE_FRIEND_CUSTOM_NAME_ENABLED_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### BN_BLOCK_FAILED_TOO_MANY

Payload: `blockType: cstring`  
Flags: SynchronousEvent  

### BN_BLOCK_LIST_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### BN_CHAT_WHISPER_UNDELIVERABLE

Payload: `senderID: number`  
Flags: SynchronousEvent  

### BN_CONNECTED

Payload: `suppressNotification: bool = false`  
Flags: SynchronousEvent  

### BN_CUSTOM_MESSAGE_CHANGED

Payload: `id: number?`  
Flags: SynchronousEvent  

### BN_CUSTOM_MESSAGE_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### BN_DISCONNECTED

Payload: `result: bool, suppressNotification: bool = false`  
Flags: SynchronousEvent  

### BN_FRIEND_ACCOUNT_OFFLINE

Payload: `friendId: number, isCompanionApp: bool = false`  
Flags: SynchronousEvent  

### BN_FRIEND_ACCOUNT_ONLINE

Payload: `friendId: number, isCompanionApp: bool = false`  
Flags: SynchronousEvent  

### BN_FRIEND_INFO_CHANGED

Payload: `friendIndex: luaIndex?`  
Flags: SynchronousEvent  

### BN_FRIEND_INVITE_ADDED

Payload: `accountID: number`  
Flags: SynchronousEvent  

### BN_FRIEND_INVITE_LIST_INITIALIZED

Payload: `listSize: number`  
Flags: SynchronousEvent  

### BN_FRIEND_INVITE_REMOVED

Payload: `none`  
Flags: SynchronousEvent  

### BN_FRIEND_LIST_SIZE_CHANGED

Payload: `accountID: number?`  
Flags: SynchronousEvent  

### BN_INFO_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### BN_REQUEST_FOF_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

### CONFIRM_BATTLE_NET_FRIEND_INVITE_SHOW

Payload: `name: cstring, friendLevel: BattleNetFriendLevel`  
Flags: SynchronousEvent  

### FRIENDLIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### IGNORELIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LEGACY_FRIEND_SYSTEM_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### MUTELIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### NEW_MATCHMAKING_PARTY_INVITE

Payload: `none`  
Flags: SynchronousEvent  

### REJECTED_MATCHMAKING_PARTY_INVITE

Payload: `name: cstring`  
Flags: SynchronousEvent  

### SOCIAL_UI_FRIENDS_LIST_SYSTEM_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### WHO_LIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### FriendInfo (Structure)

- `connected: bool`
- `name: string`
- `className: string?`
- `area: string?`
- `notes: string?`
- `guid: WOWGUID`
- `level: number`
- `dnd: bool`
- `afk: bool`
- `rafLinkType: RafLinkType`

### SendWhoFilters (Structure)

- `classIDs: table<number>`
- `raceIDs: table<number>`
- `uiMapIDs: table<number>`

### WhoFilter (Structure)

- `name: string`
- `ID: number`

### WhoInfo (Structure)

- `fullName: string`
- `fullGuildName: string`
- `level: number`
- `raceStr: string`
- `classStr: string`
- `area: string`
- `filename: string?`
- `gender: number`
- `timerunningSeasonID: number?`

## Preconditions

- `RequiresFriendList` (FailureMode=ReturnNothing)
