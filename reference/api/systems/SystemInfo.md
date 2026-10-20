# SystemInfo

Type: System  
Namespace: `C_System`  
Environment: All

## Functions

### C_System.GetFrameStack

```lua
C_System.GetFrameStack() -> objects: table<ScriptRegion>
```

## Events

### CAPTUREFRAMES_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### CAPTUREFRAMES_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

### DISABLE_TAXI_BENCHMARK

Payload: `none`  
Flags: SynchronousEvent  

### ENABLE_TAXI_BENCHMARK

Payload: `none`  
Flags: SynchronousEvent  

### FIRST_FRAME_RENDERED

Payload: `none`  
Flags: UniqueEvent  

### GENERIC_ERROR

Payload: `errorMessage: cstring`  
Flags: SynchronousEvent  

### GLOBAL_MOUSE_DOWN

Payload: `button: cstring`  
Flags: SynchronousEvent  

### GLOBAL_MOUSE_UP

Payload: `button: cstring`  
Flags: SynchronousEvent  

### GLOBAL_REGION_MOUSE_DOWN

Payload: `region: ScriptRegion, button: cstring`  
Flags: SynchronousEvent  

### GLOBAL_REGION_MOUSE_UP

Payload: `region: ScriptRegion, button: cstring`  
Flags: SynchronousEvent  

### INITIAL_HOTFIXES_APPLIED

Payload: `none`  
Flags: SynchronousEvent  

### LOC_RESULT

Payload: `result: cstring`  
Flags: SynchronousEvent  

### LOGOUT_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_CAMPING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_ENTERING_WORLD

Payload: `isInitialLogin: bool, isReloadingUi: bool`  
Flags: SynchronousEvent  

### PLAYER_LEAVING_WORLD

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_LOGIN

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_LOGOUT

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_QUITING

Payload: `none`  
Flags: SynchronousEvent  

### SEARCH_DB_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### SHARD_TRANSFER

Payload: `none`  
Flags: SynchronousEvent  

### SHARD_TRANSFER_CANCELLED

Payload: `none`  
Flags: SynchronousEvent  

### SHARD_TRANSFER_IMMINENT

Payload: `none`  
Flags: SynchronousEvent  

### STREAMING_ICON

Payload: `streamingStatus: number`  
Flags: SynchronousEvent  

### SYSMSG

Payload: `string: cstring, r: number, g: number, b: number`  
Flags: SynchronousEvent  

### TIME_PLAYED_MSG

Payload: `totalTimePlayed: number, timePlayedThisLevel: number`  
Flags: SynchronousEvent  

### UI_ERROR_MESSAGE

Payload: `errorType: luaIndex, message: string`  
Flags: UniqueEvent  

### UI_ERROR_POPUP

Payload: `errorType: luaIndex, message: string`  
Flags: UniqueEvent  

### UI_INFO_MESSAGE

Payload: `errorType: luaIndex, message: string`  
Flags: UniqueEvent  

### VARIABLES_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### WOW_MOUSE_NOT_FOUND

Payload: `none`  
Flags: SynchronousEvent
