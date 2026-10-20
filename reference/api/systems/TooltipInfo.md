# TooltipInfo

Type: System  
Namespace: `C_TooltipInfo`  
Environment: All

## Functions

### C_TooltipInfo.GetAchievementByID

```lua
C_TooltipInfo.GetAchievementByID(achievementID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetAction

```lua
C_TooltipInfo.GetAction(actionID: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetArtifactItem

```lua
C_TooltipInfo.GetArtifactItem() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetArtifactPowerByID

```lua
C_TooltipInfo.GetArtifactPowerByID(powerID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetAzeriteEssence

```lua
C_TooltipInfo.GetAzeriteEssence(essenceID: number, rank: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetAzeriteEssenceSlot

```lua
C_TooltipInfo.GetAzeriteEssenceSlot(slot: AzeriteEssenceSlot) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetAzeritePower

```lua
C_TooltipInfo.GetAzeritePower(itemID: number, itemLevel: number, powerID: number, owningItemLink: cstring?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetBackpackToken

```lua
C_TooltipInfo.GetBackpackToken(index: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetBagItem

```lua
C_TooltipInfo.GetBagItem(bagIndex: BagIndex, slotIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetBagItemChild

```lua
C_TooltipInfo.GetBagItemChild(bagIndex: BagIndex, slotIndex: luaIndex, equipSlotIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetBuybackItem

```lua
C_TooltipInfo.GetBuybackItem(index: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetCompanionPet

```lua
C_TooltipInfo.GetCompanionPet(petGUID: WOWGUID) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetConduit

```lua
C_TooltipInfo.GetConduit(conduitID: number, conduitRank: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetCurrencyByID

```lua
C_TooltipInfo.GetCurrencyByID(currencyID: number, amount: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetCurrencyToken

```lua
C_TooltipInfo.GetCurrencyToken(tokenIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetEnhancedConduit

```lua
C_TooltipInfo.GetEnhancedConduit(conduitID: number, rank: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetEquipmentSet

```lua
C_TooltipInfo.GetEquipmentSet(setID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetExistingSocketGem

```lua
C_TooltipInfo.GetExistingSocketGem(index: luaIndex, toDestroy: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetGuildBankItem

```lua
C_TooltipInfo.GetGuildBankItem(tab: luaIndex, slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetHeirloomByItemID

```lua
C_TooltipInfo.GetHeirloomByItemID(itemID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetHyperlink

```lua
C_TooltipInfo.GetHyperlink(hyperlink: cstring, optionalArg1: number?, optionalArg2: number?, hideVendorPrice: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetInboxItem

```lua
C_TooltipInfo.GetInboxItem(messageIndex: luaIndex, attachmentIndex: luaIndex?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetInstanceLockEncountersComplete

```lua
C_TooltipInfo.GetInstanceLockEncountersComplete(index: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetInventoryItem

```lua
C_TooltipInfo.GetInventoryItem(unit: UnitToken, slot: luaIndex, hideUselessStats: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetInventoryItemByID

```lua
C_TooltipInfo.GetInventoryItemByID(itemID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetItemByGUID

```lua
C_TooltipInfo.GetItemByGUID(guid: WOWGUID) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetItemByID

```lua
C_TooltipInfo.GetItemByID(itemID: number, quality: number?, itemContext: number?, treasureContextLevel: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetItemByItemModifiedAppearanceID

```lua
C_TooltipInfo.GetItemByItemModifiedAppearanceID(itemModifiedAppearanceID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetItemInteractionItem

```lua
C_TooltipInfo.GetItemInteractionItem() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetItemKey

```lua
C_TooltipInfo.GetItemKey(itemID: number, itemLevel: number, itemSuffix: number, requiredLevel: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetLFGDungeonReward

```lua
C_TooltipInfo.GetLFGDungeonReward(dungeonID: number, lootIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetLFGDungeonShortageReward

```lua
C_TooltipInfo.GetLFGDungeonShortageReward(dungeonID: number, shortageSeverity: luaIndex, lootIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetLootCurrency

```lua
C_TooltipInfo.GetLootCurrency(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetLootItem

```lua
C_TooltipInfo.GetLootItem(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetLootRollItem

```lua
C_TooltipInfo.GetLootRollItem(id: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetMerchantCostItem

```lua
C_TooltipInfo.GetMerchantCostItem(slot: luaIndex, costIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetMerchantItem

```lua
C_TooltipInfo.GetMerchantItem(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetMinimapMouseover

```lua
C_TooltipInfo.GetMinimapMouseover() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetMountBySpellID

```lua
C_TooltipInfo.GetMountBySpellID(spellID: SpellIdentifier, checkIndoors: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetOutfit

```lua
C_TooltipInfo.GetOutfit(outfitID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetOwnedItemByID

```lua
C_TooltipInfo.GetOwnedItemByID(itemID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetPetAction

```lua
C_TooltipInfo.GetPetAction(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetPossession

```lua
C_TooltipInfo.GetPossession(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetPvpBrawl

```lua
C_TooltipInfo.GetPvpBrawl(isSpecial: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetPvpTalent

```lua
C_TooltipInfo.GetPvpTalent(talentID: number, isInspect: bool?, groupIndex: luaIndex?, talentIndex: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestCurrency

```lua
C_TooltipInfo.GetQuestCurrency(type: cstring, currencyIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestItem

```lua
C_TooltipInfo.GetQuestItem(type: cstring, itemIndex: luaIndex, allowCollectionText: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestLogCurrency

```lua
C_TooltipInfo.GetQuestLogCurrency(type: cstring, currencyIndex: luaIndex, questID: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestLogItem

```lua
C_TooltipInfo.GetQuestLogItem(type: cstring, itemIndex: luaIndex, questID: number?, allowCollectionText: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestLogSpecialItem

```lua
C_TooltipInfo.GetQuestLogSpecialItem(questIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetQuestPartyProgress

```lua
C_TooltipInfo.GetQuestPartyProgress(questID: number, omitTitle: bool?, ignoreActivePlayer: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetRecipeRankInfo

```lua
C_TooltipInfo.GetRecipeRankInfo(recipeID: number, rank: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetRecipeReagentItem

```lua
C_TooltipInfo.GetRecipeReagentItem(recipeSpellID: number, dataSlotIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetRecipeResultItem

```lua
C_TooltipInfo.GetRecipeResultItem(recipeID: number, reagentInfos: table<CraftingReagentInfo>?, recraftItemGUID: WOWGUID?, recipeLevel: luaIndex?, overrideQualityID: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetRecipeResultItemForOrder

```lua
C_TooltipInfo.GetRecipeResultItemForOrder(recipeID: number, reagentInfos: table<CraftingReagentInfo>?, orderID: BigUInteger?, recipeLevel: luaIndex?, overrideQualityID: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetRuneforgeResultItem

```lua
C_TooltipInfo.GetRuneforgeResultItem(itemGUID: WOWGUID, itemLevel: number, powerID: number?, modifiers: table<number>?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetSendMailItem

```lua
C_TooltipInfo.GetSendMailItem(attachmentIndex: luaIndex?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetShapeshift

```lua
C_TooltipInfo.GetShapeshift(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetSlottedKeystone

```lua
C_TooltipInfo.GetSlottedKeystone() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetSocketGem

```lua
C_TooltipInfo.GetSocketGem(index: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetSocketedItem

```lua
C_TooltipInfo.GetSocketedItem() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetSocketedRelic

```lua
C_TooltipInfo.GetSocketedRelic(slotIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetSpellBookItem

```lua
C_TooltipInfo.GetSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetSpellByID

```lua
C_TooltipInfo.GetSpellByID(spellID: SpellIdentifier, isPet: bool?, showSubtext: bool?, dontOverride: bool?, difficultyID: number?, isLink: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTalent

```lua
C_TooltipInfo.GetTalent(talentID: number, isInspect: bool?, groupIndex: luaIndex?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTotem

```lua
C_TooltipInfo.GetTotem(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetToyByItemID

```lua
C_TooltipInfo.GetToyByItemID(itemID: number) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTradePlayerItem

```lua
C_TooltipInfo.GetTradePlayerItem(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTradeTargetItem

```lua
C_TooltipInfo.GetTradeTargetItem(slot: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTrainerService

```lua
C_TooltipInfo.GetTrainerService(serviceIndex: luaIndex) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetTraitEntry

```lua
C_TooltipInfo.GetTraitEntry(entryID: number, rank: number?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetUnit

```lua
C_TooltipInfo.GetUnit(unit: UnitTokenPvPRestrictedForAddOns, hideStatus: bool?) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetUnitAura

```lua
C_TooltipInfo.GetUnitAura(unitToken: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

### C_TooltipInfo.GetUnitAuraByAuraInstanceID

```lua
C_TooltipInfo.GetUnitAuraByAuraInstanceID(unitToken: UnitTokenRestrictedForAddOns, auraInstanceID: number, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

Obtains aura info like other functions with the caveat that the filters will always at least include the typically mutually exclusive HELPFUL|HARMFUL regardless of what the argument value is set to

### C_TooltipInfo.GetUnitBuff

```lua
C_TooltipInfo.GetUnitBuff(unitToken: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

### C_TooltipInfo.GetUnitBuffByAuraInstanceID

```lua
C_TooltipInfo.GetUnitBuffByAuraInstanceID(unitToken: UnitTokenRestrictedForAddOns, auraInstanceID: number, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

### C_TooltipInfo.GetUnitDebuff

```lua
C_TooltipInfo.GetUnitDebuff(unitToken: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

### C_TooltipInfo.GetUnitDebuffByAuraInstanceID

```lua
C_TooltipInfo.GetUnitDebuffByAuraInstanceID(unitToken: UnitTokenRestrictedForAddOns, auraInstanceID: number, filter: AuraFilters?) -> data: TooltipData
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresUnitAuraAccess  

### C_TooltipInfo.GetUpgradeItem

```lua
C_TooltipInfo.GetUpgradeItem() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetWeeklyReward

```lua
C_TooltipInfo.GetWeeklyReward(itemDBID: WeeklyRewardItemDBID) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipInfo.GetWorldCursor

```lua
C_TooltipInfo.GetWorldCursor() -> data: TooltipData
```

Flags: MayReturnNothing  

### C_TooltipInfo.GetWorldLootObject

```lua
C_TooltipInfo.GetWorldLootObject(unitTokenString: cstring) -> data: TooltipData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### HIDE_HYPERLINK_TOOLTIP

Payload: `none`  
Flags: SynchronousEvent  

### SHOW_HYPERLINK_TOOLTIP

Payload: `hyperlink: string`  
Flags: SynchronousEvent  

### TOOLTIP_DATA_UPDATE

Payload: `dataInstanceID: number?`  
Flags: UniqueEvent  
Sends an update to the UI that a sparse or cache lookup has resolved
