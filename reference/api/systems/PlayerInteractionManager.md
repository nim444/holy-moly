# PlayerInteractionManager

Type: System  
Namespace: `C_PlayerInteractionManager`  
Environment: All

## Functions

### C_PlayerInteractionManager.ClearInteraction

```lua
C_PlayerInteractionManager.ClearInteraction(type: PlayerInteractionType?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInteractionManager.ConfirmationInteraction

```lua
C_PlayerInteractionManager.ConfirmationInteraction(type: PlayerInteractionType?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInteractionManager.InteractUnit

```lua
C_PlayerInteractionManager.InteractUnit(unit: string, exactMatch: bool = false, looseTargeting: bool = true) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PlayerInteractionManager.IsInteractingWithNpcOfType

```lua
C_PlayerInteractionManager.IsInteractingWithNpcOfType(type: PlayerInteractionType) -> interacting: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInteractionManager.IsReplacingUnit

```lua
C_PlayerInteractionManager.IsReplacingUnit() -> replacing: bool
```

### C_PlayerInteractionManager.IsValidNPCInteraction

```lua
C_PlayerInteractionManager.IsValidNPCInteraction(type: PlayerInteractionType) -> isValidInteraction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerInteractionManager.ReopenInteraction

```lua
C_PlayerInteractionManager.ReopenInteraction()
```

Flags: HasRestrictions  

### C_PlayerInteractionManager.ShardTransferConfirm

```lua
C_PlayerInteractionManager.ShardTransferConfirm()
```

## Events

### PLAYER_INTERACTION_MANAGER_FRAME_HIDE

Payload: `type: PlayerInteractionType`  
Flags: SynchronousEvent  

### PLAYER_INTERACTION_MANAGER_FRAME_SHOW

Payload: `type: PlayerInteractionType`  
Flags: SynchronousEvent
