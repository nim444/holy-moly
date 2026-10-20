# ClientScene

Type: System  
Namespace: `C_ClientScene`  
Environment: All

## Functions

### C_ClientScene.IsSceneTypeActive

```lua
C_ClientScene.IsSceneTypeActive(desiredSceneType: ClientSceneType?) -> isPlaying: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CLIENT_SCENE_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### CLIENT_SCENE_OPENED

Payload: `sceneType: ClientSceneType`  
Flags: SynchronousEvent  

## Tables

### ClientSceneType (Enumeration)

| Name | Value |
|---|---|
| DefaultSceneType | 0 |
| MinigameSceneType | 1 |
