# LocalizationShared

Type: None

## Tables

### AbbreviationDataError (Enumeration)

| Name | Value |
|---|---|
| InvalidBreakpoint | 1 |
| InvalidSignificandDivisor | 2 |
| InvalidFractionDivisor | 4 |
| NotMultipleOfTen | 8 |

### NamePartType (Enumeration)

| Name | Value |
|---|---|
| Firstname | 0 |
| Surname | 1 |

### NumberAbbreviationBreakpoint (Structure)

- `breakpoint: number` Breakpoints should generally be specified as pairs, with one at the named order (1,000) with fractionDivisor = 10, and one a single order higher (eg. 10,000) with fractionDivisor = 1., This ruleset means numbers like '1234' will be abbreviated to '1.2k' and numbers like '12345' to '12k'.
- `abbreviation: string` Abbreviation name to be looked up as a global string.
- `significandDivisor: number` significandDivisor and fractionDivisor should multiply such that they become equal to a named order of magnitude, such as thousands or  millions.
- `fractionDivisor: number`
- `abbreviationIsGlobal: bool = true` Defaults to true. Set to false to skip the global string lookup and use the raw abbreviation string when formatting results

## Preconditions

- `RequiresRestrictedAbbreviationBreakpoints` (FailureMode=Error)
- `RequiresValidAbbreviationBreakpoints` (FailureMode=Error)
