# TargetScript

Type: System  
Environment: All

## Functions

### AssistUnit

```lua
AssistUnit(name: cstring = , exactMatch: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### AttackTarget

```lua
AttackTarget()
```

### ClearFocus

```lua
ClearFocus()
```

### ClearTarget

```lua
ClearTarget() -> willMakeChange: bool
```

### FocusUnit

```lua
FocusUnit(name: cstring = )
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### IsTargetLoose

```lua
IsTargetLoose() -> isTargetLoose: bool
```

### SetPreferredGamepadInteractTarget

```lua
SetPreferredGamepadInteractTarget(unit: UnitToken?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### TargetDirectionEnemy

```lua
TargetDirectionEnemy(facing: number, coneAngle: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetDirectionFinished

```lua
TargetDirectionFinished()
```

### TargetDirectionFriend

```lua
TargetDirectionFriend(facing: number, coneAngle: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetLastEnemy

```lua
TargetLastEnemy()
```

### TargetLastFriend

```lua
TargetLastFriend()
```

### TargetLastTarget

```lua
TargetLastTarget()
```

### TargetNearest

```lua
TargetNearest(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestEnemy

```lua
TargetNearestEnemy(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestEnemyPlayer

```lua
TargetNearestEnemyPlayer(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestFriend

```lua
TargetNearestFriend(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestFriendPlayer

```lua
TargetNearestFriendPlayer(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestPartyMember

```lua
TargetNearestPartyMember(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetNearestRaidMember

```lua
TargetNearestRaidMember(reverse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetPriorityHighlightEnd

```lua
TargetPriorityHighlightEnd()
```

### TargetPriorityHighlightStart

```lua
TargetPriorityHighlightStart(useStartDelay: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### TargetToggle

```lua
TargetToggle()
```

Flags: HasRestrictions  

### TargetUnit

```lua
TargetUnit(name: cstring = , exactMatch: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions
