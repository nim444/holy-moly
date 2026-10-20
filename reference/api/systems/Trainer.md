# Trainer

Type: System  
Namespace: `C_Trainer`  
Environment: All

## Functions

### C_Trainer.GetCategorizeTrainerUI

```lua
C_Trainer.GetCategorizeTrainerUI() -> value: bool
```

### C_Trainer.GetTrainerType

```lua
C_Trainer.GetTrainerType() -> trainerType: TrainerType
```

### C_Trainer.SetCategorizeTrainerUI

```lua
C_Trainer.SetCategorizeTrainerUI(value: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### TRAINER_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### TRAINER_DESCRIPTION_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TRAINER_SERVICE_INFO_NAME_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### TRAINER_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### TRAINER_UPDATE

Payload: `none`  
Flags: SynchronousEvent
