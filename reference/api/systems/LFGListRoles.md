# LFGListRoles

Type: System  
Namespace: `C_LFGListRoles`  
Environment: All

## Functions

### C_LFGListRoles.GetRoles

```lua
C_LFGListRoles.GetRoles() -> roles: LFGRoles
```

Flags: MayReturnNothing  

### C_LFGListRoles.GetSavedRoles

```lua
C_LFGListRoles.GetSavedRoles() -> roles: LFGRoles
```

Flags: MayReturnNothing  

### C_LFGListRoles.SetRoles

```lua
C_LFGListRoles.SetRoles(roles: LFGRoles, limitToClassRoles: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LFG_LIST_ROLE_UPDATE

Payload: `none`  
Flags: SynchronousEvent
