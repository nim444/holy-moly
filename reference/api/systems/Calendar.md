# Calendar

Type: System  
Namespace: `C_Calendar`  
Environment: All

## Functions

### C_Calendar.AddEvent

```lua
C_Calendar.AddEvent()
```

Flags: HasRestrictions  

### C_Calendar.AreNamesReady

```lua
C_Calendar.AreNamesReady() -> ready: bool
```

### C_Calendar.CanAddEvent

```lua
C_Calendar.CanAddEvent() -> canAddEvent: bool
```

### C_Calendar.CanSendInvite

```lua
C_Calendar.CanSendInvite() -> canSendInvite: bool
```

### C_Calendar.CloseEvent

```lua
C_Calendar.CloseEvent()
```

### C_Calendar.ContextMenuEventCanComplain

```lua
C_Calendar.ContextMenuEventCanComplain(offsetMonths: number, monthDay: luaIndex, eventIndex: luaIndex) -> canComplain: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.ContextMenuEventCanEdit

```lua
C_Calendar.ContextMenuEventCanEdit(offsetMonths: number, monthDay: luaIndex, eventIndex: luaIndex) -> canEdit: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.ContextMenuEventCanRemove

```lua
C_Calendar.ContextMenuEventCanRemove(offsetMonths: number, monthDay: luaIndex, eventIndex: luaIndex) -> canRemove: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.ContextMenuEventClipboard

```lua
C_Calendar.ContextMenuEventClipboard() -> exists: bool
```

### C_Calendar.ContextMenuEventCopy

```lua
C_Calendar.ContextMenuEventCopy()
```

### C_Calendar.ContextMenuEventGetCalendarType

```lua
C_Calendar.ContextMenuEventGetCalendarType() -> calendarType: string?
```

### C_Calendar.ContextMenuEventPaste

```lua
C_Calendar.ContextMenuEventPaste(offsetMonths: number, monthDay: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.ContextMenuEventRemove

```lua
C_Calendar.ContextMenuEventRemove()
```

### C_Calendar.ContextMenuEventSignUp

```lua
C_Calendar.ContextMenuEventSignUp()
```

### C_Calendar.ContextMenuGetEventIndex

```lua
C_Calendar.ContextMenuGetEventIndex() -> info: CalendarEventIndexInfo
```

Flags: MayReturnNothing  

### C_Calendar.ContextMenuInviteAvailable

```lua
C_Calendar.ContextMenuInviteAvailable()
```

### C_Calendar.ContextMenuInviteDecline

```lua
C_Calendar.ContextMenuInviteDecline()
```

### C_Calendar.ContextMenuInviteRemove

```lua
C_Calendar.ContextMenuInviteRemove()
```

### C_Calendar.ContextMenuInviteTentative

```lua
C_Calendar.ContextMenuInviteTentative()
```

### C_Calendar.ContextMenuSelectEvent

```lua
C_Calendar.ContextMenuSelectEvent(offsetMonths: number, monthDay: luaIndex, eventIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.CreateCommunitySignUpEvent

```lua
C_Calendar.CreateCommunitySignUpEvent()
```

### C_Calendar.CreateGuildAnnouncementEvent

```lua
C_Calendar.CreateGuildAnnouncementEvent()
```

### C_Calendar.CreateGuildSignUpEvent

```lua
C_Calendar.CreateGuildSignUpEvent()
```

### C_Calendar.CreatePlayerEvent

```lua
C_Calendar.CreatePlayerEvent()
```

### C_Calendar.EventAvailable

```lua
C_Calendar.EventAvailable()
```

### C_Calendar.EventCanEdit

```lua
C_Calendar.EventCanEdit() -> canEdit: bool
```

### C_Calendar.EventClearAutoApprove

```lua
C_Calendar.EventClearAutoApprove()
```

### C_Calendar.EventClearLocked

```lua
C_Calendar.EventClearLocked()
```

### C_Calendar.EventClearModerator

```lua
C_Calendar.EventClearModerator(inviteIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventDecline

```lua
C_Calendar.EventDecline()
```

### C_Calendar.EventGetCalendarType

```lua
C_Calendar.EventGetCalendarType() -> calendarType: string?
```

### C_Calendar.EventGetClubId

```lua
C_Calendar.EventGetClubId() -> info: ClubId?
```

### C_Calendar.EventGetInvite

```lua
C_Calendar.EventGetInvite(eventIndex: luaIndex) -> info: CalendarEventInviteInfo
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.EventGetInviteResponseTime

```lua
C_Calendar.EventGetInviteResponseTime(eventIndex: luaIndex) -> time: CalendarTime
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.EventGetInviteSortCriterion

```lua
C_Calendar.EventGetInviteSortCriterion() -> criterion: string, reverse: bool
```

### C_Calendar.EventGetSelectedInvite

```lua
C_Calendar.EventGetSelectedInvite() -> inviteIndex: luaIndex?
```

### C_Calendar.EventGetStatusOptions

```lua
C_Calendar.EventGetStatusOptions(eventIndex: luaIndex) -> options: table<CalendarEventStatusOption>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventGetTextures

```lua
C_Calendar.EventGetTextures(eventType: CalendarEventType) -> textures: table<CalendarEventTextureInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventGetTypes

```lua
C_Calendar.EventGetTypes() -> types: table<string>
```

### C_Calendar.EventGetTypesDisplayOrdered

```lua
C_Calendar.EventGetTypesDisplayOrdered() -> infos: table<CalendarEventTypeDisplayInfo>
```

### C_Calendar.EventHasPendingInvite

```lua
C_Calendar.EventHasPendingInvite() -> hasPendingInvite: bool
```

### C_Calendar.EventHaveSettingsChanged

```lua
C_Calendar.EventHaveSettingsChanged() -> haveSettingsChanged: bool
```

### C_Calendar.EventInvite

```lua
C_Calendar.EventInvite(name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventRemoveInvite

```lua
C_Calendar.EventRemoveInvite(inviteIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventRemoveInviteByGuid

```lua
C_Calendar.EventRemoveInviteByGuid(guid: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSelectInvite

```lua
C_Calendar.EventSelectInvite(inviteIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetAutoApprove

```lua
C_Calendar.EventSetAutoApprove()
```

### C_Calendar.EventSetClubId

```lua
C_Calendar.EventSetClubId(clubId: ClubId?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetDate

```lua
C_Calendar.EventSetDate(month: luaIndex, monthDay: luaIndex, year: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetDescription

```lua
C_Calendar.EventSetDescription(description: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetInviteStatus

```lua
C_Calendar.EventSetInviteStatus(eventIndex: luaIndex, status: CalendarStatus)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetLocked

```lua
C_Calendar.EventSetLocked()
```

### C_Calendar.EventSetModerator

```lua
C_Calendar.EventSetModerator(inviteIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetTextureID

```lua
C_Calendar.EventSetTextureID(textureIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetTime

```lua
C_Calendar.EventSetTime(hour: number, minute: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetTitle

```lua
C_Calendar.EventSetTitle(title: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSetType

```lua
C_Calendar.EventSetType(typeIndex: CalendarEventType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventSignUp

```lua
C_Calendar.EventSignUp()
```

### C_Calendar.EventSortInvites

```lua
C_Calendar.EventSortInvites(criterion: cstring, reverse: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.EventTentative

```lua
C_Calendar.EventTentative()
```

### C_Calendar.GetClubCalendarEvents

```lua
C_Calendar.GetClubCalendarEvents(clubId: ClubId, startTime: CalendarTime, endTime: CalendarTime) -> events: table<CalendarDayEvent>
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### C_Calendar.GetDayEvent

```lua
C_Calendar.GetDayEvent(monthOffset: number, monthDay: luaIndex, index: luaIndex) -> event: CalendarDayEvent
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.GetDefaultGuildFilter

```lua
C_Calendar.GetDefaultGuildFilter() -> info: CalendarGuildFilterInfo
```

### C_Calendar.GetEventIndex

```lua
C_Calendar.GetEventIndex() -> info: CalendarEventIndexInfo
```

Flags: MayReturnNothing  

### C_Calendar.GetEventIndexInfo

```lua
C_Calendar.GetEventIndexInfo(eventID: CalendarEventID, monthOffset: number?, monthDay: number?) -> eventIndexInfo: CalendarEventIndexInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.GetEventInfo

```lua
C_Calendar.GetEventInfo() -> info: CalendarEventInfo
```

Flags: MayReturnNothing  

### C_Calendar.GetFirstPendingInvite

```lua
C_Calendar.GetFirstPendingInvite(offsetMonths: number, monthDay: luaIndex) -> firstPendingInvite: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.GetGuildEventInfo

```lua
C_Calendar.GetGuildEventInfo(index: luaIndex) -> info: CalendarGuildEventInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.GetGuildEventSelectionInfo

```lua
C_Calendar.GetGuildEventSelectionInfo(index: luaIndex) -> info: CalendarEventIndexInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.GetHolidayInfo

```lua
C_Calendar.GetHolidayInfo(monthOffset: number, monthDay: luaIndex, index: luaIndex) -> event: CalendarHolidayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.GetMaxCreateDate

```lua
C_Calendar.GetMaxCreateDate() -> maxCreateDate: CalendarTime
```

### C_Calendar.GetMinDate

```lua
C_Calendar.GetMinDate() -> minDate: CalendarTime
```

### C_Calendar.GetMonthInfo

```lua
C_Calendar.GetMonthInfo(offsetMonths: number = 0) -> monthInfo: CalendarMonthInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.GetNextClubId

```lua
C_Calendar.GetNextClubId() -> clubId: ClubId?
```

### C_Calendar.GetNumDayEvents

```lua
C_Calendar.GetNumDayEvents(offsetMonths: number, monthDay: luaIndex) -> numDayEvents: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.GetNumGuildEvents

```lua
C_Calendar.GetNumGuildEvents() -> numGuildEvents: number
```

### C_Calendar.GetNumInvites

```lua
C_Calendar.GetNumInvites() -> num: number
```

### C_Calendar.GetNumPendingInvites

```lua
C_Calendar.GetNumPendingInvites() -> num: number
```

### C_Calendar.GetRaidInfo

```lua
C_Calendar.GetRaidInfo(offsetMonths: number, monthDay: luaIndex, eventIndex: luaIndex) -> info: CalendarRaidInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Calendar.IsActionPending

```lua
C_Calendar.IsActionPending() -> actionPending: bool
```

### C_Calendar.IsEventOpen

```lua
C_Calendar.IsEventOpen() -> isOpen: bool
```

### C_Calendar.MassInviteCommunity

```lua
C_Calendar.MassInviteCommunity(clubId: ClubId, minLevel: number, maxLevel: number, maxRankOrder: luaIndex?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.MassInviteGuild

```lua
C_Calendar.MassInviteGuild(minLevel: number, maxLevel: number, maxRankOrder: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.OpenCalendar

```lua
C_Calendar.OpenCalendar()
```

### C_Calendar.OpenEvent

```lua
C_Calendar.OpenEvent(offsetMonths: number, monthDay: luaIndex, index: luaIndex) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.RemoveEvent

```lua
C_Calendar.RemoveEvent()
```

### C_Calendar.SetAbsMonth

```lua
C_Calendar.SetAbsMonth(month: luaIndex, year: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.SetMonth

```lua
C_Calendar.SetMonth(offsetMonths: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.SetNextClubId

```lua
C_Calendar.SetNextClubId(clubId: ClubId?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Calendar.UpdateEvent

```lua
C_Calendar.UpdateEvent()
```

Flags: HasRestrictions  

## Events

### CALENDAR_ACTION_PENDING

Payload: `pending: bool`  
Flags: SynchronousEvent  

### CALENDAR_CLOSE_EVENT

Payload: `none`  
Flags: SynchronousEvent  

### CALENDAR_EVENT_ALARM

Payload: `title: cstring, hour: number, minute: number`  
Flags: SynchronousEvent  

### CALENDAR_NEW_EVENT

Payload: `isCopy: bool`  
Flags: SynchronousEvent  

### CALENDAR_OPEN_EVENT

Payload: `calendarType: cstring`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_ERROR

Payload: `errorReason: cstring`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_ERROR_WITH_COUNT

Payload: `errorReason: cstring, count: number`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_ERROR_WITH_PLAYER_NAME

Payload: `errorReason: cstring, playerName: cstring`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_EVENT

Payload: `none`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_EVENT_LIST

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### CALENDAR_UPDATE_GUILD_EVENTS

Payload: `none`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_INVITE_LIST

Payload: `hasCompleteList: bool?`  
Flags: SynchronousEvent  

### CALENDAR_UPDATE_PENDING_INVITES

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### CalendarDayEvent (Structure)

- `eventID: CalendarEventID`
- `title: string`
- `isCustomTitle: bool`
- `startTime: CalendarTime`
- `endTime: CalendarTime`
- `calendarType: cstring`
- `sequenceType: cstring`
- `eventType: CalendarEventType`
- `iconTexture: fileID?`
- `modStatus: cstring`
- `inviteStatus: CalendarStatus`
- `invitedBy: string`
- `difficulty: number`
- `inviteType: CalendarInviteType`
- `sequenceIndex: luaIndex`
- `numSequenceDays: number`
- `difficultyName: cstring`
- `dontDisplayBanner: bool`
- `dontDisplayEnd: bool`
- `clubID: ClubId`
- `isLocked: bool`

### CalendarEventIndexInfo (Structure)

- `offsetMonths: number`
- `monthDay: luaIndex`
- `eventIndex: luaIndex`

### CalendarEventInfo (Structure)

- `title: string`
- `description: string`
- `creator: string?`
- `eventType: CalendarEventType`
- `repeatOption: CalendarEventRepeatOptions`
- `maxSize: number`
- `textureIndex: luaIndex?`
- `time: CalendarTime`
- `lockoutTime: CalendarTime`
- `isLocked: bool`
- `isAutoApprove: bool`
- `hasPendingInvite: bool`
- `inviteStatus: CalendarStatus?`
- `inviteType: CalendarInviteType?`
- `calendarType: string`
- `communityName: string?`

### CalendarEventInviteInfo (Structure)

- `name: string?`
- `level: number`
- `className: string?`
- `classFilename: string?`
- `inviteStatus: CalendarStatus?`
- `modStatus: string?`
- `inviteIsMine: bool`
- `type: CalendarInviteType`
- `notes: string`
- `classID: number?`
- `guid: WOWGUID`

### CalendarEventStatusOption (Structure)

- `status: CalendarStatus`
- `statusString: string`

### CalendarEventTextureInfo (Structure)

- `title: string`
- `iconTexture: fileID`
- `expansionLevel: number`
- `difficultyId: number?`
- `mapId: number?`
- `isLfr: bool?`

### CalendarEventTypeDisplayInfo (Structure)

- `displayString: string`
- `eventType: CalendarEventType`

### CalendarGuildEventInfo (Structure)

- `eventID: CalendarEventID`
- `year: number`
- `month: luaIndex`
- `monthDay: luaIndex`
- `weekday: luaIndex`
- `hour: number`
- `minute: number`
- `eventType: CalendarEventType`
- `title: string`
- `calendarType: string`
- `texture: fileID`
- `inviteStatus: CalendarStatus`
- `clubID: ClubId`

### CalendarGuildFilterInfo (Structure)

- `minLevel: number`
- `maxLevel: number`
- `rank: number`

### CalendarHolidayInfo (Structure)

- `name: cstring`
- `description: cstring`
- `texture: fileID`
- `startTime: CalendarTime?`
- `endTime: CalendarTime?`

### CalendarMonthInfo (Structure)

- `month: luaIndex`
- `year: number`
- `numDays: number`
- `firstWeekday: luaIndex`

### CalendarRaidInfo (Structure)

- `name: string`
- `calendarType: string`
- `raidID: number`
- `time: CalendarTime`
- `difficulty: number`
- `difficultyName: string?`
