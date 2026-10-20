# CraftingOrderUIShared

Type: None

## Tables

### CraftingOrderBucketInfo (Structure)

- `itemID: number`
- `spellID: number`
- `skillLineAbilityID: number`
- `tipAmountAvg: WOWMONEY`
- `tipAmountMax: WOWMONEY`
- `numAvailable: number`

### CraftingOrderClaimsRemainingInfo (Structure)

- `claimsRemaining: number = 0`
- `secondsToRecharge: number?`

### CraftingOrderCustomerCategory (Structure)

- `categoryName: string`
- `categoryID: number`
- `uiSortOrder: number`
- `primaryCategorySortOrder: number?`
- `secondaryCategorySortOrder: number?`
- `type: CraftingOrderCustomerCategoryType`

### CraftingOrderCustomerCategoryFilters (Structure)

- `primaryCategoryID: number?`
- `secondaryCategoryID: number?`
- `tertiaryCategoryID: number?`

### CraftingOrderCustomerOptionInfo (Structure)

- `skillLineAbilityID: number`
- `professionID: number`
- `skillUpSkillLineID: number`
- `spellID: number`
- `itemID: number`
- `itemName: string`
- `primaryCategoryID: number`
- `iLvlMin: number`
- `iLvlMax: number?`
- `canUse: bool`
- `bindOnPickup: bool`
- `qualityIlvlBonuses: table<number>?`
- `craftingQualityIDs: table<number>?`
- `quality: ItemQuality?`
- `slots: number?`
- `level: number?`
- `skill: number?`
- `secondaryCategoryID: number?`
- `tertiaryCategoryID: number?`
- `expansionID: number?`

### CraftingOrderCustomerSearchParams (Structure)

- `categoryFilters: CraftingOrderCustomerCategoryFilters`
- `searchText: string?`
- `minLevel: number`
- `maxLevel: number`
- `uncollectedOnly: bool`
- `usableOnly: bool`
- `upgradesOnly: bool`
- `currentExpansionOnly: bool`
- `includePoor: bool`
- `includeCommon: bool`
- `includeUncommon: bool`
- `includeRare: bool`
- `includeEpic: bool`
- `includeLegendary: bool`
- `includeArtifact: bool`
- `isFavoritesSearch: bool`

### CraftingOrderCustomerSearchResults (Structure)

- `options: table<CraftingOrderCustomerOptionInfo>`
- `extraColumnType: AuctionHouseExtraColumn?`

### CraftingOrderInfo (Structure)

- `orderID: BigUInteger`
- `itemID: number`
- `spellID: number`
- `skillLineAbilityID: number`
- `orderType: CraftingOrderType`
- `orderState: CraftingOrderState`
- `expirationTime: time_t`
- `claimEndTime: time_t`
- `minQuality: number`
- `tipAmount: WOWMONEY`
- `consortiumCut: WOWMONEY`
- `isRecraft: bool`
- `isFulfillable: bool`
- `reagentState: CraftingOrderReagentsType`
- `customerGuid: WOWGUID?`
- `customerName: string?`
- `crafterGuid: WOWGUID?`
- `crafterName: string?`
- `npcCustomerCreatureID: number?`
- `customerNotes: string`
- `reagents: table<CraftingOrderReagentInfo>`
- `outputItemHyperlink: string?`
- `outputItemGUID: WOWGUID?`
- `recraftItemHyperlink: string?`
- `npcOrderRewards: table<CraftingOrderRewardInfo>`
- `npcCraftingOrderSetID: number`
- `npcTreasureID: number`

### CraftingOrderMailInfo (Structure)

- `reason: RcoCloseReason`
- `recipeName: string`
- `commissionPaid: WOWMONEY?`
- `crafterNote: string?`
- `crafterGUID: WOWGUID?`
- `crafterName: string?`
- `customerGUID: WOWGUID?`
- `customerName: string?`

### CraftingOrderPersonalOrdersInfo (Structure)

- `profession: Profession`
- `numPersonalOrders: number`
- `professionName: cstring`

### CraftingOrderReagentInfo (Structure)

- `reagentInfo: CraftingReagentInfo`
- `slotIndex: luaIndex`
- `source: CraftingOrderReagentSource`
- `isBasicReagent: bool`

### CraftingOrderRewardInfo (Structure)

- `itemLink: string?`
- `currencyType: number?`
- `count: number`

### CraftingOrderSortInfo (Structure)

- `sortType: CraftingOrderSortType`
- `reversed: bool`

### NewCraftingOrderInfo (Structure)

- `skillLineAbilityID: number`
- `orderType: CraftingOrderType`
- `orderDuration: CraftingOrderDuration`
- `tipAmount: WOWMONEY`
- `customerNotes: string`
- `reagentInfos: table<RegularReagentInfo>`
- `craftingReagentItems: table<CraftingReagentInfo>`
- `minCraftingQualityID: number?`
- `orderTarget: string?`
- `recraftItem: WOWGUID?`

### CraftingOrderRequestCallback (CallbackType)

- `result: CraftingOrderResult`
- `orderType: CraftingOrderType`
- `displayBuckets: bool`
- `expectMoreRows: bool`
- `offset: number`
- `isSorted: bool`

### CraftingOrderRequestMyOrdersCallback (CallbackType)

- `result: CraftingOrderResult`
- `expectMoreRows: bool`
- `offset: number`
- `isSorted: bool`
