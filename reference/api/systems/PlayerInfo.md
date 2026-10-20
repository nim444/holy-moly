# PlayerInfo

Type: System  
Namespace: `C_PlayerInfo`  
Environment: All

## Functions

### C_PlayerInfo.CanPlayerEnterChromieTime

```lua
C_PlayerInfo.CanPlayerEnterChromieTime() -> canEnter: bool
```

### C_PlayerInfo.CanPlayerUseAreaLoot

```lua
C_PlayerInfo.CanPlayerUseAreaLoot() -> canUseAreaLoot: bool
```

### C_PlayerInfo.CanPlayerUseMountEquipment

```lua
C_PlayerInfo.CanPlayerUseMountEquipment() -> canUseMountEquipment: bool, failureReason: string
```

### C_PlayerInfo.CanUseItem

```lua
C_PlayerInfo.CanUseItem(itemID: number) -> isUseable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetAlternateFormInfo

```lua
C_PlayerInfo.GetAlternateFormInfo() -> hasAlternateForm: bool, inAlternateForm: bool
```

### C_PlayerInfo.GetContentDifficultyCreatureForPlayer

```lua
C_PlayerInfo.GetContentDifficultyCreatureForPlayer(unitToken: UnitToken) -> difficulty: RelativeContentDifficulty
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetContentDifficultyQuestForPlayer

```lua
C_PlayerInfo.GetContentDifficultyQuestForPlayer(questID: number) -> difficulty: RelativeContentDifficulty
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetDisplayID

```lua
C_PlayerInfo.GetDisplayID() -> displayID: number
```

### C_PlayerInfo.GetGlidingInfo

```lua
C_PlayerInfo.GetGlidingInfo() -> isGliding: bool, canGlide: bool, forwardSpeed: number
```

### C_PlayerInfo.GetInstancesUnlockedAtLevel

```lua
C_PlayerInfo.GetInstancesUnlockedAtLevel(level: number, isRaid: bool) -> dungeonID: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PlayerInfo.GetNativeDisplayID

```lua
C_PlayerInfo.GetNativeDisplayID() -> nativeDisplayID: number
```

### C_PlayerInfo.GetPetStableCreatureDisplayInfoID

```lua
C_PlayerInfo.GetPetStableCreatureDisplayInfoID(index: number) -> creatureDisplayInfoID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.GetPlayerCharacterData

```lua
C_PlayerInfo.GetPlayerCharacterData() -> characterData: PlayerInfoCharacterData
```

Flags: MayReturnNothing  

### C_PlayerInfo.GetPlayerMythicPlusRatingSummary

```lua
C_PlayerInfo.GetPlayerMythicPlusRatingSummary(playerToken: UnitToken) -> ratingSummary: MythicPlusRatingSummary
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns the players mythic+ rating summary which includes the runs they've completed as well as their current season m+ rating

### C_PlayerInfo.HasAccountInventoryLock

```lua
C_PlayerInfo.HasAccountInventoryLock() -> hasAccountInventoryLock: bool
```

### C_PlayerInfo.HasVisibleInvSlot

```lua
C_PlayerInfo.HasVisibleInvSlot(slot: luaIndex) -> isVisible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.IsAccountBankEnabled

```lua
C_PlayerInfo.IsAccountBankEnabled() -> isAccountBankEnabled: bool
```

### C_PlayerInfo.IsCharacterBankEnabled

```lua
C_PlayerInfo.IsCharacterBankEnabled() -> isCharacterBankEnabled: bool
```

### C_PlayerInfo.IsDisplayRaceNative

```lua
C_PlayerInfo.IsDisplayRaceNative() -> isDisplayRaceNative: bool
```

### C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer

```lua
C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(expansionID: number) -> isUnlocked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInfo.IsMirrorImage

```lua
C_PlayerInfo.IsMirrorImage() -> isMirrorImage: bool
```

### C_PlayerInfo.IsPlayerEligibleForNPE

```lua
C_PlayerInfo.IsPlayerEligibleForNPE() -> isEligible: bool, failureReason: string
```

### C_PlayerInfo.IsPlayerEligibleForNPEv2

```lua
C_PlayerInfo.IsPlayerEligibleForNPEv2() -> isEligible: bool, failureReason: string
```

### C_PlayerInfo.IsPlayerInChromieTime

```lua
C_PlayerInfo.IsPlayerInChromieTime() -> inChromieTime: bool
```

### C_PlayerInfo.IsPlayerInRPE

```lua
C_PlayerInfo.IsPlayerInRPE() -> isInRPE: bool
```

### C_PlayerInfo.IsPlayerInTimerunningHeroicWorldTier

```lua
C_PlayerInfo.IsPlayerInTimerunningHeroicWorldTier() -> inTimerunningHeroicWorldTier: bool
```

### C_PlayerInfo.IsPlayerNPERestricted

```lua
C_PlayerInfo.IsPlayerNPERestricted() -> isRestricted: bool
```

### C_PlayerInfo.IsReturningCharacter

```lua
C_PlayerInfo.IsReturningCharacter() -> isReturning: bool
```

### C_PlayerInfo.IsSelfFoundActive

```lua
C_PlayerInfo.IsSelfFoundActive() -> active: bool
```

### C_PlayerInfo.IsTradingPostAvailable

```lua
C_PlayerInfo.IsTradingPostAvailable() -> isAvailable: bool
```

### C_PlayerInfo.IsTravelersLogAvailable

```lua
C_PlayerInfo.IsTravelersLogAvailable() -> isAvailable: bool
```

### C_PlayerInfo.IsTutorialsTabAvailable

```lua
C_PlayerInfo.IsTutorialsTabAvailable() -> isAvailable: bool
```

### C_PlayerInfo.ShouldDisplaySurname

```lua
C_PlayerInfo.ShouldDisplaySurname() -> display: bool
```

## Tables

### MythicPlusRatingMapSummary (Structure)

Specific information about a completed mythic plus run.

- `challengeModeID: number`
- `mapScore: number`
- `bestRunLevel: number`
- `bestRunDurationMS: number`
- `finishedSuccess: bool`

### MythicPlusRatingSummary (Structure)

The current season rating and well as a list of completed mythic plus runs.

- `currentSeasonScore: number`
- `runs: table<MythicPlusRatingMapSummary>`
