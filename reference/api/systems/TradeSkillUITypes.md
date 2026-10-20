# TradeSkillUITypes

Type: None

## Tables

### CraftingReagentItemFlag (Enumeration)

| Name | Value |
|---|---|
| TooltipShowsAsStatModifications | 1 |

### RecipeRequirementType (Enumeration)

| Name | Value |
|---|---|
| SpellFocus | 0 |
| Totem | 1 |
| Area | 2 |

### TradeskillOrderDuration (Enumeration)

| Name | Value |
|---|---|
| Short | 1 |
| Medium | 2 |
| Long | 3 |

### TradeskillOrderRecipient (Enumeration)

| Name | Value |
|---|---|
| Public | 1 |
| Guild | 2 |
| Private | 3 |

### TradeskillOrderStatus (Enumeration)

| Name | Value |
|---|---|
| Unclaimed | 1 |
| Started | 2 |
| Completed | 3 |
| Expired | 4 |

### TradeskillRecipeType (Enumeration)

| Name | Value |
|---|---|
| Item | 1 |
| Salvage | 2 |
| Enchant | 3 |
| Gathering | 4 |

### TradeskillRelativeDifficulty (Enumeration)

| Name | Value |
|---|---|
| Optimal | 0 |
| Medium | 1 |
| Easy | 2 |
| Trivial | 3 |

### TradeskillSlotDataType (Enumeration)

| Name | Value |
|---|---|
| Reagent | 1 |
| ModifiedReagent | 2 |
| Currency | 3 |

### CraftingCurrencyResultData (Structure)

- `currencyID: number = 0`
- `quantity: number = 0`
- `operationID: number = 0`
- `firstCraftReward: bool = false`
- `showCurrencyText: bool = true`

### CraftingItemResultData (Structure)

- `resourcesReturned: table<CraftingResourceReturnInfo>?`
- `craftingQuality: number?`
- `qualityProgress: number = 0`
- `itemID: number = 0`
- `itemGUID: WOWGUID`
- `quantity: number = 0`
- `hyperlink: string`
- `isCrit: bool = false`
- `critBonusSkill: number = 0`
- `recraftable: bool = false`
- `bonusCraft: bool = false`
- `multicraft: number = 0`
- `operationID: number = 0`
- `firstCraftReward: bool = false`
- `isEnchant: bool = false`
- `hasIngenuityProc: bool = false`
- `concentrationCurrencyID: number = 0`
- `concentrationSpent: number = 0`
- `ingenuityRefund: number = 0`

### CraftingItemSlotModification (Structure)

- `dataSlotIndex: luaIndex`
- `reagent: CraftingReagent`

### CraftingOperationBonusStatInfo (Structure)

- `bonusStatName: string`
- `bonusStatValue: number`
- `ratingDescription: string`
- `ratingPct: number`
- `bonusRatingPct: number`

### CraftingOperationInfo (Structure)

- `recipeID: number`
- `baseDifficulty: number`
- `bonusDifficulty: number`
- `baseSkill: number`
- `bonusSkill: number`
- `isQualityCraft: bool`
- `quality: number`
- `craftingQuality: number`
- `craftingQualityID: number`
- `craftingDataID: number`
- `lowerSkillThreshold: number`
- `upperSkillTreshold: number`
- `guaranteedCraftingQualityID: number`
- `bonusStats: table<CraftingOperationBonusStatInfo>`
- `concentrationCurrencyID: number`
- `concentrationCost: number`
- `ingenuityRefund: number`

### CraftingQualityInfo (Structure)

- `quality: number`
- `icon: textureAtlas`
- `iconSmall: textureAtlas`
- `iconInventory: textureAtlas`
- `iconMixed: textureAtlas`
- `iconAppear: textureAtlas`
- `iconDissolve: textureAtlas`
- `barFill: textureAtlas`
- `barBackground: textureAtlas`
- `barBackgroundCap: textureAtlas`
- `barHighlight: textureAtlas`
- `iconChat: textureAtlas`
- `iconQuestObjective: textureAtlas`

### CraftingReagent (Structure)

- `itemID: number?`
- `currencyID: number?`

### CraftingReagentInfo (Structure)

- `reagent: CraftingReagent`
- `dataSlotIndex: luaIndex`
- `quantity: number`

### CraftingReagentSlotInfo (Structure)

- `mcrSlotID: number`
- `requiredSkillRank: number`
- `slotText: cstring?`

### CraftingReagentSlotSchematic (Structure)

- `reagents: table<CraftingReagent>`
- `reagentType: CraftingReagentType`
- `variableQuantities: table<CraftingVariableQuantities>`
- `quantityRequired: number`
- `slotInfo: CraftingReagentSlotInfo?`
- `dataSlotType: TradeskillSlotDataType = Reagent`
- `dataSlotIndex: luaIndex`
- `slotIndex: luaIndex`
- `orderSource: CraftingOrderReagentSource?`
- `required: bool`
- `hiddenInCraftingForm: bool`

### CraftingRecipeOutputInfo (Structure)

- `icon: number`
- `hyperlink: cstring?`
- `itemID: number?`

### CraftingRecipeRequirement (Structure)

- `name: cstring`
- `met: bool`
- `type: RecipeRequirementType`

### CraftingRecipeSchematic (Structure)

- `recipeID: number`
- `icon: number`
- `quantityMin: number`
- `quantityMax: number`
- `name: cstring`
- `recipeType: TradeskillRecipeType = Item`
- `productQuality: number?`
- `outputItemID: number?`
- `reagentSlotSchematics: table<CraftingReagentSlotSchematic>`
- `isRecraft: bool`
- `hasCraftingOperationInfo: bool`

### CraftingRecipeSkillLineInfo (Structure)

- `professionSkillLineID: number`
- `expansionSkillLineID: number`

### CraftingResourceReturnInfo (Structure)

- `reagent: CraftingReagent`
- `quantity: number`

### CraftingTargetItem (Structure)

- `itemID: number`
- `itemGUID: WOWGUID`
- `hyperlink: string?`
- `quantity: number`

### CraftingVariableQuantities (Structure)

- `reagent: CraftingReagent`
- `quantity: number`

### GatheringOperationBonusStatInfo (Structure)

- `bonusStatName: string`
- `bonusStatValue: number`
- `ratingDescription: string`
- `ratingPct: number`
- `bonusRatingPct: number`

### GatheringOperationInfo (Structure)

- `spellID: number`
- `maxDifficulty: number`
- `baseSkill: number`
- `bonusSkill: number`
- `bonusStats: table<GatheringOperationBonusStatInfo>`

### ProfessionInfo (Structure)

- `profession: Profession?`
- `professionID: number`
- `sourceCounter: number`
- `professionName: cstring`
- `expansionName: cstring`
- `skillLevel: number`
- `maxSkillLevel: number`
- `skillModifier: number`
- `isPrimaryProfession: bool`
- `parentProfessionID: number?`
- `parentProfessionName: cstring?`

### RegularReagentInfo (Structure)

- `reagent: CraftingReagent`
- `quantity: number`

### TradeSkillRecipeInfo (Structure)

- `categoryID: number`
- `name: cstring`
- `relativeDifficulty: TradeskillRelativeDifficulty?`
- `maxTrivialLevel: number`
- `itemLevel: number`
- `alternateVerb: cstring?`
- `numSkillUps: number`
- `canSkillUp: bool`
- `firstCraft: bool`
- `sourceType: number?`
- `learned: bool`
- `disabled: bool`
- `favorite: bool`
- `supportsQualities: bool`
- `craftable: bool = true`
- `disabledReason: cstring?`
- `recipeID: number`
- `skillLineAbilityID: number`
- `previousRecipeID: number?`
- `nextRecipeID: number?`
- `icon: number?`
- `hyperlink: cstring?`
- `currentRecipeExperience: number?`
- `nextLevelRecipeExperience: number?`
- `unlockedRecipeLevel: number?`
- `earnedExperience: number?`
- `supportsCraftingStats: bool = false`
- `hasSingleItemOutput: bool = false`
- `qualityItemIDs: table<number>?`
- `qualityIlvlBonuses: table<number>?`
- `alwaysUsesLowestQuality: bool = false`
- `maxQuality: number?`
- `qualityIDs: table<number>?`
- `canCreateMultiple: bool = true`
- `abilityVerb: cstring?`
- `abilityAllVerb: cstring?`
- `isRecraft: bool = false`
- `isDummyRecipe: bool = false`
- `isGatheringRecipe: bool = false`
- `isEnchantingRecipe: bool = false`
- `isSalvageRecipe: bool = false`
