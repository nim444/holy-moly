# IslandsQueue

Type: System  
Namespace: `C_IslandsQueue`  
Environment: All

## Functions

### C_IslandsQueue.CloseIslandsQueueScreen

```lua
C_IslandsQueue.CloseIslandsQueueScreen()
```

### C_IslandsQueue.GetIslandDifficultyInfo

```lua
C_IslandsQueue.GetIslandDifficultyInfo() -> islandDifficultyInfo: table<IslandsQueueDifficultyInfo>
```

### C_IslandsQueue.GetIslandsMaxGroupSize

```lua
C_IslandsQueue.GetIslandsMaxGroupSize() -> maxGroupSize: number
```

### C_IslandsQueue.GetIslandsWeeklyQuestID

```lua
C_IslandsQueue.GetIslandsWeeklyQuestID() -> questID: number?
```

### C_IslandsQueue.QueueForIsland

```lua
C_IslandsQueue.QueueForIsland(difficultyID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_IslandsQueue.RequestPreloadRewardData

```lua
C_IslandsQueue.RequestPreloadRewardData(questId: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ISLANDS_QUEUE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ISLANDS_QUEUE_OPEN

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### IslandsQueueDifficultyInfo (Structure)

- `difficultyId: number`
- `previewRewardQuestId: number`
