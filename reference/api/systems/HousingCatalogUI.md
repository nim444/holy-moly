# HousingCatalogUI

Type: System  
Namespace: `C_HousingCatalog`  
Environment: All

## Functions

### C_HousingCatalog.CreateCatalogSearcher

```lua
C_HousingCatalog.CreateCatalogSearcher() -> searcher: HousingCatalogSearcher
```

Creates a new instance of a HousingCatalog searcher; This can be used to asynchronously search/filter the HousingCatalog without affecting/being restricted by the filter state of other Housing Catalog UI displays

### C_HousingCatalog.DeletePreviewCartDecor

```lua
C_HousingCatalog.DeletePreviewCartDecor(decorGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.DestroyEntry

```lua
C_HousingCatalog.DestroyEntry(entryVariantID: HousingCatalogEntryVariantID, destroyAll: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to delete the entry from storage

### C_HousingCatalog.GetAllFilterTagGroups

```lua
C_HousingCatalog.GetAllFilterTagGroups() -> filterTagGroups: table<HousingCatalogFilterTagGroupInfo>
```

### C_HousingCatalog.GetAllVariantInfosForEntry

```lua
C_HousingCatalog.GetAllVariantInfosForEntry(entryID: HousingCatalogEntryID) -> variantInfos: table<HousingCatalogEntryVariantInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns variant info for all variants of a given catalog entry; Variants represent different visual modifications of the same base entry (ex: dyed versions)

### C_HousingCatalog.GetBundleInfo

```lua
C_HousingCatalog.GetBundleInfo(bundleCatalogShopProductID: number) -> bundleInfo: HousingBundleInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCartSizeLimit

```lua
C_HousingCatalog.GetCartSizeLimit() -> cartSizeLimit: number
```

### C_HousingCatalog.GetCatalogCategoryAndSubcategoryNames

```lua
C_HousingCatalog.GetCatalogCategoryAndSubcategoryNames(subcategoryID: number) -> categoryName: string, subcategoryName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

If found, returns the names of the parent category and the specified subcategory

### C_HousingCatalog.GetCatalogCategoryInfo

```lua
C_HousingCatalog.GetCatalogCategoryInfo(categoryID: number) -> info: HousingCatalogCategoryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogEntryInfo

```lua
C_HousingCatalog.GetCatalogEntryInfo(entryID: HousingCatalogEntryID) -> info: HousingCatalogEntryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogEntryInfoByItem

```lua
C_HousingCatalog.GetCatalogEntryInfoByItem(itemInfo: ItemInfo) -> info: HousingCatalogEntryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogEntryInfoByRecordID

```lua
C_HousingCatalog.GetCatalogEntryInfoByRecordID(entryType: HousingCatalogEntryType, recordID: number) -> info: HousingCatalogEntryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogEntryRefundTimeStampByRecordID

```lua
C_HousingCatalog.GetCatalogEntryRefundTimeStampByRecordID(entryType: HousingCatalogEntryType, recordID: number) -> refundTimeStamp: time_t?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogEntryVariantInfo

```lua
C_HousingCatalog.GetCatalogEntryVariantInfo(entryVariantID: HousingCatalogEntryVariantID) -> info: HousingCatalogEntryVariantInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetCatalogSubcategoryInfo

```lua
C_HousingCatalog.GetCatalogSubcategoryInfo(subcategoryID: number) -> info: HousingCatalogSubcategoryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.GetDecorMaxOwnedCount

```lua
C_HousingCatalog.GetDecorMaxOwnedCount() -> maxOwnedCount: number
```

Returns the maximum total number of decor that can be in storage/in the house chest; Note that not all decor entries in storage count towards this limit (see GetDecorTotalOwnedCount)

### C_HousingCatalog.GetDecorTotalOwnedCount

```lua
C_HousingCatalog.GetDecorTotalOwnedCount() -> totalOwnedCount: number, exemptDecorCount: number
```

### C_HousingCatalog.GetDestroyableInstanceCount

```lua
C_HousingCatalog.GetDestroyableInstanceCount(entryVariantID: HousingCatalogEntryVariantID) -> destroyableInstanceCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the number of instances that can be to be destroyed in storage; These instances count towards the max storage limit

### C_HousingCatalog.GetFeaturedBundles

```lua
C_HousingCatalog.GetFeaturedBundles() -> bundleInfos: table<HousingBundleInfo>
```

### C_HousingCatalog.GetFeaturedSmallProducts

```lua
C_HousingCatalog.GetFeaturedSmallProducts() -> infos: table<HousingFeaturedSmallProductInfo>
```

### C_HousingCatalog.GetMarketInfoForDecor

```lua
C_HousingCatalog.GetMarketInfoForDecor(decorID: number) -> marketInfo: HousingMarketInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns market info for a specific decor. This is decor-only for now but should be extended to support entry type and recordID generically

### C_HousingCatalog.HasFeaturedEntries

```lua
C_HousingCatalog.HasFeaturedEntries() -> hasEntries: bool
```

### C_HousingCatalog.HousingMarketActionAddToCart

```lua
C_HousingCatalog.HousingMarketActionAddToCart(productID: number, withPreview: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_HousingCatalog.HousingMarketActionClearCart

```lua
C_HousingCatalog.HousingMarketActionClearCart()
```

Flags: HasRestrictions  

### C_HousingCatalog.HousingMarketActionRemoveFromCart

```lua
C_HousingCatalog.HousingMarketActionRemoveFromCart(productID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_HousingCatalog.HousingMarketActionViewBundle

```lua
C_HousingCatalog.HousingMarketActionViewBundle(productID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_HousingCatalog.HousingMarketActionViewInStore

```lua
C_HousingCatalog.HousingMarketActionViewInStore(productID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_HousingCatalog.IsPreviewCartItemShown

```lua
C_HousingCatalog.IsPreviewCartItemShown(decorGUID: WOWGUID) -> isShown: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.PromotePreviewDecor

```lua
C_HousingCatalog.PromotePreviewDecor(decorID: number, previewDecorGUID: WOWGUID) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.RequestHousingMarketInfoRefresh

```lua
C_HousingCatalog.RequestHousingMarketInfoRefresh()
```

### C_HousingCatalog.RequestHousingMarketRefundInfo

```lua
C_HousingCatalog.RequestHousingMarketRefundInfo()
```

### C_HousingCatalog.SearchCatalogCategories

```lua
C_HousingCatalog.SearchCatalogCategories(searchParams: HousingCategorySearchInfo) -> categoryIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.SearchCatalogSubcategories

```lua
C_HousingCatalog.SearchCatalogSubcategories(searchParams: HousingCategorySearchInfo) -> subcategoryIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingCatalog.SetPreviewCartItemShown

```lua
C_HousingCatalog.SetPreviewCartItemShown(decorGUID: WOWGUID, shown: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### HOUSING_CATALOG_CATEGORY_UPDATED

Payload: `categoryID: number`  
Flags: UniqueEvent  

### HOUSING_CATALOG_SUBCATEGORY_UPDATED

Payload: `subcategoryID: number`  
Flags: UniqueEvent  

### HOUSING_DECOR_ADD_TO_PREVIEW_LIST

Payload: `previewItemData: HousingPreviewItemData`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PREVIEW_LIST_REMOVE_FROM_WORLD

Payload: `decorGUID: WOWGUID`  
Flags: SynchronousEvent  

### HOUSING_DECOR_PREVIEW_LIST_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_REFUND_LIST_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_STORAGE_ENTRY_UPDATED

Payload: `entryVariantID: HousingCatalogEntryVariantID`  
Flags: UniqueEvent  

### HOUSING_STORAGE_UPDATED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### HousingBundleDecorEntryInfo (Structure)

- `decorID: number`
- `quantity: number`

### HousingBundleInfo (Structure)

- `productID: number`
- `price: number`
- `originalPrice: number?`
- `nonDecorProducts: table<number>`
- `decorEntries: table<HousingBundleDecorEntryInfo>`
- `canPreview: bool = true` Bundles containing non-decor items cannot be previewed

### HousingCatalogCategoryInfo (Structure)

- `ID: number`
- `orderIndex: number`
- `name: cstring?`
- `icon: textureAtlas?`
- `subcategoryIDs: table<number>`
- `anyStoredEntries: bool` True if the player owns anything that falls under this category

### HousingCatalogEntryInfo (Structure)

Base information about an object in the Catalog; For info for a specific owned stack of this object, see HousingCatalogEntryVariantInfo

- `recordID: number`
- `entryType: HousingCatalogEntryType`
- `itemID: number?`
- `name: cstring`
- `asset: ModelAsset?` 3D model asset for displaying in the UI; May be nil if the entry doesn't have a model, or has one that isn't supported by UI model scenes
- `iconTexture: FileAsset?` Entry icon in the form of a texture file; Catalog entries should have either this OR an iconAtlas set
- `iconAtlas: textureAtlas?` Entry icon in the form a texture atlas element; Catalog entries should have either this OR an iconTexture set
- `uiModelSceneID: number?` Specific UI model scene ID to use when previewing this entry's 3D model; If not set, the default catalog model scene is used
- `categoryIDs: table<number>`
- `subcategoryIDs: table<number>`
- `dataTagsByID: LuaValueVariant` Simple localized 'tag' strings that are primarily used for things like categorization and filtering
- `size: HousingCatalogEntrySize`
- `placementCost: number` How much of the applicable budget placing this entry would cost (if any)
- `totalNumStored: number` The total number of instances of this entry that exist in storage across all variants; Does not include unredeemed instances (see remainingRedeemable)
- `remainingRedeemable: number` The number of unredeemed instances of this entry that exist in storage; Some auto-awarded housing objects are granted in this 'lazily-instantiated' way, and will be 'redeemed' on first being placed
- `totalNumPlaced: number` The total number of instances of this entry that have been placed across all of the player's houses and plots, across all variants
- `destroyableInstanceCount: number` The number of instances that can be destroyed for this entry.
- `isUniqueTrophy: bool` This decor is flagged to display as a unique trophy item.
- `isAllowedOutdoors: bool` True if this entry is something that is allowed to be placed outside, within a plot
- `isAllowedIndoors: bool` True if this entry is something that is allowed to be placed indoors, within a house interior
- `canCustomize: bool` True if this entry is something that can be customized; Kinds of customization vary depending on the entry type
- `isPrefab: bool`
- `quality: ItemQuality?`
- `firstAcquisitionBonus: number` House XP that can be gained upon acquiring this entry for the first time
- `sourceText: cstring` Describes specific sources this entry may be gained from; Faction-specific sources may or may not be included based on the current player's faction

### HousingCatalogEntryVariantInfo (Structure)

Represents a single stack of instances of an object in the Catalog, that are all of a specific variation; For example, a stack of undyed chairs, or blue-dyed tables

- `entryVariantID: HousingCatalogEntryVariantID`
- `numStored: number` The number of instances of this specific variant that exist in storage
- `dyeSlots: table<HousingDecorDyeSlot>` Dye slot information for this variant; Empty for entries that can't be dyed

### HousingCatalogSubcategoryInfo (Structure)

- `ID: number`
- `orderIndex: number`
- `parentCategoryID: number`
- `name: cstring?`
- `icon: textureAtlas?`
- `anyStoredEntries: bool` True if the player owns anything that falls under this subcategory

### HousingCategorySearchInfo (Structure)

- `withStoredEntriesOnly: bool = false` If true, search will only return categories/subcategories that the player has something stored under
- `includeFeaturedCategory: bool = false`
- `editorModeContext: HouseEditorMode?` If set, will restrict results to only categories associated with/used by this Editor Mode

### HousingFeaturedSmallProductInfo (Structure)

- `entryVariantID: HousingCatalogEntryVariantID?`
- `productID: number`
- `price: number`
- `originalPrice: number?`
- `canPreview: bool`

### HousingMarketInfo (Structure)

- `price: number`
- `productID: number`
- `bundleIDs: table<number>`

### HousingPreviewItemData (Structure)

- `decorGUID: WOWGUID?`
- `productID: number?`
- `bundleCatalogShopProductID: number?`
- `isBundleParent: bool`
- `isBundleChild: bool`
- `id: number`
- `decorID: number`
- `name: string`
- `icon: number`
- `price: number`
- `salePrice: number?`
