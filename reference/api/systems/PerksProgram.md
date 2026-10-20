# PerksProgram

Type: System  
Namespace: `C_PerksProgram`  
Environment: All

## Functions

### C_PerksProgram.ClearFrozenPerksVendorItem

```lua
C_PerksProgram.ClearFrozenPerksVendorItem()
```

### C_PerksProgram.CloseInteraction

```lua
C_PerksProgram.CloseInteraction()
```

### C_PerksProgram.GetAvailableCategoryIDs

```lua
C_PerksProgram.GetAvailableCategoryIDs() -> categoryIDs: table<number>
```

### C_PerksProgram.GetAvailableVendorItemIDs

```lua
C_PerksProgram.GetAvailableVendorItemIDs() -> vendorItemIDs: table<number>
```

### C_PerksProgram.GetCategoryInfo

```lua
C_PerksProgram.GetCategoryInfo(categoryID: number) -> categoryInfo: PerksVendorCategoryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.GetCurrencyAmount

```lua
C_PerksProgram.GetCurrencyAmount() -> currencyAmount: number
```

### C_PerksProgram.GetDraggedPerksVendorItem

```lua
C_PerksProgram.GetDraggedPerksVendorItem() -> perksVendorItemID: number
```

### C_PerksProgram.GetFrozenPerksVendorItemInfo

```lua
C_PerksProgram.GetFrozenPerksVendorItemInfo() -> vendorItemInfo: PerksVendorItemInfo
```

Flags: MayReturnNothing  

### C_PerksProgram.GetPendingChestRewards

```lua
C_PerksProgram.GetPendingChestRewards() -> pendingRewards: table<PerksProgramPendingChestRewards>
```

### C_PerksProgram.GetPerksProgramItemDisplayInfo

```lua
C_PerksProgram.GetPerksProgramItemDisplayInfo(id: number) -> item: PerksProgramItemDisplayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.GetTimeRemaining

```lua
C_PerksProgram.GetTimeRemaining(vendorItemID: number) -> timeRemaining: time_t
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.GetVendorItemInfo

```lua
C_PerksProgram.GetVendorItemInfo(vendorItemID: number) -> vendorItemInfo: PerksVendorItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.GetVendorItemInfoRefundTimeLeft

```lua
C_PerksProgram.GetVendorItemInfoRefundTimeLeft(vendorItemID: number) -> refundTimeRemaining: time_t
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.IsAttackAnimToggleEnabled

```lua
C_PerksProgram.IsAttackAnimToggleEnabled() -> isAttackAnimToggleEnabled: bool
```

### C_PerksProgram.IsFrozenPerksVendorItem

```lua
C_PerksProgram.IsFrozenPerksVendorItem(perksVendorItemID: number) -> isFrozen: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.IsMountSpecialAnimToggleEnabled

```lua
C_PerksProgram.IsMountSpecialAnimToggleEnabled() -> isMountSpecialAnimToggleEnabled: bool
```

### C_PerksProgram.ItemSelectedTelemetry

```lua
C_PerksProgram.ItemSelectedTelemetry(perksVendorItemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.PickupPerksVendorItem

```lua
C_PerksProgram.PickupPerksVendorItem(perksVendorItemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.RequestCartCheckout

```lua
C_PerksProgram.RequestCartCheckout(perksVendorItemIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.RequestPendingChestRewards

```lua
C_PerksProgram.RequestPendingChestRewards()
```

### C_PerksProgram.RequestPurchase

```lua
C_PerksProgram.RequestPurchase(perksVendorItemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.RequestRefund

```lua
C_PerksProgram.RequestRefund(perksVendorItemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksProgram.ResetHeldItemDragAndDrop

```lua
C_PerksProgram.ResetHeldItemDragAndDrop()
```

### C_PerksProgram.SetFrozenPerksVendorItem

```lua
C_PerksProgram.SetFrozenPerksVendorItem()
```

## Events

### CHEST_REWARDS_UPDATED_FROM_SERVER

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_ADD_PENDING_SHOP_ITEM

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_CURRENCY_AWARDED

Payload: `value: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_CURRENCY_REFRESH

Payload: `oldValue: number, newValue: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_DATA_REFRESH

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_DATA_SPECIFIC_ITEM_REFRESH

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_OPEN

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_PURCHASE_CART_SUCCESS

Payload: `vendorItemIDs: table<number>`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_PURCHASE_SUCCESS

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_REFUND_SUCCESS

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_REMOVE_PENDING_SHOP_ITEM

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_RESULT_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### PERKS_PROGRAM_SET_FROZEN_ITEM

Payload: `vendorItemID: number`  
Flags: SynchronousEvent  

## Tables

### PerksProgramItemDisplayInfo (Structure)

- `overrideModelSceneID: number?`
- `creatureDisplayInfoID: number?`
- `mainHandItemModifiedAppearanceID: number?`
- `offHandItemModifiedAppearanceID: number?`

### PerksProgramPendingChestRewards (Structure)

- `rewardTypeID: number`
- `perksVendorItemID: number?`
- `rewardAmount: number`
- `monthRewarded: string?`
- `activityMonthID: number`
- `thresholdOrderIndex: number`

### PerksVendorCategoryInfo (Structure)

- `ID: number`
- `displayName: cstring`
- `defaultUIModelSceneID: number`

### PerksVendorItemInfo (Structure)

- `name: string`
- `perksVendorCategoryID: number`
- `description: string`
- `timeRemaining: time_t`
- `purchased: bool`
- `refundable: bool`
- `subItemsLoaded: bool`
- `isPurchasePending: bool`
- `doesNotExpire: bool`
- `price: number`
- `originalPrice: number?`
- `showSaleBanner: bool`
- `perksVendorItemID: number`
- `itemID: number`
- `iconTexture: string`
- `mountID: number`
- `mountTypeName: string`
- `speciesID: number`
- `transmogSetID: number`
- `itemModifiedAppearanceID: number`
- `subItems: table<PerksVendorSubItemInfo>`
- `uiGroupInfo: PerksVendorItemUIGroupInfo?`
- `invType: string`
- `quality: ItemQuality`

### PerksVendorItemUIGroupInfo (Structure)

- `ID: number`
- `name: cstring`
- `priority: number`

### PerksVendorSubItemInfo (Structure)

- `name: string`
- `itemID: number`
- `itemModifiedAppearanceID: number`
- `invType: string`
- `quality: ItemQuality`
