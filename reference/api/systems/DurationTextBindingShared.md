# DurationTextBindingShared

Type: None

## Tables

### DurationTextBindingProperty (Enumeration)

| Name | Value |
|---|---|
| RemainingDuration | 0 |
| RemainingPercent | 1 |
| ElapsedDuration | 2 |
| ElapsedPercent | 3 |
| TotalDuration | 4 |
| StartTime | 5 |
| EndTime | 6 |

### DurationTextBindingColorOptions (Structure)

- `curve: LuaColorCurveObject`
- `property: DurationTextBindingProperty`

### DurationTextBindingFormatComponent (Structure)

- `property: DurationTextBindingProperty` The duration property sampled for this format component.
- `formatter: NumericFormatter` The numeric formatter used to convert the sampled duration property into text.

### DurationTextBindingFormatOptions (Structure)

- `formatString: stringView`
- `components: table<DurationTextBindingFormatComponent>`
