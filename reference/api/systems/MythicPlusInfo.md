# MythicPlusInfo

Type: System  
Namespace: `C_MythicPlus`  
Environment: All

## Functions

### C_MythicPlus.GetCurrentAffixes

```lua
C_MythicPlus.GetCurrentAffixes() -> affixIDs: table<MythicPlusKeystoneAffix>
```

Flags: MayReturnNothing  

### C_MythicPlus.GetCurrentSeason

```lua
C_MythicPlus.GetCurrentSeason() -> seasonID: number
```

### C_MythicPlus.GetCurrentSeasonValues

```lua
C_MythicPlus.GetCurrentSeasonValues() -> displaySeasonID: number, milestoneSeasonID: number, rewardSeasonID: number
```

### C_MythicPlus.GetCurrentUIDisplaySeason

```lua
C_MythicPlus.GetCurrentUIDisplaySeason() -> seasonID: number?
```

### C_MythicPlus.GetEndOfRunGearSequenceLevel

```lua
C_MythicPlus.GetEndOfRunGearSequenceLevel(keystoneLevel: number) -> sequenceLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MythicPlus.GetLastWeeklyBestInformation

```lua
C_MythicPlus.GetLastWeeklyBestInformation() -> challengeMapId: number, level: number
```

Flags: MayReturnNothing  

### C_MythicPlus.GetOwnedKeystoneChallengeMapID

```lua
C_MythicPlus.GetOwnedKeystoneChallengeMapID() -> challengeMapID: number
```

Flags: MayReturnNothing  

### C_MythicPlus.GetOwnedKeystoneLevel

```lua
C_MythicPlus.GetOwnedKeystoneLevel() -> keyStoneLevel: number
```

Flags: MayReturnNothing  

### C_MythicPlus.GetOwnedKeystoneMapID

```lua
C_MythicPlus.GetOwnedKeystoneMapID() -> mapID: number
```

Flags: MayReturnNothing  

### C_MythicPlus.GetRewardLevelForDifficultyLevel

```lua
C_MythicPlus.GetRewardLevelForDifficultyLevel(difficultyLevel: number) -> weeklyRewardLevel: number, endOfRunRewardLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MythicPlus.GetRewardLevelFromKeystoneLevel

```lua
C_MythicPlus.GetRewardLevelFromKeystoneLevel(keystoneLevel: number) -> rewardLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MythicPlus.GetRunHistory

```lua
C_MythicPlus.GetRunHistory(includePreviousWeeks: bool = false, includeIncompleteRuns: bool = false, currentSeasonOnly: bool = false) -> runs: table<MythicPlusRunInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MythicPlus.GetSeasonBestAffixScoreInfoForMap

```lua
C_MythicPlus.GetSeasonBestAffixScoreInfoForMap(mapChallengeModeID: number) -> affixScores: table<MythicPlusAffixScoreInfo>, bestOverAllScore: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Gets the active players best runs by the seasonal tracked affixes as well as their overall score for the current season.

### C_MythicPlus.GetSeasonBestForMap

```lua
C_MythicPlus.GetSeasonBestForMap(mapChallengeModeID: number) -> intimeInfo: MapSeasonBestInfo?, overtimeInfo: MapSeasonBestInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MythicPlus.GetSeasonBestMythicRatingFromThisExpansion

```lua
C_MythicPlus.GetSeasonBestMythicRatingFromThisExpansion() -> bestSeasonScore: number, bestSeason: number
```

Flags: MayReturnNothing  

### C_MythicPlus.GetWeeklyBestForMap

```lua
C_MythicPlus.GetWeeklyBestForMap(mapChallengeModeID: number) -> durationSec: number, level: number, completionDate: CalendarTime, affixIDs: table<number>, members: table<MythicPlusMember>, dungeonScore: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MythicPlus.GetWeeklyChestRewardLevel

```lua
C_MythicPlus.GetWeeklyChestRewardLevel() -> currentWeekBestLevel: number, weeklyRewardLevel: number, nextDifficultyWeeklyRewardLevel: number, nextBestLevel: number
```

### C_MythicPlus.IsMythicPlusActive

```lua
C_MythicPlus.IsMythicPlusActive() -> isMythicPlusActive: bool
```

### C_MythicPlus.RequestCurrentAffixes

```lua
C_MythicPlus.RequestCurrentAffixes()
```

### C_MythicPlus.RequestMapInfo

```lua
C_MythicPlus.RequestMapInfo()
```

### C_MythicPlus.RequestRewards

```lua
C_MythicPlus.RequestRewards()
```

## Events

### MYTHIC_PLUS_CURRENT_AFFIX_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### MYTHIC_PLUS_NEW_WEEKLY_RECORD

Payload: `mapChallengeModeID: number, completionMilliseconds: number, level: number`  
Flags: SynchronousEvent  

## Tables

### MapSeasonBestInfo (Structure)

- `durationSec: number`
- `level: number`
- `completionDate: CalendarTime`
- `affixIDs: table<number>`
- `members: table<MythicPlusMember>`
- `dungeonScore: number`

### MythicPlusDate (Structure)

- `year: number`
- `month: number`
- `day: number`
- `hour: number`
- `minute: number`
- `weekday: luaIndex`

### MythicPlusKeystoneAffix (Structure)

- `id: number`
- `seasonID: number`

### MythicPlusMember (Structure)

- `name: string?`
- `specID: number`
- `classID: number`

### MythicPlusRunInfo (Structure)

- `mapChallengeModeID: number`
- `level: number`
- `thisWeek: bool`
- `completed: bool`
- `runScore: number`
- `durationSec: number`
- `completionDate: CalendarTime`
- `season: number`

### SeasonTimeInfo (Structure)

- `bestTime: number`
- `lastTime: number`
- `medal: number`
