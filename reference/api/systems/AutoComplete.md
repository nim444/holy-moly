# AutoComplete

Type: System  
Namespace: `C_AutoComplete`  
Environment: All

## Functions

### C_AutoComplete.GetAutoCompletePresenceID

```lua
C_AutoComplete.GetAutoCompletePresenceID(name: cstring) -> presenceID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AutoComplete.GetAutoCompleteRealms

```lua
C_AutoComplete.GetAutoCompleteRealms() -> realms: table<string>
```

### C_AutoComplete.GetAutoCompleteResults

```lua
C_AutoComplete.GetAutoCompleteResults(name: cstring, numResults: number, cursorPosition: number, allowFullMatch: bool, includeFlags: number, excludeFlags: number) -> results: table<AutoCompleteResult>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AutoComplete.IsRecognizedName

```lua
C_AutoComplete.IsRecognizedName(name: cstring, includeFlags: number, excludeFlags: number) -> isRecognizedName: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### AutoCompleteResult (Structure)

- `name: string`
- `priority: AutoCompletePriority`
- `bnetID: number`
