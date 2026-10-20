# EncounterInfo

Type: System  
Namespace: `C_EncounterInfo`  
Environment: All

## Events

### BOSS_KILL

Payload: `encounterID: number, encounterName: cstring`  
Flags: SynchronousEvent  

### DISABLE_LOW_LEVEL_RAID

Payload: `none`  
Flags: SynchronousEvent  

### ENABLE_LOW_LEVEL_RAID

Payload: `none`  
Flags: SynchronousEvent  

### ENCOUNTER_END

Payload: `encounterID: number, encounterName: cstring, difficultyID: number, groupSize: number, success: number, encounterUnitStatus: table<EncounterUnitStatus>`  
Flags: SynchronousEvent  

### ENCOUNTER_START

Payload: `encounterID: number, encounterName: cstring, difficultyID: number, groupSize: number`  
Flags: SynchronousEvent  

### INSTANCE_LOCK_START

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_LOCK_STOP

Payload: `none`  
Flags: SynchronousEvent  

### INSTANCE_LOCK_WARNING

Payload: `none`  
Flags: SynchronousEvent  

### RAID_TARGET_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_INSTANCE_INFO

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### EncounterUnitStatus (Structure)

- `creatureID: number`
- `creatureName: string`
- `remainingHealthPercent: number`
