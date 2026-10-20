# LuaLocaleContextAPI

Type: ScriptObject  
Environment: All

## Functions

### LuaLocaleContextAPI:CompareStrings

```lua
LuaLocaleContextAPI:CompareStrings(left: cstring, right: cstring, strength: CollationStrength) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Compares two UTF-8 strings using the options specified on a collator.

### LuaLocaleContextAPI:FindBreaks

```lua
LuaLocaleContextAPI:FindBreaks(text: cstring, breakType: BreakType) -> byteOffsets: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Opens a break iterator for locating text boundaries in the context locale.

### LuaLocaleContextAPI:FindStringMatches

```lua
LuaLocaleContextAPI:FindStringMatches(text: cstring, pattern: cstring, strength: CollationStrength) -> byteOffsets: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Creates a string search iterator using a collator and returns every match position.

### LuaLocaleContextAPI:FoldCase

```lua
LuaLocaleContextAPI:FoldCase(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Case-folds the characters in a string; case-folding is locale-independent and not context-sensitive.

### LuaLocaleContextAPI:FormatCurrency

```lua
LuaLocaleContextAPI:FormatCurrency(number: number, currencyCode: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats a double as a localized currency value using the provided ISO 4217 currency code.

### LuaLocaleContextAPI:FormatDate

```lua
LuaLocaleContextAPI:FormatDate(unixTimeSeconds: number, style: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized date text using locale date patterns, symbols, style, and optional time zone.

### LuaLocaleContextAPI:FormatDateTime

```lua
LuaLocaleContextAPI:FormatDateTime(unixTimeSeconds: number, dateStyle: DateTimeStyle, timeStyle: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized date and time text using locale patterns, symbols, styles, and optional time zone.

### LuaLocaleContextAPI:FormatNumber

```lua
LuaLocaleContextAPI:FormatNumber(number: number, style: NumberStyle) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats a double with locale number formatting using locale symbols, grouping, and the selected non-currency style.

### LuaLocaleContextAPI:FormatTime

```lua
LuaLocaleContextAPI:FormatTime(unixTimeSeconds: number, style: DateTimeStyle, timeZone: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Formats Unix time as localized time text using locale time patterns, symbols, style, and optional time zone.

### LuaLocaleContextAPI:GetCurrencyName

```lua
LuaLocaleContextAPI:GetCurrencyName(currencyCode: cstring, style: CurrencyNameStyle) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the display name for a currency in the context locale.

### LuaLocaleContextAPI:GetDisplayName

```lua
LuaLocaleContextAPI:GetDisplayName(displayLocale: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Gets a display name suitable for the specified locale.

### LuaLocaleContextAPI:GetLocale

```lua
LuaLocaleContextAPI:GetLocale() -> result: string
```

Gets the locale used by this locale context.

### LuaLocaleContextAPI:GetSortKey

```lua
LuaLocaleContextAPI:GetSortKey(text: cstring, strength: CollationStrength) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Transforms a string into a collation sort key.

### LuaLocaleContextAPI:Length

```lua
LuaLocaleContextAPI:Length(text: cstring) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Counts character break boundaries in UTF-8 text.

### LuaLocaleContextAPI:ParseCurrency

```lua
LuaLocaleContextAPI:ParseCurrency(text: cstring) -> result: CurrencyParseResult
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Parses an entire localized currency string into a double amount and ISO 4217 currency code.

### LuaLocaleContextAPI:ParseNumber

```lua
LuaLocaleContextAPI:ParseNumber(text: cstring, style: NumberStyle) -> result: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Parses an entire localized number string into a double using the selected non-currency number formatter.

### LuaLocaleContextAPI:SelectPlural

```lua
LuaLocaleContextAPI:SelectPlural(number: number, pluralType: PluralType) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the keyword of the first plural rule that applies to a number.

### LuaLocaleContextAPI:SetLocale

```lua
LuaLocaleContextAPI:SetLocale(locale: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the locale used by this locale context.

### LuaLocaleContextAPI:ToLower

```lua
LuaLocaleContextAPI:ToLower(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Lowercases the characters in a string; casing is locale-dependent and context-sensitive.

### LuaLocaleContextAPI:ToTitle

```lua
LuaLocaleContextAPI:ToTitle(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Titlecases a string using titlecase positions determined by the default Unicode algorithm.

### LuaLocaleContextAPI:ToUpper

```lua
LuaLocaleContextAPI:ToUpper(text: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Uppercases the characters in a string; casing is locale-dependent and context-sensitive.

### LuaLocaleContextAPI:TransformLocale

```lua
LuaLocaleContextAPI:TransformLocale(transform: LocaleTransform) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Applies a locale transform to the context locale and returns the transformed locale string.
