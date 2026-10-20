# Intl

Type: System  
Namespace: `C_Intl`  
Environment: All

## Functions

### C_Intl.CompareStrings

```lua
C_Intl.CompareStrings(left: cstring, right: cstring, strength: CollationStrength) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Compares two UTF-8 strings using the options specified on a collator.

### C_Intl.CreateLocaleContext

```lua
C_Intl.CreateLocaleContext(locale: cstring) -> context: LuaLocaleContext
```

Secret: SecretArguments=AllowedWhenUntainted  

Creates a locale context object for locale-scoped internationalization operations.

### C_Intl.FindBreaks

```lua
C_Intl.FindBreaks(text: cstring, breakType: BreakType) -> byteOffsets: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Opens a break iterator for locating text boundaries in a specified locale.

### C_Intl.FindStringMatches

```lua
C_Intl.FindStringMatches(text: cstring, pattern: cstring, strength: CollationStrength) -> byteOffsets: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Creates a string search iterator using a collator and returns every match position.

### C_Intl.FoldCase

```lua
C_Intl.FoldCase(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Case-folds the characters in a string; case-folding is locale-independent and not context-sensitive.

### C_Intl.FormatCurrency

```lua
C_Intl.FormatCurrency(number: number, currencyCode: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats a double as a localized currency value using the provided ISO 4217 currency code.

### C_Intl.FormatDate

```lua
C_Intl.FormatDate(unixTimeSeconds: number, style: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized date text using locale date patterns, symbols, style, and optional time zone.

### C_Intl.FormatDateTime

```lua
C_Intl.FormatDateTime(unixTimeSeconds: number, dateStyle: DateTimeStyle, timeStyle: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized date and time text using locale patterns, symbols, styles, and optional time zone.

### C_Intl.FormatNumber

```lua
C_Intl.FormatNumber(number: number, style: NumberStyle) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats a double with locale number formatting using locale symbols, grouping, and the selected non-currency style.

### C_Intl.FormatTime

```lua
C_Intl.FormatTime(unixTimeSeconds: number, style: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized time text using locale time patterns, symbols, style, and optional time zone.

### C_Intl.GetCharacterProperties

```lua
C_Intl.GetCharacterProperties(text: cstring) -> result: CharacterProperties
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns Unicode property values for the first code point in a string.

### C_Intl.GetCurrencyFractionDigits

```lua
C_Intl.GetCurrencyFractionDigits(currencyCode: cstring) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the number of fraction digits that should be displayed for the given currency.

### C_Intl.GetCurrencyName

```lua
C_Intl.GetCurrencyName(currencyCode: cstring, nameStyle: CurrencyNameStyle) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the display name for a currency in the given locale.

### C_Intl.GetCurrentLocale

```lua
C_Intl.GetCurrentLocale() -> result: cstring
```

Gets the current locale used by C_Intl.

### C_Intl.GetDisplayName

```lua
C_Intl.GetDisplayName(displayLocale: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Gets a display name suitable for the specified locale.

### C_Intl.GetSortKey

```lua
C_Intl.GetSortKey(text: cstring, strength: CollationStrength) -> sortKey: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Transforms a string into a collation sort key.

### C_Intl.IsNormalized

```lua
C_Intl.IsNormalized(text: cstring, form: NormalizationForm) -> isNormalized: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Tests if the string is normalized according to the specified normalization form.

### C_Intl.Length

```lua
C_Intl.Length(text: cstring) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Counts character break boundaries in UTF-8 text.

### C_Intl.Normalize

```lua
C_Intl.Normalize(text: cstring, form: NormalizationForm) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Writes the normalized form of the source string to the destination string.

### C_Intl.ParseCurrency

```lua
C_Intl.ParseCurrency(text: cstring) -> result: CurrencyParseResult
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Parses an entire localized currency string into a double amount and ISO 4217 currency code.

### C_Intl.ParseNumber

```lua
C_Intl.ParseNumber(text: cstring, style: NumberStyle) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Parses an entire localized number string into a double using the selected non-currency number formatter.

### C_Intl.SelectPlural

```lua
C_Intl.SelectPlural(number: number, pluralType: PluralType) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the keyword of the first plural rule that applies to a number.

### C_Intl.ToLower

```lua
C_Intl.ToLower(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Lowercases the characters in a string; casing is locale-dependent and context-sensitive.

### C_Intl.ToTitle

```lua
C_Intl.ToTitle(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Titlecases a string using titlecase positions determined by the default Unicode algorithm.

### C_Intl.ToUpper

```lua
C_Intl.ToUpper(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Uppercases the characters in a string; casing is locale-dependent and context-sensitive.

### C_Intl.TransformLocale

```lua
C_Intl.TransformLocale(transform: LocaleTransform) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Applies a locale transform to the current locale and returns the transformed locale string.

### C_Intl.Transliterate

```lua
C_Intl.Transliterate(text: cstring, transliteratorID: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing, TransliteratorAllowed  

Opens a system transliterator by ID and transliterates the text in place.

## Preconditions

- `TransliteratorAllowed` (FailureMode=ReturnNothing)
