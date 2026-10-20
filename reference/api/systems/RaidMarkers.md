# RaidMarkers

Type: System  
Environment: All

## Functions

### CanBeRaidTarget

```lua
CanBeRaidTarget(target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### ClearRaidMarker

```lua
ClearRaidMarker(raidMarkerIndex: luaIndex = MAX_RAID_MARKERS)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### GetNextAvailableRaidTargetMarkerIndex

```lua
GetNextAvailableRaidTargetMarkerIndex(startIndex: luaIndex, reverseSearch: bool = false, wrapSearch: bool = false, treatDeadNonFriendlyAsAvailable: bool = false) -> nextAvailableRaidTargetMarkerIndex: luaIndex
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### GetRaidTargetIndex

```lua
GetRaidTargetIndex(target: UnitToken) -> result: luaIndex?
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### IsRaidMarkerActive

```lua
IsRaidMarkerActive(index: luaIndex) -> result: bool
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### IsRaidMarkerSystemEnabled

```lua
IsRaidMarkerSystemEnabled() -> enabled: bool
```

### PlaceRaidMarker

```lua
PlaceRaidMarker(index: luaIndex, token: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### RemoveRaidTargets

```lua
RemoveRaidTargets()
```

Flags: HasRestrictions  

Removes all assigned raid target markers.

### SetRaidTarget

```lua
SetRaidTarget(target: UnitToken, userIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions
