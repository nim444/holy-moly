# LuaColorCurveObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaColorCurveObjectAPI:AddPoint

```lua
LuaColorCurveObjectAPI:AddPoint(x: number, y: colorRGBA)
```

Secret: SecretArguments=AllowedWhenUntainted  

Adds a single point to the curve.

### LuaColorCurveObjectAPI:ClearPoints

```lua
LuaColorCurveObjectAPI:ClearPoints()
```

Removes all points from the curve. Evaluating an empty curve always yields a zero value.

### LuaColorCurveObjectAPI:Copy

```lua
LuaColorCurveObjectAPI:Copy() -> curve: LuaColorCurveObject
```

Secret: ReturnsNeverSecret  

Returns a new copy of this curve.

### LuaColorCurveObjectAPI:Evaluate

```lua
LuaColorCurveObjectAPI:Evaluate(x: number) -> y: colorRGBA
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns a calculated color value from the configured curve points.

### LuaColorCurveObjectAPI:EvaluateUnpacked

```lua
LuaColorCurveObjectAPI:EvaluateUnpacked(x: number) -> yR: number, yG: number, yB: number, yA: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns an unpacked calculated color value from the configured curve points.

### LuaColorCurveObjectAPI:GetPoint

```lua
LuaColorCurveObjectAPI:GetPoint(index: luaIndex) -> point: LuaColorCurvePoint?
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the vector for an individual point index on the curve.

### LuaColorCurveObjectAPI:GetPointCount

```lua
LuaColorCurveObjectAPI:GetPointCount() -> count: size
```

Returns the total number of points on the curve.

### LuaColorCurveObjectAPI:GetPoints

```lua
LuaColorCurveObjectAPI:GetPoints() -> point: table<LuaColorCurvePoint>
```

Returns the vectors for all points on the curve.

### LuaColorCurveObjectAPI:RemovePoint

```lua
LuaColorCurveObjectAPI:RemovePoint(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Removes a single point from the curve. Raises an error if the supplied point index is out of range.

### LuaColorCurveObjectAPI:SetPoints

```lua
LuaColorCurveObjectAPI:SetPoints(point: table<LuaColorCurvePoint>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Replaces all points on the curve.

### LuaColorCurveObjectAPI:SetToDefaults

```lua
LuaColorCurveObjectAPI:SetToDefaults()
```

Resets all state on the curve, and clears the secret values flag.

## Tables

### LuaColorCurvePoint (Structure)

- `x: number`
- `y: colorRGBA`
