# CraftingOrderUI

Type: System  
Namespace: `C_CraftingOrders`  
Environment: All

## Functions

### C_CraftingOrders.AreOrderNotesDisabled

```lua
C_CraftingOrders.AreOrderNotesDisabled() -> areNotesDisabled: bool
```

### C_CraftingOrders.CalculateCraftingOrderPostingFee

```lua
C_CraftingOrders.CalculateCraftingOrderPostingFee(skillLineAbilityID: number, orderType: CraftingOrderType, orderDuration: CraftingOrderDuration) -> deposit: WOWMONEY
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.CanOrderSkillAbility

```lua
C_CraftingOrders.CanOrderSkillAbility(skillLineAbilityID: number) -> canOrder: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.CancelOrder

```lua
C_CraftingOrders.CancelOrder(orderID: BigUInteger)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.ClaimOrder

```lua
C_CraftingOrders.ClaimOrder(orderID: BigUInteger, profession: Profession)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CraftingOrders.CloseCrafterCraftingOrders

```lua
C_CraftingOrders.CloseCrafterCraftingOrders()
```

### C_CraftingOrders.CloseCustomerCraftingOrders

```lua
C_CraftingOrders.CloseCustomerCraftingOrders()
```

### C_CraftingOrders.FulfillOrder

```lua
C_CraftingOrders.FulfillOrder(orderID: BigUInteger, crafterNote: string, profession: Profession)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.GetClaimedOrder

```lua
C_CraftingOrders.GetClaimedOrder() -> order: CraftingOrderInfo?
```

### C_CraftingOrders.GetCrafterBuckets

```lua
C_CraftingOrders.GetCrafterBuckets() -> buckets: table<CraftingOrderBucketInfo>
```

### C_CraftingOrders.GetCrafterOrders

```lua
C_CraftingOrders.GetCrafterOrders() -> orders: table<CraftingOrderInfo>
```

### C_CraftingOrders.GetCraftingOrderTime

```lua
C_CraftingOrders.GetCraftingOrderTime() -> time: BigUInteger
```

### C_CraftingOrders.GetCustomerCategories

```lua
C_CraftingOrders.GetCustomerCategories() -> categories: table<CraftingOrderCustomerCategory>
```

### C_CraftingOrders.GetCustomerOptions

```lua
C_CraftingOrders.GetCustomerOptions(params: CraftingOrderCustomerSearchParams) -> results: CraftingOrderCustomerSearchResults
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.GetCustomerOrders

```lua
C_CraftingOrders.GetCustomerOrders() -> customerOrders: table<CraftingOrderInfo>
```

### C_CraftingOrders.GetDefaultOrdersSkillLine

```lua
C_CraftingOrders.GetDefaultOrdersSkillLine() -> skillLineID: number?
```

### C_CraftingOrders.GetMyOrders

```lua
C_CraftingOrders.GetMyOrders() -> myOrders: table<CraftingOrderInfo>
```

### C_CraftingOrders.GetNumFavoriteCustomerOptions

```lua
C_CraftingOrders.GetNumFavoriteCustomerOptions() -> numFavorites: BigUInteger
```

### C_CraftingOrders.GetOrderClaimInfo

```lua
C_CraftingOrders.GetOrderClaimInfo(profession: Profession) -> claimInfo: CraftingOrderClaimsRemainingInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.GetPersonalOrdersInfo

```lua
C_CraftingOrders.GetPersonalOrdersInfo() -> infos: table<CraftingOrderPersonalOrdersInfo>
```

### C_CraftingOrders.HasFavoriteCustomerOptions

```lua
C_CraftingOrders.HasFavoriteCustomerOptions() -> hasFavorites: bool
```

### C_CraftingOrders.IsCustomerOptionFavorited

```lua
C_CraftingOrders.IsCustomerOptionFavorited(recipeID: number) -> favorited: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.ListMyOrders

```lua
C_CraftingOrders.ListMyOrders(request: CraftingOrderRequestMyOrdersInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.OpenCrafterCraftingOrders

```lua
C_CraftingOrders.OpenCrafterCraftingOrders()
```

### C_CraftingOrders.OpenCustomerCraftingOrders

```lua
C_CraftingOrders.OpenCustomerCraftingOrders()
```

### C_CraftingOrders.OrderCanBeRecrafted

```lua
C_CraftingOrders.OrderCanBeRecrafted(orderID: BigUInteger) -> recraftable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.ParseCustomerOptions

```lua
C_CraftingOrders.ParseCustomerOptions()
```

### C_CraftingOrders.PlaceNewOrder

```lua
C_CraftingOrders.PlaceNewOrder(orderInfo: NewCraftingOrderInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CraftingOrders.RejectOrder

```lua
C_CraftingOrders.RejectOrder(orderID: BigUInteger, crafterNote: string, profession: Profession)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.ReleaseOrder

```lua
C_CraftingOrders.ReleaseOrder(orderID: BigUInteger, profession: Profession)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.RequestCrafterOrders

```lua
C_CraftingOrders.RequestCrafterOrders(request: CraftingOrderRequestInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.RequestCustomerOrders

```lua
C_CraftingOrders.RequestCustomerOrders(request: CraftingOrderRequestInfo)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.SetCustomerOptionFavorited

```lua
C_CraftingOrders.SetCustomerOptionFavorited(recipeID: number, favorited: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.ShouldShowCraftingOrderTab

```lua
C_CraftingOrders.ShouldShowCraftingOrderTab() -> showTab: bool
```

### C_CraftingOrders.SkillLineHasOrders

```lua
C_CraftingOrders.SkillLineHasOrders(skillLineID: number) -> hasOrders: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CraftingOrders.UpdateIgnoreList

```lua
C_CraftingOrders.UpdateIgnoreList()
```

## Events

### CRAFTING_HOUSE_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CAN_REQUEST

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CLAIM_ORDER_RESPONSE

Payload: `result: CraftingOrderResult, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CLAIMED_ORDER_ADDED

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CLAIMED_ORDER_REMOVED

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CLAIMED_ORDER_UPDATED

Payload: `orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CRAFT_ORDER_RESPONSE

Payload: `result: CraftingOrderResult, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CUSTOMER_FAVORITES_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_CUSTOMER_OPTIONS_PARSED

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_DISPLAY_CRAFTER_FULFILLED_MSG

Payload: `orderTypeString: cstring, itemNameString: cstring, playerNameString: cstring, tipAmount: WOWMONEY, quantityCrafted: number`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_FULFILL_ORDER_RESPONSE

Payload: `result: CraftingOrderResult, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_HIDE_CRAFTER

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_HIDE_CUSTOMER

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_ORDER_CANCEL_RESPONSE

Payload: `result: CraftingOrderResult`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_ORDER_PLACEMENT_RESPONSE

Payload: `result: CraftingOrderResult`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_REJECT_ORDER_RESPONSE

Payload: `result: CraftingOrderResult, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_RELEASE_ORDER_RESPONSE

Payload: `result: CraftingOrderResult, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_SHOW_CRAFTER

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_SHOW_CUSTOMER

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_UNEXPECTED_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_UPDATE_CUSTOMER_NAME

Payload: `customerName: cstring, orderID: BigUInteger`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_UPDATE_ORDER_COUNT

Payload: `orderType: CraftingOrderType, numOrders: number`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_UPDATE_PERSONAL_ORDER_COUNTS

Payload: `none`  
Flags: SynchronousEvent  

### CRAFTINGORDERS_UPDATE_REWARDS

Payload: `npcOrderRewards: table<CraftingOrderRewardInfo>, orderID: BigUInteger`  
Flags: SynchronousEvent  

## Tables

### CraftingOrderRequestInfo (Structure)

- `orderType: CraftingOrderType`
- `selectedSkillLineAbility: number?`
- `searchFavorites: bool`
- `initialNonPublicSearch: bool`
- `primarySort: CraftingOrderSortInfo`
- `secondarySort: CraftingOrderSortInfo`
- `forCrafter: bool`
- `offset: number`
- `callback: CraftingOrderRequestCallback`
- `profession: Profession?`

### CraftingOrderRequestMyOrdersInfo (Structure)

- `primarySort: CraftingOrderSortInfo`
- `secondarySort: CraftingOrderSortInfo`
- `offset: number`
- `callback: CraftingOrderRequestMyOrdersCallback`
