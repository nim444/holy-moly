# PingManager

Type: System  
Namespace: `C_Ping`  
Environment: All

## Functions

### C_Ping.GetCooldownInfo

```lua
C_Ping.GetCooldownInfo() -> cooldownInfo: PingCooldownInfo
```

### C_Ping.GetDefaultPingOptions

```lua
C_Ping.GetDefaultPingOptions() -> pingTypes: table<PingTypeInfo>
```

### C_Ping.GetTextureKitForType

```lua
C_Ping.GetTextureKitForType(type: PingSubjectType) -> uiTextureKitID: textureKit
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Ping.IsPingSystemEnabled

```lua
C_Ping.IsPingSystemEnabled() -> isEnabled: bool
```

### C_Ping.SendMacroPing

```lua
C_Ping.SendMacroPing(macroInfo: PingMacroInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Ping.TogglePingListener

```lua
C_Ping.TogglePingListener(down: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### PING_SYSTEM_ERROR

Payload: `error: cstring`  
Flags: SynchronousEvent  

## Tables

### PingTypeInfo (Structure)

- `orderIndex: number`
- `type: PingSubjectType`
- `uiTextureKitID: textureKit`
