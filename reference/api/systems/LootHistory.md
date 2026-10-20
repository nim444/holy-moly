# LootHistory

Type: System  
Namespace: `C_LootHistory`  
Environment: All

## Functions

### C_LootHistory.GetAllEncounterInfos

```lua
C_LootHistory.GetAllEncounterInfos() -> infos: table<EncounterLootInfo>
```

### C_LootHistory.GetInfoForEncounter

```lua
C_LootHistory.GetInfoForEncounter(encounterID: number) -> info: EncounterLootInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LootHistory.GetLootHistoryTime

```lua
C_LootHistory.GetLootHistoryTime() -> time: number
```

### C_LootHistory.GetSortedDropsForEncounter

```lua
C_LootHistory.GetSortedDropsForEncounter(encounterID: number) -> drops: table<EncounterLootDropInfo>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LootHistory.GetSortedInfoForDrop

```lua
C_LootHistory.GetSortedInfoForDrop(encounterID: number, lootListKey: number) -> info: EncounterLootDropInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LOOT_HISTORY_CLEAR_HISTORY

Payload: `none`  
Flags: SynchronousEvent  

### LOOT_HISTORY_GO_TO_ENCOUNTER

Payload: `encounterID: number`  
Flags: UniqueEvent  

### LOOT_HISTORY_ONE_HUNDRED_ROLL

Payload: `encounterID: number, lootListKey: number`  
Flags: SynchronousEvent  

### LOOT_HISTORY_UPDATE_DROP

Payload: `encounterID: number, lootListKey: number`  
Flags: UniqueEvent  

### LOOT_HISTORY_UPDATE_ENCOUNTER

Payload: `encounterID: number`  
Flags: UniqueEvent  

## Tables

### EncounterLootDropRollState (Enumeration)

| Name | Value |
|---|---|
| NeedMainSpec | 0 |
| NeedOffSpec | 1 |
| Transmog | 2 |
| Greed | 3 |
| NoRoll | 4 |
| Pass | 5 |

### EncounterLootDropInfo (Structure)

- `lootListKey: number`
- `itemHyperlink: string`
- `playerRollState: EncounterLootDropRollState`
- `currentLeader: EncounterLootDropRollInfo?`
- `isTied: bool = false`
- `winner: EncounterLootDropRollInfo?`
- `allPassed: bool = false`
- `rollInfos: table<EncounterLootDropRollInfo>`
- `startTime: number`
- `duration: number`

### EncounterLootDropRollInfo (Structure)

- `playerName: string`
- `playerGUID: WOWGUID`
- `playerClass: string`
- `isSelf: bool`
- `state: EncounterLootDropRollState`
- `isWinner: bool = false`
- `roll: number?`

### EncounterLootDrops (Structure)

- `encounterID: number`
- `drops: table<EncounterLootDropInfo>`

### EncounterLootInfo (Structure)

- `encounterName: string`
- `encounterID: number`
- `startTime: number`
- `duration: number`
