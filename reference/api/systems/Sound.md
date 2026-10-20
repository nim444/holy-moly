# Sound

Type: System  
Namespace: `C_Sound`  
Environment: All

## Functions

### C_Sound.GetSoundScaledVolume

```lua
C_Sound.GetSoundScaledVolume(soundHandle: number) -> scaledVolume: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Sound.IsPlaying

```lua
C_Sound.IsPlaying(soundHandle: number) -> isPlaying: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Sound.PlayItemSound

```lua
C_Sound.PlayItemSound(soundType: ItemSoundType, itemLocation: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Sound.PlaySound

```lua
C_Sound.PlaySound(soundKitID: number, uiSoundSubType: UISoundSubType = g_defaultSI3UISoundSubTypeForLua, forceNoDuplicates: bool = false, runFinishCallback: bool = false, overridePriority: number?, volumeOverride: number?) -> success: bool, soundHandle: SoundHandle
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Sound.PlaySoundWithOptions

```lua
C_Sound.PlaySoundWithOptions(params: PlaySoundParams) -> success: bool, soundHandle: SoundHandle
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Sound.PlayVocalErrorSound

```lua
C_Sound.PlayVocalErrorSound(vocalErrorSoundID: Vocalerrorsounds)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SOUND_DEVICE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SOUNDKIT_FINISHED

Payload: `soundHandle: number`  
Flags: SynchronousEvent  

## Tables

### PlaySoundParams (Structure)

- `soundKitID: number`
- `uiSoundSubType: UISoundSubType = g_defaultSI3UISoundSubTypeForLua`
- `forceNoDuplicates: bool = false`
- `runFinishCallback: bool = false`
- `overridePriority: number?`
- `volumeOverride: number?`

### PlaySoundResult (Structure)

- `success: bool`
- `soundHandle: SoundHandle`
