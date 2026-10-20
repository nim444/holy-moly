# DelvesConstants

Type: None

## Tables

### CompanionConfigSlotTypes (Enumeration)

| Name | Value |
|---|---|
| Role | 0 |
| Utility | 1 |
| Combat | 2 |
| Flavor | 3 |

### CurioRarity (Enumeration)

| Name | Value |
|---|---|
| Common | 1 |
| Uncommon | 2 |
| Rare | 3 |
| Epic | 4 |
| EpicTier2 | 5 |

### PlayerCompanionInfoFlags (Enumeration)

| Name | Value |
|---|---|
| IgnoreSeasonInScenarios | 1 |

### TieredEntranceTierFlag (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| IsLFG | 1 |
| DisableTraitSystem | 2 |

### TieredEntranceType (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Delve | 1 |
| Sites | 2 |
| WorldTier | 3 |
| Lairs | 4 |
| Placeholder_5 | 5 |
| Placeholder_6 | 6 |

### WorldTierDifficulty (Enumeration)

| Name | Value |
|---|---|
| Normal | 1 |
| Heroic | 2 |
| Mythic | 3 |

### DelveAssistActionData (Structure)

- `assistedPlayer: string`
- `mapName: cstring?`
- `creatureName: cstring?`
- `receivedSpellID: number?`
- `assistAction: AssistActionType`

### DelvesConsts (Constants)

| Name | Type | Value |
|---|---|---|
| DELVES_MIN_PLAYER_LEVEL_CONTENT_TUNING_ID | number | 2677 |
| DELVES_NORMAL_KEY_CURRENCY_ID | number | 3028 |
| DELVES_COMPANION_INFO_SELECTION_CHARACTER_DATA_ELEMENT_ID | number | 13 |
| DELVES_COMPANION_TOOLTIP_WIDGET_SET_ID | number | 1331 |
| DELVES_COMPANION_BRANN_CREATURE_ID | number | 210759 |
| DELVES_COMPANION_VALEERA_CREATURE_ID | number | 248567 |

### TieredEntranceConsts (Constants)

| Name | Type | Value |
|---|---|---|
| TIERED_ENTRANCE_TIER_SCORE_VALUE_TIER_LEVEL | number | 1 |
| TIERED_ENTRANCE_TIER_SCORE_VALUE_MAP_ID | number | 3 |
| TIERED_ENTRANCE_TIER_SCORE_VALUE_PLAYER_CONDITION_ID | number | 6 |
| TIERED_ENTRANCE_INFO_WORLD_TIER_DIFFICULTY_CHARACTER_ELEMENT_ID | number | 522 |
