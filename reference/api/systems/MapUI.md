# MapUI

Type: System  
Namespace: `C_Map`  
Environment: All

## Functions

### C_Map.CanSetUserWaypointOnMap

```lua
C_Map.CanSetUserWaypointOnMap(uiMapID: number) -> canSet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.ClearUserWaypoint

```lua
C_Map.ClearUserWaypoint()
```

### C_Map.CloseWorldMapInteraction

```lua
C_Map.CloseWorldMapInteraction()
```

### C_Map.GetAreaInfo

```lua
C_Map.GetAreaInfo(areaID: number) -> name: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetBestMapForUnit

```lua
C_Map.GetBestMapForUnit(unitToken: UnitToken) -> uiMapID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Only works for the player and party members.

### C_Map.GetBountySetMaps

```lua
C_Map.GetBountySetMaps(bountySetID: number) -> mapIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetFallbackWorldMapID

```lua
C_Map.GetFallbackWorldMapID() -> uiMapID: number
```

### C_Map.GetMapArtBackgroundAtlas

```lua
C_Map.GetMapArtBackgroundAtlas(uiMapID: number) -> atlasName: textureAtlas
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetMapArtHelpTextPosition

```lua
C_Map.GetMapArtHelpTextPosition(uiMapID: number) -> position: MapCanvasPosition
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetMapArtID

```lua
C_Map.GetMapArtID(uiMapID: number) -> uiMapArtID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapArtLayerTextures

```lua
C_Map.GetMapArtLayerTextures(uiMapID: number, layerIndex: luaIndex) -> textures: table<fileID>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapArtLayers

```lua
C_Map.GetMapArtLayers(uiMapID: number) -> layerInfo: table<UiMapLayerInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapArtZoneTextPosition

```lua
C_Map.GetMapArtZoneTextPosition(uiMapID: number) -> position: MapCanvasPosition
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetMapBannersForMap

```lua
C_Map.GetMapBannersForMap(uiMapID: number) -> mapBanners: table<MapBannerInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetMapChildrenInfo

```lua
C_Map.GetMapChildrenInfo(uiMapID: number, mapType: UIMapType?, allDescendants: bool?) -> info: table<UiMapDetails>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapDisplayInfo

```lua
C_Map.GetMapDisplayInfo(uiMapID: number) -> hideIcons: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapGroupID

```lua
C_Map.GetMapGroupID(uiMapID: number) -> uiMapGroupID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapGroupMembersInfo

```lua
C_Map.GetMapGroupMembersInfo(uiMapGroupID: number) -> info: table<UiMapGroupMemberInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapHighlightInfoAtPosition

```lua
C_Map.GetMapHighlightInfoAtPosition(uiMapID: number, x: number, y: number) -> fileDataID: fileID, atlasID: textureAtlas, texturePercentageX: number, texturePercentageY: number, textureX: number, textureY: number, scrollChildX: number, scrollChildY: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapHighlightPulseInfo

```lua
C_Map.GetMapHighlightPulseInfo(uiMapID: number) -> fileDataID: fileID, atlasID: textureAtlas, texturePercentageX: number, texturePercentageY: number, textureX: number, textureY: number, scrollChildX: number, scrollChildY: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapInfo

```lua
C_Map.GetMapInfo(uiMapID: number) -> info: UiMapDetails
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapInfoAtPosition

```lua
C_Map.GetMapInfoAtPosition(uiMapID: number, x: number, y: number, ignoreZoneMapPositionData: bool?) -> info: UiMapDetails
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapLevels

```lua
C_Map.GetMapLevels(uiMapID: number) -> playerMinLevel: number, playerMaxLevel: number, petMinLevel: number = 0, petMaxLevel: number = 0
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapLinksForMap

```lua
C_Map.GetMapLinksForMap(uiMapID: number) -> mapLinks: table<MapLinkInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.GetMapPosFromWorldPos

```lua
C_Map.GetMapPosFromWorldPos(continentID: number, worldPosition: vector2, overrideUiMapID: number?) -> uiMapID: number, mapPosition: vector2
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapRectOnMap

```lua
C_Map.GetMapRectOnMap(uiMapID: number, topUiMapID: number) -> minX: number, maxX: number, minY: number, maxY: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetMapWorldSize

```lua
C_Map.GetMapWorldSize(uiMapID: number) -> width: number, height: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the size in yards of the area represented by the map.

### C_Map.GetPlayerMapPosition

```lua
C_Map.GetPlayerMapPosition(uiMapID: number, unitToken: UnitToken) -> position: vector2?
```

Secret: SecretArguments=AllowedWhenUntainted  

Only works for the player and party members.

### C_Map.GetUserWaypoint

```lua
C_Map.GetUserWaypoint() -> point: UiMapPoint
```

Flags: MayReturnNothing  

### C_Map.GetUserWaypointFromHyperlink

```lua
C_Map.GetUserWaypointFromHyperlink(hyperlink: string) -> point: UiMapPoint
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetUserWaypointHyperlink

```lua
C_Map.GetUserWaypointHyperlink() -> hyperlink: string
```

Flags: MayReturnNothing  

### C_Map.GetUserWaypointPositionForMap

```lua
C_Map.GetUserWaypointPositionForMap(uiMapID: number) -> mapPosition: vector2
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.GetWorldPosFromMapPos

```lua
C_Map.GetWorldPosFromMapPos(uiMapID: number, mapPosition: vector2) -> continentID: number, worldPosition: vector2
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Map.HasUserWaypoint

```lua
C_Map.HasUserWaypoint() -> hasUserWaypoint: bool
```

### C_Map.IsCityMap

```lua
C_Map.IsCityMap(uiMapID: number) -> isCityMap: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.IsMapValidForNavBarDropdown

```lua
C_Map.IsMapValidForNavBarDropdown(uiMapID: number) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.MapHasArt

```lua
C_Map.MapHasArt(uiMapID: number) -> hasArt: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.OpenWorldMap

```lua
C_Map.OpenWorldMap(uiMapID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Map.RequestPreloadMap

```lua
C_Map.RequestPreloadMap(uiMapID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Map.SetUserWaypoint

```lua
C_Map.SetUserWaypoint(point: UiMapPoint) -> wasSet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### NEW_WMO_CHUNK

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_MAP_CHANGED

Payload: `oldMapID: number, newMapID: number`  
Flags: SynchronousEvent  

### USER_WAYPOINT_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### WORLD_MAP_OPEN

Payload: `uiMapID: number?`  
Flags: SynchronousEvent  

### ZONE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### ZONE_CHANGED_INDOORS

Payload: `none`  
Flags: SynchronousEvent  

### ZONE_CHANGED_NEW_AREA

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### MapBannerInfo (Structure)

- `areaPoiID: number`
- `name: cstring`
- `atlasName: string`
- `uiTextureKit: textureKit?`

### MapLinkInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `atlasName: string`
- `linkedUiMapID: number`

### UiMapDetails (Structure)

- `mapID: number`
- `name: cstring`
- `mapType: UIMapType`
- `parentMapID: number`
- `flags: UIMapFlag`

### UiMapGroupMemberInfo (Structure)

- `mapID: number`
- `relativeHeightIndex: number`
- `name: cstring`

### UiMapHighlightInfo (Structure)

- `fileDataID: fileID`
- `atlasID: textureAtlas`
- `texturePercentageX: number`
- `texturePercentageY: number`
- `textureX: number`
- `textureY: number`
- `scrollChildX: number`
- `scrollChildY: number`

### UiMapLayerInfo (Structure)

- `layerWidth: number`
- `layerHeight: number`
- `tileWidth: number`
- `tileHeight: number`
- `minScale: number`
- `maxScale: number`
- `additionalZoomSteps: number`
