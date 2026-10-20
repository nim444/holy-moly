# LFGConstants

Type: None

## Tables

### LFGEntryGeneralPlaystyle (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Learning | 1 |
| FunRelaxed | 2 |
| FunSerious | 3 |
| Expert | 4 |

### LFGEntryPlaystyle (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Standard | 1 |
| Casual | 2 |
| Hardcore | 3 |

### LFGEntryVoiceMode (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Legacy | 1 |
| Discord | 2 |
| Custom | 3 |

### LFGListDisplayType (Enumeration)

| Name | Value |
|---|---|
| RoleCount | 0 |
| RoleEnumerate | 1 |
| ClassEnumerate | 2 |
| HideAll | 3 |
| PlayerCount | 4 |
| Comment | 5 |

### LFGListFilter (Enumeration)

| Name | Value |
|---|---|
| Recommended | 1 |
| NotRecommended | 2 |
| PvE | 4 |
| PvP | 8 |
| Timerunning | 16 |
| CurrentExpansion | 32 |
| CurrentSeason | 64 |
| NotCurrentSeason | 128 |

### LFGRole (Enumeration)

| Name | Value |
|---|---|
| Tank | 0 |
| Healer | 1 |
| Damage | 2 |

### LFGSlotInvalidReason (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| ExpansionTooLow | 1 |
| LevelTooLow | 2 |
| LevelTooHigh | 3 |
| GearTooLow | 4 |
| GearTooHigh | 5 |
| RaidLocked | 6 |
| LevelTargetTooLow | 7 |
| LevelTargetTooHigh | 8 |
| AreaNotExplored | 9 |
| WrongFaction | 10 |
| NoValidRoles | 11 |
| EngagedInPvP | 12 |
| NoSpec | 13 |
| CannotRunAnyChildDungeon | 14 |
| Restricted | 15 |
| ChromieTime | 16 |
| Npe | 17 |
| Timerunning | 18 |
| PlayerConditionFailed | 19 |

### PremadeGroupFinderStyle (Enumeration)

| Name | Value |
|---|---|
| Disabled | 0 |
| Mainline | 1 |
| Vanilla | 2 |

### LFGConstsExposed (Constants)

| Name | Type | Value |
|---|---|---|
| GROUP_FINDER_MAX_ACTIVITY_CAPACITY | number | 16 |

### LFG_ROLEConstants (Constants)

| Name | Type | Value |
|---|---|---|
| LFG_ROLE_NO_ROLE | LFGRole | -1 |
| LFG_ROLE_ANY | LFGRole | Enum.LFGRoleMeta.NumValues |

### LFGRoles (Structure)

- `tank: bool`
- `healer: bool`
- `dps: bool`
