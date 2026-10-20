# DeathRecap

Type: System  
Namespace: `C_DeathRecap`  
Environment: All

## Functions

### C_DeathRecap.GetRecapEvents

```lua
C_DeathRecap.GetRecapEvents(recapID: number?) -> events: table<DeathRecapEventInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DeathRecap.GetRecapLink

```lua
C_DeathRecap.GetRecapLink(recapID: number?) -> link: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DeathRecap.GetRecapMaxHealth

```lua
C_DeathRecap.GetRecapMaxHealth(recapID: number?) -> maxHealth: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the max health for the unit that died in the provided death recap.

### C_DeathRecap.HasRecapEvents

```lua
C_DeathRecap.HasRecapEvents(recapID: number?) -> hasEvents: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### DeathRecapEventInfo (Structure)
