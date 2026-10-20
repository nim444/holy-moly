# Build

Type: System  
Environment: All

## Functions

### GetBuildInfo

```lua
GetBuildInfo() -> buildVersion: cstring, buildNumber: cstring, buildDate: cstring, interfaceVersion: number, localizedVersion: cstring, buildInfo: string
```

### GetBuildOption

```lua
GetBuildOption(name: cstring) -> isSet: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### Is64BitClient

```lua
Is64BitClient() -> is64Bit: bool
```

### IsBetaBuild

```lua
IsBetaBuild() -> isBetaBuild: bool
```

### IsDebugBuild

```lua
IsDebugBuild() -> isDebugBuild: bool
```

### IsLinuxClient

```lua
IsLinuxClient() -> isLinux: bool
```

### IsMacClient

```lua
IsMacClient() -> isMac: bool
```

### IsPublicBuild

```lua
IsPublicBuild() -> isPublicBuild: bool
```

### IsPublicTestClient

```lua
IsPublicTestClient() -> isPublicTestClient: bool
```

Reflects the state of the OnlyBetaAndPTR TOC directive

### IsTestBuild

```lua
IsTestBuild() -> isTestBuild: bool
```

### IsWindowsClient

```lua
IsWindowsClient() -> isWindows: bool
```

### SupportsClipCursor

```lua
SupportsClipCursor() -> supportsClipCursor: bool
```
