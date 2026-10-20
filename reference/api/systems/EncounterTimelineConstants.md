# EncounterTimelineConstants

Type: None

## Tables

### EncounterTimelineEventSortDirection (Enumeration)

| Name | Value |
|---|---|
| Descending | 0 |
| Ascending | 1 |

### EncounterTimelineEventSource (Enumeration)

Enumeration of all encounter timeline event sources.

| Name | Value |
|---|---|
| Encounter | 0 |
| Script | 1 |
| EditMode | 2 |

### EncounterTimelineEventState (Enumeration)

Enumeration of all encounter timeline event states.

| Name | Value |
|---|---|
| Active | 0 |
| Paused | 1 |
| Finished | 2 |
| Canceled | 3 |

### EncounterTimelineIconSet (Enumeration)

| Name | Value |
|---|---|
| TankAlert | 1 |
| HealerAlert | 2 |
| DamageAlert | 3 |
| Deadly | 4 |
| Dispel | 5 |
| Enrage | 6 |

### EncounterTimelineTrack (Enumeration)

Enumeration of all encounter timeline tracks., Tracks are not permitted to overlap (but may have a zero duration span), and are contiguously ordered from shortest maximum duration to longest.

| Name | Value |
|---|---|
| Queued | 0 |
| Short | 1 |
| Medium | 2 |
| Long | 3 |
| Indeterminate | 4 |

### EncounterTimelineTrackType (Enumeration)

Enumeration of all encounter timeline track types. Track types infer behavioral aspects of the track, for example whether or not we associate sort orders to events in the track.

| Name | Value |
|---|---|
| Hidden | 0 |
| Sorted | 1 |
| Linear | 2 |

### EncounterTimelineViewType (Enumeration)

Enumeration of view types for the timeline., View types control layout parameters for the timeline such as maximum track durations and event counts, and optimize event processing for expected display behaviors.

| Name | Value |
|---|---|
| None | 0 |
| Timeline | 1 |
| Bars | 2 |

### EncounterTimelineEventConstants (Constants)

| Name | Type | Value |
|---|---|---|
| ENCOUNTER_TIMELINE_INVALID_EVENT | number | 0 |
| ENCOUNTER_TIMELINE_RESERVED_EVENT_COUNT | number | 40 |

### EncounterTimelineIconMasks (Constants)

| Name | Type | Value |
|---|---|---|
| EncounterTimelineTankAlertIcons | EncounterEventIconmask | TankRole |
| EncounterTimelineHealerAlertIcons | EncounterEventIconmask | HealerRole |
| EncounterTimelineDamageAlertIcons | EncounterEventIconmask | DpsRole |
| EncounterTimelineDeadlyIcons | EncounterEventIconmask | DeadlyEffect |
| EncounterTimelineDispelIcons | EncounterEventIconmask | 124 |
| EncounterTimelineEnrageIcons | EncounterEventIconmask | EnrageEffect |
| EncounterTimelineAllIcons | EncounterEventIconmask | 1023 |
| EncounterTimelineRoleIcons | EncounterEventIconmask | 896 |
| EncounterTimelineOtherIcons | EncounterEventIconmask | 127 |
| EncounterTimelineNoIcons | EncounterEventIconmask | 0 |
