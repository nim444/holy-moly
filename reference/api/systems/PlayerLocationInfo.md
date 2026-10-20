# PlayerLocationInfo

Type: System  
Namespace: `C_PlayerInfo`  
Environment: All

## Functions

### C_PlayerInfo.GUIDIsPlayer

```lua
C_PlayerInfo.GUIDIsPlayer(guid: WOWGUID) -> isPlayer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetClass

```lua
C_PlayerInfo.GetClass(playerLocation: PlayerLocation) -> className: cstring?, classFilename: cstring?, classID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetName

```lua
C_PlayerInfo.GetName(playerLocation: PlayerLocation) -> name: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PlayerInfo.GetRace

```lua
C_PlayerInfo.GetRace(playerLocation: PlayerLocation) -> raceID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetSex

```lua
C_PlayerInfo.GetSex(playerLocation: PlayerLocation) -> sex: UnitSex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.IsConnected

```lua
C_PlayerInfo.IsConnected(playerLocation: PlayerLocation?) -> isConnected: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.UnitIsSameServer

```lua
C_PlayerInfo.UnitIsSameServer(playerLocation: PlayerLocation) -> unitIsSameServer: bool
```

Secret: SecretArguments=AllowedWhenUntainted
