# Vignette

Type: System  
Namespace: `C_VignetteInfo`  
Environment: All

## Functions

### C_VignetteInfo.FindBestUniqueVignette

```lua
C_VignetteInfo.FindBestUniqueVignette(vignetteGUIDs: table<WOWGUID>) -> bestUniqueVignetteIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VignetteInfo.GetHealthPercent

```lua
C_VignetteInfo.GetHealthPercent(vignetteGUID: WOWGUID) -> healthPct: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VignetteInfo.GetRecommendedGroupSize

```lua
C_VignetteInfo.GetRecommendedGroupSize(vignetteGUID: WOWGUID) -> minGroupSize: number, maxGroupSize: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_VignetteInfo.GetVignetteInfo

```lua
C_VignetteInfo.GetVignetteInfo(vignetteGUID: WOWGUID) -> vignetteInfo: VignetteInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_VignetteInfo.GetVignettePosition

```lua
C_VignetteInfo.GetVignettePosition(vignetteGUID: WOWGUID, uiMapID: number) -> vignettePosition: vector2, vignetteFacing: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_VignetteInfo.GetVignettes

```lua
C_VignetteInfo.GetVignettes() -> vignetteGUIDs: table<WOWGUID>
```

## Events

### VIGNETTE_MINIMAP_UPDATED

Payload: `vignetteGUID: WOWGUID, onMinimap: bool`  
Flags: UniqueEvent  

### VIGNETTES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### VignetteInfo (Structure)

- `vignetteGUID: WOWGUID`
- `objectGUID: WOWGUID`
- `name: cstring`
- `isDead: bool`
- `onWorldMap: bool`
- `zoneInfiniteAOI: bool`
- `onMinimap: bool`
- `isUnique: bool`
- `inFogOfWar: bool`
- `atlasName: textureAtlas`
- `hasTooltip: bool`
- `vignetteID: number`
- `type: VignetteType`
- `rewardQuestID: number`
- `tooltipWidgetSet: number?`
- `iconWidgetSet: number?`
- `addPaddingAboveTooltipWidgets: bool?`
- `mapPin: UIMapPinInfo?`
- `objectiveType: VignetteObjectiveType?`
