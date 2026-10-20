# BattlePet

Type: System  
Namespace: `C_BattlePet`  
Environment: All

## Events

### PET_BATTLE_ABILITY_CHANGED

Payload: `owner: number, petIndex: number, abilityID: number`  
Flags: SynchronousEvent  

### PET_BATTLE_ACTION_SELECTED

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_AURA_APPLIED

Payload: `owner: number, petIndex: number, auraInstanceID: number`  
Flags: SynchronousEvent  

### PET_BATTLE_AURA_CANCELED

Payload: `owner: number, petIndex: number, auraInstanceID: number`  
Flags: SynchronousEvent  

### PET_BATTLE_AURA_CHANGED

Payload: `owner: number, petIndex: number, auraInstanceID: number`  
Flags: SynchronousEvent  

### PET_BATTLE_CAPTURED

Payload: `owner: number, petIndex: number`  
Flags: SynchronousEvent  

### PET_BATTLE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_FINAL_ROUND

Payload: `owner: number`  
Flags: SynchronousEvent  

### PET_BATTLE_HEALTH_CHANGED

Payload: `owner: number, petIndex: number, healthChange: number`  
Flags: SynchronousEvent  

### PET_BATTLE_LEVEL_CHANGED

Payload: `owner: number, petIndex: number, newLevel: number`  
Flags: SynchronousEvent  

### PET_BATTLE_MAX_HEALTH_CHANGED

Payload: `owner: number, petIndex: number, healthChange: number`  
Flags: SynchronousEvent  

### PET_BATTLE_OPENING_DONE

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_OPENING_START

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_OVER

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_OVERRIDE_ABILITY

Payload: `abilityIndex: number`  
Flags: SynchronousEvent  

### PET_BATTLE_PET_CHANGED

Payload: `owner: number`  
Flags: SynchronousEvent  

### PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE

Payload: `roundNumber: number`  
Flags: SynchronousEvent  

### PET_BATTLE_PET_ROUND_RESULTS

Payload: `roundNumber: number`  
Flags: SynchronousEvent  

### PET_BATTLE_PET_TYPE_CHANGED

Payload: `owner: number, petIndex: number, stateValue: number`  
Flags: SynchronousEvent  

### PET_BATTLE_PVP_DUEL_REQUEST_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_PVP_DUEL_REQUESTED

Payload: `fullName: cstring`  
Flags: SynchronousEvent  

### PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_QUEUE_PROPOSAL_DECLINED

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_QUEUE_PROPOSE_MATCH

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_QUEUE_STATUS

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_XP_CHANGED

Payload: `owner: number, petIndex: number, xpChange: number`  
Flags: SynchronousEvent
