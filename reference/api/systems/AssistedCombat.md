# AssistedCombat

Type: System  
Namespace: `C_AssistedCombat`  
Environment: All

## Functions

### C_AssistedCombat.GetActionSpell

```lua
C_AssistedCombat.GetActionSpell() -> spellID: number?
```

### C_AssistedCombat.GetNextCastSpell

```lua
C_AssistedCombat.GetNextCastSpell(checkForVisibleButton: bool = false) -> spellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AssistedCombat.GetRotationSpells

```lua
C_AssistedCombat.GetRotationSpells() -> spellIDs: table<number>
```

### C_AssistedCombat.IsAvailable

```lua
C_AssistedCombat.IsAvailable() -> isAvailable: bool, failureReason: string
```

## Events

### ASSISTED_COMBAT_ACTION_SPELL_CAST

Payload: `none`  
Flags: SynchronousEvent
