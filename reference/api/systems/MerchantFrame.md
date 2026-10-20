# MerchantFrame

Type: System  
Namespace: `C_MerchantFrame`  
Environment: All

## Functions

### C_MerchantFrame.GetBuybackItemID

```lua
C_MerchantFrame.GetBuybackItemID(buybackSlotIndex: luaIndex) -> buybackItemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MerchantFrame.GetItemInfo

```lua
C_MerchantFrame.GetItemInfo(index: luaIndex) -> info: MerchantItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_MerchantFrame.GetMerchantCurrencies

```lua
C_MerchantFrame.GetMerchantCurrencies() -> currencies: table<number>
```

Flags: MayReturnNothing  

### C_MerchantFrame.GetNumJunkItems

```lua
C_MerchantFrame.GetNumJunkItems() -> numJunkItems: number
```

### C_MerchantFrame.IsMerchantItemRefundable

```lua
C_MerchantFrame.IsMerchantItemRefundable(index: luaIndex) -> refundable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MerchantFrame.IsSellAllJunkEnabled

```lua
C_MerchantFrame.IsSellAllJunkEnabled() -> enabled: bool
```

### C_MerchantFrame.SellAllJunkItems

```lua
C_MerchantFrame.SellAllJunkItems()
```

## Events

### MERCHANT_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### MERCHANT_FILTER_ITEM_UPDATE

Payload: `itemID: number`  
Flags: SynchronousEvent  

### MERCHANT_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### MERCHANT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### MerchantItemInfo (Structure)

- `name: string?`
- `texture: fileID`
- `price: number = 0`
- `stackCount: number = 0`
- `numAvailable: number = 0`
- `isPurchasable: bool = false`
- `isUsable: bool = false`
- `hasExtendedCost: bool = false`
- `currencyID: number?`
- `spellID: number?`
- `isQuestStartItem: bool = false`
