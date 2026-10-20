# SimpleStatusBarAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleStatusBarAPI:GetFillStyle

```lua
SimpleStatusBarAPI:GetFillStyle() -> fillStyle: StatusBarFillStyle
```

### SimpleStatusBarAPI:GetInterpolatedValue

```lua
SimpleStatusBarAPI:GetInterpolatedValue() -> value: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.BarValue']  

Returns the current interpolated value displayed by the bar.

### SimpleStatusBarAPI:GetMinMaxValues

```lua
SimpleStatusBarAPI:GetMinMaxValues() -> minValue: number, maxValue: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.BarValue']  

### SimpleStatusBarAPI:GetOrientation

```lua
SimpleStatusBarAPI:GetOrientation() -> orientation: Orientation
```

### SimpleStatusBarAPI:GetRenderMode

```lua
SimpleStatusBarAPI:GetRenderMode() -> renderMode: StatusBarRenderMode
```

### SimpleStatusBarAPI:GetReverseFill

```lua
SimpleStatusBarAPI:GetReverseFill() -> isReverseFill: bool
```

### SimpleStatusBarAPI:GetRotatesTexture

```lua
SimpleStatusBarAPI:GetRotatesTexture() -> rotatesTexture: bool
```

### SimpleStatusBarAPI:GetStatusBarColor

```lua
SimpleStatusBarAPI:GetStatusBarColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha']  

### SimpleStatusBarAPI:GetStatusBarDesaturation

```lua
SimpleStatusBarAPI:GetStatusBarDesaturation() -> desaturation: normalizedValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Desaturation']  

### SimpleStatusBarAPI:GetStatusBarTexture

```lua
SimpleStatusBarAPI:GetStatusBarTexture() -> texture: SimpleTexture
```

### SimpleStatusBarAPI:GetTimerDuration

```lua
SimpleStatusBarAPI:GetTimerDuration() -> duration: LuaDurationObject
```

### SimpleStatusBarAPI:GetValue

```lua
SimpleStatusBarAPI:GetValue() -> value: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.BarValue']  

### SimpleStatusBarAPI:IsInterpolating

```lua
SimpleStatusBarAPI:IsInterpolating() -> isInterpolating: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.BarValue']  

Returns true if the status bar is currently interpolating toward a target value.

### SimpleStatusBarAPI:IsStatusBarDesaturated

```lua
SimpleStatusBarAPI:IsStatusBarDesaturated() -> desaturated: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Desaturation']  

Flags: RequiresStatusBarDesaturationAccess  

### SimpleStatusBarAPI:SetColorFill

```lua
SimpleStatusBarAPI:SetColorFill(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetFillStyle

```lua
SimpleStatusBarAPI:SetFillStyle(fillStyle: StatusBarFillStyle)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetMinMaxValues

```lua
SimpleStatusBarAPI:SetMinMaxValues(minValue: number, maxValue: number, interpolation: StatusBarInterpolation = Immediate)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.BarValue'], SecretArguments=AllowedWhenTainted  

### SimpleStatusBarAPI:SetOrientation

```lua
SimpleStatusBarAPI:SetOrientation(orientation: Orientation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetRenderMode

```lua
SimpleStatusBarAPI:SetRenderMode(renderMode: StatusBarRenderMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetReverseFill

```lua
SimpleStatusBarAPI:SetReverseFill(isReverseFill: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetRotatesTexture

```lua
SimpleStatusBarAPI:SetRotatesTexture(rotatesTexture: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetStatusBarColor

```lua
SimpleStatusBarAPI:SetStatusBarColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleStatusBarAPI:SetStatusBarDesaturated

```lua
SimpleStatusBarAPI:SetStatusBarDesaturated(desaturated: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Desaturation'], SecretArguments=AllowedWhenTainted  

### SimpleStatusBarAPI:SetStatusBarDesaturation

```lua
SimpleStatusBarAPI:SetStatusBarDesaturation(desaturation: normalizedValue)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Desaturation'], SecretArguments=AllowedWhenTainted  

### SimpleStatusBarAPI:SetStatusBarTexture

```lua
SimpleStatusBarAPI:SetStatusBarTexture(asset: TextureAsset) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleStatusBarAPI:SetTimerDuration

```lua
SimpleStatusBarAPI:SetTimerDuration(duration: LuaDurationObject, interpolation: StatusBarInterpolation = Immediate, direction: StatusBarTimerDirection = ElapsedTime)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleStatusBarAPI:SetToTargetValue

```lua
SimpleStatusBarAPI:SetToTargetValue()
```

Immediately finishes any interpolation of the bar and snaps it to the target value.

### SimpleStatusBarAPI:SetValue

```lua
SimpleStatusBarAPI:SetValue(value: number, interpolation: StatusBarInterpolation = Immediate)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.BarValue'], SecretArguments=AllowedWhenTainted
