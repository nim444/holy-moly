# QuestLineUI

Type: System  
Namespace: `C_QuestLine`  
Environment: All

## Functions

### C_QuestLine.GetAvailableQuestLines

```lua
C_QuestLine.GetAvailableQuestLines(uiMapID: number) -> questLines: table<QuestLineInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.GetForceVisibleQuests

```lua
C_QuestLine.GetForceVisibleQuests(uiMapID: number) -> questIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.GetQuestLineInfo

```lua
C_QuestLine.GetQuestLineInfo(questID: number, uiMapID: number?, displayableOnly: bool = false) -> questLineInfo: QuestLineInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.GetQuestLineQuests

```lua
C_QuestLine.GetQuestLineQuests(questLineID: number) -> questIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.IsComplete

```lua
C_QuestLine.IsComplete(questLineID: number) -> isComplete: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.QuestLineIgnoresAccountCompletedFiltering

```lua
C_QuestLine.QuestLineIgnoresAccountCompletedFiltering(uiMapID: number, questLineID: number) -> questLineIgnoresAccountCompletedFiltering: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLine.RequestQuestLinesForMap

```lua
C_QuestLine.RequestQuestLinesForMap(uiMapID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### QuestLineFloorLocation (Enumeration)

| Name | Value |
|---|---|
| Above | 0 |
| Below | 1 |
| Same | 2 |

### QuestLineInfo (Structure)

- `questLineName: cstring`
- `questName: cstring`
- `questLineID: number`
- `questID: number`
- `x: number`
- `y: number`
- `isHidden: bool`
- `isLegendary: bool`
- `isLocalStory: bool`
- `isDaily: bool`
- `isCampaign: bool`
- `isImportant: bool`
- `isAccountCompleted: bool`
- `isCombatAllyQuest: bool`
- `isMeta: bool`
- `inProgress: bool`
- `isQuestStart: bool`
- `floorLocation: QuestLineFloorLocation`
- `startMapID: number`
