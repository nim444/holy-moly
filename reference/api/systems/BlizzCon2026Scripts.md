# BlizzCon2026Scripts

Type: System  
Namespace: `C_BlizzCon2026`  
Environment: All

## Functions

### C_BlizzCon2026.GetExperience

```lua
C_BlizzCon2026.GetExperience() -> experience: Bc26Experience
```

### C_BlizzCon2026.IsActive

```lua
C_BlizzCon2026.IsActive() -> isActive: bool
```

### C_BlizzCon2026.IsColdSwapFeatureEnabled

```lua
C_BlizzCon2026.IsColdSwapFeatureEnabled() -> isEnabled: bool
```

### C_BlizzCon2026.SetExperience

```lua
C_BlizzCon2026.SetExperience(experience: Bc26Experience)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### BC_26_COLD_SWAP_FEATURE_ENABLED_CHANGED

Payload: `newEnabled: bool, oldEnabled: bool`  
Flags: UniqueEvent  

### BC_26_EXPERIENCE_CHANGED

Payload: `newExperience: Bc26Experience, oldExperience: Bc26Experience`  
Flags: UniqueEvent  

## Tables

### Bc26Experience (Enumeration)

| Name | Value |
|---|---|
| Skyborne | 0 |
| Dungeon | 1 |
