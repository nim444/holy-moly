# ExternalEventURL

Type: System  
Namespace: `C_ExternalEventURL`  
Environment: All

## Functions

### C_ExternalEventURL.CanShow

```lua
C_ExternalEventURL.CanShow() -> canShow: bool
```

### C_ExternalEventURL.HasURL

```lua
C_ExternalEventURL.HasURL() -> hasURL: bool
```

### C_ExternalEventURL.IsNew

```lua
C_ExternalEventURL.IsNew() -> isNew: bool
```

### C_ExternalEventURL.LaunchURL

```lua
C_ExternalEventURL.LaunchURL()
```

Flags: HasRestrictions  

## Events

### EXTERNAL_EVENT_LAUNCH_URL_RESULT

Payload: `result: bool`  
Flags: SynchronousEvent  

### EXTERNAL_EVENT_URL_CHANGED

Payload: `none`  
Flags: SynchronousEvent
