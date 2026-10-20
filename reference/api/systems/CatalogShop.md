# CatalogShop

Type: System  
Namespace: `C_CatalogShop`  
Environment: All

## Functions

### C_CatalogShop.BulkPurchaseProducts

```lua
C_CatalogShop.BulkPurchaseProducts(productIDs: table<number>) -> canPurchaseProducts: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CatalogShop.BulkRefundDecors

```lua
C_CatalogShop.BulkRefundDecors(decorGUIDs: table<WOWGUID>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.CloseCatalogShopInteraction

```lua
C_CatalogShop.CloseCatalogShopInteraction()
```

### C_CatalogShop.ConfirmHousingPurchase

```lua
C_CatalogShop.ConfirmHousingPurchase(productIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.FindBestCurrencyProductForNeededAmount

```lua
C_CatalogShop.FindBestCurrencyProductForNeededAmount(vcCurrencyCode: string, amountNeeded: number) -> vcProductID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetAvailableCategoryIDs

```lua
C_CatalogShop.GetAvailableCategoryIDs() -> categoryIDs: table<number>
```

### C_CatalogShop.GetAvailableTransmogRaceInfos

```lua
C_CatalogShop.GetAvailableTransmogRaceInfos() -> raceIDs: table<AvailableRaceInfo>
```

### C_CatalogShop.GetCatalogShopProductDisplayInfo

```lua
C_CatalogShop.GetCatalogShopProductDisplayInfo(catalogShopProductID: number) -> item: CatalogShopProductDisplayInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetCategoryInfo

```lua
C_CatalogShop.GetCategoryInfo(categoryID: number) -> categoryInfo: CatalogShopCategoryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetCategorySectionInfo

```lua
C_CatalogShop.GetCategorySectionInfo(categoryID: number, sectionID: number) -> sectionInfo: CatalogShopSectionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetFailureInfo

```lua
C_CatalogShop.GetFailureInfo() -> errorResultEnum: StoreError?, errorResultRaw: number?
```

### C_CatalogShop.GetFirstCategoryByProductID

```lua
C_CatalogShop.GetFirstCategoryByProductID(productID: number) -> categoryInfo: CatalogShopCategoryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetNewProducts

```lua
C_CatalogShop.GetNewProducts() -> newProducts: table<number>
```

### C_CatalogShop.GetProductAvailabilityTimeRemainingSecs

```lua
C_CatalogShop.GetProductAvailabilityTimeRemainingSecs(catalogShopProductID: number) -> timeRemainingSecs: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetProductIDsForBundle

```lua
C_CatalogShop.GetProductIDsForBundle(bundleProductID: number) -> childIDs: table<CatalogShopBundleChildInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetProductIDsForCategory

```lua
C_CatalogShop.GetProductIDsForCategory(categoryID: number) -> productIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetProductIDsForCategorySection

```lua
C_CatalogShop.GetProductIDsForCategorySection(categoryID: number, sectionID: number) -> productIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetProductInfo

```lua
C_CatalogShop.GetProductInfo(productID: number) -> productInfo: CatalogShopProductInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CatalogShop.GetProductSortOrder

```lua
C_CatalogShop.GetProductSortOrder(categoryID: number, sectionID: number, productID: number) -> sortOrder: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetRefundableDecors

```lua
C_CatalogShop.GetRefundableDecors(productIdFilterOpt: number?) -> refundableDecorInfos: table<RefundableDecorInfo>, minTimeRemainingSeconds: time_t
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetSectionIDsForCategory

```lua
C_CatalogShop.GetSectionIDsForCategory(categoryID: number) -> sectionIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetSpellVisualInfoForMount

```lua
C_CatalogShop.GetSpellVisualInfoForMount(spellVisualID: number) -> spellVisualInfo: CatalogShopSpellVisualInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.GetVCProductInfos

```lua
C_CatalogShop.GetVCProductInfos() -> vcProductInfos: table<CatalogShopVCProductInfo>
```

### C_CatalogShop.GetVirtualCurrencyBalance

```lua
C_CatalogShop.GetVirtualCurrencyBalance(currencyCode: string) -> balance: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.HasNewProducts

```lua
C_CatalogShop.HasNewProducts() -> hasNewProducts: bool
```

### C_CatalogShop.IsProductIncludedInAnyBundle

```lua
C_CatalogShop.IsProductIncludedInAnyBundle(productID: number) -> isIncludedInAnyBundle: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.IsShop2Enabled

```lua
C_CatalogShop.IsShop2Enabled() -> value: bool?
```

### C_CatalogShop.OnLegalDisclaimerClicked

```lua
C_CatalogShop.OnLegalDisclaimerClicked(catalogShopProductID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.OnLegalPersonalizedOptOutClicked

```lua
C_CatalogShop.OnLegalPersonalizedOptOutClicked()
```

### C_CatalogShop.OpenCatalogShopInteractionFromHouse

```lua
C_CatalogShop.OpenCatalogShopInteractionFromHouse() -> shoppingSessionUUIDStr: string
```

### C_CatalogShop.OpenCatalogShopInteractionFromShop

```lua
C_CatalogShop.OpenCatalogShopInteractionFromShop() -> shoppingSessionUUIDStr: string
```

### C_CatalogShop.ProductDisplayedTelemetry

```lua
C_CatalogShop.ProductDisplayedTelemetry(categoryId: number, sectionId: number, catalogShopProductID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CatalogShop.ProductSelectedTelemetry

```lua
C_CatalogShop.ProductSelectedTelemetry(categoryId: number, sectionId: number, catalogShopProductID: number, wasCodeSelection: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CatalogShop.PurchaseProduct

```lua
C_CatalogShop.PurchaseProduct(productID: number) -> canPurchase: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_CatalogShop.RefreshRefundableDecors

```lua
C_CatalogShop.RefreshRefundableDecors()
```

### C_CatalogShop.RefreshVirtualCurrencyBalance

```lua
C_CatalogShop.RefreshVirtualCurrencyBalance(currencyCode: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CatalogShop.ShouldShowHousingWarning

```lua
C_CatalogShop.ShouldShowHousingWarning() -> shouldShowHousingWarning: bool
```

### C_CatalogShop.StartHousingVCPurchaseConfirmation

```lua
C_CatalogShop.StartHousingVCPurchaseConfirmation(productID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### BULK_PURCHASE_RESULT_RECEIVED

Payload: `result: BulkPurchaseResult, productResults: table<BulkPurchaseIndividualProductResult>, bestTopUpProductID: number?, totalCost: number?`  
Flags: SynchronousEvent  

### BULK_REFUND_RESULT_RECEIVED

Payload: `result: BulkRefundResult`  
Flags: SynchronousEvent  

### CATALOG_SHOP_ADD_PENDING_PRODUCT

Payload: `productID: number`  
Flags: SynchronousEvent  

### CATALOG_SHOP_DATA_REFRESH

Payload: `shoppingSessionUUIDStr: string?`  
Flags: SynchronousEvent  

### CATALOG_SHOP_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### CATALOG_SHOP_FETCH_FAILURE

Payload: `shoppingSessionUUIDStr: string?`  
Flags: SynchronousEvent  

### CATALOG_SHOP_FETCH_SUCCESS

Payload: `shoppingSessionUUIDStr: string?`  
Flags: SynchronousEvent  

### CATALOG_SHOP_OPEN_SIMPLE_CHECKOUT

Payload: `checkoutID: number`  
Flags: SynchronousEvent  

### CATALOG_SHOP_PURCHASE_SUCCESS

Payload: `productID: number`  
Flags: SynchronousEvent  

### CATALOG_SHOP_REBUILD_SCROLL_BOX

Payload: `none`  
Flags: SynchronousEvent  

### CATALOG_SHOP_REFUNDABLE_DECORS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### CATALOG_SHOP_REMOVE_PENDING_PRODUCT

Payload: `productID: number`  
Flags: SynchronousEvent  

### CATALOG_SHOP_RESULT_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### CATALOG_SHOP_SPECIFIC_PRODUCT_REFRESH

Payload: `productID: number`  
Flags: SynchronousEvent  

### CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE

Payload: `currencyCode: string, balance: string`  
Flags: SynchronousEvent  

### CATALOG_SHOP_VIRTUAL_CURRENCY_BALANCE_UPDATE_FAILURE

Payload: `currencyCode: string`  
Flags: SynchronousEvent  

### SET_SEEN_PRODUCTS

Payload: `productIds: table<number>`  
Flags: SynchronousEvent  

### SHOW_NEW_PRODUCT_NOTIFICATION

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### AvailableRaceInfo (Structure)

- `raceID: number`
- `displayName: string`

### BulkPurchaseIndividualProductResult (Structure)

- `recordId: number`
- `parentProductId: number?`
- `entitlementId: string`
- `externalTransactionId: string`
- `status: SimpleOrderStatus`

### CatalogShopBundleChildInfo (Structure)

- `childProductID: number`
- `displayOrder: number`
- `quantityInBundle: number`

### CatalogShopCategoryInfo (Structure)

- `ID: number`
- `displayName: string`
- `iconTexture: string`
- `linkTag: string`
- `isDisabled: bool`
- `showPersistentRefundButton: bool`

### CatalogShopProductDisplayInfo (Structure)

- `defaultPreviewModelSceneID: number`
- `defaultCardModelSceneID: number`
- `defaultWideCardModelSceneID: number`
- `itemID: number`
- `overridePreviewModelSceneID: number?`
- `overrideCardModelSceneID: number?`
- `overrideWideCardModelSceneID: number?`
- `creatureDisplayInfoIDs: table<number>`
- `spellVisualIDs: table<number>`
- `mainHandItemModifiedAppearanceID: number?`
- `offHandItemModifiedAppearanceID: number?`
- `itemModifiedAppearanceIDs: table<number>`
- `iconFileDataID: number?`
- `iconTextureKit: textureKit?`
- `productType: string?`
- `itemDescription: string?`
- `hasUnknownLicense: bool`
- `productPMTURL: string?`
- `additionalProductPMTURLs: table<string>`
- `otherProductImageAtlasName: string?`
- `otherProductGameTitleBaseTag: string?`
- `otherProductGameType: string?`
- `customLoopingSoundStart: number?`
- `customLoopingSoundMiddle: number?`
- `customLoopingSoundEnd: number?`
- `specialActorID_1: string?`
- `specialActorID_2: string?`
- `specialActorID_3: string?`
- `specialActorID_4: string?`
- `specialActorID_5: string?`
- `gameFlavorID: number?`
- `decorFileDataID: number?`
- `quantity: number?`
- `houseTextureAtlas: textureAtlas?`

### CatalogShopProductInfo (Structure)

- `catalogShopProductID: number`
- `name: string`
- `type: string?`
- `description: string`
- `iconTexture: string`
- `isFullyOwned: bool`
- `isPurchasePending: bool`
- `refundable: bool`
- `price: string`
- `originalPrice: string`
- `discountPercentage: number`
- `itemID: number`
- `mountID: number`
- `mountTypeName: string`
- `speciesID: number`
- `transmogSetID: number`
- `itemModifiedAppearanceID: number`
- `subItems: table<CatalogShopSubItemInfo>`
- `subItemsLoaded: bool`
- `backgroundTexture: string`
- `foregroundTexture: string?`
- `smallCardBGTexture: string?`
- `smallCardFGTexture: string?`
- `wideCardBGTexture: string?`
- `wideCardFGTexture: string?`
- `previewIconTexture: string?`
- `optionalWideCardBackgroundTexture: string?`
- `isBundle: bool`
- `bundleChildrenSize: number`
- `licenseTermType: number`
- `licenseTermDuration: number`
- `virtualCurrencies: table<CatalogShopVirtualCurrency>`
- `isHidden: bool`
- `isMystery: bool`
- `hasPendingOrders: bool`
- `numBundleDetailCards: number`
- `isDynamicallyDiscounted: bool`
- `shouldShowOriginalPrice: bool`
- `wideCardBGOverrideProductURL: string?`
- `previewBGOverrideProductURL: string?`
- `previewSmallBGOverrideProductURL: string?`
- `decorQuantity: DecorQuantity?`
- `isVCProduct: bool`
- `containsHousingItem: bool`
- `deferredGameTimeDays: number`

### CatalogShopSectionInfo (Structure)

- `ID: number`
- `displayName: string`
- `parentCatalogShopCategoryInfoID: number?`
- `cardType: string?`
- `scrollGridSize: number?`
- `shouldShowRecommendationOptOutDisclaimer: bool`

### CatalogShopSpellVisualInfo (Structure)

- `animID: number?`
- `spellVisualKitID: number?`

### CatalogShopSubItemInfo (Structure)

- `name: string`
- `itemID: number`
- `itemAppearanceID: number`
- `invType: string`
- `quality: ItemQuality`

### CatalogShopVCProductInfo (Structure)

- `vcProductID: number`

### CatalogShopVirtualCurrency (Structure)

- `amount: number`
- `currencyCode: string`

### DecorQuantity (Structure)

- `placedQuantity: number`
- `storedQuantity: number`

### RefundableDecorInfo (Structure)

- `decorGUID: WOWGUID`
- `timeRemainingSeconds: time_t`
- `name: string`
- `price: string`
