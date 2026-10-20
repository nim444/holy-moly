# HeirloomInfo

Type: System  
Namespace: `C_HeirloomInfo`  
Environment: All

## Functions

### C_HeirloomInfo.AreAllCollectionFiltersChecked

```lua
C_HeirloomInfo.AreAllCollectionFiltersChecked() -> areAllCollectionFiltersChecked: bool
```

### C_HeirloomInfo.AreAllSourceFiltersChecked

```lua
C_HeirloomInfo.AreAllSourceFiltersChecked() -> areAllSourceFiltersChecked: bool
```

### C_HeirloomInfo.HeirloomsAvailable

```lua
C_HeirloomInfo.HeirloomsAvailable() -> areHeirloomsAvailable: bool
```

### C_HeirloomInfo.IsHeirloomSourceValid

```lua
C_HeirloomInfo.IsHeirloomSourceValid(source: luaIndex) -> isHeirloomSourceValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HeirloomInfo.IsUsingDefaultFilters

```lua
C_HeirloomInfo.IsUsingDefaultFilters() -> isUsingDefaultFilters: bool
```

### C_HeirloomInfo.SetAllCollectionFilters

```lua
C_HeirloomInfo.SetAllCollectionFilters(checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HeirloomInfo.SetAllSourceFilters

```lua
C_HeirloomInfo.SetAllSourceFilters(checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HeirloomInfo.SetDefaultFilters

```lua
C_HeirloomInfo.SetDefaultFilters()
```

## Events

### HEIRLOOM_UPGRADE_TARGETING_CHANGED

Payload: `pendingHeirloomUpgradeSpellcast: bool`  
Flags: SynchronousEvent  

### HEIRLOOMS_UPDATED

Payload: `itemID: number?, updateReason: cstring?, hideUntilLearned: bool?`  
Flags: SynchronousEvent, UniqueEvent
