# FrameAPIDressUpModel

Type: ScriptObject  
Environment: All

## Functions

### FrameAPIDressUpModel:Dress

```lua
FrameAPIDressUpModel:Dress()
```

### FrameAPIDressUpModel:GetAutoDress

```lua
FrameAPIDressUpModel:GetAutoDress() -> enabled: bool
```

### FrameAPIDressUpModel:GetItemTransmogInfo

```lua
FrameAPIDressUpModel:GetItemTransmogInfo(inventorySlot: luaIndex) -> itemTransmogInfo: ItemTransmogInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### FrameAPIDressUpModel:GetItemTransmogInfoList

```lua
FrameAPIDressUpModel:GetItemTransmogInfoList() -> infoList: table<ItemTransmogInfo>
```

### FrameAPIDressUpModel:GetObeyHideInTransmogFlag

```lua
FrameAPIDressUpModel:GetObeyHideInTransmogFlag() -> enabled: bool
```

### FrameAPIDressUpModel:GetSheathed

```lua
FrameAPIDressUpModel:GetSheathed() -> sheathed: bool
```

### FrameAPIDressUpModel:GetUseTransmogChoices

```lua
FrameAPIDressUpModel:GetUseTransmogChoices() -> enabled: bool
```

### FrameAPIDressUpModel:GetUseTransmogSkin

```lua
FrameAPIDressUpModel:GetUseTransmogSkin() -> enabled: bool
```

### FrameAPIDressUpModel:IsGeoReady

```lua
FrameAPIDressUpModel:IsGeoReady() -> ready: bool
```

### FrameAPIDressUpModel:IsSlotAllowed

```lua
FrameAPIDressUpModel:IsSlotAllowed(slot: luaIndex) -> allowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:IsSlotVisible

```lua
FrameAPIDressUpModel:IsSlotVisible(slot: luaIndex) -> visible: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetAutoDress

```lua
FrameAPIDressUpModel:SetAutoDress(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetItemTransmogInfo

```lua
FrameAPIDressUpModel:SetItemTransmogInfo(itemTransmogInfo: ItemTransmogInfo, inventorySlot: luaIndex?, ignoreChildItems: bool = false) -> result: ItemTryOnReason
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetObeyHideInTransmogFlag

```lua
FrameAPIDressUpModel:SetObeyHideInTransmogFlag(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetSheathed

```lua
FrameAPIDressUpModel:SetSheathed(sheathed: bool = false, hideWeapons: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetUseTransmogChoices

```lua
FrameAPIDressUpModel:SetUseTransmogChoices(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:SetUseTransmogSkin

```lua
FrameAPIDressUpModel:SetUseTransmogSkin(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:TryOn

```lua
FrameAPIDressUpModel:TryOn(linkOrItemModifiedAppearanceID: IDOrLink, handSlotName: cstring?, spellEnchantID: number?) -> result: ItemTryOnReason?
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPIDressUpModel:Undress

```lua
FrameAPIDressUpModel:Undress()
```

### FrameAPIDressUpModel:UndressSlot

```lua
FrameAPIDressUpModel:UndressSlot(inventorySlot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted
