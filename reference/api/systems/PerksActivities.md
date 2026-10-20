# PerksActivities

Type: System  
Namespace: `C_PerksActivities`  
Environment: All

## Functions

### C_PerksActivities.AddTrackedPerksActivity

```lua
C_PerksActivities.AddTrackedPerksActivity(perksActivityID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksActivities.ClearPerksActivitiesPendingCompletion

```lua
C_PerksActivities.ClearPerksActivitiesPendingCompletion()
```

### C_PerksActivities.GetAllPerksActivityTags

```lua
C_PerksActivities.GetAllPerksActivityTags() -> tags: PerksActivityTags
```

### C_PerksActivities.GetPerksActivitiesInfo

```lua
C_PerksActivities.GetPerksActivitiesInfo() -> info: PerksActivitiesInfo
```

### C_PerksActivities.GetPerksActivitiesPendingCompletion

```lua
C_PerksActivities.GetPerksActivitiesPendingCompletion() -> pending: PerksActivitiesPending
```

### C_PerksActivities.GetPerksActivityChatLink

```lua
C_PerksActivities.GetPerksActivityChatLink(perksActivityID: number) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksActivities.GetPerksActivityInfo

```lua
C_PerksActivities.GetPerksActivityInfo(perksActivityID: number) -> info: PerksActivityInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PerksActivities.GetPerksUIThemePrefix

```lua
C_PerksActivities.GetPerksUIThemePrefix() -> kitPrefix: string
```

### C_PerksActivities.GetTrackedPerksActivities

```lua
C_PerksActivities.GetTrackedPerksActivities() -> trackedPerksActivities: PerksActivitiesTracked
```

### C_PerksActivities.RemoveTrackedPerksActivity

```lua
C_PerksActivities.RemoveTrackedPerksActivity(perksActivityID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### PERKS_ACTIVITIES_TRACKED_LIST_CHANGED

Payload: `perksActivityID: number, added: bool`  
Flags: SynchronousEvent  

### PERKS_ACTIVITIES_TRACKED_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### PERKS_ACTIVITIES_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### PERKS_ACTIVITY_COMPLETED

Payload: `perksActivityID: number`  
Flags: SynchronousEvent  

## Tables

### PerksActivitiesInfo (Structure)

- `activePerksMonth: number`
- `displayMonthName: cstring`
- `secondsRemaining: time_t`
- `activities: table<PerksActivityInfo>`
- `thresholds: table<PerksActivityThresholdInfo>`

### PerksActivitiesPending (Structure)

- `pendingIDs: table<number>`

### PerksActivitiesTracked (Structure)

- `trackedIDs: table<number>`

### PerksActivityCondition (Structure)

- `isMet: bool`
- `text: cstring`
- `uiPriority: number`

### PerksActivityInfo (Structure)

- `ID: number`
- `activityName: cstring`
- `description: string`
- `thresholdContributionAmount: number`
- `completed: bool`
- `inProgress: bool`
- `tracked: bool`
- `supersedes: number`
- `uiPriority: number`
- `areAllConditionsMet: bool`
- `conditions: table<PerksActivityCondition>`
- `eventName: cstring?`
- `eventStartTime: time_t?`
- `eventEndTime: time_t?`
- `requirementsList: table<CriteriaRequirement>`
- `criteriaList: table<CriteriaRequiredValue>`
- `tagNames: table<string>`

### PerksActivityTags (Structure)

- `tagName: table<string>`

### PerksActivityThresholdInfo (Structure)

- `thresholdOrderIndex: number`
- `currencyAwardAmount: number`
- `requiredContributionAmount: number`
- `pendingReward: bool`
- `itemReward: number?`
