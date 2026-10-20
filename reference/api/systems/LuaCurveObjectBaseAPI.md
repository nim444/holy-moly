# LuaCurveObjectBaseAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaCurveObjectBaseAPI:GetType

```lua
LuaCurveObjectBaseAPI:GetType() -> curveType: LuaCurveType
```

Returns the configured type of the curve.

### LuaCurveObjectBaseAPI:HasSecretValues

```lua
LuaCurveObjectBaseAPI:HasSecretValues() -> hasSecretValues: bool
```

Secret: ReturnsNeverSecret  

Returns true if the curve has been configured with any secret values. Curves with secret values always produce secret results when evaluated.

### LuaCurveObjectBaseAPI:SetType

```lua
LuaCurveObjectBaseAPI:SetType(type: LuaCurveType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Changes the evaluation type of the curve.
