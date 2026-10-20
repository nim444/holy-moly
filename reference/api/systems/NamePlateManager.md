# NamePlateManager

Type: System  
Namespace: `C_NamePlateManager`  
Environment: All

## Functions

### C_NamePlateManager.GetNamePlateHitTestInsets

```lua
C_NamePlateManager.GetNamePlateHitTestInsets(type: NamePlateType) -> left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the values used to adjust the hit testing area for nameplates.

### C_NamePlateManager.IsNamePlateUnitBehindCamera

```lua
C_NamePlateManager.IsNamePlateUnitBehindCamera(unitToken: UnitTokenNamePlate) -> isBehindCamera: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the unit to which the nameplate is attached is behind the player's camera.

### C_NamePlateManager.SetNamePlateHitTestInsets

```lua
C_NamePlateManager.SetNamePlateHitTestInsets(type: NamePlateType, left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit)
```

Secret: SecretArguments=NotAllowed  

Flags: HasRestrictions  

Provide values to adjust the hit testing area for nameplates. Positive values will decrease the hit test area, negative values will increase it. Note that all hit testing is clamped to the bounds of the nameplate and can not be moved outside it.

### C_NamePlateManager.SetNamePlateSimplified

```lua
C_NamePlateManager.SetNamePlateSimplified(unitToken: UnitTokenNamePlate, isSimplified: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Set whether the nameplate attached to a unit is considered simplified, which can change the way it's displayed.

## Events

### FORBIDDEN_NAME_PLATE_CREATED

Payload: `namePlateFrame: NamePlateFrame`  
Flags: SynchronousEvent  

### FORBIDDEN_NAME_PLATE_UNIT_ADDED

Payload: `unitToken: UnitTokenType`  
Flags: SynchronousEvent  

### FORBIDDEN_NAME_PLATE_UNIT_REMOVED

Payload: `unitToken: UnitTokenType`  
Flags: SynchronousEvent  

### NAME_PLATE_CREATED

Payload: `namePlateFrame: NamePlateFrame`  
Flags: SynchronousEvent  

### NAME_PLATE_UNIT_ADDED

Payload: `unitToken: UnitTokenType`  
Flags: SynchronousEvent  

### NAME_PLATE_UNIT_BEHIND_CAMERA_CHANGED

Payload: `unitTarget: UnitTokenVariant, isBehindCamera: bool`  
Flags: SynchronousEvent  

### NAME_PLATE_UNIT_REMOVED

Payload: `unitToken: UnitTokenType`  
Flags: SynchronousEvent
