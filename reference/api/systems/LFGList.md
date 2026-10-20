# LFGList

Type: System  
Namespace: `C_LFGList`  
Environment: All

## Functions

### C_LFGList.CanActiveEntryUseAutoAccept

```lua
C_LFGList.CanActiveEntryUseAutoAccept() -> canUseAutoAccept: bool
```

### C_LFGList.CanCreateQuestGroup

```lua
C_LFGList.CanCreateQuestGroup(questID: number) -> canCreate: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.CanCreateScenarioGroup

```lua
C_LFGList.CanCreateScenarioGroup(scenarioID: number) -> canCreate: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.ClearApplicationTextFields

```lua
C_LFGList.ClearApplicationTextFields()
```

### C_LFGList.ClearCreationTextFields

```lua
C_LFGList.ClearCreationTextFields()
```

### C_LFGList.ClearSearchTextFields

```lua
C_LFGList.ClearSearchTextFields()
```

### C_LFGList.ConfirmCensoredActiveEntry

```lua
C_LFGList.ConfirmCensoredActiveEntry()
```

### C_LFGList.CopyActiveEntryInfoToCreationFields

```lua
C_LFGList.CopyActiveEntryInfoToCreationFields()
```

### C_LFGList.CreateListing

```lua
C_LFGList.CreateListing(createData: LfgListingCreateData) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_LFGList.CreateScenarioListing

```lua
C_LFGList.CreateScenarioListing(activityID: number, itemLevel: number, autoAccept: bool, privateGroup: bool, scenarioID: number) -> canCreate: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.DoesCensoredTextMatch

```lua
C_LFGList.DoesCensoredTextMatch(name: cstring, comment: cstring) -> isMatch: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.DoesEntryTitleMatchPrebuiltTitle

```lua
C_LFGList.DoesEntryTitleMatchPrebuiltTitle(activityID: number, groupID: number, playstyle: LFGEntryPlaystyle?, generalPlaystyle: LFGEntryGeneralPlaystyle?) -> matches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.GetActiveEntryInfo

```lua
C_LFGList.GetActiveEntryInfo() -> entryData: LfgEntryData
```

Secret: SecretInChatMessagingLockdown  

Flags: MayReturnNothing  

### C_LFGList.GetActivityFullName

```lua
C_LFGList.GetActivityFullName(activityID: number, questID: number?, showWarmode: bool?) -> fullName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.GetActivityGroupInfo

```lua
C_LFGList.GetActivityGroupInfo(groupID: number) -> name: string, orderIndex: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetActivityInfoTable

```lua
C_LFGList.GetActivityInfoTable(activityID: number, questID: number?, showWarmode: bool?) -> activityInfo: GroupFinderActivityInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetAdvancedFilter

```lua
C_LFGList.GetAdvancedFilter() -> options: AdvancedFilterOptions
```

### C_LFGList.GetApplicantBestDungeonScore

```lua
C_LFGList.GetApplicantBestDungeonScore(localID: number, applicantIndex: luaIndex) -> bestDungeonScoreForListing: BestDungeonScoreMapInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetApplicantDungeonScoreForListing

```lua
C_LFGList.GetApplicantDungeonScoreForListing(localID: number, applicantIndex: luaIndex, activityID: number) -> bestDungeonScoreForListing: BestDungeonScoreMapInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetApplicantInfo

```lua
C_LFGList.GetApplicantInfo(applicantID: number) -> applicantData: LfgApplicantData
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetApplicantPvpRatingInfoForListing

```lua
C_LFGList.GetApplicantPvpRatingInfoForListing(localID: number, applicantIndex: luaIndex, activityID: number) -> pvpRatingInfo: PvpRatingInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetAvailableActivityGroups

```lua
C_LFGList.GetAvailableActivityGroups(categoryID: number, filter: number = 0) -> activityIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.GetFilteredSearchResults

```lua
C_LFGList.GetFilteredSearchResults() -> totalResultsFound: number = 0, filteredResults: table<number>
```

### C_LFGList.GetGroupLeaverCountsByRole

```lua
C_LFGList.GetGroupLeaverCountsByRole() -> tankLeavers: number, healerLeavers: number, damageLeavers: number
```

### C_LFGList.GetKeystoneForActivity

```lua
C_LFGList.GetKeystoneForActivity(activityID: number) -> level: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetLfgCategoryInfo

```lua
C_LFGList.GetLfgCategoryInfo(categoryID: number) -> categoryData: LfgCategoryData
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetOwnedKeystoneActivityAndGroupAndLevel

```lua
C_LFGList.GetOwnedKeystoneActivityAndGroupAndLevel(getTimewalking: bool = false) -> activityID: number, groupID: number, keystoneLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetPlaystyleString

```lua
C_LFGList.GetPlaystyleString(playstyle: LFGEntryPlaystyle, generalPlaystyle: LFGEntryGeneralPlaystyle, activityInfo: GroupFinderActivityInfo) -> playstyleString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.GetPremadeGroupFinderStyle

```lua
C_LFGList.GetPremadeGroupFinderStyle() -> style: PremadeGroupFinderStyle
```

### C_LFGList.GetSearchResultInfo

```lua
C_LFGList.GetSearchResultInfo(searchResultID: number) -> searchResultData: LfgSearchResultData
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetSearchResultLeaderInfo

```lua
C_LFGList.GetSearchResultLeaderInfo(searchResultID: number) -> leaderInfo: LfgSearchResultPlayerInfo
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetSearchResultPlayerInfo

```lua
C_LFGList.GetSearchResultPlayerInfo(searchResultID: number, memberIndex: luaIndex) -> playerInfo: LfgSearchResultPlayerInfo
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGList.GetSearchResults

```lua
C_LFGList.GetSearchResults() -> totalResultsFound: number = 0, results: table<number>
```

### C_LFGList.HasActiveEntryInfo

```lua
C_LFGList.HasActiveEntryInfo() -> hasActiveEntryInfo: bool
```

### C_LFGList.HasSearchResultInfo

```lua
C_LFGList.HasSearchResultInfo(searchResultID: number) -> hasSearchResultInfo: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.IsCensoredActiveEntryUnresolved

```lua
C_LFGList.IsCensoredActiveEntryUnresolved() -> isUnresolved: bool
```

### C_LFGList.IsPlayerAuthenticatedForLFG

```lua
C_LFGList.IsPlayerAuthenticatedForLFG(activityCategoryID: number?) -> isAuthenticated: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.IsPlayerValidForEndgameFieldEdits

```lua
C_LFGList.IsPlayerValidForEndgameFieldEdits() -> isValid: bool
```

### C_LFGList.IsPremadeGroupFinderEnabled

```lua
C_LFGList.IsPremadeGroupFinderEnabled() -> enabled: bool
```

### C_LFGList.ListingUsesEndgameEditRestrictions

```lua
C_LFGList.ListingUsesEndgameEditRestrictions(activityID: number) -> isEndgameListing: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.ReportGroupAsAdvertisement

```lua
C_LFGList.ReportGroupAsAdvertisement(searchResultID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_LFGList.RevealCensoredActiveEntry

```lua
C_LFGList.RevealCensoredActiveEntry()
```

### C_LFGList.RevealCensoredSearchResult

```lua
C_LFGList.RevealCensoredSearchResult(searchResultID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.SaveAdvancedFilter

```lua
C_LFGList.SaveAdvancedFilter(options: AdvancedFilterOptions)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.Search

```lua
C_LFGList.Search(categoryID: number, filter: number = 0, preferredFilters: number = 0, languageFilter: WowLocale?, searchCrossFactionListings: bool? = false, advancedFilter: AdvancedFilterOptions?, activityIDsFilter: table<number>?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_LFGList.SetEntryTitle

```lua
C_LFGList.SetEntryTitle(activityID: number, groupID: number, playstyle: LFGEntryPlaystyle?, generalPlaystyle: LFGEntryGeneralPlaystyle?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_LFGList.SetSearchToActivity

```lua
C_LFGList.SetSearchToActivity(activityID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.SetSearchToQuestID

```lua
C_LFGList.SetSearchToQuestID(questID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.SetSearchToScenarioID

```lua
C_LFGList.SetSearchToScenarioID(scenarioID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.UpdateListing

```lua
C_LFGList.UpdateListing(createData: LfgListingCreateData) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_LFGList.ValidateRequiredDungeonScore

```lua
C_LFGList.ValidateRequiredDungeonScore(dungeonScore: number) -> passes: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGList.ValidateRequiredPvpRatingForActivity

```lua
C_LFGList.ValidateRequiredPvpRatingForActivity(activityID: number, rating: number) -> passes: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LFG_GROUP_DELISTED_LEADERSHIP_CHANGE

Payload: `listingName: string, automaticDelistTimeRemaining: number`  
Flags: SynchronousEvent  

### LFG_LIST_ACTIVE_ENTRY_UPDATE

Payload: `created: bool?`  
Flags: SynchronousEvent  

### LFG_LIST_APPLICANT_LIST_UPDATED

Payload: `newPendingEntry: bool?, newPendingEntryWithData: bool?`  
Flags: SynchronousEvent  

### LFG_LIST_APPLICANT_UPDATED

Payload: `applicantID: number`  
Flags: SynchronousEvent  

### LFG_LIST_APPLICATION_STATUS_UPDATED

Payload: `searchResultID: number, newStatus: cstring, oldStatus: cstring, groupName: kstringLfgListChat`  
Flags: SynchronousEvent  

### LFG_LIST_AVAILABILITY_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_CENSORED_ACTIVE_ENTRY_UPDATE

Payload: `isCensored: bool`  
Flags: SynchronousEvent  

### LFG_LIST_ENTRY_CREATION_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_ENTRY_EXPIRED_TIMEOUT

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_JOINED_GROUP

Payload: `searchResultID: number, groupName: kstringLfgListChat`  
Flags: SynchronousEvent  

### LFG_LIST_REVEALED_CENSORED_ACTIVE_ENTRY

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_SEARCH_FAILED

Payload: `reason: cstring?`  
Flags: SynchronousEvent  

### LFG_LIST_SEARCH_RESULT_UPDATED

Payload: `searchResultID: number`  
Flags: SynchronousEvent  

### LFG_LIST_SEARCH_RESULTS_RECEIVED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_LIST_SHOW_SEARCH

Payload: `activityIDsFilter: table<number>?, showAllLevelRanges: bool`  
Flags: SynchronousEvent  

### LFG_LIST_UPDATE_SEARCH_RESULTS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### AdvancedFilterOptions (Structure)

- `needsTank: bool = false`
- `needsHealer: bool = false`
- `needsDamage: bool = false`
- `needsMyClass: bool = false`
- `hasTank: bool = false`
- `hasHealer: bool = false`
- `activities: table<number>` Activity group IDs to filter by.
- `minimumRating: number = 0`
- `difficultyNormal: bool = false`
- `difficultyHeroic: bool = false`
- `difficultyMythic: bool = false`
- `difficultyMythicPlus: bool = false`
- `generalPlaystyle1: bool = false`
- `generalPlaystyle2: bool = false`
- `generalPlaystyle3: bool = false`
- `generalPlaystyle4: bool = false`

### BestDungeonScoreMapInfo (Structure)

- `mapScore: number`
- `mapName: string`
- `bestRunLevel: number`
- `finishedSuccess: bool`
- `bestRunDurationMs: number`
- `bestLevelIncrement: number`

### GroupFinderActivityInfo (Structure)

- `fullName: string`
- `shortName: string`
- `categoryID: number`
- `groupFinderActivityGroupID: number`
- `ilvlSuggestion: number`
- `filters: number`
- `minLevel: number`
- `minLevelSuggestion: number`
- `maxLevelSuggestion: number`
- `maxNumPlayers: number`
- `displayType: LFGListDisplayType`
- `orderIndex: number`
- `useHonorLevel: bool`
- `showQuickJoinToast: bool`
- `isMythicPlusActivity: bool`
- `isRatedPvpActivity: bool`
- `isCurrentRaidActivity: bool`
- `isPvpActivity: bool`
- `isMythicActivity: bool`
- `allowCrossFaction: bool`
- `isHeroicActivity: bool`
- `isNormalActivity: bool`
- `mapID: number`
- `difficultyID: number`
- `redirectedDifficultyID: number`
- `useDungeonRoleExpectations: bool`

### LfgApplicantData (Structure)

- `applicantID: number`
- `applicationStatus: cstring`
- `pendingApplicationStatus: cstring?`
- `numMembers: number`
- `isNew: bool`
- `comment: kstringLfgListApplicant`
- `displayOrderID: number`

### LfgCategoryData (Structure)

- `name: cstring`
- `searchPromptOverride: cstring?`
- `separateRecommended: bool`
- `autoChooseActivity: bool`
- `preferCurrentArea: bool`
- `showPlaystyleDropdown: bool`
- `allowCrossFaction: bool`

### LfgEntryData (Structure)

- `activityIDs: table<number>`
- `requiredItemLevel: number`
- `requiredHonorLevel: number`
- `name: kstringLfgListApplicant`
- `comment: kstringLfgListApplicant`
- `voiceChat: kstringLfgListApplicant`
- `voiceMode: LFGEntryVoiceMode`
- `censored: bool`
- `duration: time_t`
- `autoAccept: bool`
- `privateGroup: bool`
- `questID: number?`
- `requiredDungeonScore: number?`
- `requiredPvpRating: number?`
- `playstyle: LFGEntryPlaystyle?`
- `generalPlaystyle: LFGEntryGeneralPlaystyle?`
- `isCrossFactionListing: bool`
- `newPlayerFriendly: bool`

### LfgListingCreateData (Structure)

- `activityIDs: table<number>`
- `questID: number?`
- `isAutoAccept: bool = false`
- `isCrossFactionListing: bool = false`
- `isPrivateGroup: bool = false`
- `newPlayerFriendly: bool = false`
- `playstyle: LFGEntryPlaystyle = None`
- `generalPlaystyle: LFGEntryGeneralPlaystyle = None`
- `requiredDungeonScore: number = 0`
- `requiredItemLevel: number = 0`
- `requiredPvpRating: number = 0`
- `voiceMode: LFGEntryVoiceMode = None`

### LfgSearchResultData (Structure)

- `searchResultID: number`
- `activityIDs: table<number>`
- `leaderName: string?`
- `name: kstringLfgListSearch`
- `comment: kstringLfgListSearch`
- `voiceChat: kstringLfgListSearch`
- `voiceMode: LFGEntryVoiceMode`
- `censored: bool`
- `requiredItemLevel: number`
- `requiredHonorLevel: number`
- `hasSelf: bool`
- `numMembers: number`
- `numBNetFriends: number`
- `numCharFriends: number`
- `numGuildMates: number`
- `isDelisted: bool`
- `autoAccept: bool`
- `isWarMode: bool`
- `age: time_t`
- `questID: number?`
- `leaderOverallDungeonScore: number?`
- `leaderDungeonScoreInfo: table<BestDungeonScoreMapInfo>`
- `leaderBestDungeonScoreInfo: BestDungeonScoreMapInfo?`
- `leaderPvpRatingInfo: table<PvpRatingInfo>`
- `requiredDungeonScore: number?`
- `requiredPvpRating: number?`
- `playstyle: LFGEntryPlaystyle?`
- `generalPlaystyle: LFGEntryGeneralPlaystyle?`
- `crossFactionListing: bool?`
- `leaderFactionGroup: number`
- `newPlayerFriendly: bool?`
- `partyGUID: WOWGUID`

### LfgSearchResultPlayerInfo (Structure)

- `name: string?`
- `level: number?`
- `areaName: cstring?`
- `className: cstring`
- `classFilename: cstring`
- `specName: cstring?`
- `assignedRole: cstring`
- `lfgRoles: LFGRoles`
- `isLeader: bool`
- `isLeaver: bool = false`

### PvpRatingInfo (Structure)

- `bracket: number`
- `rating: number`
- `activityName: string`
- `tier: number`

### WowLocale (Structure)

- `enUS: bool = false`
- `koKR: bool = false`
- `frFR: bool = false`
- `deDE: bool = false`
- `zhCN: bool = false`
- `zhTW: bool = false`
- `esES: bool = false`
- `esMX: bool = false`
- `ruRU: bool = false`
- `ptBR: bool = false`
- `itIT: bool = false`
