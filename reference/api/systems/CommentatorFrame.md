# CommentatorFrame

Type: System  
Namespace: `C_Commentator`  
Environment: All

## Functions

### C_Commentator.AddPlayerOverrideName

```lua
C_Commentator.AddPlayerOverrideName(playerName: string, overrideName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.AddTrackedDefensiveAuras

```lua
C_Commentator.AddTrackedDefensiveAuras(spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.AddTrackedOffensiveAuras

```lua
C_Commentator.AddTrackedOffensiveAuras(spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.AreTeamsSwapped

```lua
C_Commentator.AreTeamsSwapped() -> teamsAreSwapped: bool
```

### C_Commentator.AssignPlayerToTeam

```lua
C_Commentator.AssignPlayerToTeam(playerName: string, teamName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.AssignPlayersToTeam

```lua
C_Commentator.AssignPlayersToTeam(playerName: table<string>, teamName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.AssignPlayersToTeamInCurrentInstance

```lua
C_Commentator.AssignPlayersToTeamInCurrentInstance(teamIndex: luaIndex, teamName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.CanUseCommentatorCheats

```lua
C_Commentator.CanUseCommentatorCheats() -> canUseCommentatorCheats: bool
```

### C_Commentator.ClearCameraTarget

```lua
C_Commentator.ClearCameraTarget()
```

Flags: RequiresActiveCommentator  

### C_Commentator.ClearFollowTarget

```lua
C_Commentator.ClearFollowTarget()
```

Flags: RequiresActiveCommentator  

### C_Commentator.ClearLookAtTarget

```lua
C_Commentator.ClearLookAtTarget(lookAtIndex: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.EnterInstance

```lua
C_Commentator.EnterInstance()
```

Flags: RequiresCommentator  

### C_Commentator.ExitInstance

```lua
C_Commentator.ExitInstance()
```

Flags: RequiresCommentator  

### C_Commentator.FindSpectatedUnit

```lua
C_Commentator.FindSpectatedUnit(unitToken: UnitToken) -> playerIndex: luaIndex, teamIndex: luaIndex, isPet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.FindTeamNameInCurrentInstance

```lua
C_Commentator.FindTeamNameInCurrentInstance(teamIndex: luaIndex) -> teamName: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.FindTeamNameInDirectory

```lua
C_Commentator.FindTeamNameInDirectory(playerNames: table<string>) -> teamName: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.FlushCommentatorHistory

```lua
C_Commentator.FlushCommentatorHistory()
```

### C_Commentator.FollowPlayer

```lua
C_Commentator.FollowPlayer(factionIndex: luaIndex, playerIndex: luaIndex, forceInstantTransition: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.FollowUnit

```lua
C_Commentator.FollowUnit(token: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.ForceFollowTransition

```lua
C_Commentator.ForceFollowTransition()
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetAdditionalCameraWeight

```lua
C_Commentator.GetAdditionalCameraWeight() -> teamIndex: luaIndex, playerIndex: luaIndex
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetAdditionalCameraWeightByToken

```lua
C_Commentator.GetAdditionalCameraWeightByToken(unitToken: UnitToken) -> weight: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetAllPlayerOverrideNames

```lua
C_Commentator.GetAllPlayerOverrideNames() -> nameEntries: table<NameOverrideEntry>
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetCamera

```lua
C_Commentator.GetCamera() -> xPos: number, yPos: number, zPos: number, yaw: number, pitch: number, roll: number, fov: number
```

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetCameraCollision

```lua
C_Commentator.GetCameraCollision() -> isColliding: bool
```

### C_Commentator.GetCameraPosition

```lua
C_Commentator.GetCameraPosition() -> xPos: number, yPos: number, zPos: number
```

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetCombatEventInfo

```lua
C_Commentator.GetCombatEventInfo()
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetCommentatorHistory

```lua
C_Commentator.GetCommentatorHistory() -> history: CommentatorHistory
```

### C_Commentator.GetCommentatorMatchDataState

```lua
C_Commentator.GetCommentatorMatchDataState() -> state: CommentatorMatchDataState
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetCurrentMapID

```lua
C_Commentator.GetCurrentMapID() -> mapID: number?
```

Flags: RequiresCommentator  

### C_Commentator.GetDampeningPercent

```lua
C_Commentator.GetDampeningPercent() -> percentage: number
```

### C_Commentator.GetDistanceBeforeForcedHorizontalConvergence

```lua
C_Commentator.GetDistanceBeforeForcedHorizontalConvergence() -> distance: number
```

### C_Commentator.GetDurationToForceHorizontalConvergence

```lua
C_Commentator.GetDurationToForceHorizontalConvergence() -> ms: number
```

### C_Commentator.GetExcludeDistance

```lua
C_Commentator.GetExcludeDistance() -> excludeDistance: number
```

### C_Commentator.GetHardlockWeight

```lua
C_Commentator.GetHardlockWeight() -> weight: number
```

### C_Commentator.GetHorizontalAngleThresholdToSmooth

```lua
C_Commentator.GetHorizontalAngleThresholdToSmooth() -> angle: number
```

### C_Commentator.GetIndirectSpellID

```lua
C_Commentator.GetIndirectSpellID(trackedSpellID: number) -> indirectSpellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetInstanceInfo

```lua
C_Commentator.GetInstanceInfo(mapIndex: luaIndex, instanceIndex: luaIndex) -> mapID: number, mapName: string?, status: number, instanceIDLow: number, instanceIDHigh: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresCommentator  

### C_Commentator.GetLookAtLerpAmount

```lua
C_Commentator.GetLookAtLerpAmount() -> amount: number
```

### C_Commentator.GetMapInfo

```lua
C_Commentator.GetMapInfo(mapIndex: luaIndex) -> teamSize: number, minLevel: number, maxLevel: number, numInstances: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresCommentator  

### C_Commentator.GetMatchDuration

```lua
C_Commentator.GetMatchDuration() -> seconds: time_t
```

### C_Commentator.GetMaxNumPlayersPerTeam

```lua
C_Commentator.GetMaxNumPlayersPerTeam() -> maxNumPlayersPerTeam: number
```

### C_Commentator.GetMaxNumTeams

```lua
C_Commentator.GetMaxNumTeams() -> maxNumTeams: number
```

### C_Commentator.GetMode

```lua
C_Commentator.GetMode() -> commentatorMode: number
```

### C_Commentator.GetMsToHoldForHorizontalMovement

```lua
C_Commentator.GetMsToHoldForHorizontalMovement() -> ms: number
```

### C_Commentator.GetMsToHoldForVerticalMovement

```lua
C_Commentator.GetMsToHoldForVerticalMovement() -> ms: number
```

### C_Commentator.GetMsToSmoothHorizontalChange

```lua
C_Commentator.GetMsToSmoothHorizontalChange() -> ms: number
```

### C_Commentator.GetMsToSmoothVerticalChange

```lua
C_Commentator.GetMsToSmoothVerticalChange() -> ms: number
```

### C_Commentator.GetNumMaps

```lua
C_Commentator.GetNumMaps() -> numMaps: number
```

### C_Commentator.GetNumPlayers

```lua
C_Commentator.GetNumPlayers(factionIndex: luaIndex) -> numPlayers: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetOrCreateSeries

```lua
C_Commentator.GetOrCreateSeries(teamName1: string, teamName2: string) -> data: CommentatorSeries
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.GetPlayerAuraInfo

```lua
C_Commentator.GetPlayerAuraInfo(teamIndex: luaIndex, playerIndex: luaIndex, spellID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerAuraInfoByUnit

```lua
C_Commentator.GetPlayerAuraInfoByUnit(token: UnitToken, spellID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerCooldownInfo

```lua
C_Commentator.GetPlayerCooldownInfo(teamIndex: luaIndex, playerIndex: luaIndex, spellID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerCooldownInfoByUnit

```lua
C_Commentator.GetPlayerCooldownInfoByUnit(unitToken: UnitToken, spellID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerCrowdControlInfo

```lua
C_Commentator.GetPlayerCrowdControlInfo(teamIndex: luaIndex, playerIndex: luaIndex) -> spellID: number, expiration: number, duration: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerCrowdControlInfoByUnit

```lua
C_Commentator.GetPlayerCrowdControlInfoByUnit(token: UnitToken) -> spellID: number, expiration: number, duration: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerData

```lua
C_Commentator.GetPlayerData(teamIndex: luaIndex, playerIndex: luaIndex) -> info: CommentatorPlayerData?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetPlayerFlagInfo

```lua
C_Commentator.GetPlayerFlagInfo(teamIndex: luaIndex, playerIndex: luaIndex) -> hasFlag: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetPlayerFlagInfoByUnit

```lua
C_Commentator.GetPlayerFlagInfoByUnit(unitToken: UnitToken) -> hasFlag: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetPlayerItemCooldownInfo

```lua
C_Commentator.GetPlayerItemCooldownInfo(teamIndex: luaIndex, playerIndex: luaIndex, itemID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerItemCooldownInfoByUnit

```lua
C_Commentator.GetPlayerItemCooldownInfoByUnit(unitToken: UnitToken, itemID: number) -> startTime: number, duration: number, enable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerOverrideName

```lua
C_Commentator.GetPlayerOverrideName(originalName: string) -> overrideName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Commentator.GetPlayerSpellCharges

```lua
C_Commentator.GetPlayerSpellCharges(teamIndex: luaIndex, playerIndex: luaIndex, spellID: number) -> charges: number, maxCharges: number, startTime: number, duration: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPlayerSpellChargesByUnit

```lua
C_Commentator.GetPlayerSpellChargesByUnit(unitToken: UnitToken, spellID: number) -> charges: number, maxCharges: number, startTime: number, duration: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresActiveCommentator  

### C_Commentator.GetPositionLerpAmount

```lua
C_Commentator.GetPositionLerpAmount() -> amount: number
```

### C_Commentator.GetSmoothFollowTransitioning

```lua
C_Commentator.GetSmoothFollowTransitioning() -> enabled: bool
```

Flags: RequiresActiveCommentator  

### C_Commentator.GetSoftlockWeight

```lua
C_Commentator.GetSoftlockWeight() -> weight: number
```

### C_Commentator.GetSpeedFactor

```lua
C_Commentator.GetSpeedFactor() -> factor: number
```

### C_Commentator.GetStartLocation

```lua
C_Commentator.GetStartLocation(mapID: number) -> pos: vector3
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Commentator.GetTeamColor

```lua
C_Commentator.GetTeamColor(teamIndex: luaIndex) -> color: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.GetTeamColorByUnit

```lua
C_Commentator.GetTeamColorByUnit(unitToken: UnitToken) -> color: colorRGB
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.GetTimeLeftInMatch

```lua
C_Commentator.GetTimeLeftInMatch() -> timeLeft: number?
```

### C_Commentator.GetTrackedSpellID

```lua
C_Commentator.GetTrackedSpellID(indirectSpellID: number) -> trackedSpellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetTrackedSpells

```lua
C_Commentator.GetTrackedSpells(teamIndex: luaIndex, playerIndex: luaIndex, category: TrackedSpellCategory) -> spells: table<number>?, result: TrackedSpellsResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetTrackedSpellsByUnit

```lua
C_Commentator.GetTrackedSpellsByUnit(unitToken: UnitToken, category: TrackedSpellCategory) -> spells: table<number>?, result: TrackedSpellsResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetUnitData

```lua
C_Commentator.GetUnitData(unitToken: UnitToken) -> data: CommentatorUnitData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.GetWargameInfo

```lua
C_Commentator.GetWargameInfo(listID: number) -> name: string, minPlayers: number, maxPlayers: number, isArena: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresCommentator  

### C_Commentator.HasTrackedAuras

```lua
C_Commentator.HasTrackedAuras(token: UnitToken) -> hasOffensiveAura: bool, hasDefensiveAura: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.IsSmartCameraLocked

```lua
C_Commentator.IsSmartCameraLocked() -> isSmartCameraLocked: bool
```

### C_Commentator.IsSpectating

```lua
C_Commentator.IsSpectating() -> isSpectating: bool
```

### C_Commentator.IsTrackedDefensiveAura

```lua
C_Commentator.IsTrackedDefensiveAura(spellID: number) -> isDefensiveTrigger: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.IsTrackedOffensiveAura

```lua
C_Commentator.IsTrackedOffensiveAura(spellID: number) -> isOffensiveTrigger: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.IsTrackedSpell

```lua
C_Commentator.IsTrackedSpell(teamIndex: luaIndex, playerIndex: luaIndex, spellID: number, category: TrackedSpellCategory) -> isTracked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.IsTrackedSpellByUnit

```lua
C_Commentator.IsTrackedSpellByUnit(unitToken: UnitToken, spellID: number, category: TrackedSpellCategory) -> isTracked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.IsUsingSmartCamera

```lua
C_Commentator.IsUsingSmartCamera() -> isUsingSmartCamera: bool
```

### C_Commentator.LookAtPlayer

```lua
C_Commentator.LookAtPlayer(factionIndex: luaIndex, playerIndex: luaIndex, lookAtIndex: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.RemoveAllOverrideNames

```lua
C_Commentator.RemoveAllOverrideNames()
```

### C_Commentator.RemovePlayerOverrideName

```lua
C_Commentator.RemovePlayerOverrideName(originalPlayerName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.RequestPlayerCooldownInfo

```lua
C_Commentator.RequestPlayerCooldownInfo(teamIndex: luaIndex, playerIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.ResetFoVTarget

```lua
C_Commentator.ResetFoVTarget()
```

### C_Commentator.ResetSeriesScores

```lua
C_Commentator.ResetSeriesScores(teamName1: string, teamName2: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.ResetSettings

```lua
C_Commentator.ResetSettings()
```

### C_Commentator.ResetTrackedAuras

```lua
C_Commentator.ResetTrackedAuras()
```

Flags: RequiresActiveCommentator  

### C_Commentator.SendAddonMessage

```lua
C_Commentator.SendAddonMessage(prefix: cstring, message: cstring, chatType: cstring?, target: cstring?) -> result: SendAddonMessageResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Works the same as C_ChatInfo.SendAddonMessage but accepts secrets and is only allowed when outgoing addon comms are allowed (i.e. on tournament realms)

### C_Commentator.SendAddonMessageLogged

```lua
C_Commentator.SendAddonMessageLogged(prefix: cstring, message: cstring, chatType: cstring?, target: cstring?) -> result: SendAddonMessageResult?
```

Secret: SecretArguments=AllowedWhenUntainted  

Works the same as C_ChatInfo.SendAddonMessageLogged but accepts secrets and is only allowed when outgoing addon comms are allowed (i.e. on tournament realms)

### C_Commentator.SetAdditionalCameraWeight

```lua
C_Commentator.SetAdditionalCameraWeight(teamIndex: luaIndex, playerIndex: luaIndex, weight: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetAdditionalCameraWeightByToken

```lua
C_Commentator.SetAdditionalCameraWeightByToken(unitToken: UnitToken, weight: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetBlocklistedAuras

```lua
C_Commentator.SetBlocklistedAuras(spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetBlocklistedCooldowns

```lua
C_Commentator.SetBlocklistedCooldowns(specID: number, spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetBlocklistedItemCooldowns

```lua
C_Commentator.SetBlocklistedItemCooldowns(itemIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetCamera

```lua
C_Commentator.SetCamera(xPos: number, yPos: number, zPos: number, yaw: number, pitch: number, roll: number, fov: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetCameraCollision

```lua
C_Commentator.SetCameraCollision(collide: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetCameraPosition

```lua
C_Commentator.SetCameraPosition(xPos: number, yPos: number, zPos: number, snapToLocation: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetCheatsEnabled

```lua
C_Commentator.SetCheatsEnabled(enableCheats: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetCommentatorHistory

```lua
C_Commentator.SetCommentatorHistory(history: CommentatorHistory)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetDistanceBeforeForcedHorizontalConvergence

```lua
C_Commentator.SetDistanceBeforeForcedHorizontalConvergence(distance: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetDurationToForceHorizontalConvergence

```lua
C_Commentator.SetDurationToForceHorizontalConvergence(ms: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetExcludeDistance

```lua
C_Commentator.SetExcludeDistance(excludeDistance: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetFollowCameraSpeeds

```lua
C_Commentator.SetFollowCameraSpeeds(elasticSpeed: number, minSpeed: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetHardlockWeight

```lua
C_Commentator.SetHardlockWeight(weight: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetHorizontalAngleThresholdToSmooth

```lua
C_Commentator.SetHorizontalAngleThresholdToSmooth(angle: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetLookAtLerpAmount

```lua
C_Commentator.SetLookAtLerpAmount(amount: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMapAndInstanceIndex

```lua
C_Commentator.SetMapAndInstanceIndex(mapIndex: luaIndex, instanceIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresCommentator  

### C_Commentator.SetMouseDisabled

```lua
C_Commentator.SetMouseDisabled(disabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMoveSpeed

```lua
C_Commentator.SetMoveSpeed(newSpeed: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMsToHoldForHorizontalMovement

```lua
C_Commentator.SetMsToHoldForHorizontalMovement(ms: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMsToHoldForVerticalMovement

```lua
C_Commentator.SetMsToHoldForVerticalMovement(ms: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMsToSmoothHorizontalChange

```lua
C_Commentator.SetMsToSmoothHorizontalChange(ms: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetMsToSmoothVerticalChange

```lua
C_Commentator.SetMsToSmoothVerticalChange(ms: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetPositionLerpAmount

```lua
C_Commentator.SetPositionLerpAmount(amount: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetRequestedDebuffCooldowns

```lua
C_Commentator.SetRequestedDebuffCooldowns(specID: number, spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetRequestedDefensiveCooldowns

```lua
C_Commentator.SetRequestedDefensiveCooldowns(specID: number, spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetRequestedItemCooldowns

```lua
C_Commentator.SetRequestedItemCooldowns(itemIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetRequestedOffensiveCooldowns

```lua
C_Commentator.SetRequestedOffensiveCooldowns(specID: number, spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetSeriesScore

```lua
C_Commentator.SetSeriesScore(teamName1: string, teamName2: string, scoringTeamName: string, score: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetSeriesScores

```lua
C_Commentator.SetSeriesScores(teamName1: string, teamName2: string, score1: number, score2: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetSmartCameraLocked

```lua
C_Commentator.SetSmartCameraLocked(locked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetSmoothFollowTransitioning

```lua
C_Commentator.SetSmoothFollowTransitioning(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetSoftlockWeight

```lua
C_Commentator.SetSoftlockWeight(weight: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetSpeedFactor

```lua
C_Commentator.SetSpeedFactor(factor: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SetTargetHeightOffset

```lua
C_Commentator.SetTargetHeightOffset(offset: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresActiveCommentator  

### C_Commentator.SetUseSmartCamera

```lua
C_Commentator.SetUseSmartCamera(useSmartCamera: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.SnapCameraLookAtPoint

```lua
C_Commentator.SnapCameraLookAtPoint()
```

Flags: RequiresActiveCommentator  

### C_Commentator.SpellUsesItemCharges

```lua
C_Commentator.SpellUsesItemCharges(spellID: number) -> spellUsesItemCharges: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.StartWargame

```lua
C_Commentator.StartWargame(listID: number, teamSize: number, tournamentRules: bool, teamOneCaptain: string, teamTwoCaptain: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresCommentator  

### C_Commentator.SwapTeamSides

```lua
C_Commentator.SwapTeamSides()
```

### C_Commentator.ToggleCheats

```lua
C_Commentator.ToggleCheats()
```

### C_Commentator.UpdateMapInfo

```lua
C_Commentator.UpdateMapInfo(targetPlayer: string?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresCommentator  

### C_Commentator.UpdatePlayerInfo

```lua
C_Commentator.UpdatePlayerInfo()
```

Flags: RequiresCommentator  

### C_Commentator.ZoomIn

```lua
C_Commentator.ZoomIn()
```

### C_Commentator.ZoomIn_Position

```lua
C_Commentator.ZoomIn_Position(zoomAmount: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Commentator.ZoomOut

```lua
C_Commentator.ZoomOut()
```

### C_Commentator.ZoomOut_Position

```lua
C_Commentator.ZoomOut_Position(zoomAmount: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### COMMENTATOR_COMBAT_EVENT

Payload: `none`  
Flags: SynchronousEvent  

### COMMENTATOR_ENTER_WORLD

Payload: `none`  
Flags: SynchronousEvent  

### COMMENTATOR_HISTORY_FLUSHED

Payload: `none`  
Flags: SynchronousEvent  

### COMMENTATOR_IMMEDIATE_FOV_UPDATE

Payload: `fov: number`  
Flags: SynchronousEvent  

### COMMENTATOR_MAP_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### COMMENTATOR_PLAYER_NAME_OVERRIDE_UPDATE

Payload: `nameToOverride: cstring, overrideName: cstring?`  
Flags: SynchronousEvent  

### COMMENTATOR_PLAYER_UPDATE

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### COMMENTATOR_RESET_SETTINGS

Payload: `none`  
Flags: SynchronousEvent  

### COMMENTATOR_TEAM_NAME_UPDATE

Payload: `teamName: string`  
Flags: SynchronousEvent  

### COMMENTATOR_TEAMS_SWAPPED

Payload: `swapped: bool`  
Flags: SynchronousEvent  

## Tables

### TrackedSpellsResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| PlayerNotFound | 1 |
| NoCooldownInfo | 2 |
| MismatchedCooldownInfo | 3 |

### CommentatorHistory (Structure)

- `series: table<CommentatorSeries>`
- `teamDirectory: table<CommentatorTeamDirectoryEntry>`
- `overrideNameDirectory: table<CommentatorOverrideNameEntry>`

### CommentatorMatchDataState (Structure)

- `receivedPlayerInfo: bool`
- `setInstancePlayers: bool`
- `requestedCooldownInfo: bool`
- `requestedPlayerCooldowns: table<TeamPlayerRequestedCooldownInfo>`

### CommentatorOverrideNameEntry (Structure)

- `originalName: string`
- `newName: string`

### CommentatorPlayerData (Structure)

- `unitToken: string`
- `name: string`
- `faction: number`
- `specialization: number`
- `damageDone: number`
- `damageTaken: number`
- `healingDone: number`
- `healingTaken: number`
- `kills: number`
- `deaths: number`
- `soloShuffleRoundWins: number`
- `soloShuffleRoundLosses: number`

### CommentatorSeries (Structure)

- `teams: table<CommentatorSeriesTeam>`

### CommentatorSeriesTeam (Structure)

- `name: string`
- `score: number`

### CommentatorTeamDirectoryEntry (Structure)

- `playerName: string`
- `teamName: string`

### CommentatorTrackedItemCooldown (Structure)

- `spellID: number`
- `category: TrackedSpellCategory`

### CommentatorUnitData (Structure)

- `healthMax: number`
- `health: number`
- `absorbTotal: number`
- `isDeadOrGhost: bool`
- `isFeignDeath: bool`
- `powerTypeToken: string`
- `power: number`
- `powerMax: number`

### NameOverrideEntry (Structure)

- `originalName: string`
- `overrideName: string`

### TeamPlayerRequestedCooldownInfo (Structure)

- `teamIndex: number`
- `playerIndex: number`
- `cooldownsRequested: number`
