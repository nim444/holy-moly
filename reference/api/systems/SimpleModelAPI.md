# SimpleModelAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleModelAPI:AdvanceTime

```lua
SimpleModelAPI:AdvanceTime()
```

### SimpleModelAPI:ClearFog

```lua
SimpleModelAPI:ClearFog()
```

### SimpleModelAPI:ClearModel

```lua
SimpleModelAPI:ClearModel()
```

### SimpleModelAPI:ClearTransform

```lua
SimpleModelAPI:ClearTransform()
```

### SimpleModelAPI:GetCameraDistance

```lua
SimpleModelAPI:GetCameraDistance() -> distance: number
```

### SimpleModelAPI:GetCameraFacing

```lua
SimpleModelAPI:GetCameraFacing() -> radians: number
```

### SimpleModelAPI:GetCameraPosition

```lua
SimpleModelAPI:GetCameraPosition() -> positionX: number, positionY: number, positionZ: number
```

### SimpleModelAPI:GetCameraRoll

```lua
SimpleModelAPI:GetCameraRoll() -> radians: number
```

### SimpleModelAPI:GetCameraTarget

```lua
SimpleModelAPI:GetCameraTarget() -> targetX: number, targetY: number, targetZ: number
```

### SimpleModelAPI:GetDesaturation

```lua
SimpleModelAPI:GetDesaturation() -> strength: number
```

### SimpleModelAPI:GetFacing

```lua
SimpleModelAPI:GetFacing() -> facing: number
```

### SimpleModelAPI:GetFogColor

```lua
SimpleModelAPI:GetFogColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleModelAPI:GetFogFar

```lua
SimpleModelAPI:GetFogFar() -> fogFar: number
```

### SimpleModelAPI:GetFogNear

```lua
SimpleModelAPI:GetFogNear() -> fogNear: number
```

### SimpleModelAPI:GetLight

```lua
SimpleModelAPI:GetLight() -> enabled: bool, light: ModelLight
```

### SimpleModelAPI:GetModelAlpha

```lua
SimpleModelAPI:GetModelAlpha() -> alpha: number
```

### SimpleModelAPI:GetModelDrawLayer

```lua
SimpleModelAPI:GetModelDrawLayer() -> layer: DrawLayer, sublayer: number
```

### SimpleModelAPI:GetModelFileID

```lua
SimpleModelAPI:GetModelFileID() -> modelFileID: fileID
```

### SimpleModelAPI:GetModelScale

```lua
SimpleModelAPI:GetModelScale() -> scale: number
```

### SimpleModelAPI:GetPaused

```lua
SimpleModelAPI:GetPaused() -> paused: bool
```

### SimpleModelAPI:GetPitch

```lua
SimpleModelAPI:GetPitch() -> pitch: number
```

### SimpleModelAPI:GetPosition

```lua
SimpleModelAPI:GetPosition() -> positionX: number, positionY: number, positionZ: number
```

### SimpleModelAPI:GetRoll

```lua
SimpleModelAPI:GetRoll() -> roll: number
```

### SimpleModelAPI:GetShadowEffect

```lua
SimpleModelAPI:GetShadowEffect() -> strength: number
```

### SimpleModelAPI:GetViewInsets

```lua
SimpleModelAPI:GetViewInsets() -> left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit
```

### SimpleModelAPI:GetViewTranslation

```lua
SimpleModelAPI:GetViewTranslation() -> x: uiUnit, y: uiUnit
```

### SimpleModelAPI:GetWorldScale

```lua
SimpleModelAPI:GetWorldScale() -> worldScale: number
```

### SimpleModelAPI:HasAttachmentPoints

```lua
SimpleModelAPI:HasAttachmentPoints() -> hasAttachmentPoints: bool
```

### SimpleModelAPI:HasCustomCamera

```lua
SimpleModelAPI:HasCustomCamera() -> hasCustomCamera: bool
```

### SimpleModelAPI:IsUsingModelCenterToTransform

```lua
SimpleModelAPI:IsUsingModelCenterToTransform() -> useCenter: bool
```

### SimpleModelAPI:MakeCurrentCameraCustom

```lua
SimpleModelAPI:MakeCurrentCameraCustom()
```

### SimpleModelAPI:ReplaceIconTexture

```lua
SimpleModelAPI:ReplaceIconTexture(asset: FileAsset)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCamera

```lua
SimpleModelAPI:SetCamera(cameraIndex: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCameraDistance

```lua
SimpleModelAPI:SetCameraDistance(distance: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCameraFacing

```lua
SimpleModelAPI:SetCameraFacing(radians: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCameraPosition

```lua
SimpleModelAPI:SetCameraPosition(positionX: number, positionY: number, positionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCameraRoll

```lua
SimpleModelAPI:SetCameraRoll(radians: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCameraTarget

```lua
SimpleModelAPI:SetCameraTarget(targetX: number, targetY: number, targetZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetCustomCamera

```lua
SimpleModelAPI:SetCustomCamera(cameraIndex: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetDesaturation

```lua
SimpleModelAPI:SetDesaturation(strength: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetFacing

```lua
SimpleModelAPI:SetFacing(facing: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetFogColor

```lua
SimpleModelAPI:SetFogColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetFogFar

```lua
SimpleModelAPI:SetFogFar(fogFar: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetFogNear

```lua
SimpleModelAPI:SetFogNear(fogNear: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetGlow

```lua
SimpleModelAPI:SetGlow(glow: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetGradientMask

```lua
SimpleModelAPI:SetGradientMask(grad0: number, grad1: number, grad2: number, grad3: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetLight

```lua
SimpleModelAPI:SetLight(enabled: bool, light: ModelLight)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetModel

```lua
SimpleModelAPI:SetModel(asset: ModelAsset, noMip: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetModelAlpha

```lua
SimpleModelAPI:SetModelAlpha(alpha: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetModelDrawLayer

```lua
SimpleModelAPI:SetModelDrawLayer(layer: DrawLayer)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetModelScale

```lua
SimpleModelAPI:SetModelScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetParticlesEnabled

```lua
SimpleModelAPI:SetParticlesEnabled(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetPaused

```lua
SimpleModelAPI:SetPaused(paused: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetPitch

```lua
SimpleModelAPI:SetPitch(pitch: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetPosition

```lua
SimpleModelAPI:SetPosition(positionX: number, positionY: number, positionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetRoll

```lua
SimpleModelAPI:SetRoll(roll: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetSequence

```lua
SimpleModelAPI:SetSequence(sequence: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetSequenceTime

```lua
SimpleModelAPI:SetSequenceTime(sequence: number, timeOffset: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetShadowEffect

```lua
SimpleModelAPI:SetShadowEffect(strength: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetTransform

```lua
SimpleModelAPI:SetTransform(translation: vector3?, rotation: vector3?, scale: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetUseGBuffer

```lua
SimpleModelAPI:SetUseGBuffer(useGBuffer: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### SimpleModelAPI:SetViewInsets

```lua
SimpleModelAPI:SetViewInsets(left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:SetViewTranslation

```lua
SimpleModelAPI:SetViewTranslation(x: uiUnit, y: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:TransformCameraSpaceToModelSpace

```lua
SimpleModelAPI:TransformCameraSpaceToModelSpace(cameraPosition: vector3) -> modelPosition: vector3
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleModelAPI:UseModelCenterToTransform

```lua
SimpleModelAPI:UseModelCenterToTransform(useCenter: bool)
```

Secret: SecretArguments=AllowedWhenUntainted
