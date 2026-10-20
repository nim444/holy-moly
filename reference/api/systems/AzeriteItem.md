# AzeriteItem

Type: System  
Namespace: `C_AzeriteItem`  
Environment: All

## Functions

### C_AzeriteItem.FindActiveAzeriteItem

```lua
C_AzeriteItem.FindActiveAzeriteItem() -> activeAzeriteItemLocation: AzeriteItemLocation
```

Flags: MayReturnNothing  

### C_AzeriteItem.GetAzeriteItemXPInfo

```lua
C_AzeriteItem.GetAzeriteItemXPInfo(azeriteItemLocation: AzeriteItemLocation) -> xp: number, totalLevelXP: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteItem.GetPowerLevel

```lua
C_AzeriteItem.GetPowerLevel(azeriteItemLocation: AzeriteItemLocation) -> powerLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteItem.GetUnlimitedPowerLevel

```lua
C_AzeriteItem.GetUnlimitedPowerLevel(azeriteItemLocation: AzeriteItemLocation) -> powerLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteItem.HasActiveAzeriteItem

```lua
C_AzeriteItem.HasActiveAzeriteItem() -> hasActiveAzeriteItem: bool
```

### C_AzeriteItem.IsAzeriteItem

```lua
C_AzeriteItem.IsAzeriteItem(itemLocation: ItemLocation) -> isAzeriteItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteItem.IsAzeriteItemAtMaxLevel

```lua
C_AzeriteItem.IsAzeriteItemAtMaxLevel() -> isAtMax: bool
```

### C_AzeriteItem.IsAzeriteItemByID

```lua
C_AzeriteItem.IsAzeriteItemByID(itemInfo: ItemInfo) -> isAzeriteItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteItem.IsAzeriteItemEnabled

```lua
C_AzeriteItem.IsAzeriteItemEnabled(azeriteItemLocation: AzeriteItemLocation) -> isEnabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteItem.IsUnlimitedLevelingUnlocked

```lua
C_AzeriteItem.IsUnlimitedLevelingUnlocked() -> isUnlimitedLevelingUnlocked: bool
```

## Events

### AZERITE_ITEM_ENABLED_STATE_CHANGED

Payload: `enabled: bool`  
Flags: SynchronousEvent  

### AZERITE_ITEM_EXPERIENCE_CHANGED

Payload: `azeriteItemLocation: AzeriteItemLocation, oldExperienceAmount: number, newExperienceAmount: number`  
Flags: SynchronousEvent  

### AZERITE_ITEM_POWER_LEVEL_CHANGED

Payload: `azeriteItemLocation: AzeriteItemLocation, oldPowerLevel: number, newPowerLevel: number, unlockedEmpoweredItemsInfo: table<UnlockedAzeriteEmpoweredItems>, azeriteItemID: number`  
Flags: SynchronousEvent  

## Tables

### UnlockedAzeriteEmpoweredItems (Structure)

- `unlockedItem: AzeriteEmpoweredItemLocation`
- `tierIndex: luaIndex`
