# FrameScript

Type: System  
Environment: All

## Functions

### AddSourceLocationExclude

```lua
AddSourceLocationExclude(fileName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### canaccessallvalues

```lua
canaccessallvalues(values: LuaValueReference) -> canAccessAllValues: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if the immediate calling function has appropriate permissions to access and operate on all supplied values.

### canaccesssecrets

```lua
canaccesssecrets() -> canAccessSecrets: bool
```

Flags: SecureHooksAllowed=false  

Returns true if the immediate calling function has appropriate permissions to access or operate on secret values.

### canaccesstable

```lua
canaccesstable(table: LuaValueReference) -> canAccessTable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if the immediate calling function has appropriate permissions to index secret tables. This will return false if the caller cannot access the table value itself, or if access to the table contents is disallowed by taint.

### canaccessvalue

```lua
canaccessvalue(value: LuaValueReference) -> canAccessValue: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if the immediate calling function has appropriate permissions to access and operate on a specific value.

### CreateFrameWithOptions

```lua
CreateFrameWithOptions(options: CreateFrameOptions) -> frame: SimpleFrame
```

Secret: SecretArguments=AllowedWhenUntainted  

### CreateFromMixins

```lua
CreateFromMixins(mixins: LuaValueVariant) -> object: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### CreateSecureDelegate

```lua
CreateSecureDelegate(luaFunction: LuaValueReference, options: SecureDelegateOptions?) -> secureDelegateFunction: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false, HasRestrictions  

Creates a secure delegate closure for a Lua function. The delegate invokes the original function in a protected call context with secure execution taint, and supports passing and returning values directly.

### CreateWindow

```lua
CreateWindow(popupStyle: bool = true, topMost: bool = false) -> window: SimpleWindow?
```

Secret: SecretArguments=AllowedWhenUntainted  

### dropsecretaccess

```lua
dropsecretaccess()
```

Flags: SecureHooksAllowed=false  

Removes the ability for the immediate calling function to access secret values.

### dumpobject

```lua
dumpobject(value: LuaValueReference?) -> result: LuaValueReference?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Invokes the '__dump' metamethod on any value (if present), returning its result.

### GetCallstackHeight

```lua
GetCallstackHeight() -> height: number
```

### GetCurrentEventID

```lua
GetCurrentEventID() -> eventID: number?
```

### GetErrorCallstackHeight

```lua
GetErrorCallstackHeight() -> height: number?
```

### GetEventTime

```lua
GetEventTime(eventProfileIndex: number) -> totalElapsedTime: number, numExecutedHandlers: number, slowestHandlerName: cstring, slowestHandlerTime: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetForbiddenObjectTable

```lua
GetForbiddenObjectTable(object: FrameScriptObject) -> forbiddenTable: FrameScriptObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: Environment=SecureOnly, SecureHooksAllowed=false  

### GetScriptBucketThrottleLimits

```lua
GetScriptBucketThrottleLimits() -> limits: ScriptBucketThrottleLimits
```

### GetSourceLocation

```lua
GetSourceLocation() -> location: string
```

Flags: MayReturnNothing  

### hasanysecretvalues

```lua
hasanysecretvalues(values: LuaValueReference) -> isAnyValueSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if a supplied value is a secret value.

### issecrettable

```lua
issecrettable(table: LuaValueReference) -> isSecretOrContentsSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if a supplied value is a secret table. This function will return true if the table value itself is secret, or if flags on the table are set such that accesses of the table would produce secrets.

### issecretvalue

```lua
issecretvalue(value: LuaValueReference) -> isSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns true if a supplied value is a secret value.

### mapvalues

```lua
mapvalues(func: LuaValueReference, values: LuaValueReference) -> mapped: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Applies a given function over all supplied values individually, replacing the value with the result of the call.

### Mixin

```lua
Mixin(object: LuaValueVariant, mixins: LuaValueVariant) -> outObject: LuaValueVariant
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### RegisterEventCallback

```lua
RegisterEventCallback(eventName: cstring, callback: EventCallbackType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### RegisterUnitEventCallback

```lua
RegisterUnitEventCallback(eventName: cstring, callback: EventCallbackType, unit: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### RunScript

```lua
RunScript(text: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### scrubsecretvalues

```lua
scrubsecretvalues(values: LuaValueReference) -> scrubbed: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns a transformed list of values with inputs that are secret values replaced by nil values.

### scrub

```lua
scrub(values: LuaValueReference) -> scrubbed: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Returns a transformed list of values with inputs that are either secret or are not string, number, or boolean type replaced by nil values.

### secretunwrap

```lua
secretunwrap(values: LuaValueReference) -> unwrapped: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false, HasRestrictions  

Unwraps all supplied secrets, converting them back to regular values.

### secretwrap

```lua
secretwrap(values: LuaValueReference) -> wrapped: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Converts all supplied values to secret values, preventing most operations on them from occurring on tainted code paths.

### securecallmethod

```lua
securecallmethod(object: LuaValueReference, method: cstring, arguments: LuaValueReference) -> results: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Invokes a named method on an object with a secure call barrier that prevents errors or taint from function lookup and execution from propagating to the caller.

### securecopy

```lua
securecopy(value: LuaValueReference?, options: SecureCopyOptions?) -> copy: LuaValueReference
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

Securely copies a Lua value. Tables are deep-copied with recursive and shared references preserved. Copied values receive the current execution taint.

### SetErrorCallstackHeight

```lua
SetErrorCallstackHeight(height: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### settablesecurity

```lua
settablesecurity(table: LuaValueVariant, option: TableSecurityOption)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false, HasRestrictions  

### UnregisterEventCallback

```lua
UnregisterEventCallback(eventName: cstring, callback: EventCallbackType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### UnregisterUnitEventCallback

```lua
UnregisterUnitEventCallback(eventName: cstring, callback: EventCallbackType, unit: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: SecureHooksAllowed=false  

### debugprofilestart

```lua
debugprofilestart()
```

Starts a timer for profiling. The final time can be obtained by calling debugprofilestop.

### debugprofilestop

```lua
debugprofilestop() -> elapsedMilliseconds: number
```

Returns the time in milliseconds since the last debugprofilestart call.

## Tables

### TableSecurityOption (Enumeration)

| Name | Value |
|---|---|
| DisallowTaintedAccess | 0 |
| DisallowSecretKeys | 1 |
| SecretWrapContents | 2 |

### CreateFrameOptions (Structure)

- `frameType: cstring`
- `name: cstring?`
- `parent: SimpleFrame?`
- `inherits: table<cstring>?`
- `id: number?`
- `forbidden: bool = false`
- `hidden: bool = false`

### ScriptBucketThrottleLimits (Structure)

- `luaScriptBucketThrottleMaxMsPerSecondNormal: number`
- `luaScriptBucketThrottleMaxMsPerSecondRestricted: number`
- `luaScriptBucketThrottleMaxMsBurstNormal: number`
- `luaScriptBucketThrottleMaxMsBurstRestricted: number`

### SecureCopyOptions (Structure)

- `maxTraversalDepth: number = 100` Maximum table nesting depth allowed during recursive copying.
- `wrapUntrustedFunctions: bool = true` Wrap function values in secure closures that call through using the original function taint.
- `permitScriptObjects: bool = false` If true, preserve references to script objects in the copied output. By default, script objects will raise an error.

### SecureDelegateOptions (Structure)

- `wrapUntrustedFunctions: bool = true` Wrap function arguments in secure closures that call through using the original function taint.

### EventCallbackType (CallbackType)
