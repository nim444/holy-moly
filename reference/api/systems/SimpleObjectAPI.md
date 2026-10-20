# SimpleObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleObjectAPI:ClearParentKey

```lua
SimpleObjectAPI:ClearParentKey()
```

### SimpleObjectAPI:GetDebugName

```lua
SimpleObjectAPI:GetDebugName(preferParentKey: bool = false) -> debugName: string
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleObjectAPI:GetParent

```lua
SimpleObjectAPI:GetParent() -> parent: CScriptObject
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleObjectAPI:GetParentKey

```lua
SimpleObjectAPI:GetParentKey() -> parentKey: cstring
```

### SimpleObjectAPI:SetParentKey

```lua
SimpleObjectAPI:SetParentKey(parentKey: cstring, clearOtherKeys: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted
