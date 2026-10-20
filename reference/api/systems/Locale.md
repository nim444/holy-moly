# Locale

Type: System  
Environment: All

## Functions

### GetAvailableLocaleInfo

```lua
GetAvailableLocaleInfo(ignoreLocaleRestrictions: bool = false) -> localeInfos: table<LocaleInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetAvailableLocales

```lua
GetAvailableLocales(ignoreLocaleRestrictions: bool = false) -> localeName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetCurrentRegion

```lua
GetCurrentRegion() -> region: number
```

### GetLocale

```lua
GetLocale() -> localeName: cstring
```

### GetOSLocale

```lua
GetOSLocale() -> localeName: cstring
```

## Tables

### LocaleInfo (Structure)

- `localeId: number`
- `localeName: cstring`
