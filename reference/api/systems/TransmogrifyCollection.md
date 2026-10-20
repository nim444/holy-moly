# TransmogrifyCollection

Type: System  
Namespace: `C_TransmogCollection`  
Environment: All

## Functions

### C_TransmogCollection.AccountCanCollectSource

```lua
C_TransmogCollection.AccountCanCollectSource(sourceID: number) -> hasItemData: bool, canCollect: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.AreAllCollectionTypeFiltersChecked

```lua
C_TransmogCollection.AreAllCollectionTypeFiltersChecked() -> areAllCollectionTypeFiltersChecked: bool
```

### C_TransmogCollection.AreAllSourceTypeFiltersChecked

```lua
C_TransmogCollection.AreAllSourceTypeFiltersChecked() -> areAllSourceTypeFiltersChecked: bool
```

### C_TransmogCollection.CanAppearanceHaveIllusion

```lua
C_TransmogCollection.CanAppearanceHaveIllusion(appearanceID: number) -> canHaveIllusion: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.ClearNewAppearance

```lua
C_TransmogCollection.ClearNewAppearance(visualID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.ClearSearch

```lua
C_TransmogCollection.ClearSearch(searchType: TransmogSearchType) -> completed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.DeleteCustomSet

```lua
C_TransmogCollection.DeleteCustomSet(customSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.EndSearch

```lua
C_TransmogCollection.EndSearch()
```

### C_TransmogCollection.GetAllAppearanceSources

```lua
C_TransmogCollection.GetAllAppearanceSources(itemAppearanceID: number) -> itemModifiedAppearanceIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetAllFactionsShown

```lua
C_TransmogCollection.GetAllFactionsShown() -> shown: bool
```

### C_TransmogCollection.GetAllRacesShown

```lua
C_TransmogCollection.GetAllRacesShown() -> shown: bool
```

### C_TransmogCollection.GetAppearanceCameraID

```lua
C_TransmogCollection.GetAppearanceCameraID(itemAppearanceID: number, variation: TransmogCameraVariation?) -> cameraID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetAppearanceCameraIDBySource

```lua
C_TransmogCollection.GetAppearanceCameraIDBySource(itemModifiedAppearanceID: number, variation: TransmogCameraVariation?) -> cameraID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetAppearanceInfoBySource

```lua
C_TransmogCollection.GetAppearanceInfoBySource(itemModifiedAppearanceID: number) -> info: TransmogAppearanceInfoBySourceData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetAppearanceSourceDrops

```lua
C_TransmogCollection.GetAppearanceSourceDrops(itemModifiedAppearanceID: number) -> encounterInfo: table<TransmogAppearanceJournalEncounterInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetAppearanceSourceInfo

```lua
C_TransmogCollection.GetAppearanceSourceInfo(itemModifiedAppearanceID: number) -> info: TransmogAppearanceSourceInfoData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetAppearanceSources

```lua
C_TransmogCollection.GetAppearanceSources(appearanceID: number, categoryType: TransmogCollectionType?, transmogLocation: TransmogLocation?) -> sources: table<AppearanceSourceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetArtifactAppearanceStrings

```lua
C_TransmogCollection.GetArtifactAppearanceStrings(appearanceID: number) -> name: cstring, hyperlink: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCategoryAppearances

```lua
C_TransmogCollection.GetCategoryAppearances(category: TransmogCollectionType, transmogLocation: TransmogLocation?, option: TransmogOutfitSlotOption?) -> appearances: table<TransmogCategoryAppearanceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCategoryCollectedCount

```lua
C_TransmogCollection.GetCategoryCollectedCount(category: TransmogCollectionType) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetCategoryForItem

```lua
C_TransmogCollection.GetCategoryForItem(itemModifiedAppearanceID: number) -> collectionCategory: TransmogCollectionType
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCategoryInfo

```lua
C_TransmogCollection.GetCategoryInfo(category: TransmogCollectionType) -> name: cstring, isWeapon: bool = false, canHaveIllusions: bool = false, canMainHand: bool = false, canOffHand: bool = false, canRanged: bool = false
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCategoryTotal

```lua
C_TransmogCollection.GetCategoryTotal(category: TransmogCollectionType) -> total: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetClassFilter

```lua
C_TransmogCollection.GetClassFilter() -> classID: number
```

### C_TransmogCollection.GetCollectedShown

```lua
C_TransmogCollection.GetCollectedShown() -> shown: bool
```

### C_TransmogCollection.GetCustomSetHyperlinkFromItemTransmogInfoList

```lua
C_TransmogCollection.GetCustomSetHyperlinkFromItemTransmogInfoList(itemTransmogInfoList: table<ItemTransmogInfo>) -> hyperlink: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCustomSetInfo

```lua
C_TransmogCollection.GetCustomSetInfo(customSetID: number) -> name: cstring, icon: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCustomSetItemTransmogInfoList

```lua
C_TransmogCollection.GetCustomSetItemTransmogInfoList(customSetID: number) -> list: table<ItemTransmogInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetCustomSets

```lua
C_TransmogCollection.GetCustomSets() -> customSetID: table<number>
```

### C_TransmogCollection.GetFallbackWeaponAppearance

```lua
C_TransmogCollection.GetFallbackWeaponAppearance() -> appearanceID: number?
```

### C_TransmogCollection.GetFilteredCategoryCollectedCount

```lua
C_TransmogCollection.GetFilteredCategoryCollectedCount(category: TransmogCollectionType) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetFilteredCategoryTotal

```lua
C_TransmogCollection.GetFilteredCategoryTotal(category: TransmogCollectionType) -> total: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetIllusionInfo

```lua
C_TransmogCollection.GetIllusionInfo(illusionID: number) -> info: TransmogIllusionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetIllusionStrings

```lua
C_TransmogCollection.GetIllusionStrings(illusionID: number) -> name: string, hyperlink: string, sourceText: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetIllusions

```lua
C_TransmogCollection.GetIllusions(category: TransmogCollectionType?) -> illusions: table<TransmogIllusionInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetInspectItemTransmogInfoList

```lua
C_TransmogCollection.GetInspectItemTransmogInfoList() -> list: table<ItemTransmogInfo>
```

Flags: MayReturnNothing  

### C_TransmogCollection.GetIsAppearanceFavorite

```lua
C_TransmogCollection.GetIsAppearanceFavorite(itemAppearanceID: number) -> isFavorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.GetItemInfo

```lua
C_TransmogCollection.GetItemInfo(itemInfo: ItemInfo) -> itemAppearanceID: number, itemModifiedAppearanceID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetItemTransmogInfoListFromCustomSetHyperlink

```lua
C_TransmogCollection.GetItemTransmogInfoListFromCustomSetHyperlink(hyperlink: cstring) -> list: table<ItemTransmogInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetLatestAppearance

```lua
C_TransmogCollection.GetLatestAppearance() -> visualID: number, category: TransmogCollectionType
```

Flags: MayReturnNothing  

### C_TransmogCollection.GetNumMaxCustomSets

```lua
C_TransmogCollection.GetNumMaxCustomSets() -> maxCustomSets: number
```

### C_TransmogCollection.GetNumTransmogSources

```lua
C_TransmogCollection.GetNumTransmogSources() -> count: number
```

### C_TransmogCollection.GetPairedArtifactAppearance

```lua
C_TransmogCollection.GetPairedArtifactAppearance(itemModifiedAppearanceID: number) -> pairedItemModifiedAppearanceID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetSourceIcon

```lua
C_TransmogCollection.GetSourceIcon(itemModifiedAppearanceID: number) -> icon: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetSourceInfo

```lua
C_TransmogCollection.GetSourceInfo(sourceID: number) -> sourceInfo: AppearanceSourceInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetSourceItemID

```lua
C_TransmogCollection.GetSourceItemID(itemModifiedAppearanceID: number) -> itemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetSourceRequiredHoliday

```lua
C_TransmogCollection.GetSourceRequiredHoliday(itemModifiedAppearanceID: number) -> holidayName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.GetUncollectedShown

```lua
C_TransmogCollection.GetUncollectedShown() -> shown: bool
```

### C_TransmogCollection.GetValidAppearanceSourcesForClass

```lua
C_TransmogCollection.GetValidAppearanceSourcesForClass(appearanceID: number, classID: number, categoryType: TransmogCollectionType?, transmogLocation: TransmogLocation?) -> sources: table<AppearanceSourceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogCollection.HasAnyAppearance

```lua
C_TransmogCollection.HasAnyAppearance() -> hasAnyAppearance: bool
```

### C_TransmogCollection.HasFavorites

```lua
C_TransmogCollection.HasFavorites() -> hasFavorites: bool
```

### C_TransmogCollection.IsAppearanceHiddenVisual

```lua
C_TransmogCollection.IsAppearanceHiddenVisual(appearanceID: number) -> isHiddenVisual: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsCategoryValidForItem

```lua
C_TransmogCollection.IsCategoryValidForItem(category: TransmogCollectionType, itemInfo: ItemInfo) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsNewAppearance

```lua
C_TransmogCollection.IsNewAppearance(visualID: number) -> isNew: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsSearchDBLoading

```lua
C_TransmogCollection.IsSearchDBLoading() -> isLoading: bool
```

### C_TransmogCollection.IsSearchInProgress

```lua
C_TransmogCollection.IsSearchInProgress(searchType: TransmogSearchType) -> inProgress: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsSourceTypeFilterChecked

```lua
C_TransmogCollection.IsSourceTypeFilterChecked(index: luaIndex) -> checked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsSpellItemEnchantmentHiddenVisual

```lua
C_TransmogCollection.IsSpellItemEnchantmentHiddenVisual(spellItemEnchantmentID: number) -> isHiddenVisual: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsUsingDefaultFilters

```lua
C_TransmogCollection.IsUsingDefaultFilters() -> isUsingDefaultFilters: bool
```

### C_TransmogCollection.IsValidCustomSetName

```lua
C_TransmogCollection.IsValidCustomSetName(name: cstring) -> isApproved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.IsValidTransmogSource

```lua
C_TransmogCollection.IsValidTransmogSource(source: TransmogSource) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.ModifyCustomSet

```lua
C_TransmogCollection.ModifyCustomSet(customSetID: number, itemTransmogInfoList: table<ItemTransmogInfo>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.NewCustomSet

```lua
C_TransmogCollection.NewCustomSet(name: cstring, icon: fileID, itemTransmogInfoList: table<ItemTransmogInfo>) -> customSetID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.PlayerCanCollectSource

```lua
C_TransmogCollection.PlayerCanCollectSource(sourceID: number) -> hasItemData: bool, canCollect: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.PlayerHasTransmog

```lua
C_TransmogCollection.PlayerHasTransmog(itemID: number, itemAppearanceModID: number = 0) -> hasTransmog: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.PlayerHasTransmogByItemInfo

```lua
C_TransmogCollection.PlayerHasTransmogByItemInfo(itemInfo: ItemInfo) -> hasTransmog: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance

```lua
C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance(itemModifiedAppearanceID: number) -> hasTransmog: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.PlayerKnowsSource

```lua
C_TransmogCollection.PlayerKnowsSource(sourceID: number) -> isKnown: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.RenameCustomSet

```lua
C_TransmogCollection.RenameCustomSet(customSetID: number, name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SearchProgress

```lua
C_TransmogCollection.SearchProgress(searchType: TransmogSearchType) -> progress: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SearchSize

```lua
C_TransmogCollection.SearchSize(searchType: TransmogSearchType) -> size: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetAllCollectionTypeFilters

```lua
C_TransmogCollection.SetAllCollectionTypeFilters(checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetAllFactionsShown

```lua
C_TransmogCollection.SetAllFactionsShown(shown: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetAllRacesShown

```lua
C_TransmogCollection.SetAllRacesShown(shown: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetAllSourceTypeFilters

```lua
C_TransmogCollection.SetAllSourceTypeFilters(checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetClassFilter

```lua
C_TransmogCollection.SetClassFilter(classID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetCollectedShown

```lua
C_TransmogCollection.SetCollectedShown(shown: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetDefaultFilters

```lua
C_TransmogCollection.SetDefaultFilters()
```

### C_TransmogCollection.SetIsAppearanceFavorite

```lua
C_TransmogCollection.SetIsAppearanceFavorite(itemAppearanceID: number, isFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetSearch

```lua
C_TransmogCollection.SetSearch(searchType: TransmogSearchType, searchText: string) -> completed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetSearchAndFilterCategory

```lua
C_TransmogCollection.SetSearchAndFilterCategory(category: TransmogCollectionType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetSourceTypeFilter

```lua
C_TransmogCollection.SetSourceTypeFilter(index: luaIndex, checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.SetUncollectedShown

```lua
C_TransmogCollection.SetUncollectedShown(shown: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogCollection.UpdateUsableAppearances

```lua
C_TransmogCollection.UpdateUsableAppearances()
```

## Tables

### TransmogCameraVariation (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| RightShoulder | 1 |
| CloakBackpack | 1 |

### TransmogAppearanceInfoBySourceData (Structure)

- `appearanceID: number`
- `appearanceIsCollected: bool`
- `sourceIsCollected: bool`
- `sourceIsCollectedPermanent: bool`
- `sourceIsCollectedConditional: bool`
- `meetsTransmogPlayerCondition: bool`
- `appearanceHasAnyNonLevelRequirements: bool`
- `appearanceMeetsNonLevelRequirements: bool`
- `appearanceIsUsable: bool`
- `appearanceNumSources: number`
- `sourceIsKnown: bool`
- `canDisplayOnPlayer: bool`
- `isAnySourceValidForPlayer: bool`

### TransmogAppearanceJournalEncounterInfo (Structure)

- `instance: string`
- `instanceType: number`
- `tiers: table<string>`
- `encounter: string`
- `difficulties: table<string>`

### TransmogAppearanceSourceInfoData (Structure)

- `category: TransmogCollectionType`
- `itemAppearanceID: number`
- `canHaveIllusion: bool`
- `icon: fileID`
- `isCollected: bool`
- `itemLink: string`
- `transmoglink: string`
- `sourceType: luaIndex?`
- `itemSubclass: number`
- `ignoreModelAttachmentChecksForIllusion: bool`

### TransmogCategoryAppearanceInfo (Structure)

- `visualID: number`
- `isCollected: bool`
- `isFavorite: bool`
- `isHideVisual: bool`
- `canDisplayOnPlayer: bool`
- `uiOrder: number`
- `exclusions: number`
- `isUsable: bool`
- `hasRequiredHoliday: bool`
- `hasActiveRequiredHoliday: bool`
- `minIlvl: number`
- `isValidForEquippedItem: bool`
- `alwaysShowItem: bool?` For internal testing only

### TransmogCategoryInfo (Structure)

- `name: cstring`
- `isWeapon: bool = false`
- `canHaveIllusions: bool = false`
- `canMainHand: bool = false`
- `canOffHand: bool = false`
- `canRanged: bool = false`

### TransmogCustomSetInfo (Structure)

- `name: cstring`
- `icon: fileID`

### TransmogIllusionInfo (Structure)

- `visualID: number`
- `sourceID: number`
- `icon: fileID`
- `isCollected: bool`
- `isUsable: bool`
- `isHideVisual: bool`
