# UnitHealPredictionCalculatorShared

Type: None

## Tables

### UnitDamageAbsorbClampMode (Enumeration)

| Name | Value |
|---|---|
| MissingHealth | 0 |
| MissingHealthWithoutIncomingHeals | 1 |
| MaximumHealth | 2 |

### UnitHealAbsorbClampMode (Enumeration)

| Name | Value |
|---|---|
| CurrentHealth | 0 |
| MaximumHealth | 1 |

### UnitHealAbsorbMode (Enumeration)

| Name | Value |
|---|---|
| ReducedByIncomingHeals | 0 |
| Total | 1 |

### UnitIncomingHealClampMode (Enumeration)

| Name | Value |
|---|---|
| MissingHealth | 0 |
| MaximumHealth | 1 |

### UnitMaximumHealthMode (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| WithAbsorbs | 1 |

### UnitDamageAbsorbInfo (Structure)

- `amount: number` Amount of applied damage absorb affects with potential reductions from clamping included.
- `clamped: bool` If true, the value is in excess of the clamp boundary.

### UnitHealAbsorbInfo (Structure)

- `amount: number` Amount of applied heal absorb affects with potential reductions from incoming heals and clamping included.
- `clamped: bool` If true, the value is in excess of the clamp boundary.

### UnitHealPredictionValues (Structure)

- `health: number = 0`
- `healthMax: number = 0`
- `totalIncomingHeals: number = 0`
- `totalIncomingHealsFromHealer: number = 0`
- `totalDamageAbsorbs: number = 0`
- `totalHealAbsorbs: number = 0`

### UnitIncomingHealInfo (Structure)

- `amount: number` Amount of incoming heals across all units with potential reductions from heal absorb effects included.
- `amountFromHealer: number` Amount of incoming heals from the healer unit. Will never exceed the all-units value.
- `amountFromOthers: number` Amount of incoming heals from units other than theh healer. Calculated as the difference between amount and amount-from-healer.
- `clamped: bool` If true, the value is in excess of the clamp boundary.
