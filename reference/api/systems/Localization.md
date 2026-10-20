# Localization

Type: System  
Environment: All

## Functions

### AbbreviateLargeNumbers

```lua
AbbreviateLargeNumbers(number: number, options: NumberAbbrevOptions?) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

### AbbreviateNumbers

```lua
AbbreviateNumbers(number: number, options: NumberAbbrevOptions?) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

### BreakUpLargeNumbers

```lua
BreakUpLargeNumbers(largeNumber: number, natural: bool = false) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

### CaseAccentInsensitiveParse

```lua
CaseAccentInsensitiveParse(name: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### CreateAbbreviateConfig

```lua
CreateAbbreviateConfig(data: table<NumberAbbreviationBreakpoint>) -> config: AbbreviateConfig
```

Secret: SecretArguments=NotAllowed  

Flags: RequiresRestrictedAbbreviationBreakpoints  

### DeclineName

```lua
DeclineName(name: cstring, gender: UnitSex?, declensionSet: luaIndex, namePartType: NamePartType?) -> declinedNames: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetDefaultAbbreviationBreakpoints

```lua
GetDefaultAbbreviationBreakpoints(locale: WowLocale?) -> breakpoints: table<NumberAbbreviationBreakpoint>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: Namespace=C_StringUtil  

### GetNumDeclensionSets

```lua
GetNumDeclensionSets(name: cstring, gender: UnitSex?, namePartType: NamePartType?) -> numDeclensionSets: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsEuropeanNumbers

```lua
IsEuropeanNumbers() -> enabled: bool
```

### LocalizedClassList

```lua
LocalizedClassList(isFemale: bool = false) -> result: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetEuropeanNumbers

```lua
SetEuropeanNumbers(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### NumberAbbrevOptions (Structure)

- `breakpointData: table<NumberAbbreviationBreakpoint>?` Order these from largest to smallest.
- `locale: cstring?` Locale controls whether standard asian abbreviation data will be used along with a small change in behavior for large number abbreviation when fractionDivisor is greater than zero.
- `config: AbbreviateConfig?` Provides a cached config object for optimal performance when calling abbreviation functions multiple times with the same options.
