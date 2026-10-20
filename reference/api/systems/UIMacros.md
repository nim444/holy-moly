# UIMacros

Type: System  
Namespace: `C_Macro`  
Environment: All

## Functions

### C_Macro.GetMacroName

```lua
C_Macro.GetMacroName(macroId: luaIndex) -> name: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Macro.GetSelectedMacroIcon

```lua
C_Macro.GetSelectedMacroIcon(macroId: luaIndex) -> textureNum: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Macro.RunMacroText

```lua
C_Macro.RunMacroText(text: cstring, button: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Macro.SetMacroExecuteLineCallback

```lua
C_Macro.SetMacroExecuteLineCallback(cb: MacroExecuteLineCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### UPDATE_MACROS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### MacroExecuteLineCallback (CallbackType)

- `macroLine: cstring`
