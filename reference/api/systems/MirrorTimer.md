# MirrorTimer

Type: System  
Environment: All

## Functions

### GetMirrorTimerInfo

```lua
GetMirrorTimerInfo(timerIndex: luaIndex) -> name: cstring, startValue: number, maxValue: number, scale: number, paused: number, label: cstring, spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetMirrorTimerProgress

```lua
GetMirrorTimerProgress(timerName: cstring) -> progress: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### MirrorTimerInfo (Structure)

- `name: cstring`
- `startValue: number`
- `maxValue: number`
- `scale: number`
- `paused: number`
- `label: cstring`
- `spellID: number`
