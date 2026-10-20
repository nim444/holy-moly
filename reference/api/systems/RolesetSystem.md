# RolesetSystem

Type: System  
Namespace: `C_Roleset`  
Environment: All

## Functions

### C_Roleset.ApplyRolesetFilters

```lua
C_Roleset.ApplyRolesetFilters(blockedRolesets: table<string>, allowedRolesets: table<string>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets or clears both blocklist and allowlist filters atomically with a single visibility reevaluation. Pass an empty table to clear the corresponding filter.

### C_Roleset.GetActiveAllowedRolesets

```lua
C_Roleset.GetActiveAllowedRolesets() -> allowedRolesets: table<string>
```

Returns the rolesets in the currently active allowlist.

### C_Roleset.GetActiveBlockedRolesets

```lua
C_Roleset.GetActiveBlockedRolesets() -> blockedRolesets: table<string>
```

Returns the rolesets in the currently active blocklist.
