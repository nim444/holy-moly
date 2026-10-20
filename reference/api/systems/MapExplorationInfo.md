# MapExplorationInfo

Type: System  
Namespace: `C_MapExplorationInfo`  
Environment: All

## Functions

### C_MapExplorationInfo.GetExploredAreaIDsAtPosition

```lua
C_MapExplorationInfo.GetExploredAreaIDsAtPosition(uiMapID: number, normalizedPosition: vector2) -> areaID: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MapExplorationInfo.GetExploredMapTextures

```lua
C_MapExplorationInfo.GetExploredMapTextures(uiMapID: number) -> overlayInfo: table<UiMapExplorationInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### MAP_EXPLORATION_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### UiMapExplorationHitRect (Structure)

- `top: number`
- `bottom: number`
- `left: number`
- `right: number`

### UiMapExplorationInfo (Structure)

- `textureWidth: number`
- `textureHeight: number`
- `offsetX: number`
- `offsetY: number`
- `isShownByMouseOver: bool`
- `isDrawOnTopLayer: bool`
- `fileDataIDs: table<number>`
- `hitRect: UiMapExplorationHitRect`
