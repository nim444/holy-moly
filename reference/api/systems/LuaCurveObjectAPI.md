# LuaCurveObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaCurveObjectAPI:AddPoint

```lua
LuaCurveObjectAPI:AddPoint(pointX: number, pointY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Adds a single point to the curve.

### LuaCurveObjectAPI:ClearPoints

```lua
LuaCurveObjectAPI:ClearPoints()
```

Removes all points from the curve. Evaluating an empty curve always yields a zero value.

### LuaCurveObjectAPI:Copy

```lua
LuaCurveObjectAPI:Copy() -> curve: LuaCurveObject
```

Secret: ReturnsNeverSecret  

Returns a new copy of this curve.

### LuaCurveObjectAPI:Evaluate

```lua
LuaCurveObjectAPI:Evaluate(x: number) -> y: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns a calculated 'y' value from the configured curve points.

### LuaCurveObjectAPI:GetPoint

```lua
LuaCurveObjectAPI:GetPoint(index: luaIndex) -> point: vector2?
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the vector for an individual point index on the curve.

### LuaCurveObjectAPI:GetPointCount

```lua
LuaCurveObjectAPI:GetPointCount() -> count: size
```

Returns the total number of points on the curve.

### LuaCurveObjectAPI:GetPoints

```lua
LuaCurveObjectAPI:GetPoints() -> point: table<vector2>
```

Returns the vectors for all points on the curve.

### LuaCurveObjectAPI:RemovePoint

```lua
LuaCurveObjectAPI:RemovePoint(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

Removes a single point from the curve. Raises an error if the supplied point index is out of range.

### LuaCurveObjectAPI:SetPoints

```lua
LuaCurveObjectAPI:SetPoints(point: table<vector2>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Replaces all points on the curve.

### LuaCurveObjectAPI:SetToDefaults

```lua
LuaCurveObjectAPI:SetToDefaults()
```

Resets all state on the curve, and clears the secret values flag.
