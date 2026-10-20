# AzeriteEmpoweredItem

Type: System  
Namespace: `C_AzeriteEmpoweredItem`  
Environment: All

## Functions

### C_AzeriteEmpoweredItem.CanSelectPower

```lua
C_AzeriteEmpoweredItem.CanSelectPower(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation, powerID: number) -> canSelect: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.ConfirmAzeriteEmpoweredItemRespec

```lua
C_AzeriteEmpoweredItem.ConfirmAzeriteEmpoweredItemRespec(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.GetAllTierInfo

```lua
C_AzeriteEmpoweredItem.GetAllTierInfo(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation) -> tierInfo: table<AzeriteEmpoweredItemTierInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.GetAllTierInfoByItemID

```lua
C_AzeriteEmpoweredItem.GetAllTierInfoByItemID(itemInfo: ItemInfo, classID: number?) -> tierInfo: table<AzeriteEmpoweredItemTierInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.GetAzeriteEmpoweredItemRespecCost

```lua
C_AzeriteEmpoweredItem.GetAzeriteEmpoweredItemRespecCost() -> cost: number
```

### C_AzeriteEmpoweredItem.GetPowerInfo

```lua
C_AzeriteEmpoweredItem.GetPowerInfo(powerID: number) -> powerInfo: AzeriteEmpoweredItemPowerInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEmpoweredItem.GetPowerText

```lua
C_AzeriteEmpoweredItem.GetPowerText(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation, powerID: number, level: AzeritePowerLevel) -> powerText: AzeriteEmpoweredItemPowerText
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEmpoweredItem.GetSpecsForPower

```lua
C_AzeriteEmpoweredItem.GetSpecsForPower(powerID: number) -> specInfo: table<AzeriteSpecInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEmpoweredItem.HasAnyUnselectedPowers

```lua
C_AzeriteEmpoweredItem.HasAnyUnselectedPowers(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation) -> hasAnyUnselectedPowers: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.HasBeenViewed

```lua
C_AzeriteEmpoweredItem.HasBeenViewed(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation) -> hasBeenViewed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem

```lua
C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem(itemLocation: ItemLocation) -> isAzeriteEmpoweredItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID

```lua
C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(itemInfo: ItemInfo) -> isAzeriteEmpoweredItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.IsAzeritePreviewSourceDisplayable

```lua
C_AzeriteEmpoweredItem.IsAzeritePreviewSourceDisplayable(itemInfo: ItemInfo, classID: number?) -> isAzeritePreviewSourceDisplayable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped

```lua
C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped() -> isHeartOfAzerothEquipped: bool
```

### C_AzeriteEmpoweredItem.IsPowerAvailableForSpec

```lua
C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(powerID: number, specID: number) -> isPowerAvailableForSpec: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.IsPowerSelected

```lua
C_AzeriteEmpoweredItem.IsPowerSelected(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation, powerID: number) -> isSelected: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.SelectPower

```lua
C_AzeriteEmpoweredItem.SelectPower(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation, powerID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEmpoweredItem.SetHasBeenViewed

```lua
C_AzeriteEmpoweredItem.SetHasBeenViewed(azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### AZERITE_EMPOWERED_ITEM_EQUIPPED_STATUS_CHANGED

Payload: `isHeartEquipped: bool`  
Flags: SynchronousEvent  

### AZERITE_EMPOWERED_ITEM_SELECTION_UPDATED

Payload: `azeriteEmpoweredItemLocation: AzeriteEmpoweredItemLocation`  
Flags: SynchronousEvent  

## Tables

### AzeritePowerLevel (Enumeration)

| Name | Value |
|---|---|
| Base | 0 |
| Upgraded | 1 |
| Downgraded | 2 |

### AzeriteEmpoweredItemPowerInfo (Structure)

- `azeritePowerID: number`
- `spellID: number`

### AzeriteEmpoweredItemPowerText (Structure)

- `name: string`
- `description: string`

### AzeriteEmpoweredItemTierInfo (Structure)

- `azeritePowerIDs: table<number>`
- `unlockLevel: number`

### AzeriteSpecInfo (Structure)

- `classID: number`
- `specID: number`
