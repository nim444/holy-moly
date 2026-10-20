# Minimap

Type: System  
Namespace: `C_Minimap`  
Environment: All

## Functions

### C_Minimap.CanTrackBattlePets

```lua
C_Minimap.CanTrackBattlePets() -> CanTrackBattlePets: bool
```

### C_Minimap.ClearAllTracking

```lua
C_Minimap.ClearAllTracking()
```

### C_Minimap.ClearMinimapInsetInfo

```lua
C_Minimap.ClearMinimapInsetInfo()
```

### C_Minimap.GetDefaultTrackingValue

```lua
C_Minimap.GetDefaultTrackingValue(filterType: MinimapTrackingFilter) -> defaultValue: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.GetDrawGroundTextures

```lua
C_Minimap.GetDrawGroundTextures() -> draw: bool
```

### C_Minimap.GetNumQuestPOIWorldEffects

```lua
C_Minimap.GetNumQuestPOIWorldEffects() -> worldEffectCount: number
```

### C_Minimap.GetNumTrackingTypes

```lua
C_Minimap.GetNumTrackingTypes() -> numTrackingTypes: number
```

### C_Minimap.GetPOITextureCoords

```lua
C_Minimap.GetPOITextureCoords(index: number?) -> textureCoordsX: number, textureCoordsY: number, textureCoordsZ: number, textureCoordsW: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.GetTrackingFilter

```lua
C_Minimap.GetTrackingFilter(spellIndex: luaIndex) -> trackingType: MinimapScriptTrackingFilter
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.GetTrackingInfo

```lua
C_Minimap.GetTrackingInfo(spellIndex: luaIndex) -> trackingInfo: MinimapScriptTrackingInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.GetUiMapID

```lua
C_Minimap.GetUiMapID() -> uiMapID: number?
```

### C_Minimap.GetViewRadius

```lua
C_Minimap.GetViewRadius() -> yards: number
```

### C_Minimap.IsFilteredOut

```lua
C_Minimap.IsFilteredOut(filterType: MinimapTrackingFilter) -> isFiltered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.IsInsideQuestBlob

```lua
C_Minimap.IsInsideQuestBlob(questID: number) -> isInside: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.IsRotateMinimapIgnored

```lua
C_Minimap.IsRotateMinimapIgnored() -> isIgnored: bool
```

### C_Minimap.IsTrackingAccountCompletedQuests

```lua
C_Minimap.IsTrackingAccountCompletedQuests() -> IsTrackingAccountCompletedQuests: bool
```

### C_Minimap.IsTrackingBattlePets

```lua
C_Minimap.IsTrackingBattlePets() -> isTrackingBattlePets: bool
```

### C_Minimap.IsTrackingHiddenQuests

```lua
C_Minimap.IsTrackingHiddenQuests() -> isTrackingHiddenQuests: bool
```

### C_Minimap.SetDrawGroundTextures

```lua
C_Minimap.SetDrawGroundTextures(draw: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.SetIgnoreRotateMinimap

```lua
C_Minimap.SetIgnoreRotateMinimap(ignore: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.SetMinimapInsetInfo

```lua
C_Minimap.SetMinimapInsetInfo(minAngle: number, maxAngle: number, scalar: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.SetTracking

```lua
C_Minimap.SetTracking(index: luaIndex, on: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Minimap.ShouldUseHybridMinimap

```lua
C_Minimap.ShouldUseHybridMinimap() -> shouldUse: bool
```

## Events

### MINIMAP_PING

Payload: `unitTarget: UnitTokenVariant, y: number, x: number`  
Flags: SecretPayloads, HasRestrictions, CallbackEvent  

### MINIMAP_UPDATE_TRACKING

Payload: `none`  
Flags: UniqueEvent  

### MINIMAP_UPDATE_ZOOM

Payload: `none`  
Flags: UniqueEvent  

### PLAYER_INSIDE_QUEST_BLOB_STATE_CHANGED

Payload: `questID: number, isInside: bool`  
Flags: SynchronousEvent  

## Tables

### MinimapScriptTrackingFilter (Structure)

- `spellID: number?`
- `filterID: MinimapTrackingFilter?`

### MinimapScriptTrackingInfo (Structure)

- `name: cstring`
- `texture: fileID`
- `active: bool`
- `type: cstring`
- `subType: number`
- `spellID: number?`
