# GameRules

Type: System  
Namespace: `C_GameRules`  
Environment: All

## Functions

### C_GameRules.AccountHasSDEnabled

```lua
C_GameRules.AccountHasSDEnabled() -> isSDEnabled: bool
```

### C_GameRules.AutoConnectToGameModeRealm

```lua
C_GameRules.AutoConnectToGameModeRealm(gameModeRecordID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.DoesGameModeHavePromo

```lua
C_GameRules.DoesGameModeHavePromo(gameModeRecordID: number) -> hasPromo: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.GetActiveGameMode

```lua
C_GameRules.GetActiveGameMode() -> gameMode: GameMode
```

### C_GameRules.GetCurrentEventRealmQueues

```lua
C_GameRules.GetCurrentEventRealmQueues() -> eventRealmQueues: EventRealmQueues
```

### C_GameRules.GetCurrentGameModeDisplayInfo

```lua
C_GameRules.GetCurrentGameModeDisplayInfo() -> info: GameModeDisplayInfo?
```

### C_GameRules.GetCurrentGameModeRecordID

```lua
C_GameRules.GetCurrentGameModeRecordID() -> gameModeRecordID: number
```

### C_GameRules.GetDisplayedGameModeRecordIDAtIndex

```lua
C_GameRules.GetDisplayedGameModeRecordIDAtIndex(displayIndex: luaIndex) -> gameModeRecordID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.GetForeverExperiencePreset

```lua
C_GameRules.GetForeverExperiencePreset() -> preset: ForeverExperiencePreset?
```

### C_GameRules.GetGameModeDisplayInfoByRecordID

```lua
C_GameRules.GetGameModeDisplayInfoByRecordID(gameModeRecordID: number) -> info: GameModeDisplayInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.GetGameModeGlueScreenName

```lua
C_GameRules.GetGameModeGlueScreenName() -> screenName: cstring
```

### C_GameRules.GetGameModePromoGlobalString

```lua
C_GameRules.GetGameModePromoGlobalString(gameModeRecordID: number) -> promoGlobalString: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.GetGameRuleAsFloat

```lua
C_GameRules.GetGameRuleAsFloat(gameRule: GameRule, decimalPlaces: number = 0) -> value: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the numeric value specified in the Game Rule, multiplied by 0.1 for every decimal place requested

### C_GameRules.GetGameRuleAsFrameStrata

```lua
C_GameRules.GetGameRuleAsFrameStrata(gameRule: GameRule) -> frameStrata: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the value specified in the Game Rule converted to a frame strata

### C_GameRules.GetNumDisplayedGameModes

```lua
C_GameRules.GetNumDisplayedGameModes() -> numDisplayedGameModes: number
```

### C_GameRules.IsCharacterlessLoginActive

```lua
C_GameRules.IsCharacterlessLoginActive() -> active: bool
```

### C_GameRules.IsClassAllowedForGameMode

```lua
C_GameRules.IsClassAllowedForGameMode(classID: number) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.IsGameModeEnabled

```lua
C_GameRules.IsGameModeEnabled(gameModeRecordID: number) -> enabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.IsGameRuleActive

```lua
C_GameRules.IsGameRuleActive(gameRule: GameRule) -> isActive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.IsHardcoreActive

```lua
C_GameRules.IsHardcoreActive() -> active: bool
```

### C_GameRules.IsMultiActionBarVisibilityForced

```lua
C_GameRules.IsMultiActionBarVisibilityForced() -> valid: bool
```

### C_GameRules.IsPersonalResourceDisplayEnabled

```lua
C_GameRules.IsPersonalResourceDisplayEnabled() -> isPersonalResourceDisplayEnabled: bool
```

Checks the game rule as well as nameplateShowSelf

### C_GameRules.IsPlunderstorm

```lua
C_GameRules.IsPlunderstorm() -> active: bool
```

### C_GameRules.IsSDHDToggleEnabled

```lua
C_GameRules.IsSDHDToggleEnabled() -> isEnabled: bool
```

### C_GameRules.IsSelfFoundAllowed

```lua
C_GameRules.IsSelfFoundAllowed() -> active: bool
```

### C_GameRules.IsStandard

```lua
C_GameRules.IsStandard() -> active: bool
```

### C_GameRules.IsWoWHack

```lua
C_GameRules.IsWoWHack() -> active: bool
```

### C_GameRules.SetForeverExperiencePreset

```lua
C_GameRules.SetForeverExperiencePreset(preset: ForeverExperiencePreset)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GameRules.SetSDHDToggleValue

```lua
C_GameRules.SetSDHDToggleValue(setToSD: bool, usageLocation: SdToggleUsageLocationUI)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTIVE_GAME_MODE_UPDATED

Payload: `gameMode: GameMode`  
Flags: SynchronousEvent  

### AVAILABLE_GAME_MODES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### EVENT_REALM_QUEUES_UPDATED

Payload: `eventRealmQueues: EventRealmQueues`  
Flags: SynchronousEvent  

### GAME_MODE_DISPLAY_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### GAME_MODE_DISPLAY_MODE_TOGGLE_DISABLED

Payload: `gameModeRecordID: number, disabled: bool`  
Flags: SynchronousEvent  

### GAME_RULES_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ForeverExperiencePreset (Enumeration)

| Name | Value |
|---|---|
| Classic | 0 |
| Modern | 1 |

### SdToggleUsageLocationUI (Enumeration)

| Name | Value |
|---|---|
| BeforeLogin | 0 |
| CharacterCreation | 1 |
| BarberShop | 2 |
| OptionsMenu | 3 |

### GameModeDisplayInfo (Structure)

- `logo: fileID`
- `logoHeight: number`
- `logoVerticalOffset: number`
- `logoShrunkenHeight: number`
- `logoUsesDarkBackdrop: bool`
- `characterCreateExtraHeight: number`
- `characterCreateOuterBorder: fileID`
