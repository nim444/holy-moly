# CombatLogSecure

Type: System  
Namespace: `C_CombatLogSecure`  
Environment: SecureOnly

## Functions

### C_CombatLogSecure.AddEventFilter

```lua
C_CombatLogSecure.AddEventFilter()
```

Flags: HasRestrictions  

### C_CombatLogSecure.ClearEventFilters

```lua
C_CombatLogSecure.ClearEventFilters()
```

Flags: HasRestrictions  

### C_CombatLogSecure.CreateCombatLogMessage

```lua
C_CombatLogSecure.CreateCombatLogMessage(message: string, colorR: number, colorG: number, colorB: number, order: CombatLogMessageOrder)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatLogSecure.GetCurrentEntryInfo

```lua
C_CombatLogSecure.GetCurrentEntryInfo()
```

Flags: HasRestrictions  

### C_CombatLogSecure.GetCurrentEventInfo

```lua
C_CombatLogSecure.GetCurrentEventInfo()
```

Flags: HasRestrictions  

### C_CombatLogSecure.GetEntryCount

```lua
C_CombatLogSecure.GetEntryCount(ignoreFilter: bool = false) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatLogSecure.SeekToNewestEntry

```lua
C_CombatLogSecure.SeekToNewestEntry(ignoreFilter: bool = false) -> isValidEntry: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatLogSecure.SeekToPreviousEntry

```lua
C_CombatLogSecure.SeekToPreviousEntry(ignoreFilter: bool = false) -> isValidEntry: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatLogSecure.ShouldShowCurrentEntry

```lua
C_CombatLogSecure.ShouldShowCurrentEntry() -> shouldShow: bool
```

Flags: HasRestrictions  

## Events

### COMBAT_LOG_APPLY_FILTER_SETTINGS

Payload: `filterSettings: LuaValueVariant`  
Flags: HasRestrictions, CallbackEvent  

### COMBAT_LOG_MESSAGE

Payload: `message: string, colorR: number, colorG: number, colorB: number, order: CombatLogMessageOrder`  
Flags: SynchronousEvent  

### COMBAT_LOG_REFILTER_ENTRIES

Payload: `none`  
Flags: HasRestrictions, CallbackEvent
