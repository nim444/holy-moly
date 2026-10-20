# FrameAPICharacterModelBase

Type: ScriptObject  
Environment: All

## Functions

### FrameAPICharacterModelBase:ApplySpellVisualKit

```lua
FrameAPICharacterModelBase:ApplySpellVisualKit(spellVisualKitID: number, oneShot: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:CanSetUnit

```lua
FrameAPICharacterModelBase:CanSetUnit(unit: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:FreezeAnimation

```lua
FrameAPICharacterModelBase:FreezeAnimation(anim: AnimationDataEnum, variation: number, frame: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:GetDisplayInfo

```lua
FrameAPICharacterModelBase:GetDisplayInfo() -> displayID: number
```

### FrameAPICharacterModelBase:GetDoBlend

```lua
FrameAPICharacterModelBase:GetDoBlend() -> doBlend: bool
```

### FrameAPICharacterModelBase:GetKeepModelOnHide

```lua
FrameAPICharacterModelBase:GetKeepModelOnHide() -> keepModelOnHide: bool
```

### FrameAPICharacterModelBase:HasAnimation

```lua
FrameAPICharacterModelBase:HasAnimation(anim: AnimationDataEnum) -> hasAnimation: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:PlayAnimKit

```lua
FrameAPICharacterModelBase:PlayAnimKit(animKit: number, loop: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:RefreshCamera

```lua
FrameAPICharacterModelBase:RefreshCamera()
```

### FrameAPICharacterModelBase:RefreshUnit

```lua
FrameAPICharacterModelBase:RefreshUnit()
```

### FrameAPICharacterModelBase:SetAnimation

```lua
FrameAPICharacterModelBase:SetAnimation(anim: AnimationDataEnum, variation: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetBarberShopAlternateForm

```lua
FrameAPICharacterModelBase:SetBarberShopAlternateForm()
```

### FrameAPICharacterModelBase:SetCamDistanceScale

```lua
FrameAPICharacterModelBase:SetCamDistanceScale(scale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetCreature

```lua
FrameAPICharacterModelBase:SetCreature(creatureID: number, displayID: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetDisplayInfo

```lua
FrameAPICharacterModelBase:SetDisplayInfo(displayID: number, mountDisplayID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetDoBlend

```lua
FrameAPICharacterModelBase:SetDoBlend(doBlend: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetItem

```lua
FrameAPICharacterModelBase:SetItem(itemID: number, appearanceModID: number?, itemVisualID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetItemAppearance

```lua
FrameAPICharacterModelBase:SetItemAppearance(itemAppearanceID: number, itemVisualID: number?, itemSubclass: ItemWeaponSubclass?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetKeepModelOnHide

```lua
FrameAPICharacterModelBase:SetKeepModelOnHide(keepModelOnHide: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetPortraitZoom

```lua
FrameAPICharacterModelBase:SetPortraitZoom(zoom: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetRotation

```lua
FrameAPICharacterModelBase:SetRotation(radians: number, animate: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPICharacterModelBase:SetUnit

```lua
FrameAPICharacterModelBase:SetUnit(unit: UnitToken, blend: bool = true, useNativeForm: bool?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresDeclassifiedUnitIdentity  

### FrameAPICharacterModelBase:StopAnimKit

```lua
FrameAPICharacterModelBase:StopAnimKit()
```

### FrameAPICharacterModelBase:ZeroCachedCenterXY

```lua
FrameAPICharacterModelBase:ZeroCachedCenterXY()
```
