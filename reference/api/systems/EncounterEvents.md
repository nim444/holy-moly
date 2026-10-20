# EncounterEvents

Type: System  
Namespace: `C_EncounterEvents`  
Environment: All

## Functions

### C_EncounterEvents.GetEventColor

```lua
C_EncounterEvents.GetEventColor(encounterEventID: number, trigger: EncounterEventColorTrigger) -> color: colorRGBA?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns any custom color override applied for an encounter event.

### C_EncounterEvents.GetEventInfo

```lua
C_EncounterEvents.GetEventInfo(encounterEventID: number) -> encounterEventInfo: EncounterEventInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns information about an encounter event.

### C_EncounterEvents.GetEventList

```lua
C_EncounterEvents.GetEventList() -> encounterEventIDs: table<number>
```

Returns a list of all encounter event IDs.

### C_EncounterEvents.GetEventSound

```lua
C_EncounterEvents.GetEventSound(encounterEventID: number, trigger: EncounterEventSoundTrigger) -> sound: EncounterEventSoundInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns information on a custom sound file to be played when an encounter event trigger occurs.

### C_EncounterEvents.HasEventInfo

```lua
C_EncounterEvents.HasEventInfo(encounterEventID: number) -> exists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if an encounter event record with a specified ID exists.

### C_EncounterEvents.PlayEventSound

```lua
C_EncounterEvents.PlayEventSound(encounterEventID: number, trigger: EncounterEventSoundTrigger) -> handle: SoundHandle
```

Secret: SecretArguments=AllowedWhenUntainted  

Plays any registered custom sound file for a given encounter event trigger.

### C_EncounterEvents.SetEventColor

```lua
C_EncounterEvents.SetEventColor(encounterEventID: number, trigger: EncounterEventColorTrigger, color: colorRGBA?)
```

Secret: SecretArguments=NotAllowed  

Sets a custom color override for an encounter event. This can be used to colorize text or timer bars individually.

### C_EncounterEvents.SetEventSound

```lua
C_EncounterEvents.SetEventSound(encounterEventID: number, trigger: EncounterEventSoundTrigger, sound: EncounterEventSoundInfo?)
```

Secret: SecretArguments=NotAllowed  

Sets a custom sound file to be played when an encounter event trigger occurs.
