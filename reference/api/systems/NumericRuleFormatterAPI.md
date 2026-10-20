# NumericRuleFormatterAPI

Type: ScriptObject  
Environment: All

## Functions

### NumericRuleFormatterAPI:AddBreakpoint

```lua
NumericRuleFormatterAPI:AddBreakpoint(breakpoint: NumericRuleFormatBreakpoint)
```

Secret: SecretArguments=AllowedWhenUntainted  

Adds a new breakpoint to the formatter.

### NumericRuleFormatterAPI:ClearBreakpoints

```lua
NumericRuleFormatterAPI:ClearBreakpoints()
```

Removes all configured breakpoints from the formatter.

### NumericRuleFormatterAPI:Copy

```lua
NumericRuleFormatterAPI:Copy() -> copy: NumericRuleFormatter
```

Secret: ReturnsNeverSecret  

Returns a new copy of this formatter.

### NumericRuleFormatterAPI:GetBreakpoints

```lua
NumericRuleFormatterAPI:GetBreakpoints() -> breakpoints: table<NumericRuleFormatBreakpoint>
```

Returns a list of all configured breakpoints on this formatter.

### NumericRuleFormatterAPI:SetBreakpoints

```lua
NumericRuleFormatterAPI:SetBreakpoints(breakpoints: table<NumericRuleFormatBreakpoint>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Replaces all breakpoints on the formatter.
