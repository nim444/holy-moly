# Video

Type: System  
Namespace: `C_VideoOptions`  
Environment: All

## Functions

### C_VideoOptions.AreHighResTexturesAvailable

```lua
C_VideoOptions.AreHighResTexturesAvailable() -> areAvailable: bool
```

### C_VideoOptions.GetCurrentGameWindowSize

```lua
C_VideoOptions.GetCurrentGameWindowSize() -> size: vector2
```

### C_VideoOptions.GetDefaultGameWindowSize

```lua
C_VideoOptions.GetDefaultGameWindowSize(monitor: number) -> size: vector2
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VideoOptions.GetGameWindowSizes

```lua
C_VideoOptions.GetGameWindowSizes(monitor: number, fullscreen: bool) -> sizes: table<vector2>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VideoOptions.GetGxAdapterInfo

```lua
C_VideoOptions.GetGxAdapterInfo() -> adapters: table<GxAdapterInfoDetails>
```

### C_VideoOptions.IsLinearEnabledOnStart

```lua
C_VideoOptions.IsLinearEnabledOnStart() -> isEnabled: bool
```

### C_VideoOptions.IsOutlineModeSupported

```lua
C_VideoOptions.IsOutlineModeSupported() -> isSupported: bool
```

### C_VideoOptions.IsPBRWaterSupported

```lua
C_VideoOptions.IsPBRWaterSupported() -> isSupported: bool
```

### C_VideoOptions.IsSecondaryLightingSupported

```lua
C_VideoOptions.IsSecondaryLightingSupported() -> isSupported: bool
```

### C_VideoOptions.IsSpellVisualDensitySystemSupported

```lua
C_VideoOptions.IsSpellVisualDensitySystemSupported() -> isSupported: bool
```

### C_VideoOptions.SetGameWindowSize

```lua
C_VideoOptions.SetGameWindowSize(x: number, y: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ADAPTER_LIST_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### DISPLAY_SIZE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### GLUE_SCREENSHOT_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### GLUE_SCREENSHOT_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### GLUE_SCREENSHOT_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

### GX_RESTARTED

Payload: `none`  
Flags: SynchronousEvent  

### SCREENSHOT_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### SCREENSHOT_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### SCREENSHOT_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### GraphicsValidationResult (Enumeration)

| Name | Value |
|---|---|
| Supported | 0 |
| Illegal | 1 |
| Unsupported | 2 |
| Graphics | 3 |
| DualCore | 4 |
| QuadCore | 5 |
| CpuMem_2 | 6 |
| CpuMem_4 | 7 |
| CpuMem_8 | 8 |
| Needs_5_0 | 9 |
| Needs_6_0 | 10 |
| NeedsRt | 11 |
| NeedsDx12 | 12 |
| NeedsDx12Vrs2 | 13 |
| NeedsAppleGpu | 14 |
| NeedsAmdGpu | 15 |
| NeedsIntelGpu | 16 |
| NeedsNvidiaGpu | 17 |
| NeedsQualcommGpu | 18 |
| NeedsMacOs_10_13 | 19 |
| NeedsMacOs_10_14 | 20 |
| NeedsMacOs_10_15 | 21 |
| NeedsMacOs_11_0 | 22 |
| NeedsMacOs_12_0 | 23 |
| NeedsMacOs_13_0 | 24 |
| NeedsWindows_10 | 25 |
| NeedsWindows_11 | 26 |
| MacOsUnsupported | 27 |
| WindowsUnsupported | 28 |
| LegacyUnsupported | 29 |
| Dx11Unsupported | 30 |
| Dx12Win7Unsupported | 31 |
| RemoteDesktopUnsupported | 32 |
| WineUnsupported | 33 |
| NvapiWineUnsupported | 34 |
| AppleGpuUnsupported | 35 |
| AmdGpuUnsupported | 36 |
| IntelGpuUnsupported | 37 |
| NvidiaGpuUnsupported | 38 |
| QualcommGpuUnsupported | 39 |
| GpuDriver | 40 |
| CompatMode | 41 |
| Unknown | 42 |

### GxAdapterInfoDetails (Structure)

- `name: string`
- `isLowPower: bool`
- `isExternal: bool`
