# LossOfControl

Type: System  
Namespace: `C_LossOfControl`  
Environment: All

## Functions

### C_LossOfControl.GetActiveLossOfControlData

```lua
C_LossOfControl.GetActiveLossOfControlData(index: luaIndex) -> event: LossOfControlData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LossOfControl.GetActiveLossOfControlDataByUnit

```lua
C_LossOfControl.GetActiveLossOfControlDataByUnit(unitToken: UnitToken, index: luaIndex) -> event: LossOfControlData?
```

Secret: SecretWhenLossOfControlInfoRestricted, SecretArguments=AllowedWhenUntainted  

### C_LossOfControl.GetActiveLossOfControlDataCount

```lua
C_LossOfControl.GetActiveLossOfControlDataCount() -> count: number
```

### C_LossOfControl.GetActiveLossOfControlDataCountByUnit

```lua
C_LossOfControl.GetActiveLossOfControlDataCountByUnit(unitToken: UnitToken) -> count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LossOfControl.GetActiveLossOfControlDuration

```lua
C_LossOfControl.GetActiveLossOfControlDuration(unitToken: UnitToken, index: luaIndex) -> duration: LuaDurationObject?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LOSS_OF_CONTROL_ADDED

Payload: `unitTarget: UnitTokenVariant, effectIndex: luaIndex`  
Flags: SynchronousEvent  

### LOSS_OF_CONTROL_COMMENTATOR_ADDED

Payload: `victim: WOWGUID, effectIndex: luaIndex`  
Flags: SynchronousEvent  

### LOSS_OF_CONTROL_COMMENTATOR_UPDATE

Payload: `victim: WOWGUID`  
Flags: SynchronousEvent, UniqueEvent  

### LOSS_OF_CONTROL_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### PLAYER_CONTROL_GAINED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_CONTROL_LOST

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### LossOfControlData (Structure)

- `locType: cstring`
- `spellID: number`
- `displayText: cstring`
- `iconTexture: number`
- `startTime: number?`
- `timeRemaining: number?`
- `duration: number?`
- `lockoutSchool: number`
- `priority: number`
- `displayType: number`
- `auraInstanceID: number?`
