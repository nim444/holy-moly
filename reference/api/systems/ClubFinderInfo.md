# ClubFinderInfo

Type: System  
Namespace: `C_ClubFinder`  
Environment: All

## Functions

### C_ClubFinder.ApplicantAcceptClubInvite

```lua
C_ClubFinder.ApplicantAcceptClubInvite(clubFinderGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.ApplicantDeclineClubInvite

```lua
C_ClubFinder.ApplicantDeclineClubInvite(clubFinderGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.CancelMembershipRequest

```lua
C_ClubFinder.CancelMembershipRequest(clubFinderGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.CheckAllPlayerApplicantSettings

```lua
C_ClubFinder.CheckAllPlayerApplicantSettings()
```

### C_ClubFinder.ClearAllFinderCache

```lua
C_ClubFinder.ClearAllFinderCache()
```

### C_ClubFinder.ClearClubApplicantsCache

```lua
C_ClubFinder.ClearClubApplicantsCache()
```

### C_ClubFinder.ClearClubFinderPostingsCache

```lua
C_ClubFinder.ClearClubFinderPostingsCache()
```

### C_ClubFinder.DoesPlayerBelongToClubFromClubGUID

```lua
C_ClubFinder.DoesPlayerBelongToClubFromClubGUID(clubFinderGUID: WOWGUID) -> belongsToClub: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetClubFinderDisableReason

```lua
C_ClubFinder.GetClubFinderDisableReason() -> disableReason: ClubFinderDisableReason?
```

### C_ClubFinder.GetClubRecruitmentSettings

```lua
C_ClubFinder.GetClubRecruitmentSettings() -> settings: ClubSettingsInfo
```

### C_ClubFinder.GetClubTypeFromFinderGUID

```lua
C_ClubFinder.GetClubTypeFromFinderGUID(clubFinderGUID: WOWGUID) -> clubType: ClubFinderRequestType
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ClubFinder.GetFocusIndexFromFlag

```lua
C_ClubFinder.GetFocusIndexFromFlag(flags: number) -> index: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetPlayerApplicantLocaleFlags

```lua
C_ClubFinder.GetPlayerApplicantLocaleFlags() -> localeFlags: number
```

### C_ClubFinder.GetPlayerApplicantSettings

```lua
C_ClubFinder.GetPlayerApplicantSettings() -> settings: ClubSettingsInfo
```

### C_ClubFinder.GetPlayerClubApplicationStatus

```lua
C_ClubFinder.GetPlayerClubApplicationStatus(clubFinderGUID: WOWGUID) -> clubStatus: PlayerClubRequestStatus
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetPlayerSettingsFocusFlagsSelectedCount

```lua
C_ClubFinder.GetPlayerSettingsFocusFlagsSelectedCount() -> focusCount: number
```

### C_ClubFinder.GetPostingIDFromClubFinderGUID

```lua
C_ClubFinder.GetPostingIDFromClubFinderGUID(clubFinderGUID: WOWGUID) -> postingID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetRecruitingClubInfoFromClubID

```lua
C_ClubFinder.GetRecruitingClubInfoFromClubID(clubId: ClubId) -> clubInfo: RecruitingClubInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetRecruitingClubInfoFromFinderGUID

```lua
C_ClubFinder.GetRecruitingClubInfoFromFinderGUID(clubFinderGUID: WOWGUID) -> clubInfo: RecruitingClubInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetStatusOfPostingFromClubId

```lua
C_ClubFinder.GetStatusOfPostingFromClubId(postingID: ClubId) -> postingFlags: table<ClubFinderClubPostingStatusFlags>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.GetTotalMatchingCommunityListSize

```lua
C_ClubFinder.GetTotalMatchingCommunityListSize() -> totalSize: number
```

### C_ClubFinder.GetTotalMatchingGuildListSize

```lua
C_ClubFinder.GetTotalMatchingGuildListSize() -> totalSize: number
```

### C_ClubFinder.HasAlreadyAppliedToLinkedPosting

```lua
C_ClubFinder.HasAlreadyAppliedToLinkedPosting(clubFinderGUID: WOWGUID) -> hasAlreadyApplied: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.HasPostingBeenDelisted

```lua
C_ClubFinder.HasPostingBeenDelisted(postingID: ClubId) -> postingDelisted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.IsCommunityFinderEnabled

```lua
C_ClubFinder.IsCommunityFinderEnabled() -> isEnabled: bool
```

### C_ClubFinder.IsEnabled

```lua
C_ClubFinder.IsEnabled() -> isEnabled: bool
```

### C_ClubFinder.IsListingEnabledFromFlags

```lua
C_ClubFinder.IsListingEnabledFromFlags(flags: number) -> isListed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.IsPostingBanned

```lua
C_ClubFinder.IsPostingBanned(postingID: ClubId) -> postingBanned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.IsValidSearchString

```lua
C_ClubFinder.IsValidSearchString(name: cstring) -> isApproved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.LookupClubPostingFromClubFinderGUID

```lua
C_ClubFinder.LookupClubPostingFromClubFinderGUID(clubFinderGUID: WOWGUID, isLinkedPosting: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.PlayerGetClubInvitationList

```lua
C_ClubFinder.PlayerGetClubInvitationList() -> inviteList: table<RecruitingClubInfo>
```

Flags: MayReturnNothing  

### C_ClubFinder.PlayerRequestPendingClubsList

```lua
C_ClubFinder.PlayerRequestPendingClubsList(type: ClubFinderRequestType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.PlayerReturnPendingCommunitiesList

```lua
C_ClubFinder.PlayerReturnPendingCommunitiesList() -> info: table<RecruitingClubInfo>
```

### C_ClubFinder.PlayerReturnPendingGuildsList

```lua
C_ClubFinder.PlayerReturnPendingGuildsList() -> info: table<RecruitingClubInfo>
```

### C_ClubFinder.PostClub

```lua
C_ClubFinder.PostClub(clubId: ClubId, itemLevelRequirement: number, name: string, description: string, avatarId: number, specs: table<number>, type: ClubFinderRequestType, crossFaction: bool = false) -> succesful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.RequestApplicantList

```lua
C_ClubFinder.RequestApplicantList(type: ClubFinderRequestType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.RequestClubsList

```lua
C_ClubFinder.RequestClubsList(guildListRequested: bool, searchString: string, specIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.RequestMembershipToClub

```lua
C_ClubFinder.RequestMembershipToClub(clubFinderGUID: WOWGUID, comment: string, specIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.RequestNextCommunityPage

```lua
C_ClubFinder.RequestNextCommunityPage(startingIndex: number, pageSize: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.RequestNextGuildPage

```lua
C_ClubFinder.RequestNextGuildPage(startingIndex: number, pageSize: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.RequestPostingInformationFromClubId

```lua
C_ClubFinder.RequestPostingInformationFromClubId(clubId: ClubId) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.RequestSubscribedClubPostingIDs

```lua
C_ClubFinder.RequestSubscribedClubPostingIDs()
```

### C_ClubFinder.ResetClubPostingMapCache

```lua
C_ClubFinder.ResetClubPostingMapCache()
```

### C_ClubFinder.RespondToApplicant

```lua
C_ClubFinder.RespondToApplicant(clubFinderGUID: WOWGUID, playerGUID: WOWGUID, shouldAccept: bool, requestType: ClubFinderRequestType, playerName: string, forceAccept: bool, reported: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_ClubFinder.ReturnClubApplicantList

```lua
C_ClubFinder.ReturnClubApplicantList(clubId: ClubId) -> info: table<ClubFinderApplicantInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.ReturnMatchingCommunityList

```lua
C_ClubFinder.ReturnMatchingCommunityList() -> recruitingClubs: table<RecruitingClubInfo>
```

### C_ClubFinder.ReturnMatchingGuildList

```lua
C_ClubFinder.ReturnMatchingGuildList() -> recruitingClubs: table<RecruitingClubInfo>
```

### C_ClubFinder.ReturnPendingClubApplicantList

```lua
C_ClubFinder.ReturnPendingClubApplicantList(clubId: ClubId) -> info: table<ClubFinderApplicantInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SendChatWhisper

```lua
C_ClubFinder.SendChatWhisper(clubFinderGUID: WOWGUID, playerGUID: WOWGUID, applicantType: ClubFinderRequestType, name: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SetAllRecruitmentSettings

```lua
C_ClubFinder.SetAllRecruitmentSettings(value: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SetPlayerApplicantLocaleFlags

```lua
C_ClubFinder.SetPlayerApplicantLocaleFlags(localeFlags: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SetPlayerApplicantSettings

```lua
C_ClubFinder.SetPlayerApplicantSettings(index: number, checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SetRecruitmentLocale

```lua
C_ClubFinder.SetRecruitmentLocale(locale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.SetRecruitmentSettings

```lua
C_ClubFinder.SetRecruitmentSettings(index: number, checked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ClubFinder.ShouldShowClubFinder

```lua
C_ClubFinder.ShouldShowClubFinder() -> shouldShow: bool
```

## Events

### CLUB_FINDER_APPLICANT_INVITE_RECIEVED

Payload: `clubFinderGUIDs: table<WOWGUID>`  
Flags: SynchronousEvent  

### CLUB_FINDER_APPLICATIONS_UPDATED

Payload: `type: ClubFinderRequestType, clubFinderGUIDs: table<WOWGUID>`  
Flags: SynchronousEvent  

### CLUB_FINDER_CAN_WHISPER_APPLICANT

Payload: `applicant: WOWGUID`  
Flags: SynchronousEvent  

### CLUB_FINDER_CLUB_LIST_RETURNED

Payload: `type: ClubFinderRequestType`  
Flags: SynchronousEvent  
Signals when we recieve club data that can be used

### CLUB_FINDER_CLUB_REPORTED

Payload: `type: ClubFinderRequestType, clubFinderGUID: WOWGUID`  
Flags: SynchronousEvent  
Sends an update to the UI about a reported guild or community.

### CLUB_FINDER_COMMUNITY_OFFLINE_JOIN

Payload: `clubId: ClubId`  
Flags: SynchronousEvent  
Signals to the UI that you (the player) have joined a community offline.

### CLUB_FINDER_ENABLED_OR_DISABLED

Payload: `none`  
Flags: SynchronousEvent  
Sends an update to the UI that the club finder feature has been enabled or disabled.

### CLUB_FINDER_GUILD_REALM_NAME_UPDATED

Payload: `clubFinderGUID: WOWGUID, realmName: string`  
Flags: SynchronousEvent  
Sends an update to the UI if the realm name of a guild was found asynchronously.

### CLUB_FINDER_LINKED_CLUB_RETURNED

Payload: `clubInfo: RecruitingClubInfo`  
Flags: SynchronousEvent  
When a player clicks a club link, this returns that information back about the club they clicked on

### CLUB_FINDER_MEMBERSHIP_LIST_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### CLUB_FINDER_PLAYER_PENDING_LIST_RECIEVED

Payload: `type: ClubFinderRequestType`  
Flags: SynchronousEvent  

### CLUB_FINDER_POST_UPDATED

Payload: `clubFinderGUIDs: table<WOWGUID>`  
Flags: SynchronousEvent  

### CLUB_FINDER_RECRUIT_LIST_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### CLUB_FINDER_RECRUITMENT_POST_RETURNED

Payload: `type: ClubFinderRequestType`  
Flags: SynchronousEvent  
Signals when our recruitment post we just requested is returned back to us

### CLUB_FINDER_RECRUITS_UPDATED

Payload: `type: ClubFinderRequestType`  
Flags: SynchronousEvent  
Signals when we recieve the recruits list

## Tables

### ClubFinderApplicationUpdateType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| AcceptInvite | 1 |
| DeclineInvite | 2 |
| Cancel | 3 |

### ClubFinderClubPostingStatusFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| NeedsCacheUpdate | 1 |
| ForceDescriptionChange | 2 |
| ForceNameChange | 3 |
| UnderReview | 4 |
| Banned | 5 |
| FakePost | 6 |
| PendingDelete | 7 |
| PostDelisted | 8 |

### ClubFinderDisableReason (Enumeration)

| Name | Value |
|---|---|
| Muted | 0 |
| Silenced | 1 |
| VeteranTrial | 2 |

### ClubFinderPostingReportType (Enumeration)

| Name | Value |
|---|---|
| PostersName | 0 |
| ClubName | 1 |
| PostingDescription | 2 |
| ApplicantsName | 3 |
| JoinNote | 4 |

### ClubFinderRequestType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Guild | 1 |
| Community | 2 |
| All | 3 |

### ClubFinderSettingFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Dungeons | 1 |
| Raids | 2 |
| PvP | 3 |
| RP | 4 |
| Social | 5 |
| Small | 6 |
| Medium | 7 |
| Large | 8 |
| Tank | 9 |
| Healer | 10 |
| Damage | 11 |
| EnableListing | 12 |
| MaxLevelOnly | 13 |
| AutoAccept | 14 |
| FactionHorde | 15 |
| FactionAlliance | 16 |
| FactionNeutral | 17 |
| SortRelevance | 18 |
| SortMemberCount | 19 |
| SortNewest | 20 |
| LanguageReserved1 | 21 |
| LanguageReserved2 | 22 |
| LanguageReserved3 | 23 |
| LanguageReserved4 | 24 |
| LanguageReserved5 | 25 |

### PlayerClubRequestStatus (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Pending | 1 |
| AutoApproved | 2 |
| Declined | 3 |
| Approved | 4 |
| Joined | 5 |
| JoinedAnother | 6 |
| Canceled | 7 |

### ClubFinderApplicantInfo (Structure)

- `clubFinderGUID: WOWGUID`
- `playerGUID: WOWGUID`
- `closed: number`
- `name: string`
- `message: string`
- `level: number`
- `classID: number`
- `ilvl: number`
- `specIds: table<number>`
- `requestStatus: PlayerClubRequestStatus`
- `lookupSuccess: bool`
- `lastUpdatedTime: BigInteger`
- `faction: number`

### ClubSettingsInfo (Structure)

- `playStyleDungeon: bool`
- `playStyleRaids: bool`
- `playStylePvp: bool`
- `playStyleRP: bool`
- `playStyleSocial: bool`
- `roleTank: bool`
- `roleHealer: bool`
- `roleDps: bool`
- `sizeSmall: bool`
- `sizeMedium: bool`
- `sizeLarge: bool`
- `maxLevelOnly: bool`
- `enableListing: bool`
- `sortRelevance: bool`
- `sortMembers: bool`
- `sortNewest: bool`
- `autoAccept: bool`
- `crossFaction: bool`

### RecruitingClubInfo (Structure)

- `clubFinderGUID: WOWGUID`
- `numActiveMembers: number`
- `name: string`
- `comment: string`
- `guildLeader: string`
- `isGuild: bool`
- `emblemInfo: number`
- `tabardInfo: GuildTabardInfo?`
- `recruitingSpecIds: table<number>`
- `recruitmentFlags: number`
- `localeSet: bool`
- `recruitmentLocale: number`
- `minILvl: number`
- `cached: number`
- `cacheRequested: number`
- `lastPosterGUID: WOWGUID`
- `clubId: ClubId`
- `lastUpdatedTime: BigInteger`
- `isCrossFaction: bool`
- `realmName: string?`
