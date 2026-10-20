# TooltipInfoShared

Type: None

## Tables

### TooltipDataItemBinding (Enumeration)

| Name | Value |
|---|---|
| Quest | 0 |
| Account | 1 |
| BnetAccount | 2 |
| Soulbound | 3 |
| BindToAccount | 4 |
| BindToBnetAccount | 5 |
| BindOnPickup | 6 |
| BindOnEquip | 7 |
| BindOnUse | 8 |
| AccountUntilEquipped | 9 |
| BindToAccountUntilEquipped | 10 |

### TooltipDataLineType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Blank | 1 |
| UnitName | 2 |
| GemSocket | 3 |
| AzeriteEssenceSlot | 4 |
| AzeriteEssencePower | 5 |
| LearnableSpell | 6 |
| UnitThreat | 7 |
| QuestObjective | 8 |
| AzeriteItemPowerDescription | 9 |
| RuneforgeLegendaryPowerDescription | 10 |
| SellPrice | 11 |
| ProfessionCraftingQuality | 12 |
| SpellName | 13 |
| CurrencyTotal | 14 |
| ItemEnchantmentPermanent | 15 |
| UnitOwner | 16 |
| QuestTitle | 17 |
| QuestPlayer | 18 |
| NestedBlock | 19 |
| ItemBinding | 20 |
| EquipSlot | 21 |
| ItemName | 22 |
| Separator | 23 |
| ToyName | 24 |
| ToyText | 25 |
| ToyEffect | 26 |
| ToyDuration | 27 |
| ToyDescription | 28 |
| ToySource | 29 |
| GemSocketEnchantment | 30 |
| ItemLevel | 31 |
| ItemUpgradeLevel | 32 |
| SpellPassive | 33 |
| SpellDescription | 34 |
| ItemQuality | 35 |
| TradeTimeRemaining | 36 |
| FlavorText | 37 |
| ItemSpellTriggerLearn | 38 |
| LearnTransmogSet | 39 |
| LearnTransmogIllusion | 40 |
| ErrorLine | 41 |
| DisabledLine | 42 |
| UsageRequirement | 43 |
| ItemSpellTriggerOnUse | 44 |
| ItemSpellTriggerOnEquip | 45 |
| ItemSpellTriggerOnProc | 46 |
| UnitLevel | 47 |
| UnitType | 48 |
| UnitDead | 49 |
| UnitCriteriaProgress | 50 |
| AuraCaster | 51 |

### TooltipDataType (Enumeration)

| Name | Value |
|---|---|
| Item | 0 |
| Spell | 1 |
| Unit | 2 |
| Corpse | 3 |
| Object | 4 |
| Currency | 5 |
| BattlePet | 6 |
| UnitAura | 7 |
| AzeriteEssence | 8 |
| CompanionPet | 9 |
| Mount | 10 |
| PetAction | 11 |
| Achievement | 12 |
| EnhancedConduit | 13 |
| EquipmentSet | 14 |
| InstanceLock | 15 |
| PvPBrawl | 16 |
| RecipeRankInfo | 17 |
| Totem | 18 |
| Toy | 19 |
| CorruptionCleanser | 20 |
| MinimapMouseover | 21 |
| Flyout | 22 |
| Quest | 23 |
| QuestPartyProgress | 24 |
| Macro | 25 |
| Debug | 26 |
| Outfit | 27 |

### TooltipDataUsageRequirementType (Enumeration)

| Name | Value |
|---|---|
| RaceClass | 0 |
| Faction | 1 |
| Skill | 2 |
| PvPMedal | 3 |
| Reputation | 4 |
| Level | 5 |
| Guild | 6 |
| Achievement | 7 |
| PvPRank | 8 |
| EquippedItem | 9 |
| ShapeshiftForm | 10 |
| ArenaRating | 11 |
| EarnCurrency | 12 |
| Specialization | 13 |
| NotAlreadyKnown | 14 |
| NotInArena | 15 |
| NotInRatedBg | 16 |

### TooltipComparisonLine (Structure)

- `text: string`
- `color: colorRGB`

### TooltipDataArg (Structure)

- `field: string`
- `stringVal: string?`
- `intVal: number?`
- `floatVal: number?`
- `boolVal: bool?`
- `colorVal: colorRGB?`
- `guidVal: WOWGUID?`
