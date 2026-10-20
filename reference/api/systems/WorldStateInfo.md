# WorldStateInfo

Type: System  
Namespace: `C_WorldStateInfo`  
Environment: All

## Events

### CANCEL_PLAYER_COUNTDOWN

Payload: `initiatedBy: WOWGUID, informChat: bool, initiatedByName: string?`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### START_PLAYER_COUNTDOWN

Payload: `initiatedBy: WOWGUID, timeRemaining: time_t, totalTime: time_t, informChat: bool, initiatedByName: string?`  
Flags: SecretInChatMessagingLockdown, SynchronousEvent  

### START_TIMER

Payload: `timerType: StartTimerType, timeRemaining: time_t, totalTime: time_t`  
Flags: SynchronousEvent  

### STOP_TIMER_OF_TYPE

Payload: `timerType: StartTimerType`  
Flags: SynchronousEvent  

### WORLD_STATE_TIMER_START

Payload: `timerID: number`  
Flags: SynchronousEvent  

### WORLD_STATE_TIMER_STOP

Payload: `timerID: number`  
Flags: SynchronousEvent
