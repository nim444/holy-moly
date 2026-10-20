# TransmogrifySets

Type: System  
Namespace: `C_TransmogSets`  
Environment: All

## Functions

### C_TransmogSets.ClearLatestSource

```lua
C_TransmogSets.ClearLatestSource()
```

### C_TransmogSets.ClearNewSource

```lua
C_TransmogSets.ClearNewSource(sourceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.ClearSetNewSourcesForSlot

```lua
C_TransmogSets.ClearSetNewSourcesForSlot(transmogSetID: number, slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.GetAllSets

```lua
C_TransmogSets.GetAllSets() -> sets: table<TransmogSetInfo>
```

### C_TransmogSets.GetAllSourceIDs

```lua
C_TransmogSets.GetAllSourceIDs(transmogSetID: number) -> sources: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetAvailableSets

```lua
C_TransmogSets.GetAvailableSets() -> sets: table<TransmogSetInfo>
```

### C_TransmogSets.GetBaseSetID

```lua
C_TransmogSets.GetBaseSetID(transmogSetID: number) -> baseTransmogSetID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetBaseSets

```lua
C_TransmogSets.GetBaseSets() -> sets: table<TransmogSetInfo>
```

### C_TransmogSets.GetBaseSetsFilter

```lua
C_TransmogSets.GetBaseSetsFilter(index: luaIndex) -> isChecked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetCameraIDs

```lua
C_TransmogSets.GetCameraIDs() -> detailsCameraID: number?, vendorCameraID: number?
```

### C_TransmogSets.GetFilteredBaseSetsCounts

```lua
C_TransmogSets.GetFilteredBaseSetsCounts() -> numCollected: number, numTotal: number
```

### C_TransmogSets.GetFullBaseSetsCounts

```lua
C_TransmogSets.GetFullBaseSetsCounts() -> numCollected: number, numTotal: number
```

### C_TransmogSets.GetIsFavorite

```lua
C_TransmogSets.GetIsFavorite(transmogSetID: number) -> isFavorite: bool, isGroupFavorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetLatestSource

```lua
C_TransmogSets.GetLatestSource() -> sourceID: number
```

### C_TransmogSets.GetSetInfo

```lua
C_TransmogSets.GetSetInfo(transmogSetID: number) -> set: TransmogSetInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSetNewSources

```lua
C_TransmogSets.GetSetNewSources(transmogSetID: number) -> sourceIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSetPrimaryAppearances

```lua
C_TransmogSets.GetSetPrimaryAppearances(transmogSetID: number) -> apppearances: table<TransmogSetPrimaryAppearanceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSetsContainingSourceID

```lua
C_TransmogSets.GetSetsContainingSourceID(sourceID: number) -> setIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSetsFilter

```lua
C_TransmogSets.GetSetsFilter(index: luaIndex) -> isChecked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSourceIDsForSlot

```lua
C_TransmogSets.GetSourceIDsForSlot(transmogSetID: number, slot: luaIndex) -> sources: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetSourcesForSlot

```lua
C_TransmogSets.GetSourcesForSlot(transmogSetID: number, slot: luaIndex) -> sources: table<AppearanceSourceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.GetTransmogSetsClassFilter

```lua
C_TransmogSets.GetTransmogSetsClassFilter() -> classID: number
```

### C_TransmogSets.GetUsableSets

```lua
C_TransmogSets.GetUsableSets() -> sets: table<TransmogSetInfo>
```

### C_TransmogSets.GetValidBaseSetsCountsForCharacter

```lua
C_TransmogSets.GetValidBaseSetsCountsForCharacter() -> numCollected: number, numTotal: number
```

### C_TransmogSets.GetValidClassForSet

```lua
C_TransmogSets.GetValidClassForSet(transmogSetID: number) -> classID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.GetVariantSets

```lua
C_TransmogSets.GetVariantSets(transmogSetID: number) -> sets: table<TransmogSetInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogSets.HasAnyValidSets

```lua
C_TransmogSets.HasAnyValidSets() -> hasAnyValidSets: bool
```

### C_TransmogSets.HasAvailableSets

```lua
C_TransmogSets.HasAvailableSets() -> hasAvailableSets: bool
```

### C_TransmogSets.HasUsableSets

```lua
C_TransmogSets.HasUsableSets() -> hasUsableSets: bool
```

### C_TransmogSets.IsBaseSetCollected

```lua
C_TransmogSets.IsBaseSetCollected(transmogSetID: number) -> isCollected: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.IsNewSource

```lua
C_TransmogSets.IsNewSource(sourceID: number) -> isNew: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.IsSetVisible

```lua
C_TransmogSets.IsSetVisible(transmogSetID: number) -> isVisible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.IsUsingDefaultBaseSetsFilters

```lua
C_TransmogSets.IsUsingDefaultBaseSetsFilters() -> isUsingDefaultBaseSetsFilters: bool
```

### C_TransmogSets.IsUsingDefaultSetsFilters

```lua
C_TransmogSets.IsUsingDefaultSetsFilters() -> isUsingDefaultSetsFilters: bool
```

### C_TransmogSets.SetBaseSetsFilter

```lua
C_TransmogSets.SetBaseSetsFilter(index: luaIndex, isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.SetDefaultBaseSetsFilters

```lua
C_TransmogSets.SetDefaultBaseSetsFilters()
```

### C_TransmogSets.SetDefaultSetsFilters

```lua
C_TransmogSets.SetDefaultSetsFilters()
```

### C_TransmogSets.SetHasNewSources

```lua
C_TransmogSets.SetHasNewSources(transmogSetID: number) -> hasNewSources: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.SetHasNewSourcesForSlot

```lua
C_TransmogSets.SetHasNewSourcesForSlot(transmogSetID: number, slot: luaIndex) -> hasNewSources: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.SetIsFavorite

```lua
C_TransmogSets.SetIsFavorite(transmogSetID: number, isFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.SetSetsFilter

```lua
C_TransmogSets.SetSetsFilter(index: luaIndex, isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogSets.SetTransmogSetsClassFilter

```lua
C_TransmogSets.SetTransmogSetsClassFilter(classID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### TransmogSetInfo (Structure)

- `setID: number`
- `name: string`
- `baseSetID: number?`
- `description: cstring?`
- `label: cstring?`
- `expansionID: number`
- `patchID: number`
- `uiOrder: number`
- `classMask: number`
- `hiddenUntilCollected: bool`
- `requiredFaction: cstring?`
- `collected: bool`
- `favorite: bool`
- `limitedTimeSet: bool`
- `validForCharacter: bool`
- `grantAsPrecedingVariant: bool`

### TransmogSetPrimaryAppearanceInfo (Structure)

- `appearanceID: number`
- `collected: bool`
