# ChallengeModeInfo

Type: System  
Namespace: `C_ChallengeMode`  
Environment: All

## Functions

### C_ChallengeMode.CanUseKeystoneInCurrentMap

```lua
C_ChallengeMode.CanUseKeystoneInCurrentMap(itemLocation: ItemLocation) -> canUse: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChallengeMode.ClearKeystone

```lua
C_ChallengeMode.ClearKeystone()
```

### C_ChallengeMode.CloseKeystoneFrame

```lua
C_ChallengeMode.CloseKeystoneFrame()
```

### C_ChallengeMode.GetActiveChallengeMapID

```lua
C_ChallengeMode.GetActiveChallengeMapID() -> mapChallengeModeID: number?
```

### C_ChallengeMode.GetActiveKeystoneInfo

```lua
C_ChallengeMode.GetActiveKeystoneInfo() -> activeKeystoneLevel: number, activeAffixIDs: table<number>, wasActiveKeystoneCharged: bool
```

### C_ChallengeMode.GetAffixInfo

```lua
C_ChallengeMode.GetAffixInfo(affixID: number) -> name: cstring, description: cstring, filedataid: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ChallengeMode.GetChallengeCompletionInfo

```lua
C_ChallengeMode.GetChallengeCompletionInfo() -> info: ChallengeCompletionInfo
```

### C_ChallengeMode.GetDeathCount

```lua
C_ChallengeMode.GetDeathCount() -> numDeaths: number, timeLost: number
```

Flags: MayReturnNothing  

### C_ChallengeMode.GetDungeonScoreRarityColor

```lua
C_ChallengeMode.GetDungeonScoreRarityColor(dungeonScore: number) -> scoreColor: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a color value from the passed in overall season M+ rating.

### C_ChallengeMode.GetGuildLeaders

```lua
C_ChallengeMode.GetGuildLeaders() -> topAttempt: table<ChallengeModeGuildTopAttempt>
```

Flags: MayReturnNothing  

### C_ChallengeMode.GetKeystoneLevelRarityColor

```lua
C_ChallengeMode.GetKeystoneLevelRarityColor(level: number) -> levelScore: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a color value from the passed in keystone level.

### C_ChallengeMode.GetLeaverPenaltyWarningTimeLeft

```lua
C_ChallengeMode.GetLeaverPenaltyWarningTimeLeft() -> timeLeftSeconds: number = 0
```

Returns how much time is left before player is automatically flagged as a leaver (and removed from the group) for exiting a restricted challenge mode instance

### C_ChallengeMode.GetMapScoreInfo

```lua
C_ChallengeMode.GetMapScoreInfo() -> displayScores: table<MythicPlusRatingLinkInfo>
```

Flags: MayReturnNothing  

### C_ChallengeMode.GetMapTable

```lua
C_ChallengeMode.GetMapTable() -> mapChallengeModeIDs: table<number>
```

### C_ChallengeMode.GetMapUIInfo

```lua
C_ChallengeMode.GetMapUIInfo(mapChallengeModeID: number) -> name: cstring, id: number, timeLimit: number, texture: number?, backgroundTexture: number, mapID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ChallengeMode.GetOverallDungeonScore

```lua
C_ChallengeMode.GetOverallDungeonScore() -> overallDungeonScore: number
```

Gets the overall season mythic+ rating for the player.

### C_ChallengeMode.GetPowerLevelDamageHealthMod

```lua
C_ChallengeMode.GetPowerLevelDamageHealthMod(powerLevel: number) -> damageMod: number, healthMod: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ChallengeMode.GetSlottedKeystoneInfo

```lua
C_ChallengeMode.GetSlottedKeystoneInfo() -> mapChallengeModeID: number, affixIDs: table<number>, keystoneLevel: number
```

Flags: MayReturnNothing  

### C_ChallengeMode.GetSpecificDungeonOverallScoreRarityColor

```lua
C_ChallengeMode.GetSpecificDungeonOverallScoreRarityColor(specificDungeonOverallScore: number) -> specificDungeonOverallScoreColor: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a color value from the passed in mythic+ rating from the combined affix scores for a specific dungeon

### C_ChallengeMode.GetSpecificDungeonScoreRarityColor

```lua
C_ChallengeMode.GetSpecificDungeonScoreRarityColor(specificDungeonScore: number) -> specificDungeonScoreColor: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a color value from the passed in mythic+ rating for a specific dungeon.

### C_ChallengeMode.GetStartTime

```lua
C_ChallengeMode.GetStartTime() -> startTime: number
```

### C_ChallengeMode.HasSlottedKeystone

```lua
C_ChallengeMode.HasSlottedKeystone() -> hasSlottedKeystone: bool
```

### C_ChallengeMode.IsChallengeModeActive

```lua
C_ChallengeMode.IsChallengeModeActive() -> challengeModeActive: bool
```

### C_ChallengeMode.IsChallengeModeResettable

```lua
C_ChallengeMode.IsChallengeModeResettable() -> canReset: bool
```

### C_ChallengeMode.RemoveKeystone

```lua
C_ChallengeMode.RemoveKeystone() -> removalSuccessful: bool
```

### C_ChallengeMode.RequestLeaders

```lua
C_ChallengeMode.RequestLeaders(mapChallengeModeID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ChallengeMode.Reset

```lua
C_ChallengeMode.Reset()
```

### C_ChallengeMode.SlotKeystone

```lua
C_ChallengeMode.SlotKeystone()
```

### C_ChallengeMode.StartChallengeMode

```lua
C_ChallengeMode.StartChallengeMode() -> success: bool
```

## Events

### CHALLENGE_MODE_COMPLETED

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_COMPLETED_REWARDS

Payload: `mapID: number, medal: number, timeMS: number, money: number, rewards: table<ChallengeModeReward>`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_DEATH_COUNT_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_KEYSTONE_RECEPTABLE_OPEN

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_KEYSTONE_SLOTTED

Payload: `keystoneID: number`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_LEADERBOARD_RESULT

Payload: `mapID: number, challengeModeID: number, page: number, results: table<MythicPlusLeaderboardResult>`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_LEADERS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_LEAVER_TIMER_ENDED

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_LEAVER_TIMER_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_MAPS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_MEMBER_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_NEW_RECORD

Payload: `mapID: number, timeMS: number, medal: number`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_RESET

Payload: `mapID: number`  
Flags: SynchronousEvent  

### CHALLENGE_MODE_START

Payload: `mapID: number`  
Flags: SynchronousEvent  

## Tables

### ChallengeCompletionInfo (Structure)

- `mapChallengeModeID: number = 0`
- `level: number = 0`
- `time: number = 0`
- `onTime: bool = false`
- `keystoneUpgradeLevels: number = 0`
- `practiceRun: bool = false`
- `oldOverallDungeonScore: number?`
- `newOverallDungeonScore: number?`
- `isMapRecord: bool = false`
- `isAffixRecord: bool = false`
- `isEligibleForScore: bool = false`
- `members: table<ChallengeModeCompletionMemberInfo>`

### ChallengeModeBestTime (Structure)

- `mapChallengeModeID: number`
- `durationMs: number`
- `members: table<ChallengeModeBestTimeMember>`

### ChallengeModeBestTimeMember (Structure)

- `name: string`
- `classFileName: cstring`
- `className: cstring`
- `specializationID: number`

### ChallengeModeCompletionMemberInfo (Structure)

- `memberGUID: WOWGUID`
- `name: string`

### ChallengeModeGuildAttemptMember (Structure)

- `name: string`
- `classFileName: cstring`

### ChallengeModeGuildTopAttempt (Structure)

- `name: string`
- `classFileName: cstring`
- `keystoneLevel: number`
- `mapChallengeModeID: number`
- `isYou: bool`
- `members: table<ChallengeModeGuildAttemptMember>`

### ChallengeModeReward (Structure)

- `rewardID: number`
- `displayInfoID: number`
- `quantity: number`
- `isCurrency: bool`
