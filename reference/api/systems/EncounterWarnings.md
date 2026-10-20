# EncounterWarnings

Type: System  
Namespace: `C_EncounterWarnings`  
Environment: All

## Functions

### C_EncounterWarnings.GetColorForSeverity

```lua
C_EncounterWarnings.GetColorForSeverity(severity: EncounterEventSeverity) -> color: colorRGBA
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterWarnings.GetEditModeWarningInfo

```lua
C_EncounterWarnings.GetEditModeWarningInfo(severity: EncounterEventSeverity) -> warningInfo: EncounterWarningInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterWarnings.GetPlayCustomSoundsWhenHidden

```lua
C_EncounterWarnings.GetPlayCustomSoundsWhenHidden() -> play: bool
```

Returns true if custom sound alerts are allowed to play for hidden warning messages.

### C_EncounterWarnings.GetSoundKitForSeverity

```lua
C_EncounterWarnings.GetSoundKitForSeverity(severity: EncounterEventSeverity) -> soundKitID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EncounterWarnings.GetWarningsShown

```lua
C_EncounterWarnings.GetWarningsShown() -> shown: bool
```

Returns true if text messages for encounter events are allowed to be shown.

### C_EncounterWarnings.IsFeatureAvailable

```lua
C_EncounterWarnings.IsFeatureAvailable() -> isAvailable: bool
```

### C_EncounterWarnings.IsFeatureEnabled

```lua
C_EncounterWarnings.IsFeatureEnabled() -> isAvailableAndEnabled: bool
```

### C_EncounterWarnings.PlaySound

```lua
C_EncounterWarnings.PlaySound(severity: EncounterEventSeverity) -> soundHandle: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EncounterWarnings.SetPlayCustomSoundsWhenHidden

```lua
C_EncounterWarnings.SetPlayCustomSoundsWhenHidden(play: bool)
```

Secret: SecretArguments=NotAllowed  

Controls whether custom sound alerts for encounter events are allowed to play for warning messages that are hidden.

### C_EncounterWarnings.SetWarningsShown

```lua
C_EncounterWarnings.SetWarningsShown(shown: bool)
```

Secret: SecretArguments=NotAllowed  

Controls whether text messages for encounter events are allowed to be shown.

## Events

### ENCOUNTER_WARNING

Payload: `encounterWarningInfo: EncounterWarningInfo`  
Flags: SynchronousEvent  

## Tables

### EncounterWarningInfo (Structure)

- `text: cstring`
- `casterGUID: WOWGUID`
- `casterName: cstring`
- `targetGUID: WOWGUID`
- `targetName: cstring`
- `iconFileID: number`
- `tooltipSpellID: number`
- `isDeadly: bool`
- `color: colorRGBA`
- `duration: Seconds`
- `severity: EncounterEventSeverity`
- `shouldPlaySound: bool`
- `shouldShowChatMessage: bool`
- `shouldShowWarning: bool`
