# ConfigurationWarnings

Type: System  
Namespace: `C_ConfigurationWarnings`  
Environment: All

## Functions

### C_ConfigurationWarnings.GetConfigurationWarningSeen

```lua
C_ConfigurationWarnings.GetConfigurationWarningSeen(configurationWarning: ConfigurationWarning) -> hasSeenConfigurationWarning: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ConfigurationWarnings.GetConfigurationWarningString

```lua
C_ConfigurationWarnings.GetConfigurationWarningString(configurationWarning: ConfigurationWarning) -> configurationWarningString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ConfigurationWarnings.GetConfigurationWarnings

```lua
C_ConfigurationWarnings.GetConfigurationWarnings(includeSeenWarnings: bool = false) -> configurationWarnings: table<ConfigurationWarning>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ConfigurationWarnings.SetConfigurationWarningSeen

```lua
C_ConfigurationWarnings.SetConfigurationWarningSeen(configurationWarning: ConfigurationWarning)
```

Secret: SecretArguments=AllowedWhenUntainted
