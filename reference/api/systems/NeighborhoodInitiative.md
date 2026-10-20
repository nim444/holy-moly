# NeighborhoodInitiative

Type: System  
Namespace: `C_NeighborhoodInitiative`  
Environment: All

## Functions

### C_NeighborhoodInitiative.AddTrackedInitiativeTask

```lua
C_NeighborhoodInitiative.AddTrackedInitiativeTask(initiativeTaskID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.GetActiveNeighborhood

```lua
C_NeighborhoodInitiative.GetActiveNeighborhood() -> neighborhoodGUID: WOWGUID
```

### C_NeighborhoodInitiative.GetAvailableHouseXP

```lua
C_NeighborhoodInitiative.GetAvailableHouseXP() -> availabeXP: number
```

### C_NeighborhoodInitiative.GetInitiativeActivityLogInfo

```lua
C_NeighborhoodInitiative.GetInitiativeActivityLogInfo() -> info: InitiativeActivityLogInfo?
```

### C_NeighborhoodInitiative.GetInitiativeTaskChatLink

```lua
C_NeighborhoodInitiative.GetInitiativeTaskChatLink(initiativeTaskID: number) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.GetInitiativeTaskInfo

```lua
C_NeighborhoodInitiative.GetInitiativeTaskInfo(initiativeTaskID: number) -> info: InitiativeTaskInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.GetInitiativeTaskRewardScaling

```lua
C_NeighborhoodInitiative.GetInitiativeTaskRewardScaling(taskID: number, numItems: number) -> scaledAmount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.GetNeighborhoodInitiativeInfo

```lua
C_NeighborhoodInitiative.GetNeighborhoodInitiativeInfo() -> info: NeighborhoodInitiativeInfo?
```

### C_NeighborhoodInitiative.GetRequiredLevel

```lua
C_NeighborhoodInitiative.GetRequiredLevel() -> reqLevel: number
```

### C_NeighborhoodInitiative.GetTrackedInitiativeTasks

```lua
C_NeighborhoodInitiative.GetTrackedInitiativeTasks() -> trackedInitiativeTasks: InitiativeTasksTracked
```

### C_NeighborhoodInitiative.IsInitiativeEnabled

```lua
C_NeighborhoodInitiative.IsInitiativeEnabled() -> enabled: bool
```

### C_NeighborhoodInitiative.IsPlayerInNeighborhoodGroup

```lua
C_NeighborhoodInitiative.IsPlayerInNeighborhoodGroup() -> inValidGroup: bool
```

### C_NeighborhoodInitiative.IsViewingActiveNeighborhood

```lua
C_NeighborhoodInitiative.IsViewingActiveNeighborhood() -> isViewingActiveNeighborhood: bool
```

### C_NeighborhoodInitiative.PlayerHasInitiativeAccess

```lua
C_NeighborhoodInitiative.PlayerHasInitiativeAccess() -> success: bool
```

### C_NeighborhoodInitiative.PlayerMeetsRequiredLevel

```lua
C_NeighborhoodInitiative.PlayerMeetsRequiredLevel() -> success: bool
```

### C_NeighborhoodInitiative.RemoveTrackedInitiativeTask

```lua
C_NeighborhoodInitiative.RemoveTrackedInitiativeTask(initiativeTaskID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.RequestInitiativeActivityLog

```lua
C_NeighborhoodInitiative.RequestInitiativeActivityLog()
```

### C_NeighborhoodInitiative.RequestNeighborhoodInitiativeInfo

```lua
C_NeighborhoodInitiative.RequestNeighborhoodInitiativeInfo()
```

### C_NeighborhoodInitiative.SetActiveNeighborhood

```lua
C_NeighborhoodInitiative.SetActiveNeighborhood(neighborhoodGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_NeighborhoodInitiative.SetViewingNeighborhood

```lua
C_NeighborhoodInitiative.SetViewingNeighborhood(neighborhoodGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### INITIATIVE_ACTIVITY_LOG_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### INITIATIVE_COMPLETED

Payload: `initiativeTitle: string`  
Flags: SynchronousEvent  

### INITIATIVE_TASK_COMPLETED

Payload: `taskName: string`  
Flags: SynchronousEvent  

### INITIATIVE_TASKS_TRACKED_LIST_CHANGED

Payload: `initiativeTaskID: number, added: bool`  
Flags: SynchronousEvent  

### INITIATIVE_TASKS_TRACKED_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### NEIGHBORHOOD_INITIATIVE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### InitiativeActivityLogEntry (Structure)

- `taskID: number`
- `playerName: string`
- `taskName: cstring`
- `completionTime: time_t`
- `amount: number`

### InitiativeActivityLogInfo (Structure)

- `isLoaded: bool`
- `neighborhoodGUID: WOWGUID`
- `nextUpdateTime: time_t`
- `taskActivity: table<InitiativeActivityLogEntry>`

### InitiativeMilestoneInfo (Structure)

- `milestoneOrderIndex: number`
- `requiredContributionAmount: number`
- `rewards: table<InitiativeMilestoneRewardInfo>`

### InitiativeMilestoneRewardInfo (Structure)

- `title: string`
- `description: string`
- `decorID: number`
- `decorQuantity: number`
- `favor: number`
- `money: WOWMONEY`
- `rewardQuestID: number`

### InitiativeTaskInfo (Structure)

- `ID: number`
- `taskName: cstring`
- `description: string`
- `progressContributionAmount: number`
- `tracked: bool`
- `supersedes: number`
- `timesCompleted: number`
- `completed: bool`
- `inProgress: bool`
- `taskType: NeighborhoodInitiativeTaskType`
- `sortOrder: number`
- `rewardQuestID: number`
- `requirementsList: table<CriteriaRequirement>`
- `criteriaList: table<CriteriaRequiredValue>`

### InitiativeTasksTracked (Structure)

- `trackedIDs: table<number>`

### NeighborhoodInitiativeInfo (Structure)

- `isLoaded: bool`
- `neighborhoodGUID: WOWGUID`
- `initiativeID: number`
- `currentCycleID: number`
- `progressRequired: number`
- `currentProgress: number`
- `playerTotalContribution: number`
- `duration: time_t`
- `tasks: table<InitiativeTaskInfo>`
- `milestones: table<InitiativeMilestoneInfo>`
- `title: string`
- `description: string`
