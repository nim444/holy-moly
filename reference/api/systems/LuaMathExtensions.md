# LuaMathExtensions

Type: System  
Namespace: `math`  
Environment: All

## Functions

### math.clamp

```lua
math.clamp(value: number, minimum: number, maximum: number) -> clampedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Clamps a value to the inclusive range defined by the minimum and maximum values.

### math.isfinite

```lua
math.isfinite(value: number) -> finite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether a value is finite.

### math.isinf

```lua
math.isinf(value: number) -> infinite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether a value is positive or negative infinity.

### math.isnan

```lua
math.isnan(value: number) -> nan: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether a value is NaN.

### math.lerp

```lua
math.lerp(startValue: number, endValue: number, amount: number) -> interpolatedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Linearly interpolates between two values.

### math.normalize

```lua
math.normalize(value: number, minimum: number, maximum: number) -> normalizedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the relative position of a value within a range, where the minimum maps to 0 and the maximum maps to 1.

### math.remap

```lua
math.remap(value: number, sourceMinimum: number, sourceMaximum: number, destinationMinimum: number, destinationMaximum: number) -> remappedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Maps a value from one range to the corresponding position in another range.

### math.round

```lua
math.round(value: number, decimalPlaces: number = 0) -> roundedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Rounds a value to the specified number of decimal places, with halfway values rounded away from zero.

### math.saturate

```lua
math.saturate(value: number) -> saturatedValue: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Clamps a value to the inclusive range [0, 1].

### math.sign

```lua
math.sign(value: number) -> sign: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns -1 for negative values, 0 for zero, and 1 for positive values.

### math.wrap

```lua
math.wrap(value: number, minimum: number, maximum: number) -> wrapped: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Wraps a value into the half-open range [minimum, maximum).
