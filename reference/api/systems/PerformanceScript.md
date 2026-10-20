# PerformanceScript

Type: System  
Environment: All

## Functions

### GetAddOnCPUUsage

```lua
GetAddOnCPUUsage(name: uiAddon) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetAddOnMemoryUsage

```lua
GetAddOnMemoryUsage(name: uiAddon) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetEventCPUUsage

```lua
GetEventCPUUsage() -> call_time: number, call_count: number
```

### GetFrameCPUUsage

```lua
GetFrameCPUUsage(frame: SimpleFrame, includeChildren: bool = false) -> call_time: number, call_count: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetFunctionCPUUsage

```lua
GetFunctionCPUUsage() -> call_time: number, call_count: number
```

### GetScriptCPUUsage

```lua
GetScriptCPUUsage() -> result: number
```

### ResetCPUUsage

```lua
ResetCPUUsage()
```

### UpdateAddOnCPUUsage

```lua
UpdateAddOnCPUUsage()
```

### UpdateAddOnMemoryUsage

```lua
UpdateAddOnMemoryUsage()
```
