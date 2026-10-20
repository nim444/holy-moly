# QuestInfoShared

Type: None

## Tables

### QuestClassification (Enumeration)

| Name | Value |
|---|---|
| Important | 0 |
| Legendary | 1 |
| Campaign | 2 |
| Calling | 3 |
| Meta | 4 |
| Recurring | 5 |
| Questline | 6 |
| Normal | 7 |
| BonusObjective | 8 |
| Threat | 9 |
| WorldQuest | 10 |

### QuestPOIMapInfo (Structure)

- `childDepth: number?`
- `questTagType: QuestTagType?`
- `questID: number`
- `numObjectives: number`
- `mapID: number`
- `x: number`
- `y: number`
- `isQuestStart: bool`
- `isDaily: bool`
- `isCombatAllyQuest: bool`
- `isMeta: bool`
- `inProgress: bool`
- `isMapIndicatorQuest: bool`
