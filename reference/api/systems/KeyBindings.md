# KeyBindings

Type: System  
Namespace: `C_KeyBindings`  
Environment: All

## Functions

### C_KeyBindings.ActivateBindingContext

```lua
C_KeyBindings.ActivateBindingContext(newContext: BindingContext)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_KeyBindings.DeactivateBindingContext

```lua
C_KeyBindings.DeactivateBindingContext(context: BindingContext)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_KeyBindings.GetBindingByKey

```lua
C_KeyBindings.GetBindingByKey(action: cstring, context: BindingContext?) -> binding: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.GetBindingContextForAction

```lua
C_KeyBindings.GetBindingContextForAction(action: cstring) -> context: BindingContext?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.GetBindingIndex

```lua
C_KeyBindings.GetBindingIndex(action: cstring) -> bindingIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.GetCustomBindingType

```lua
C_KeyBindings.GetCustomBindingType(bindingIndex: luaIndex) -> customBindingType: CustomBindingType?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.GetSearchTagsForAction

```lua
C_KeyBindings.GetSearchTagsForAction(action: cstring) -> searchTags: table<string>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.GetTurnStrafeStyle

```lua
C_KeyBindings.GetTurnStrafeStyle() -> style: TurnStrafeStyle
```

### C_KeyBindings.IsBindingContextActive

```lua
C_KeyBindings.IsBindingContextActive(context: BindingContext) -> isActive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_KeyBindings.SetTurnStrafeStyle

```lua
C_KeyBindings.SetTurnStrafeStyle(style: TurnStrafeStyle)
```

Secret: SecretArguments=AllowedWhenUntainted  

Can only set to Modern or Legacy.

### C_KeyBindings.UpdateTurnStrafeBindingsForCharacter

```lua
C_KeyBindings.UpdateTurnStrafeBindingsForCharacter()
```

## Events

### BINDINGS_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### MODIFIER_STATE_CHANGED

Payload: `key: cstring, down: number`  
Flags: SynchronousEvent  

### NOTIFY_TURN_STRAFE_CHANGE

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_BINDINGS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### BindingContext (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| HousingEditor | 1 |
| HousingEditorBasicDecorMode | 2 |
| HousingEditorExpertDecorMode | 3 |
| HousingEditorCustomizeMode | 4 |
| HousingEditorCleanupMode | 5 |
| HousingEditorLayoutMode | 6 |
| HousingEditorBasicAndExpertDecorMode | 7 |
| HousingEditorExteriorCustomizationMode | 8 |
| GamepadModeInGameCore | 9 |

### BindingSet (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| Account | 1 |
| Character | 2 |
| Current | 3 |

### CustomBindingType (Enumeration)

| Name | Value |
|---|---|
| VoicePushToTalk | 0 |

### TurnStrafeStyle (Enumeration)

| Name | Value |
|---|---|
| Modern | 0 |
| Legacy | 1 |
| Custom | 2 |

### InputCommandCallback (CallbackType)

- `keystate: cstring`
