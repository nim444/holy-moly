# EncounterEventsShared

Type: None

## Tables

### EncounterEventColorTrigger (Enumeration)

| Name | Value |
|---|---|
| TextWarning | 0 |
| TimelineEvent | 1 |
| TimelineEventHighlight | 2 |

### EncounterEventSoundTrigger (Enumeration)

| Name | Value |
|---|---|
| OnTextWarningShown | 0 |
| OnTimelineEventFinished | 1 |
| OnTimelineEventHighlight | 2 |

### EncounterEventInfo (Structure)

- `encounterEventID: number` ID of the encounter event record.
- `enabled: bool` If true, this event should be displayed on boss ability HUD elements.
- `spellID: number` Spell ID that triggers this event. A single spell may be used by multiple encounter events.
- `iconFileID: number` Icon file ID for the event. Typically the same as the spell icon, but may be overridden.
- `severity: EncounterEventSeverity` Severity level of this event.
- `icons: EncounterEventIconmask` Bitmask of spell support icons to show for this event.

### EncounterEventSoundInfo (Structure)

- `file: FileAsset` Sound file to be played when triggered.
- `channel: UISoundSubType = g_defaultSI3UISoundSubTypeForLua` Sound channel to play this file on.
- `volume: number = 1` Volume scalar for the sound file.
