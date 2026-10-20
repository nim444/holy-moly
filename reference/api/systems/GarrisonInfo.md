# GarrisonInfo

Type: System  
Namespace: `C_Garrison`  
Environment: All

## Functions

### C_Garrison.AddFollowerToMission

```lua
C_Garrison.AddFollowerToMission(missionID: number, followerID: GarrisonFollower, boardIndex: number?) -> followerAdded: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetAutoCombatDamageClassValues

```lua
C_Garrison.GetAutoCombatDamageClassValues() -> damageClassStrings: table<AutoCombatDamageClassString>
```

### C_Garrison.GetAutoMissionBoardState

```lua
C_Garrison.GetAutoMissionBoardState(missionID: number) -> targetInfo: table<AutoMissionTargetingInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetAutoMissionEnvironmentEffect

```lua
C_Garrison.GetAutoMissionEnvironmentEffect(missionID: number) -> autoMissionEnvEffect: AutoMissionEnvironmentEffect?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetAutoMissionTargetingInfo

```lua
C_Garrison.GetAutoMissionTargetingInfo(missionID: number, followerID: GarrisonFollower, casterBoardIndex: number) -> targetInfo: table<AutoMissionTargetingInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetAutoMissionTargetingInfoForSpell

```lua
C_Garrison.GetAutoMissionTargetingInfoForSpell(missionID: number, autoCombatSpellID: number, casterBoardIndex: number) -> targetInfo: table<AutoMissionTargetingInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetAutoTroops

```lua
C_Garrison.GetAutoTroops(followerType: number) -> autoTroopInfo: table<AutoCombatTroopInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetCombatLogSpellInfo

```lua
C_Garrison.GetCombatLogSpellInfo(autoCombatSpellID: number) -> spellInfo: AutoCombatSpellInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetCurrentCypherEquipmentLevel

```lua
C_Garrison.GetCurrentCypherEquipmentLevel() -> equipmentLevel: number
```

### C_Garrison.GetCurrentGarrTalentTreeFriendshipFactionID

```lua
C_Garrison.GetCurrentGarrTalentTreeFriendshipFactionID() -> currentGarrTalentTreeFriendshipFactionID: number?
```

### C_Garrison.GetCurrentGarrTalentTreeID

```lua
C_Garrison.GetCurrentGarrTalentTreeID() -> currentGarrTalentTreeID: number?
```

### C_Garrison.GetCyphersToNextEquipmentLevel

```lua
C_Garrison.GetCyphersToNextEquipmentLevel() -> cyphersToNext: number?
```

### C_Garrison.GetFollowerAutoCombatSpells

```lua
C_Garrison.GetFollowerAutoCombatSpells(garrFollowerID: GarrisonFollower, followerLevel: number) -> autoCombatSpells: table<AutoCombatSpellInfo>, autoCombatAutoAttack: AutoCombatSpellInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Garrison.GetFollowerAutoCombatStats

```lua
C_Garrison.GetFollowerAutoCombatStats(garrFollowerID: GarrisonFollower) -> autoCombatInfo: FollowerAutoCombatStatsInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetFollowerMissionCompleteInfo

```lua
C_Garrison.GetFollowerMissionCompleteInfo(followerID: GarrisonFollower) -> followerMissionCompleteInfo: FollowerMissionCompleteInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetGarrisonPlotsInstancesForMap

```lua
C_Garrison.GetGarrisonPlotsInstancesForMap(uiMapID: number) -> garrisonPlotInstances: table<GarrisonPlotInstanceMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetGarrisonTalentTreeCurrencyTypes

```lua
C_Garrison.GetGarrisonTalentTreeCurrencyTypes(garrTalentTreeID: number) -> garrTalentTreeCurrencyType: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetGarrisonTalentTreeType

```lua
C_Garrison.GetGarrisonTalentTreeType(garrTalentTreeID: number) -> garrTalentTreeType: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetMaxCypherEquipmentLevel

```lua
C_Garrison.GetMaxCypherEquipmentLevel() -> maxEquipmentLevel: number
```

### C_Garrison.GetMissionCompleteEncounters

```lua
C_Garrison.GetMissionCompleteEncounters(missionID: number) -> encounters: table<GarrisonEnemyEncounterInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetMissionDeploymentInfo

```lua
C_Garrison.GetMissionDeploymentInfo(missionID: number) -> missionDeploymentInfo: MissionDeploymentInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetMissionEncounterIconInfo

```lua
C_Garrison.GetMissionEncounterIconInfo(missionID: number) -> missionEncounterIconInfo: MissionEncounterIconInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentInfo

```lua
C_Garrison.GetTalentInfo(talentID: number) -> info: GarrisonTalentInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentPointsSpentInTalentTree

```lua
C_Garrison.GetTalentPointsSpentInTalentTree(garrTalentTreeID: number) -> talentPoints: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentTreeIDsByClassID

```lua
C_Garrison.GetTalentTreeIDsByClassID(garrType: number, classID: number) -> treeIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Garrison.GetTalentTreeInfo

```lua
C_Garrison.GetTalentTreeInfo(treeID: number) -> info: GarrisonTalentTreeInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentTreeResetInfo

```lua
C_Garrison.GetTalentTreeResetInfo(garrTalentTreeID: number) -> goldCost: number, currencyCosts: table<GarrisonTalentCurrencyCostInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentTreeTalentPointResearchInfo

```lua
C_Garrison.GetTalentTreeTalentPointResearchInfo(garrTalentID: number, researchRank: number, garrTalentTreeID: number, talentPointIndex: number, isRespec: bool) -> goldCost: number, currencyCosts: table<GarrisonTalentCurrencyCostInfo>, durationSecs: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.GetTalentUnlockWorldQuest

```lua
C_Garrison.GetTalentUnlockWorldQuest(talentID: number) -> worldQuestID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Garrison.HasAdventures

```lua
C_Garrison.HasAdventures() -> hasAdventures: bool
```

### C_Garrison.IsAtGarrisonMissionNPC

```lua
C_Garrison.IsAtGarrisonMissionNPC() -> atGarrisonMissionNPC: bool
```

### C_Garrison.IsEnvironmentCountered

```lua
C_Garrison.IsEnvironmentCountered(missionID: number) -> environmentCountered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.IsFollowerOnCompletedMission

```lua
C_Garrison.IsFollowerOnCompletedMission(followerID: GarrisonFollower) -> followerOnCompletedMission: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.IsLandingPageMinimapButtonVisible

```lua
C_Garrison.IsLandingPageMinimapButtonVisible(garrType: number) -> isLandingPageMinimapButtonVisible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.IsTalentConditionMet

```lua
C_Garrison.IsTalentConditionMet(talentID: number) -> isMet: bool, failureString: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.RegenerateCombatLog

```lua
C_Garrison.RegenerateCombatLog(missionID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.RemoveFollowerFromMission

```lua
C_Garrison.RemoveFollowerFromMission(missionID: number, followerID: GarrisonFollower, boardIndex: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.RushHealAllFollowers

```lua
C_Garrison.RushHealAllFollowers(followerType: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.RushHealFollower

```lua
C_Garrison.RushHealFollower(garrFollowerID: GarrisonFollower)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Garrison.SetAutoCombatSpellFastForward

```lua
C_Garrison.SetAutoCombatSpellFastForward(state: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### GARRISON_ARCHITECT_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_ARCHITECT_OPENED

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_ACTIVATABLE

Payload: `buildingName: cstring, garrisonType: number`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_ACTIVATED

Payload: `garrisonPlotInstanceID: number, garrisonBuildingID: number`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_LIST_UPDATE

Payload: `categoryID: number`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_PLACED

Payload: `garrisonPlotInstanceID: number, newPlacement: bool`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_REMOVED

Payload: `garrPlotInstanceID: number, garrBuildingID: number`  
Flags: SynchronousEvent  

### GARRISON_BUILDING_UPDATE

Payload: `garrisonBuildingID: number, garrPlotInstanceID: number?`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_ADDED

Payload: `followerDbID: GarrisonFollower, followerName: cstring, followerClassName: cstring, followerLevel: number, followerQuality: number, isUpgraded: bool, textureKit: textureKit, followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_CATEGORIES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_DURABILITY_CHANGED

Payload: `garrFollowerTypeID: number, followerDbID: GarrisonFollower, followerDurability: number`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_HEALED

Payload: `followerID: GarrisonFollower`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_LIST_UPDATE

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_REMOVED

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_UPGRADED

Payload: `followerDbID: GarrisonFollower`  
Flags: SynchronousEvent  

### GARRISON_FOLLOWER_XP_CHANGED

Payload: `garrFollowerTypeID: number, followerDbID: GarrisonFollower, xpChange: number, oldFollowerXp: number, oldFollowerLevel: number, oldFollowerQuality: number`  
Flags: SynchronousEvent  

### GARRISON_HIDE_LANDING_PAGE

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_INVASION_AVAILABLE

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_INVASION_UNAVAILABLE

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_LANDINGPAGE_SHIPMENTS

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### GARRISON_MISSION_AREA_BONUS_ADDED

Payload: `garrisonMissonBonusAbilityID: number`  
Flags: SynchronousEvent  

### GARRISON_MISSION_BONUS_ROLL_COMPLETE

Payload: `missionID: number, success: bool`  
Flags: SynchronousEvent  

### GARRISON_MISSION_COMPLETE_RESPONSE

Payload: `missionID: number, canComplete: bool, success: bool, bonusRollSuccess: bool, followerDeaths: table<GarrisonFollowerDeathInfo>, autoCombatResult: AutoCombatResult?`  
Flags: SynchronousEvent  

### GARRISON_MISSION_FINISHED

Payload: `followerTypeID: number, missionID: number`  
Flags: SynchronousEvent  

### GARRISON_MISSION_LIST_UPDATE

Payload: `garrFollowerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_MISSION_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_MISSION_NPC_OPENED

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_MISSION_REWARD_INFO

Payload: `missionID: number, followerDbID: GarrisonFollower`  
Flags: SynchronousEvent  

### GARRISON_MISSION_STARTED

Payload: `garrFollowerTypeID: number, missionID: number`  
Flags: SynchronousEvent  

### GARRISON_MONUMENT_CLOSE_UI

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_MONUMENT_LIST_LOADED

Payload: `success: bool`  
Flags: SynchronousEvent  

### GARRISON_MONUMENT_REPLACED

Payload: `success: bool`  
Flags: SynchronousEvent  

### GARRISON_MONUMENT_SELECTED_TROPHY_ID_LOADED

Payload: `success: bool`  
Flags: SynchronousEvent  

### GARRISON_MONUMENT_SHOW_UI

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_RANDOM_MISSION_ADDED

Payload: `followerTypeID: number, missionID: number`  
Flags: SynchronousEvent  

### GARRISON_RECALL_PORTAL_LAST_USED_TIME

Payload: `success: bool, recallPortalLastUsedTime: number`  
Flags: SynchronousEvent  

### GARRISON_RECALL_PORTAL_USED

Payload: `success: bool`  
Flags: SynchronousEvent  

### GARRISON_RECRUIT_FOLLOWER_RESULT

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_RECRUITMENT_FOLLOWERS_GENERATED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_RECRUITMENT_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_RECRUITMENT_NPC_OPENED

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_RECRUITMENT_READY

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_SHIPMENT_RECEIVED

Payload: `none`  
Flags: UniqueEvent  

### GARRISON_SHIPYARD_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_SHIPYARD_NPC_OPENED

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_SHOW_LANDING_PAGE

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_SPEC_GROUP_UPDATED

Payload: `garrTypeID: number, specID: number`  
Flags: SynchronousEvent  

### GARRISON_SPEC_GROUPS_CLEARED

Payload: `garrTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_TALENT_COMPLETE

Payload: `garrTypeID: number, doAlert: bool`  
Flags: SynchronousEvent  

### GARRISON_TALENT_EVENT_UPDATE

Payload: `eventType: number, eventID: number`  
Flags: SynchronousEvent  

### GARRISON_TALENT_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_TALENT_NPC_OPENED

Payload: `garrisonTypeID: number, garrisonTalentTreeID: number`  
Flags: SynchronousEvent  

### GARRISON_TALENT_RESEARCH_STARTED

Payload: `garrTypeID: number, garrisonTalentTreeID: number, garrTalentID: number`  
Flags: SynchronousEvent  

### GARRISON_TALENT_UNLOCKS_RESULT

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_TALENT_UPDATE

Payload: `garrTypeID: number`  
Flags: SynchronousEvent  

### GARRISON_TRADESKILL_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### GARRISON_UPGRADEABLE_RESULT

Payload: `garrisonUpgradeable: bool`  
Flags: SynchronousEvent  

### GARRISON_USE_PARTY_GARRISON_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### SHIPMENT_CRAFTER_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### SHIPMENT_CRAFTER_INFO

Payload: `success: number, shipmentCount: number, maxShipments: number, ownedShipments: number, plotInstanceID: number`  
Flags: SynchronousEvent  

### SHIPMENT_CRAFTER_OPENED

Payload: `charShipmentContainerID: number`  
Flags: SynchronousEvent  

### SHIPMENT_CRAFTER_REAGENT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SHIPMENT_UPDATE

Payload: `shipmentStarted: bool?, hasAttachedFollower: bool?`  
Flags: SynchronousEvent  

## Tables

### AutoCombatDamageClassString (Structure)

- `damageClassValue: number`
- `locString: cstring`

### AutoCombatResult (Structure)

- `winner: bool`
- `combatLog: table<AutoMissionRound>`

### AutoCombatSpellInfo (Structure)

- `autoCombatSpellID: number`
- `name: cstring`
- `description: string`
- `cooldown: number`
- `duration: number`
- `schoolMask: number`
- `previewMask: number`
- `icon: fileID`
- `spellTutorialFlag: number`
- `hasThornsEffect: bool`

### AutoCombatTroopInfo (Structure)

- `name: cstring`
- `followerID: GarrisonFollower`
- `garrFollowerID: GarrisonFollower`
- `followerTypeID: number`
- `displayIDs: table<FollowerDisplayID>`
- `level: number`
- `quality: number`
- `levelXP: number`
- `maxXP: number`
- `height: number`
- `scale: number`
- `displayScale: number?`
- `displayHeight: number?`
- `classSpec: number?`
- `className: string?`
- `flavorText: string?`
- `classAtlas: textureAtlas`
- `portraitIconID: fileID`
- `textureKit: textureKit`
- `isTroop: bool`
- `raceID: number`
- `health: number`
- `maxHealth: number`
- `role: number`
- `isAutoTroop: bool`
- `isSoulbind: bool`
- `isCollected: bool`
- `autoCombatStats: FollowerAutoCombatStatsInfo`

### AutoMissionCombatEventInfo (Structure)

- `boardIndex: number`
- `oldHealth: number`
- `newHealth: number`
- `maxHealth: number`
- `points: number?`

### AutoMissionEnvironmentEffect (Structure)

- `name: string`
- `autoCombatSpellInfo: AutoCombatSpellInfo`

### AutoMissionEvent (Structure)

- `type: number`
- `spellID: number`
- `schoolMask: number`
- `effectIndex: number`
- `casterBoardIndex: number`
- `auraType: number`
- `targetInfo: table<AutoMissionCombatEventInfo>`

### AutoMissionRound (Structure)

- `events: table<AutoMissionEvent>`

### AutoMissionTargetingInfo (Structure)

- `targetIndex: number`
- `previewType: number`
- `spellID: number`
- `effectIndex: number`

### FollowerAutoCombatStatsInfo (Structure)

- `currentHealth: number`
- `maxHealth: number`
- `attack: number`
- `healingTimestamp: time_t`
- `healCost: number`
- `minutesHealingRemaining: number`

### FollowerDisplayID (Structure)

- `id: number`
- `followerPageScale: number`
- `showWeapon: bool`

### FollowerMissionCompleteInfo (Structure)

- `name: cstring`
- `displayIDs: table<FollowerDisplayID>`
- `level: number`
- `quality: number`
- `currentXP: number`
- `maxXP: number`
- `height: number`
- `scale: number`
- `movementType: number?`
- `impactDelay: number?`
- `castID: number?`
- `castSoundID: number?`
- `impactID: number?`
- `impactSoundID: number?`
- `targetImpactID: number?`
- `targetImpactSoundID: number?`
- `className: string?`
- `classAtlas: textureAtlas`
- `portraitIconID: fileID`
- `textureKit: textureKit`
- `isTroop: bool`
- `boardIndex: number`
- `health: number`
- `maxHealth: number`
- `role: number`

### GarrisonAbilityCounterInfo (Structure)

- `id: number`
- `icon: fileID`
- `name: cstring`
- `factor: number`
- `description: cstring`

### GarrisonAbilityInfo (Structure)

- `id: number`
- `name: cstring`
- `description: string`
- `icon: fileID`
- `isTrait: bool`
- `isSpecialization: bool`
- `temporary: bool`
- `category: string?`
- `counters: table<GarrisonAbilityCounterInfo>`
- `isEmptySlot: bool`

### GarrisonEnemyEncounterInfo (Structure)

- `name: cstring`
- `displayID: fileID`
- `portraitFileDataID: fileID`
- `textureKit: textureKit`
- `scale: number`
- `height: number`
- `mechanics: table<GarrisonMechanicInfo>`
- `autoCombatSpells: table<AutoCombatSpellInfo>`
- `autoCombatAutoAttack: AutoCombatSpellInfo?`
- `role: number`
- `health: number`
- `maxHealth: number`
- `attack: number`
- `boardIndex: number`
- `isElite: bool`

### GarrisonFollowerDeathInfo (Structure)

- `followerID: GarrisonFollower`
- `state: luaIndex`

### GarrisonMechanicInfo (Structure)

- `mechanicTypeID: number`
- `icon: fileID`
- `name: cstring`
- `factor: number`
- `description: cstring`
- `ability: GarrisonAbilityInfo?`

### GarrisonPlotInstanceMapInfo (Structure)

- `buildingPlotInstanceID: number`
- `position: vector2`
- `name: cstring`
- `atlasName: textureAtlas`

### MissionDeploymentInfo (Structure)

- `location: cstring`
- `xp: number`
- `environment: string?`
- `environmentDesc: string?`
- `environmentTexture: fileID`
- `locTextureKit: textureKit`
- `isExhausting: bool`
- `enemies: table<GarrisonEnemyEncounterInfo>`

### MissionEncounterIconInfo (Structure)

- `portraitFileDataID: fileID`
- `missionScalar: number`
- `isElite: bool`
- `isRare: bool`
