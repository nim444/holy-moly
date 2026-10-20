# HousingExpertModeUI

Type: System  
Namespace: `C_HousingExpertMode`  
Environment: All

## Functions

### C_HousingExpertMode.CancelActiveEditing

```lua
C_HousingExpertMode.CancelActiveEditing()
```

Cancels all in-progress editing of the selected target, which will reset any unsaved changes and deselect the active target; Will not reset any already-applied changes

### C_HousingExpertMode.CommitDecorMovement

```lua
C_HousingExpertMode.CommitDecorMovement()
```

Attempt to save the changes made to the currently selected decor instance

### C_HousingExpertMode.CommitHouseExteriorPosition

```lua
C_HousingExpertMode.CommitHouseExteriorPosition()
```

Attempt to save the changes made to the House Exterior's position within the plot

### C_HousingExpertMode.GetHoveredDecorInfo

```lua
C_HousingExpertMode.GetHoveredDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance currently being hovered, if there is one

### C_HousingExpertMode.GetPrecisionSubmode

```lua
C_HousingExpertMode.GetPrecisionSubmode() -> activeSubMode: HousingPrecisionSubmode?
```

Returns the currently active Expert submode, if there is one

### C_HousingExpertMode.GetPrecisionSubmodeRestriction

```lua
C_HousingExpertMode.GetPrecisionSubmodeRestriction(subMode: HousingPrecisionSubmode) -> restriction: HousingExpertSubmodeRestriction
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the type of restriction currently active on the submode; Will return HousingExpertSubmodeRestriction:None if submode is not currently restricted

### C_HousingExpertMode.GetSelectedDecorInfo

```lua
C_HousingExpertMode.GetSelectedDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance that's currently selected, if there is one

### C_HousingExpertMode.IsDecorSelected

```lua
C_HousingExpertMode.IsDecorSelected() -> hasSelectedDecor: bool
```

Returns true if a placed decor instance is currently selected

### C_HousingExpertMode.IsGridVisible

```lua
C_HousingExpertMode.IsGridVisible() -> gridVisible: bool
```

### C_HousingExpertMode.IsHouseExteriorHovered

```lua
C_HousingExpertMode.IsHouseExteriorHovered() -> isHouseExteriorHovered: bool
```

Returns true if the house's exterior is currently being hovered

### C_HousingExpertMode.IsHouseExteriorSelected

```lua
C_HousingExpertMode.IsHouseExteriorSelected() -> isHouseExteriorSelected: bool
```

Returns true if the house's exterior is currently selected

### C_HousingExpertMode.IsHoveringDecor

```lua
C_HousingExpertMode.IsHoveringDecor() -> isHoveringDecor: bool
```

Returns true if a placed decor instance is currently being hovered

### C_HousingExpertMode.RemoveSelectedDecor

```lua
C_HousingExpertMode.RemoveSelectedDecor()
```

Attempt to return the currently selected decor instance back to the house chest

### C_HousingExpertMode.ResetPrecisionChanges

```lua
C_HousingExpertMode.ResetPrecisionChanges(activeSubmodeOnly: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Reset the selected target's transform back to default values; This is NOT an undo, meaning it will completely reset the transform value to default, NOT just recently-made changes

### C_HousingExpertMode.SelectNextRotationAxis

```lua
C_HousingExpertMode.SelectNextRotationAxis()
```

In the rotation submode, swaps the selected axis to the next available one, in order of X -> Y -> Z (wrapping back around to X again, etc); If no axis is selected, selects the first available one, also in that order

### C_HousingExpertMode.SetGridVisible

```lua
C_HousingExpertMode.SetGridVisible(gridVisible: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingExpertMode.SetPrecisionIncrementingActive

```lua
C_HousingExpertMode.SetPrecisionIncrementingActive(incrementType: HousingIncrementType, active: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets a specific type of incremental change active or inactive; Whilever that type is active and target stays selected, incremental changes of that type will continue to be made every frame

### C_HousingExpertMode.SetPrecisionSubmode

```lua
C_HousingExpertMode.SetPrecisionSubmode(subMode: HousingPrecisionSubmode)
```

Secret: SecretArguments=AllowedWhenUntainted  

Activate a specific Expert submode

## Events

### HOUSING_DECOR_PRECISION_MANIPULATION_EVENT

Payload: `event: TransformManipulatorEvent`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PRECISION_MANIPULATION_STATUS_CHANGED

Payload: `isManipulatingSelection: bool`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PRECISION_SUBMODE_CHANGED

Payload: `activeSubmode: HousingPrecisionSubmode?`  
Flags: SynchronousEvent  

### HOUSING_EXPERT_MODE_HOVERED_TARGET_CHANGED

Payload: `hasHoveredTarget: bool, targetType: HousingExpertModeTargetType`  
Flags: SynchronousEvent  

### HOUSING_EXPERT_MODE_PLACEMENT_FLAGS_UPDATED

Payload: `targetType: HousingExpertModeTargetType, activeFlags: HousingDecorPlacementRestriction`  
Flags: SynchronousEvent  

### HOUSING_EXPERT_MODE_SELECTED_TARGET_CHANGED

Payload: `hasSelectedTarget: bool, targetType: HousingExpertModeTargetType`  
Flags: SynchronousEvent  

## Tables

### HousingExpertModeTargetType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Decor | 1 |
| House | 2 |

### HousingExpertSubmodeRestriction (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| NotInExpertMode | 1 |
| NoHouseExteriorScale | 2 |
| NoWMOScale | 3 |

### HousingIncrementType (Enumeration)

| Name | Value |
|---|---|
| Left | 1 |
| Right | 2 |
| Forward | 4 |
| Back | 8 |
| Up | 16 |
| Down | 32 |
| RotateLeft | 64 |
| RotateRight | 128 |
| ScaleUp | 256 |
| ScaleDown | 512 |

### HousingPrecisionSubmode (Enumeration)

| Name | Value |
|---|---|
| Translate | 0 |
| Rotate | 1 |
| Scale | 2 |
