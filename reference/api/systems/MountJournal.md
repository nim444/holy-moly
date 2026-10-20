# MountJournal

Type: System  
Namespace: `C_MountJournal`  
Environment: All

## Functions

### C_MountJournal.ApplyMountEquipment

```lua
C_MountJournal.ApplyMountEquipment(itemLocation: ItemLocation) -> canContinue: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.AreMountEquipmentEffectsSuppressed

```lua
C_MountJournal.AreMountEquipmentEffectsSuppressed() -> areEffectsSuppressed: bool
```

### C_MountJournal.ClearFanfare

```lua
C_MountJournal.ClearFanfare(mountID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.ClearRecentFanfares

```lua
C_MountJournal.ClearRecentFanfares()
```

### C_MountJournal.Dismiss

```lua
C_MountJournal.Dismiss()
```

### C_MountJournal.GetAllCreatureDisplayIDsForMountID

```lua
C_MountJournal.GetAllCreatureDisplayIDsForMountID(mountID: number) -> creatureDisplayIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetAppliedMountEquipmentID

```lua
C_MountJournal.GetAppliedMountEquipmentID() -> itemID: number?
```

### C_MountJournal.GetCollectedDragonridingMounts

```lua
C_MountJournal.GetCollectedDragonridingMounts() -> mountIDs: table<number>
```

### C_MountJournal.GetCollectedFilterSetting

```lua
C_MountJournal.GetCollectedFilterSetting(filterIndex: luaIndex) -> isChecked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo

```lua
C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo(mountIndex: luaIndex) -> allDisplayInfo: table<MountCreatureDisplayInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetDisplayedMountID

```lua
C_MountJournal.GetDisplayedMountID(displayIndex: luaIndex) -> mountID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetDisplayedMountInfo

```lua
C_MountJournal.GetDisplayedMountInfo(displayIndex: luaIndex) -> name: cstring, spellID: number, icon: fileID, isActive: bool, isUsable: bool, sourceType: number, isFavorite: bool, isFactionSpecific: bool, faction: PvPFaction?, shouldHideOnChar: bool, isCollected: bool, mountID: number, isSteadyFlight: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetDisplayedMountInfoExtra

```lua
C_MountJournal.GetDisplayedMountInfoExtra(mountIndex: luaIndex) -> creatureDisplayInfoID: number?, description: cstring, source: cstring, isSelfMount: bool, mountTypeID: number, uiModelSceneID: number, animID: number, spellVisualKitID: number, disablePlayerMountPreview: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetDynamicFlightModeSpellID

```lua
C_MountJournal.GetDynamicFlightModeSpellID() -> spellID: number
```

### C_MountJournal.GetIsFavorite

```lua
C_MountJournal.GetIsFavorite(mountIndex: luaIndex) -> isFavorite: bool, canSetFavorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetMountAllCreatureDisplayInfoByID

```lua
C_MountJournal.GetMountAllCreatureDisplayInfoByID(mountID: number) -> allDisplayInfo: table<MountCreatureDisplayInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetMountEquipmentUnlockLevel

```lua
C_MountJournal.GetMountEquipmentUnlockLevel() -> level: number
```

### C_MountJournal.GetMountFromItem

```lua
C_MountJournal.GetMountFromItem(itemID: number) -> mountID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetMountFromSpell

```lua
C_MountJournal.GetMountFromSpell(spellID: SpellIdentifier) -> mountID: number?
```

Secret: SecretArguments=AllowedWhenTainted  

### C_MountJournal.GetMountIDs

```lua
C_MountJournal.GetMountIDs() -> mountIDs: table<number>
```

### C_MountJournal.GetMountInfoByID

```lua
C_MountJournal.GetMountInfoByID(mountID: number) -> name: cstring, spellID: number, icon: fileID, isActive: bool, isUsable: bool, sourceType: number, isFavorite: bool, isFactionSpecific: bool, faction: PvPFaction?, shouldHideOnChar: bool, isCollected: bool, mountID: number, isSteadyFlight: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetMountInfoExtraByID

```lua
C_MountJournal.GetMountInfoExtraByID(mountID: number) -> creatureDisplayInfoID: number?, description: cstring, source: cstring, isSelfMount: bool, mountTypeID: number, uiModelSceneID: number, animID: number, spellVisualKitID: number, disablePlayerMountPreview: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetMountLink

```lua
C_MountJournal.GetMountLink(spellID: number) -> mountCreatureDisplayInfoLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.GetMountUsabilityByID

```lua
C_MountJournal.GetMountUsabilityByID(mountID: number, checkIndoors: bool) -> isUsable: bool, useError: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MountJournal.GetNumDisplayedMounts

```lua
C_MountJournal.GetNumDisplayedMounts() -> numMounts: number
```

### C_MountJournal.GetNumMounts

```lua
C_MountJournal.GetNumMounts() -> numMounts: number
```

### C_MountJournal.GetNumMountsNeedingFanfare

```lua
C_MountJournal.GetNumMountsNeedingFanfare() -> numMountsNeedingFanfare: number
```

### C_MountJournal.HasDisplayableMount

```lua
C_MountJournal.HasDisplayableMount() -> hasMount: bool
```

### C_MountJournal.IsDragonridingUnlocked

```lua
C_MountJournal.IsDragonridingUnlocked() -> isUnlocked: bool
```

Returns whether the player has unlocked the ability to switch between Skyriding and steady flight styles for flying mounts .

### C_MountJournal.IsItemMountEquipment

```lua
C_MountJournal.IsItemMountEquipment(itemLocation: ItemLocation) -> isMountEquipment: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Determines if the item is mount equipment based on its class and subclass.

### C_MountJournal.IsMountEquipmentApplied

```lua
C_MountJournal.IsMountEquipmentApplied() -> isApplied: bool
```

### C_MountJournal.IsSourceChecked

```lua
C_MountJournal.IsSourceChecked(filterIndex: luaIndex) -> isChecked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.IsTypeChecked

```lua
C_MountJournal.IsTypeChecked(filterIndex: luaIndex) -> isChecked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.IsUsingDefaultFilters

```lua
C_MountJournal.IsUsingDefaultFilters() -> isUsingDefaultFilters: bool
```

### C_MountJournal.IsValidSourceFilter

```lua
C_MountJournal.IsValidSourceFilter(filterIndex: luaIndex) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.IsValidTypeFilter

```lua
C_MountJournal.IsValidTypeFilter(filterIndex: luaIndex) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.MountEquipmentAvailable

```lua
C_MountJournal.MountEquipmentAvailable() -> isMountEquipmentAvailable: bool
```

### C_MountJournal.NeedsFanfare

```lua
C_MountJournal.NeedsFanfare(mountID: number) -> needsFanfare: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.Pickup

```lua
C_MountJournal.Pickup(displayIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.PickupDynamicFlightMode

```lua
C_MountJournal.PickupDynamicFlightMode()
```

### C_MountJournal.SetAllSourceFilters

```lua
C_MountJournal.SetAllSourceFilters(isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetAllTypeFilters

```lua
C_MountJournal.SetAllTypeFilters(isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetCollectedFilterSetting

```lua
C_MountJournal.SetCollectedFilterSetting(filterIndex: luaIndex, isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetDefaultFilters

```lua
C_MountJournal.SetDefaultFilters()
```

### C_MountJournal.SetIsFavorite

```lua
C_MountJournal.SetIsFavorite(mountIndex: luaIndex, isFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetSearch

```lua
C_MountJournal.SetSearch(searchValue: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetSourceFilter

```lua
C_MountJournal.SetSourceFilter(filterIndex: luaIndex, isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SetTypeFilter

```lua
C_MountJournal.SetTypeFilter(filterIndex: luaIndex, isChecked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SummonByID

```lua
C_MountJournal.SummonByID(mountID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MountJournal.SwapDynamicFlightMode

```lua
C_MountJournal.SwapDynamicFlightMode()
```

## Events

### MOUNT_EQUIPMENT_APPLY_RESULT

Payload: `success: bool`  
Flags: SynchronousEvent  

### MOUNT_JOURNAL_SEARCH_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### MOUNT_JOURNAL_USABILITY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### NEW_MOUNT_ADDED

Payload: `mountID: number`  
Flags: SynchronousEvent  

## Tables

### MountCreatureDisplayInfo (Structure)

- `creatureDisplayID: number`
- `isVisible: bool`

### MountInfo (Structure)

- `name: cstring`
- `spellID: number`
- `icon: fileID`
- `isActive: bool`
- `isUsable: bool`
- `sourceType: number`
- `isFavorite: bool`
- `isFactionSpecific: bool`
- `faction: PvPFaction?`
- `shouldHideOnChar: bool`
- `isCollected: bool`
- `mountID: number`
- `isSteadyFlight: bool`

### MountInfoExtra (Structure)

- `creatureDisplayInfoID: number?`
- `description: cstring`
- `source: cstring`
- `isSelfMount: bool`
- `mountTypeID: number`
- `uiModelSceneID: number`
- `animID: number`
- `spellVisualKitID: number`
- `disablePlayerMountPreview: bool`
