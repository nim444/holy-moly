# HousingInspectModeUI

Type: System  
Namespace: `C_HousingInspectMode`  
Environment: All

## Functions

### C_HousingInspectMode.EnterInspectMode

```lua
C_HousingInspectMode.EnterInspectMode()
```

Enters inspect mode, enabling decor inspection

### C_HousingInspectMode.ExitInspectMode

```lua
C_HousingInspectMode.ExitInspectMode()
```

Exits inspect mode, disabling decor inspection

### C_HousingInspectMode.GetHoveredDecorGUID

```lua
C_HousingInspectMode.GetHoveredDecorGUID() -> decorGUID: WOWGUID
```

Returns the GUID of the decor instance currently being hovered, if there is one

### C_HousingInspectMode.IsHoveringDecor

```lua
C_HousingInspectMode.IsHoveringDecor() -> isHoveringDecor: bool
```

Returns true if a decor instance is currently being hovered in inspect mode

### C_HousingInspectMode.IsInInspectMode

```lua
C_HousingInspectMode.IsInInspectMode() -> isInInspectMode: bool
```

Returns true if the player is currently in inspect mode

## Events

### HOUSING_INSPECT_MODE_DECOR_HOVERED_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_INSPECT_MODE_STATE_UPDATED

Payload: `none`  
Flags: SynchronousEvent
