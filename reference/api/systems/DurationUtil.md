# DurationUtil

Type: System  
Namespace: `C_DurationUtil`  
Environment: All

## Functions

### C_DurationUtil.CreateDuration

```lua
C_DurationUtil.CreateDuration() -> duration: LuaDurationObject
```

Creates a zero duration container that can represent a time span.

### C_DurationUtil.CreateDurationTextBinding

```lua
C_DurationUtil.CreateDurationTextBinding() -> binding: DurationTextBinding
```

Creates a duration text binding, which automatically updates a font string with formatted text derived from a duration object.

### C_DurationUtil.CreateManualClock

```lua
C_DurationUtil.CreateManualClock() -> clock: LuaDurationManualClock
```

Creates a manually driven time source for use with duration objects.
