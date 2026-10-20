# CombatLog

Type: System  
Namespace: `C_CombatLog`  
Environment: All

## Functions

### C_CombatLog.ApplyFilterSettings

```lua
C_CombatLog.ApplyFilterSettings(filterSettings: LuaValueVariant)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatLog.AreFilteredEventsEnabled

```lua
C_CombatLog.AreFilteredEventsEnabled() -> enabled: bool
```

### C_CombatLog.ClearEntries

```lua
C_CombatLog.ClearEntries()
```

### C_CombatLog.DoesObjectMatchFilter

```lua
C_CombatLog.DoesObjectMatchFilter(mask: CombatLogObject, flags: CombatLogObject) -> matches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatLog.GetEntryRetentionTime

```lua
C_CombatLog.GetEntryRetentionTime() -> retentionTime: number
```

### C_CombatLog.GetMessageLimit

```lua
C_CombatLog.GetMessageLimit() -> messageLimit: number
```

### C_CombatLog.IsCombatLogRestricted

```lua
C_CombatLog.IsCombatLogRestricted() -> restricted: bool
```

### C_CombatLog.RefilterEntries

```lua
C_CombatLog.RefilterEntries()
```

### C_CombatLog.SetEntryRetentionTime

```lua
C_CombatLog.SetEntryRetentionTime(retentionTime: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatLog.SetFilteredEventsEnabled

```lua
C_CombatLog.SetFilteredEventsEnabled(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatLog.SetMessageLimit

```lua
C_CombatLog.SetMessageLimit(messageLimit: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### COMBAT_LOG_ENTRIES_CLEARED

Payload: `none`  
Flags: SynchronousEvent  

### COMBAT_LOG_EVENT

Payload: `none`  
Flags: HasRestrictions, SynchronousEvent, CallbackEvent  

### COMBAT_LOG_EVENT_UNFILTERED

Payload: `none`  
Flags: HasRestrictions, SynchronousEvent, CallbackEvent  

### COMBAT_LOG_MESSAGE_LIMIT_CHANGED

Payload: `messageLimit: number`  
Flags: SynchronousEvent
