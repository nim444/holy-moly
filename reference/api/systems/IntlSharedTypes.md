# IntlSharedTypes

Type: None

## Tables

### BreakType (Enumeration)

| Name | Value |
|---|---|
| Character | 0 |
| Word | 1 |
| Sentence | 2 |
| Line | 3 |

### CollationStrength (Enumeration)

| Name | Value |
|---|---|
| Primary | 0 |
| Secondary | 1 |
| Tertiary | 2 |
| Quaternary | 3 |
| Identical | 4 |

### CurrencyNameStyle (Enumeration)

| Name | Value |
|---|---|
| Symbol | 0 |
| NarrowSymbol | 1 |
| Long | 2 |
| FormalSymbol | 3 |
| VariantSymbol | 4 |

### DateTimeStyle (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Short | 1 |
| Medium | 2 |
| Long | 3 |
| Full | 4 |

### LocaleTransform (Enumeration)

| Name | Value |
|---|---|
| Canonicalize | 0 |
| AddLikelySubtags | 1 |
| RemoveLikelySubtags | 2 |
| Language | 3 |
| Script | 4 |
| Region | 5 |
| Variant | 6 |
| ParentLocale | 7 |

### NormalizationForm (Enumeration)

| Name | Value |
|---|---|
| Nfc | 0 |
| Nfd | 1 |
| Nfkc | 2 |
| Nfkd | 3 |

### NumberStyle (Enumeration)

| Name | Value |
|---|---|
| Decimal | 0 |
| Integer | 1 |
| Percent | 2 |
| Currency | 3 |

### PluralType (Enumeration)

| Name | Value |
|---|---|
| Cardinal | 0 |
| Ordinal | 1 |

### CharacterProperties (Structure)

Unicode property values for the first code point in a string.

- `codePoint: number` The Unicode code point tested for character properties.
- `isAlphabetic: bool` True if the code point is a letter character with general category L.
- `isDigit: bool` True if the code point is a digit character with general category Nd.
- `isWhitespace: bool` True if the code point has the Unicode White_Space property.
- `generalCategory: string` The short Unicode property value name for the code point's general category.
- `scriptCode: string` The short ISO 15924 script code for the code point's script.
- `blockCode: string` The short Unicode property value name for the code point's block.

### CurrencyParseResult (Structure)

A parsed numeric amount and currency from a localized currency string.

- `amount: number` The numeric amount parsed by the currency parser.
- `currencyCode: string` The ISO 4217 currency code parsed alongside the amount.
