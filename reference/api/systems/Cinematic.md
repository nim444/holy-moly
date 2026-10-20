# Cinematic

Type: System  
Environment: All

## Functions

### CinematicFinished

```lua
CinematicFinished(movieType: CinematicType, userCanceled: bool = false, didError: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### CinematicStarted

```lua
CinematicStarted(movieType: CinematicType, movieID: number, canCancel: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetCurrentCinematicSummary

```lua
GetCurrentCinematicSummary() -> summary: cstring
```

### InCinematic

```lua
InCinematic() -> inCinematic: bool
```

### MouseOverrideCinematicDisable

```lua
MouseOverrideCinematicDisable(doOverride: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### OpeningCinematic

```lua
OpeningCinematic()
```

### StopCinematic

```lua
StopCinematic()
```

## Events

### CINEMATIC_START

Payload: `canBeCancelled: bool, forcedAspectRatio: CameraModeAspectRatio`  
Flags: SynchronousEvent  

### CINEMATIC_STOP

Payload: `none`  
Flags: SynchronousEvent  

### HIDE_SUBTITLE

Payload: `none`  
Flags: SynchronousEvent  

### PLAY_MOVIE

Payload: `movieID: number`  
Flags: SynchronousEvent  

### SHOW_SUBTITLE

Payload: `subtitle: cstring, sender: cstring?`  
Flags: SynchronousEvent  

### STOP_MOVIE

Payload: `none`  
Flags: SynchronousEvent
