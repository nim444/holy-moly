# SecondsFormatterAPI

Type: ScriptObject  
Environment: All

## Functions

### SecondsFormatterAPI:CanApproximate

```lua
SecondsFormatterAPI:CanApproximate(seconds: Seconds) -> canApproximate: bool
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns true if the given number of seconds is within an appropriate range for approximated formatting.

### SecondsFormatterAPI:CanRoundUpIntervals

```lua
SecondsFormatterAPI:CanRoundUpIntervals() -> canRound: bool
```

Returns true if the formatter can promote values to higher interval bands.

### SecondsFormatterAPI:CanRoundUpLastUnit

```lua
SecondsFormatterAPI:CanRoundUpLastUnit() -> canRound: bool
```

Returns true if the formatter should round the final unit up rather than down.

### SecondsFormatterAPI:EvaluateDesiredUnitCount

```lua
SecondsFormatterAPI:EvaluateDesiredUnitCount(seconds: Seconds) -> count: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the unit count that a given number of seconds will use for formatting.

### SecondsFormatterAPI:EvaluateMaxInterval

```lua
SecondsFormatterAPI:EvaluateMaxInterval(seconds: Seconds) -> interval: SecondsFormatterInterval
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the maximum interval band that a given number of seconds will use for formatting.

### SecondsFormatterAPI:EvaluateMinInterval

```lua
SecondsFormatterAPI:EvaluateMinInterval(seconds: Seconds) -> interval: SecondsFormatterInterval
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the minimum interval band that a given number of seconds will use for formatting.

### SecondsFormatterAPI:Format

```lua
SecondsFormatterAPI:Format(seconds: Seconds, abbreviation: SecondsFormatterAbbreviation?) -> formattedSeconds: string
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Formats a number of seconds and returns the resulting string.

### SecondsFormatterAPI:FormatZero

```lua
SecondsFormatterAPI:FormatZero(abbreviation: SecondsFormatterAbbreviation?) -> formattedSeconds: string
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns formatted string representing a zero second duration.

### SecondsFormatterAPI:GetApproximationSeconds

```lua
SecondsFormatterAPI:GetApproximationSeconds() -> approximationSeconds: Seconds
```

Returns the threshold below which numeric values are formatted as approximated strings.

### SecondsFormatterAPI:GetConvertToLower

```lua
SecondsFormatterAPI:GetConvertToLower() -> convert: bool
```

Returns true if the formatter should lowercase all unit format strings.

### SecondsFormatterAPI:GetDefaultAbbreviation

```lua
SecondsFormatterAPI:GetDefaultAbbreviation() -> abbreviation: SecondsFormatterAbbreviation?
```

Returns the default abbreviation mode used for formatting.

### SecondsFormatterAPI:GetDesiredUnitCount

```lua
SecondsFormatterAPI:GetDesiredUnitCount() -> count: number?
```

Returns the desired unit count for formatting.

### SecondsFormatterAPI:GetDesiredUnitCountCurve

```lua
SecondsFormatterAPI:GetDesiredUnitCountCurve() -> curve: LuaCurveObject?
```

Returns the desired unit count curve for formatting.

### SecondsFormatterAPI:GetMaxInterval

```lua
SecondsFormatterAPI:GetMaxInterval() -> interval: SecondsFormatterInterval?
```

Returns the maximum interval band permitted for formatting.

### SecondsFormatterAPI:GetMaxIntervalCurve

```lua
SecondsFormatterAPI:GetMaxIntervalCurve() -> curve: LuaCurveObject?
```

Returns the maximum interval band curve permitted for formatting.

### SecondsFormatterAPI:GetMillisecondsThreshold

```lua
SecondsFormatterAPI:GetMillisecondsThreshold() -> threshold: Seconds
```

Returns the threshold below which a value will be formatted as a decimal number of seconds with one place for milliseconds (eg. '3.4')

### SecondsFormatterAPI:GetMinInterval

```lua
SecondsFormatterAPI:GetMinInterval() -> interval: SecondsFormatterInterval?
```

Returns the minimum interval band permitted for formatting.

### SecondsFormatterAPI:GetMinIntervalCurve

```lua
SecondsFormatterAPI:GetMinIntervalCurve() -> curve: LuaCurveObject?
```

Returns the minimum interval band curve permitted for formatting.

### SecondsFormatterAPI:GetRounding

```lua
SecondsFormatterAPI:GetRounding() -> rounding: SecondsFormatterRounding
```

Returns how fractional seconds are rounded when not displaying milliseconds.

### SecondsFormatterAPI:GetStripIntervalWhitespace

```lua
SecondsFormatterAPI:GetStripIntervalWhitespace() -> strip: SecondsFormatterIntervalWhitespace
```

Returns the whitespace stripping mode of the formatter.

### SecondsFormatterAPI:Reset

```lua
SecondsFormatterAPI:Reset()
```

Resets all stored configuration of the formatter.

### SecondsFormatterAPI:SetApproximationSeconds

```lua
SecondsFormatterAPI:SetApproximationSeconds(seconds: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the formatter to render numeric values between zero and this value as approximated strings (eg. '< 1m').

### SecondsFormatterAPI:SetCanRoundUpIntervals

```lua
SecondsFormatterAPI:SetCanRoundUpIntervals(canRound: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the formatter to promote intervals if values are large enough (eg. '60m' -> '1h').

### SecondsFormatterAPI:SetCanRoundUpLastUnit

```lua
SecondsFormatterAPI:SetCanRoundUpLastUnit(canRound: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the formatter to round the last formatted unit up, rather than down.

### SecondsFormatterAPI:SetConvertToLower

```lua
SecondsFormatterAPI:SetConvertToLower(convert: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the formatter to convert all interval format strings to lowercase.

### SecondsFormatterAPI:SetDefaultAbbreviation

```lua
SecondsFormatterAPI:SetDefaultAbbreviation(abbreviation: SecondsFormatterAbbreviation)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the default abbreviation mode used for formatting.

### SecondsFormatterAPI:SetDesiredUnitCount

```lua
SecondsFormatterAPI:SetDesiredUnitCount(count: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the desired unit count used for formatting.

### SecondsFormatterAPI:SetDesiredUnitCountCurve

```lua
SecondsFormatterAPI:SetDesiredUnitCountCurve(curve: LuaCurveObject)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the desired unit count used for formatting to a curve that will be evaluated with seconds values to produce a desired unit count.

### SecondsFormatterAPI:SetMaxInterval

```lua
SecondsFormatterAPI:SetMaxInterval(interval: SecondsFormatterInterval)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the maximum interval band used for formatting.

### SecondsFormatterAPI:SetMaxIntervalCurve

```lua
SecondsFormatterAPI:SetMaxIntervalCurve(curve: LuaCurveObject)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the maximum interval band used for formatting to a curve that will be evaluated with seconds values to produce a value matching a SecondsFormatterInterval enum member.

### SecondsFormatterAPI:SetMillisecondsThreshold

```lua
SecondsFormatterAPI:SetMillisecondsThreshold(threshold: Seconds)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the threshold below which a value will be formatted as a decimal number of seconds with one place for milliseconds (eg. '3.4')

### SecondsFormatterAPI:SetMinInterval

```lua
SecondsFormatterAPI:SetMinInterval(interval: SecondsFormatterInterval)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the minimum interval band used for formatting.

### SecondsFormatterAPI:SetMinIntervalCurve

```lua
SecondsFormatterAPI:SetMinIntervalCurve(curve: LuaCurveObject)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the minimum interval band used for formatting to a curve that will be evaluated with seconds values to produce a value matching a SecondsFormatterInterval enum member.

### SecondsFormatterAPI:SetRounding

```lua
SecondsFormatterAPI:SetRounding(rounding: SecondsFormatterRounding)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets how fractional seconds are rounded when not displaying milliseconds.

### SecondsFormatterAPI:SetStripIntervalWhitespace

```lua
SecondsFormatterAPI:SetStripIntervalWhitespace(strip: SecondsFormatterIntervalWhitespace)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the whitespace stripping mode for the formatter.
