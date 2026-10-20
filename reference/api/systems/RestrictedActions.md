# RestrictedActions

Type: System  
Namespace: `C_RestrictedActions`  
Environment: All

## Functions

### C_RestrictedActions.CheckAllowProtectedFunctions

```lua
C_RestrictedActions.CheckAllowProtectedFunctions(object: FrameScriptObject, silent: bool = false) -> protectedFunctionsAllowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if the calling context has permissions to call protected functions on the supplied object.

### C_RestrictedActions.GetAddOnRestrictionState

```lua
C_RestrictedActions.GetAddOnRestrictionState(type: AddOnRestrictionType) -> state: AddOnRestrictionState
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the current state of an addon restriction type.

### C_RestrictedActions.InCombatLockdown

```lua
C_RestrictedActions.InCombatLockdown() -> inCombatLockdown: bool
```

Flags: Namespace=  

### C_RestrictedActions.IsAddOnRestrictionActive

```lua
C_RestrictedActions.IsAddOnRestrictionActive(type: AddOnRestrictionType) -> active: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if an addon restriction type is in an active state. Will always return false during dispatch of ADDON_RESTRICTION_STATE_CHANGED.

## Events

### ADDON_ACTION_BLOCKED

Payload: `isTainted: cstring, function: cstring`  
Flags: SynchronousEvent  

### ADDON_ACTION_FORBIDDEN

Payload: `isTainted: cstring, function: cstring`  
Flags: SynchronousEvent  

### ADDON_RESTRICTION_STATE_CHANGED

Payload: `type: AddOnRestrictionType, state: AddOnRestrictionState`  
Flags: SynchronousEvent  
Fired when the state of an addon restriction type is changing. This event is sequenced such that it will always be fired before a restriction becomes active, or after it is deactivated.

### MACRO_ACTION_BLOCKED

Payload: `function: cstring`  
Flags: SynchronousEvent  

### MACRO_ACTION_FORBIDDEN

Payload: `function: cstring`  
Flags: SynchronousEvent
