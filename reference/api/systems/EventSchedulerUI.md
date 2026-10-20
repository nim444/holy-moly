# EventSchedulerUI

Type: System  
Namespace: `C_EventScheduler`  
Environment: All

## Functions

### C_EventScheduler.CanShowEvents

```lua
C_EventScheduler.CanShowEvents() -> canShow: bool
```

Returns true if there are any events eligible to show for the player.

### C_EventScheduler.ClearReminder

```lua
C_EventScheduler.ClearReminder(eventKey: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Clears reminder on a scheduled event. Must use endTime to identify which specific instance in the case of repeating ones.

### C_EventScheduler.GetActiveContinentName

```lua
C_EventScheduler.GetActiveContinentName() -> name: string
```

Flags: MayReturnNothing  

Returns the name of the continent with current events

### C_EventScheduler.GetEventUiMapID

```lua
C_EventScheduler.GetEventUiMapID(areaPoiID: number) -> uiMapID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Will try to figure out a UiMap for an areaPOI.

### C_EventScheduler.GetEventZoneName

```lua
C_EventScheduler.GetEventZoneName(areaPoiID: number) -> name: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Will try to figure out a map zone name for an areaPOI

### C_EventScheduler.GetOngoingEvents

```lua
C_EventScheduler.GetOngoingEvents() -> events: table<OngoingEventInfo>
```

Flags: MayReturnNothing  

Will request data from the server on a throttle

### C_EventScheduler.GetScheduledEvents

```lua
C_EventScheduler.GetScheduledEvents() -> events: table<ScheduledEventInfo>
```

Flags: MayReturnNothing  

Will request data from the server on a throttle

### C_EventScheduler.HasData

```lua
C_EventScheduler.HasData() -> hasData: bool
```

True if the server sent a list, even if the list had 0 events.

### C_EventScheduler.HasSavedReminders

```lua
C_EventScheduler.HasSavedReminders() -> hasSavedReminders: bool
```

Returns whether there are any event reminders saved. Can include reminders that have expired since set and haven't gotten removed yet. Has to be called after cvars are loaded.

### C_EventScheduler.RequestEvents

```lua
C_EventScheduler.RequestEvents()
```

Requests events from the server, subject to throttle

### C_EventScheduler.SetReminder

```lua
C_EventScheduler.SetReminder(eventKey: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets reminder on a scheduled event. Must use endTime to identify which specific instance in the case of repeating ones.

## Events

### EVENT_SCHEDULER_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### EventDisplayInfo (Structure)

- `hideTimeLeft: bool = false`
- `hideDescription: bool = false`
- `overrideAtlas: textureAtlas?`
- `overrideTooltipWidgetSetID: number?`

### OngoingEventInfo (Structure)

- `areaPoiID: number`
- `rewardsClaimed: bool = false`
- `displayInfo: EventDisplayInfo`

### ScheduledEventInfo (Structure)

- `eventKey: string`
- `eventID: number`
- `areaPoiID: number`
- `startTime: time_t`
- `endTime: time_t`
- `duration: time_t`
- `hasReminder: bool = false`
- `rewardsClaimed: bool = false`
- `displayInfo: EventDisplayInfo`
