# DurationTextBindingObjectAPI

Type: ScriptObject  
Environment: All

## Functions

### DurationTextBindingObjectAPI:Assign

```lua
DurationTextBindingObjectAPI:Assign(other: DurationTextBinding)
```

Secret: SecretArguments=AllowedWhenUntainted  

Copies another duration text binding and assigns it to this one.

### DurationTextBindingObjectAPI:CanFormatText

```lua
DurationTextBindingObjectAPI:CanFormatText() -> canFormatText: bool
```

Returns true if this binding has enough configuration to produce formatted text.

### DurationTextBindingObjectAPI:CanUpdateFontString

```lua
DurationTextBindingObjectAPI:CanUpdateFontString() -> canUpdateText: bool
```

Returns true if this binding has enough configuration to update its font string with formatted text.

### DurationTextBindingObjectAPI:ClearTextColorCurve

```lua
DurationTextBindingObjectAPI:ClearTextColorCurve()
```

Clears the text color curve used by this binding.

### DurationTextBindingObjectAPI:Copy

```lua
DurationTextBindingObjectAPI:Copy() -> copy: DurationTextBinding
```

Secret: ReturnsNeverSecret  

Returns a copy of this duration text binding.

### DurationTextBindingObjectAPI:Disable

```lua
DurationTextBindingObjectAPI:Disable()
```

Disables automatic updates for this duration text binding.

### DurationTextBindingObjectAPI:Enable

```lua
DurationTextBindingObjectAPI:Enable()
```

Enables automatic updates for this duration text binding.

### DurationTextBindingObjectAPI:GetDuration

```lua
DurationTextBindingObjectAPI:GetDuration() -> duration: LuaDurationObject?
```

Returns the duration object used by this duration text binding.

### DurationTextBindingObjectAPI:GetExpiredText

```lua
DurationTextBindingObjectAPI:GetExpiredText() -> text: string?
```

Returns the text shown when the duration has fully expired.

### DurationTextBindingObjectAPI:GetFontString

```lua
DurationTextBindingObjectAPI:GetFontString() -> fontString: SimpleFontString?
```

Returns the font string updated by this duration text binding.

### DurationTextBindingObjectAPI:GetFormattedText

```lua
DurationTextBindingObjectAPI:GetFormattedText() -> text: string
```

Returns the text that would currently be assigned to the configured font string.

### DurationTextBindingObjectAPI:GetFormattedTextColor

```lua
DurationTextBindingObjectAPI:GetFormattedTextColor() -> color: colorRGBA
```

Flags: MayReturnNothing  

Returns the text color that would currently be assigned to the configured font string.

### DurationTextBindingObjectAPI:GetTextColorCurve

```lua
DurationTextBindingObjectAPI:GetTextColorCurve() -> curve: LuaColorCurveObject, property: DurationTextBindingProperty
```

Flags: MayReturnNothing  

Returns the text color curve used by this binding.

### DurationTextBindingObjectAPI:GetTimeModifier

```lua
DurationTextBindingObjectAPI:GetTimeModifier() -> modifier: DurationTimeModifier
```

Returns the time modifier used when sampling duration values for this binding.

### DurationTextBindingObjectAPI:GetUpdateInterval

```lua
DurationTextBindingObjectAPI:GetUpdateInterval() -> updateInterval: number
```

Returns the minimum number of seconds between automatic text updates. A value of zero updates every game tick.

### DurationTextBindingObjectAPI:GetZeroDurationText

```lua
DurationTextBindingObjectAPI:GetZeroDurationText() -> text: string?
```

Returns the text shown when the duration is not configured, or represents a zero-duration time span.

### DurationTextBindingObjectAPI:HasSecretValues

```lua
DurationTextBindingObjectAPI:HasSecretValues() -> hasSecretValues: bool
```

Secret: ReturnsNeverSecret  

Returns true if the duration text binding has been configured with any secret values.

### DurationTextBindingObjectAPI:IsEnabled

```lua
DurationTextBindingObjectAPI:IsEnabled() -> enabled: bool
```

Returns true if this duration text binding updates its font string automatically.

### DurationTextBindingObjectAPI:SetDuration

```lua
DurationTextBindingObjectAPI:SetDuration(duration: LuaDurationObject)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the duration object used by this duration text binding.

### DurationTextBindingObjectAPI:SetEnabled

```lua
DurationTextBindingObjectAPI:SetEnabled(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures whether this duration text binding updates its font string automatically.

### DurationTextBindingObjectAPI:SetExpiredText

```lua
DurationTextBindingObjectAPI:SetExpiredText(text: string?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the text shown when the duration has fully expired.

### DurationTextBindingObjectAPI:SetFontString

```lua
DurationTextBindingObjectAPI:SetFontString(fontString: SimpleFontString)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the font string updated by this duration text binding.

### DurationTextBindingObjectAPI:SetFormatter

```lua
DurationTextBindingObjectAPI:SetFormatter(formatter: NumericFormatter)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the text format used by this duration text binding to display the remaining duration using the supplied formatter.

### DurationTextBindingObjectAPI:SetTextColorCurve

```lua
DurationTextBindingObjectAPI:SetTextColorCurve(curve: LuaColorCurveObject, property: DurationTextBindingProperty)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures this duration text binding to adjust fontstring text color by evaluating a duration property through a curve.

### DurationTextBindingObjectAPI:SetTextFormat

```lua
DurationTextBindingObjectAPI:SetTextFormat(formatString: stringView, components: table<DurationTextBindingFormatComponent>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the text format used by this duration text binding. The format string may contain '{}' placeholders, each of which is substituted by the corresponding component in the supplied array.

### DurationTextBindingObjectAPI:SetTimeModifier

```lua
DurationTextBindingObjectAPI:SetTimeModifier(modifier: DurationTimeModifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the time modifier used when sampling duration values for this binding.

### DurationTextBindingObjectAPI:SetToDefaults

```lua
DurationTextBindingObjectAPI:SetToDefaults()
```

Resets this duration text binding to its default state, clearing the configured font string, duration, format, formatter, and fallback text.

### DurationTextBindingObjectAPI:SetUpdateInterval

```lua
DurationTextBindingObjectAPI:SetUpdateInterval(updateInterval: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the minimum number of seconds between automatic text updates. A value of zero updates every game tick.

### DurationTextBindingObjectAPI:SetZeroDurationText

```lua
DurationTextBindingObjectAPI:SetZeroDurationText(text: string?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Configures the text shown when the duration is not configured, or represents a zero-duration time span.

### DurationTextBindingObjectAPI:UpdateFontString

```lua
DurationTextBindingObjectAPI:UpdateFontString()
```

Immediately updates the configured font string from the current duration state.
