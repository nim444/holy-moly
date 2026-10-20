# WeeklyRewards

Type: System  
Namespace: `C_WeeklyRewards`  
Environment: All

## Functions

### C_WeeklyRewards.AreRewardsForCurrentRewardPeriod

```lua
C_WeeklyRewards.AreRewardsForCurrentRewardPeriod() -> isCurrentPeriod: bool
```

### C_WeeklyRewards.CanClaimRewards

```lua
C_WeeklyRewards.CanClaimRewards() -> canClaimRewards: bool
```

### C_WeeklyRewards.ClaimReward

```lua
C_WeeklyRewards.ClaimReward(id: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WeeklyRewards.CloseInteraction

```lua
C_WeeklyRewards.CloseInteraction()
```

### C_WeeklyRewards.GetActivities

```lua
C_WeeklyRewards.GetActivities(type: WeeklyRewardChestThresholdType?) -> activities: table<WeeklyRewardActivityInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WeeklyRewards.GetActivityEncounterInfo

```lua
C_WeeklyRewards.GetActivityEncounterInfo(type: WeeklyRewardChestThresholdType, index: luaIndex) -> info: table<WeeklyRewardActivityEncounterInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WeeklyRewards.GetConquestWeeklyProgress

```lua
C_WeeklyRewards.GetConquestWeeklyProgress() -> weeklyProgress: ConquestWeeklyProgress
```

### C_WeeklyRewards.GetDifficultyIDForActivityTier

```lua
C_WeeklyRewards.GetDifficultyIDForActivityTier(activityTierID: number) -> difficultyID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WeeklyRewards.GetExampleRewardItemHyperlinks

```lua
C_WeeklyRewards.GetExampleRewardItemHyperlinks(id: number) -> hyperlink: string, upgradeHyperlink: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WeeklyRewards.GetItemHyperlink

```lua
C_WeeklyRewards.GetItemHyperlink(itemDBID: WeeklyRewardItemDBID) -> hyperlink: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WeeklyRewards.GetNextActivitiesIncrease

```lua
C_WeeklyRewards.GetNextActivitiesIncrease(activityTierID: number, level: number) -> hasSeasonData: bool, nextActivityTierID: number?, nextLevel: number?, itemLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WeeklyRewards.GetNextMythicPlusIncrease

```lua
C_WeeklyRewards.GetNextMythicPlusIncrease(mythicPlusLevel: number) -> hasSeasonData: bool, nextMythicPlusLevel: number?, itemLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WeeklyRewards.GetNumCompletedDungeonRuns

```lua
C_WeeklyRewards.GetNumCompletedDungeonRuns() -> numHeroic: number, numMythic: number, numMythicPlus: number
```

### C_WeeklyRewards.GetSortedProgressForActivity

```lua
C_WeeklyRewards.GetSortedProgressForActivity(type: WeeklyRewardChestThresholdType, combineSharedDifficulty: bool) -> progress: table<WeeklyRewardActivityTierProgress>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WeeklyRewards.HasAvailableRewards

```lua
C_WeeklyRewards.HasAvailableRewards() -> hasAvailableRewards: bool
```

### C_WeeklyRewards.HasGeneratedRewards

```lua
C_WeeklyRewards.HasGeneratedRewards() -> hasGeneratedRewards: bool
```

### C_WeeklyRewards.HasInteraction

```lua
C_WeeklyRewards.HasInteraction() -> isInteracting: bool
```

### C_WeeklyRewards.IsWeeklyChestRetired

```lua
C_WeeklyRewards.IsWeeklyChestRetired() -> isRetired: bool
```

### C_WeeklyRewards.OnUIInteract

```lua
C_WeeklyRewards.OnUIInteract()
```

### C_WeeklyRewards.ShouldShowFinalRetirementMessage

```lua
C_WeeklyRewards.ShouldShowFinalRetirementMessage() -> showRetirementMessage: bool
```

### C_WeeklyRewards.ShouldShowRetirementMessage

```lua
C_WeeklyRewards.ShouldShowRetirementMessage() -> showRetirementMessage: bool
```

## Events

### WEEKLY_REWARDS_ITEM_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### WEEKLY_REWARDS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ConquestProgressBarDisplayType (Enumeration)

| Name | Value |
|---|---|
| FirstChest | 0 |
| AdditionalChest | 1 |
| Seasonal | 2 |

### ConquestWeeklyProgress (Structure)

- `progress: number`
- `maxProgress: number`
- `displayType: ConquestProgressBarDisplayType`
- `unlocksCompleted: number`
- `maxUnlocks: number`
- `sampleItemHyperlink: string`

### WeeklyRewardActivityEncounterInfo (Structure)

- `encounterID: number`
- `bestDifficulty: number`
- `uiOrder: number`
- `instanceID: number`

### WeeklyRewardActivityInfo (Structure)

- `type: WeeklyRewardChestThresholdType`
- `index: luaIndex`
- `threshold: number`
- `progress: number`
- `id: number`
- `activityTierID: number`
- `level: number`
- `claimID: number?`
- `raidString: cstring?`
- `rewards: table<WeeklyRewardActivityRewardInfo>`

### WeeklyRewardActivityRewardInfo (Structure)

- `type: CachedRewardType`
- `id: number`
- `quantity: number`
- `itemDBID: WeeklyRewardItemDBID?`

### WeeklyRewardActivityTierProgress (Structure)

- `activityTierID: number`
- `difficulty: number`
- `numPoints: number`
