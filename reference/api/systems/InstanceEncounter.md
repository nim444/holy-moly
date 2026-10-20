# InstanceEncounter

Type: System  
Namespace: `C_InstanceEncounter`  
Environment: All

## Functions

### C_InstanceEncounter.IsEncounterInProgress

```lua
C_InstanceEncounter.IsEncounterInProgress() -> isInProgress: bool
```

### C_InstanceEncounter.IsEncounterLimitingResurrections

```lua
C_InstanceEncounter.IsEncounterLimitingResurrections() -> isLimitingResurrections: bool
```

### C_InstanceEncounter.IsEncounterSuppressingRelease

```lua
C_InstanceEncounter.IsEncounterSuppressingRelease() -> isSuppressingRelease: bool
```

### C_InstanceEncounter.ShouldShowTimelineForEncounter

```lua
C_InstanceEncounter.ShouldShowTimelineForEncounter() -> shouldShow: bool
```

## Events

### ENCOUNTER_STATE_CHANGED

Payload: `isInProgress: bool`  
Flags: SynchronousEvent, CallbackEvent  
Signaled when the in-progress state of an encounter changes.

### INSTANCE_ENCOUNTER_ADD_TIMER

Payload: `timeRemaining: number`  
Flags: SynchronousEvent  

### INSTANCE_ENCOUNTER_ENGAGE_UNIT

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_ENCOUNTER_OBJECTIVE_COMPLETE

Payload: `objectiveID: number`  
Flags: SynchronousEvent  

### INSTANCE_ENCOUNTER_OBJECTIVE_START

Payload: `objectiveID: number, objectiveProgress: number`  
Flags: SynchronousEvent  

### INSTANCE_ENCOUNTER_OBJECTIVE_UPDATE

Payload: `objectiveID: number, objectiveProgress: number`  
Flags: SynchronousEvent
