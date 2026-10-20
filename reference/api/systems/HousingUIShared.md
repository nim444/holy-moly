# HousingUIShared

Type: None

## Tables

### HouseLevelRewardType (Enumeration)

| Name | Value |
|---|---|
| Value | 0 |
| Object | 1 |

### HouseLevelRewardValueType (Enumeration)

| Name | Value |
|---|---|
| ExteriorDecor | 0 |
| InteriorDecor | 1 |
| Rooms | 2 |
| Fixtures | 3 |

### HouseVisitType (Enumeration)

| Name | Value |
|---|---|
| Unknown | 0 |
| Friend | 1 |
| Guild | 2 |
| Party | 3 |

### HouseInfo (Structure)

- `plotID: number`
- `houseName: string?`
- `ownerName: string?`
- `plotCost: number?`
- `neighborhoodName: string?`
- `moveOutTime: time_t?`
- `plotReserved: bool?`
- `neighborhoodGUID: WOWGUID?`
- `houseGUID: WOWGUID?`

### HouseLevelFavor (Structure)

- `houseGUID: WOWGUID?`
- `houseLevel: number`
- `houseFavor: number`

### HouseLevelInfo (Structure)

- `level: number` This specific house's current level, determined/increasesd by earning house xp
- `interiorDecorPlacementBudget: number` Current max decor placement budget for inside the house; Can be increased via house level
- `exteriorDecorPlacementBudget: number` Current max decor placement budget for the house exterior/in the house's plot; Can be increased via house level
- `roomPlacementBudget: number` Current max room placement budget for the house; Can be increased via house level
- `exteriorFixtureBudget: number`

### HouseLevelReward (Structure)

- `type: HouseLevelRewardType`
- `asset: ModelAsset?`
- `iconTexture: FileAsset?`
- `iconAtlas: textureAtlas?`
- `objectName: string?`
- `tooltipText: string?`
- `valueType: HouseLevelRewardValueType?`
- `oldValue: number?`
- `newValue: number?`

### HouseOwnerCharacterInfo (Structure)

- `characterName: string`
- `classID: number`
- `error: HouseOwnerError`
- `playerGUID: WOWGUID`

### HouseholdMemberInfo (Structure)

- `characterName: string`
- `classID: number`

### NeighborhoodInfo (Structure)

- `neighborhoodType: NeighborhoodType`
- `neighborhoodOwnerType: NeighborhoodOwnerType = None`
- `neighborhoodName: string`
- `neighborhoodGUID: WOWGUID`
- `ownerGUID: WOWGUID`
- `suggestionReason: HouseFinderSuggestionReason?`
- `ownerName: string?`
- `locationName: string?`

### NeighborhoodPlotMapInfo (Structure)

- `mapPosition: vector2`
- `plotDataID: number`
- `plotID: number`
- `ownerType: HousingPlotOwnerType = None`
- `plotCost: number?`
- `ownerName: string?`

### NeighborhoodRosterMemberInfo (Structure)

- `playerGUID: WOWGUID`
- `residentName: string`
- `residentType: ResidentType`
- `isOnline: bool`
- `plotID: number`
- `subdivision: number?`

### NeighborhoodRosterMemberUpdateInfo (Structure)

- `playerGUID: WOWGUID`
- `residentType: ResidentType`
- `isOnline: bool`
