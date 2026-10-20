# ValidateNameConstants

Type: None

## Tables

### ScrubStringFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| TruncateNewLines | 1 |
| AllowBarCodes | 2 |
| StripControlCodes | 4 |

### ValidateNameResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| Failure | 1 |
| NoName | 2 |
| TooShort | 3 |
| TooLong | 4 |
| InvalidCharacter | 5 |
| MixedLanguages | 6 |
| Profane | 7 |
| Reserved | 8 |
| InvalidApostrophe | 9 |
| MultipleApostrophes | 10 |
| ThreeConsecutive | 11 |
| InvalidSpace | 12 |
| ConsecutiveSpaces | 13 |
| RussianConsecutiveSilentCharacters | 14 |
| RussianSilentCharacterAtBeginningOrEnd | 15 |
| DeclensionDoesntMatchBaseName | 16 |
| SpacesDisallowed | 17 |
