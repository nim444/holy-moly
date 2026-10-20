# UITimer

Type: System  
Namespace: `C_Timer`  
Environment: All

## Functions

### C_Timer.After

```lua
C_Timer.After(seconds: number, callback: TimerCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Timer.NewTicker

```lua
C_Timer.NewTicker(seconds: number, callback: TickerCallback, iterations: number?) -> cbObject: TickerCallback
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Timer.NewTimedSignalMap

```lua
C_Timer.NewTimedSignalMap(callback: TimedSignalMapCallback) -> signalMap: TimedSignalMap
```

Secret: SecretArguments=AllowedWhenUntainted  

Creates a new timed signal map that invokes the supplied callback with each key as it becomes due.

### C_Timer.NewTimer

```lua
C_Timer.NewTimer(seconds: number, callback: TickerCallback) -> cbObject: TickerCallback
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### TickerCallback (CallbackType)

- `cb: TimerCallback`

### TimerCallback (CallbackType)
