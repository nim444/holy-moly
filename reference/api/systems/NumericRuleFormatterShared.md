# NumericRuleFormatterShared

Type: None

## Tables

### NumericRuleFormatRounding (Enumeration)

| Name | Value |
|---|---|
| Nearest | 0 |
| Up | 1 |
| Down | 2 |

### NumericRuleFormatBreakpoint (Structure)

- `threshold: number` Minimum input value that this rule applies to.
- `step: number?` If specified, the input value is rounded to multiples of this step before processing.
- `rounding: NumericRuleFormatRounding = Nearest` If specified, the rounding mode to apply to the step.
- `min: number?` If specified, clamps the input value to this value if lesser after rounding.
- `max: number?` If specified, clamps the input value to this value if greater after rounding.
- `format: string` The format string to apply at this threshold. If no components are specified, this can include at-most one numeric format specifier - else, should contain an equal number of format specifiers to elements in the components array.
- `components: table<NumericRuleFormatComponent>?` Vector of component descriptions for this rule.

### NumericRuleFormatComponent (Structure)

- `div: number?` If specified, divide the value by this amount and use the resulting quotient. This is applied before modulo division.
- `mod: number?` If specified, divide the value by this amount and use the resulting remainder. This is applied after quotient division.
- `step: number?` If specified, round the value to multiples of this step. This is applied after all division.
- `rounding: NumericRuleFormatRounding = Nearest` If specified, rounding mode to apply to the step.
