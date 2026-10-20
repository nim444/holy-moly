# ModelInfo

Type: System  
Namespace: `C_ModelInfo`  
Environment: All

## Functions

### C_ModelInfo.AddActiveModelScene

```lua
C_ModelInfo.AddActiveModelScene(modelSceneFrame: ModelSceneFrame, modelSceneID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

This function does nothing in public clients

### C_ModelInfo.AddActiveModelSceneActor

```lua
C_ModelInfo.AddActiveModelSceneActor(modelSceneFrameActor: ModelSceneFrameActor, modelSceneActorID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

This function does nothing in public clients

### C_ModelInfo.ClearActiveModelScene

```lua
C_ModelInfo.ClearActiveModelScene(modelSceneFrame: ModelSceneFrame)
```

Secret: SecretArguments=AllowedWhenUntainted  

This function does nothing in public clients

### C_ModelInfo.ClearActiveModelSceneActor

```lua
C_ModelInfo.ClearActiveModelSceneActor(modelSceneFrameActor: ModelSceneFrameActor)
```

Secret: SecretArguments=AllowedWhenUntainted  

This function does nothing in public clients

### C_ModelInfo.GetModelSceneActorDisplayInfoByID

```lua
C_ModelInfo.GetModelSceneActorDisplayInfoByID(modelActorDisplayID: number) -> actorDisplayInfo: UIModelSceneActorDisplayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ModelInfo.GetModelSceneActorInfoByID

```lua
C_ModelInfo.GetModelSceneActorInfoByID(modelActorID: number) -> actorInfo: UIModelSceneActorInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ModelInfo.GetModelSceneCameraInfoByID

```lua
C_ModelInfo.GetModelSceneCameraInfoByID(modelSceneCameraID: number) -> modelSceneCameraInfo: UIModelSceneCameraInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ModelInfo.GetModelSceneInfoByID

```lua
C_ModelInfo.GetModelSceneInfoByID(modelSceneID: number) -> modelSceneType: ModelSceneType, modelCameraIDs: table<number>, modelActorsIDs: table<number>, flags: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### UI_MODEL_SCENE_INFO_UPDATED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### UIModelSceneActorDisplayInfo (Structure)

- `animation: number`
- `animationVariation: number`
- `animSpeed: number`
- `animationKitID: number?`
- `spellVisualKitID: number?`
- `alpha: number`
- `scale: number`

### UIModelSceneActorInfo (Structure)

- `modelActorID: number`
- `scriptTag: cstring`
- `position: vector3`
- `yaw: number`
- `pitch: number`
- `roll: number`
- `normalizeScaleAggressiveness: number?`
- `useCenterForOriginX: bool`
- `useCenterForOriginY: bool`
- `useCenterForOriginZ: bool`
- `modelActorDisplayID: number?`

### UIModelSceneCameraInfo (Structure)

- `modelSceneCameraID: number`
- `scriptTag: cstring`
- `cameraType: cstring`
- `target: vector3`
- `yaw: number`
- `pitch: number`
- `roll: number`
- `zoomDistance: number`
- `minZoomDistance: number`
- `maxZoomDistance: number`
- `zoomedTargetOffset: vector3`
- `zoomedYawOffset: number`
- `zoomedPitchOffset: number`
- `zoomedRollOffset: number`
- `flags: ModelSceneSetting`
