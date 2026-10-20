# ClassTalents

Type: System  
Namespace: `C_ClassTalents`  
Environment: All

## Functions

### C_ClassTalents.CanChangeTalents

```lua
C_ClassTalents.CanChangeTalents() -> canChange: bool, canAdd: bool, changeError: string?
```

Returns true only if the player has staged changes and can commit their talents in their current state.

### C_ClassTalents.CanCreateNewConfig

```lua
C_ClassTalents.CanCreateNewConfig() -> canCreate: bool
```

### C_ClassTalents.CanEditTalents

```lua
C_ClassTalents.CanEditTalents() -> canEdit: bool, changeError: cstring
```

Returns true if the player could switch talents if they staged a proper loadout.

### C_ClassTalents.CommitConfig

```lua
C_ClassTalents.CommitConfig(savedConfigID: number?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.DeleteConfig

```lua
C_ClassTalents.DeleteConfig(configID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.GetActiveConfigID

```lua
C_ClassTalents.GetActiveConfigID() -> activeConfigID: number?
```

### C_ClassTalents.GetActiveHeroTalentSpec

```lua
C_ClassTalents.GetActiveHeroTalentSpec() -> heroSpecID: number?
```

Returns the SubTreeID of the player's active Hero Talent Specialization SubTree.

### C_ClassTalents.GetConfigIDsBySpecID

```lua
C_ClassTalents.GetConfigIDsBySpecID(specID: number?) -> configIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.GetHasStarterBuild

```lua
C_ClassTalents.GetHasStarterBuild() -> hasStarterBuild: bool
```

### C_ClassTalents.GetHeroTalentSpecsForClassSpec

```lua
C_ClassTalents.GetHeroTalentSpecsForClassSpec(configID: number?, classSpecID: number?) -> subTreeIDs: table<number>?, requiredPlayerLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns the SubTreeIDs of the Hero Talent Specializations available to a Class Specialization and config; Returns nothing if none available

### C_ClassTalents.GetLastSelectedSavedConfigID

```lua
C_ClassTalents.GetLastSelectedSavedConfigID(specID: number) -> configID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.GetNextStarterBuildPurchase

```lua
C_ClassTalents.GetNextStarterBuildPurchase() -> nodeID: number?, entryID: number?
```

### C_ClassTalents.GetStarterBuildActive

```lua
C_ClassTalents.GetStarterBuildActive() -> isActive: bool
```

### C_ClassTalents.GetTraitTreeForSpec

```lua
C_ClassTalents.GetTraitTreeForSpec(specID: number) -> treeID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.HasUnspentHeroTalentPoints

```lua
C_ClassTalents.HasUnspentHeroTalentPoints() -> hasUnspentPoints: bool, numHeroPoints: number
```

Returns whether the player has any unspent talent points in their active hero talent tree. If hasUnspentPoints is true, numHeroPoints will be greater than zero.

### C_ClassTalents.HasUnspentTalentPoints

```lua
C_ClassTalents.HasUnspentTalentPoints() -> hasUnspentPoints: bool, numClassPoints: number, numSpecPoints: number
```

Returns whether the player has any unspent talent points in their class or spec talent trees. If hasUnspentPoints is true, the number of unspent points for at least one of the trees will be greater than zero. Hero talent points are not included by this function.

### C_ClassTalents.ImportLoadout

```lua
C_ClassTalents.ImportLoadout(configID: number, entries: table<ImportLoadoutEntryInfo>, name: string, importString: string?) -> success: bool, importError: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.InitializeViewLoadout

```lua
C_ClassTalents.InitializeViewLoadout(specID: number, level: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.IsConfigPopulated

```lua
C_ClassTalents.IsConfigPopulated(configID: number) -> isPopulated: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

New configs may or may not be populated and ready to load immediately after creation. Avoid calling for configs intentionally created empty.

### C_ClassTalents.LoadConfig

```lua
C_ClassTalents.LoadConfig(configID: number, autoApply: bool) -> result: LoadConfigResult, changeError: string?, newLearnedNodeIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.RenameConfig

```lua
C_ClassTalents.RenameConfig(configID: number, name: string) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.RequestNewConfig

```lua
C_ClassTalents.RequestNewConfig(name: string) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.SaveConfig

```lua
C_ClassTalents.SaveConfig(configID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.SetStarterBuildActive

```lua
C_ClassTalents.SetStarterBuildActive(active: bool) -> result: LoadConfigResult
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.SetUsesSharedActionBars

```lua
C_ClassTalents.SetUsesSharedActionBars(configID: number, usesShared: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.SwitchToLoadoutByIndex

```lua
C_ClassTalents.SwitchToLoadoutByIndex(loadoutIndex: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Loads loadout for the current specialization by dropdown index. Indices start at 1.

### C_ClassTalents.SwitchToLoadoutByName

```lua
C_ClassTalents.SwitchToLoadoutByName(loadoutName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Loads loadout for the current specialization by name. Loads the first one found in the case of duplicate names.

### C_ClassTalents.SwitchToSpecializationByIndex

```lua
C_ClassTalents.SwitchToSpecializationByIndex(specIndex: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Activates specialization for the current class by index in the order within the Specializations tab. Indices start at 1.

### C_ClassTalents.SwitchToSpecializationByName

```lua
C_ClassTalents.SwitchToSpecializationByName(specName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Activates specialization for the current class by spec name.

### C_ClassTalents.UpdateLastSelectedSavedConfigID

```lua
C_ClassTalents.UpdateLastSelectedSavedConfigID(specID: number, configID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClassTalents.ViewLoadout

```lua
C_ClassTalents.ViewLoadout(entries: table<ImportLoadoutEntryInfo>, importString: string?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTIVE_COMBAT_CONFIG_CHANGED

Payload: `configID: number`  
Flags: SynchronousEvent  

### CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_INDEX

Payload: `loadoutIndex: number`  
Flags: CallbackEvent  

### CLASS_TALENTS_SWITCH_TO_LOADOUT_BY_NAME

Payload: `loadoutName: cstring`  
Flags: CallbackEvent  

### CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_INDEX

Payload: `specIndex: number`  
Flags: CallbackEvent  

### CLASS_TALENTS_SWITCH_TO_SPECIALIZATION_BY_NAME

Payload: `specName: cstring`  
Flags: CallbackEvent  

### SELECTED_LOADOUT_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### SPECIALIZATION_CHANGE_CAST_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### STARTER_BUILD_ACTIVATION_FAILED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### LoadConfigResult (Enumeration)

| Name | Value |
|---|---|
| Error | 0 |
| NoChangesNecessary | 1 |
| LoadInProgress | 2 |
| Ready | 3 |

### ImportLoadoutEntryInfo (Structure)

- `nodeID: number`
- `ranksGranted: number`
- `ranksPurchased: number`
- `selectionEntryID: number`
