# SimpleAnimPathAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleAnimPathAPI:CreateControlPoint

```lua
SimpleAnimPathAPI:CreateControlPoint(name: cstring?, templateName: cstring?, order: number?) -> point: SimpleControlPoint
```

Secret: SecretArguments=NotAllowed  

### SimpleAnimPathAPI:GetControlPoints

```lua
SimpleAnimPathAPI:GetControlPoints() -> points: SimpleControlPoint
```

### SimpleAnimPathAPI:GetCurveType

```lua
SimpleAnimPathAPI:GetCurveType() -> curveType: CurveType
```

### SimpleAnimPathAPI:GetMaxControlPointOrder

```lua
SimpleAnimPathAPI:GetMaxControlPointOrder() -> maxOrder: number
```

### SimpleAnimPathAPI:SetCurveType

```lua
SimpleAnimPathAPI:SetCurveType(curveType: CurveType)
```

Secret: SecretArguments=AllowedWhenUntainted
