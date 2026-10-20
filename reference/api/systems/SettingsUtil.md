# SettingsUtil

Type: System  
Namespace: `C_SettingsUtil`  
Environment: All

## Functions

### C_SettingsUtil.NotifySettingsLoaded

```lua
C_SettingsUtil.NotifySettingsLoaded()
```

### C_SettingsUtil.OpenSettingsPanel

```lua
C_SettingsUtil.OpenSettingsPanel(openToCategoryID: number?, scrollToElementName: stringView?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### SETTINGS_LOADED

Payload: `none`  
Flags: SynchronousEvent  

### SETTINGS_PANEL_OPEN

Payload: `openToCategoryID: number?, scrollToElementName: stringView?`  
Flags: SynchronousEvent
