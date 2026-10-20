# AddOnProfiler

Type: System  
Namespace: `C_AddOnProfiler`  
Environment: All

## Functions

### C_AddOnProfiler.AddMeasuredCallEvent

```lua
C_AddOnProfiler.AddMeasuredCallEvent(name: stringView)
```

Secret: SecretArguments=AllowedWhenUntainted  

Adds a measured event to any ongoing measured calls. If no such calls are currently taking place, this function does nothing.

### C_AddOnProfiler.AddPerformanceMessageShown

```lua
C_AddOnProfiler.AddPerformanceMessageShown(msg: AddOnPerformanceMessage)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Internal API for telemetry.

### C_AddOnProfiler.CheckForPerformanceMessage

```lua
C_AddOnProfiler.CheckForPerformanceMessage() -> msg: AddOnPerformanceMessage
```

Flags: MayReturnNothing  

Optimized check for determining if AddOns are severely impacting UI performance.

### C_AddOnProfiler.GetAddOnMetric

```lua
C_AddOnProfiler.GetAddOnMetric(name: cstring, metric: AddOnProfilerMetric) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Gets an AddOn profiler value - all times returned are in milliseconds.

### C_AddOnProfiler.GetApplicationMetric

```lua
C_AddOnProfiler.GetApplicationMetric(metric: AddOnProfilerMetric) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Overall profiling data for the entire application (not just the UI)

### C_AddOnProfiler.GetOverallMetric

```lua
C_AddOnProfiler.GetOverallMetric(metric: AddOnProfilerMetric) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Overall profiling data for all addons

### C_AddOnProfiler.GetTicksPerSecond

```lua
C_AddOnProfiler.GetTicksPerSecond() -> frequency: BigInteger
```

Returns the number of profiling clock ticks that occur within a single real-time second.

### C_AddOnProfiler.GetTopKAddOnsForMetric

```lua
C_AddOnProfiler.GetTopKAddOnsForMetric(metric: AddOnProfilerMetric, k: number) -> results: table<AddOnProfilerResult>
```

Secret: SecretArguments=AllowedWhenUntainted  

Gets top K AddOns for a given metric.

### C_AddOnProfiler.IsEnabled

```lua
C_AddOnProfiler.IsEnabled() -> enabled: bool
```

AddOn profiler will be enabled for all users, but this will return false if it ever isn't

### C_AddOnProfiler.MeasureCall

```lua
C_AddOnProfiler.MeasureCall(func: LuaValueVariant, arguments: LuaValueVariant) -> results: AddOnProfilerCallResults, returns: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Performs a profiled measurement of a single function call with any supplied arguments.

## Tables

### AddOnPerformanceMessage (Structure)

- `type: AddOnPerformanceMessageType`
- `metric: AddOnProfilerMetric`
- `addOnName: string?`
- `metricValue: number`
- `thresholdValue: number`

### AddOnProfilerCallEvent (Structure)

- `name: string` User-defined string describing the measured event.
- `allocatedBytes: BigUInteger` Snapshot of the allocated byte count when this event was recorded.
- `deallocatedBytes: BigUInteger` Snapshot of the deallocated byte count when this event was recorded.
- `elapsedMilliseconds: number` Snapshot of the elapsed milliseconds when this event was recorded.
- `elapsedTicks: BigInteger` Snapshot of the elapsed tick count when this event was recorded.

### AddOnProfilerCallResults (Structure)

- `elapsedMilliseconds: number` Total number of milliseconds spent executing the function.
- `elapsedTicks: BigInteger` Total number of profiling clock ticks spent executing the function.
- `allocatedBytes: BigUInteger` Total number of bytes allocated during call execution.
- `deallocatedBytes: BigUInteger` Total number of bytes deallocated during call execution.
- `events: table<AddOnProfilerCallEvent>` Events recorded by any AddMeasuredCallEvent calls that took place during function execution.

### AddOnProfilerResult (Structure)

- `addOnName: cstring`
- `metricValue: number`
