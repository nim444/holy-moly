# Item

Type: System  
Namespace: `C_Item`  
Environment: All

## Functions

### C_Item.ActionBindsItem

```lua
C_Item.ActionBindsItem()
```

### C_Item.BindEnchant

```lua
C_Item.BindEnchant()
```

### C_Item.CanBeRefunded

```lua
C_Item.CanBeRefunded(itemLocation: ItemLocation) -> canBeRefunded: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.CanItemTransmogAppearance

```lua
C_Item.CanItemTransmogAppearance(itemLoc: ItemLocation) -> canTransmog: bool, errorCode: TransmogOutfitSlotError
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.CanScrapItem

```lua
C_Item.CanScrapItem(itemLoc: ItemLocation) -> canBeScrapped: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.CanViewItemPowers

```lua
C_Item.CanViewItemPowers(itemLoc: ItemLocation) -> isItemViewable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.ConfirmBindOnUse

```lua
C_Item.ConfirmBindOnUse()
```

### C_Item.ConfirmDeleteItem

```lua
C_Item.ConfirmDeleteItem(itemGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Item.ConfirmNoRefundOnUse

```lua
C_Item.ConfirmNoRefundOnUse()
```

### C_Item.ConfirmOnUse

```lua
C_Item.ConfirmOnUse()
```

### C_Item.DeleteItem

```lua
C_Item.DeleteItem(itemGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Item.DoesItemContainSpec

```lua
C_Item.DoesItemContainSpec(itemInfo: ItemInfo, classID: number, specID: number = 0) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemExist

```lua
C_Item.DoesItemExist(emptiableItemLocation: EmptiableItemLocation) -> itemExists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemExistByID

```lua
C_Item.DoesItemExistByID(itemInfo: ItemInfo) -> itemExists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemMatchBonusTreeReplacement

```lua
C_Item.DoesItemMatchBonusTreeReplacement(itemLoc: ItemLocation) -> matchesBonusTree: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemMatchSpellItemCondition

```lua
C_Item.DoesItemMatchSpellItemCondition(itemLoc: ItemLocation) -> matches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemMatchTargetEnchantingSpell

```lua
C_Item.DoesItemMatchTargetEnchantingSpell(itemLoc: ItemLocation) -> matchesTargetEnchantingSpell: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DoesItemMatchTrackJump

```lua
C_Item.DoesItemMatchTrackJump(itemLoc: ItemLocation) -> matchesTrackJump: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.DropItemOnUnit

```lua
C_Item.DropItemOnUnit(unitGUID: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.EndBoundTradeable

```lua
C_Item.EndBoundTradeable(type: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.EndRefund

```lua
C_Item.EndRefund(type: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.EquipItemByName

```lua
C_Item.EquipItemByName(itemInfo: ItemInfo, dstSlot: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetAppliedItemTransmogInfo

```lua
C_Item.GetAppliedItemTransmogInfo(itemLoc: ItemLocation) -> info: ItemTransmogInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetBaseItemTransmogInfo

```lua
C_Item.GetBaseItemTransmogInfo(itemLoc: ItemLocation) -> info: ItemTransmogInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetCurrentItemLevel

```lua
C_Item.GetCurrentItemLevel(itemLocation: ItemLocation) -> currentItemLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetCurrentItemTransmogInfo

```lua
C_Item.GetCurrentItemTransmogInfo(itemLoc: ItemLocation) -> info: ItemTransmogInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetDelvePreviewItemLink

```lua
C_Item.GetDelvePreviewItemLink(itemID: number, context: ItemCreationContext) -> itemLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetDelvePreviewItemQuality

```lua
C_Item.GetDelvePreviewItemQuality(itemID: number, context: ItemCreationContext) -> itemQuality: ItemQuality
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetDetailedItemLevelInfo

```lua
C_Item.GetDetailedItemLevelInfo(itemInfo: ItemInfo) -> actualItemLevel: number, previewLevel: bool, sparseItemLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetFirstTriggeredSpellForItem

```lua
C_Item.GetFirstTriggeredSpellForItem(itemID: number, itemQuality: number) -> spellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemChildInfo

```lua
C_Item.GetItemChildInfo(itemInfo: ItemInfo, slotID: luaIndex?) -> result: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemClassInfo

```lua
C_Item.GetItemClassInfo(itemClassID: number) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemConversionOutputIcon

```lua
C_Item.GetItemConversionOutputIcon(itemLoc: ItemLocation) -> icon: fileID?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemCooldown

```lua
C_Item.GetItemCooldown(itemInfo: ItemInfo) -> startTimeSeconds: number, durationSeconds: number, enableCooldownTimer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemCount

```lua
C_Item.GetItemCount(itemInfo: ItemInfo, includeBank: bool = false, includeUses: bool = false, includeReagentBank: bool = false, includeAccountBank: bool = false) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemCreationContext

```lua
C_Item.GetItemCreationContext(itemInfo: ItemInfo) -> itemID: number, creationContext: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemFamily

```lua
C_Item.GetItemFamily(itemInfo: ItemInfo) -> result: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemGUID

```lua
C_Item.GetItemGUID(itemLocation: ItemLocation) -> itemGUID: WOWGUID
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemGem

```lua
C_Item.GetItemGem(hyperlink: cstring, index: luaIndex) -> gemName: string, gemLink: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemGemID

```lua
C_Item.GetItemGemID(itemInfo: ItemInfo, index: luaIndex) -> gemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemID

```lua
C_Item.GetItemID(itemLocation: ItemLocation) -> itemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemIDByGUID

```lua
C_Item.GetItemIDByGUID(itemGUID: WOWGUID) -> itemID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemIDForItemInfo

```lua
C_Item.GetItemIDForItemInfo(itemInfo: ItemInfo) -> itemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemIcon

```lua
C_Item.GetItemIcon(itemLocation: ItemLocation) -> icon: fileID?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemIconByID

```lua
C_Item.GetItemIconByID(itemInfo: ItemInfo) -> icon: fileID?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemInfo

```lua
C_Item.GetItemInfo(itemInfo: ItemInfo) -> itemName: cstring, itemLink: cstring, itemQuality: ItemQuality, itemLevel: number, itemMinLevel: number, itemType: cstring, itemSubType: cstring, itemStackCount: number, itemEquipLoc: cstring, itemTexture: fileID, sellPrice: number, classID: number, subclassID: number, bindType: number, expansionID: number, setID: number?, isCraftingReagent: bool, itemDescription: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemInfoInstant

```lua
C_Item.GetItemInfoInstant(itemInfo: ItemInfo) -> itemID: number, itemType: cstring, itemSubType: cstring, itemEquipLoc: cstring, icon: fileID, classID: number, subClassID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemInventorySlotInfo

```lua
C_Item.GetItemInventorySlotInfo(inventorySlot: InventoryType) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemInventorySlotKey

```lua
C_Item.GetItemInventorySlotKey(inventorySlot: InventoryType) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemInventoryType

```lua
C_Item.GetItemInventoryType(itemLocation: ItemLocation) -> inventoryType: InventoryType?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemInventoryTypeByID

```lua
C_Item.GetItemInventoryTypeByID(itemInfo: ItemInfo) -> inventoryType: InventoryType?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemLearnTransmogSet

```lua
C_Item.GetItemLearnTransmogSet(itemInfo: ItemInfo) -> setID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemLink

```lua
C_Item.GetItemLink(itemLocation: ItemLocation) -> itemLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemLinkByGUID

```lua
C_Item.GetItemLinkByGUID(itemGUID: WOWGUID) -> itemLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemLocation

```lua
C_Item.GetItemLocation(itemGUID: WOWGUID) -> itemLocation: ItemLocation?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemMaxStackSize

```lua
C_Item.GetItemMaxStackSize(itemLocation: ItemLocation) -> stackSize: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemMaxStackSizeByID

```lua
C_Item.GetItemMaxStackSizeByID(itemInfo: ItemInfo) -> stackSize: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemName

```lua
C_Item.GetItemName(itemLocation: ItemLocation) -> itemName: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemNameByID

```lua
C_Item.GetItemNameByID(itemInfo: ItemInfo) -> itemName: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemNumAddedSockets

```lua
C_Item.GetItemNumAddedSockets(itemInfo: ItemInfo) -> socketCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemNumSockets

```lua
C_Item.GetItemNumSockets(itemInfo: ItemInfo) -> socketCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemQuality

```lua
C_Item.GetItemQuality(itemLocation: ItemLocation) -> itemQuality: ItemQuality?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemQualityByID

```lua
C_Item.GetItemQualityByID(itemInfo: ItemInfo) -> itemQuality: ItemQuality?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemQualityColor

```lua
C_Item.GetItemQualityColor(quality: ItemQuality) -> colorRGBR: number, colorRGBG: number, colorRGBB: number, qualityString: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemSetInfo

```lua
C_Item.GetItemSetInfo(setID: number) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetItemSpecInfo

```lua
C_Item.GetItemSpecInfo(itemInfo: ItemInfo) -> specTable: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemSpell

```lua
C_Item.GetItemSpell(itemInfo: ItemInfo) -> spellName: cstring, spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemStatDelta

```lua
C_Item.GetItemStatDelta(itemLink1: cstring, itemLink2: cstring) -> statTable: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemStats

```lua
C_Item.GetItemStats(itemLink: cstring) -> statTable: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemSubClassInfo

```lua
C_Item.GetItemSubClassInfo(itemClassID: number, itemSubClassID: number) -> subClassName: cstring, subClassUsesInvType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemUniqueness

```lua
C_Item.GetItemUniqueness(itemInfo: ItemInfo) -> limitCategory: number, limitMax: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemUniquenessByID

```lua
C_Item.GetItemUniquenessByID(itemInfo: ItemInfo) -> isUnique: bool, limitCategoryName: cstring?, limitCategoryCount: number?, limitCategoryID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetItemUpgradeInfo

```lua
C_Item.GetItemUpgradeInfo(itemInfo: ItemInfo) -> itemUpgradeInfo: ItemUpgradeInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetLimitedCurrencyItemInfo

```lua
C_Item.GetLimitedCurrencyItemInfo(itemInfo: ItemInfo) -> name: cstring, icon: fileID, quantity: number, maxQuantity: number, totalEarned: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetSetBonusesForSpecializationByItemID

```lua
C_Item.GetSetBonusesForSpecializationByItemID(specID: number, itemID: number) -> itemSetSpellIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Item.GetStackCount

```lua
C_Item.GetStackCount(itemLocation: ItemLocation) -> stackCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.GetWeaponEnchantInfo

```lua
C_Item.GetWeaponEnchantInfo(weaponSlot: WeaponSlot) -> enchants: table<WeaponEnchantInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsAnimaItemByID

```lua
C_Item.IsAnimaItemByID(itemInfo: ItemInfo) -> isAnimaItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsArtifactPowerItem

```lua
C_Item.IsArtifactPowerItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsBound

```lua
C_Item.IsBound(itemLocation: ItemLocation) -> isBound: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsBoundToAccountUntilEquip

```lua
C_Item.IsBoundToAccountUntilEquip(itemLocation: ItemLocation) -> isBoundToAccountUntilEquip: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

You can use IsItemBindToAccountUntilEquip instead if the item is not in your inventory

### C_Item.IsConsumableItem

```lua
C_Item.IsConsumableItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsCorruptedItem

```lua
C_Item.IsCorruptedItem(itemInfo: ItemInfo) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsCosmeticItem

```lua
C_Item.IsCosmeticItem(itemInfo: ItemInfo) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsCurioItem

```lua
C_Item.IsCurioItem(itemInfo: ItemInfo) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the item is a consumable curio that can be applied to a delves companion.

### C_Item.IsCurrentItem

```lua
C_Item.IsCurrentItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsDecorItem

```lua
C_Item.IsDecorItem(itemInfo: ItemInfo) -> isDecor: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the item is a consumable decor item.

### C_Item.IsDressableItemByID

```lua
C_Item.IsDressableItemByID(itemInfo: ItemInfo) -> isDressableItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsEquippableItem

```lua
C_Item.IsEquippableItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsEquippedItem

```lua
C_Item.IsEquippedItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsEquippedItemType

```lua
C_Item.IsEquippedItemType(type: cstring) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsHarmfulItem

```lua
C_Item.IsHarmfulItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsHelpfulItem

```lua
C_Item.IsHelpfulItem(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemBindToAccount

```lua
C_Item.IsItemBindToAccount(itemInfo: ItemInfo) -> isItemBindToAccount: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemBindToAccountUntilEquip

```lua
C_Item.IsItemBindToAccountUntilEquip(itemInfo: ItemInfo) -> isItemBindToAccountUntilEquip: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

You can use IsBoundToAccountUntilEquip instead if the item exists in your inventory

### C_Item.IsItemConduit

```lua
C_Item.IsItemConduit(itemLoc: ItemLocation) -> isConduit: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemConvertibleAndValidForPlayer

```lua
C_Item.IsItemConvertibleAndValidForPlayer(itemLoc: ItemLocation) -> isItemConvertibleAndValidForPlayer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemCorrupted

```lua
C_Item.IsItemCorrupted(itemLoc: ItemLocation) -> isCorrupted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemCorruptionRelated

```lua
C_Item.IsItemCorruptionRelated(itemLoc: ItemLocation) -> isCorruptionRelated: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemCorruptionResistant

```lua
C_Item.IsItemCorruptionResistant(itemLoc: ItemLocation) -> isCorruptionResistant: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemDataCached

```lua
C_Item.IsItemDataCached(itemLocation: ItemLocation) -> isCached: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemDataCachedByID

```lua
C_Item.IsItemDataCachedByID(itemInfo: ItemInfo) -> isCached: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemGUIDInInventory

```lua
C_Item.IsItemGUIDInInventory(itemGUID: WOWGUID) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemInRange

```lua
C_Item.IsItemInRange(itemInfo: ItemInfo, targetToken: cstring) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemKeystoneByID

```lua
C_Item.IsItemKeystoneByID(itemInfo: ItemInfo) -> isKeystone: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsItemSpecificToPlayerClass

```lua
C_Item.IsItemSpecificToPlayerClass(itemInfo: ItemInfo) -> isItemSpecificToPlayerClass: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsLocked

```lua
C_Item.IsLocked(itemLocation: ItemLocation) -> isLocked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.IsRelicItem

```lua
C_Item.IsRelicItem(itemInfo: ItemInfo) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the item is a consumable relic  that can be applied to an artifact weapon.

### C_Item.IsUsableItem

```lua
C_Item.IsUsableItem(itemInfo: ItemInfo) -> usable: bool, noMana: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.ItemHasRange

```lua
C_Item.ItemHasRange(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.LockItem

```lua
C_Item.LockItem(itemLocation: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.LockItemByGUID

```lua
C_Item.LockItemByGUID(itemGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.PickupItem

```lua
C_Item.PickupItem(itemInfo: ItemInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.ReplaceEnchant

```lua
C_Item.ReplaceEnchant()
```

### C_Item.ReplaceTradeEnchant

```lua
C_Item.ReplaceTradeEnchant()
```

### C_Item.ReplaceTradeskillEnchant

```lua
C_Item.ReplaceTradeskillEnchant()
```

### C_Item.RequestLoadItemData

```lua
C_Item.RequestLoadItemData(itemLocation: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.RequestLoadItemDataByID

```lua
C_Item.RequestLoadItemDataByID(itemInfo: ItemInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.UnlockItem

```lua
C_Item.UnlockItem(itemLocation: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.UnlockItemByGUID

```lua
C_Item.UnlockItemByGUID(itemGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Item.UseItemByName

```lua
C_Item.UseItemByName(itemInfo: ItemInfo, target: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTION_WILL_BIND_ITEM

Payload: `none`  
Flags: SynchronousEvent  

### BIND_ENCHANT

Payload: `none`  
Flags: SynchronousEvent  

### CHARACTER_ITEM_FIXUP_NOTIFICATION

Payload: `fixupVersion: number`  
Flags: SynchronousEvent  

### CONFIRM_BEFORE_USE

Payload: `none`  
Flags: SynchronousEvent  

### CONVERT_TO_BIND_TO_ACCOUNT_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### DELETE_ITEM_CONFIRM

Payload: `itemName: cstring, qualityID: number, bonding: number, questWarn: number, itemGUID: WOWGUID?`  
Flags: SynchronousEvent  

### END_BOUND_TRADEABLE

Payload: `reason: cstring`  
Flags: SynchronousEvent  

### GET_ITEM_INFO_RECEIVED

Payload: `itemID: number, success: bool`  
Flags: SynchronousEvent  

### ITEM_CHANGED

Payload: `previousHyperlink: string, newHyperlink: string`  
Flags: SynchronousEvent  

### ITEM_CONVERSION_DATA_READY

Payload: `itemGUID: WOWGUID`  
Flags: SynchronousEvent  

### ITEM_COUNT_CHANGED

Payload: `itemID: number`  
Flags: UniqueEvent  

### ITEM_DATA_LOAD_RESULT

Payload: `itemID: number, success: bool`  
Flags: SynchronousEvent  

### MERCHANT_CONFIRM_TRADE_TIMER_REMOVAL

Payload: `itemLink: cstring`  
Flags: SynchronousEvent  

### REPLACE_ENCHANT

Payload: `existingStr: cstring, replacementStr: cstring`  
Flags: SynchronousEvent  

### REPLACE_TRADESKILL_ENCHANT

Payload: `existing: cstring, replacement: cstring`  
Flags: SynchronousEvent  

### TRADE_REPLACE_ENCHANT

Payload: `existing: cstring, replacement: cstring`  
Flags: SynchronousEvent  

### USE_BIND_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### USE_NO_REFUND_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### WEAPON_ENCHANT_CHANGED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### ItemInfoResult (Structure)

- `itemName: cstring`
- `itemLink: cstring`
- `itemQuality: ItemQuality`
- `itemLevel: number`
- `itemMinLevel: number`
- `itemType: cstring`
- `itemSubType: cstring`
- `itemStackCount: number`
- `itemEquipLoc: cstring`
- `itemTexture: fileID`
- `sellPrice: number`
- `classID: number`
- `subclassID: number`
- `bindType: number`
- `expansionID: number`
- `setID: number?`
- `isCraftingReagent: bool`
- `itemDescription: cstring`

### ItemUpgradeInfo (Structure)

- `currentLevel: number`
- `maxLevel: number`
- `maxItemLevel: number`
- `trackString: cstring?`
- `trackStringID: number?`

### WeaponEnchantInfo (Structure)

- `hasEnchant: bool`
- `enchantType: ItemEnchantType`
- `timeLeft: number`
- `charges: number`
- `enchantID: number`
- `enchantIconID: number`
