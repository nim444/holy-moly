# InstanceLeaverInfo

Type: System  
Namespace: `C_InstanceLeaver`  
Environment: All

## Functions

### C_InstanceLeaver.IsPlayerLeaver

```lua
C_InstanceLeaver.IsPlayerLeaver() -> isLeaver: bool
```

Returns whether the player is considered a leaver for repeatedly abandoning mythic+ groups.

## Events

### INSTANCE_LEAVER_STATUS_CHANGED

Payload: `isLeaver: bool`  
Flags: SynchronousEvent
