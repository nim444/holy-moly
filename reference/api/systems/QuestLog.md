# QuestLog

Type: System  
Namespace: `C_QuestLog`  
Environment: All

## Functions

### C_QuestLog.AbandonQuest

```lua
C_QuestLog.AbandonQuest()
```

### C_QuestLog.AddQuestWatch

```lua
C_QuestLog.AddQuestWatch(questID: number) -> wasWatched: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.AddWorldQuestWatch

```lua
C_QuestLog.AddWorldQuestWatch(questID: number, watchType: QuestWatchType?) -> wasWatched: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.CanAbandonQuest

```lua
C_QuestLog.CanAbandonQuest(questID: number) -> canAbandon: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.DoesQuestAwardReputationWithFaction

```lua
C_QuestLog.DoesQuestAwardReputationWithFaction(questID: number, targetFactionID: number) -> awardsReputation: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetAbandonQuest

```lua
C_QuestLog.GetAbandonQuest() -> questID: number
```

### C_QuestLog.GetAbandonQuestItems

```lua
C_QuestLog.GetAbandonQuestItems() -> itemIDs: table<number>
```

Flags: MayReturnNothing  

### C_QuestLog.GetActivePreyQuest

```lua
C_QuestLog.GetActivePreyQuest() -> questID: number
```

Flags: MayReturnNothing  

### C_QuestLog.GetActiveThreatMaps

```lua
C_QuestLog.GetActiveThreatMaps() -> uiMapIDs: table<number>
```

Flags: MayReturnNothing  

### C_QuestLog.GetAllCompletedQuestIDs

```lua
C_QuestLog.GetAllCompletedQuestIDs() -> quests: table<number>
```

### C_QuestLog.GetBountiesForMapID

```lua
C_QuestLog.GetBountiesForMapID(uiMapID: number) -> bounties: table<BountyInfo>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetBountySetInfoForMapID

```lua
C_QuestLog.GetBountySetInfoForMapID(uiMapID: number) -> displayLocation: MapOverlayDisplayLocation, lockQuestID: number, bountySetID: number, isActivitySet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetDistanceSqToQuest

```lua
C_QuestLog.GetDistanceSqToQuest(questID: number) -> distanceSq: number, onContinent: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetHeaderIndexForQuest

```lua
C_QuestLog.GetHeaderIndexForQuest(questID: number) -> index: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetInfo

```lua
C_QuestLog.GetInfo(questLogIndex: luaIndex) -> info: QuestInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetLogIndexForQuestID

```lua
C_QuestLog.GetLogIndexForQuestID(questID: number) -> questLogIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

Only returns a log index for actual quests, not headers

### C_QuestLog.GetMapForQuestPOIs

```lua
C_QuestLog.GetMapForQuestPOIs() -> uiMapID: number
```

### C_QuestLog.GetMaxNumQuests

```lua
C_QuestLog.GetMaxNumQuests() -> maxNumQuests: number
```

This is the maximum number of quests a player can be on, including hidden quests, world quests, emissaries etc

### C_QuestLog.GetMaxNumQuestsCanAccept

```lua
C_QuestLog.GetMaxNumQuestsCanAccept() -> maxNumQuestsCanAccept: number
```

This is the maximum number of standard quests a player can accept. These are quests that are normally visible in the quest log.

### C_QuestLog.GetNextWaypoint

```lua
C_QuestLog.GetNextWaypoint(questID: number) -> mapID: number, x: number, y: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetNextWaypointForMap

```lua
C_QuestLog.GetNextWaypointForMap(questID: number, uiMapID: number) -> x: number, y: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetNextWaypointText

```lua
C_QuestLog.GetNextWaypointText(questID: number) -> waypointText: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetNumQuestLogEntries

```lua
C_QuestLog.GetNumQuestLogEntries() -> numShownEntries: number, numQuests: number
```

### C_QuestLog.GetNumQuestObjectives

```lua
C_QuestLog.GetNumQuestObjectives(questID: number) -> leaderboardCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetNumQuestWatches

```lua
C_QuestLog.GetNumQuestWatches() -> numQuestWatches: number
```

### C_QuestLog.GetNumWorldQuestWatches

```lua
C_QuestLog.GetNumWorldQuestWatches() -> numQuestWatches: number
```

### C_QuestLog.GetQuestAdditionalHighlights

```lua
C_QuestLog.GetQuestAdditionalHighlights(questID: number) -> uiMapID: number, worldQuests: bool, worldQuestsElite: bool, dungeons: bool, treasures: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestDetailsTheme

```lua
C_QuestLog.GetQuestDetailsTheme(questID: number) -> theme: QuestTheme?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestDifficultyLevel

```lua
C_QuestLog.GetQuestDifficultyLevel(questID: number) -> level: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestIDForLogIndex

```lua
C_QuestLog.GetQuestIDForLogIndex(questLogIndex: luaIndex) -> questID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Only returns a questID for actual quests, not headers

### C_QuestLog.GetQuestIDForQuestWatchIndex

```lua
C_QuestLog.GetQuestIDForQuestWatchIndex(questWatchIndex: luaIndex) -> questID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestIDForWorldQuestWatchIndex

```lua
C_QuestLog.GetQuestIDForWorldQuestWatchIndex(questWatchIndex: luaIndex) -> questID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestLogMajorFactionReputationRewards

```lua
C_QuestLog.GetQuestLogMajorFactionReputationRewards(questID: number) -> reputationRewards: table<QuestRewardReputationInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetQuestLogPortraitGiver

```lua
C_QuestLog.GetQuestLogPortraitGiver(questLogIndex: luaIndex?) -> portraitGiver: number, portraitGiverText: cstring, portraitGiverName: cstring, portraitGiverMount: number, portraitGiverModelSceneID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetQuestObjectives

```lua
C_QuestLog.GetQuestObjectives(questID: number) -> objectives: table<QuestObjectiveInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetQuestRewardCurrencies

```lua
C_QuestLog.GetQuestRewardCurrencies(questID: number) -> questRewardCurrencies: table<QuestRewardCurrencyInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestRewardCurrencyInfo

```lua
C_QuestLog.GetQuestRewardCurrencyInfo(questID: number, currencyIndex: luaIndex, isChoice: bool) -> questRewardCurrencyInfo: QuestRewardCurrencyInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestTagInfo

```lua
C_QuestLog.GetQuestTagInfo(questID: number) -> info: QuestTagInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestTimers

```lua
C_QuestLog.GetQuestTimers() -> questTimers: table<QuestTimerInfo>
```

### C_QuestLog.GetQuestType

```lua
C_QuestLog.GetQuestType(questID: number) -> questType: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestWatchType

```lua
C_QuestLog.GetQuestWatchType(questID: number) -> watchType: QuestWatchType?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetQuestsOnMap

```lua
C_QuestLog.GetQuestsOnMap(uiMapID: number) -> quests: table<QuestPOIMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetRequiredMoney

```lua
C_QuestLog.GetRequiredMoney(questID: number?) -> requiredMoney: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Uses the selected quest if no questID is provided

### C_QuestLog.GetSelectedQuest

```lua
C_QuestLog.GetSelectedQuest() -> questID: number
```

### C_QuestLog.GetSuggestedGroupSize

```lua
C_QuestLog.GetSuggestedGroupSize(questID: number) -> suggestedGroupSize: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.GetTimeAllowed

```lua
C_QuestLog.GetTimeAllowed(questID: number) -> totalTime: number, elapsedTime: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.GetTitleForLogIndex

```lua
C_QuestLog.GetTitleForLogIndex(questLogIndex: luaIndex) -> title: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a valid title for anything that is in the quest log.

### C_QuestLog.GetTitleForQuestID

```lua
C_QuestLog.GetTitleForQuestID(questID: number) -> title: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

Only returns a valid title for quests, header titles cannot be discovered using this.

### C_QuestLog.GetTrivialRange

```lua
C_QuestLog.GetTrivialRange() -> range: number
```

### C_QuestLog.GetZoneStoryInfo

```lua
C_QuestLog.GetZoneStoryInfo(uiMapID: number) -> achievementID: number, storyMapID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestLog.HasActiveThreats

```lua
C_QuestLog.HasActiveThreats() -> hasActiveThreats: bool
```

### C_QuestLog.IsAccountQuest

```lua
C_QuestLog.IsAccountQuest(questID: number) -> isAccountQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsComplete

```lua
C_QuestLog.IsComplete(questID: number) -> isComplete: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsEliteQuest

```lua
C_QuestLog.IsEliteQuest(questID: number) -> isEliteQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsFailed

```lua
C_QuestLog.IsFailed(questID: number) -> isFailed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsImportantQuest

```lua
C_QuestLog.IsImportantQuest(questID: number) -> isImportant: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsMetaQuest

```lua
C_QuestLog.IsMetaQuest(questID: number) -> isMeta: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsOnMap

```lua
C_QuestLog.IsOnMap(questID: number) -> onMap: bool, hasLocalPOI: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsOnQuest

```lua
C_QuestLog.IsOnQuest(questID: number) -> isOnQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsPushableQuest

```lua
C_QuestLog.IsPushableQuest(questID: number) -> isPushable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestBounty

```lua
C_QuestLog.IsQuestBounty(questID: number) -> isBounty: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestCalling

```lua
C_QuestLog.IsQuestCalling(questID: number) -> isCalling: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestCriteriaForBounty

```lua
C_QuestLog.IsQuestCriteriaForBounty(questID: number, bountyQuestID: number) -> isCriteriaForBounty: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestDisabledForSession

```lua
C_QuestLog.IsQuestDisabledForSession(questID: number) -> isDisabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestFlaggedCompleted

```lua
C_QuestLog.IsQuestFlaggedCompleted(questID: number) -> isCompleted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestFlaggedCompletedOnAccount

```lua
C_QuestLog.IsQuestFlaggedCompletedOnAccount(questID: number) -> isCompletedOnAccount: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestFromContentPush

```lua
C_QuestLog.IsQuestFromContentPush(questID: number) -> isFromContentPush: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestInvasion

```lua
C_QuestLog.IsQuestInvasion(questID: number) -> isInvasion: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestReplayable

```lua
C_QuestLog.IsQuestReplayable(questID: number) -> isReplayable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestReplayedRecently

```lua
C_QuestLog.IsQuestReplayedRecently(questID: number) -> recentlyReplayed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestTask

```lua
C_QuestLog.IsQuestTask(questID: number) -> isTask: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsQuestTrivial

```lua
C_QuestLog.IsQuestTrivial(questID: number) -> isTrivial: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsRepeatableQuest

```lua
C_QuestLog.IsRepeatableQuest(questID: number) -> isRepeatable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsThreatQuest

```lua
C_QuestLog.IsThreatQuest(questID: number) -> isThreat: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsUnitOnQuest

```lua
C_QuestLog.IsUnitOnQuest(unit: UnitToken, questID: number) -> isOnQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.IsWorldQuest

```lua
C_QuestLog.IsWorldQuest(questID: number) -> isWorldQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.QuestCanHaveWarModeBonus

```lua
C_QuestLog.QuestCanHaveWarModeBonus(questID: number) -> hasBonus: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Tests whether a quest is eligible for warmode bonuses (e.g. most world quests, some daily quests

### C_QuestLog.QuestContainsFirstTimeRepBonusForPlayer

```lua
C_QuestLog.QuestContainsFirstTimeRepBonusForPlayer(questID: number) -> questContainsFirstTimeRepBonusForPlayer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.QuestHasQuestSessionBonus

```lua
C_QuestLog.QuestHasQuestSessionBonus(questID: number) -> hasBonus: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.QuestHasWarModeBonus

```lua
C_QuestLog.QuestHasWarModeBonus(questID: number) -> hasBonus: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Tests whether a quest in the player's quest log that is eligible for warmode bonuses (see 'QuestCanHaveWarModeBOnus') has been completed in warmode (including accepting it)

### C_QuestLog.QuestIgnoresAccountCompletedFiltering

```lua
C_QuestLog.QuestIgnoresAccountCompletedFiltering(questID: number) -> questIgnoresAccountCompletedFiltering: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.ReadyForTurnIn

```lua
C_QuestLog.ReadyForTurnIn(questID: number) -> readyForTurnIn: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.RemoveQuestWatch

```lua
C_QuestLog.RemoveQuestWatch(questID: number) -> wasRemoved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.RemoveWorldQuestWatch

```lua
C_QuestLog.RemoveWorldQuestWatch(questID: number) -> wasRemoved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.RequestLoadQuestByID

```lua
C_QuestLog.RequestLoadQuestByID(questID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.SetAbandonQuest

```lua
C_QuestLog.SetAbandonQuest()
```

### C_QuestLog.SetMapForQuestPOIs

```lua
C_QuestLog.SetMapForQuestPOIs(uiMapID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.SetSelectedQuest

```lua
C_QuestLog.SetSelectedQuest(questID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.ShouldDisplayTimeRemaining

```lua
C_QuestLog.ShouldDisplayTimeRemaining(questID: number) -> displayTimeRemaining: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.ShouldShowQuestRewards

```lua
C_QuestLog.ShouldShowQuestRewards(questID: number) -> shouldShow: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.SortQuestWatches

```lua
C_QuestLog.SortQuestWatches()
```

### C_QuestLog.UnitIsRelatedToActiveQuest

```lua
C_QuestLog.UnitIsRelatedToActiveQuest(unit: UnitToken) -> isRelatedToActiveQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestLog.UpdateCampaignHeaders

```lua
C_QuestLog.UpdateCampaignHeaders()
```

## Events

### QUEST_ACCEPTED

Payload: `questId: number`  
Flags: SynchronousEvent  

### QUEST_AUTOCOMPLETE

Payload: `questId: number`  
Flags: SynchronousEvent  

### QUEST_COMPLETE

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_DATA_LOAD_RESULT

Payload: `questID: number, success: bool`  
Flags: SynchronousEvent  

### QUEST_DETAIL

Payload: `questStartItemID: number?`  
Flags: SynchronousEvent  

### QUEST_LOG_CRITERIA_UPDATE

Payload: `questID: number, specificTreeID: number, description: cstring, numFulfilled: number, numRequired: number`  
Flags: SynchronousEvent  

### QUEST_LOG_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### QUEST_POI_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### QUEST_REMOVED

Payload: `questID: number, wasReplayQuest: bool`  
Flags: SynchronousEvent  

### QUEST_TURNED_IN

Payload: `questID: number, xpReward: number, moneyReward: number`  
Flags: SynchronousEvent  

### QUEST_WATCH_LIST_CHANGED

Payload: `questID: number?, added: bool?`  
Flags: SynchronousEvent, UniqueEvent  

### QUEST_WATCH_UPDATE

Payload: `questID: number`  
Flags: SynchronousEvent  

### QUESTLINE_UPDATE

Payload: `requestRequired: bool`  
Flags: SynchronousEvent  

### TASK_PROGRESS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TREASURE_PICKER_CACHE_FLUSH

Payload: `none`  
Flags: SynchronousEvent  

### WAYPOINT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### WORLD_QUEST_COMPLETED_BY_SPELL

Payload: `questID: number`  
Flags: SynchronousEvent  

## Tables

### MapOverlayDisplayLocation (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| BottomLeft | 1 |
| TopLeft | 2 |
| BottomRight | 3 |
| TopRight | 4 |
| Hidden | 5 |

### QuestFrequency (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| Daily | 1 |
| Weekly | 2 |
| ResetByScheduler | 3 |

### QuestTag (Enumeration)

| Name | Value |
|---|---|
| Group | 1 |
| PvP | 41 |
| Raid | 62 |
| Dungeon | 81 |
| Legendary | 83 |
| Heroic | 85 |
| Raid10 | 88 |
| Raid25 | 89 |
| Scenario | 98 |
| Account | 102 |
| CombatAlly | 266 |
| Delve | 288 |

### QuestWatchType (Enumeration)

| Name | Value |
|---|---|
| Automatic | 0 |
| Manual | 1 |

### WorldQuestQuality (Enumeration)

| Name | Value |
|---|---|
| Common | 0 |
| Rare | 1 |
| Epic | 2 |

### QuestInfo (Structure)

- `title: string`
- `questLogIndex: luaIndex`
- `questID: number`
- `campaignID: number?`
- `level: number`
- `difficultyLevel: number`
- `suggestedGroup: number`
- `frequency: QuestFrequency?`
- `isHeader: bool`
- `useMinimalHeader: bool`
- `sortAsNormalQuest: bool`
- `isCollapsed: bool`
- `startEvent: bool`
- `isTask: bool`
- `isBounty: bool`
- `isStory: bool`
- `isScaling: bool`
- `isOnMap: bool`
- `hasLocalPOI: bool`
- `isHidden: bool`
- `isAutoComplete: bool`
- `overridesSortOrder: bool`
- `readyForTranslation: bool = true`
- `isInternalOnly: bool`
- `isAbandonOnDisable: bool`
- `headerSortKey: number?`
- `questClassification: QuestClassification`

### QuestObjectiveInfo (Structure)

- `text: string`
- `type: string`
- `finished: bool`
- `numFulfilled: number`
- `numRequired: number`
- `objectiveType: QuestObjectiveType?`

### QuestTagInfo (Structure)

- `tagName: cstring`
- `tagID: number`
- `worldQuestType: number?`
- `quality: WorldQuestQuality?`
- `tradeskillLineID: number?`
- `isElite: bool?`
- `displayExpiration: bool?`

### QuestTheme (Structure)

- `background: textureAtlas`
- `seal: textureAtlas`
- `signature: cstring`
- `poiIcon: textureAtlas`
- `mapPinInfo: UIMapPinInfo?`

### QuestTimerInfo (Structure)

- `questID: number`
- `questTimer: number`
