# RecentAllies

Type: System  
Namespace: `C_RecentAllies`  
Environment: All

## Functions

### C_RecentAllies.CanSetRecentAllyNote

```lua
C_RecentAllies.CanSetRecentAllyNote(characterGUID: WOWGUID) -> canSetNote: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.GetRecentAllies

```lua
C_RecentAllies.GetRecentAllies() -> recentAlliesData: table<RecentAllyData>
```

Flags: RequiresRecentAllies  

### C_RecentAllies.GetRecentAllyByFullName

```lua
C_RecentAllies.GetRecentAllyByFullName(fullCharacterName: cstring) -> recentAllyData: RecentAllyData?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.GetRecentAllyByGUID

```lua
C_RecentAllies.GetRecentAllyByGUID(characterGUID: WOWGUID) -> recentAllyData: RecentAllyData?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.IsInteractionCategoryFilterSupportedForCurrentGameType

```lua
C_RecentAllies.IsInteractionCategoryFilterSupportedForCurrentGameType(interactionCategoryFilter: RecentAlliesInteractionCategoryFilter) -> isInteractionCategoryFilterSupportedForCurrentGameType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_RecentAllies.IsRecentAllyByFullName

```lua
C_RecentAllies.IsRecentAllyByFullName(fullCharacterName: cstring) -> isRecentAlly: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.IsRecentAllyByGUID

```lua
C_RecentAllies.IsRecentAllyByGUID(characterGUID: WOWGUID) -> isRecentAlly: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.IsRecentAllyDataReady

```lua
C_RecentAllies.IsRecentAllyDataReady() -> isReady: bool
```

Flags: RequiresRecentAllies  

### C_RecentAllies.IsRecentAllyPinned

```lua
C_RecentAllies.IsRecentAllyPinned(characterGUID: WOWGUID) -> isPinned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.IsSystemEnabled

```lua
C_RecentAllies.IsSystemEnabled() -> isRecentAllySystemEnabled: bool
```

### C_RecentAllies.IsSystemSupported

```lua
C_RecentAllies.IsSystemSupported() -> isRecentAllySystemSupported: bool
```

### C_RecentAllies.SearchRecentAllies

```lua
C_RecentAllies.SearchRecentAllies(searchInfo: RecentAlliesSearchInfo) -> recentAlliesData: table<RecentAllyData>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.SetRecentAllyNote

```lua
C_RecentAllies.SetRecentAllyNote(characterGUID: WOWGUID, note: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.SetRecentAllyPinned

```lua
C_RecentAllies.SetRecentAllyPinned(characterGUID: WOWGUID, isPinned: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresRecentAllies  

### C_RecentAllies.TryRequestRecentAlliesData

```lua
C_RecentAllies.TryRequestRecentAlliesData()
```

Flags: RequiresRecentAllies, HasRestrictions  

## Events

### LET_RECENT_ALLIES_SEE_LOCATION_SETTING_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### RECENT_ALLIES_CACHE_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### RECENT_ALLIES_DATA_READY

Payload: `none`  
Flags: SynchronousEvent  

### RECENT_ALLIES_SYSTEM_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### RECENT_ALLY_DATA_UPDATED

Payload: `characterGUID: WOWGUID`  
Flags: SynchronousEvent  

## Tables

### RecentAlliesSearchInfo (Structure)

- `searchText: string`
- `isOnline: bool`
- `isDND: bool`
- `isAFK: bool`
- `isOffline: bool`
- `interactionCategoryFilters: table<RecentAlliesInteractionCategoryFilter>`

### RecentAllyCharacterData (Structure)

- `guid: WOWGUID`
- `name: string`
- `fullName: string`
- `realmName: string`
- `level: number`
- `classID: number`
- `raceID: number`
- `sex: UnitSex`

### RecentAllyData (Structure)

- `stateData: RecentAllyStateData`
- `characterData: RecentAllyCharacterData`
- `interactionData: RecentAllyInteractionData`

### RecentAllyInteraction (Structure)

- `type: RolodexType`
- `description: cstring`
- `timestamp: time_t`
- `contextData: RecentAllyInteractionContextData`

### RecentAllyInteractionContextData (Structure)

- `itemID: number?`
- `locationName: cstring?`
- `activityDifficultyID: number?`
- `activityDifficultyLevel: number?`

### RecentAllyInteractionData (Structure)

- `interactions: table<RecentAllyInteraction>`
- `note: string?`

### RecentAllyStateData (Structure)

- `isOnline: bool`
- `isDND: bool`
- `isAFK: bool`
- `isConvertedLegacyFriend: bool`
- `pinExpirationDate: time_t?`
- `friendRequestSentThisSession: bool`
- `currentLocation: string?`

## Preconditions

- `RequiresRecentAllies` (FailureMode=ReturnNothing)
