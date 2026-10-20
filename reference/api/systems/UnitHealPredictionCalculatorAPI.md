# UnitHealPredictionCalculatorAPI

Type: ScriptObject  
Environment: All

## Functions

### UnitHealPredictionCalculatorAPI:EvaluateCurrentHealthPercent

```lua
UnitHealPredictionCalculatorAPI:EvaluateCurrentHealthPercent(curve: LuaCurveObjectBase) -> result: LuaCurveEvaluatedResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the percentage of current unit health and evaluates it against the supplied curve.

### UnitHealPredictionCalculatorAPI:EvaluateMissingHealthPercent

```lua
UnitHealPredictionCalculatorAPI:EvaluateMissingHealthPercent(curve: LuaCurveObjectBase) -> result: LuaCurveEvaluatedResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Calculates the percentage of missing unit health and evaluates it against the supplied curve.

### UnitHealPredictionCalculatorAPI:GetCurrentHealth

```lua
UnitHealPredictionCalculatorAPI:GetCurrentHealth() -> currentHealth: number
```

Returns the base amount of unit health.

### UnitHealPredictionCalculatorAPI:GetCurrentHealthPercent

```lua
UnitHealPredictionCalculatorAPI:GetCurrentHealthPercent() -> currentHealthPercent: number
```

Returns the percentage of current unit health.

### UnitHealPredictionCalculatorAPI:GetDamageAbsorbClampMode

```lua
UnitHealPredictionCalculatorAPI:GetDamageAbsorbClampMode() -> damageAbsorbClampMode: UnitDamageAbsorbClampMode
```

Secret: ReturnsNeverSecret  

Returns the configured damage absorb clamping mode.

### UnitHealPredictionCalculatorAPI:GetDamageAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetDamageAbsorbs() -> amount: number, clamped: bool
```

Calculates damage absorb values and clamping according to the configured options.

### UnitHealPredictionCalculatorAPI:GetHealAbsorbClampMode

```lua
UnitHealPredictionCalculatorAPI:GetHealAbsorbClampMode() -> healAbsorbClampMode: UnitHealAbsorbClampMode
```

Secret: ReturnsNeverSecret  

Returns the configured heal absorb clamping mode.

### UnitHealPredictionCalculatorAPI:GetHealAbsorbMode

```lua
UnitHealPredictionCalculatorAPI:GetHealAbsorbMode() -> healAbsorbMode: UnitHealAbsorbMode
```

Secret: ReturnsNeverSecret  

Returns the configured heal absorb processing mode.

### UnitHealPredictionCalculatorAPI:GetHealAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetHealAbsorbs() -> amount: number, clamped: bool
```

Calculates heal absorb values and clamping according to the configured options.

### UnitHealPredictionCalculatorAPI:GetIncomingHealClampMode

```lua
UnitHealPredictionCalculatorAPI:GetIncomingHealClampMode() -> incomingHealClampMode: UnitIncomingHealClampMode
```

Secret: ReturnsNeverSecret  

Returns the configured incoming heal clamping mode.

### UnitHealPredictionCalculatorAPI:GetIncomingHealOverflowPercent

```lua
UnitHealPredictionCalculatorAPI:GetIncomingHealOverflowPercent() -> incomingHealOverflowPercent: number
```

Secret: ReturnsNeverSecret  

Returns the configured incoming heal maximum overflow percentage.

### UnitHealPredictionCalculatorAPI:GetIncomingHeals

```lua
UnitHealPredictionCalculatorAPI:GetIncomingHeals() -> amount: number, amountFromHealer: number, amountFromOthers: number, clamped: bool
```

Calculates incoming heal values and clamping according to the configured options.

### UnitHealPredictionCalculatorAPI:GetMaximumDamageAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetMaximumDamageAbsorbs() -> maximumDamageAbsorbs: number
```

Returns the maximum clamping amount for damage absorbs.

### UnitHealPredictionCalculatorAPI:GetMaximumHealAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetMaximumHealAbsorbs() -> maximumHealAbsorbs: number
```

Returns the maximum clamping amount for heal absorbs.

### UnitHealPredictionCalculatorAPI:GetMaximumHealth

```lua
UnitHealPredictionCalculatorAPI:GetMaximumHealth() -> maximumHealth: number
```

Returns the base amount of maximum unit health.

### UnitHealPredictionCalculatorAPI:GetMaximumHealthMode

```lua
UnitHealPredictionCalculatorAPI:GetMaximumHealthMode() -> maximumHealthMode: UnitMaximumHealthMode
```

Secret: ReturnsNeverSecret  

Returns the configured maximum health mode.

### UnitHealPredictionCalculatorAPI:GetMaximumIncomingHeals

```lua
UnitHealPredictionCalculatorAPI:GetMaximumIncomingHeals() -> maximumIncomingHeals: number
```

Returns the maximum clamping amount for incoming heals.

### UnitHealPredictionCalculatorAPI:GetMissingHealth

```lua
UnitHealPredictionCalculatorAPI:GetMissingHealth() -> missingHealth: number
```

Returns the base amount of missing unit health.

### UnitHealPredictionCalculatorAPI:GetMissingHealthPercent

```lua
UnitHealPredictionCalculatorAPI:GetMissingHealthPercent() -> missingHealthPercent: number
```

Returns the percentage of missing unit health.

### UnitHealPredictionCalculatorAPI:GetPredictedValues

```lua
UnitHealPredictionCalculatorAPI:GetPredictedValues() -> predictedValues: UnitHealPredictionValues
```

Returns the raw total figures used for data calculations.

### UnitHealPredictionCalculatorAPI:GetTotalDamageAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetTotalDamageAbsorbs() -> totalDamageAbsorbs: number
```

Returns the base total amount of all applied damage absorb shields.

### UnitHealPredictionCalculatorAPI:GetTotalHealAbsorbs

```lua
UnitHealPredictionCalculatorAPI:GetTotalHealAbsorbs() -> totalHealAbsorbs: number
```

Returns the base total amount of all applied heal absorption effects.

### UnitHealPredictionCalculatorAPI:GetTotalIncomingHeals

```lua
UnitHealPredictionCalculatorAPI:GetTotalIncomingHeals() -> totalIncomingHeals: number
```

Returns the base total amount of all incoming heals.

### UnitHealPredictionCalculatorAPI:GetTotalIncomingHealsFromHealer

```lua
UnitHealPredictionCalculatorAPI:GetTotalIncomingHealsFromHealer() -> totalIncomingHealsFromHealer: number
```

Returns the base total amount of all incoming heals from the healer unit, if any.

### UnitHealPredictionCalculatorAPI:HasSecretValues

```lua
UnitHealPredictionCalculatorAPI:HasSecretValues() -> hasSecretValues: bool
```

Secret: ReturnsNeverSecret  

Returns true if the object has been configured with any secret values.

### UnitHealPredictionCalculatorAPI:Reset

```lua
UnitHealPredictionCalculatorAPI:Reset()
```

Resets all stored state on the object.

### UnitHealPredictionCalculatorAPI:ResetPredictedValues

```lua
UnitHealPredictionCalculatorAPI:ResetPredictedValues()
```

Resets all stored healing values used for calculations.

### UnitHealPredictionCalculatorAPI:SetDamageAbsorbClampMode

```lua
UnitHealPredictionCalculatorAPI:SetDamageAbsorbClampMode(damageAbsorbClampMode: UnitDamageAbsorbClampMode)
```

Secret: SecretArguments=NotAllowed  

Changes the clamping mode used when calculating damage absorb amounts.

### UnitHealPredictionCalculatorAPI:SetHealAbsorbClampMode

```lua
UnitHealPredictionCalculatorAPI:SetHealAbsorbClampMode(healAbsorbClampMode: UnitHealAbsorbClampMode)
```

Secret: SecretArguments=NotAllowed  

Changes the clamping mode used when calculating heal absorb amounts.

### UnitHealPredictionCalculatorAPI:SetHealAbsorbMode

```lua
UnitHealPredictionCalculatorAPI:SetHealAbsorbMode(healAbsorbMode: UnitHealAbsorbMode)
```

Secret: SecretArguments=NotAllowed  

Changes the processing mode used when calculating both heal absorb and incoming heal amounts.

### UnitHealPredictionCalculatorAPI:SetIncomingHealClampMode

```lua
UnitHealPredictionCalculatorAPI:SetIncomingHealClampMode(incomingHealClampMode: UnitIncomingHealClampMode)
```

Secret: SecretArguments=NotAllowed  

Changes the clamping mode used when calculating incoming heal amounts.

### UnitHealPredictionCalculatorAPI:SetIncomingHealOverflowPercent

```lua
UnitHealPredictionCalculatorAPI:SetIncomingHealOverflowPercent(incomingHealOverflowPercent: number)
```

Secret: SecretArguments=NotAllowed  

Changes the maximum overflow percentage for incoming heals. Increasing this to a value over 1.0 will mean that incoming heals can extend beyond maximum health.

### UnitHealPredictionCalculatorAPI:SetMaximumHealthMode

```lua
UnitHealPredictionCalculatorAPI:SetMaximumHealthMode(maximumHealthMode: UnitMaximumHealthMode)
```

Secret: SecretArguments=NotAllowed  

Changes the calculation mode for maximum health values used for clamping.

### UnitHealPredictionCalculatorAPI:SetPredictedValues

```lua
UnitHealPredictionCalculatorAPI:SetPredictedValues(predictedValues: UnitHealPredictionValues)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the healing values used for all calculations.

### UnitHealPredictionCalculatorAPI:SetToDefaults

```lua
UnitHealPredictionCalculatorAPI:SetToDefaults()
```

Resets all state on the object, and clears the secret values flag.
