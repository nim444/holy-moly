# QuestTaskInfo

Type: System  
Namespace: `C_TaskQuest`  
Environment: All

## Functions

### C_TaskQuest.DoesMapShowTaskQuestObjectives

```lua
C_TaskQuest.DoesMapShowTaskQuestObjectives(uiMapID: number) -> showsTaskQuestObjectives: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TaskQuest.GetQuestInfoByQuestID

```lua
C_TaskQuest.GetQuestInfoByQuestID(questID: number) -> questTitle: cstring, factionID: number?, capped: bool?, displayAsObjective: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestLocation

```lua
C_TaskQuest.GetQuestLocation(questID: number, uiMapID: number) -> locationX: number, locationY: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestProgressBarInfo

```lua
C_TaskQuest.GetQuestProgressBarInfo(questID: number) -> progress: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestTimeLeftMinutes

```lua
C_TaskQuest.GetQuestTimeLeftMinutes(questID: number) -> minutesLeft: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestTimeLeftSeconds

```lua
C_TaskQuest.GetQuestTimeLeftSeconds(questID: number) -> secondsLeft: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestUIWidgetSetByType

```lua
C_TaskQuest.GetQuestUIWidgetSetByType(questID: number, type: MapIconUIWidgetSetType) -> widgetSet: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestZoneID

```lua
C_TaskQuest.GetQuestZoneID(questID: number) -> uiMapID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetQuestsOnMap

```lua
C_TaskQuest.GetQuestsOnMap(uiMapID: number) -> taskPOIs: table<QuestPOIMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TaskQuest.GetThreatQuests

```lua
C_TaskQuest.GetThreatQuests() -> quests: table<number>
```

### C_TaskQuest.IsActive

```lua
C_TaskQuest.IsActive(questID: number) -> active: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TaskQuest.RequestPreloadRewardData

```lua
C_TaskQuest.RequestPreloadRewardData(questID: number)
```

Secret: SecretArguments=AllowedWhenUntainted
