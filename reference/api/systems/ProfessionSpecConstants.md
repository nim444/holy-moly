# ProfessionSpecConstants

Type: None

## Tables

### ProfTraitPerkNodeFlags (Enumeration)

| Name | Value |
|---|---|
| UnlocksSubpath | 1 |
| IsMajorBonus | 2 |

### ProfessionsSpecPathState (Enumeration)

| Name | Value |
|---|---|
| Locked | 0 |
| Progressing | 1 |
| Completed | 2 |

### ProfessionsSpecPerkState (Enumeration)

| Name | Value |
|---|---|
| Unearned | 0 |
| Pending | 1 |
| Earned | 2 |

### ProfessionsSpecTabState (Enumeration)

| Name | Value |
|---|---|
| Locked | 0 |
| Unlocked | 1 |
| Unlockable | 2 |

### ProfTabHighlight (Structure)

- `description: cstring`

### ProfTabInfo (Structure)

- `rootNodeID: number`
- `name: cstring`
- `description: cstring`
- `rootIconID: number`
- `highlights: table<ProfTabHighlight>`

### SpecPerkInfo (Structure)

- `perkID: number`
- `isMajorPerk: bool`

### SpecializationCurrencyInfo (Structure)

- `numAvailable: number`
- `currencyName: cstring`

### SpecializationTabInfo (Structure)

- `enabled: bool = true`
- `errorReason: cstring`
