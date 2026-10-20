# CombatAudioAlert

Type: System  
Namespace: `C_CombatAudioAlert`  
Environment: All

## Functions

### C_CombatAudioAlert.AddToKnownTargetingList

```lua
C_CombatAudioAlert.AddToKnownTargetingList(unit: UnitToken) -> added: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatAudioAlert.GetCategoryVoice

```lua
C_CombatAudioAlert.GetCategoryVoice(category: CombatAudioAlertCategory) -> voice: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.GetCategoryVolume

```lua
C_CombatAudioAlert.GetCategoryVolume(category: CombatAudioAlertCategory) -> volume: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.GetFormatSetting

```lua
C_CombatAudioAlert.GetFormatSetting(unit: CombatAudioAlertUnit, alertType: CombatAudioAlertType) -> formatVal: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.GetSpeakerSpeed

```lua
C_CombatAudioAlert.GetSpeakerSpeed() -> speed: number
```

### C_CombatAudioAlert.GetSpecSetting

```lua
C_CombatAudioAlert.GetSpecSetting(setting: CombatAudioAlertSpecSetting) -> value: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.GetThrottle

```lua
C_CombatAudioAlert.GetThrottle(throttleType: CombatAudioAlertThrottle) -> throttle: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.IsEnabled

```lua
C_CombatAudioAlert.IsEnabled() -> isEnabled: bool
```

### C_CombatAudioAlert.RemoveFromKnownTargetingList

```lua
C_CombatAudioAlert.RemoveFromKnownTargetingList(unit: UnitToken) -> removed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CombatAudioAlert.SetCategoryVoice

```lua
C_CombatAudioAlert.SetCategoryVoice(category: CombatAudioAlertCategory, newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SetCategoryVolume

```lua
C_CombatAudioAlert.SetCategoryVolume(category: CombatAudioAlertCategory, newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SetFormatSetting

```lua
C_CombatAudioAlert.SetFormatSetting(unit: CombatAudioAlertUnit, alertType: CombatAudioAlertType, newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SetSpeakerSpeed

```lua
C_CombatAudioAlert.SetSpeakerSpeed(newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SetSpecSetting

```lua
C_CombatAudioAlert.SetSpecSetting(setting: CombatAudioAlertSpecSetting, newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SetThrottle

```lua
C_CombatAudioAlert.SetThrottle(throttleType: CombatAudioAlertThrottle, newVal: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CombatAudioAlert.SpeakText

```lua
C_CombatAudioAlert.SpeakText(text: string, category: CombatAudioAlertCategory, allowOverlap: bool = true) -> utteranceID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing
