# Vehicle

Type: System  
Namespace: `C_Vehicle`  
Environment: All

## Events

### PLAYER_GAINS_VEHICLE_DATA

Payload: `unitTarget: UnitTokenVariant, vehicleUIIndicatorID: number`  
Flags: SynchronousEvent  

### PLAYER_LOSES_VEHICLE_DATA

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_ENTERED_VEHICLE

Payload: `unitTarget: UnitTokenVariant, showVehicleFrame: bool, isControlSeat: bool, vehicleUIIndicatorID: number, vehicleGUID: WOWGUID, mayChooseExit: bool, hasPitch: bool`  
Flags: SynchronousEvent  

### UNIT_ENTERING_VEHICLE

Payload: `unitTarget: UnitTokenVariant, showVehicleFrame: bool, isControlSeat: bool, vehicleUIIndicatorID: number, vehicleGUID: WOWGUID, mayChooseExit: bool, hasPitch: bool`  
Flags: SynchronousEvent  

### UNIT_EXITED_VEHICLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_EXITING_VEHICLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### VEHICLE_ANGLE_SHOW

Payload: `shouldShow: number?`  
Flags: SynchronousEvent  

### VEHICLE_PASSENGERS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### VEHICLE_POWER_SHOW

Payload: `shouldShow: number?`  
Flags: SynchronousEvent  

### VEHICLE_UPDATE

Payload: `none`  
Flags: SynchronousEvent
