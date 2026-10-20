# PvpInfo

Type: System  
Namespace: `C_PvP`  
Environment: All

## Functions

### C_PvP.ArePvpTalentsUnlocked

```lua
C_PvP.ArePvpTalentsUnlocked() -> arePvpTalentsUnlocked: bool
```

### C_PvP.AreTrainingGroundsEnabled

```lua
C_PvP.AreTrainingGroundsEnabled() -> areTrainingGroundsEnabled: bool
```

### C_PvP.CanDisplayDeaths

```lua
C_PvP.CanDisplayDeaths() -> canDisplay: bool
```

### C_PvP.CanDisplayHonorableKills

```lua
C_PvP.CanDisplayHonorableKills() -> canDisplay: bool
```

### C_PvP.CanPlayerUseRatedPVPUI

```lua
C_PvP.CanPlayerUseRatedPVPUI() -> canUse: bool, failureReason: string
```

### C_PvP.CanPlayerUseTrainingGroundsUI

```lua
C_PvP.CanPlayerUseTrainingGroundsUI() -> canUseTrainingGroundsUI: bool, failureReason: string
```

### C_PvP.CanSurrenderArena

```lua
C_PvP.CanSurrenderArena() -> CanSurrenderArena: bool
```

### C_PvP.CanToggleWarMode

```lua
C_PvP.CanToggleWarMode(toggle: bool) -> canTogglePvP: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.CanToggleWarModeInArea

```lua
C_PvP.CanToggleWarModeInArea() -> canTogglePvPInArea: bool
```

### C_PvP.DoesMatchOutcomeAffectRating

```lua
C_PvP.DoesMatchOutcomeAffectRating() -> doesAffect: bool
```

### C_PvP.GetActiveBrawlInfo

```lua
C_PvP.GetActiveBrawlInfo() -> brawlInfo: PvpBrawlInfo?
```

### C_PvP.GetActiveMatchBracket

```lua
C_PvP.GetActiveMatchBracket() -> bracket: number
```

### C_PvP.GetActiveMatchDuration

```lua
C_PvP.GetActiveMatchDuration() -> seconds: time_t
```

### C_PvP.GetActiveMatchState

```lua
C_PvP.GetActiveMatchState() -> state: PvPMatchState
```

### C_PvP.GetActiveMatchWinner

```lua
C_PvP.GetActiveMatchWinner() -> winner: number
```

### C_PvP.GetArenaCrowdControlDuration

```lua
C_PvP.GetArenaCrowdControlDuration(playerToken: UnitToken) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetArenaCrowdControlInfo

```lua
C_PvP.GetArenaCrowdControlInfo(playerToken: UnitToken) -> spellID: number, startTime: number, duration: number
```

Secret: SecretWhenLossOfControlInfoRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetArenaOpponentSpec

```lua
C_PvP.GetArenaOpponentSpec(index: luaIndex) -> specializationID: number, gender: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, Namespace=  

### C_PvP.GetArenaRewards

```lua
C_PvP.GetArenaRewards(teamSize: number) -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetArenaSkirmishRewards

```lua
C_PvP.GetArenaSkirmishRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetAssignedSpecForBattlefieldQueue

```lua
C_PvP.GetAssignedSpecForBattlefieldQueue(queueID: number) -> specializationID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetAvailableBrawlInfo

```lua
C_PvP.GetAvailableBrawlInfo() -> brawlInfo: PvpBrawlInfo?
```

If nil is returned, PVP_BRAWL_INFO_UPDATED event will be sent when the data is ready.

### C_PvP.GetBattlefieldFlagPosition

```lua
C_PvP.GetBattlefieldFlagPosition(flagIndex: luaIndex, uiMapId: number) -> uiPosx: number?, uiPosy: number?, flagTexture: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetBattlefieldVehicleInfo

```lua
C_PvP.GetBattlefieldVehicleInfo(vehicleIndex: luaIndex, uiMapID: number) -> info: BattlefieldVehicleInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetBattlefieldVehicles

```lua
C_PvP.GetBattlefieldVehicles(uiMapID: number) -> vehicles: table<BattlefieldVehicleInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetBattlegroundInfo

```lua
C_PvP.GetBattlegroundInfo(battlegroundIndex: luaIndex) -> battlegroundInfo: BattlegroundInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetBrawlRewards

```lua
C_PvP.GetBrawlRewards(brawlType: BrawlType) -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?, hasWon: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetBrawlSoloRBGMinItemLevel

```lua
C_PvP.GetBrawlSoloRBGMinItemLevel() -> minItemLevel: number
```

### C_PvP.GetCustomVictoryStatID

```lua
C_PvP.GetCustomVictoryStatID() -> statID: number
```

### C_PvP.GetGlobalPvpScalingInfoForSpecID

```lua
C_PvP.GetGlobalPvpScalingInfoForSpecID(specializationID: number) -> pvpScalingData: table<PvpScalingData>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetHonorRewardInfo

```lua
C_PvP.GetHonorRewardInfo(honorLevel: number) -> info: HonorRewardInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetLevelUpBattlegrounds

```lua
C_PvP.GetLevelUpBattlegrounds(level: number) -> battlefields: table<LevelUpBattlegroundInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetMatchPVPStatColumn

```lua
C_PvP.GetMatchPVPStatColumn(pvpStatID: number) -> info: MatchPVPStatColumn?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetMatchPVPStatColumns

```lua
C_PvP.GetMatchPVPStatColumns() -> columns: table<MatchPVPStatColumn>
```

### C_PvP.GetNextHonorLevelForReward

```lua
C_PvP.GetNextHonorLevelForReward(honorLevel: number) -> nextHonorLevelWithReward: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetOutdoorPvPWaitTime

```lua
C_PvP.GetOutdoorPvPWaitTime(uiMapID: number) -> pvpWaitTime: time_t
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetPVPActiveMatchPersonalRatedInfo

```lua
C_PvP.GetPVPActiveMatchPersonalRatedInfo() -> info: PVPPersonalRatedInfo?
```

### C_PvP.GetPVPActiveRatedMatchDeserterPenalty

```lua
C_PvP.GetPVPActiveRatedMatchDeserterPenalty() -> deserterPenalty: RatedMatchDeserterPenalty?
```

### C_PvP.GetPVPSeasonRewardAchievementID

```lua
C_PvP.GetPVPSeasonRewardAchievementID() -> achievementID: number
```

Flags: MayReturnNothing  

### C_PvP.GetPersonalRatedBGBlitzSpecStats

```lua
C_PvP.GetPersonalRatedBGBlitzSpecStats() -> specStats: RatedBGBlitzSpecStats?
```

### C_PvP.GetPersonalRatedSoloShuffleSpecStats

```lua
C_PvP.GetPersonalRatedSoloShuffleSpecStats() -> specStats: RatedSoloShuffleSpecStats?
```

### C_PvP.GetPostMatchCurrencyRewards

```lua
C_PvP.GetPostMatchCurrencyRewards() -> rewards: table<PVPPostMatchCurrencyReward>
```

### C_PvP.GetPostMatchItemRewards

```lua
C_PvP.GetPostMatchItemRewards() -> rewards: table<PVPPostMatchItemReward>
```

### C_PvP.GetPvpTalentsUnlockedLevel

```lua
C_PvP.GetPvpTalentsUnlockedLevel() -> unlockLevel: number
```

### C_PvP.GetPvpTierID

```lua
C_PvP.GetPvpTierID(tierEnum: number, bracketEnum: luaIndex) -> id: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetPvpTierInfo

```lua
C_PvP.GetPvpTierInfo(tierID: number) -> pvpTierInfo: PvpTierInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetRandomBGInfo

```lua
C_PvP.GetRandomBGInfo() -> info: RandomBGInfo
```

### C_PvP.GetRandomBGRewards

```lua
C_PvP.GetRandomBGRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRandomEpicBGInfo

```lua
C_PvP.GetRandomEpicBGInfo() -> info: RandomBGInfo
```

### C_PvP.GetRandomEpicBGRewards

```lua
C_PvP.GetRandomEpicBGRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRandomTrainingGroundArenaRewards

```lua
C_PvP.GetRandomTrainingGroundArenaRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRandomTrainingGroundBGRewards

```lua
C_PvP.GetRandomTrainingGroundBGRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRatedBGRewards

```lua
C_PvP.GetRatedBGRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRatedSoloRBGMinItemLevel

```lua
C_PvP.GetRatedSoloRBGMinItemLevel() -> minItemLevel: number
```

### C_PvP.GetRatedSoloRBGRewards

```lua
C_PvP.GetRatedSoloRBGRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRatedSoloShuffleMinItemLevel

```lua
C_PvP.GetRatedSoloShuffleMinItemLevel() -> minItemLevel: number
```

### C_PvP.GetRatedSoloShuffleRewards

```lua
C_PvP.GetRatedSoloShuffleRewards() -> honor: number, experience: number, itemRewards: table<BattlefieldItemReward>?, currencyRewards: table<BattlefieldCurrencyReward>?, roleShortageBonus: RoleShortageReward?
```

### C_PvP.GetRewardItemLevelsByTierEnum

```lua
C_PvP.GetRewardItemLevelsByTierEnum(pvpTierEnum: number) -> activityItemLevel: number, weeklyItemLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetScoreInfo

```lua
C_PvP.GetScoreInfo(offsetIndex: luaIndex) -> info: PVPScoreInfo?
```

Secret: SecretInActivePvPMatch, SecretArguments=AllowedWhenUntainted  

### C_PvP.GetScoreInfoByPlayerGuid

```lua
C_PvP.GetScoreInfoByPlayerGuid(guid: WOWGUID) -> info: PVPScoreInfo?
```

Secret: SecretInActivePvPMatch, SecretArguments=AllowedWhenUntainted  

### C_PvP.GetSeasonBestInfo

```lua
C_PvP.GetSeasonBestInfo() -> tierID: number, nextTierID: number?
```

### C_PvP.GetSkirmishInfo

```lua
C_PvP.GetSkirmishInfo(pvpBracket: number) -> battlemasterListInfo: BattlemasterListInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PvP.GetSpecialEventBrawlInfo

```lua
C_PvP.GetSpecialEventBrawlInfo() -> brawlInfo: PvpBrawlInfo?
```

### C_PvP.GetTeamInfo

```lua
C_PvP.GetTeamInfo(factionIndex: number) -> info: PVPTeamInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.GetTrainingGrounds

```lua
C_PvP.GetTrainingGrounds() -> trainingGrounds: table<BattlegroundInfo>
```

### C_PvP.GetUIDisplaySeason

```lua
C_PvP.GetUIDisplaySeason() -> uiDisplaySeason: number
```

### C_PvP.GetWarModeRewardBonus

```lua
C_PvP.GetWarModeRewardBonus() -> rewardBonus: number
```

### C_PvP.GetWarModeRewardBonusDefault

```lua
C_PvP.GetWarModeRewardBonusDefault() -> defaultBonus: number
```

### C_PvP.GetWeeklyChestInfo

```lua
C_PvP.GetWeeklyChestInfo() -> rewardAchieved: bool, lastWeekRewardAchieved: bool, lastWeekRewardClaimed: bool, pvpTierMaxFromWins: number
```

### C_PvP.GetZonePVPInfo

```lua
C_PvP.GetZonePVPInfo() -> pvpType: cstring, isSubZonePvP: bool, factionName: cstring?
```

Flags: MayReturnNothing  

### C_PvP.HasArenaSkirmishWinToday

```lua
C_PvP.HasArenaSkirmishWinToday() -> hasArenaSkirmishWinToday: bool
```

### C_PvP.HasMatchStarted

```lua
C_PvP.HasMatchStarted() -> hasStarted: bool
```

Returns true if a match is either active or complete.

### C_PvP.HasRandomTrainingGroundArenaWinToday

```lua
C_PvP.HasRandomTrainingGroundArenaWinToday() -> hasRandomTrainingGroundArenaWinToday: bool
```

### C_PvP.HasRandomTrainingGroundBGWinToday

```lua
C_PvP.HasRandomTrainingGroundBGWinToday() -> hasRandomTrainingGroundBGWinToday: bool
```

### C_PvP.IsActiveBattlefield

```lua
C_PvP.IsActiveBattlefield() -> isActiveBattlefield: bool
```

### C_PvP.IsActiveMatchRegistered

```lua
C_PvP.IsActiveMatchRegistered() -> registered: bool
```

### C_PvP.IsArena

```lua
C_PvP.IsArena() -> isArena: bool
```

### C_PvP.IsBattleground

```lua
C_PvP.IsBattleground() -> isBattleground: bool
```

### C_PvP.IsBattlegroundEnlistmentBonusActive

```lua
C_PvP.IsBattlegroundEnlistmentBonusActive() -> battlegroundActive: bool, brawlActive: bool
```

### C_PvP.IsBrawlSoloRBG

```lua
C_PvP.IsBrawlSoloRBG() -> isBrawlSoloRBG: bool
```

### C_PvP.IsBrawlSoloShuffle

```lua
C_PvP.IsBrawlSoloShuffle() -> isBrawlSoloShuffle: bool
```

### C_PvP.IsInBrawl

```lua
C_PvP.IsInBrawl() -> isInBrawl: bool
```

### C_PvP.IsInRatedMatchWithDeserterPenalty

```lua
C_PvP.IsInRatedMatchWithDeserterPenalty() -> isInRatedMatchWithDeserterPenalty: bool
```

### C_PvP.IsMatchActive

```lua
C_PvP.IsMatchActive() -> isActive: bool
```

### C_PvP.IsMatchComplete

```lua
C_PvP.IsMatchComplete() -> isComplete: bool
```

### C_PvP.IsMatchConsideredArena

```lua
C_PvP.IsMatchConsideredArena() -> asArena: bool
```

### C_PvP.IsMatchFactional

```lua
C_PvP.IsMatchFactional() -> isFactional: bool
```

### C_PvP.IsPVPMap

```lua
C_PvP.IsPVPMap() -> isPVPMap: bool
```

### C_PvP.IsRatedArena

```lua
C_PvP.IsRatedArena() -> isRatedArena: bool
```

### C_PvP.IsRatedBattleground

```lua
C_PvP.IsRatedBattleground() -> isRatedBattleground: bool
```

### C_PvP.IsRatedMap

```lua
C_PvP.IsRatedMap() -> isRatedMap: bool
```

### C_PvP.IsRatedSoloRBG

```lua
C_PvP.IsRatedSoloRBG() -> isRatedSoloRBG: bool
```

### C_PvP.IsRatedSoloShuffle

```lua
C_PvP.IsRatedSoloShuffle() -> isRatedSoloShuffle: bool
```

### C_PvP.IsSoloRBG

```lua
C_PvP.IsSoloRBG() -> isSoloRBG: bool
```

### C_PvP.IsSoloShuffle

```lua
C_PvP.IsSoloShuffle() -> isSoloShuffle: bool
```

### C_PvP.IsSubZonePVPPOI

```lua
C_PvP.IsSubZonePVPPOI() -> result: bool
```

### C_PvP.IsTrainingGroundsArena

```lua
C_PvP.IsTrainingGroundsArena(lfgDungeonsID: number) -> isTrainingGroundsArena: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.IsTrainingGroundsBG

```lua
C_PvP.IsTrainingGroundsBG(lfgDungeonsID: number) -> isTrainingGroundsBG: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.IsWarModeActive

```lua
C_PvP.IsWarModeActive() -> warModeActive: bool
```

### C_PvP.IsWarModeDesired

```lua
C_PvP.IsWarModeDesired() -> warModeDesired: bool
```

### C_PvP.IsWarModeFeatureEnabled

```lua
C_PvP.IsWarModeFeatureEnabled() -> warModeEnabled: bool
```

### C_PvP.JoinBattlefield

```lua
C_PvP.JoinBattlefield(battlemasterListId: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PvP.JoinBrawl

```lua
C_PvP.JoinBrawl(isSpecialBrawl: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.JoinRandomTrainingGroundArena

```lua
C_PvP.JoinRandomTrainingGroundArena()
```

### C_PvP.JoinRandomTrainingGroundBG

```lua
C_PvP.JoinRandomTrainingGroundBG()
```

### C_PvP.JoinRatedBGBlitz

```lua
C_PvP.JoinRatedBGBlitz()
```

### C_PvP.JoinTrainingGround

```lua
C_PvP.JoinTrainingGround(trainingGroundID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.RequestCrowdControlSpell

```lua
C_PvP.RequestCrowdControlSpell(playerToken: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.SetPVP

```lua
C_PvP.SetPVP(enablePVP: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PvP.SetWarModeDesired

```lua
C_PvP.SetWarModeDesired(warModeDesired: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PvP.StartSoloRBGWarGameByName

```lua
C_PvP.StartSoloRBGWarGameByName(args: cstring) -> success: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.StartSpectatorSoloRBGWarGame

```lua
C_PvP.StartSpectatorSoloRBGWarGame(opaqueID1: number, opaqueID2: number, specifiedMap: cstring, tournamentRules: bool) -> success: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PvP.TogglePVP

```lua
C_PvP.TogglePVP()
```

Flags: HasRestrictions  

### C_PvP.ToggleWarMode

```lua
C_PvP.ToggleWarMode()
```

Flags: HasRestrictions  

## Events

### ARENA_OPPONENT_UPDATE

Payload: `unitToken: cstring, updateReason: cstring`  
Flags: SynchronousEvent  

### ARENA_PREP_OPPONENT_SPECIALIZATIONS

Payload: `none`  
Flags: SynchronousEvent  

### ARENA_SEASON_WORLD_STATE

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEFIELD_AUTO_QUEUE

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEFIELD_AUTO_QUEUE_EJECT

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEFIELD_QUEUE_TIMEOUT

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEFIELDS_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEFIELDS_SHOW

Payload: `isArena: bool?, battleMasterListID: number?`  
Flags: SynchronousEvent  

### BATTLEGROUND_OBJECTIVES_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### BATTLEGROUND_POINTS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### GDF_SIM_COMPLETE

Payload: `none`  
Flags: SynchronousEvent  

### HONOR_LEVEL_UPDATE

Payload: `isHigherLevel: bool`  
Flags: SynchronousEvent  

### NOTIFY_PVP_AFK_RESULT

Payload: `offender: cstring, numBlackMarksOnOffender: number, numPlayersIHaveReported: number`  
Flags: SynchronousEvent  

### PLAYER_ENTERING_BATTLEGROUND

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_JOINED_PVP_MATCH

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_PVP_FLAG_CHANGED

Payload: `isPvpFlagged: bool`  
Flags: SynchronousEvent  

### POST_MATCH_CURRENCY_REWARD_UPDATE

Payload: `reward: PVPPostMatchCurrencyReward`  
Flags: SynchronousEvent  

### POST_MATCH_ITEM_REWARD_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_BRAWL_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### PVP_MATCH_ACTIVE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_MATCH_COMPLETE

Payload: `winner: number, duration: time_t`  
Flags: SynchronousEvent  

### PVP_MATCH_INACTIVE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_MATCH_STATE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PVP_RATED_STATS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_REWARDS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_ROLE_POPUP_HIDE

Payload: `readyCheckInfo: PvpReadyCheckInfo?`  
Flags: SynchronousEvent  

### PVP_ROLE_POPUP_SHOW

Payload: `readyCheckInfo: PvpReadyCheckInfo`  
Flags: SynchronousEvent  

### PVP_ROLE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PVP_SPECIAL_EVENT_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### PVP_TYPES_ENABLED

Payload: `wargameBattlegrounds: bool, ratedBattlegrounds: bool, ratedArenas: bool, ratedSoloShuffle: bool, ratedBGBlitz: bool`  
Flags: SynchronousEvent  

### PVP_VEHICLE_INFO_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### PVP_WORLDSTATE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PVPQUEUE_ANYWHERE_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### PVPQUEUE_ANYWHERE_UPDATE_AVAILABLE

Payload: `none`  
Flags: SynchronousEvent  

### TRAINING_GROUNDS_ENABLED_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_ACTIVE_BATTLEFIELD

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_BATTLEFIELD_SCORE

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_BATTLEFIELD_STATUS

Payload: `battleFieldIndex: number`  
Flags: SynchronousEvent  

### WAR_MODE_STATUS_UPDATE

Payload: `warModeEnabled: bool`  
Flags: SynchronousEvent  

### WARGAME_INVITE_SENT

Payload: `none`  
Flags: SynchronousEvent  

### WARGAME_REQUEST_RESPONSE

Payload: `responderGUID: WOWGUID, responderName: cstring?, accepted: bool`  
Flags: SynchronousEvent  

### WARGAME_REQUESTED

Payload: `opposingPartyMemberName: cstring, battlegroundName: cstring, timeoutSeconds: time_t, tournamentRules: bool`  
Flags: SynchronousEvent  

### WORLD_PVP_QUEUE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### BrawlType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Battleground | 1 |
| Arena | 2 |
| LFG | 3 |
| SoloShuffle | 4 |
| SoloRbg | 5 |

### PvPMatchState (Enumeration)

| Name | Value |
|---|---|
| Inactive | 0 |
| Waiting | 1 |
| StartUp | 2 |
| Engaged | 3 |
| PostRound | 4 |
| Complete | 5 |

### BattlefieldCurrencyReward (Structure)

- `id: number`
- `quantity: number`

### BattlefieldItemReward (Structure)

- `id: number`
- `name: cstring`
- `texture: fileID`
- `quantity: number`

### BattlefieldRewards (Structure)

- `honor: number`
- `experience: number`
- `itemRewards: table<BattlefieldItemReward>?`
- `currencyRewards: table<BattlefieldCurrencyReward>?`
- `roleShortageBonus: RoleShortageReward?`

### BattlefieldVehicleInfo (Structure)

- `x: number`
- `y: number`
- `name: cstring`
- `isOccupied: bool`
- `atlas: textureAtlas`
- `textureWidth: number`
- `textureHeight: number`
- `facing: number`
- `isPlayer: bool`
- `isAlive: bool`
- `shouldDrawBelowPlayerBlips: bool`

### BattlegroundInfo (Structure)

- `name: cstring`
- `icon: fileID?`
- `gameType: cstring`
- `shortDescription: cstring`
- `longDescription: cstring`
- `mapDescription: cstring`
- `maxPlayers: number`
- `battlegroundID: number?`
- `lfgDungeonID: number?`
- `mapID: number?`
- `isHoliday: bool`
- `isRandom: bool`
- `canEnter: bool`
- `isTrainingGround: bool`

### BattlemasterListInfo (Structure)

- `name: string`
- `matchmakingType: PvPMatchmakingType`
- `minPlayers: number`
- `maxPlayers: number`
- `icon: fileID`
- `longDescription: string`
- `shortDescription: string`

### HonorRewardInfo (Structure)

- `honorLevelName: string`
- `badgeFileDataID: fileID`
- `achievementRewardedID: number`

### LevelUpBattlegroundInfo (Structure)

- `id: number`
- `icon: fileID`
- `name: string`
- `isEpic: bool`

### MatchPVPStatColumn (Structure)

- `pvpStatID: number`
- `columnHeaderID: number`
- `orderIndex: number`
- `name: string`
- `tooltipTitle: string`
- `tooltip: string`

### PvpBrawlInfo (Structure)

- `brawlID: number`
- `name: string`
- `shortDescription: string`
- `longDescription: string`
- `canQueue: bool`
- `minLevel: number`
- `maxLevel: number`
- `groupsAllowed: bool`
- `crossFactionAllowed: bool = false`
- `timeLeftUntilNextChange: number?`
- `brawlType: BrawlType`
- `mapNames: table<string>`
- `includesAllArenas: bool = false`
- `minItemLevel: number = 0`
- `shouldHideRewardIcon: bool = false`

### PVPPersonalRatedInfo (Structure)

- `personalRating: number`
- `bestSeasonRating: number`
- `bestWeeklyRating: number`
- `seasonPlayed: number`
- `seasonWon: number`
- `weeklyPlayed: number`
- `weeklyWon: number`
- `lastWeeksBestRating: number`
- `hasWonBracketToday: bool`
- `tier: number`
- `ranking: number?`
- `roundsSeasonPlayed: number`
- `roundsSeasonWon: number`
- `roundsWeeklyPlayed: number`
- `roundsWeeklyWon: number`

### PVPPostMatchCurrencyReward (Structure)

- `currencyType: number`
- `quantityChanged: number`

### PVPPostMatchItemReward (Structure)

- `type: string`
- `link: string`
- `quantity: number`
- `specID: number`
- `sex: number`
- `isUpgraded: bool`

### PvpReadyCheckInfo (Structure)

- `roles: table<PvpRoleQueueInfo>`
- `numPlayersAccepted: number`
- `numPlayersDeclined: number`
- `totalNumPlayers: number`

### PvpRoleQueueInfo (Structure)

- `role: cstring`
- `totalRole: number`
- `totalAccepted: number`
- `totalDeclined: number`

### PvpScalingData (Structure)

- `scalingDataID: number`
- `specializationID: number`
- `name: cstring`
- `value: number`

### PVPScoreInfo (Structure)

- `name: string`
- `guid: WOWGUID`
- `killingBlows: number`
- `honorableKills: number`
- `deaths: number`
- `honorGained: number`
- `faction: number`
- `raceName: string`
- `gender: number`
- `className: string`
- `classToken: string`
- `damageDone: number`
- `healingDone: number`
- `rating: number`
- `ratingChange: number`
- `prematchMMR: number`
- `mmrChange: number`
- `postmatchMMR: number`
- `talentSpec: string`
- `honorLevel: number`
- `roleAssigned: number`
- `stats: table<PVPStatInfo>`

### PVPStatInfo (Structure)

- `pvpStatID: number`
- `pvpStatValue: number`
- `orderIndex: number`
- `name: string`
- `tooltip: string`
- `iconName: string`

### PVPTeamInfo (Structure)

- `name: string`
- `size: number`
- `rating: number`
- `ratingNew: number`
- `ratingMMR: number`

### PvpTierInfo (Structure)

- `name: string`
- `descendRating: number`
- `ascendRating: number`
- `descendTier: number`
- `ascendTier: number`
- `pvpTierEnum: number`
- `tierIconID: fileID`

### RandomBGInfo (Structure)

- `canQueue: bool`
- `bgID: number`
- `bgIndex: luaIndex`
- `hasRandomWinToday: bool`
- `minLevel: number`
- `maxLevel: number`
- `name: string`

### RatedBGBlitzSpecStats (Structure)

- `weeklyMostPlayedSpecID: number`
- `weeklyMostPlayedSpecGames: number`
- `seasonMostPlayedSpecID: number`
- `seasonMostPlayedSpecGames: number`

### RatedMatchDeserterPenalty (Structure)

- `personalRatingChange: number`
- `queuePenaltySpellID: number`
- `queuePenaltyDuration: number`

### RatedSoloShuffleSpecStats (Structure)

- `weeklyMostPlayedSpecID: number`
- `weeklyMostPlayedSpecRounds: number`
- `seasonMostPlayedSpecID: number`
- `seasonMostPlayedSpecRounds: number`

### RoleShortageReward (Structure)

- `validRoles: table<cstring>`
- `rewardSpellID: number`
- `rewardItemID: number`

### WorldPVPBattlegroundInfo (Structure)

- `bgID: number`
- `name: string`
- `isActive: bool`
- `canQueue: bool`
- `canEnter: bool`
- `startTime: time_t`
- `minLevel: number`
- `maxLevel: number`
