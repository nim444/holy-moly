# CurveUtil

Type: System  
Namespace: `C_CurveUtil`  
Environment: All

## Functions

### C_CurveUtil.CreateColorCurve

```lua
C_CurveUtil.CreateColorCurve() -> curve: LuaColorCurveObject
```

Returns a new color curve object with no assigned points.

### C_CurveUtil.CreateCurve

```lua
C_CurveUtil.CreateCurve() -> curve: LuaCurveObject
```

Returns a new curve object with no assigned points.

### C_CurveUtil.EvaluateColorFromBoolean

```lua
C_CurveUtil.EvaluateColorFromBoolean(boolean: bool, valueIfTrue: colorRGBA, valueIfFalse: colorRGBA) -> value: colorRGBA
```

Secret: SecretArguments=AllowedWhenTainted  

Evaluates a potentially-secret boolean value and returns a color.

### C_CurveUtil.EvaluateColorValueFromBoolean

```lua
C_CurveUtil.EvaluateColorValueFromBoolean(boolean: bool, valueIfTrue: SingleColorValue, valueIfFalse: SingleColorValue) -> value: SingleColorValue
```

Secret: SecretArguments=AllowedWhenTainted  

Evaluates a potentially-secret boolean value and returns a single color component (eg. alpha).

### C_CurveUtil.EvaluateGameCurve

```lua
C_CurveUtil.EvaluateGameCurve(curveID: number, x: number) -> y: number
```

Secret: SecretArguments=AllowedWhenUntainted
