# QuestConstants

Type: None

## Tables

### CombinedQuestLogStatus (Enumeration)

| Name | Value |
|---|---|
| Available | 0 |
| Complete | 1 |
| CompleteDaily | 2 |
| CompleteWeekly | 3 |
| CompleteMonthly | 4 |
| CompleteYearly | 5 |
| CompleteGameReset | 6 |
| Reset | 7 |

### CombinedQuestStatus (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Completed | 1 |
| NotCompleted | 2 |

### QuestCompleteSpellType (Enumeration)

| Name | Value |
|---|---|
| LegacyBehavior | 0 |
| Follower | 1 |
| Tradeskill | 2 |
| Ability | 3 |
| Aura | 4 |
| Spell | 5 |
| Unlock | 6 |
| Companion | 7 |
| QuestlineUnlock | 8 |
| QuestlineReward | 9 |
| QuestlineUnlockPart | 10 |
| PossibleReward | 11 |

### QuestRepeatability (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Daily | 1 |
| Weekly | 2 |
| Turnin | 3 |
| World | 4 |

### QuestRewardContextFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| FirstCompletionBonus | 1 |
| RepeatCompletionBonus | 2 |

### QuestTagType (Enumeration)

| Name | Value |
|---|---|
| Tag | 0 |
| Profession | 1 |
| Normal | 2 |
| PvP | 3 |
| PetBattle | 4 |
| Bounty | 5 |
| Dungeon | 6 |
| Invasion | 7 |
| Raid | 8 |
| Contribution | 9 |
| RatedReward | 10 |
| InvasionWrapper | 11 |
| FactionAssault | 12 |
| Islands | 13 |
| Threat | 14 |
| CovenantCalling | 15 |
| DragonRiderRacing | 16 |
| Capstone | 17 |
| WorldBoss | 18 |
| Prey | 19 |

### QuestTreasurePickerType (Enumeration)

| Name | Value |
|---|---|
| Visible | 0 |
| Hidden | 1 |
| Select | 2 |

### RelativeContentDifficulty (Enumeration)

| Name | Value |
|---|---|
| Trivial | 0 |
| Easy | 1 |
| Fair | 2 |
| Difficult | 3 |
| Impossible | 4 |

### QuestInfoLuaConsts (Constants)

| Name | Type | Value |
|---|---|---|
| QUEST_INFO_ELITE_ID | number | 1 |
| QUEST_INFO_DUNGEON_ID | number | 81 |
| QUEST_INFO_PVP_ID | number | 41 |
| QUEST_INFO_RAID_ID | number | 62 |

### QuestLogConstsMainlineCamelot (Constants)

| Name | Type | Value |
|---|---|---|
| MAXIMUM_NUM_QUESTS_LOG_CAN_ACCEPT | number | 40 |

### QuestWatchConsts (Constants)

| Name | Type | Value |
|---|---|---|
| MAX_QUEST_WATCHES | number | 25 |
| MAX_WORLD_QUEST_WATCHES_AUTOMATIC | number | 1 |
| MAX_WORLD_QUEST_WATCHES_MANUAL | number | 5 |
