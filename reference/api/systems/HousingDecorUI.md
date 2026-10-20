# HousingDecorUI

Type: System  
Namespace: `C_HousingDecor`  
Environment: All

## Functions

### C_HousingDecor.AnyDecorPlacedInRoom

```lua
C_HousingDecor.AnyDecorPlacedInRoom(roomGUID: WOWGUID) -> isPlaced: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if any decor objects are placed in a given room

### C_HousingDecor.CancelActiveEditing

```lua
C_HousingDecor.CancelActiveEditing()
```

Cancels all in-progress editing of the selected target, which will reset any unsaved changes and deselect the active target

### C_HousingDecor.CommitDecorMovement

```lua
C_HousingDecor.CommitDecorMovement()
```

Attempt to save the changes made to the currently selected decor instance

### C_HousingDecor.EnterPreviewState

```lua
C_HousingDecor.EnterPreviewState()
```

### C_HousingDecor.ExitPreviewState

```lua
C_HousingDecor.ExitPreviewState()
```

### C_HousingDecor.GetAllMaxPlacementBudgets

```lua
C_HousingDecor.GetAllMaxPlacementBudgets() -> interiorMaxBudgets: table<number>?, exteriorMaxBudgets: table<number>?
```

Returns the interior and exterior max decor placement budgets for the current owned house interior or plot; Can be increased via house level

### C_HousingDecor.GetAllPlacedDecor

```lua
C_HousingDecor.GetAllPlacedDecor() -> placedDecor: table<HousingDecorInstanceListEntry>
```

Flags: HasRestrictions  

Placed Decor List APIs currently restricted due to being potentially very expensive operations, may be reworked & opened up in the future

### C_HousingDecor.GetAllSpentPlacementBudgets

```lua
C_HousingDecor.GetAllSpentPlacementBudgets() -> interiorSpentBudgets: table<number>?, exteriorSpentBudgets: table<number>?
```

Returns how much of the interior and exterior placement budgets for the current owned house interior or plot's decor budget have been spent

### C_HousingDecor.GetDecorAssignedPetName

```lua
C_HousingDecor.GetDecorAssignedPetName(decorGUID: WOWGUID) -> name: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns pet name for the placed decor instance associated with the passed Decor GUID, if there is one

### C_HousingDecor.GetDecorCanAttachPet

```lua
C_HousingDecor.GetDecorCanAttachPet(decorID: number) -> canAttachPet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingDecor.GetDecorHyperlink

```lua
C_HousingDecor.GetDecorHyperlink(decorID: number) -> hyperLink: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_HousingDecor.GetDecorIcon

```lua
C_HousingDecor.GetDecorIcon(decorID: number) -> icon: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_HousingDecor.GetDecorInstanceInfoForGUID

```lua
C_HousingDecor.GetDecorInstanceInfoForGUID(decorGUID: WOWGUID) -> info: HousingDecorInstanceInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns info for the placed decor instance associated with the passed Decor GUID, if there is one

### C_HousingDecor.GetDecorName

```lua
C_HousingDecor.GetDecorName(decorID: number) -> name: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_HousingDecor.GetHoveredDecorInfo

```lua
C_HousingDecor.GetHoveredDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance currently being hovered, if there is one

### C_HousingDecor.GetMaxPetPlacementBudget

```lua
C_HousingDecor.GetMaxPetPlacementBudget() -> maxBudget: number?
```

Returns the max pet decor placement budget for the current owned house interior or plot

### C_HousingDecor.GetMaxPlacementBudget

```lua
C_HousingDecor.GetMaxPlacementBudget() -> maxBudget: number?
```

Returns the max decor placement budget for the current owned house interior or plot; Can be increased via house level

### C_HousingDecor.GetNumDecorPlaced

```lua
C_HousingDecor.GetNumDecorPlaced() -> numPlaced: number
```

Returns the number of individual decor objects placed in the current house or plot; This is NOT the value used in placement budget calculations, see GetSpentPlacementBudget for that

### C_HousingDecor.GetNumPreviewDecor

```lua
C_HousingDecor.GetNumPreviewDecor() -> numDecor: number
```

### C_HousingDecor.GetSelectedDecorInfo

```lua
C_HousingDecor.GetSelectedDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance that's currently selected, if there is one

### C_HousingDecor.GetSpentPetPlacementBudget

```lua
C_HousingDecor.GetSpentPetPlacementBudget() -> totalCost: number?
```

Returns how much of the current owned house interior or plot's pet decor placement budget has been spent

### C_HousingDecor.GetSpentPlacementBudget

```lua
C_HousingDecor.GetSpentPlacementBudget() -> totalCost: number?
```

Returns how much of the current owned house interior or plot's decor placement budget has been spent; Different kinds of decor take up different budget amounts, so this value isn't an individual decor count, see GetNumDecorPlaced for that

### C_HousingDecor.HasMaxPlacementBudget

```lua
C_HousingDecor.HasMaxPlacementBudget() -> hasMaxBudget: bool
```

Returns whether there's a max decor placement budget available and active for the current player, in the current house interior or plot

### C_HousingDecor.IsDecorSelected

```lua
C_HousingDecor.IsDecorSelected() -> hasSelectedDecor: bool
```

Returns true if a placed decor instance is currently selected

### C_HousingDecor.IsGridVisible

```lua
C_HousingDecor.IsGridVisible() -> gridVisible: bool
```

### C_HousingDecor.IsHouseExteriorDoorHovered

```lua
C_HousingDecor.IsHouseExteriorDoorHovered() -> isHouseExteriorDoorHovered: bool
```

Returns true if the entry door of the house's exterior is currently being hovered

### C_HousingDecor.IsHouseExteriorHovered

```lua
C_HousingDecor.IsHouseExteriorHovered() -> isHouseExteriorHovered: bool
```

Returns true if the house's exterior is currently being hovered

### C_HousingDecor.IsHoveringDecor

```lua
C_HousingDecor.IsHoveringDecor() -> isHoveringDecor: bool
```

Returns true if a placed decor instance is currently being hovered

### C_HousingDecor.IsModeDisabledForPreviewState

```lua
C_HousingDecor.IsModeDisabledForPreviewState(mode: HouseEditorMode) -> isModeDisabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingDecor.IsPreviewState

```lua
C_HousingDecor.IsPreviewState() -> isPreviewState: bool
```

### C_HousingDecor.RemovePlacedDecorEntry

```lua
C_HousingDecor.RemovePlacedDecorEntry(decorGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Placed Decor List APIs currently restricted due to being potentially very expensive operations, may be reworked & opened up in the future

### C_HousingDecor.RemoveSelectedDecor

```lua
C_HousingDecor.RemoveSelectedDecor()
```

Attempt to return the currently selected decor instance back to the house chest

### C_HousingDecor.SetGridVisible

```lua
C_HousingDecor.SetGridVisible(gridVisible: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingDecor.SetPlacedDecorEntryHovered

```lua
C_HousingDecor.SetPlacedDecorEntryHovered(decorGUID: WOWGUID, hovered: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Placed Decor List APIs currently restricted due to being potentially very expensive operations, may be reworked & opened up in the future

### C_HousingDecor.SetPlacedDecorEntrySelected

```lua
C_HousingDecor.SetPlacedDecorEntrySelected(decorGUID: WOWGUID, selected: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Placed Decor List APIs currently restricted due to being potentially very expensive operations, may be reworked & opened up in the future

## Events

### HOUSE_DECOR_ADDED_TO_CHEST

Payload: `decorGUID: WOWGUID, decorID: number`  
Flags: SynchronousEvent  

### HOUSE_EXTERIOR_POSITION_FAILURE

Payload: `housingResult: HousingResult`  
Flags: SynchronousEvent  

### HOUSE_EXTERIOR_POSITION_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_DECOR_GRID_VISIBILITY_STATUS_CHANGED

Payload: `isGridVisible: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PLACE_FAILURE

Payload: `housingResult: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PLACE_SUCCESS

Payload: `decorGUID: WOWGUID, size: HousingCatalogEntrySize, isNew: bool, isPreview: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PREVIEW_STATE_CHANGED

Payload: `isPreviewState: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_REMOVED

Payload: `decorGUID: WOWGUID`  
Flags: SynchronousEvent  

### HOUSING_DECOR_SELECT_RESPONSE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_NEW_DECOR_PLACE_COMPLETE

Payload: `decorGUID: WOWGUID`  
Flags: SynchronousEvent  

### HOUSING_NUM_DECOR_PLACED_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### LightRadiusIndicatorType (Enumeration)

| Name | Value |
|---|---|
| Always | 0 |
| Overlap | 1 |
| Never | 2 |

### HousingDecorInstanceListEntry (Structure)

Smaller structs with the minimum fields from HousingDecorInstanceInfo needed to identify/display a slim list of placed decor

- `decorGUID: WOWGUID`
- `name: cstring`
