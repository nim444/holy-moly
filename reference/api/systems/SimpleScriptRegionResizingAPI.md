# SimpleScriptRegionResizingAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleScriptRegionResizingAPI:AdjustPointsOffset

```lua
SimpleScriptRegionResizingAPI:AdjustPointsOffset(x: uiUnit, y: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:ClearAllPoints

```lua
SimpleScriptRegionResizingAPI:ClearAllPoints()
```

Flags: IsProtectedFunction  

Clears all points and immediately invalidates the rect. (Prior to 11.2.0, this would only invalidate rect immediately for AnchoringRestricted regions.)

### SimpleScriptRegionResizingAPI:ClearPoint

```lua
SimpleScriptRegionResizingAPI:ClearPoint(point: FramePoint)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:ClearPointsOffset

```lua
SimpleScriptRegionResizingAPI:ClearPointsOffset()
```

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:GetNumPoints

```lua
SimpleScriptRegionResizingAPI:GetNumPoints() -> numPoints: number
```

### SimpleScriptRegionResizingAPI:GetPoint

```lua
SimpleScriptRegionResizingAPI:GetPoint(anchorIndex: luaIndex = 0, resolveCollapsed: bool = false) -> point: FramePoint, relativeTo: ScriptRegion, relativePoint: FramePoint, offsetX: uiUnit, offsetY: uiUnit
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### SimpleScriptRegionResizingAPI:GetPointByName

```lua
SimpleScriptRegionResizingAPI:GetPointByName(point: FramePoint, resolveCollapsed: bool = false) -> point: FramePoint, relativeTo: ScriptRegion, relativePoint: FramePoint, offsetX: uiUnit, offsetY: uiUnit
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### SimpleScriptRegionResizingAPI:SetAllPoints

```lua
SimpleScriptRegionResizingAPI:SetAllPoints(relativeTo: ScriptRegion, doResize: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction, CheckAllowInheritForbiddenLayoutAspects  

### SimpleScriptRegionResizingAPI:SetHeight

```lua
SimpleScriptRegionResizingAPI:SetHeight(height: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:SetPoint

```lua
SimpleScriptRegionResizingAPI:SetPoint(point: FramePoint, relativeTo: ScriptRegion, relativePoint: FramePoint, offsetX: uiUnit, offsetY: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction, CheckAllowInheritForbiddenLayoutAspects  

### SimpleScriptRegionResizingAPI:SetPointsOffset

```lua
SimpleScriptRegionResizingAPI:SetPointsOffset(x: uiUnit, y: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:SetSize

```lua
SimpleScriptRegionResizingAPI:SetSize(x: uiUnit, y: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScriptRegionResizingAPI:SetWidth

```lua
SimpleScriptRegionResizingAPI:SetWidth(width: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction
