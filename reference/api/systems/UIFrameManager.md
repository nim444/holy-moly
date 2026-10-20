# UIFrameManager

Type: System  
Namespace: `C_FrameManager`  
Environment: All

## Functions

### C_FrameManager.GetFrameVisibilityState

```lua
C_FrameManager.GetFrameVisibilityState(frameType: UIFrameType) -> shouldShow: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### FRAME_MANAGER_UPDATE_ALL

Payload: `none`  
Flags: SynchronousEvent  

### FRAME_MANAGER_UPDATE_FRAME

Payload: `type: UIFrameType, show: bool`  
Flags: SynchronousEvent  

## Tables

### UIFrameType (Enumeration)

| Name | Value |
|---|---|
| JailersTowerBuffs | 0 |
| InterruptTutorial | 1 |
