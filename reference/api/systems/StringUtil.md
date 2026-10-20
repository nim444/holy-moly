# StringUtil

Type: System  
Namespace: `C_StringUtil`  
Environment: All

## Functions

### C_StringUtil.CreateAbbreviatedNumberFormatter

```lua
C_StringUtil.CreateAbbreviatedNumberFormatter() -> formatter: AbbreviatedNumberFormatter
```

Creates a numeric formatter that converts numbers to abbreviated strings, eg. 123456 -> '123k'.

### C_StringUtil.CreateNumericRuleFormatter

```lua
C_StringUtil.CreateNumericRuleFormatter() -> formatter: NumericRuleFormatter
```

Creates a numeric formatter that converts numbers to strings with flexible rulesets.

### C_StringUtil.CreateSecondsFormatter

```lua
C_StringUtil.CreateSecondsFormatter() -> formatter: SecondsFormatter
```

Creates a numeric formatter that converts numbers measuring durations in seconds to strings, eg. 93 -> '1m 33s'.

### C_StringUtil.EscapeDecimalNonPrintables

```lua
C_StringUtil.EscapeDecimalNonPrintables(text: stringView) -> escapedText: string
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with ASCII control characters (except \
, \r, and 	) and invalid UTF-8 bytes replaced by decimal escape sequences (e.g. \\127).

### C_StringUtil.EscapeLuaFormatString

```lua
C_StringUtil.EscapeLuaFormatString(text: string) -> escapedText: stringView
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with Lua format string tokens ('%') escaped.

### C_StringUtil.EscapeLuaPatterns

```lua
C_StringUtil.EscapeLuaPatterns(text: stringView) -> escapedText: string
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with all Lua pattern characters escaped.

### C_StringUtil.EscapeQuotedCodes

```lua
C_StringUtil.EscapeQuotedCodes(text: string) -> escaped: stringView
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with all quoted code sequences ('|' characters) escaped.

### C_StringUtil.FloorToNearestString

```lua
C_StringUtil.FloorToNearestString(number: number) -> text: string
```

Secret: SecretArguments=AllowedWhenTainted  

### C_StringUtil.RemoveContiguousSpaces

```lua
C_StringUtil.RemoveContiguousSpaces(text: stringView, maxAllowedSpaces: number) -> trimmedText: string
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with all contiguous occurrences of ASCII space characters truncated.

### C_StringUtil.RoundToNearestString

```lua
C_StringUtil.RoundToNearestString(number: number) -> text: string
```

Secret: SecretArguments=AllowedWhenTainted  

### C_StringUtil.StripHyperlinks

```lua
C_StringUtil.StripHyperlinks(text: string, maintainColor: bool = false, maintainBrackets: bool = false, stripNewlines: bool = false, maintainAtlases: bool = false, maintainTextures: bool = false) -> stripped: stringView
```

Secret: SecretArguments=AllowedWhenTainted  

### C_StringUtil.StripTextureMarkupForLooseFiles

```lua
C_StringUtil.StripTextureMarkupForLooseFiles(text: string) -> stripped: stringView
```

Secret: SecretArguments=AllowedWhenTainted  

### C_StringUtil.TruncateWhenZero

```lua
C_StringUtil.TruncateWhenZero(number: number) -> text: string
```

Secret: SecretArguments=AllowedWhenTainted  

Formats the given number to a string as an integer (rounding down). If the integer is zero, returns an empty string.

### C_StringUtil.WrapString

```lua
C_StringUtil.WrapString(infix: stringView, prefix: stringView?, suffix: stringView?) -> text: string
```

Secret: SecretArguments=AllowedWhenTainted  

Returns a string with 'prefix' and 'suffix' joined to 'infix' iif 'infix' is not an empty string. Else, an empty string is returned.

## Tables

### StripHyperlinkOptions (Structure)

- `maintainColor: bool = false` If true, preserve all '|c' and '|r' quoted code sequences.
- `maintainBrackets: bool = false` If true, preserve all '[' and ']' characters.
- `stripNewlines: bool = false` If true, remove all '|n' quoted code sequences.
- `maintainAtlases: bool = false` If true, preserve all balanced '|A' and '|a' quoted code sequences.
- `maintainTextures: bool = false` If true, preserve all balanced '|T' and '|t' quoted code sequences.
