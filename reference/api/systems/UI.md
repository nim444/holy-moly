# UI

Type: System  
Namespace: `C_UI`  
Environment: All

## Functions

### C_UI.DoesAnyDisplayHaveNotch

```lua
C_UI.DoesAnyDisplayHaveNotch() -> notchPresent: bool
```

True if any display attached has a notch. This does not mean the current view intersects the notch.

### C_UI.GetTopLeftNotchSafeRegion

```lua
C_UI.GetTopLeftNotchSafeRegion() -> left: number, right: number, top: number, bottom: number
```

Region of screen left of screen notch. Zeros if no notch.

### C_UI.GetTopRightNotchSafeRegion

```lua
C_UI.GetTopRightNotchSafeRegion() -> left: number, right: number, top: number, bottom: number
```

Region of screen right of screen notch. Zeros if no notch.

### C_UI.GetUIParent

```lua
C_UI.GetUIParent() -> uiParent: SimpleFrame
```

### C_UI.GetWorldFrame

```lua
C_UI.GetWorldFrame() -> worldFrame: SimpleFrame
```

### C_UI.Reload

```lua
C_UI.Reload()
```

### C_UI.ShouldUIParentAvoidNotch

```lua
C_UI.ShouldUIParentAvoidNotch() -> willAvoidNotch: bool
```

UIParent will shift down to avoid notch if true. This does not mean there is a notch.

## Events

### NOTCHED_DISPLAY_MODE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### UI_SCALE_CHANGED

Payload: `none`  
Flags: SynchronousEvent
