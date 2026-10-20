# FrameAPIModelSceneFrameActor

Type: ScriptObject  
Environment: All

## Functions

### FrameAPIModelSceneFrameActor:AttachToMount

```lua
FrameAPIModelSceneFrameActor:AttachToMount(rider: ModelSceneFrameActor, animation: AnimationDataEnum, spellKitVisualID: number?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:CalculateMountScale

```lua
FrameAPIModelSceneFrameActor:CalculateMountScale(rider: ModelSceneFrameActor) -> scale: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:DetachFromMount

```lua
FrameAPIModelSceneFrameActor:DetachFromMount(rider: ModelSceneFrameActor) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:Dress

```lua
FrameAPIModelSceneFrameActor:Dress()
```

### FrameAPIModelSceneFrameActor:DressPlayerSlot

```lua
FrameAPIModelSceneFrameActor:DressPlayerSlot(invSlot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:GetAutoDress

```lua
FrameAPIModelSceneFrameActor:GetAutoDress() -> autoDress: bool
```

### FrameAPIModelSceneFrameActor:GetItemTransmogInfo

```lua
FrameAPIModelSceneFrameActor:GetItemTransmogInfo(inventorySlots: number) -> itemTransmogInfo: ItemTransmogInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### FrameAPIModelSceneFrameActor:GetItemTransmogInfoList

```lua
FrameAPIModelSceneFrameActor:GetItemTransmogInfoList() -> infoList: table<ItemTransmogInfo>
```

### FrameAPIModelSceneFrameActor:GetObeyHideInTransmogFlag

```lua
FrameAPIModelSceneFrameActor:GetObeyHideInTransmogFlag() -> obey: bool
```

### FrameAPIModelSceneFrameActor:GetPaused

```lua
FrameAPIModelSceneFrameActor:GetPaused() -> paused: bool, globalPaused: bool
```

### FrameAPIModelSceneFrameActor:GetSheathed

```lua
FrameAPIModelSceneFrameActor:GetSheathed() -> sheathed: bool
```

### FrameAPIModelSceneFrameActor:GetUseTransmogChoices

```lua
FrameAPIModelSceneFrameActor:GetUseTransmogChoices() -> use: bool
```

### FrameAPIModelSceneFrameActor:GetUseTransmogSkin

```lua
FrameAPIModelSceneFrameActor:GetUseTransmogSkin() -> use: bool
```

### FrameAPIModelSceneFrameActor:IsGeoReady

```lua
FrameAPIModelSceneFrameActor:IsGeoReady() -> isReady: bool
```

### FrameAPIModelSceneFrameActor:IsSlotAllowed

```lua
FrameAPIModelSceneFrameActor:IsSlotAllowed(inventorySlots: number) -> allowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:IsSlotVisible

```lua
FrameAPIModelSceneFrameActor:IsSlotVisible(inventorySlots: number) -> visible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:ReleaseFrontEndCharacterDisplays

```lua
FrameAPIModelSceneFrameActor:ReleaseFrontEndCharacterDisplays() -> success: bool
```

### FrameAPIModelSceneFrameActor:ResetNextHandSlot

```lua
FrameAPIModelSceneFrameActor:ResetNextHandSlot()
```

### FrameAPIModelSceneFrameActor:SetAutoDress

```lua
FrameAPIModelSceneFrameActor:SetAutoDress(autoDress: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetFrontEndLobbyModelFromDefaultCharacterDisplay

```lua
FrameAPIModelSceneFrameActor:SetFrontEndLobbyModelFromDefaultCharacterDisplay(characterIndex: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetItemTransmogInfo

```lua
FrameAPIModelSceneFrameActor:SetItemTransmogInfo(transmogInfo: ItemTransmogInfo, inventorySlots: number?, ignoreChildItems: bool = false) -> result: ItemTryOnReason
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetModelByHyperlink

```lua
FrameAPIModelSceneFrameActor:SetModelByHyperlink(link: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetObeyHideInTransmogFlag

```lua
FrameAPIModelSceneFrameActor:SetObeyHideInTransmogFlag(obey: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetPaused

```lua
FrameAPIModelSceneFrameActor:SetPaused(paused: bool, affectsGlobalPause: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetSheathed

```lua
FrameAPIModelSceneFrameActor:SetSheathed(sheathed: bool, hidden: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetSheathedCategory

```lua
FrameAPIModelSceneFrameActor:SetSheathedCategory(inventorySlots: number, category: TransmogOutfitSlotOptionSheatheCategory)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetUseTransmogChoices

```lua
FrameAPIModelSceneFrameActor:SetUseTransmogChoices(use: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:SetUseTransmogSkin

```lua
FrameAPIModelSceneFrameActor:SetUseTransmogSkin(use: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:Undress

```lua
FrameAPIModelSceneFrameActor:Undress(includeWeapons: bool = true)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:UndressSlot

```lua
FrameAPIModelSceneFrameActor:UndressSlot(inventorySlots: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIModelSceneFrameActor:UseUnitSheatheCategory

```lua
FrameAPIModelSceneFrameActor:UseUnitSheatheCategory(useCategory: bool)
```

Secret: SecretArguments=AllowedWhenUntainted
