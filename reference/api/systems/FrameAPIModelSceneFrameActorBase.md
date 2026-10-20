# FrameAPIModelSceneFrameActorBase

Type: ScriptObject  
Environment: All

## Functions

### FrameAPIModelSceneFrameActorBase:ClearModel

```lua
FrameAPIModelSceneFrameActorBase:ClearModel()
```

### FrameAPIModelSceneFrameActorBase:GetActiveBoundingBox

```lua
FrameAPIModelSceneFrameActorBase:GetActiveBoundingBox() -> boxBottom: vector3, boxTop: vector3
```

### FrameAPIModelSceneFrameActorBase:GetAlpha

```lua
FrameAPIModelSceneFrameActorBase:GetAlpha() -> alpha: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Alpha']  

### FrameAPIModelSceneFrameActorBase:GetAnimation

```lua
FrameAPIModelSceneFrameActorBase:GetAnimation() -> animation: AnimationDataEnum
```

### FrameAPIModelSceneFrameActorBase:GetAnimationBlendOperation

```lua
FrameAPIModelSceneFrameActorBase:GetAnimationBlendOperation() -> blendOp: ModelBlendOperation
```

### FrameAPIModelSceneFrameActorBase:GetAnimationVariation

```lua
FrameAPIModelSceneFrameActorBase:GetAnimationVariation() -> variation: number
```

### FrameAPIModelSceneFrameActorBase:GetDesaturation

```lua
FrameAPIModelSceneFrameActorBase:GetDesaturation() -> strength: number
```

### FrameAPIModelSceneFrameActorBase:GetMaxBoundingBox

```lua
FrameAPIModelSceneFrameActorBase:GetMaxBoundingBox() -> boxBottom: vector3, boxTop: vector3
```

### FrameAPIModelSceneFrameActorBase:GetModelFileID

```lua
FrameAPIModelSceneFrameActorBase:GetModelFileID() -> file: fileID
```

### FrameAPIModelSceneFrameActorBase:GetModelPath

```lua
FrameAPIModelSceneFrameActorBase:GetModelPath() -> path: string
```

### FrameAPIModelSceneFrameActorBase:GetModelUnitGUID

```lua
FrameAPIModelSceneFrameActorBase:GetModelUnitGUID() -> guid: WOWGUID
```

### FrameAPIModelSceneFrameActorBase:GetParticleOverrideScale

```lua
FrameAPIModelSceneFrameActorBase:GetParticleOverrideScale() -> scale: number?
```

### FrameAPIModelSceneFrameActorBase:GetPitch

```lua
FrameAPIModelSceneFrameActorBase:GetPitch() -> pitch: number
```

### FrameAPIModelSceneFrameActorBase:GetPosition

```lua
FrameAPIModelSceneFrameActorBase:GetPosition() -> positionX: number, positionY: number, positionZ: number
```

### FrameAPIModelSceneFrameActorBase:GetRoll

```lua
FrameAPIModelSceneFrameActorBase:GetRoll() -> roll: number
```

### FrameAPIModelSceneFrameActorBase:GetScale

```lua
FrameAPIModelSceneFrameActorBase:GetScale() -> scale: number
```

### FrameAPIModelSceneFrameActorBase:GetSpellVisualKit

```lua
FrameAPIModelSceneFrameActorBase:GetSpellVisualKit() -> spellVisualKitID: number
```

### FrameAPIModelSceneFrameActorBase:GetYaw

```lua
FrameAPIModelSceneFrameActorBase:GetYaw() -> yaw: number
```

### FrameAPIModelSceneFrameActorBase:Hide

```lua
FrameAPIModelSceneFrameActorBase:Hide()
```

### FrameAPIModelSceneFrameActorBase:IsLoaded

```lua
FrameAPIModelSceneFrameActorBase:IsLoaded() -> isLoaded: bool
```

### FrameAPIModelSceneFrameActorBase:IsPreferringModelCollisionBounds

```lua
FrameAPIModelSceneFrameActorBase:IsPreferringModelCollisionBounds() -> preferringCollisionBounds: bool
```

### FrameAPIModelSceneFrameActorBase:IsShown

```lua
FrameAPIModelSceneFrameActorBase:IsShown() -> isShown: bool
```

### FrameAPIModelSceneFrameActorBase:IsUsingCenterForOrigin

```lua
FrameAPIModelSceneFrameActorBase:IsUsingCenterForOrigin() -> x: bool, y: bool, z: bool
```

### FrameAPIModelSceneFrameActorBase:IsVisible

```lua
FrameAPIModelSceneFrameActorBase:IsVisible() -> isVisible: bool
```

### FrameAPIModelSceneFrameActorBase:PlayAnimationKit

```lua
FrameAPIModelSceneFrameActorBase:PlayAnimationKit(animationKit: number, isLooping: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetAlpha

```lua
FrameAPIModelSceneFrameActorBase:SetAlpha(alpha: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetAnimation

```lua
FrameAPIModelSceneFrameActorBase:SetAnimation(animation: AnimationDataEnum, variation: number?, animSpeed: number = 1, animOffsetSeconds: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetAnimationBlendOperation

```lua
FrameAPIModelSceneFrameActorBase:SetAnimationBlendOperation(blendOp: ModelBlendOperation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetDesaturation

```lua
FrameAPIModelSceneFrameActorBase:SetDesaturation(strength: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetGradientMask

```lua
FrameAPIModelSceneFrameActorBase:SetGradientMask(gradientIndex0: number, gradientIndex1: number, gradientIndex2: number, gradientIndex3: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetGradientMaskWithDyes

```lua
FrameAPIModelSceneFrameActorBase:SetGradientMaskWithDyes(grad0DyeColorID: number?, grad1DyeColorID: number?, grad2DyeColorID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetModelByCreatureDisplayID

```lua
FrameAPIModelSceneFrameActorBase:SetModelByCreatureDisplayID(creatureDisplayID: number, useActivePlayerCustomizations: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetModelByFileID

```lua
FrameAPIModelSceneFrameActorBase:SetModelByFileID(asset: FileAsset, useMips: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetModelByPath

```lua
FrameAPIModelSceneFrameActorBase:SetModelByPath(asset: FileAsset, useMips: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetModelByUnit

```lua
FrameAPIModelSceneFrameActorBase:SetModelByUnit(unit: UnitToken, sheatheWeapons: bool = false, autoDress: bool = true, hideWeapons: bool = false, usePlayerNativeForm: bool = true, holdBowString: bool = false, customRaceID: number?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresDeclassifiedUnitIdentity  

### FrameAPIModelSceneFrameActorBase:SetModelByUnitCreatureDisplayID

```lua
FrameAPIModelSceneFrameActorBase:SetModelByUnitCreatureDisplayID(unit: UnitToken) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetParticleOverrideScale

```lua
FrameAPIModelSceneFrameActorBase:SetParticleOverrideScale(scale: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetPitch

```lua
FrameAPIModelSceneFrameActorBase:SetPitch(pitch: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetPlayerModelFromGlues

```lua
FrameAPIModelSceneFrameActorBase:SetPlayerModelFromGlues(characterIndex: number?, sheatheWeapons: bool = false, autoDress: bool = true, hideWeapons: bool = false, usePlayerNativeForm: bool = true, customRaceID: number?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetPosition

```lua
FrameAPIModelSceneFrameActorBase:SetPosition(positionX: number, positionY: number, positionZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetPreferModelCollisionBounds

```lua
FrameAPIModelSceneFrameActorBase:SetPreferModelCollisionBounds(preferCollisionBounds: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

If true, will try to use the collision bounds of models for sizing and centering. Will fall back to default model bounds if set to False, or if collision bounds are unavailable.

### FrameAPIModelSceneFrameActorBase:SetRoll

```lua
FrameAPIModelSceneFrameActorBase:SetRoll(roll: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetScale

```lua
FrameAPIModelSceneFrameActorBase:SetScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetShown

```lua
FrameAPIModelSceneFrameActorBase:SetShown(show: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetSpellVisualKit

```lua
FrameAPIModelSceneFrameActorBase:SetSpellVisualKit(spellVisualKitID: number = 0, oneShot: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetUseCenterForOrigin

```lua
FrameAPIModelSceneFrameActorBase:SetUseCenterForOrigin(x: bool = false, y: bool = false, z: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:SetYaw

```lua
FrameAPIModelSceneFrameActorBase:SetYaw(yaw: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActorBase:Show

```lua
FrameAPIModelSceneFrameActorBase:Show()
```

### FrameAPIModelSceneFrameActorBase:StopAnimationKit

```lua
FrameAPIModelSceneFrameActorBase:StopAnimationKit()
```

### FrameAPIModelSceneFrameActorBase:TryOn

```lua
FrameAPIModelSceneFrameActorBase:TryOn(itemLinkOrItemModifiedAppearanceID: cstring, handSlotName: cstring?, spellEnchantmentID: number = 0) -> reason: ItemTryOnReason?
```

Secret: SecretArguments=AllowedWhenUntainted
