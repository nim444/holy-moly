# EquipmentSet

Type: System  
Namespace: `C_EquipmentSet`  
Environment: All

## Functions

### C_EquipmentSet.AssignSpecToEquipmentSet

```lua
C_EquipmentSet.AssignSpecToEquipmentSet(equipmentSetID: number, specIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.CanUseEquipmentSets

```lua
C_EquipmentSet.CanUseEquipmentSets() -> canUseEquipmentSets: bool
```

### C_EquipmentSet.ClearIgnoredSlotsForSave

```lua
C_EquipmentSet.ClearIgnoredSlotsForSave()
```

### C_EquipmentSet.CreateEquipmentSet

```lua
C_EquipmentSet.CreateEquipmentSet(equipmentSetName: cstring, icon: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.DeleteEquipmentSet

```lua
C_EquipmentSet.DeleteEquipmentSet(equipmentSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.EquipmentSetContainsLockedItems

```lua
C_EquipmentSet.EquipmentSetContainsLockedItems(equipmentSetID: number) -> hasLockedItems: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.GetEquipmentSetAssignedSpec

```lua
C_EquipmentSet.GetEquipmentSetAssignedSpec(equipmentSetID: number) -> specIndex: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetEquipmentSetForSpec

```lua
C_EquipmentSet.GetEquipmentSetForSpec(specIndex: luaIndex) -> equipmentSetID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetEquipmentSetID

```lua
C_EquipmentSet.GetEquipmentSetID(equipmentSetName: cstring) -> equipmentSetID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetEquipmentSetIDs

```lua
C_EquipmentSet.GetEquipmentSetIDs() -> equipmentSetIDs: table<number>
```

### C_EquipmentSet.GetEquipmentSetInfo

```lua
C_EquipmentSet.GetEquipmentSetInfo(equipmentSetID: number) -> name: string, iconFileID: number, setID: number, isEquipped: bool, numItems: number, numEquipped: number, numInInventory: number, numLost: number, numIgnored: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetIgnoredSlots

```lua
C_EquipmentSet.GetIgnoredSlots(equipmentSetID: number) -> slotIgnored: table<bool>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetItemIDs

```lua
C_EquipmentSet.GetItemIDs(equipmentSetID: number) -> itemIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetItemLocations

```lua
C_EquipmentSet.GetItemLocations(equipmentSetID: number) -> locations: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EquipmentSet.GetNumEquipmentSets

```lua
C_EquipmentSet.GetNumEquipmentSets() -> numEquipmentSets: number
```

### C_EquipmentSet.IgnoreSlotForSave

```lua
C_EquipmentSet.IgnoreSlotForSave(slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.IsSlotIgnoredForSave

```lua
C_EquipmentSet.IsSlotIgnoredForSave(slot: luaIndex) -> isSlotIgnored: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.ModifyEquipmentSet

```lua
C_EquipmentSet.ModifyEquipmentSet(equipmentSetID: number, newName: cstring, newIcon: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.PickupEquipmentSet

```lua
C_EquipmentSet.PickupEquipmentSet(equipmentSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.SaveEquipmentSet

```lua
C_EquipmentSet.SaveEquipmentSet(equipmentSetID: number, icon: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.UnassignEquipmentSetSpec

```lua
C_EquipmentSet.UnassignEquipmentSetSpec(equipmentSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.UnignoreSlotForSave

```lua
C_EquipmentSet.UnignoreSlotForSave(slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EquipmentSet.UseEquipmentSet

```lua
C_EquipmentSet.UseEquipmentSet(equipmentSetID: number) -> setWasEquipped: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### EQUIPMENT_SETS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### EQUIPMENT_SWAP_FINISHED

Payload: `result: bool, setID: number?`  
Flags: SynchronousEvent  

### EQUIPMENT_SWAP_PENDING

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOG_CUSTOM_SETS_CHANGED

Payload: `none`  
Flags: SynchronousEvent
