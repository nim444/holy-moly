# LuaDurationObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaDurationObjectAPI:Assign

```lua
LuaDurationObjectAPI:Assign(other: LuaDurationObject)
```

Secret: SecretArguments=AllowedWhenUntainted  

Copies another duration object and assigns it to this one.

### LuaDurationObjectAPI:Copy

```lua
LuaDurationObjectAPI:Copy() -> copy: LuaDurationObject
```

Secret: ReturnsNeverSecret  

Returns a copy of this duration object.

### LuaDurationObjectAPI:EvaluateElapsedDuration

```lua
LuaDurationObjectAPI:EvaluateElapsedDuration(curve: LuaCurveObjectBase, modifier: DurationTimeModifier = RealTime) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Calculates the elapsed duration in seconds and evaluates it against a supplied curve.

### LuaDurationObjectAPI:EvaluateElapsedPercent

```lua
LuaDurationObjectAPI:EvaluateElapsedPercent(curve: LuaCurveObjectBase, modifier: DurationTimeModifier = RealTime) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Calculates the elapsed duration as a percentage value and evaluates it against a supplied curve.

### LuaDurationObjectAPI:EvaluateRemainingDuration

```lua
LuaDurationObjectAPI:EvaluateRemainingDuration(curve: LuaCurveObjectBase, modifier: DurationTimeModifier = RealTime) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Calculates the remaining duration in seconds and evaluates it against a supplied curve.

### LuaDurationObjectAPI:EvaluateRemainingPercent

```lua
LuaDurationObjectAPI:EvaluateRemainingPercent(curve: LuaCurveObjectBase, modifier: DurationTimeModifier = RealTime) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Calculates the remaining duration as a percentage value and evaluates it against a supplied curve.

### LuaDurationObjectAPI:EvaluateTotalDuration

```lua
LuaDurationObjectAPI:EvaluateTotalDuration(curve: LuaCurveObjectBase, modifier: DurationTimeModifier = RealTime) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Calculates the total duration in seconds and evaluates it against a supplied curve.

### LuaDurationObjectAPI:FormatElapsedDuration

```lua
LuaDurationObjectAPI:FormatElapsedDuration(formatter: NumericFormatter, modifier: DurationTimeModifier = RealTime) -> formatted: string
```

Secret: SecretWhenNumericFormatterSecret, SecretArguments=AllowedWhenUntainted  

Formats the elapsed duration of this object to a string.

### LuaDurationObjectAPI:FormatRemainingDuration

```lua
LuaDurationObjectAPI:FormatRemainingDuration(formatter: NumericFormatter, modifier: DurationTimeModifier = RealTime) -> formatted: string
```

Secret: SecretWhenNumericFormatterSecret, SecretArguments=AllowedWhenUntainted  

Formats the remaining duration of this object to a string.

### LuaDurationObjectAPI:FormatTotalDuration

```lua
LuaDurationObjectAPI:FormatTotalDuration(formatter: NumericFormatter, modifier: DurationTimeModifier = RealTime) -> formatted: string
```

Secret: SecretWhenNumericFormatterSecret, SecretArguments=AllowedWhenUntainted  

Formats the total duration of this object to a string.

### LuaDurationObjectAPI:GetClock

```lua
LuaDurationObjectAPI:GetClock() -> clock: LuaDurationClock?
```

Returns the clock source used by this object.

### LuaDurationObjectAPI:GetClockTime

```lua
LuaDurationObjectAPI:GetClockTime() -> clockTime: FrameTime
```

Returns the current time of the clock source used by this object.

### LuaDurationObjectAPI:GetElapsedDuration

```lua
LuaDurationObjectAPI:GetElapsedDuration(modifier: DurationTimeModifier = RealTime) -> elapsedDuration: Seconds
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the elapsed duration of the stored time span.

### LuaDurationObjectAPI:GetElapsedPercent

```lua
LuaDurationObjectAPI:GetElapsedPercent(modifier: DurationTimeModifier = RealTime) -> elapsedPercent: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the elapsed duration as a percentage value.

### LuaDurationObjectAPI:GetEndTime

```lua
LuaDurationObjectAPI:GetEndTime(modifier: DurationTimeModifier = RealTime) -> endTime: FrameTime
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the end time of the stored time span.

### LuaDurationObjectAPI:GetModRate

```lua
LuaDurationObjectAPI:GetModRate() -> modRate: number
```

Returns the divisor used to convert a duration from real time to base time.

### LuaDurationObjectAPI:GetRemainingDuration

```lua
LuaDurationObjectAPI:GetRemainingDuration(modifier: DurationTimeModifier = RealTime) -> remainingDuration: Seconds
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the remaining duration of the stored time span.

### LuaDurationObjectAPI:GetRemainingPercent

```lua
LuaDurationObjectAPI:GetRemainingPercent(modifier: DurationTimeModifier = RealTime) -> remainingPercent: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the remaining duration as a percentage value.

### LuaDurationObjectAPI:GetStartTime

```lua
LuaDurationObjectAPI:GetStartTime(modifier: DurationTimeModifier = RealTime) -> startTime: FrameTime
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the start time of the stored time span.

### LuaDurationObjectAPI:GetTotalDuration

```lua
LuaDurationObjectAPI:GetTotalDuration(modifier: DurationTimeModifier = RealTime) -> totalDuration: Seconds
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the total duration of the stored time span.

### LuaDurationObjectAPI:HasExpired

```lua
LuaDurationObjectAPI:HasExpired(modifier: DurationTimeModifier = RealTime) -> hasExpired: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true once the duration has reached its end time.

### LuaDurationObjectAPI:HasSecretValues

```lua
LuaDurationObjectAPI:HasSecretValues() -> hasSecretValues: bool
```

Secret: ReturnsNeverSecret  

Returns true if the duration has been configured with any secret values.

### LuaDurationObjectAPI:HasStarted

```lua
LuaDurationObjectAPI:HasStarted(modifier: DurationTimeModifier = RealTime) -> hasStarted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true once the duration has reached its start time.

### LuaDurationObjectAPI:IsActive

```lua
LuaDurationObjectAPI:IsActive(modifier: DurationTimeModifier = RealTime) -> isActive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true while the duration is at or after its start time and before its end time.

### LuaDurationObjectAPI:IsZero

```lua
LuaDurationObjectAPI:IsZero() -> isZero: bool
```

Returns true if the duration object is measuring a zero duration time span.

### LuaDurationObjectAPI:Reset

```lua
LuaDurationObjectAPI:Reset()
```

Resets the duration object to represent a zero duration time span.

### LuaDurationObjectAPI:SetClock

```lua
LuaDurationObjectAPI:SetClock(clock: LuaDurationClock?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the clock source used by this object.

### LuaDurationObjectAPI:SetTimeFromEnd

```lua
LuaDurationObjectAPI:SetTimeFromEnd(endTime: FrameTime, duration: Seconds, modRate: number = 1)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the duration object to represent an end time and a duration.

### LuaDurationObjectAPI:SetTimeFromStart

```lua
LuaDurationObjectAPI:SetTimeFromStart(startTime: FrameTime, duration: Seconds, modRate: number = 1)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the duration object to represent a start time and a duration.

### LuaDurationObjectAPI:SetTimeSpan

```lua
LuaDurationObjectAPI:SetTimeSpan(startTime: FrameTime, endTime: FrameTime)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the duration object to represent a fixed start and end time span. If the end time is earlier than the start time, the duration will clamp to zero.

### LuaDurationObjectAPI:SetToDefaults

```lua
LuaDurationObjectAPI:SetToDefaults()
```

Resets all state on the duration, and clears the secret values flag.
