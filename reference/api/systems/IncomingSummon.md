# IncomingSummon

Type: System  
Namespace: `C_IncomingSummon`  
Environment: All

## Functions

### C_IncomingSummon.HasIncomingSummon

```lua
C_IncomingSummon.HasIncomingSummon(unit: UnitToken) -> summon: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_IncomingSummon.IncomingSummonStatus

```lua
C_IncomingSummon.IncomingSummonStatus(unit: UnitToken) -> status: SummonStatus
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### SummonStatus (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Pending | 1 |
| Accepted | 2 |
| Declined | 3 |
