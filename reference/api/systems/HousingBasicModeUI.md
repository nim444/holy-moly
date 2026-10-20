# HousingBasicModeUI

Type: System  
Namespace: `C_HousingBasicMode`  
Environment: All

## Functions

### C_HousingBasicMode.CancelActiveEditing

```lua
C_HousingBasicMode.CancelActiveEditing()
```

Cancels all in-progress editing of the selected target, which will reset any unsaved changes and deselect the active target; Un-placed decor will be returned to the house chest

### C_HousingBasicMode.CommitDecorMovement

```lua
C_HousingBasicMode.CommitDecorMovement()
```

Attempt to save the changes made to the currently selected decor instance

### C_HousingBasicMode.CommitHouseExteriorPosition

```lua
C_HousingBasicMode.CommitHouseExteriorPosition()
```

Attempt to save the changes made to the House Exterior's position within the plot

### C_HousingBasicMode.FinishPlacingNewDecor

```lua
C_HousingBasicMode.FinishPlacingNewDecor()
```

### C_HousingBasicMode.GetHoveredDecorInfo

```lua
C_HousingBasicMode.GetHoveredDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance currently being hovered, if there is one

### C_HousingBasicMode.GetSelectedDecorInfo

```lua
C_HousingBasicMode.GetSelectedDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the decor instance that's currently selected, if there is one

### C_HousingBasicMode.IsDecorSelected

```lua
C_HousingBasicMode.IsDecorSelected() -> hasSelectedDecor: bool
```

Returns true if a decor instance is currently selected and being dragged

### C_HousingBasicMode.IsFreePlaceEnabled

```lua
C_HousingBasicMode.IsFreePlaceEnabled() -> freePlaceEnabled: bool
```

When free place is enabled, collision checks while dragging decor/the house exterior are ignored

### C_HousingBasicMode.IsGridSnapEnabled

```lua
C_HousingBasicMode.IsGridSnapEnabled() -> isGridSnapEnabled: bool
```

### C_HousingBasicMode.IsGridVisible

```lua
C_HousingBasicMode.IsGridVisible() -> gridVisible: bool
```

### C_HousingBasicMode.IsHouseExteriorHovered

```lua
C_HousingBasicMode.IsHouseExteriorHovered() -> isHouseExteriorHovered: bool
```

Returns true if the house's exterior is currently being hovered

### C_HousingBasicMode.IsHouseExteriorSelected

```lua
C_HousingBasicMode.IsHouseExteriorSelected() -> isHouseExteriorSelected: bool
```

Returns true if the house's exterior is currently selected and being moved

### C_HousingBasicMode.IsHoveringDecor

```lua
C_HousingBasicMode.IsHoveringDecor() -> isHoveringDecor: bool
```

Returns true if a placed decor instance is currently being hovered

### C_HousingBasicMode.IsPlacingNewDecor

```lua
C_HousingBasicMode.IsPlacingNewDecor() -> hasPendingDecor: bool
```

### C_HousingBasicMode.RemoveSelectedDecor

```lua
C_HousingBasicMode.RemoveSelectedDecor()
```

Attempt to return the currently selected decor instance back to the house chest

### C_HousingBasicMode.RotateDecor

```lua
C_HousingBasicMode.RotateDecor(rotDegrees: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Rotates the currently selected decor along a single axis; For wall decor, rotates such that the object stays flat against its current wall; For all other decor, rotates around the Z (vertical) axis

### C_HousingBasicMode.RotateHouseExterior

```lua
C_HousingBasicMode.RotateHouseExterior(rotDegrees: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Rotates the House Exterior around the Z (vertical) axis

### C_HousingBasicMode.SetFreePlaceEnabled

```lua
C_HousingBasicMode.SetFreePlaceEnabled(freePlaceEnabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Set whether free place is enabled; When free place is enabled, collision checks while dragging decor/the house exterior are ignored

### C_HousingBasicMode.SetGridSnapEnabled

```lua
C_HousingBasicMode.SetGridSnapEnabled(isGridSnapEnabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingBasicMode.SetGridVisible

```lua
C_HousingBasicMode.SetGridVisible(gridVisible: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingBasicMode.StartPlacingNewDecor

```lua
C_HousingBasicMode.StartPlacingNewDecor(catalogEntryVariantID: HousingCatalogEntryVariantID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingBasicMode.StartPlacingPreviewDecor

```lua
C_HousingBasicMode.StartPlacingPreviewDecor(decorRecordID: number, bundleCatalogShopProductID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### HOUSING_BASIC_MODE_HOVERED_TARGET_CHANGED

Payload: `hasHoveredTarget: bool, targetType: HousingBasicModeTargetType`  
Flags: SynchronousEvent  

### HOUSING_BASIC_MODE_PLACEMENT_FLAGS_UPDATED

Payload: `targetType: HousingBasicModeTargetType, activeFlags: HousingDecorPlacementRestriction`  
Flags: SynchronousEvent  

### HOUSING_BASIC_MODE_SELECTED_TARGET_CHANGED

Payload: `hasSelectedTarget: bool, targetType: HousingBasicModeTargetType, isPreview: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_FREE_PLACE_STATUS_CHANGED

Payload: `isFreePlaceEnabled: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_GRID_SNAP_OCCURRED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_DECOR_GRID_SNAP_STATUS_CHANGED

Payload: `isGridSnapEnabled: bool`  
Flags: SynchronousEvent  

## Tables

### HousingBasicModeTargetType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Decor | 1 |
| House | 2 |
