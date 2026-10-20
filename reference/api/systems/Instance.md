# Instance

Type: System  
Environment: All

## Functions

### CanChangePlayerDifficulty

```lua
CanChangePlayerDifficulty() -> canChange: bool, notOnCooldown: bool
```

Flags: MayReturnNothing  

### CanMapChangeDifficulty

```lua
CanMapChangeDifficulty(mapID: number?) -> canChange: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### CanShowResetInstances

```lua
CanShowResetInstances() -> result: bool
```

### GetBaseDifficultyID

```lua
GetBaseDifficultyID(difficultyID: number) -> baseDifficultyID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetDifficultyInfo

```lua
GetDifficultyInfo(difficultyID: number) -> name: cstring, instanceType: cstring, isHeroic: bool, isChallengeMode: bool, displayHeroic: bool, displayMythic: bool, toggleDifficultyID: number?, isLFR: bool, minPlayers: number?, maxPlayers: number?, isUserSelectable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetDungeonDifficultyID

```lua
GetDungeonDifficultyID() -> result: number
```

### GetInstanceBootTimeRemaining

```lua
GetInstanceBootTimeRemaining() -> result: number
```

### GetInstanceInfo

```lua
GetInstanceInfo() -> name: cstring, instanceType: cstring, difficultyID: number, difficultyName: cstring, maxPlayers: number, dynamicDifficulty: number, isDynamic: bool?, instanceID: number, instanceGroupSize: number, lfgDungeonID: number?, hasWorldTier: bool = false
```

### GetInstanceLockTimeRemaining

```lua
GetInstanceLockTimeRemaining() -> timeLeft: number, extending: bool, encountersTotal: number, encountersCompleted: number
```

### GetInstanceLockTimeRemainingEncounter

```lua
GetInstanceLockTimeRemainingEncounter(encounterIndex: luaIndex) -> encounterName: cstring, texture: cstring, isKilled: bool, ineligible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetLegacyRaidDifficultyID

```lua
GetLegacyRaidDifficultyID() -> result: number?
```

### GetRaidDifficultyID

```lua
GetRaidDifficultyID() -> result: number?
```

### IsInInstance

```lua
IsInInstance() -> isInInstance: bool, instanceType: cstring
```

### IsLegacyDifficulty

```lua
IsLegacyDifficulty(difficultyID: number) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### ResetInstances

```lua
ResetInstances()
```

### SetDungeonDifficultyID

```lua
SetDungeonDifficultyID(difficultyID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetLegacyRaidDifficultyID

```lua
SetLegacyRaidDifficultyID(difficultyID: number, force: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetRaidDifficultyID

```lua
SetRaidDifficultyID(difficultyID: number, force: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### DifficultyInfo (Structure)

- `name: cstring`
- `instanceType: cstring`
- `isHeroic: bool`
- `isChallengeMode: bool`
- `displayHeroic: bool`
- `displayMythic: bool`
- `toggleDifficultyID: number?`
- `isLFR: bool`
- `minPlayers: number?`
- `maxPlayers: number?`
- `isUserSelectable: bool`

### DungeonEncounterInfo (Structure)

- `encounterName: cstring`
- `texture: cstring`
- `isKilled: bool`
- `ineligible: bool`

### InstanceInfo (Structure)

- `name: cstring`
- `instanceType: cstring`
- `difficultyID: number`
- `difficultyName: cstring`
- `maxPlayers: number`
- `dynamicDifficulty: number`
- `isDynamic: bool?`
- `instanceID: number`
- `instanceGroupSize: number`
- `lfgDungeonID: number?`
- `hasWorldTier: bool = false`
