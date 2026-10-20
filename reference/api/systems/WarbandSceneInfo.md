# WarbandSceneInfo

Type: System  
Namespace: `C_WarbandScene`  
Environment: All

## Functions

### C_WarbandScene.GetRandomEntryID

```lua
C_WarbandScene.GetRandomEntryID() -> warbandSceneID: number
```

### C_WarbandScene.GetWarbandSceneEntry

```lua
C_WarbandScene.GetWarbandSceneEntry(warbandSceneID: number) -> warbandSceneEntry: WarbandSceneEntry
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WarbandScene.HasWarbandScene

```lua
C_WarbandScene.HasWarbandScene(warbandSceneID: number) -> owned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WarbandScene.IsFavorite

```lua
C_WarbandScene.IsFavorite(warbandSceneID: number) -> favorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WarbandScene.SearchWarbandSceneEntries

```lua
C_WarbandScene.SearchWarbandSceneEntries(searchParams: WarbandSceneSearchInfo) -> matchingEntryIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WarbandScene.SetFavorite

```lua
C_WarbandScene.SetFavorite(warbandSceneID: number, favorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WarbandScene.WarbandScenesAvailable

```lua
C_WarbandScene.WarbandScenesAvailable() -> areWarbandScenesAvailable: bool
```

## Events

### NEW_WARBAND_SCENE_ADDED

Payload: `warbandScenID: number`  
Flags: SynchronousEvent  

### WARBAND_SCENE_FAVORITES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### WarbandSceneEntry (Structure)

- `warbandSceneID: number = 0`
- `name: cstring`
- `description: cstring`
- `source: cstring`
- `quality: number`
- `textureKit: textureKit`
- `isFavorite: bool = false`
- `hasFanfare: bool = false`
- `sourceType: number = 0`

### WarbandSceneSearchInfo (Structure)

- `ownedOnly: bool = false`
- `favoritesOnly: bool = false`
