# AreaPoiInfo

Type: System  
Namespace: `C_AreaPoiInfo`  
Environment: All

## Functions

### C_AreaPoiInfo.GetAreaPOIForMap

```lua
C_AreaPoiInfo.GetAreaPOIForMap(uiMapID: number) -> areaPoiIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AreaPoiInfo.GetAreaPOIInfo

```lua
C_AreaPoiInfo.GetAreaPOIInfo(uiMapID: number?, areaPoiID: number) -> poiInfo: AreaPOIInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AreaPoiInfo.GetAreaPOISecondsLeft

```lua
C_AreaPoiInfo.GetAreaPOISecondsLeft(areaPoiID: number) -> secondsLeft: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns the number of seconds until the POI expires.

### C_AreaPoiInfo.GetDelvesForMap

```lua
C_AreaPoiInfo.GetDelvesForMap(uiMapID: number) -> areaPoiIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns all area POIInfos flagged as delves for the given map.

### C_AreaPoiInfo.GetDragonridingRacesForMap

```lua
C_AreaPoiInfo.GetDragonridingRacesForMap(uiMapID: number) -> areaPoiIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns all area POIInfos flagged as dragonriding races for the given map.

### C_AreaPoiInfo.GetEventsForMap

```lua
C_AreaPoiInfo.GetEventsForMap(uiMapID: number) -> areaPoiIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns all area POIInfos flagged as events for the given map.

### C_AreaPoiInfo.GetQuestHubsForMap

```lua
C_AreaPoiInfo.GetQuestHubsForMap(uiMapID: number) -> areaPoiIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns all area POIInfos flagged as quest hubs for the given map.

### C_AreaPoiInfo.IsAreaPOITimed

```lua
C_AreaPoiInfo.IsAreaPOITimed(areaPoiID: number) -> isTimed: bool, hideTimerInTooltip: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

This statically determines if the POI is timed, GetAreaPOITimeLeft retrieves the value from the server and may return nothing for long intervals

## Events

### AREA_POIS_UPDATED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### AreaPOIInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `description: cstring?`
- `linkedUiMapID: number?`
- `textureIndex: number?`
- `tooltipWidgetSet: number?`
- `iconWidgetSet: number?`
- `atlasName: string?`
- `uiTextureKit: textureKit?`
- `shouldGlow: bool`
- `factionID: number?`
- `isPrimaryMapForPOI: bool`
- `isAlwaysOnFlightmap: bool`
- `addPaddingAboveTooltipWidgets: bool?`
- `highlightWorldQuestsOnHover: bool`
- `highlightVignettesOnHover: bool`
- `isCurrentEvent: bool`
- `isSuppressible: bool`
- `isLocked: bool = false`
