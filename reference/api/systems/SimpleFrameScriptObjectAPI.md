# SimpleFrameScriptObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleFrameScriptObjectAPI:AddAccessRestrictions

```lua
SimpleFrameScriptObjectAPI:AddAccessRestrictions(restrictions: ScriptObjectAccessRestriction)
```

Secret: SecretArguments=NotAllowed  

Flags: HasRestrictions  

Adds access restrictions to a script object, preventing it from being used in API calls when enforced.

### SimpleFrameScriptObjectAPI:AddForbiddenAspects

```lua
SimpleFrameScriptObjectAPI:AddForbiddenAspects(aspects: ForbiddenAspect)
```

Secret: SecretArguments=NotAllowed  

Flags: HasRestrictions  

Adds forbidden aspects to a script object, restricting access to various functionalities such as script bindings.

### SimpleFrameScriptObjectAPI:AddSecretAspect

```lua
SimpleFrameScriptObjectAPI:AddSecretAspect(aspect: SecretAspect)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### SimpleFrameScriptObjectAPI:CanBeAccessedInContext

```lua
SimpleFrameScriptObjectAPI:CanBeAccessedInContext() -> canAccess: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

Returns whether the current Lua execution context has permission to access this object.

### SimpleFrameScriptObjectAPI:GetAccessRestrictions

```lua
SimpleFrameScriptObjectAPI:GetAccessRestrictions() -> restrictions: ScriptObjectAccessRestriction
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

Returns the mask of all access restrictions applied to this object.

### SimpleFrameScriptObjectAPI:GetForbiddenAspects

```lua
SimpleFrameScriptObjectAPI:GetForbiddenAspects() -> aspects: ForbiddenAspect
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

Returns the mask of all forbidden aspects applied to this object.

### SimpleFrameScriptObjectAPI:GetInheritableForbiddenAspects

```lua
SimpleFrameScriptObjectAPI:GetInheritableForbiddenAspects(path: ScriptObjectPropagationPath) -> aspects: ForbiddenAspect
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity'], SecretArguments=NotAllowed  

Returns the mask of all forbidden aspects applied to this object that can propagate to others.

### SimpleFrameScriptObjectAPI:GetName

```lua
SimpleFrameScriptObjectAPI:GetName() -> name: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectName']  

### SimpleFrameScriptObjectAPI:GetObjectTable

```lua
SimpleFrameScriptObjectAPI:GetObjectTable() -> objectTable: FrameScriptObject
```

### SimpleFrameScriptObjectAPI:GetObjectType

```lua
SimpleFrameScriptObjectAPI:GetObjectType() -> objectType: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectType']  

### SimpleFrameScriptObjectAPI:HasAccessConstraints

```lua
SimpleFrameScriptObjectAPI:HasAccessConstraints() -> hasAccessConstraints: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

Returns whether this object has any access constraints that may limit access from some Lua execution contexts.

### SimpleFrameScriptObjectAPI:HasAnyAccessRestrictions

```lua
SimpleFrameScriptObjectAPI:HasAnyAccessRestrictions(restrictions: ScriptObjectAccessRestriction?) -> hasAnyAccessRestriction: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity'], SecretArguments=AllowedWhenUntainted  

Returns true if this object has any of the supplied access restrictions applied.

### SimpleFrameScriptObjectAPI:HasAnyForbiddenAspects

```lua
SimpleFrameScriptObjectAPI:HasAnyForbiddenAspects(aspects: ForbiddenAspect?) -> hasAnyForbiddenAspect: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity'], SecretArguments=AllowedWhenUntainted  

Returns true if this object has any of the supplied forbidden aspects added.

### SimpleFrameScriptObjectAPI:HasAnySecretAspect

```lua
SimpleFrameScriptObjectAPI:HasAnySecretAspect() -> hasSecretAspect: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecrets']  

### SimpleFrameScriptObjectAPI:HasSecretAspect

```lua
SimpleFrameScriptObjectAPI:HasSecretAspect(aspect: SecretAspect) -> hasSecretAspect: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecrets'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleFrameScriptObjectAPI:HasSecretValues

```lua
SimpleFrameScriptObjectAPI:HasSecretValues() -> hasSecretValues: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecrets']  

### SimpleFrameScriptObjectAPI:IsForbidden

```lua
SimpleFrameScriptObjectAPI:IsForbidden() -> isForbidden: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

Returns whether this object has been explicitly marked as forbidden.

### SimpleFrameScriptObjectAPI:IsObjectType

```lua
SimpleFrameScriptObjectAPI:IsObjectType(objectType: cstring) -> isType: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectType'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleFrameScriptObjectAPI:IsPreventingSecretValues

```lua
SimpleFrameScriptObjectAPI:IsPreventingSecretValues() -> isPreventingSecretValues: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecrets']  

### SimpleFrameScriptObjectAPI:SetForbidden

```lua
SimpleFrameScriptObjectAPI:SetForbidden()
```

Flags: HasRestrictions  

### SimpleFrameScriptObjectAPI:SetToDefaults

```lua
SimpleFrameScriptObjectAPI:SetToDefaults()
```

Flags: IsProtectedFunction, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.SetToDefaults'}, {'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.RemoveSecretAspects'}]  

Reset all script accessible values to their default values. If possible, clears secret states.
