# ItemInteractionUI

Type: System  
Namespace: `C_ItemInteraction`  
Environment: All

## Functions

### C_ItemInteraction.ClearPendingItem

```lua
C_ItemInteraction.ClearPendingItem()
```

### C_ItemInteraction.CloseUI

```lua
C_ItemInteraction.CloseUI()
```

### C_ItemInteraction.GetChargeInfo

```lua
C_ItemInteraction.GetChargeInfo() -> chargeInfo: ItemInteractionChargeInfo
```

### C_ItemInteraction.GetItemConversionCurrencyCost

```lua
C_ItemInteraction.GetItemConversionCurrencyCost(item: ItemLocation) -> conversionCost: ConversionCurrencyCost
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemInteraction.GetItemInteractionInfo

```lua
C_ItemInteraction.GetItemInteractionInfo() -> info: ItemInteractionFrameInfo?
```

### C_ItemInteraction.GetItemInteractionSpellId

```lua
C_ItemInteraction.GetItemInteractionSpellId() -> spellId: number
```

### C_ItemInteraction.InitializeFrame

```lua
C_ItemInteraction.InitializeFrame()
```

### C_ItemInteraction.PerformItemInteraction

```lua
C_ItemInteraction.PerformItemInteraction()
```

Flags: HasRestrictions  

### C_ItemInteraction.Reset

```lua
C_ItemInteraction.Reset()
```

### C_ItemInteraction.SetPendingItem

```lua
C_ItemInteraction.SetPendingItem(item: ItemLocation?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ITEM_INTERACTION_CHARGE_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### ITEM_INTERACTION_ITEM_SELECTION_UPDATED

Payload: `itemLocation: ItemLocation?`  
Flags: SynchronousEvent  

## Tables

### ConversionCurrencyCost (Structure)

- `currencyID: number`
- `amount: number`

### ItemInteractionChargeInfo (Structure)

- `newChargeAmount: number`
- `rechargeRate: number`
- `timeToNextCharge: number`

### ItemInteractionFrameInfo (Structure)

- `textureKit: textureKit`
- `openSoundKitID: number`
- `closeSoundKitID: number`
- `titleText: string`
- `tutorialText: string`
- `buttonText: string`
- `interactionType: UIItemInteractionType`
- `flags: UIItemInteractionFlags`
- `description: string?`
- `buttonTooltip: string?`
- `confirmationDescription: string?`
- `slotTooltip: string?`
- `cost: number?`
- `currencyTypeId: number?`
- `dropInSlotSoundKitId: number?`
