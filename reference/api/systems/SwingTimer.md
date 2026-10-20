# SwingTimer

Type: System  
Namespace: `C_SwingTimer`  
Environment: All

## Functions

### C_SwingTimer.EnableRangeCheck

```lua
C_SwingTimer.EnableRangeCheck(swingType: PlayerSwingType, enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Used in conjunction with PlayerSwingRangeUpdate to inform the UI when the current target goes in or out of auto attack range.

### C_SwingTimer.IsTargetWithinSwingRange

```lua
C_SwingTimer.IsTargetWithinSwingRange(swingType: PlayerSwingType) -> isInRange: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Whether the current target is within range of the player's auto attack for the given swing type. Auto attacks only ever apply to the current target, so no other unit can be queried.

## Events

### PLAYER_SWING

Payload: `swingDuration: number, swingType: PlayerSwingType`  
Flags: SynchronousEvent  

### PLAYER_SWING_RANGE_UPDATE

Payload: `swingType: PlayerSwingType, isInRange: bool, checksRange: bool`  
Flags: SynchronousEvent  
Only signaled for swing types that have an active range check. See C_SwingTimer.EnableRangeCheck.

## Tables

### PlayerSwingType (Enumeration)

| Name | Value |
|---|---|
| MainHand | 0 |
| OffHand | 1 |
| Ranged | 2 |
