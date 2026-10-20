# AdventureMap

Type: System  
Namespace: `C_AdventureMap`  
Environment: All

## Functions

### C_AdventureMap.GetAdventureMapTextureKit

```lua
C_AdventureMap.GetAdventureMapTextureKit() -> adventureMapTextureKit: textureKit
```

### C_AdventureMap.GetNumMapInsets

```lua
C_AdventureMap.GetNumMapInsets() -> numMapInsets: number
```

### C_AdventureMap.GetNumQuestOffers

```lua
C_AdventureMap.GetNumQuestOffers() -> numQuestOffers: number
```

### C_AdventureMap.GetNumZoneChoices

```lua
C_AdventureMap.GetNumZoneChoices() -> numZoneChoices: number
```

### C_AdventureMap.GetQuestPortraitInfo

```lua
C_AdventureMap.GetQuestPortraitInfo(questID: number) -> info: AdventureMapQuestPortraitInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### ADVENTURE_MAP_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ADVENTURE_MAP_OPEN

Payload: `followerTypeID: number`  
Flags: SynchronousEvent  

### ADVENTURE_MAP_QUEST_UPDATE

Payload: `questID: number`  
Flags: SynchronousEvent  

### ADVENTURE_MAP_UPDATE_INSETS

Payload: `none`  
Flags: UniqueEvent  

### ADVENTURE_MAP_UPDATE_POIS

Payload: `none`  
Flags: UniqueEvent  

## Tables

### AdventureMapQuestPortraitInfo (Structure)

- `portraitDisplayID: number`
- `mountPortraitDisplayID: number`
- `name: string`
- `text: string`
- `modelSceneID: number?`
