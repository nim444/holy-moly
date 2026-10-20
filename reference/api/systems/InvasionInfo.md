# InvasionInfo

Type: System  
Namespace: `C_InvasionInfo`  
Environment: All

## Functions

### C_InvasionInfo.AreInvasionsAvailable

```lua
C_InvasionInfo.AreInvasionsAvailable() -> areInvasionsAvailable: bool
```

Returns true if invasions are active in the same physical area as the player.

### C_InvasionInfo.GetInvasionForUiMapID

```lua
C_InvasionInfo.GetInvasionForUiMapID(uiMapID: number) -> invasionID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_InvasionInfo.GetInvasionInfo

```lua
C_InvasionInfo.GetInvasionInfo(invasionID: number) -> invasionInfo: InvasionMapInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_InvasionInfo.GetInvasionTimeLeft

```lua
C_InvasionInfo.GetInvasionTimeLeft(invasionID: number) -> timeLeftMinutes: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### InvasionMapInfo (Structure)

- `invasionID: number`
- `name: string`
- `position: vector2`
- `atlasName: textureAtlas`
- `rewardQuestID: number?`
