# LuaDurationManualClockAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaDurationManualClockAPI:AdvanceTime

```lua
LuaDurationManualClockAPI:AdvanceTime(delta: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Advances the clock by a specified number of seconds.

### LuaDurationManualClockAPI:ResetTime

```lua
LuaDurationManualClockAPI:ResetTime()
```

Resets the clock to a zero time value.

### LuaDurationManualClockAPI:RewindTime

```lua
LuaDurationManualClockAPI:RewindTime(delta: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Rewinds the clock by a specified number of seconds.

### LuaDurationManualClockAPI:SetTime

```lua
LuaDurationManualClockAPI:SetTime(time: FrameTime)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the current clock timestamp to a given value.
