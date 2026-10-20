# FrameAPIUnitPositionFrame

Type: ScriptObject  
Environment: All

## Functions

### FrameAPIUnitPositionFrame:AddUnit

```lua
FrameAPIUnitPositionFrame:AddUnit(unitTokenString: cstring, asset: TextureAssetDisk, width: uiUnit?, height: uiUnit?, r: number?, g: number?, b: number?, a: number?, sublayer: number?, showFacing: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:ClearUnits

```lua
FrameAPIUnitPositionFrame:ClearUnits()
```

### FrameAPIUnitPositionFrame:FinalizeUnits

```lua
FrameAPIUnitPositionFrame:FinalizeUnits()
```

### FrameAPIUnitPositionFrame:GetMouseOverUnits

```lua
FrameAPIUnitPositionFrame:GetMouseOverUnits() -> units: UnitTokenType
```

### FrameAPIUnitPositionFrame:GetPlayerPingScale

```lua
FrameAPIUnitPositionFrame:GetPlayerPingScale() -> scale: number
```

### FrameAPIUnitPositionFrame:GetUiMapID

```lua
FrameAPIUnitPositionFrame:GetUiMapID() -> mapID: number
```

### FrameAPIUnitPositionFrame:SetPlayerPingScale

```lua
FrameAPIUnitPositionFrame:SetPlayerPingScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:SetPlayerPingTexture

```lua
FrameAPIUnitPositionFrame:SetPlayerPingTexture(textureType: PingTextureType, asset: FileAsset, width: uiUnit = 0, height: uiUnit = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:SetUiMapID

```lua
FrameAPIUnitPositionFrame:SetUiMapID(mapID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:SetUnitColor

```lua
FrameAPIUnitPositionFrame:SetUnitColor(unit: UnitTokenType, colorR: number, colorG: number, colorB: number, colorA: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:StartPlayerPing

```lua
FrameAPIUnitPositionFrame:StartPlayerPing(duration: number = 0, fadeDuration: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIUnitPositionFrame:StopPlayerPing

```lua
FrameAPIUnitPositionFrame:StopPlayerPing()
```
