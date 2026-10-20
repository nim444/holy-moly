# CalendarConstants

Type: None

## Tables

### CalendarCommandType (Enumeration)

| Name | Value |
|---|---|
| Create | 0 |
| Invite | 1 |
| Rsvp | 2 |
| RemoveInvite | 3 |
| RemoveEvent | 4 |
| Status | 5 |
| ModeratorStatus | 6 |
| GetCalendar | 7 |
| GetEvent | 8 |
| UpdateEvent | 9 |
| Complain | 10 |
| Notes | 11 |

### CalendarErrorType (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| CommunityEventsExceeded | 1 |
| EventsExceeded | 2 |
| SelfInvitesExceeded | 3 |
| OtherInvitesExceeded | 4 |
| NoPermission | 5 |
| EventInvalid | 6 |
| NotInvited | 7 |
| UnknownError | 8 |
| NotInGuild | 9 |
| NotInCommunity | 10 |
| TargetAlreadyInvited | 11 |
| NameNotFound | 12 |
| WrongFaction | 13 |
| Ignored | 14 |
| InvitesExceeded | 15 |
| InvalidMaxSize | 16 |
| InvalidDate | 17 |
| InvalidTime | 18 |
| NoInvites | 19 |
| NeedsTitle | 20 |
| EventPassed | 21 |
| EventLocked | 22 |
| DeleteCreatorFailed | 23 |
| DataAlreadySet | 24 |
| CalendarDisabled | 25 |
| RestrictedAccount | 26 |
| ArenaEventsExceeded | 27 |
| RestrictedLevel | 28 |
| Squelched | 29 |
| NoInvite | 30 |
| ComplaintDisabled | 31 |
| ComplaintSelf | 32 |
| ComplaintSameGuild | 33 |
| ComplaintGm | 34 |
| ComplaintLimit | 35 |
| ComplaintNotFound | 36 |
| EventWrongServer | 37 |
| NoCommunityInvites | 38 |
| InvalidSignup | 39 |
| NoModerator | 40 |
| ModeratorRestricted | 41 |
| InvalidNotes | 42 |
| InvalidTitle | 43 |
| InvalidDescription | 44 |
| InvalidClub | 45 |
| CreatorNotFound | 46 |
| EventThrottled | 47 |
| InviteThrottled | 48 |
| Internal | 49 |
| ComplaintAdded | 50 |

### CalendarEventBits (Enumeration)

| Name | Value |
|---|---|
| Player | 1 |
| GuildDeprecated | 2 |
| System | 4 |
| Holiday | 8 |
| Locked | 16 |
| AutoApprove | 32 |
| CommunityAnnouncement | 64 |
| RaidLockout | 128 |
| ArenaDeprecated | 256 |
| RaidResetDeprecated | 512 |
| CommunitySignup | 1024 |
| GuildSignup | 2048 |
| CommunityWide | 3136 |
| PlayerCreated | 3395 |
| CantComplain | 3788 |

### CalendarEventRepeatOptions (Enumeration)

| Name | Value |
|---|---|
| Never | 0 |
| Weekly | 1 |
| Biweekly | 2 |
| Monthly | 3 |

### CalendarEventType (Enumeration)

| Name | Value |
|---|---|
| Raid | 0 |
| Dungeon | 1 |
| PvP | 2 |
| Meeting | 3 |
| Other | 4 |
| HeroicDeprecated | 5 |

### CalendarFilterFlags (Enumeration)

| Name | Value |
|---|---|
| WeeklyHoliday | 1 |
| Darkmoon | 2 |
| Battleground | 4 |
| RaidLockout | 8 |
| RaidReset | 16 |

### CalendarGetEventType (Enumeration)

| Name | Value |
|---|---|
| Get | 0 |
| Add | 1 |
| Copy | 2 |

### CalendarHolidayFilterType (Enumeration)

| Name | Value |
|---|---|
| Weekly | 0 |
| Darkmoon | 1 |
| Battleground | 2 |

### CalendarInviteBits (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| PendingInvite | 1 |
| Moderator | 2 |
| Creator | 4 |
| Signup | 8 |

### CalendarInviteSortType (Enumeration)

| Name | Value |
|---|---|
| Name | 0 |
| Level | 1 |
| Class | 2 |
| Status | 3 |
| Party | 4 |
| Notes | 5 |

### CalendarInviteType (Enumeration)

| Name | Value |
|---|---|
| Normal | 0 |
| Signup | 1 |

### CalendarModeratorStatus (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Moderator | 1 |
| Creator | 2 |

### CalendarStatus (Enumeration)

| Name | Value |
|---|---|
| Invited | 0 |
| Available | 1 |
| Declined | 2 |
| Confirmed | 3 |
| Out | 4 |
| Standby | 5 |
| Signedup | 6 |
| NotSignedup | 7 |
| Tentative | 8 |

### CalendarTexturesType (Enumeration)

| Name | Value |
|---|---|
| Dungeons | 0 |
| Raid | 1 |

### CalendarType (Enumeration)

| Name | Value |
|---|---|
| Player | 0 |
| Community | 1 |
| RaidLockout | 2 |
| RaidResetDeprecated | 3 |
| Holiday | 4 |
| HolidayWeekly | 5 |
| HolidayDarkmoon | 6 |
| HolidayBattleground | 7 |

### CalendarWebActionType (Enumeration)

| Name | Value |
|---|---|
| Accept | 0 |
| Decline | 1 |
| Remove | 2 |
| ReportSpam | 3 |
| Signup | 4 |
| Tentative | 5 |
| TentativeSignup | 6 |

### HolidayCalendarFlags (Enumeration)

| Name | Value |
|---|---|
| Alliance | 1 |
| Horde | 2 |

### HolidayFlags (Enumeration)

| Name | Value |
|---|---|
| IsRegionwide | 1 |
| DontShowInCalendar | 2 |
| DontDisplayEnd | 4 |
| DontDisplayBanner | 8 |
| NotAvailableClientSide | 16 |
| DurationUseMinutes | 32 |
| BeginEventOnlyOnStageChange | 64 |
| StagesUseDatetimes | 128 |

### CalendarGetEventTypeConstants (Constants)

| Name | Type | Value |
|---|---|---|
| DEFAULT_CALENDAR_GET_EVENT_TYPE | CalendarGetEventType | Enum.CalendarGetEventType.Get |
