# Client

Type: System  
Environment: All

## Functions

### FlashClientIcon

```lua
FlashClientIcon(briefly: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetBillingTimeRested

```lua
GetBillingTimeRested() -> billingTimeRested: number
```

### GetFileIDFromPath

```lua
GetFileIDFromPath(filePath: cstring) -> fileID: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetFramerate

```lua
GetFramerate() -> framerate: number
```

### IsCpuBound

```lua
IsCpuBound() -> isCpuBound: bool?
```

### PlatformIsHandheld

```lua
PlatformIsHandheld() -> isHandheld: bool
```

### ReportBug

```lua
ReportBug(description: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ReportSuggestion

```lua
ReportSuggestion(description: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### RestartGx

```lua
RestartGx()
```

### Screenshot

```lua
Screenshot()
```

### UIReload

```lua
UIReload()
```

### UpdateWindow

```lua
UpdateWindow()
```
