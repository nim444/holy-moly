# ItemUpgrade

Type: System  
Namespace: `C_ItemUpgrade`  
Environment: All

## Functions

### C_ItemUpgrade.CanUpgradeItem

```lua
C_ItemUpgrade.CanUpgradeItem(baseItem: ItemLocation) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemUpgrade.ClearItemUpgrade

```lua
C_ItemUpgrade.ClearItemUpgrade()
```

### C_ItemUpgrade.CloseItemUpgrade

```lua
C_ItemUpgrade.CloseItemUpgrade()
```

### C_ItemUpgrade.GetHighWatermarkForItem

```lua
C_ItemUpgrade.GetHighWatermarkForItem(itemInfo: ItemInfo) -> characterHighWatermark: number, accountHighWatermark: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ItemUpgrade.GetHighWatermarkForSlot

```lua
C_ItemUpgrade.GetHighWatermarkForSlot(itemRedundancySlot: number) -> characterHighWatermark: number, accountHighWatermark: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ItemUpgrade.GetHighWatermarkSlotForItem

```lua
C_ItemUpgrade.GetHighWatermarkSlotForItem(itemInfo: ItemInfo) -> itemRedundancySlot: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ItemUpgrade.GetItemHyperlink

```lua
C_ItemUpgrade.GetItemHyperlink() -> link: cstring
```

Flags: MayReturnNothing  

### C_ItemUpgrade.GetItemUpgradeCurrentLevel

```lua
C_ItemUpgrade.GetItemUpgradeCurrentLevel() -> itemLevel: number, isPvpItemLevel: bool
```

Flags: MayReturnNothing  

### C_ItemUpgrade.GetItemUpgradeEffect

```lua
C_ItemUpgrade.GetItemUpgradeEffect(effectIndex: number, numUpgradeLevels: number?) -> outBaseEffect: string, outUpgradedEffect: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ItemUpgrade.GetItemUpgradeItemInfo

```lua
C_ItemUpgrade.GetItemUpgradeItemInfo() -> itemInfo: ItemUpgradeItemInfo
```

Flags: MayReturnNothing  

### C_ItemUpgrade.GetItemUpgradePvpItemLevelDeltaValues

```lua
C_ItemUpgrade.GetItemUpgradePvpItemLevelDeltaValues(numUpgradeLevels: number) -> currentPvPItemLevel: number, upgradedPvPItemLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ItemUpgrade.GetNumItemUpgradeEffects

```lua
C_ItemUpgrade.GetNumItemUpgradeEffects() -> numItemUpgradeEffects: number
```

### C_ItemUpgrade.IsItemBound

```lua
C_ItemUpgrade.IsItemBound() -> isBound: bool
```

### C_ItemUpgrade.SetItemUpgradeFromCursorItem

```lua
C_ItemUpgrade.SetItemUpgradeFromCursorItem()
```

### C_ItemUpgrade.SetItemUpgradeFromLocation

```lua
C_ItemUpgrade.SetItemUpgradeFromLocation(itemToSet: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemUpgrade.UpgradeItem

```lua
C_ItemUpgrade.UpgradeItem(numUpgrades: number = 1)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ITEM_UPGRADE_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### ITEM_UPGRADE_MASTER_SET_ITEM

Payload: `none`  
Flags: SynchronousEvent  

### ITEM_UPGRADE_MASTER_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ItemUpgradeCostDiscountInfo (Structure)

- `isDiscounted: bool`
- `discountHighWatermark: number`
- `isPartialTwoHandDiscount: bool`
- `isAccountWideDiscount: bool`
- `doesCurrentCharacterMeetHighWatermark: bool` Reflects whether current character meets discount's high watermark, even if discount itself is account-wide

### ItemUpgradeCurrencyCost (Structure)

- `cost: number`
- `currencyID: number`
- `discountInfo: ItemUpgradeCostDiscountInfo`

### ItemUpgradeItemCost (Structure)

- `cost: number`
- `itemID: number`
- `discountInfo: ItemUpgradeCostDiscountInfo`

### ItemUpgradeItemInfo (Structure)

- `iconID: number`
- `name: string`
- `itemUpgradeable: bool`
- `displayQuality: number`
- `highWatermarkSlot: number`
- `currUpgrade: number`
- `maxUpgrade: number`
- `minItemLevel: number`
- `maxItemLevel: number`
- `upgradeLevelInfos: table<ItemUpgradeLevelInfo>`
- `customUpgradeString: string?`
- `upgradeCostTypesForSeason: table<ItemUpgradeSeasonalCostType>`

### ItemUpgradeLevelInfo (Structure)

- `upgradeLevel: number`
- `displayQuality: number`
- `itemLevelIncrement: number`
- `levelStats: table<ItemUpgradeStat>`
- `currencyCostsToUpgrade: table<ItemUpgradeCurrencyCost>`
- `itemCostsToUpgrade: table<ItemUpgradeItemCost>`
- `moneyCost: WOWMONEY?`
- `failureMessage: string?`

### ItemUpgradeSeasonalCostType (Structure)

Costs are made up of either an Item OR a Currency, so either itemID or currencyID will be nil

- `itemID: number?`
- `currencyID: number?`
- `orderIndex: number`
- `sourceString: string?`

### ItemUpgradeStat (Structure)

- `displayString: string`
- `statValue: number`
- `active: bool`
