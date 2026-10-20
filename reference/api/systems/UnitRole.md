# UnitRole

Type: System  
Environment: All

## Functions

### AreClassRolesSoftSuggestions

```lua
AreClassRolesSoftSuggestions() -> result: bool
```

If true, UnitGetAvailableRoles results should be treated as suggested role, not hard limits on what role the current player can display as.

### CanShowSetRoleButton

```lua
CanShowSetRoleButton() -> result: bool
```

### InitiateRolePoll

```lua
InitiateRolePoll() -> result: bool
```

### UnitGetAvailableRoles

```lua
UnitGetAvailableRoles(unit: UnitToken) -> tank: bool, healer: bool, dps: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitSetRole

```lua
UnitSetRole(unit: UnitToken, roleStr: cstring?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### UnitSetRoleEnum

```lua
UnitSetRoleEnum(unit: UnitToken, role: LFGRole?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### ROLE_CHANGED_INFORM

Payload: `changedName: cstring, fromName: cstring, oldRole: cstring, newRole: cstring`  
Flags: SynchronousEvent  

### ROLE_POLL_BEGIN

Payload: `fromName: cstring`  
Flags: SynchronousEvent
