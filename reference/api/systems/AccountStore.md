# AccountStore

Type: System  
Namespace: `C_AccountStore`  
Environment: All

## Functions

### C_AccountStore.BeginPurchase

```lua
C_AccountStore.BeginPurchase(itemID: number) -> purchaseStarted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCategories

```lua
C_AccountStore.GetCategories(storeFrontID: number) -> categories: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCategoryInfo

```lua
C_AccountStore.GetCategoryInfo(categoryID: number) -> info: AccountStoreCategoryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCategoryItems

```lua
C_AccountStore.GetCategoryItems(categoryID: number) -> itemIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCurrencyAvailable

```lua
C_AccountStore.GetCurrencyAvailable(currencyID: number) -> amount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCurrencyIDForStore

```lua
C_AccountStore.GetCurrencyIDForStore(storeFrontID: number) -> currencyID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetCurrencyInfo

```lua
C_AccountStore.GetCurrencyInfo(currencyID: number) -> info: AccountStoreCurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetItemInfo

```lua
C_AccountStore.GetItemInfo(itemID: number) -> info: AccountStoreItemInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.GetStoreFrontState

```lua
C_AccountStore.GetStoreFrontState(storeFrontID: number) -> state: AccountStoreState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.RefundItem

```lua
C_AccountStore.RefundItem(itemID: number) -> refundStarted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AccountStore.RequestStoreFrontInfoUpdate

```lua
C_AccountStore.RequestStoreFrontInfoUpdate(storeFrontID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACCOUNT_STORE_CURRENCY_AVAILABLE_UPDATED

Payload: `currencyID: number`  
Flags: SynchronousEvent  

### ACCOUNT_STORE_FRONT_UPDATED

Payload: `storeFrontID: number`  
Flags: SynchronousEvent  

### ACCOUNT_STORE_ITEM_INFO_UPDATED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### ACCOUNT_STORE_TRANSACTION_ERROR

Payload: `result: AccountStoreTransactionResult`  
Flags: SynchronousEvent  

### STORE_FRONT_STATE_UPDATED

Payload: `storeFrontID: number`  
Flags: SynchronousEvent  

## Tables

### AccountStoreCategoryInfo (Structure)

- `id: number`
- `name: cstring`
- `type: AccountStoreCategoryType`
- `icon: fileID`

### AccountStoreCurrencyInfo (Structure)

- `id: number`
- `amount: number`
- `maxQuantity: number?`
- `name: cstring`
- `icon: fileID`

### AccountStoreItemInfo (Structure)

- `id: number`
- `status: AccountStoreItemStatus`
- `mode: AccountStoreItemMode`
- `currencyID: number`
- `flags: AccountStoreItemFlag`
- `customUIModelSceneID: number?`
- `name: cstring`
- `description: cstring?`
- `price: number`
- `nonrefundable: bool`
- `creatureDisplayID: number?`
- `transmogSetID: number?`
- `displayIcon: fileID?`
- `refundSecondsRemaining: time_t?`
