# EncounterTimeline

Type: System  
Namespace: `C_EncounterTimeline`  
Environment: All

## Functions

### C_EncounterTimeline.AddEditModeEvents

```lua
C_EncounterTimeline.AddEditModeEvents() -> loopTimerDuration: Seconds
```

Adds a predefined set of events to the timeline for display in Edit Mode.

### C_EncounterTimeline.AddScriptEvent

```lua
C_EncounterTimeline.AddScriptEvent(eventInfo: EncounterTimelineScriptEventRequest) -> eventID: EncounterTimelineEventID
```

Secret: SecretArguments=NotAllowed  

Adds a custom event to the timeline.

### C_EncounterTimeline.CancelAllScriptEvents

```lua
C_EncounterTimeline.CancelAllScriptEvents()
```

Cancels all custom timeline events, removing them from the timeline.

### C_EncounterTimeline.CancelEditModeEvents

```lua
C_EncounterTimeline.CancelEditModeEvents()
```

Removes all Edit Mode events from the timeline.

### C_EncounterTimeline.CancelScriptEvent

```lua
C_EncounterTimeline.CancelScriptEvent(eventID: EncounterTimelineEventID)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Cancels a custom timeline event, removing it from the timeline.

### C_EncounterTimeline.FinishScriptEvent

```lua
C_EncounterTimeline.FinishScriptEvent(eventID: EncounterTimelineEventID)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Finishes a custom timeline event, removing it from the timeline.

### C_EncounterTimeline.GetCurrentTime

```lua
C_EncounterTimeline.GetCurrentTime() -> currentTime: Seconds
```

Returns the current timestamp used for rendering the timeline display.

### C_EncounterTimeline.GetEventColor

```lua
C_EncounterTimeline.GetEventColor(eventID: EncounterTimelineEventID, overrideTrigger: EncounterEventColorTrigger?) -> color: colorRGBA
```

Secret: SecretWhenEncounterEvent, SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns the current color used to render timeline event.

### C_EncounterTimeline.GetEventCountBySource

```lua
C_EncounterTimeline.GetEventCountBySource(source: EncounterTimelineEventSource) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the number of present events in the timeline by their source type.

### C_EncounterTimeline.GetEventHighlightTime

```lua
C_EncounterTimeline.GetEventHighlightTime() -> highlightTime: Seconds
```

Returns the duration at which timeline events will be highlighted for imminency.

### C_EncounterTimeline.GetEventInfo

```lua
C_EncounterTimeline.GetEventInfo(eventID: EncounterTimelineEventID) -> info: EncounterTimelineEventInfo
```

Secret: SecretWhenEncounterEvent, SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns information about a timeline event. This data is generally expected to be static for the lifetime of an event.

### C_EncounterTimeline.GetEventList

```lua
C_EncounterTimeline.GetEventList() -> events: table<EncounterTimelineEventID>
```

Returns an unsorted list of event IDs present in the timeline.

### C_EncounterTimeline.GetEventState

```lua
C_EncounterTimeline.GetEventState(eventID: EncounterTimelineEventID) -> state: EncounterTimelineEventState
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns the current state of a timeline event.

### C_EncounterTimeline.GetEventTimeElapsed

```lua
C_EncounterTimeline.GetEventTimeElapsed(eventID: EncounterTimelineEventID) -> timeElapsed: Seconds
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns the elapsed duration of a timeline event.

### C_EncounterTimeline.GetEventTimeRemaining

```lua
C_EncounterTimeline.GetEventTimeRemaining(eventID: EncounterTimelineEventID) -> timeRemaining: Seconds
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns the remaining duration of a timeline event.

### C_EncounterTimeline.GetEventTimer

```lua
C_EncounterTimeline.GetEventTimer(eventID: EncounterTimelineEventID) -> duration: LuaDurationObject?
```

Secret: SecretArguments=NotAllowed  

Returns a Duration object that tracks the elapsed duration of a timeline event. This object tracks the range [0, duration] of the event and automatically pauses its progression based on event state.

### C_EncounterTimeline.GetEventTrack

```lua
C_EncounterTimeline.GetEventTrack(eventID: EncounterTimelineEventID) -> track: EncounterTimelineTrack, trackSortIndex: luaIndex?
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns information about the position of an event on the timeline.

### C_EncounterTimeline.GetSortedEventList

```lua
C_EncounterTimeline.GetSortedEventList(maxEventCount: number?, maxEventDuration: Seconds?, excludeTerminalStates: bool = true, excludeHiddenEvents: bool = true) -> events: table<EncounterTimelineEventID>
```

Secret: SecretArguments=NotAllowed  

Returns a sorted list of event IDs present in the timeline from shortest to longest remaining durations, meeting the requirements of the specified filters.

### C_EncounterTimeline.GetTrackInfo

```lua
C_EncounterTimeline.GetTrackInfo(track: EncounterTimelineTrack) -> trackInfo: EncounterTimelineTrackInfo
```

Secret: SecretArguments=NotAllowed  

Returns information for a single timeline track.

### C_EncounterTimeline.GetTrackList

```lua
C_EncounterTimeline.GetTrackList() -> tracks: table<EncounterTimelineTrackInfo>
```

Returns information about all timeline tracks.

### C_EncounterTimeline.GetTrackMaxEventDuration

```lua
C_EncounterTimeline.GetTrackMaxEventDuration(track: EncounterTimelineTrack) -> maxEventDuration: Seconds
```

Secret: SecretArguments=NotAllowed  

Returns the maximum permitted event duration on a single timeline track.

### C_EncounterTimeline.GetTrackType

```lua
C_EncounterTimeline.GetTrackType(track: EncounterTimelineTrack) -> trackType: EncounterTimelineTrackType
```

Secret: SecretArguments=NotAllowed  

Returns the type of a single timeline track.

### C_EncounterTimeline.GetViewType

```lua
C_EncounterTimeline.GetViewType() -> viewType: EncounterTimelineViewType
```

Returns the current view type of the timeline.

### C_EncounterTimeline.HasActiveEvents

```lua
C_EncounterTimeline.HasActiveEvents() -> hasActiveEvents: bool
```

Returns true if the timeline contains any events in the active state.

### C_EncounterTimeline.HasAnyEvents

```lua
C_EncounterTimeline.HasAnyEvents() -> hasAnyEvents: bool
```

Returns true if the timeline contains any events in any state.

### C_EncounterTimeline.HasPausedEvents

```lua
C_EncounterTimeline.HasPausedEvents() -> hasPausedEvents: bool
```

Returns true if the timeline contains any events in the paused state.

### C_EncounterTimeline.HasVisibleEvents

```lua
C_EncounterTimeline.HasVisibleEvents() -> hasVisibleEvents: bool
```

Returns true if the timeline contains any events that are on visible tracks.

### C_EncounterTimeline.IsEventBlocked

```lua
C_EncounterTimeline.IsEventBlocked(eventID: EncounterTimelineEventID) -> blocked: bool
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Returns true if the event is in a 'blocked' state, where the cast for this event may not occur due to encounter conditions not being met.

### C_EncounterTimeline.IsFeatureAvailable

```lua
C_EncounterTimeline.IsFeatureAvailable() -> isAvailable: bool
```

Returns true if the encounter timeline feature is available on this client.

### C_EncounterTimeline.IsFeatureEnabled

```lua
C_EncounterTimeline.IsFeatureEnabled() -> isAvailableAndEnabled: bool
```

Returns true if the encounter timeline feature has been enabled by the player. This function will always return false if the feature is not available.

### C_EncounterTimeline.PauseScriptEvent

```lua
C_EncounterTimeline.PauseScriptEvent(eventID: EncounterTimelineEventID)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Pauses a custom timeline event, hiding it from the timeline. A paused event can later be resumed to show it again, or canceled.

### C_EncounterTimeline.ResumeScriptEvent

```lua
C_EncounterTimeline.ResumeScriptEvent(eventID: EncounterTimelineEventID)
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresValidTimelineEvent  

Resumes a custom timeline event, showing it on the timeline again if it is currently paused.

### C_EncounterTimeline.SetEventIconTextures

```lua
C_EncounterTimeline.SetEventIconTextures(eventID: EncounterTimelineEventID, includeIcons: EncounterEventIconmask, textures: table<SimpleTexture>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidTimelineEvent  

Updates a given vector of texture objects to reference art assets for icons associated with an event.

### C_EncounterTimeline.SetViewType

```lua
C_EncounterTimeline.SetViewType(viewType: EncounterTimelineViewType)
```

Secret: SecretArguments=NotAllowed  

Changes the view type for the timeline. This adjusts track layouts to be more appropriate for a specific mode and optimizes event processing.

## Events

### ENCOUNTER_TIMELINE_EVENT_ADDED

Payload: `eventInfo: EncounterTimelineEventInfo`  
Flags: SecretWhenEncounterEvent, SynchronousEvent  
Fired when an event has been added to the timeline.

### ENCOUNTER_TIMELINE_EVENT_BLOCK_STATE_CHANGED

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has transitioned into or out of a 'blocked' status.

### ENCOUNTER_TIMELINE_EVENT_COLOR_CHANGED

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has met a condition that should trigger a color change.

### ENCOUNTER_TIMELINE_EVENT_HIGHLIGHT

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has met a condition that should trigger its highlight glow animation.

### ENCOUNTER_TIMELINE_EVENT_REMOVED

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has been removed from the timeline. This is guaranteed to fire after an event has transitioned to a 'final' state such as Canceled or Finished, and will be delayed at least one game tick to allow for API queries to still access event data in OnUpdate scripts. This is fired post-removal of the event, and so queries using the supplied event ID will return nil.

### ENCOUNTER_TIMELINE_EVENT_STATE_CHANGED

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has changed state.

### ENCOUNTER_TIMELINE_EVENT_TRACK_CHANGED

Payload: `eventID: EncounterTimelineEventID`  
Flags: UniqueEvent  
Fired when an event has changed track, or has been re-ordered within its existing track.

### ENCOUNTER_TIMELINE_LAYOUT_UPDATED

Payload: `none`  
Flags: SynchronousEvent  
Fired when the layout of tracks on the timeline has been updated. This can include changes to the minimum or maximum durations of tracks.

### ENCOUNTER_TIMELINE_STATE_UPDATED

Payload: `none`  
Flags: UniqueEvent  
Signaled when conditions controlling the visibility of the encounter timeline are updated.

### ENCOUNTER_TIMELINE_VIEW_ACTIVATED

Payload: `viewType: EncounterTimelineViewType`  
Flags: SynchronousEvent  
Fired when a new timeline view is being activated. This is fired after a full layout and timeline data update, allowing the UI to immediately query the API and get usable results.

### ENCOUNTER_TIMELINE_VIEW_DEACTIVATED

Payload: `viewType: EncounterTimelineViewType`  
Flags: SynchronousEvent  
Fired when the current timeline view is being deactivated. The UI should clear all stored timeline event data and release all frames back to pools during this event.

## Tables

### EncounterTimelineEventFilter (Structure)

- `maxEventCount: number?` Maximum number of sorted events to return.
- `maxEventDuration: Seconds?` Maximum duration of sorted events to return.
- `excludeTerminalStates: bool = true` If false, include events that are terminal states such as Canceled or Finished.
- `excludeHiddenEvents: bool = true` If false, include events that should be hidden by user configuration, such as events on long tracks when the user has opted to not show long countdowns.

### EncounterTimelineEventInfo (Structure)

- `id: EncounterTimelineEventID` Instance ID for this event.
- `source: EncounterTimelineEventSource` Source that this event came from.
- `spellName: string` Spell name associated with this event. For script events, this may instead be the contents of the 'overrideName' field if it wasn't empty.
- `spellID: number` Spell ID associated with this event.
- `iconFileID: fileID` Icon file ID associated with this event.
- `duration: Seconds` Base duration of this event at the point that it was queued onto the timeline.
- `maxQueueDuration: Seconds` Hold duration for this event after it reaches the end of the timeline. During this period, the event will sit in the queued track of the timeline until manually finished or this added duration expires.
- `icons: EncounterEventIconmask` Bitmask of active icon states for this event.
- `severity: EncounterEventSeverity` Severity of this event.
- `isApproximate: bool` If true, this event is an approximation and may not occur exactly when the timeline suggests it will.

### EncounterTimelineScriptEventRequest (Structure)

- `spellID: number`
- `iconFileID: fileID`
- `duration: Seconds`
- `maxQueueDuration: Seconds = 0`
- `overrideName: stringView = `
- `icons: EncounterEventIconmask?`
- `severity: EncounterEventSeverity = Medium`
- `paused: bool = false`

### EncounterTimelineTrackInfo (Structure)

- `id: EncounterTimelineTrack`
- `type: EncounterTimelineTrackType`
- `minimumDuration: Seconds?` The exclusive lower bound of durations for events on this track. If zero, this should be treated as an inclusive lower bound. This bound is ignored by the timeline sequence in circumstances where an adjacent Sorted track would exceed its maximum event count, requiring events be pushed 'to the left' by one track.
- `maximumDuration: Seconds?` The inclusive upper bound of durations for events on this track.
- `minimumEventIntroDuration: Seconds?` Lower duration bound for events that want to transition onto this track from an Indeterminate position. Events below this duration are artificially kept in the indeterminate track state until they can transition into a later track in the timeline sequence.
- `minimumEventGapDuration: Seconds?` Minimum duration gap that must exist between two sequential candidate events for this track. If two event durations have a distance under this figure, the later of the two events will be artifically kept in the indeterminate track state until it can transition into a later track in the timeline sequence.
- `maximumEventCount: number?` The maximum number of events permitted within this track. This only applies to Sorted tracks.
- `sortDirection: EncounterTimelineEventSortDirection?` Sort ordering for events within this track. This only applies to Sorted tracks.

## Preconditions

- `RequiresValidTimelineEvent` (FailureMode=ReturnNothing)
- `SecretWhenEncounterEvent` ()
