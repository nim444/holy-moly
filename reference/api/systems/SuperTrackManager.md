# SuperTrackManager

Type: System  
Namespace: `C_SuperTrack`  
Environment: All

## Functions

### C_SuperTrack.ClearAllSuperTracked

```lua
C_SuperTrack.ClearAllSuperTracked()
```

### C_SuperTrack.ClearSuperTrackedContent

```lua
C_SuperTrack.ClearSuperTrackedContent()
```

### C_SuperTrack.ClearSuperTrackedMapPin

```lua
C_SuperTrack.ClearSuperTrackedMapPin()
```

### C_SuperTrack.GetHighestPrioritySuperTrackingType

```lua
C_SuperTrack.GetHighestPrioritySuperTrackingType() -> type: SuperTrackingType?
```

### C_SuperTrack.GetSuperTrackedContent

```lua
C_SuperTrack.GetSuperTrackedContent() -> trackableType: ContentTrackingType, trackableID: number
```

Flags: MayReturnNothing  

### C_SuperTrack.GetSuperTrackedItemName

```lua
C_SuperTrack.GetSuperTrackedItemName() -> name: string, description: string
```

Flags: MayReturnNothing  

### C_SuperTrack.GetSuperTrackedMapPin

```lua
C_SuperTrack.GetSuperTrackedMapPin() -> type: SuperTrackingMapPinType, typeID: number
```

Flags: MayReturnNothing  

### C_SuperTrack.GetSuperTrackedQuestID

```lua
C_SuperTrack.GetSuperTrackedQuestID() -> questID: number?
```

### C_SuperTrack.GetSuperTrackedVignette

```lua
C_SuperTrack.GetSuperTrackedVignette() -> vignetteGUID: WOWGUID?
```

### C_SuperTrack.IsSuperTrackingAnything

```lua
C_SuperTrack.IsSuperTrackingAnything() -> isSuperTracking: bool
```

### C_SuperTrack.IsSuperTrackingContent

```lua
C_SuperTrack.IsSuperTrackingContent() -> isSuperTracking: bool
```

### C_SuperTrack.IsSuperTrackingCorpse

```lua
C_SuperTrack.IsSuperTrackingCorpse() -> isSuperTracking: bool
```

### C_SuperTrack.IsSuperTrackingMapPin

```lua
C_SuperTrack.IsSuperTrackingMapPin() -> isSuperTracking: bool
```

### C_SuperTrack.IsSuperTrackingQuest

```lua
C_SuperTrack.IsSuperTrackingQuest() -> isSuperTracking: bool
```

### C_SuperTrack.IsSuperTrackingUserWaypoint

```lua
C_SuperTrack.IsSuperTrackingUserWaypoint() -> isSuperTracking: bool
```

### C_SuperTrack.SetSuperTrackedContent

```lua
C_SuperTrack.SetSuperTrackedContent(trackableType: ContentTrackingType, trackableID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SuperTrack.SetSuperTrackedMapPin

```lua
C_SuperTrack.SetSuperTrackedMapPin(type: SuperTrackingMapPinType, typeID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SuperTrack.SetSuperTrackedQuestID

```lua
C_SuperTrack.SetSuperTrackedQuestID(questID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SuperTrack.SetSuperTrackedUserWaypoint

```lua
C_SuperTrack.SetSuperTrackedUserWaypoint(superTracked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SuperTrack.SetSuperTrackedVignette

```lua
C_SuperTrack.SetSuperTrackedVignette(vignetteGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SUPER_TRACKING_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### SUPER_TRACKING_PATH_UPDATED

Payload: `none`  
Flags: UniqueEvent
