# ReputationInfo

Type: System  
Namespace: `C_Reputation`  
Environment: All

## Functions

### C_Reputation.AreLegacyReputationsShown

```lua
C_Reputation.AreLegacyReputationsShown() -> areLegacyReputationsShown: bool
```

### C_Reputation.CollapseAllFactionHeaders

```lua
C_Reputation.CollapseAllFactionHeaders()
```

### C_Reputation.CollapseFactionHeader

```lua
C_Reputation.CollapseFactionHeader(factionSortIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.ExpandAllFactionHeaders

```lua
C_Reputation.ExpandAllFactionHeaders()
```

### C_Reputation.ExpandFactionHeader

```lua
C_Reputation.ExpandFactionHeader(factionSortIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.GetFactionDataByID

```lua
C_Reputation.GetFactionDataByID(factionID: number) -> factionData: FactionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.GetFactionDataByIndex

```lua
C_Reputation.GetFactionDataByIndex(factionSortIndex: luaIndex) -> factionData: FactionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.GetFactionParagonInfo

```lua
C_Reputation.GetFactionParagonInfo(factionID: number) -> currentValue: number, threshold: number, rewardQuestID: number, hasRewardPending: bool, tooLowLevelForParagon: bool, paragonStorageLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Reputation.GetGuildFactionData

```lua
C_Reputation.GetGuildFactionData() -> guildFactionData: FactionData?
```

### C_Reputation.GetGuildRepExpirationTime

```lua
C_Reputation.GetGuildRepExpirationTime() -> expirationTime: number?
```

### C_Reputation.GetNumFactions

```lua
C_Reputation.GetNumFactions() -> numFactions: number
```

### C_Reputation.GetReputationSortType

```lua
C_Reputation.GetReputationSortType() -> sortType: ReputationSortType
```

### C_Reputation.GetSelectedFaction

```lua
C_Reputation.GetSelectedFaction() -> selectedFactionSortIndex: luaIndex
```

### C_Reputation.GetWatchedFactionData

```lua
C_Reputation.GetWatchedFactionData() -> watchedFactionData: FactionData?
```

### C_Reputation.IsAccountWideReputation

```lua
C_Reputation.IsAccountWideReputation(factionID: number) -> isAccountWide: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.IsFactionActive

```lua
C_Reputation.IsFactionActive(factionSortIndex: luaIndex) -> isActive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.IsFactionParagon

```lua
C_Reputation.IsFactionParagon(factionID: number) -> factionIsParagon: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.IsFactionParagonForCurrentPlayer

```lua
C_Reputation.IsFactionParagonForCurrentPlayer(factionID: number) -> currentPlayerHasParagon: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.IsMajorFaction

```lua
C_Reputation.IsMajorFaction(factionID: number) -> isMajorFaction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.RequestFactionParagonPreloadRewardData

```lua
C_Reputation.RequestFactionParagonPreloadRewardData(factionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetFactionActive

```lua
C_Reputation.SetFactionActive(factionSortIndex: luaIndex, setActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetLegacyReputationsShown

```lua
C_Reputation.SetLegacyReputationsShown(showLegacyReputations: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetReputationSortType

```lua
C_Reputation.SetReputationSortType(sortType: ReputationSortType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetSelectedFaction

```lua
C_Reputation.SetSelectedFaction(factionSortIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetWatchedFactionByID

```lua
C_Reputation.SetWatchedFactionByID(factionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.SetWatchedFactionByIndex

```lua
C_Reputation.SetWatchedFactionByIndex(factionSortIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Reputation.ToggleFactionAtWar

```lua
C_Reputation.ToggleFactionAtWar(factionSortIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### FACTION_STANDING_CHANGED

Payload: `factionID: number, updatedStanding: number`  
Flags: SynchronousEvent  

## Tables

### ReputationSortType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Account | 1 |
| Character | 2 |

### FactionData (Structure)

- `factionID: number`
- `name: cstring`
- `description: cstring`
- `reaction: luaIndex`
- `currentReactionThreshold: number`
- `nextReactionThreshold: number`
- `currentStanding: number`
- `atWarWith: bool`
- `canToggleAtWar: bool`
- `isChild: bool`
- `isHeader: bool`
- `isHeaderWithRep: bool`
- `isCollapsed: bool`
- `isWatched: bool`
- `hasBonusRepGain: bool`
- `canSetInactive: bool`
- `isAccountWide: bool`
