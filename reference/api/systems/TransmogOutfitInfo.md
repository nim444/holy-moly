# TransmogOutfitInfo

Type: System  
Namespace: `C_TransmogOutfitInfo`  
Environment: All

## Functions

### C_TransmogOutfitInfo.AddNewOutfit

```lua
C_TransmogOutfitInfo.AddNewOutfit(name: cstring, icon: fileID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_TransmogOutfitInfo.CanPlayerTransmogSlot

```lua
C_TransmogOutfitInfo.CanPlayerTransmogSlot(slot: TransmogOutfitSlot) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ChangeDisplayedOutfit

```lua
C_TransmogOutfitInfo.ChangeDisplayedOutfit(outfitID: number, trigger: TransmogSituationTrigger, toggleLock: bool, allowRemoveOutfit: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ChangeToOutfit

```lua
C_TransmogOutfitInfo.ChangeToOutfit(playerFacingOutfitIndex: number, allowRemoveOutfit: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ChangeViewedOutfit

```lua
C_TransmogOutfitInfo.ChangeViewedOutfit(outfitID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ClearAllPendingSituations

```lua
C_TransmogOutfitInfo.ClearAllPendingSituations()
```

### C_TransmogOutfitInfo.ClearAllPendingTransmogs

```lua
C_TransmogOutfitInfo.ClearAllPendingTransmogs()
```

### C_TransmogOutfitInfo.ClearDisplayedOutfit

```lua
C_TransmogOutfitInfo.ClearDisplayedOutfit(trigger: TransmogSituationTrigger, toggleLock: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ClearOutfit

```lua
C_TransmogOutfitInfo.ClearOutfit()
```

### C_TransmogOutfitInfo.CommitAndApplyAllPending

```lua
C_TransmogOutfitInfo.CommitAndApplyAllPending(useAvailableDiscount: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.CommitOutfitInfo

```lua
C_TransmogOutfitInfo.CommitOutfitInfo(outfitID: number, name: cstring, icon: fileID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.CommitPendingSituations

```lua
C_TransmogOutfitInfo.CommitPendingSituations()
```

### C_TransmogOutfitInfo.GetActiveOutfitID

```lua
C_TransmogOutfitInfo.GetActiveOutfitID() -> outfitID: number
```

### C_TransmogOutfitInfo.GetAllSlotLocationInfo

```lua
C_TransmogOutfitInfo.GetAllSlotLocationInfo() -> appearanceSlotInfo: table<TransmogOutfitSlotInfo>, illusionSlotInfo: table<TransmogOutfitSlotInfo>
```

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetAllTransmogOutfitOptionSheatheCategoryInfo

```lua
C_TransmogOutfitInfo.GetAllTransmogOutfitOptionSheatheCategoryInfo(imaID: number) -> categoryInfo: table<TransmogOutfitOptionSheatheCategoryInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetCollectionInfoForSlotAndOption

```lua
C_TransmogOutfitInfo.GetCollectionInfoForSlotAndOption(slot: TransmogOutfitSlot, option: TransmogOutfitSlotOption, collectionType: TransmogCollectionType) -> collectionInfo: TransmogOutfitCollectionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetCurrentlyViewedOutfitID

```lua
C_TransmogOutfitInfo.GetCurrentlyViewedOutfitID() -> outfitID: number
```

### C_TransmogOutfitInfo.GetEquippedSlotOptionFromTransmogSlot

```lua
C_TransmogOutfitInfo.GetEquippedSlotOptionFromTransmogSlot(slot: TransmogOutfitSlot) -> option: TransmogOutfitSlotOption
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetIllusionDefaultIMAIDForCollectionType

```lua
C_TransmogOutfitInfo.GetIllusionDefaultIMAIDForCollectionType(collectionType: TransmogCollectionType) -> imaID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetItemModifiedAppearanceEffectiveCategory

```lua
C_TransmogOutfitInfo.GetItemModifiedAppearanceEffectiveCategory(imaID: number) -> categoryID: TransmogCollectionType
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.GetLinkedSlotInfo

```lua
C_TransmogOutfitInfo.GetLinkedSlotInfo(slot: TransmogOutfitSlot) -> linkedSlotInfo: TransmogOutfitLinkedSlotInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetMaxNumberOfTotalOutfitsForSource

```lua
C_TransmogOutfitInfo.GetMaxNumberOfTotalOutfitsForSource(source: TransmogOutfitEntrySource) -> maxOutfitCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.GetMaxNumberOfUsableOutfits

```lua
C_TransmogOutfitInfo.GetMaxNumberOfUsableOutfits() -> maxOutfitCount: number
```

### C_TransmogOutfitInfo.GetNextOutfitCost

```lua
C_TransmogOutfitInfo.GetNextOutfitCost() -> outfitCost: BigUInteger
```

### C_TransmogOutfitInfo.GetNumberOfOutfitsUnlockedForSource

```lua
C_TransmogOutfitInfo.GetNumberOfOutfitsUnlockedForSource(source: TransmogOutfitEntrySource) -> unlockedOutfitCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.GetOptionsForSlot

```lua
C_TransmogOutfitInfo.GetOptionsForSlot(slot: TransmogOutfitSlot) -> options: table<TransmogOutfitOptionInfo>, artifactOptions: table<TransmogOutfitOptionInfo>?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetOutfitInfo

```lua
C_TransmogOutfitInfo.GetOutfitInfo(outfitID: number) -> outfitInfo: TransmogOutfitEntryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetOutfitInfoByName

```lua
C_TransmogOutfitInfo.GetOutfitInfoByName(name: cstring) -> outfitInfo: TransmogOutfitEntryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetOutfitInfoByPlayerFacingIndex

```lua
C_TransmogOutfitInfo.GetOutfitInfoByPlayerFacingIndex(playerFacingOutfitIndex: number) -> outfitInfo: TransmogOutfitEntryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetOutfitSituation

```lua
C_TransmogOutfitInfo.GetOutfitSituation(option: TransmogSituationOption) -> value: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.GetOutfitSituationsEnabled

```lua
C_TransmogOutfitInfo.GetOutfitSituationsEnabled() -> enabled: bool
```

### C_TransmogOutfitInfo.GetOutfitsInfo

```lua
C_TransmogOutfitInfo.GetOutfitsInfo() -> outfitsInfo: table<TransmogOutfitEntryInfo>
```

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetPendingTransmogCost

```lua
C_TransmogOutfitInfo.GetPendingTransmogCost() -> cost: BigUInteger, modifierFlags: number
```

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetSecondarySlotState

```lua
C_TransmogOutfitInfo.GetSecondarySlotState(slot: TransmogOutfitSlot) -> state: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.GetSetSourcesForSlot

```lua
C_TransmogOutfitInfo.GetSetSourcesForSlot(transmogSetID: number, slot: TransmogOutfitSlot) -> sources: table<AppearanceSourceInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetSlotGroupInfo

```lua
C_TransmogOutfitInfo.GetSlotGroupInfo() -> slotGroups: table<TransmogOutfitSlotGroup>
```

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetSourceIDsForSlot

```lua
C_TransmogOutfitInfo.GetSourceIDsForSlot(transmogSetID: number, slot: TransmogOutfitSlot) -> sources: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetTransmogOutfitSlotForInventoryType

```lua
C_TransmogOutfitInfo.GetTransmogOutfitSlotForInventoryType(inventoryType: luaIndex) -> slot: TransmogOutfitSlot
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetTransmogOutfitSlotFromInventorySlot

```lua
C_TransmogOutfitInfo.GetTransmogOutfitSlotFromInventorySlot(inventorySlot: InventorySlots) -> slot: TransmogOutfitSlot
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetUISituationCategoriesAndOptions

```lua
C_TransmogOutfitInfo.GetUISituationCategoriesAndOptions() -> categoryData: table<TransmogSituationCategory>
```

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetUnassignedAtlasForSlot

```lua
C_TransmogOutfitInfo.GetUnassignedAtlasForSlot(slot: TransmogOutfitSlot) -> atlas: textureAtlas
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetUnassignedDisplayAtlasForSlot

```lua
C_TransmogOutfitInfo.GetUnassignedDisplayAtlasForSlot(slot: TransmogOutfitSlot) -> atlas: textureAtlas
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.GetViewedOutfitSlotInfo

```lua
C_TransmogOutfitInfo.GetViewedOutfitSlotInfo(slot: TransmogOutfitSlot, type: TransmogType, option: TransmogOutfitSlotOption) -> slotInfo: ViewedTransmogOutfitSlotInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.HasPendingOutfitSituations

```lua
C_TransmogOutfitInfo.HasPendingOutfitSituations() -> hasPending: bool
```

### C_TransmogOutfitInfo.HasPendingOutfitTransmogs

```lua
C_TransmogOutfitInfo.HasPendingOutfitTransmogs() -> hasPending: bool
```

### C_TransmogOutfitInfo.InTransmogEvent

```lua
C_TransmogOutfitInfo.InTransmogEvent() -> inTransmogEvent: bool
```

### C_TransmogOutfitInfo.IsEquippedGearOutfitDisplayed

```lua
C_TransmogOutfitInfo.IsEquippedGearOutfitDisplayed() -> isDisplayed: bool
```

### C_TransmogOutfitInfo.IsEquippedGearOutfitLocked

```lua
C_TransmogOutfitInfo.IsEquippedGearOutfitLocked() -> isLocked: bool
```

### C_TransmogOutfitInfo.IsLockedOutfit

```lua
C_TransmogOutfitInfo.IsLockedOutfit(outfitID: number) -> isLocked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.IsSlotWeaponSlot

```lua
C_TransmogOutfitInfo.IsSlotWeaponSlot(slot: TransmogOutfitSlot) -> isWeaponSlot: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.IsTransmogEnabled

```lua
C_TransmogOutfitInfo.IsTransmogEnabled() -> enabled: bool
```

### C_TransmogOutfitInfo.IsUsableDiscountAvailable

```lua
C_TransmogOutfitInfo.IsUsableDiscountAvailable() -> isAvailable: bool
```

### C_TransmogOutfitInfo.IsValidTransmogOutfitName

```lua
C_TransmogOutfitInfo.IsValidTransmogOutfitName(name: cstring) -> isApproved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.PickupOutfit

```lua
C_TransmogOutfitInfo.PickupOutfit(outfitID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.ResetOutfitSituations

```lua
C_TransmogOutfitInfo.ResetOutfitSituations()
```

### C_TransmogOutfitInfo.RevertPendingTransmog

```lua
C_TransmogOutfitInfo.RevertPendingTransmog(slot: TransmogOutfitSlot, type: TransmogType, option: TransmogOutfitSlotOption)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetOutfitSituationsEnabled

```lua
C_TransmogOutfitInfo.SetOutfitSituationsEnabled(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetOutfitToCustomSet

```lua
C_TransmogOutfitInfo.SetOutfitToCustomSet(transmogCustomSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetOutfitToOutfit

```lua
C_TransmogOutfitInfo.SetOutfitToOutfit(outfitID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetOutfitToSet

```lua
C_TransmogOutfitInfo.SetOutfitToSet(transmogSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetPendingTransmog

```lua
C_TransmogOutfitInfo.SetPendingTransmog(slot: TransmogOutfitSlot, type: TransmogType, option: TransmogOutfitSlotOption, transmogID: number, displayType: TransmogOutfitDisplayType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetPendingTransmogSheatheCategory

```lua
C_TransmogOutfitInfo.SetPendingTransmogSheatheCategory(slot: TransmogOutfitSlot, option: TransmogOutfitSlotOption, category: TransmogOutfitSlotOptionSheatheCategory)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SetSecondarySlotState

```lua
C_TransmogOutfitInfo.SetSecondarySlotState(slot: TransmogOutfitSlot, state: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TransmogOutfitInfo.SetViewedOptionForSlot

```lua
C_TransmogOutfitInfo.SetViewedOptionForSlot(slot: TransmogOutfitSlot, option: TransmogOutfitSlotOption)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.SlotHasSecondary

```lua
C_TransmogOutfitInfo.SlotHasSecondary(slot: TransmogOutfitSlot) -> hasSecondary: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TransmogOutfitInfo.TransmogEventActive

```lua
C_TransmogOutfitInfo.TransmogEventActive() -> transmogEventActive: bool
```

### C_TransmogOutfitInfo.UpdatePendingSituation

```lua
C_TransmogOutfitInfo.UpdatePendingSituation(option: TransmogSituationOption, value: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### TRANSMOG_DISPLAYED_OUTFIT_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOG_OUTFITS_CHANGED

Payload: `newOutfitID: number?`  
Flags: SynchronousEvent  

### VIEWED_TRANSMOG_OUTFIT_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### VIEWED_TRANSMOG_OUTFIT_SECONDARY_SLOTS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### VIEWED_TRANSMOG_OUTFIT_SITUATIONS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### VIEWED_TRANSMOG_OUTFIT_SLOT_OPTION_CHANGED

Payload: `slot: TransmogOutfitSlot, option: TransmogOutfitSlotOption`  
Flags: SynchronousEvent  

### VIEWED_TRANSMOG_OUTFIT_SLOT_REFRESH

Payload: `none`  
Flags: UniqueEvent  

### VIEWED_TRANSMOG_OUTFIT_SLOT_SAVE_SUCCESS

Payload: `slot: TransmogOutfitSlot, type: TransmogType, option: TransmogOutfitSlotOption`  
Flags: SynchronousEvent  

## Tables

### TransmogOutfitCollectionInfo (Structure)

- `name: cstring`
- `isWeapon: bool`
- `canHaveIllusions: bool`

### TransmogOutfitEntryInfo (Structure)

- `outfitID: number`
- `name: string`
- `situationCategories: table<cstring>`
- `icon: fileID`
- `isEventOutfit: bool`
- `isDisabled: bool`
- `playerFacingOutfitIndex: number`

### TransmogOutfitLinkedSlotInfo (Structure)

- `primarySlotInfo: TransmogOutfitSlotInfo`
- `secondarySlotInfo: TransmogOutfitSlotInfo`

### TransmogOutfitOptionInfo (Structure)

- `type: TransmogOutfitSlotOption`
- `name: cstring`
- `enabled: bool`

### TransmogOutfitOptionSheatheCategoryInfo (Structure)

- `sheatheCategory: TransmogOutfitSlotOptionSheatheCategory`
- `categoryName: cstring`

### TransmogOutfitSlotGroup (Structure)

- `position: TransmogOutfitSlotPosition`
- `appearanceSlotInfo: table<TransmogOutfitSlotInfo>`
- `illusionSlotInfo: table<TransmogOutfitSlotInfo>`

### TransmogOutfitSlotInfo (Structure)

- `slot: TransmogOutfitSlot`
- `type: TransmogType`
- `collectionType: TransmogCollectionType`
- `slotName: cstring`
- `isSecondary: bool`

### TransmogSituationCategory (Structure)

- `triggerID: number`
- `name: cstring`
- `description: cstring`
- `isRadioButton: bool`
- `groupData: table<TransmogSituationGroup>`

### TransmogSituationGroup (Structure)

- `groupID: number`
- `secondaryID: number`
- `optionData: table<TransmogSituationOptionData>`

### TransmogSituationOption (Structure)

- `situationID: number`
- `specID: number`
- `loadoutID: number`
- `equipmentSetID: number`

### TransmogSituationOptionData (Structure)

- `name: cstring`
- `value: bool`
- `option: TransmogSituationOption`

### ViewedTransmogOutfitSlotInfo (Structure)

- `transmogID: number`
- `displayType: TransmogOutfitDisplayType`
- `isTransmogrified: bool`
- `hasPending: bool`
- `isPendingCollected: bool`
- `canTransmogrify: bool`
- `warning: TransmogOutfitSlotWarning`
- `warningText: cstring`
- `error: TransmogOutfitSlotError`
- `errorText: cstring`
- `texture: fileID?`
- `sheatheCategory: TransmogOutfitSlotOptionSheatheCategory`
