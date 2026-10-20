# TTSSettings

Type: System  
Namespace: `C_TTSSettings`  
Environment: All

## Functions

### C_TTSSettings.GetChannelEnabled

```lua
C_TTSSettings.GetChannelEnabled(channelInfo: ChatChannelInfo) -> enabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.GetCharacterSettingsSaved

```lua
C_TTSSettings.GetCharacterSettingsSaved() -> settingsBeenSaved: bool
```

### C_TTSSettings.GetChatTypeEnabled

```lua
C_TTSSettings.GetChatTypeEnabled(chatName: cstring) -> enabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.GetSetting

```lua
C_TTSSettings.GetSetting(setting: TtsBoolSetting) -> enabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.GetSpeechRate

```lua
C_TTSSettings.GetSpeechRate() -> rate: number
```

### C_TTSSettings.GetSpeechVolume

```lua
C_TTSSettings.GetSpeechVolume() -> volume: number
```

### C_TTSSettings.GetVoiceOptionID

```lua
C_TTSSettings.GetVoiceOptionID(voiceType: TtsVoiceType) -> voiceID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.GetVoiceOptionName

```lua
C_TTSSettings.GetVoiceOptionName(voiceType: TtsVoiceType) -> voiceName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.MarkCharacterSettingsSaved

```lua
C_TTSSettings.MarkCharacterSettingsSaved()
```

### C_TTSSettings.SetChannelEnabled

```lua
C_TTSSettings.SetChannelEnabled(channelInfo: ChatChannelInfo, newVal: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetChannelKeyEnabled

```lua
C_TTSSettings.SetChannelKeyEnabled(channelKey: string, newVal: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetChatTypeEnabled

```lua
C_TTSSettings.SetChatTypeEnabled(chatName: cstring, newVal: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetDefaultSettings

```lua
C_TTSSettings.SetDefaultSettings()
```

### C_TTSSettings.SetSetting

```lua
C_TTSSettings.SetSetting(setting: TtsBoolSetting, newVal: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetSpeechRate

```lua
C_TTSSettings.SetSpeechRate(newVal: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetSpeechVolume

```lua
C_TTSSettings.SetSpeechVolume(newVal: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetVoiceOption

```lua
C_TTSSettings.SetVoiceOption(voiceType: TtsVoiceType, voiceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.SetVoiceOptionName

```lua
C_TTSSettings.SetVoiceOptionName(voiceType: TtsVoiceType, voiceName: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_TTSSettings.ShouldOverrideMessage

```lua
C_TTSSettings.ShouldOverrideMessage(language: number, messageText: string) -> overrideMessage: bool
```

Secret: SecretArguments=AllowedWhenUntainted
