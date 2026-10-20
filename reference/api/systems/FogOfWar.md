# FogOfWar

Type: System  
Namespace: `C_FogOfWar`  
Environment: All

## Functions

### C_FogOfWar.GetFogOfWarForMap

```lua
C_FogOfWar.GetFogOfWarForMap(uiMapID: number) -> fogOfWarID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_FogOfWar.GetFogOfWarInfo

```lua
C_FogOfWar.GetFogOfWarInfo(fogOfWarID: number) -> fogOfWarInfo: FogOfWarInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### FOG_OF_WAR_UPDATED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### FogOfWarInfo (Structure)

- `fogOfWarID: number`
- `backgroundAtlas: textureAtlas`
- `maskAtlas: textureAtlas`
- `maskScalar: number`
