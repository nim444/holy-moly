# CurrencySystem

Type: System  
Namespace: `C_CurrencyInfo`  
Environment: All

## Functions

### C_CurrencyInfo.CanTransferCurrency

```lua
C_CurrencyInfo.CanTransferCurrency(currencyID: number) -> canTransferCurrency: bool, failureReason: AccountCurrencyTransferResult?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.DoesCurrentFilterRequireAccountCurrencyData

```lua
C_CurrencyInfo.DoesCurrentFilterRequireAccountCurrencyData() -> doesCurrentFilterRequireAccountCurrencyData: bool
```

### C_CurrencyInfo.DoesWarModeBonusApply

```lua
C_CurrencyInfo.DoesWarModeBonusApply(currencyID: number) -> warModeApplies: bool?, limitOncePerTooltip: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.ExpandCurrencyList

```lua
C_CurrencyInfo.ExpandCurrencyList(index: luaIndex, expand: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.FetchCurrencyDataFromAccountCharacters

```lua
C_CurrencyInfo.FetchCurrencyDataFromAccountCharacters(currencyID: number) -> accountCurrencyData: table<CharacterCurrencyData>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.FetchCurrencyTransferTransactions

```lua
C_CurrencyInfo.FetchCurrencyTransferTransactions() -> currencyTransferTransactions: table<CurrencyTransferTransaction>
```

### C_CurrencyInfo.GetAzeriteCurrencyID

```lua
C_CurrencyInfo.GetAzeriteCurrencyID() -> azeriteCurrencyID: number
```

### C_CurrencyInfo.GetBackpackCurrencyInfo

```lua
C_CurrencyInfo.GetBackpackCurrencyInfo(index: luaIndex) -> info: BackpackCurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetBasicCurrencyInfo

```lua
C_CurrencyInfo.GetBasicCurrencyInfo(currencyType: number, quantity: number?) -> info: CurrencyDisplayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetCoinIcon

```lua
C_CurrencyInfo.GetCoinIcon(amount: WOWMONEY) -> result: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCoinText

```lua
C_CurrencyInfo.GetCoinText(amount: WOWMONEY, separator: cstring = , ) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCoinTextureString

```lua
C_CurrencyInfo.GetCoinTextureString(amount: WOWMONEY, fontHeight: number = 14) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCostToTransferCurrency

```lua
C_CurrencyInfo.GetCostToTransferCurrency(currencyID: number, quantity: number) -> totalQuantityConsumed: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCurrencyContainerInfo

```lua
C_CurrencyInfo.GetCurrencyContainerInfo(currencyType: number, quantity: number) -> info: CurrencyDisplayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetCurrencyDescription

```lua
C_CurrencyInfo.GetCurrencyDescription(type: number) -> description: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCurrencyFilter

```lua
C_CurrencyInfo.GetCurrencyFilter() -> filterType: CurrencyFilterType
```

### C_CurrencyInfo.GetCurrencyIDFromLink

```lua
C_CurrencyInfo.GetCurrencyIDFromLink(currencyLink: cstring) -> currencyID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCurrencyInfo

```lua
C_CurrencyInfo.GetCurrencyInfo(type: number) -> info: CurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetCurrencyInfoFromLink

```lua
C_CurrencyInfo.GetCurrencyInfoFromLink(link: string) -> info: CurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetCurrencyLink

```lua
C_CurrencyInfo.GetCurrencyLink(type: number, amount: number?) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCurrencyListInfo

```lua
C_CurrencyInfo.GetCurrencyListInfo(index: luaIndex) -> info: CurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_CurrencyInfo.GetCurrencyListLink

```lua
C_CurrencyInfo.GetCurrencyListLink(index: luaIndex) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetCurrencyListSize

```lua
C_CurrencyInfo.GetCurrencyListSize() -> currencyListSize: number
```

### C_CurrencyInfo.GetDragonIslesSuppliesCurrencyID

```lua
C_CurrencyInfo.GetDragonIslesSuppliesCurrencyID() -> dragonIslesSuppliesCurrencyID: number
```

### C_CurrencyInfo.GetFactionGrantedByCurrency

```lua
C_CurrencyInfo.GetFactionGrantedByCurrency(currencyID: number) -> factionID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Gets the faction ID for currency that is immediately converted into reputation with that faction instead.

### C_CurrencyInfo.GetMaxTransferableAmountFromQuantity

```lua
C_CurrencyInfo.GetMaxTransferableAmountFromQuantity(currencyID: number, requestedQuantity: number) -> maxTransferableAmount: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetPlayerCurrencyCategoryInfo

```lua
C_CurrencyInfo.GetPlayerCurrencyCategoryInfo(categoryID: number, includeAccountWide: bool = true) -> info: PlayerCurrencyCategoryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.GetWarResourcesCurrencyID

```lua
C_CurrencyInfo.GetWarResourcesCurrencyID() -> warResourceCurrencyID: number
```

### C_CurrencyInfo.IsAccountCharacterCurrencyDataReady

```lua
C_CurrencyInfo.IsAccountCharacterCurrencyDataReady() -> isReady: bool
```

### C_CurrencyInfo.IsAccountTransferableCurrency

```lua
C_CurrencyInfo.IsAccountTransferableCurrency(currencyID: number) -> isAccountTransferableCurrency: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.IsAccountWideCurrency

```lua
C_CurrencyInfo.IsAccountWideCurrency(currencyID: number) -> isAccountWideCurrency: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.IsCurrencyContainer

```lua
C_CurrencyInfo.IsCurrencyContainer(currencyID: number, quantity: number) -> isCurrencyContainer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.IsCurrencyTransferInProgress

```lua
C_CurrencyInfo.IsCurrencyTransferInProgress() -> currencyTransferInProgress: bool
```

### C_CurrencyInfo.IsCurrencyTransferTransactionDataReady

```lua
C_CurrencyInfo.IsCurrencyTransferTransactionDataReady() -> isReady: bool
```

### C_CurrencyInfo.PickupCurrency

```lua
C_CurrencyInfo.PickupCurrency(type: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.PlayerHasMaxQuantity

```lua
C_CurrencyInfo.PlayerHasMaxQuantity(currencyID: number) -> hasMaxQuantity: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.PlayerHasMaxWeeklyQuantity

```lua
C_CurrencyInfo.PlayerHasMaxWeeklyQuantity(currencyID: number) -> hasMaxWeeklyQuantity: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.RequestCurrencyDataForAccountCharacters

```lua
C_CurrencyInfo.RequestCurrencyDataForAccountCharacters()
```

### C_CurrencyInfo.RequestCurrencyFromAccountCharacter

```lua
C_CurrencyInfo.RequestCurrencyFromAccountCharacter(sourceCharacterGUID: WOWGUID, currencyID: number, quantity: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CurrencyInfo.SetCurrencyBackpack

```lua
C_CurrencyInfo.SetCurrencyBackpack(index: luaIndex, backpack: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.SetCurrencyBackpackByID

```lua
C_CurrencyInfo.SetCurrencyBackpackByID(currencyType: number, backpack: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CurrencyInfo.SetCurrencyFilter

```lua
C_CurrencyInfo.SetCurrencyFilter(filterType: CurrencyFilterType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CurrencyInfo.SetCurrencyUnused

```lua
C_CurrencyInfo.SetCurrencyUnused(index: luaIndex, unused: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACCOUNT_CHARACTER_CURRENCY_DATA_RECEIVED

Payload: `none`  
Flags: SynchronousEvent  

### ACCOUNT_MONEY

Payload: `none`  
Flags: SynchronousEvent  

### CURRENCY_DISPLAY_UPDATE

Payload: `currencyType: number?, quantity: number?, quantityChange: number?, quantityGainSource: number?, destroyReason: number?`  
Flags: SynchronousEvent  

### CURRENCY_TRANSFER_FAILED

Payload: `failureReason: AccountCurrencyTransferResult`  
Flags: SynchronousEvent  

### CURRENCY_TRANSFER_INITIATED

Payload: `none`  
Flags: SynchronousEvent  

### CURRENCY_TRANSFER_LOG_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CURRENCY_TRANSFER_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_MONEY

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### BackpackCurrencyInfo (Structure)

- `name: string`
- `quantity: number`
- `iconFileID: fileID`
- `currencyTypesID: number`

### CharacterCurrencyData (Structure)

- `characterGUID: WOWGUID`
- `characterName: string`
- `fullCharacterName: string`
- `currencyID: number`
- `quantity: number`

### CurrencyDisplayInfo (Structure)

- `name: string`
- `description: string`
- `icon: number`
- `quality: number`
- `displayAmount: number`
- `actualAmount: number`

### CurrencyInfo (Structure)

- `name: cstring`
- `description: cstring`
- `currencyID: number`
- `isHeader: bool`
- `isHeaderExpanded: bool`
- `currencyListDepth: number`
- `isTypeUnused: bool`
- `isShowInBackpack: bool`
- `quantity: number`
- `trackedQuantity: number`
- `iconFileID: fileID`
- `maxQuantity: number`
- `canEarnPerWeek: bool`
- `quantityEarnedThisWeek: number`
- `isTradeable: bool`
- `quality: ItemQuality`
- `maxWeeklyQuantity: number`
- `totalEarned: number`
- `discovered: bool`
- `useTotalEarnedForMaxQty: bool`
- `isAccountWide: bool`
- `isAccountTransferable: bool`
- `transferPercentage: number?`
- `rechargingCycleDurationMS: number`
- `rechargingAmountPerCycle: number`

### CurrencyTransferTransaction (Structure)

- `sourceCharacterGUID: WOWGUID`
- `sourceCharacterName: string = `
- `fullSourceCharacterName: string = `
- `destinationCharacterGUID: WOWGUID`
- `destinationCharacterName: string = `
- `fullDestinationCharacterName: string = `
- `currencyType: number`
- `quantityTransferred: number`
- `totalQuantityConsumed: number`
- `timestamp: time_t`

### PlayerCurrencyCategoryInfo (Structure)

- `categoryName: cstring`
- `currencyTypes: table<number>`
- `childCategories: table<number>`
