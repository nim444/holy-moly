# AbbreviatedNumberFormatterAPI

Type: ScriptObject  
Environment: All

## Functions

### AbbreviatedNumberFormatterAPI:AddBreakpoint

```lua
AbbreviatedNumberFormatterAPI:AddBreakpoint(breakpoint: NumberAbbreviationBreakpoint)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidAbbreviationBreakpoints  

Adds a new breakpoint to the formatter.

### AbbreviatedNumberFormatterAPI:ClearBreakpoints

```lua
AbbreviatedNumberFormatterAPI:ClearBreakpoints()
```

Removes all configured breakpoints from the formatter.

### AbbreviatedNumberFormatterAPI:Copy

```lua
AbbreviatedNumberFormatterAPI:Copy() -> copy: AbbreviatedNumberFormatter
```

Secret: ReturnsNeverSecret  

Returns a new copy of this formatter.

### AbbreviatedNumberFormatterAPI:GetBreakpoints

```lua
AbbreviatedNumberFormatterAPI:GetBreakpoints() -> breakpoints: table<NumberAbbreviationBreakpoint>
```

Returns a list of all configured breakpoints on this formatter.

### AbbreviatedNumberFormatterAPI:ResetBreakpoints

```lua
AbbreviatedNumberFormatterAPI:ResetBreakpoints()
```

Removes all configured breakpoints from the formatter and replaces them with appropriate defaults for the client locale.

### AbbreviatedNumberFormatterAPI:SetBreakpoints

```lua
AbbreviatedNumberFormatterAPI:SetBreakpoints(breakpoints: table<NumberAbbreviationBreakpoint>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidAbbreviationBreakpoints  

Replaces all breakpoints on the formatter.
