# TimedSignalMapAPI

Type: ScriptObject  
Environment: All

An object that manages a collection of integer keys, each scheduled to signal at a specific time. When a key's time arrives it is removed from the map and passed to the map's callback, letting you track many keyed deadlines through a single callback rather than scheduling each one individually.

## Functions

### TimedSignalMapAPI:CancelAllSignals

```lua
TimedSignalMapAPI:CancelAllSignals()
```

Flags: RequiresTimedSignalMapAccess  

Cancels all scheduled signals.

### TimedSignalMapAPI:CancelSignal

```lua
TimedSignalMapAPI:CancelSignal(key: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresTimedSignalMapAccess  

Cancels the scheduled signal for the specified key, if one exists.

### TimedSignalMapAPI:GetNextSignal

```lua
TimedSignalMapAPI:GetNextSignal() -> key: number, time: FrameTime
```

Flags: RequiresTimedSignalMapAccess  

Returns the next key due to signal along with its scheduled time.

### TimedSignalMapAPI:GetSignalCount

```lua
TimedSignalMapAPI:GetSignalCount() -> count: size
```

Flags: RequiresTimedSignalMapAccess  

Returns the number of keys currently scheduled to signal.

### TimedSignalMapAPI:GetSignalTime

```lua
TimedSignalMapAPI:GetSignalTime(key: number) -> time: FrameTime?
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: RequiresTimedSignalMapAccess  

Returns the absolute time at which the specified key is scheduled to signal.

### TimedSignalMapAPI:HasSignal

```lua
TimedSignalMapAPI:HasSignal(key: number) -> hasSignal: bool
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: RequiresTimedSignalMapAccess  

Returns whether the specified key is currently scheduled to signal.

### TimedSignalMapAPI:SignalAfter

```lua
TimedSignalMapAPI:SignalAfter(key: number, secondsFromNow: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresTimedSignalMapAccess  

Schedules the specified key to signal after a delay from the current time, replacing any existing schedule for that key.

### TimedSignalMapAPI:SignalAt

```lua
TimedSignalMapAPI:SignalAt(key: number, time: FrameTime)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresTimedSignalMapAccess  

Schedules the specified key to signal at an absolute time, replacing any existing schedule for that key.
