# ContentTrackingTypes

Type: None

## Tables

### ContentTrackingError (Enumeration)

| Name | Value |
|---|---|
| Untrackable | 0 |
| MaxTracked | 1 |
| AlreadyTracked | 2 |

### ContentTrackingResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| DataPending | 1 |
| Failure | 2 |

### ContentTrackingStopType (Enumeration)

| Name | Value |
|---|---|
| Invalidated | 0 |
| Collected | 1 |
| Manual | 2 |

### ContentTrackingTargetType (Enumeration)

| Name | Value |
|---|---|
| JournalEncounter | 0 |
| Vendor | 1 |
| Achievement | 2 |
| Profession | 3 |
| Quest | 4 |

### ContentTrackingType (Enumeration)

| Name | Value |
|---|---|
| Appearance | 0 |
| Mount | 1 |
| Achievement | 2 |
| Decor | 3 |

### ContentTrackingConsts (Constants)

| Name | Type | Value |
|---|---|---|
| MaxTrackedCollectableSources | number | 15 |
| MaxTrackedAchievements | number | 10 |

### ContentTrackingMapInfo (Structure)

- `x: number`
- `y: number`
- `trackableType: ContentTrackingType`
- `trackableID: number`
- `targetType: ContentTrackingTargetType`
- `targetID: number`
- `waypointText: string`

### EncounterTrackingInfo (Structure)

- `encounterName: cstring`
- `journalEncounterID: number?`
- `journalInstanceID: number?`
- `instanceName: cstring`
- `subText: cstring?`
- `difficultyID: number?`
- `lfgDungeonID: number?`
- `groupFinderActivityID: number?`

### VendorTrackingInfo (Structure)

- `creatureName: cstring`
- `zoneName: string?`
- `currencyType: number?`
- `cost: BigUInteger?`
