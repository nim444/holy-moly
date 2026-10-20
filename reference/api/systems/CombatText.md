# CombatText

Type: System  
Namespace: `C_CombatText`  
Environment: All

## Functions

### C_CombatText.GetActiveUnit

```lua
C_CombatText.GetActiveUnit() -> unitTarget: string
```

Flags: MayReturnNothing  

### C_CombatText.GetCurrentEventInfo

```lua
C_CombatText.GetCurrentEventInfo()
```

Secret: SecretReturns  

### C_CombatText.SetActiveUnit

```lua
C_CombatText.SetActiveUnit(unitToken: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresDeclassifiedUnitIdentity  

## Events

### COMBAT_TEXT_UPDATE

Payload: `combatTextType: cstring`  
Flags: SynchronousEvent
