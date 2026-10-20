# HousingCleanupModeUI

Type: System  
Namespace: `C_HousingCleanupMode`  
Environment: All

## Functions

### C_HousingCleanupMode.GetHoveredDecorInfo

```lua
C_HousingCleanupMode.GetHoveredDecorInfo() -> info: HousingDecorInstanceInfo?
```

### C_HousingCleanupMode.IsHoveringDecor

```lua
C_HousingCleanupMode.IsHoveringDecor() -> isHoveringDecor: bool
```

### C_HousingCleanupMode.RemoveSelectedDecor

```lua
C_HousingCleanupMode.RemoveSelectedDecor()
```

## Events

### HOUSING_CLEANUP_MODE_HOVERED_TARGET_CHANGED

Payload: `hasHoveredTarget: bool, targetType: HousingCleanupModeTargetType`  
Flags: SynchronousEvent  

### HOUSING_CLEANUP_MODE_TARGET_SELECTED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### HousingCleanupModeTargetType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Decor | 1 |
| HouseExterior | 2 |
