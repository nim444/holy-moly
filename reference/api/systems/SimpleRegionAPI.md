# SimpleRegionAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleRegionAPI:GetAlpha

```lua
SimpleRegionAPI:GetAlpha() -> alpha: SingleColorValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Alpha']  

### SimpleRegionAPI:GetDrawLayer

```lua
SimpleRegionAPI:GetDrawLayer() -> layer: DrawLayer, sublayer: number
```

### SimpleRegionAPI:GetEffectiveScale

```lua
SimpleRegionAPI:GetEffectiveScale() -> effectiveScale: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Scale']  

### SimpleRegionAPI:GetScale

```lua
SimpleRegionAPI:GetScale() -> scale: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Scale']  

### SimpleRegionAPI:GetVertexColor

```lua
SimpleRegionAPI:GetVertexColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha']  

Flags: MayReturnNothing  

### SimpleRegionAPI:IsIgnoringParentAlpha

```lua
SimpleRegionAPI:IsIgnoringParentAlpha() -> isIgnoring: bool
```

### SimpleRegionAPI:IsIgnoringParentScale

```lua
SimpleRegionAPI:IsIgnoringParentScale() -> isIgnoring: bool
```

### SimpleRegionAPI:IsObjectLoaded

```lua
SimpleRegionAPI:IsObjectLoaded() -> isLoaded: bool
```

### SimpleRegionAPI:SetAlpha

```lua
SimpleRegionAPI:SetAlpha(alpha: SingleColorValue)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleRegionAPI:SetAlphaFromBoolean

```lua
SimpleRegionAPI:SetAlphaFromBoolean(value: bool, alphaIfTrue: SingleColorValue = 255, alphaIfFalse: SingleColorValue = 0)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleRegionAPI:SetDrawLayer

```lua
SimpleRegionAPI:SetDrawLayer(layer: DrawLayer, sublevel: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleRegionAPI:SetIgnoreParentAlpha

```lua
SimpleRegionAPI:SetIgnoreParentAlpha(ignore: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleRegionAPI:SetIgnoreParentScale

```lua
SimpleRegionAPI:SetIgnoreParentScale(ignore: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleRegionAPI:SetScale

```lua
SimpleRegionAPI:SetScale(scale: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Scale'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleRegionAPI:SetVertexColor

```lua
SimpleRegionAPI:SetVertexColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleRegionAPI:SetVertexColorFromBoolean

```lua
SimpleRegionAPI:SetVertexColorFromBoolean(value: bool, colorIfTrue: colorRGBA, colorIfFalse: colorRGBA)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted
