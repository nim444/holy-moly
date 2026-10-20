# CVarScripts

Type: System  
Namespace: `C_CVar`  
Environment: All

## Functions

### C_CVar.AreCVarsLoaded

```lua
C_CVar.AreCVarsLoaded() -> loaded: bool
```

### C_CVar.GetCVar

```lua
C_CVar.GetCVar(name: cstring) -> value: string?
```

Secret: SecretArguments=NotAllowed  

### C_CVar.GetCVarBitfield

```lua
C_CVar.GetCVarBitfield(name: cstring, index: luaIndex) -> value: bool?
```

Secret: SecretArguments=NotAllowed  

### C_CVar.GetCVarBool

```lua
C_CVar.GetCVarBool(name: cstring) -> value: bool?
```

Secret: SecretArguments=NotAllowed  

### C_CVar.GetCVarDefault

```lua
C_CVar.GetCVarDefault(name: cstring) -> defaultValue: string?
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidAndPublicCVar  

### C_CVar.GetCVarInfo

```lua
C_CVar.GetCVarInfo(name: cstring) -> value: cstring, defaultValue: cstring, isStoredServerAccount: bool, isStoredServerCharacter: bool, isLockedFromUser: bool, isSecure: bool, isReadOnly: bool
```

Secret: SecretArguments=NotAllowed  

### C_CVar.RegisterCVar

```lua
C_CVar.RegisterCVar(name: cstring, value: cstring?)
```

Secret: SecretArguments=NotAllowed  

### C_CVar.RemoveTempCVar

```lua
C_CVar.RemoveTempCVar(name: cstring)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidAndPublicCVar, RequiresNonReadOnlyCVar, RequiresNonSecureCVar  

### C_CVar.ResetTestCVars

```lua
C_CVar.ResetTestCVars()
```

### C_CVar.SetCVar

```lua
C_CVar.SetCVar(name: cstring, value: cstring?) -> success: bool
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidAndPublicCVar, RequiresNonReadOnlyCVar, RequiresNonSecureCVar  

### C_CVar.SetCVarBitfield

```lua
C_CVar.SetCVarBitfield(name: cstring, index: luaIndex, value: bool) -> success: bool
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidAndPublicCVar, RequiresNonReadOnlyCVar, RequiresNonSecureCVar, RequiresIndexInRange  

### C_CVar.SetTempCVar

```lua
C_CVar.SetTempCVar(name: cstring, value: cstring?)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidAndPublicCVar, RequiresNonReadOnlyCVar, RequiresNonSecureCVar  

## Tables

### CVarInfo (Structure)

- `value: cstring`
- `defaultValue: cstring`
- `isStoredServerAccount: bool`
- `isStoredServerCharacter: bool`
- `isLockedFromUser: bool`
- `isSecure: bool`
- `isReadOnly: bool`

## Preconditions

- `RequiresIndexInRange` (FailureMode=Error)
- `RequiresNonReadOnlyCVar` (FailureMode=ReturnNothing)
- `RequiresNonSecureCVar` (FailureMode=ReturnNothing)
- `RequiresValidAndPublicCVar` (FailureMode=ReturnNothing)
