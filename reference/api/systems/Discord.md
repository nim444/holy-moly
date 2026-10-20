# Discord

Type: System  
Namespace: `C_Discord`  
Environment: All

## Functions

### C_Discord.Authorize

```lua
C_Discord.Authorize()
```

Flags: HasRestrictions  

### C_Discord.GetDiscordChannelName

```lua
C_Discord.GetDiscordChannelName(serverIndex: luaIndex, channelIndex: luaIndex) -> name: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GetDiscordUserID

```lua
C_Discord.GetDiscordUserID() -> userID: DiscordMemberOpaqueID
```

Flags: HasRestrictions  

### C_Discord.GetDiscordUserName

```lua
C_Discord.GetDiscordUserName(userID: DiscordMemberOpaqueID) -> userName: KStringDiscordUserName
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GetDisplayNameType

```lua
C_Discord.GetDisplayNameType() -> type: DiscordDisplayNameType
```

Flags: HasRestrictions  

### C_Discord.GetGuildLinkStatus

```lua
C_Discord.GetGuildLinkStatus() -> isFullyLinked: bool, linkedChannelName: string, linkedServerName: string
```

Flags: HasRestrictions  

### C_Discord.GetNumDiscordChannels

```lua
C_Discord.GetNumDiscordChannels(serverIndex: luaIndex) -> count: number, valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GetNumDiscordServers

```lua
C_Discord.GetNumDiscordServers() -> count: number
```

Flags: HasRestrictions  

### C_Discord.GetServerLinkableChannels

```lua
C_Discord.GetServerLinkableChannels(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GetServerName

```lua
C_Discord.GetServerName(index: luaIndex) -> name: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GuildLink

```lua
C_Discord.GuildLink(serverIndex: luaIndex, channelIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.GuildUnlink

```lua
C_Discord.GuildUnlink()
```

Flags: HasRestrictions  

### C_Discord.IsEnabled

```lua
C_Discord.IsEnabled() -> enabled: bool
```

### C_Discord.IsGuildChannelLinked

```lua
C_Discord.IsGuildChannelLinked() -> isLinked: bool
```

Flags: HasRestrictions  

### C_Discord.IsGuildSettingSet

```lua
C_Discord.IsGuildSettingSet(setting: DiscordGuildSettings) -> isSet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.IsUserOAuthed

```lua
C_Discord.IsUserOAuthed() -> hasOAuth: bool
```

Flags: HasRestrictions  

### C_Discord.IsVoiceEnabled

```lua
C_Discord.IsVoiceEnabled() -> enabled: bool
```

### C_Discord.RefreshAuth

```lua
C_Discord.RefreshAuth()
```

Flags: HasRestrictions  

### C_Discord.SetGuildSetting

```lua
C_Discord.SetGuildSetting(setting: DiscordGuildSettings, set: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Discord.UpdateDiscordServers

```lua
C_Discord.UpdateDiscordServers()
```

Flags: HasRestrictions  

### C_Discord.UpdateGuildLobby

```lua
C_Discord.UpdateGuildLobby()
```

Flags: HasRestrictions  

## Events

### DISCORD_GUILD_ACHIEVEMENT

Payload: `achievementID: number`  
Flags: SynchronousEvent  

### DISCORD_GUILD_LOBBY_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### DISCORD_GUILD_SETTINGS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### DISCORD_LINK_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### DISCORD_SERVER_LIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### DISCORD_STATUS_UPDATE

Payload: `none`  
Flags: SynchronousEvent
