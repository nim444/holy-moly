# Input

Type: System  
Environment: All

## Functions

### GetCursorCenterPosition

```lua
GetCursorCenterPosition() -> posX: number, posY: number
```

### GetCursorDelta

```lua
GetCursorDelta() -> deltaX: number, deltaY: number
```

### GetCursorPosition

```lua
GetCursorPosition() -> posX: number, posY: number
```

### GetMouseButtonClicked

```lua
GetMouseButtonClicked() -> buttonName: cstring
```

### GetMouseButtonName

```lua
GetMouseButtonName(button: mouseButton) -> buttonName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetMouseFoci

```lua
GetMouseFoci() -> region: table<ScriptRegion>
```

### GetStringFromModifiers

```lua
GetStringFromModifiers(modifiers: number) -> modifierString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsAltKeyDown

```lua
IsAltKeyDown() -> down: bool
```

### IsControlKeyDown

```lua
IsControlKeyDown() -> down: bool
```

### IsCursorVisible

```lua
IsCursorVisible() -> visible: bool
```

### IsKeyDown

```lua
IsKeyDown(keyOrMouseName: cstring, excludeBindingState: bool = false) -> down: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsLeftAltKeyDown

```lua
IsLeftAltKeyDown() -> down: bool
```

### IsLeftControlKeyDown

```lua
IsLeftControlKeyDown() -> down: bool
```

### IsLeftMetaKeyDown

```lua
IsLeftMetaKeyDown() -> down: bool
```

### IsLeftShiftKeyDown

```lua
IsLeftShiftKeyDown() -> down: bool
```

### IsMetaKeyDown

```lua
IsMetaKeyDown() -> down: bool
```

### IsModifierKeyDown

```lua
IsModifierKeyDown() -> down: bool
```

### IsMouseButtonDown

```lua
IsMouseButtonDown(button: mouseButton?) -> down: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsRightAltKeyDown

```lua
IsRightAltKeyDown() -> down: bool
```

### IsRightControlKeyDown

```lua
IsRightControlKeyDown() -> down: bool
```

### IsRightMetaKeyDown

```lua
IsRightMetaKeyDown() -> down: bool
```

### IsRightShiftKeyDown

```lua
IsRightShiftKeyDown() -> down: bool
```

### IsShiftKeyDown

```lua
IsShiftKeyDown() -> down: bool
```

### IsUsingGamepad

```lua
IsUsingGamepad() -> down: bool
```

### IsUsingMouse

```lua
IsUsingMouse() -> down: bool
```

### MakeModifiers

```lua
MakeModifiers() -> modifiers: number
```

### SetCursorPosition

```lua
SetCursorPosition(xPosition: uiUnit, yPosition: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresLimitedInput  

Insecure code can only call this once in response to gamepad input hardware events.

### SimulateMouseClick

```lua
SimulateMouseClick(button: mouseButton)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresLimitedInput, MouseFocusValidForLimitedInput  

Effectively the same as SimulateMouseDown plus SimulateMouseUp and consumes limited input for both.

### SimulateMouseDown

```lua
SimulateMouseDown(button: mouseButton)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresLimitedInput, MouseFocusValidForLimitedInput  

Insecure code can only call this once in response to gamepad input hardware events.

### SimulateMouseUp

```lua
SimulateMouseUp(button: mouseButton)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresLimitedInput, MouseFocusValidForLimitedInput  

Insecure code can only call this once in response to gamepad input hardware events.

### SimulateMouseWheel

```lua
SimulateMouseWheel(delta: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresLimitedInput, MouseFocusValidForLimitedInput  

Insecure code can only call this once in response to gamepad input hardware events.

## Events

### INPUT_DEVICE_INTERFACE_TRANSITION

Payload: `newMode: InputDeviceInterfaceType, oldMode: InputDeviceInterfaceType`  
Flags: SynchronousEvent  

## Preconditions

- `MouseFocusValidForLimitedInput` (FailureMode=ReturnNothing)
- `RequiresLimitedInput` (FailureMode=Error)
