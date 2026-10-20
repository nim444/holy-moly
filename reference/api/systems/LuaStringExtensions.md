# LuaStringExtensions

Type: System  
Namespace: `string`  
Environment: All

## Functions

### string.ltrim

```lua
string.ltrim(str: stringView, characters: stringView =  \\r\\n\\t) -> trimmed: stringView
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a string with all bytes in the specified character set removed from the start.

### string.rtrim

```lua
string.rtrim(str: stringView, characters: stringView =  \\r\\n\\t) -> trimmed: stringView
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a string with all bytes in the specified character set removed from the end.

### string.contains

```lua
string.contains(str: stringView, substring: stringView) -> contains: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a string contains the specified literal substring.

### string.endswith

```lua
string.endswith(str: stringView, suffix: stringView) -> endsWith: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a string ends with the specified suffix.

### string.startswith

```lua
string.startswith(str: stringView, prefix: stringView) -> startsWith: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a string starts with the specified prefix.

### string.trim

```lua
string.trim(str: stringView, characters: stringView =  \\r\\n\\t) -> trimmed: stringView
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a string with all bytes in the specified character set removed from both ends.
