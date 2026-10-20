# EncounterJournal

Type: System  
Namespace: `C_EncounterJournal`  
Environment: All

## Functions

### C_EncounterJournal.GetBaseDifficultyID

```lua
C_EncounterJournal.GetBaseDifficultyID(difficultyID: number) -> baseDifficultyID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.GetDungeonEntrancesForMap

```lua
C_EncounterJournal.GetDungeonEntrancesForMap(uiMapID: number) -> dungeonEntrances: table<DungeonEntranceMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.GetEncounterJournalLink

```lua
C_EncounterJournal.GetEncounterJournalLink(linkType: JournalLinkTypes, ID: number, displayText: string, difficultyID: number) -> link: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.GetEncountersOnMap

```lua
C_EncounterJournal.GetEncountersOnMap(uiMapID: number) -> encounters: table<EncounterJournalMapEncounterInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.GetInstanceForGameMap

```lua
C_EncounterJournal.GetInstanceForGameMap(mapID: number) -> journalInstanceID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

GameMap as opposed to UIMap since we use a mapID not a uiMapID.

### C_EncounterJournal.GetLootInfo

```lua
C_EncounterJournal.GetLootInfo(id: number) -> itemInfo: EncounterJournalItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.GetLootInfoByIndex

```lua
C_EncounterJournal.GetLootInfoByIndex(index: luaIndex, encounterIndex: luaIndex?) -> itemInfo: EncounterJournalItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncounterJournal.GetSectionIconFlags

```lua
C_EncounterJournal.GetSectionIconFlags(sectionID: number) -> iconFlags: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

Represents the icon indices for this EJ section.  An icon index can be used to arrive at texture coordinates for specific encounter types, e.g.: EncounterJournal_SetFlagIcon

### C_EncounterJournal.GetSectionInfo

```lua
C_EncounterJournal.GetSectionInfo(sectionID: number) -> info: EncounterJournalSectionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncounterJournal.GetSlotFilter

```lua
C_EncounterJournal.GetSlotFilter() -> filter: ItemSlotFilterType
```

### C_EncounterJournal.InitalizeSelectedTier

```lua
C_EncounterJournal.InitalizeSelectedTier()
```

### C_EncounterJournal.InstanceHasDifficultyID

```lua
C_EncounterJournal.InstanceHasDifficultyID(difficultyID: number) -> hasDifficultyID: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.InstanceHasLoot

```lua
C_EncounterJournal.InstanceHasLoot(instanceID: number?) -> hasLoot: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.IsEncounterComplete

```lua
C_EncounterJournal.IsEncounterComplete(journalEncounterID: number) -> isEncounterComplete: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.OnClose

```lua
C_EncounterJournal.OnClose()
```

Flags: HasRestrictions  

### C_EncounterJournal.OnOpen

```lua
C_EncounterJournal.OnOpen()
```

Flags: HasRestrictions  

### C_EncounterJournal.ResetSlotFilter

```lua
C_EncounterJournal.ResetSlotFilter()
```

### C_EncounterJournal.SetPreviewMythicPlusLevel

```lua
C_EncounterJournal.SetPreviewMythicPlusLevel(level: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.SetPreviewPvpTier

```lua
C_EncounterJournal.SetPreviewPvpTier(tier: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.SetSlotFilter

```lua
C_EncounterJournal.SetSlotFilter(filterSlot: ItemSlotFilterType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterJournal.SetTab

```lua
C_EncounterJournal.SetTab(tabIdx: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_EncounterJournal.StartArathiRPE

```lua
C_EncounterJournal.StartArathiRPE()
```

## Events

### EJ_DIFFICULTY_UPDATE

Payload: `difficultyID: number`  
Flags: SynchronousEvent  

### EJ_LOOT_DATA_RECIEVED

Payload: `itemID: number?`  
Flags: SynchronousEvent, UniqueEvent  

### SHOW_JOURNEYS_UI

Payload: `factionID: number`  
Flags: SynchronousEvent  
Signaled when the UI needs to display the journeys dashboard at a specific faction.

## Tables

### ItemSlotFilterType (Enumeration)

| Name | Value |
|---|---|
| Head | 0 |
| Neck | 1 |
| Shoulder | 2 |
| Cloak | 3 |
| Chest | 4 |
| Wrist | 5 |
| Hand | 6 |
| Waist | 7 |
| Legs | 8 |
| Feet | 9 |
| MainHand | 10 |
| OffHand | 11 |
| Finger | 12 |
| Trinket | 13 |
| Other | 14 |
| NoFilter | 15 |

### DungeonEntranceMapInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `description: cstring`
- `atlasName: string`
- `journalInstanceID: number`

### EncounterJournalItemInfo (Structure)

- `itemID: number`
- `encounterID: number?`
- `name: string?`
- `itemQuality: string?`
- `filterType: ItemSlotFilterType?`
- `icon: fileID?`
- `slot: string?`
- `armorType: string?`
- `link: string?`
- `handError: bool?`
- `weaponTypeError: bool?`
- `displayAsPerPlayerLoot: bool?`
- `displayAsVeryRare: bool?`
- `displayAsExtremelyRare: bool?`
- `displaySeasonID: number?`

### EncounterJournalMapEncounterInfo (Structure)

- `encounterID: number`
- `mapX: number`
- `mapY: number`

### EncounterJournalSectionInfo (Structure)

- `spellID: number`
- `title: cstring`
- `description: string?`
- `headerType: number`
- `abilityIcon: fileID`
- `creatureDisplayID: number`
- `uiModelSceneID: number`
- `siblingSectionID: number?`
- `firstChildSectionID: number?`
- `filteredByDifficulty: bool`
- `link: string`
- `startsOpen: bool`
