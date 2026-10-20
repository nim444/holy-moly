# TradeSkillUI

Type: System  
Namespace: `C_TradeSkillUI`  
Environment: All

## Functions

### C_TradeSkillUI.CanStoreEnchantInItem

```lua
C_TradeSkillUI.CanStoreEnchantInItem(itemGUID: WOWGUID) -> canStore: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.CanTradeSkillShowCraftingUI

```lua
C_TradeSkillUI.CanTradeSkillShowCraftingUI(tradeSkillSpellID: number) -> canShow: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.CancelProfessionRespec

```lua
C_TradeSkillUI.CancelProfessionRespec()
```

### C_TradeSkillUI.CheckRespecNPC

```lua
C_TradeSkillUI.CheckRespecNPC() -> canInteract: bool
```

### C_TradeSkillUI.CloseTradeSkill

```lua
C_TradeSkillUI.CloseTradeSkill()
```

### C_TradeSkillUI.ConfirmProfessionRespec

```lua
C_TradeSkillUI.ConfirmProfessionRespec()
```

### C_TradeSkillUI.CraftEnchant

```lua
C_TradeSkillUI.CraftEnchant(recipeSpellID: number, numCasts: number = 1, craftingReagents: table<CraftingReagentInfo>?, itemTarget: ItemLocation?, applyConcentration: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.CraftRecipe

```lua
C_TradeSkillUI.CraftRecipe(recipeSpellID: number, numCasts: number = 1, craftingReagents: table<CraftingReagentInfo>?, recipeLevel: luaIndex?, orderID: BigUInteger?, applyConcentration: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.CraftSalvage

```lua
C_TradeSkillUI.CraftSalvage(recipeSpellID: number, numCasts: number = 1, itemTarget: ItemLocation, craftingReagents: table<CraftingReagentInfo>?, applyConcentration: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.DoesRecraftingRecipeAcceptItem

```lua
C_TradeSkillUI.DoesRecraftingRecipeAcceptItem(itemLocation: ItemLocation, recipeID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetAllProfessionTradeSkillLines

```lua
C_TradeSkillUI.GetAllProfessionTradeSkillLines() -> skillLineID: table<number>
```

### C_TradeSkillUI.GetBaseProfessionInfo

```lua
C_TradeSkillUI.GetBaseProfessionInfo() -> info: ProfessionInfo
```

### C_TradeSkillUI.GetChildProfessionInfo

```lua
C_TradeSkillUI.GetChildProfessionInfo() -> info: ProfessionInfo
```

### C_TradeSkillUI.GetChildProfessionInfos

```lua
C_TradeSkillUI.GetChildProfessionInfos() -> infos: table<ProfessionInfo>
```

### C_TradeSkillUI.GetConcentrationCurrencyID

```lua
C_TradeSkillUI.GetConcentrationCurrencyID(skillLineID: number) -> currencyType: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetCraftableCount

```lua
C_TradeSkillUI.GetCraftableCount(recipeSpellID: number, recipeLevel: luaIndex?) -> numAvailable: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetCraftingOperationInfo

```lua
C_TradeSkillUI.GetCraftingOperationInfo(recipeID: number, craftingReagents: table<CraftingReagentInfo>, allocationItemGUID: WOWGUID?, applyConcentration: bool) -> info: CraftingOperationInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetCraftingOperationInfoForOrder

```lua
C_TradeSkillUI.GetCraftingOperationInfoForOrder(recipeID: number, craftingReagents: table<CraftingReagentInfo>, orderID: BigUInteger, applyConcentration: bool) -> info: CraftingOperationInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetCraftingReagentBonusText

```lua
C_TradeSkillUI.GetCraftingReagentBonusText(recipeSpellID: number, craftingReagentIndex: luaIndex, craftingReagents: table<CraftingReagentInfo>, allocationItemGUID: WOWGUID?) -> bonusText: table<string>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetCraftingTargetItems

```lua
C_TradeSkillUI.GetCraftingTargetItems(itemIDs: table<number>) -> items: table<CraftingTargetItem>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetDependentReagents

```lua
C_TradeSkillUI.GetDependentReagents(reagent: CraftingReagent) -> reagents: table<CraftingReagent>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetEnchantItems

```lua
C_TradeSkillUI.GetEnchantItems(recipeID: number, craftingReagents: table<CraftingReagentInfo>?) -> items: table<WOWGUID>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetFactionSpecificOutputItem

```lua
C_TradeSkillUI.GetFactionSpecificOutputItem(recipeSpellID: number) -> itemID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetGatheringOperationInfo

```lua
C_TradeSkillUI.GetGatheringOperationInfo(recipeID: number) -> info: GatheringOperationInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetHideUnownedFlags

```lua
C_TradeSkillUI.GetHideUnownedFlags(recipeID: number) -> cannotModifyHideUnowned: bool, alwaysShowUnowned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemCraftedQualityByItemInfo

```lua
C_TradeSkillUI.GetItemCraftedQualityByItemInfo(itemInfo: ItemInfo) -> quality: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemCraftedQualityInfo

```lua
C_TradeSkillUI.GetItemCraftedQualityInfo(itemInfo: ItemInfo) -> info: CraftingQualityInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemReagentQualityByItemInfo

```lua
C_TradeSkillUI.GetItemReagentQualityByItemInfo(itemInfo: ItemInfo) -> quality: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemReagentQualityInfo

```lua
C_TradeSkillUI.GetItemReagentQualityInfo(itemInfo: ItemInfo) -> info: CraftingQualityInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemSlotModifications

```lua
C_TradeSkillUI.GetItemSlotModifications(itemGUID: WOWGUID) -> slotMods: table<CraftingItemSlotModification>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetItemSlotModificationsForOrder

```lua
C_TradeSkillUI.GetItemSlotModificationsForOrder(orderID: BigUInteger) -> slotMods: table<CraftingItemSlotModification>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetOriginalCraftRecipeID

```lua
C_TradeSkillUI.GetOriginalCraftRecipeID(itemGUID: WOWGUID) -> recipeID: number?, skillLineAbilityID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionByInventorySlot

```lua
C_TradeSkillUI.GetProfessionByInventorySlot(slot: luaIndex) -> profession: Profession?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionChildSkillLineID

```lua
C_TradeSkillUI.GetProfessionChildSkillLineID() -> skillLineID: number
```

### C_TradeSkillUI.GetProfessionForCursorItem

```lua
C_TradeSkillUI.GetProfessionForCursorItem() -> profession: Profession?
```

### C_TradeSkillUI.GetProfessionInfoByRecipeID

```lua
C_TradeSkillUI.GetProfessionInfoByRecipeID(recipeID: number) -> info: ProfessionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionInfoBySkillLineID

```lua
C_TradeSkillUI.GetProfessionInfoBySkillLineID(skillLineID: number) -> info: ProfessionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionInventorySlots

```lua
C_TradeSkillUI.GetProfessionInventorySlots() -> invSlots: table<InventorySlots>
```

### C_TradeSkillUI.GetProfessionNameForSkillLineAbility

```lua
C_TradeSkillUI.GetProfessionNameForSkillLineAbility(skillLineAbilityID: number) -> professionNmae: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionSkillLineID

```lua
C_TradeSkillUI.GetProfessionSkillLineID(profession: Profession) -> skillLineID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionSlots

```lua
C_TradeSkillUI.GetProfessionSlots(profession: Profession) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetProfessionSpells

```lua
C_TradeSkillUI.GetProfessionSpells(professionID: number, skillLineID: number?) -> knownSpells: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetQualitiesForRecipe

```lua
C_TradeSkillUI.GetQualitiesForRecipe(recipeID: number) -> qualityIDs: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetReagentDifficultyText

```lua
C_TradeSkillUI.GetReagentDifficultyText(craftingReagentIndex: luaIndex, craftingReagents: table<CraftingReagentInfo>) -> bonusText: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetReagentSlotStatus

```lua
C_TradeSkillUI.GetReagentSlotStatus(mcrSlotID: number, recipeSpellID: number, skillLineAbilityID: number) -> locked: bool, lockedReason: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeDescription

```lua
C_TradeSkillUI.GetRecipeDescription(recipeID: number, craftingReagents: table<CraftingReagentInfo>, allocationItemGUID: WOWGUID?) -> description: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeInfo

```lua
C_TradeSkillUI.GetRecipeInfo(recipeSpellID: number, recipeLevel: luaIndex?) -> recipeInfo: TradeSkillRecipeInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeInfoForSkillLineAbility

```lua
C_TradeSkillUI.GetRecipeInfoForSkillLineAbility(skillLineAbilityID: number, recipeLevel: luaIndex?) -> recipeInfo: TradeSkillRecipeInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeItemQualityInfo

```lua
C_TradeSkillUI.GetRecipeItemQualityInfo(recipeID: number, quality: number) -> info: CraftingQualityInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeOutputItemData

```lua
C_TradeSkillUI.GetRecipeOutputItemData(recipeSpellID: number, reagents: table<CraftingReagentInfo>?, allocationItemGUID: WOWGUID?, overrideQualityID: number?, recraftOrderID: BigUInteger?) -> outputInfo: CraftingRecipeOutputInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeQualityItemIDs

```lua
C_TradeSkillUI.GetRecipeQualityItemIDs(recipeSpellID: number) -> qualityItemIDs: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeQualityReagentLink

```lua
C_TradeSkillUI.GetRecipeQualityReagentLink(recipeID: number, dataSlotIndex: luaIndex, qualityIndex: luaIndex) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeRequirements

```lua
C_TradeSkillUI.GetRecipeRequirements(recipeID: number) -> requirements: table<CraftingRecipeRequirement>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipeSchematic

```lua
C_TradeSkillUI.GetRecipeSchematic(recipeSpellID: number, isRecraft: bool, recipeLevel: luaIndex?) -> schematic: CraftingRecipeSchematic
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecipesTracked

```lua
C_TradeSkillUI.GetRecipesTracked(isRecraft: bool) -> recipeIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecraftItems

```lua
C_TradeSkillUI.GetRecraftItems(recipeID: number?) -> items: table<WOWGUID>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRecraftRemovalWarnings

```lua
C_TradeSkillUI.GetRecraftRemovalWarnings(itemGUID: WOWGUID, replacedReagents: table<CraftingReagent>) -> warnings: table<cstring>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetRemainingRecasts

```lua
C_TradeSkillUI.GetRemainingRecasts() -> remaining: number
```

### C_TradeSkillUI.GetSalvagableItemIDs

```lua
C_TradeSkillUI.GetSalvagableItemIDs(recipeID: number) -> itemIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetShowLearned

```lua
C_TradeSkillUI.GetShowLearned() -> flag: bool
```

### C_TradeSkillUI.GetShowUnlearned

```lua
C_TradeSkillUI.GetShowUnlearned() -> flag: bool
```

### C_TradeSkillUI.GetSkillLineForGear

```lua
C_TradeSkillUI.GetSkillLineForGear(itemInfo: ItemInfo) -> skillLineID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.GetSourceTypeFilter

```lua
C_TradeSkillUI.GetSourceTypeFilter() -> sourceTypeFilter: number
```

### C_TradeSkillUI.GetTradeSkillDisplayName

```lua
C_TradeSkillUI.GetTradeSkillDisplayName(skillLineID: number) -> professionDisplayName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.HasFavoriteOrderRecipes

```lua
C_TradeSkillUI.HasFavoriteOrderRecipes() -> hasFavorites: bool
```

### C_TradeSkillUI.IsEnchantTargetValid

```lua
C_TradeSkillUI.IsEnchantTargetValid(recipeID: number, itemGUID: WOWGUID, craftingReagents: table<CraftingReagentInfo>?) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsGuildTradeSkillsEnabled

```lua
C_TradeSkillUI.IsGuildTradeSkillsEnabled() -> enabled: bool
```

### C_TradeSkillUI.IsNPCCrafting

```lua
C_TradeSkillUI.IsNPCCrafting() -> result: bool
```

### C_TradeSkillUI.IsNearProfessionSpellFocus

```lua
C_TradeSkillUI.IsNearProfessionSpellFocus(profession: Profession) -> nearFocus: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsOriginalCraftRecipeLearned

```lua
C_TradeSkillUI.IsOriginalCraftRecipeLearned(itemGUID: WOWGUID) -> learned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecipeFirstCraft

```lua
C_TradeSkillUI.IsRecipeFirstCraft(recipeID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecipeInBaseSkillLine

```lua
C_TradeSkillUI.IsRecipeInBaseSkillLine(recipeID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecipeInSkillLine

```lua
C_TradeSkillUI.IsRecipeInSkillLine(recipeID: number, skillLineID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecipeProfessionLearned

```lua
C_TradeSkillUI.IsRecipeProfessionLearned(recipeID: number) -> recipeProfessionLearned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecipeTracked

```lua
C_TradeSkillUI.IsRecipeTracked(recipeID: number, isRecraft: bool) -> tracked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecraftItemEquipped

```lua
C_TradeSkillUI.IsRecraftItemEquipped(recraftItemGUID: WOWGUID) -> isEquipped: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRecraftReagentValid

```lua
C_TradeSkillUI.IsRecraftReagentValid(itemGUID: WOWGUID, reagent: CraftingReagent) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.IsRuneforging

```lua
C_TradeSkillUI.IsRuneforging() -> result: bool
```

### C_TradeSkillUI.OpenRecipe

```lua
C_TradeSkillUI.OpenRecipe(recipeID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.OpenTradeSkill

```lua
C_TradeSkillUI.OpenTradeSkill(skillLineID: number) -> opened: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.RecraftLimitCategoryValid

```lua
C_TradeSkillUI.RecraftLimitCategoryValid(reagent: CraftingReagent) -> recraftValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.RecraftRecipe

```lua
C_TradeSkillUI.RecraftRecipe(itemGUID: WOWGUID, craftingReagents: table<CraftingReagentInfo>?, removedModifications: table<CraftingItemSlotModification>?, applyConcentration: bool?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.RecraftRecipeForOrder

```lua
C_TradeSkillUI.RecraftRecipeForOrder(orderID: BigUInteger, itemGUID: WOWGUID, craftingReagents: table<CraftingReagentInfo>?, removedModifications: table<CraftingItemSlotModification>?, applyConcentration: bool?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetOnlyShowAvailableForOrders

```lua
C_TradeSkillUI.SetOnlyShowAvailableForOrders(flag: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetProfessionChildSkillLineID

```lua
C_TradeSkillUI.SetProfessionChildSkillLineID(skillLineID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetRecipeTracked

```lua
C_TradeSkillUI.SetRecipeTracked(recipeID: number, tracked: bool, isRecraft: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetShowLearned

```lua
C_TradeSkillUI.SetShowLearned(flag: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetShowUnlearned

```lua
C_TradeSkillUI.SetShowUnlearned(flag: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TradeSkillUI.SetSourceTypeFilter

```lua
C_TradeSkillUI.SetSourceTypeFilter(sourceTypeFilter: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CRAFTING_DETAILS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### NEW_RECIPE_LEARNED

Payload: `recipeID: number, recipeLevel: luaIndex?, baseRecipeID: number?`  
Flags: SynchronousEvent  

### OBLITERUM_FORGE_PENDING_ITEM_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### OPEN_RECIPE_RESPONSE

Payload: `recipeID: number, skillLineID: number, expansionSkillLineID: number`  
Flags: SynchronousEvent  

### PROFESSION_RESPEC_CONFIRMATION

Payload: `skillName: cstring`  
Flags: SynchronousEvent  

### TRACKED_RECIPE_UPDATE

Payload: `recipeID: number, tracked: bool`  
Flags: SynchronousEvent  

### TRADE_SKILL_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_SKILL_CRAFT_BEGIN

Payload: `recipeSpellID: number`  
Flags: SynchronousEvent  

### TRADE_SKILL_CRAFTING_REAGENT_BONUS_TEXT_UPDATED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### TRADE_SKILL_CURRENCY_REWARD_RESULT

Payload: `data: CraftingCurrencyResultData`  
Flags: SynchronousEvent  

### TRADE_SKILL_DATA_SOURCE_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### TRADE_SKILL_DATA_SOURCE_CHANGING

Payload: `none`  
Flags: UniqueEvent  

### TRADE_SKILL_DETAILS_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### TRADE_SKILL_FAVORITES_CHANGED

Payload: `isFavorite: bool, recipeSpellID: number`  
Flags: UniqueEvent  

### TRADE_SKILL_ITEM_CRAFTED_RESULT

Payload: `data: CraftingItemResultData`  
Flags: SynchronousEvent  

### TRADE_SKILL_ITEM_UPDATE

Payload: `itemGUID: WOWGUID`  
Flags: SynchronousEvent  

### TRADE_SKILL_LIST_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### TRADE_SKILL_NAME_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_SKILL_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_TRADESKILL_CAST_STOPPED

Payload: `isScrapping: bool`  
Flags: UniqueEvent
