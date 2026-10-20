# SimpleFrameScriptObjectConstants

Type: None

## Tables

### OnUpdateMode (Enumeration)

| Name | Value |
|---|---|
| Disabled | 0 |
| RunWhenVisible | 1 |
| RunWhenVisibleOnce | 2 |
| RunOnce | 3 |
| RunAlways | 4 |

### ScriptBindingType (Enumeration)

| Name | Value |
|---|---|
| Postcall | 2 |
| Precall | 0 |
| Extrinsic | 1 |

### ScriptObjectAccessRestriction (Enumeration)

| Name | Value |
|---|---|
| DenyTaintedAccessWhenAurasAreSecret | 1 |

### ScriptObjectMetatable (Enumeration)

| Name | Value |
|---|---|
| Public | 0 |
| Forbidden | 1 |

### ScriptObjectPartition (Enumeration)

| Name | Value |
|---|---|
| Public | 0 |
| Forbidden | 1 |

### ScriptObjectPropagationPath (Enumeration)

| Name | Value |
|---|---|
| Hierarchy | 0 |
| Layout | 1 |

## Preconditions

- `RequiresAssignableScript` (FailureMode=Error)
- `RequiresSupportedScript` (FailureMode=ReturnNothing)
