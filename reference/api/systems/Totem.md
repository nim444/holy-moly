# Totem

Type: System  
Environment: All

## Functions

### DestroyTotem

```lua
DestroyTotem(slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetNumTotemSlots

```lua
GetNumTotemSlots() -> numSlots: number
```

### GetTotemCannotDismiss

```lua
GetTotemCannotDismiss(slot: luaIndex) -> cannotDismiss: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetTotemDuration

```lua
GetTotemDuration(slot: luaIndex) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetTotemInfo

```lua
GetTotemInfo(slot: luaIndex) -> haveTotem: bool, totemName: cstring, startTime: number, duration: number, icon: fileID, modRate: number, spellID: number
```

Secret: SecretWhenTotemSlotSecret, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetTotemTimeLeft

```lua
GetTotemTimeLeft(slot: luaIndex) -> timeLeft: number?
```

Secret: SecretWhenTotemSlotSecret, SecretArguments=AllowedWhenUntainted  

### TargetTotem

```lua
TargetTotem(slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### TotemInfoScript (Structure)

- `haveTotem: bool`
- `totemName: cstring`
- `startTime: number`
- `duration: number`
- `icon: fileID`
- `modRate: number`
- `spellID: number`
