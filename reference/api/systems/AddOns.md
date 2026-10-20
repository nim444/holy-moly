# AddOns

Type: System  
Namespace: `C_AddOns`  
Environment: All

## Functions

### C_AddOns.DisableAddOn

```lua
C_AddOns.DisableAddOn(name: uiAddon, character: cstring = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.DisableAllAddOns

```lua
C_AddOns.DisableAllAddOns(character: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.DoesAddOnExist

```lua
C_AddOns.DoesAddOnExist(name: uiAddon) -> exists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.DoesAddOnHaveLoadError

```lua
C_AddOns.DoesAddOnHaveLoadError(name: uiAddon) -> hadError: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.EnableAddOn

```lua
C_AddOns.EnableAddOn(name: uiAddon, character: cstring = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.EnableAllAddOns

```lua
C_AddOns.EnableAllAddOns(character: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnDependencies

```lua
C_AddOns.GetAddOnDependencies(name: uiAddon) -> deps: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnEnableState

```lua
C_AddOns.GetAddOnEnableState(name: uiAddon, character: cstring = 0) -> state: AddOnEnableState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnInfo

```lua
C_AddOns.GetAddOnInfo(name: uiAddon) -> name: cstring, title: cstring, notes: cstring, loadable: bool, reason: cstring, security: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnInterfaceVersion

```lua
C_AddOns.GetAddOnInterfaceVersion(name: uiAddon) -> interfaceVersion: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnLocalTable

```lua
C_AddOns.GetAddOnLocalTable(name: uiAddon) -> table: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the addon table (passed as the second argument of ... to files) for any addon that opts in through setting AllowAddOnTableAccess: 1 in the toc file. Insecure code cannot query addon tables from Blizzard addons.

### C_AddOns.GetAddOnMetadata

```lua
C_AddOns.GetAddOnMetadata(name: uiAddon, variable: cstring) -> value: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnName

```lua
C_AddOns.GetAddOnName(index: uiAddon) -> name: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnNotes

```lua
C_AddOns.GetAddOnNotes(name: uiAddon) -> notes: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnOptionalDependencies

```lua
C_AddOns.GetAddOnOptionalDependencies(name: uiAddon) -> deps: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnSecurity

```lua
C_AddOns.GetAddOnSecurity(name: uiAddon) -> security: AddOnSecurityStatus
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetAddOnTitle

```lua
C_AddOns.GetAddOnTitle(name: uiAddon) -> title: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.GetNumAddOns

```lua
C_AddOns.GetNumAddOns() -> numAddOns: number
```

### C_AddOns.GetScriptsDisallowedForBeta

```lua
C_AddOns.GetScriptsDisallowedForBeta() -> disallowed: bool
```

### C_AddOns.IsAddOnDefaultEnabled

```lua
C_AddOns.IsAddOnDefaultEnabled(name: uiAddon) -> defaultEnabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.IsAddOnLoadOnDemand

```lua
C_AddOns.IsAddOnLoadOnDemand(name: uiAddon) -> loadOnDemand: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.IsAddOnLoadable

```lua
C_AddOns.IsAddOnLoadable(name: uiAddon, character: cstring = 0, demandLoaded: bool = false) -> loadable: bool, reason: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.IsAddOnLoaded

```lua
C_AddOns.IsAddOnLoaded(name: uiAddon) -> loadedOrLoading: bool, loaded: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.IsAddonVersionCheckEnabled

```lua
C_AddOns.IsAddonVersionCheckEnabled() -> isEnabled: bool
```

### C_AddOns.LoadAddOn

```lua
C_AddOns.LoadAddOn(name: uiAddon) -> loaded: bool?, value: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AddOns.ResetAddOns

```lua
C_AddOns.ResetAddOns()
```

### C_AddOns.ResetDisabledAddOns

```lua
C_AddOns.ResetDisabledAddOns()
```

### C_AddOns.SaveAddOns

```lua
C_AddOns.SaveAddOns()
```

### C_AddOns.SetAddonVersionCheck

```lua
C_AddOns.SetAddonVersionCheck(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ADDON_LOADED

Payload: `addOnName: cstring, containsBindings: bool`  
Flags: SynchronousEvent  

### ADDONS_UNLOADING

Payload: `closingClient: bool`  
Flags: SynchronousEvent  

### SAVED_VARIABLES_TOO_LARGE

Payload: `addOnName: cstring`  
Flags: SynchronousEvent  

## Tables

### AddOnInfo (Structure)

- `name: cstring`
- `title: cstring`
- `notes: cstring`
- `loadable: bool`
- `reason: cstring`
- `security: cstring`

### AddOnLoadableInfo (Structure)

- `loadable: bool`
- `reason: cstring`
