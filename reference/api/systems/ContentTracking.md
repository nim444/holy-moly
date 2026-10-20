# ContentTracking

Type: System  
Namespace: `C_ContentTracking`  
Environment: All

## Functions

### C_ContentTracking.GetBestMapForTrackable

```lua
C_ContentTracking.GetBestMapForTrackable(trackableType: ContentTrackingType, trackableID: number, ignoreWaypoint: bool = false) -> result: ContentTrackingResult, mapID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.GetCollectableSourceTrackingEnabled

```lua
C_ContentTracking.GetCollectableSourceTrackingEnabled() -> isEnabled: bool
```

### C_ContentTracking.GetCollectableSourceTypes

```lua
C_ContentTracking.GetCollectableSourceTypes() -> collectableSourceTypes: table<ContentTrackingType>
```

### C_ContentTracking.GetCurrentTrackingTarget

```lua
C_ContentTracking.GetCurrentTrackingTarget(type: ContentTrackingType, id: number) -> targetType: ContentTrackingTargetType, targetID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.GetEncounterTrackingInfo

```lua
C_ContentTracking.GetEncounterTrackingInfo(journalEncounterID: number) -> trackingInfo: EncounterTrackingInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.GetNextWaypointForTrackable

```lua
C_ContentTracking.GetNextWaypointForTrackable(trackableType: ContentTrackingType, trackableID: number, uiMapID: number) -> result: ContentTrackingResult, mapInfo: ContentTrackingMapInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.GetObjectiveText

```lua
C_ContentTracking.GetObjectiveText(targetType: ContentTrackingTargetType, targetID: number, includeHyperlinks: bool = true) -> objectiveText: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.GetTitle

```lua
C_ContentTracking.GetTitle(trackableType: ContentTrackingType, trackableID: number) -> title: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.GetTrackablesOnMap

```lua
C_ContentTracking.GetTrackablesOnMap(trackableType: ContentTrackingType, uiMapID: number) -> result: ContentTrackingResult, trackableMapInfos: table<ContentTrackingMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.GetTrackedIDs

```lua
C_ContentTracking.GetTrackedIDs(trackableType: ContentTrackingType) -> entryIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.GetVendorTrackingInfo

```lua
C_ContentTracking.GetVendorTrackingInfo(collectableEntryID: number) -> vendorTrackingInfo: VendorTrackingInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.GetWaypointText

```lua
C_ContentTracking.GetWaypointText(trackableType: ContentTrackingType, trackableID: number) -> waypointText: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ContentTracking.IsNavigable

```lua
C_ContentTracking.IsNavigable(trackableType: ContentTrackingType, trackableID: number) -> result: ContentTrackingResult, isNavigable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

If successful, returns if the trackable is either on your current map, or if we're able to determine a route to that map from your location via waypoints.

### C_ContentTracking.IsTrackable

```lua
C_ContentTracking.IsTrackable(type: ContentTrackingType, id: number) -> isTrackable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.IsTracking

```lua
C_ContentTracking.IsTracking(type: ContentTrackingType, id: number) -> isTracking: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.StartTracking

```lua
C_ContentTracking.StartTracking(type: ContentTrackingType, id: number) -> error: ContentTrackingError?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.StopTracking

```lua
C_ContentTracking.StopTracking(type: ContentTrackingType, id: number, stopType: ContentTrackingStopType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ContentTracking.ToggleTracking

```lua
C_ContentTracking.ToggleTracking(type: ContentTrackingType, id: number, stopType: ContentTrackingStopType) -> error: ContentTrackingError?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CONTENT_TRACKING_IS_ENABLED_UPDATE

Payload: `isEnabled: bool`  
Flags: SynchronousEvent  

### CONTENT_TRACKING_LIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CONTENT_TRACKING_UPDATE

Payload: `type: ContentTrackingType, id: number, isTracked: bool`  
Flags: SynchronousEvent  

### TRACKABLE_INFO_UPDATE

Payload: `type: ContentTrackingType, id: number`  
Flags: SynchronousEvent  

### TRACKING_TARGET_INFO_UPDATE

Payload: `targetType: ContentTrackingTargetType, targetID: number`  
Flags: SynchronousEvent
