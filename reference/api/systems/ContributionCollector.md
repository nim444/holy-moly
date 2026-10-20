# ContributionCollector

Type: System  
Namespace: `C_ContributionCollector`  
Environment: All

## Functions

### C_ContributionCollector.Close

```lua
C_ContributionCollector.Close()
```

### C_ContributionCollector.Contribute

```lua
C_ContributionCollector.Contribute(contributionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetActive

```lua
C_ContributionCollector.GetActive() -> contributionID: number
```

### C_ContributionCollector.GetAtlases

```lua
C_ContributionCollector.GetAtlases(contributionID: number) -> atlasName: table<textureAtlas>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetBuffs

```lua
C_ContributionCollector.GetBuffs(contributionID: number) -> spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetContributionAppearance

```lua
C_ContributionCollector.GetContributionAppearance(contributionID: number, contributionState: ContributionState) -> appearance: ContributionAppearance?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetContributionCollectorsForMap

```lua
C_ContributionCollector.GetContributionCollectorsForMap(uiMapID: number) -> contributionCollectors: table<ContributionMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetContributionResult

```lua
C_ContributionCollector.GetContributionResult(contributionID: number) -> result: ContributionResult
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetDescription

```lua
C_ContributionCollector.GetDescription(contributionID: number) -> description: cstring = 
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetManagedContributionsForCreatureID

```lua
C_ContributionCollector.GetManagedContributionsForCreatureID(creatureID: number) -> contributionID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetName

```lua
C_ContributionCollector.GetName(contributionID: number) -> name: cstring = 
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetOrderIndex

```lua
C_ContributionCollector.GetOrderIndex(contributionID: number) -> orderIndex: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetRequiredContributionCurrency

```lua
C_ContributionCollector.GetRequiredContributionCurrency(contributionID: number) -> currencyID: number = 0, currencyAmount: number = 0
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContributionCollector.GetRequiredContributionItem

```lua
C_ContributionCollector.GetRequiredContributionItem(contributionID: number) -> itemID: number = 0, itemCount: number = 0
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContributionCollector.GetRewardQuestID

```lua
C_ContributionCollector.GetRewardQuestID(contributionID: number) -> questID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.GetState

```lua
C_ContributionCollector.GetState(contributionID: number) -> contributionState: ContributionState = None, contributionPercentageComplete: number, timeOfNextStateChange: time_t?, startTime: time_t
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.HasPendingContribution

```lua
C_ContributionCollector.HasPendingContribution(contributionID: number) -> hasPending: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContributionCollector.IsAwaitingRewardQuestData

```lua
C_ContributionCollector.IsAwaitingRewardQuestData(contributionID: number) -> awaitingData: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CONTRIBUTION_CHANGED

Payload: `state: ContributionState, result: ContributionResult, name: string, contributionID: number`  
Flags: SynchronousEvent  

### CONTRIBUTION_COLLECTOR_PENDING

Payload: `contributionID: number, isPending: bool, result: number`  
Flags: SynchronousEvent  

### CONTRIBUTION_COLLECTOR_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### CONTRIBUTION_COLLECTOR_UPDATE_SINGLE

Payload: `contributionID: number`  
Flags: SynchronousEvent  

## Tables

### ContributionResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| MustBeNearNpc | 1 |
| IncorrectState | 2 |
| InvalidID | 3 |
| QuestDataMissing | 4 |
| FailedConditionCheck | 5 |
| UnableToCompleteTurnIn | 6 |
| InternalError | 7 |

### ContributionAppearance (Structure)

- `stateName: cstring`
- `stateColor: colorRGB`
- `tooltipLine: cstring`
- `tooltipUseTimeRemaining: bool`
- `statusBarAtlas: textureAtlas`
- `borderAtlas: textureAtlas`
- `bannerAtlas: textureAtlas`

### ContributionMapInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `atlasName: string`
- `collectorCreatureID: number`
