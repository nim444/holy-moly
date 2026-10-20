# FrameAPIModelSceneFrame

Type: ScriptObject  
Environment: All

## Functions

### FrameAPIModelSceneFrame:ClearFog

```lua
FrameAPIModelSceneFrame:ClearFog()
```

### FrameAPIModelSceneFrame:CreateActor

```lua
FrameAPIModelSceneFrame:CreateActor(name: cstring, template: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:GetActorAtIndex

```lua
FrameAPIModelSceneFrame:GetActorAtIndex(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:GetAllowOverlappedModels

```lua
FrameAPIModelSceneFrame:GetAllowOverlappedModels() -> allowOverlappedModels: bool
```

### FrameAPIModelSceneFrame:GetCameraFarClip

```lua
FrameAPIModelSceneFrame:GetCameraFarClip() -> farClip: number
```

### FrameAPIModelSceneFrame:GetCameraFieldOfView

```lua
FrameAPIModelSceneFrame:GetCameraFieldOfView() -> fov: number
```

Field of view in radians

### FrameAPIModelSceneFrame:GetCameraForward

```lua
FrameAPIModelSceneFrame:GetCameraForward() -> forwardX: number, forwardY: number, forwardZ: number
```

### FrameAPIModelSceneFrame:GetCameraNearClip

```lua
FrameAPIModelSceneFrame:GetCameraNearClip() -> nearClip: number
```

### FrameAPIModelSceneFrame:GetCameraPosition

```lua
FrameAPIModelSceneFrame:GetCameraPosition() -> positionX: number, positionY: number, positionZ: number
```

### FrameAPIModelSceneFrame:GetCameraRight

```lua
FrameAPIModelSceneFrame:GetCameraRight() -> rightX: number, rightY: number, rightZ: number
```

### FrameAPIModelSceneFrame:GetCameraUp

```lua
FrameAPIModelSceneFrame:GetCameraUp() -> upX: number, upY: number, upZ: number
```

### FrameAPIModelSceneFrame:GetDrawLayer

```lua
FrameAPIModelSceneFrame:GetDrawLayer() -> layer: DrawLayer, sublevel: number
```

### FrameAPIModelSceneFrame:GetFogColor

```lua
FrameAPIModelSceneFrame:GetFogColor() -> colorR: number, colorG: number, colorB: number
```

### FrameAPIModelSceneFrame:GetFogFar

```lua
FrameAPIModelSceneFrame:GetFogFar() -> far: number
```

### FrameAPIModelSceneFrame:GetFogNear

```lua
FrameAPIModelSceneFrame:GetFogNear() -> near: number
```

### FrameAPIModelSceneFrame:GetLightAmbientColor

```lua
FrameAPIModelSceneFrame:GetLightAmbientColor() -> colorR: number, colorG: number, colorB: number
```

### FrameAPIModelSceneFrame:GetLightDiffuseColor

```lua
FrameAPIModelSceneFrame:GetLightDiffuseColor() -> colorR: number, colorG: number, colorB: number
```

### FrameAPIModelSceneFrame:GetLightDirection

```lua
FrameAPIModelSceneFrame:GetLightDirection() -> directionX: number, directionY: number, directionZ: number
```

### FrameAPIModelSceneFrame:GetLightPosition

```lua
FrameAPIModelSceneFrame:GetLightPosition() -> positionX: number, positionY: number, positionZ: number
```

### FrameAPIModelSceneFrame:GetLightType

```lua
FrameAPIModelSceneFrame:GetLightType() -> lightType: ModelLightType?
```

### FrameAPIModelSceneFrame:GetNumActors

```lua
FrameAPIModelSceneFrame:GetNumActors() -> numActors: number
```

### FrameAPIModelSceneFrame:GetViewInsets

```lua
FrameAPIModelSceneFrame:GetViewInsets() -> insets: uiRect
```

### FrameAPIModelSceneFrame:GetViewTranslation

```lua
FrameAPIModelSceneFrame:GetViewTranslation() -> translationX: number, translationY: number
```

### FrameAPIModelSceneFrame:IsLightVisible

```lua
FrameAPIModelSceneFrame:IsLightVisible() -> isVisible: bool
```

### FrameAPIModelSceneFrame:Project3DPointTo2D

```lua
FrameAPIModelSceneFrame:Project3DPointTo2D(pointX: number, pointY: number, pointZ: number) -> point2DX: number, point2DY: number, depth: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### FrameAPIModelSceneFrame:SetAllowOverlappedModels

```lua
FrameAPIModelSceneFrame:SetAllowOverlappedModels(allowOverlappedModels: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetCameraFarClip

```lua
FrameAPIModelSceneFrame:SetCameraFarClip(farClip: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetCameraFieldOfView

```lua
FrameAPIModelSceneFrame:SetCameraFieldOfView(fov: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Field of view in radians

### FrameAPIModelSceneFrame:SetCameraNearClip

```lua
FrameAPIModelSceneFrame:SetCameraNearClip(nearClip: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetCameraOrientationByAxisVectors

```lua
FrameAPIModelSceneFrame:SetCameraOrientationByAxisVectors(forwardX: number, forwardY: number, forwardZ: number, rightX: number, rightY: number, rightZ: number, upX: number, upY: number, upZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetCameraOrientationByYawPitchRoll

```lua
FrameAPIModelSceneFrame:SetCameraOrientationByYawPitchRoll(yaw: number, pitch: number, roll: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetCameraPosition

```lua
FrameAPIModelSceneFrame:SetCameraPosition(positionX: number, positionY: number, positionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetDesaturation

```lua
FrameAPIModelSceneFrame:SetDesaturation(strength: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetDrawLayer

```lua
FrameAPIModelSceneFrame:SetDrawLayer(layer: DrawLayer)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetFogColor

```lua
FrameAPIModelSceneFrame:SetFogColor(colorR: number, colorG: number, colorB: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetFogFar

```lua
FrameAPIModelSceneFrame:SetFogFar(far: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetFogNear

```lua
FrameAPIModelSceneFrame:SetFogNear(near: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightAmbientColor

```lua
FrameAPIModelSceneFrame:SetLightAmbientColor(colorR: number, colorG: number, colorB: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightDiffuseColor

```lua
FrameAPIModelSceneFrame:SetLightDiffuseColor(colorR: number, colorG: number, colorB: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightDirection

```lua
FrameAPIModelSceneFrame:SetLightDirection(directionX: number, directionY: number, directionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightPosition

```lua
FrameAPIModelSceneFrame:SetLightPosition(positionX: number, positionY: number, positionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightType

```lua
FrameAPIModelSceneFrame:SetLightType(lightType: ModelLightType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetLightVisible

```lua
FrameAPIModelSceneFrame:SetLightVisible(visible: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetPaused

```lua
FrameAPIModelSceneFrame:SetPaused(paused: bool, affectsGlobalPause: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetViewInsets

```lua
FrameAPIModelSceneFrame:SetViewInsets(insets: uiRect)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:SetViewTranslation

```lua
FrameAPIModelSceneFrame:SetViewTranslation(translationX: number, translationY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrame:TakeActor

```lua
FrameAPIModelSceneFrame:TakeActor()
```
