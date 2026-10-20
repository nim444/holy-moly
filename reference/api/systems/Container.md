# Container

Type: System  
Namespace: `C_Container`  
Environment: All

## Functions

### C_Container.CalculateTotalNumberOfFreeBagSlots

```lua
C_Container.CalculateTotalNumberOfFreeBagSlots() -> totalFreeSlots: number
```

### C_Container.ContainerIDToInventoryID

```lua
C_Container.ContainerIDToInventoryID(containerID: BagIndex) -> inventoryID: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.ContainerRefundItemPurchase

```lua
C_Container.ContainerRefundItemPurchase(containerIndex: BagIndex, slotIndex: luaIndex, isEquipped: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetBackpackAutosortDisabled

```lua
C_Container.GetBackpackAutosortDisabled() -> isDisabled: bool
```

### C_Container.GetBackpackSellJunkDisabled

```lua
C_Container.GetBackpackSellJunkDisabled() -> isDisabled: bool
```

### C_Container.GetBagName

```lua
C_Container.GetBagName(bagIndex: BagIndex) -> name: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetBagSlotFlag

```lua
C_Container.GetBagSlotFlag(bagIndex: BagIndex, flag: BagSlotFlags) -> isSet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetBankAutosortDisabled

```lua
C_Container.GetBankAutosortDisabled() -> isDisabled: bool
```

### C_Container.GetContainerFreeSlots

```lua
C_Container.GetContainerFreeSlots(containerIndex: BagIndex) -> freeSlots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemCooldown

```lua
C_Container.GetContainerItemCooldown(containerIndex: BagIndex, slotIndex: luaIndex) -> startTime: number, duration: number, enable: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetContainerItemDurability

```lua
C_Container.GetContainerItemDurability(containerIndex: BagIndex, slotIndex: luaIndex) -> durability: number, maxDurability: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemEquipmentSetInfo

```lua
C_Container.GetContainerItemEquipmentSetInfo(containerIndex: BagIndex, slotIndex: luaIndex) -> inSet: bool, setList: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetContainerItemID

```lua
C_Container.GetContainerItemID(containerIndex: BagIndex, slotIndex: luaIndex) -> containerID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemInfo

```lua
C_Container.GetContainerItemInfo(containerIndex: BagIndex, slotIndex: luaIndex) -> containerInfo: ContainerItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemLink

```lua
C_Container.GetContainerItemLink(containerIndex: BagIndex, slotIndex: luaIndex) -> itemLink: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetContainerItemPurchaseCurrency

```lua
C_Container.GetContainerItemPurchaseCurrency(containerIndex: BagIndex, slotIndex: luaIndex, itemIndex: luaIndex, isEquipped: bool) -> currencyInfo: ItemPurchaseCurrency
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemPurchaseInfo

```lua
C_Container.GetContainerItemPurchaseInfo(containerIndex: BagIndex, slotIndex: luaIndex, isEquipped: bool) -> info: ItemPurchaseInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemPurchaseItem

```lua
C_Container.GetContainerItemPurchaseItem(containerIndex: BagIndex, slotIndex: luaIndex, itemIndex: luaIndex, isEquipped: bool) -> itemInfo: ItemPurchaseItem
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetContainerItemQuestInfo

```lua
C_Container.GetContainerItemQuestInfo(containerIndex: BagIndex, slotIndex: luaIndex) -> questInfo: ItemQuestInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetContainerNumFreeSlots

```lua
C_Container.GetContainerNumFreeSlots(bagIndex: BagIndex) -> numFreeSlots: number, bagFamily: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetContainerNumSlots

```lua
C_Container.GetContainerNumSlots(containerIndex: BagIndex) -> numSlots: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.GetInsertItemsLeftToRight

```lua
C_Container.GetInsertItemsLeftToRight() -> isEnabled: bool
```

### C_Container.GetItemCooldown

```lua
C_Container.GetItemCooldown(itemID: number) -> startTime: number, duration: number, enable: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Container.GetMaxArenaCurrency

```lua
C_Container.GetMaxArenaCurrency() -> maxCurrency: number
```

### C_Container.GetSortBagsRightToLeft

```lua
C_Container.GetSortBagsRightToLeft() -> isEnabled: bool
```

### C_Container.HasContainerItem

```lua
C_Container.HasContainerItem(containerIndex: BagIndex, slotIndex: luaIndex) -> hasItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.IsBattlePayItem

```lua
C_Container.IsBattlePayItem(containerIndex: BagIndex, slotIndex: luaIndex) -> isBattlePayItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.IsContainerFiltered

```lua
C_Container.IsContainerFiltered(containerIndex: BagIndex) -> isFiltered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.PickupContainerItem

```lua
C_Container.PickupContainerItem(containerIndex: BagIndex, slotIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.PlayerHasHearthstone

```lua
C_Container.PlayerHasHearthstone() -> itemID: number?
```

### C_Container.SetBackpackAutosortDisabled

```lua
C_Container.SetBackpackAutosortDisabled(disable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetBackpackSellJunkDisabled

```lua
C_Container.SetBackpackSellJunkDisabled(disable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetBagPortraitTexture

```lua
C_Container.SetBagPortraitTexture(texture: SimpleTexture, bagIndex: BagIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetBagSlotFlag

```lua
C_Container.SetBagSlotFlag(bagIndex: BagIndex, flag: BagSlotFlags, isSet: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetBankAutosortDisabled

```lua
C_Container.SetBankAutosortDisabled(disable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetInsertItemsLeftToRight

```lua
C_Container.SetInsertItemsLeftToRight(enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetItemSearch

```lua
C_Container.SetItemSearch(searchString: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SetSortBagsRightToLeft

```lua
C_Container.SetSortBagsRightToLeft(enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.ShowContainerSellCursor

```lua
C_Container.ShowContainerSellCursor(containerIndex: BagIndex, slotIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SocketContainerItem

```lua
C_Container.SocketContainerItem(containerIndex: BagIndex, slotIndex: luaIndex) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SortAccountBankBags

```lua
C_Container.SortAccountBankBags()
```

### C_Container.SortBags

```lua
C_Container.SortBags()
```

### C_Container.SortBank

```lua
C_Container.SortBank(bankType: BankType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.SortBankBags

```lua
C_Container.SortBankBags()
```

### C_Container.SplitContainerItem

```lua
C_Container.SplitContainerItem(containerIndex: BagIndex, slotIndex: luaIndex, amount: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.UseContainerItem

```lua
C_Container.UseContainerItem(containerIndex: BagIndex, slotIndex: luaIndex, unitToken: UnitToken?, bankType: BankType?, reagentBankOpen: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Container.UseHearthstone

```lua
C_Container.UseHearthstone() -> used: bool
```

## Events

### BAG_CLOSED

Payload: `bagID: BagIndex`  
Flags: SynchronousEvent  

### BAG_CONTAINER_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### BAG_NEW_ITEMS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### BAG_OPEN

Payload: `bagID: number`  
Flags: SynchronousEvent  

### BAG_OVERFLOW_WITH_FULL_INVENTORY

Payload: `none`  
Flags: SynchronousEvent  

### BAG_SLOT_FLAGS_UPDATED

Payload: `slot: number`  
Flags: SynchronousEvent  

### BAG_UPDATE

Payload: `bagID: BagIndex`  
Flags: SynchronousEvent  

### BAG_UPDATE_COOLDOWN

Payload: `none`  
Flags: UniqueEvent  

### BAG_UPDATE_DELAYED

Payload: `none`  
Flags: UniqueEvent  

### EQUIP_BIND_REFUNDABLE_CONFIRM

Payload: `slot: number, itemLocation: ItemLocation`  
Flags: SynchronousEvent  

### EQUIP_BIND_TRADEABLE_CONFIRM

Payload: `slot: number, itemLocation: ItemLocation`  
Flags: SynchronousEvent  

### EXPAND_BAG_BAR_CHANGED

Payload: `expandBagBar: bool`  
Flags: SynchronousEvent  

### INVENTORY_SEARCH_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### ITEM_LOCK_CHANGED

Payload: `bagOrSlotIndex: BagIndex, slotIndex: luaIndex?`  
Flags: SynchronousEvent  

### ITEM_LOCKED

Payload: `bagOrSlotIndex: BagIndex, slotIndex: luaIndex?`  
Flags: SynchronousEvent  

### ITEM_UNLOCKED

Payload: `bagOrSlotIndex: BagIndex, slotIndex: luaIndex?`  
Flags: SynchronousEvent  

### USE_COMBINED_BAGS_CHANGED

Payload: `useCombinedBags: bool`  
Flags: SynchronousEvent  

## Tables

### ContainerItemInfo (Structure)

- `iconFileID: fileID`
- `stackCount: number`
- `isLocked: bool`
- `quality: ItemQuality?`
- `isReadable: bool`
- `hasLoot: bool`
- `hyperlink: string`
- `isFiltered: bool`
- `hasNoValue: bool`
- `itemID: number`
- `isBound: bool`
- `itemName: string`

### ItemPurchaseCurrency (Structure)

- `iconFileID: number?`
- `currencyCount: number`
- `name: cstring`

### ItemPurchaseInfo (Structure)

- `money: WOWMONEY`
- `itemCount: number`
- `refundSeconds: time_t`
- `currencyCount: number`
- `hasEnchants: bool`

### ItemPurchaseItem (Structure)

- `iconFileID: number?`
- `itemCount: number`
- `hyperlink: string`

### ItemQuestInfo (Structure)

- `isQuestItem: bool`
- `questID: number?`
- `isActive: bool`
