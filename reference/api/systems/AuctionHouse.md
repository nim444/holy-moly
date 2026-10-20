# AuctionHouse

Type: System  
Namespace: `C_AuctionHouse`  
Environment: All

## Functions

### C_AuctionHouse.CalculateCommodityDeposit

```lua
C_AuctionHouse.CalculateCommodityDeposit(itemID: number, duration: luaIndex, quantity: number) -> depositCost: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.CalculateItemDeposit

```lua
C_AuctionHouse.CalculateItemDeposit(item: ItemLocation, duration: luaIndex, quantity: number) -> depositCost: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.CanCancelAuction

```lua
C_AuctionHouse.CanCancelAuction(ownedAuctionID: number) -> canCancelAuction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.CancelAuction

```lua
C_AuctionHouse.CancelAuction(ownedAuctionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.CancelCommoditiesPurchase

```lua
C_AuctionHouse.CancelCommoditiesPurchase()
```

### C_AuctionHouse.CancelSell

```lua
C_AuctionHouse.CancelSell()
```

### C_AuctionHouse.CloseAuctionHouse

```lua
C_AuctionHouse.CloseAuctionHouse()
```

### C_AuctionHouse.ConfirmCommoditiesPurchase

```lua
C_AuctionHouse.ConfirmCommoditiesPurchase(itemID: number, quantity: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.ConfirmPostCommodity

```lua
C_AuctionHouse.ConfirmPostCommodity(item: ItemLocation, duration: luaIndex, quantity: number, unitPrice: BigUInteger)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.ConfirmPostItem

```lua
C_AuctionHouse.ConfirmPostItem(item: ItemLocation, duration: luaIndex, quantity: number, bid: BigUInteger?, buyout: BigUInteger?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.FavoritesAreAvailable

```lua
C_AuctionHouse.FavoritesAreAvailable() -> favoritesAreAvailable: bool
```

### C_AuctionHouse.GetAuctionInfoByID

```lua
C_AuctionHouse.GetAuctionInfoByID(auctionID: number) -> priceInfo: AuctionInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetAuctionItemSubClasses

```lua
C_AuctionHouse.GetAuctionItemSubClasses(classID: number) -> subClasses: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetAvailablePostCount

```lua
C_AuctionHouse.GetAvailablePostCount(item: ItemLocation) -> listCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetBidInfo

```lua
C_AuctionHouse.GetBidInfo(bidIndex: luaIndex) -> bid: BidInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetBidType

```lua
C_AuctionHouse.GetBidType(bidTypeIndex: luaIndex) -> typeItemKey: ItemKey?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetBids

```lua
C_AuctionHouse.GetBids() -> bids: table<BidInfo>
```

### C_AuctionHouse.GetBrowseResults

```lua
C_AuctionHouse.GetBrowseResults() -> browseResults: table<BrowseResultInfo>
```

### C_AuctionHouse.GetCancelCost

```lua
C_AuctionHouse.GetCancelCost(ownedAuctionID: number) -> cancelCost: BigUInteger
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetCommoditySearchResultInfo

```lua
C_AuctionHouse.GetCommoditySearchResultInfo(itemID: number, commoditySearchResultIndex: luaIndex) -> result: CommoditySearchResultInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetCommoditySearchResultsQuantity

```lua
C_AuctionHouse.GetCommoditySearchResultsQuantity(itemID: number) -> totalQuantity: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetExtraBrowseInfo

```lua
C_AuctionHouse.GetExtraBrowseInfo(itemKey: ItemKey) -> extraInfo: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AuctionHouse.GetFilterGroups

```lua
C_AuctionHouse.GetFilterGroups() -> filterGroups: table<AuctionHouseFilterGroup>
```

### C_AuctionHouse.GetItemCommodityStatus

```lua
C_AuctionHouse.GetItemCommodityStatus(item: ItemLocation) -> isCommodity: ItemCommodityStatus
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetItemKeyFromItem

```lua
C_AuctionHouse.GetItemKeyFromItem(item: ItemLocation) -> itemKey: ItemKey
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetItemKeyInfo

```lua
C_AuctionHouse.GetItemKeyInfo(itemKey: ItemKey, restrictQualityToFilter: bool = false) -> itemKeyInfo: ItemKeyInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetItemKeyRequiredLevel

```lua
C_AuctionHouse.GetItemKeyRequiredLevel(itemKey: ItemKey) -> requiredLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AuctionHouse.GetItemKeySampleLink

```lua
C_AuctionHouse.GetItemKeySampleLink(itemKey: ItemKey) -> sampleItemLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns a link for an item in this key's results with player-applied enchants, gems and reforges stripped

### C_AuctionHouse.GetItemSearchResultInfo

```lua
C_AuctionHouse.GetItemSearchResultInfo(itemKey: ItemKey, itemSearchResultIndex: luaIndex) -> result: ItemSearchResultInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetItemSearchResultsQuantity

```lua
C_AuctionHouse.GetItemSearchResultsQuantity(itemKey: ItemKey) -> totalQuantity: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetMaxBidItemBid

```lua
C_AuctionHouse.GetMaxBidItemBid() -> maxBid: BigUInteger?
```

### C_AuctionHouse.GetMaxBidItemBuyout

```lua
C_AuctionHouse.GetMaxBidItemBuyout() -> maxBuyout: BigUInteger?
```

### C_AuctionHouse.GetMaxCommoditySearchResultPrice

```lua
C_AuctionHouse.GetMaxCommoditySearchResultPrice(itemID: number) -> maxUnitPrice: BigUInteger?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetMaxItemSearchResultBid

```lua
C_AuctionHouse.GetMaxItemSearchResultBid(itemKey: ItemKey) -> maxBid: BigUInteger?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetMaxItemSearchResultBuyout

```lua
C_AuctionHouse.GetMaxItemSearchResultBuyout(itemKey: ItemKey) -> maxBuyout: BigUInteger?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetMaxOwnedAuctionBid

```lua
C_AuctionHouse.GetMaxOwnedAuctionBid() -> maxBid: BigUInteger?
```

### C_AuctionHouse.GetMaxOwnedAuctionBuyout

```lua
C_AuctionHouse.GetMaxOwnedAuctionBuyout() -> maxBuyout: BigUInteger?
```

### C_AuctionHouse.GetNumBidTypes

```lua
C_AuctionHouse.GetNumBidTypes() -> numBidTypes: number
```

### C_AuctionHouse.GetNumBids

```lua
C_AuctionHouse.GetNumBids() -> numBids: number
```

### C_AuctionHouse.GetNumCommoditySearchResults

```lua
C_AuctionHouse.GetNumCommoditySearchResults(itemID: number) -> numSearchResults: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetNumItemSearchResults

```lua
C_AuctionHouse.GetNumItemSearchResults(itemKey: ItemKey) -> numItemSearchResults: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetNumOwnedAuctionTypes

```lua
C_AuctionHouse.GetNumOwnedAuctionTypes() -> numOwnedAuctionTypes: number
```

### C_AuctionHouse.GetNumOwnedAuctions

```lua
C_AuctionHouse.GetNumOwnedAuctions() -> numOwnedAuctions: number
```

### C_AuctionHouse.GetNumReplicateItems

```lua
C_AuctionHouse.GetNumReplicateItems() -> numReplicateItems: number
```

### C_AuctionHouse.GetOwnedAuctionInfo

```lua
C_AuctionHouse.GetOwnedAuctionInfo(ownedAuctionIndex: luaIndex) -> ownedAuction: OwnedAuctionInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetOwnedAuctionType

```lua
C_AuctionHouse.GetOwnedAuctionType(ownedAuctionTypeIndex: luaIndex) -> typeItemKey: ItemKey?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetOwnedAuctions

```lua
C_AuctionHouse.GetOwnedAuctions() -> ownedAuctions: table<OwnedAuctionInfo>
```

### C_AuctionHouse.GetQuoteDurationRemaining

```lua
C_AuctionHouse.GetQuoteDurationRemaining() -> quoteDurationSeconds: number
```

### C_AuctionHouse.GetReplicateItemBattlePetInfo

```lua
C_AuctionHouse.GetReplicateItemBattlePetInfo(index: number) -> creatureID: number, displayID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AuctionHouse.GetReplicateItemInfo

```lua
C_AuctionHouse.GetReplicateItemInfo(index: number) -> name: string?, texture: fileID?, count: number, qualityID: number, usable: bool?, level: number, levelType: string?, minBid: BigUInteger, minIncrement: BigUInteger, buyoutPrice: BigUInteger, bidAmount: BigUInteger, highBidder: string?, bidderFullName: string?, owner: string?, ownerFullName: string?, saleStatus: number, itemID: number, hasAllInfo: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetReplicateItemLink

```lua
C_AuctionHouse.GetReplicateItemLink(index: number) -> itemLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetReplicateItemTimeLeft

```lua
C_AuctionHouse.GetReplicateItemTimeLeft(index: number) -> timeLeft: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.GetTimeLeftBandInfo

```lua
C_AuctionHouse.GetTimeLeftBandInfo(timeLeftBand: AuctionHouseTimeLeftBand) -> timeLeftMinSeconds: number, timeLeftMaxSeconds: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.HasFavorites

```lua
C_AuctionHouse.HasFavorites() -> hasFavorites: bool
```

### C_AuctionHouse.HasFullBidResults

```lua
C_AuctionHouse.HasFullBidResults() -> hasFullBidResults: bool
```

### C_AuctionHouse.HasFullBrowseResults

```lua
C_AuctionHouse.HasFullBrowseResults() -> hasFullBrowseResults: bool
```

### C_AuctionHouse.HasFullCommoditySearchResults

```lua
C_AuctionHouse.HasFullCommoditySearchResults(itemID: number) -> hasFullResults: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.HasFullItemSearchResults

```lua
C_AuctionHouse.HasFullItemSearchResults(itemKey: ItemKey) -> hasFullResults: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.HasFullOwnedAuctionResults

```lua
C_AuctionHouse.HasFullOwnedAuctionResults() -> hasFullOwnedAuctionResults: bool
```

### C_AuctionHouse.HasMaxFavorites

```lua
C_AuctionHouse.HasMaxFavorites() -> hasMaxFavorites: bool
```

### C_AuctionHouse.HasSearchResults

```lua
C_AuctionHouse.HasSearchResults(itemKey: ItemKey) -> hasSearchResults: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.IsFavoriteItem

```lua
C_AuctionHouse.IsFavoriteItem(itemKey: ItemKey) -> isFavorite: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.IsSellItemValid

```lua
C_AuctionHouse.IsSellItemValid(item: ItemLocation, displayError: bool = true) -> valid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.IsThrottledMessageSystemReady

```lua
C_AuctionHouse.IsThrottledMessageSystemReady() -> canSendThrottledMessage: bool
```

### C_AuctionHouse.MakeItemKey

```lua
C_AuctionHouse.MakeItemKey(itemID: number, itemLevel: number = 0, itemSuffix: number = 0, battlePetSpeciesID: number = 0) -> itemKey: ItemKey
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.PlaceBid

```lua
C_AuctionHouse.PlaceBid(auctionID: number, bidAmount: BigUInteger)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.PostCommodity

```lua
C_AuctionHouse.PostCommodity(item: ItemLocation, duration: luaIndex, quantity: number, unitPrice: BigUInteger) -> needsConfirmation: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.PostItem

```lua
C_AuctionHouse.PostItem(item: ItemLocation, duration: luaIndex, quantity: number, bid: BigUInteger?, buyout: BigUInteger?) -> needsConfirmation: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.QueryBids

```lua
C_AuctionHouse.QueryBids(sorts: table<AuctionHouseSortType>, auctionIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.QueryOwnedAuctions

```lua
C_AuctionHouse.QueryOwnedAuctions(sorts: table<AuctionHouseSortType>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.RefreshCommoditySearchResults

```lua
C_AuctionHouse.RefreshCommoditySearchResults(itemID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.RefreshItemSearchResults

```lua
C_AuctionHouse.RefreshItemSearchResults(itemKey: ItemKey, minLevelFilter: number?, maxLevelFilter: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.ReplicateItems

```lua
C_AuctionHouse.ReplicateItems()
```

This function should be used in place of an 'allItem' QueryAuctionItems call to query the entire auction house.

### C_AuctionHouse.RequestMoreBrowseResults

```lua
C_AuctionHouse.RequestMoreBrowseResults()
```

### C_AuctionHouse.RequestMoreCommoditySearchResults

```lua
C_AuctionHouse.RequestMoreCommoditySearchResults(itemID: number) -> hasFullResults: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.RequestMoreItemSearchResults

```lua
C_AuctionHouse.RequestMoreItemSearchResults(itemKey: ItemKey) -> hasFullResults: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.RequestOwnedAuctionBidderInfo

```lua
C_AuctionHouse.RequestOwnedAuctionBidderInfo(auctionID: number) -> bidderName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.SearchForFavorites

```lua
C_AuctionHouse.SearchForFavorites(sorts: table<AuctionHouseSortType>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.SearchForItemKeys

```lua
C_AuctionHouse.SearchForItemKeys(itemKeys: table<ItemKey>, sorts: table<AuctionHouseSortType>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.SendBrowseQuery

```lua
C_AuctionHouse.SendBrowseQuery(query: AuctionHouseBrowseQuery)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.SendSearchQuery

```lua
C_AuctionHouse.SendSearchQuery(itemKey: ItemKey, sorts: table<AuctionHouseSortType>, separateOwnerItems: bool, minLevelFilter: number = 0, maxLevelFilter: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search queries are restricted to 100 calls per minute. These should not be used to query the entire auction house. See ReplicateItems

### C_AuctionHouse.SendSellSearchQuery

```lua
C_AuctionHouse.SendSellSearchQuery(itemKey: ItemKey, sorts: table<AuctionHouseSortType>, separateOwnerItems: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search queries are restricted to 100 calls per minute. These should not be used to query the entire auction house. See ReplicateItems. ItemKey should have its iLVL and suffix cleared before calling.

### C_AuctionHouse.SetFavoriteItem

```lua
C_AuctionHouse.SetFavoriteItem(itemKey: ItemKey, setFavorite: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuctionHouse.ShouldAutoPopulatePrice

```lua
C_AuctionHouse.ShouldAutoPopulatePrice() -> shouldAutoPopulatePrice: bool
```

### C_AuctionHouse.StartCommoditiesPurchase

```lua
C_AuctionHouse.StartCommoditiesPurchase(itemID: number, quantity: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AuctionHouse.SupportsCopperValues

```lua
C_AuctionHouse.SupportsCopperValues() -> supportsCopperValues: bool
```

## Events

### AUCTION_CANCELED

Payload: `auctionID: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_AUCTION_CREATED

Payload: `auctionID: number`  
Flags: SynchronousEvent  
This signal is not used in the base UI but is included for AddOn ease-of-use.

### AUCTION_HOUSE_AUCTIONS_EXPIRED

Payload: `auctionID: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_BROWSE_FAILURE

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_BROWSE_RESULTS_ADDED

Payload: `addedBrowseResults: table<BrowseResultInfo>`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_BROWSE_RESULTS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_FAVORITES_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_ITEM_DELIVERY_DELAY_UPDATE

Payload: `purchasedItemDeliveryDelay: number, cancelledItemDeliveryDelay: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_NEW_BID_RECEIVED

Payload: `auctionID: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_NEW_RESULTS_RECEIVED

Payload: `itemKey: ItemKey?`  
Flags: SynchronousEvent  
This signal is not used in the base UI but is included for AddOn ease-of-use. Payload is nil for browse queries.

### AUCTION_HOUSE_POST_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_POST_WARNING

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_PURCHASE_COMPLETED

Payload: `auctionID: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SCRIPT_DEPRECATED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SHOW_COMMODITY_WON_NOTIFICATION

Payload: `commodityName: string, commodityQuantity: number`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SHOW_ERROR

Payload: `error: AuctionHouseError`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION

Payload: `notification: AuctionHouseNotification, text: string, auctionID: number?`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_SHOW_NOTIFICATION

Payload: `notification: AuctionHouseNotification`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_THROTTLED_MESSAGE_DROPPED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_THROTTLED_MESSAGE_QUEUED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_THROTTLED_MESSAGE_RESPONSE_RECEIVED

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_THROTTLED_MESSAGE_SENT

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_HOUSE_THROTTLED_SYSTEM_READY

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_MULTISELL_FAILURE

Payload: `none`  
Flags: SynchronousEvent  

### AUCTION_MULTISELL_START

Payload: `numRepetitions: number`  
Flags: SynchronousEvent  

### AUCTION_MULTISELL_UPDATE

Payload: `createdCount: number, totalToCreate: number`  
Flags: SynchronousEvent  

### BID_ADDED

Payload: `bidID: number`  
Flags: SynchronousEvent  

### BIDS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### COMMODITY_PRICE_UNAVAILABLE

Payload: `none`  
Flags: SynchronousEvent  

### COMMODITY_PRICE_UPDATED

Payload: `updatedUnitPrice: BigUInteger, updatedTotalPrice: BigUInteger`  
Flags: SynchronousEvent  

### COMMODITY_PURCHASE_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### COMMODITY_PURCHASE_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

### COMMODITY_PURCHASED

Payload: `itemID: number, quantity: number`  
Flags: SynchronousEvent  

### COMMODITY_SEARCH_RESULTS_ADDED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### COMMODITY_SEARCH_RESULTS_RECEIVED

Payload: `none`  
Flags: UniqueEvent  

### COMMODITY_SEARCH_RESULTS_UPDATED

Payload: `itemID: number`  
Flags: UniqueEvent  

### EXTRA_BROWSE_INFO_RECEIVED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### ITEM_KEY_ITEM_INFO_RECEIVED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### ITEM_PURCHASED

Payload: `itemID: number`  
Flags: SynchronousEvent  

### ITEM_SEARCH_RESULTS_ADDED

Payload: `itemKey: ItemKey`  
Flags: SynchronousEvent  

### ITEM_SEARCH_RESULTS_UPDATED

Payload: `itemKey: ItemKey, newAuctionID: number?`  
Flags: UniqueEvent  

### OWNED_AUCTION_BIDDER_INFO_RECEIVED

Payload: `auctionID: number, bidderName: cstring`  
Flags: SynchronousEvent  

### OWNED_AUCTIONS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### REPLICATE_ITEM_LIST_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### AuctionHouseFilterCategory (Enumeration)

| Name | Value |
|---|---|
| Uncategorized | 0 |
| Equipment | 1 |
| Rarity | 2 |

### AuctionStatus (Enumeration)

| Name | Value |
|---|---|
| Active | 0 |
| Sold | 1 |

### ItemCommodityStatus (Enumeration)

| Name | Value |
|---|---|
| Unknown | 0 |
| Item | 1 |
| Commodity | 2 |

### AuctionHouseBrowseQuery (Structure)

- `searchString: string`
- `sorts: table<AuctionHouseSortType>`
- `minLevel: number?`
- `maxLevel: number?`
- `filters: table<AuctionHouseFilter>?`
- `itemClassFilters: table<AuctionHouseItemClassFilter>?`

### AuctionHouseFilterGroup (Structure)

- `category: AuctionHouseFilterCategory`
- `filters: table<AuctionHouseFilter>`

### AuctionHouseItemClassFilter (Structure)

- `classID: number`
- `subClassID: number?`
- `inventoryType: InventoryType?`

### AuctionHouseSortType (Structure)

- `sortOrder: AuctionHouseSortOrder`
- `reverseSort: bool`

### AuctionInfo (Structure)

- `itemKey: ItemKey`
- `itemLink: string?`
- `minBid: WOWMONEY?`
- `bidAmount: WOWMONEY?`
- `buyoutAmount: WOWMONEY?`
- `bidder: WOWGUID?`

### BidInfo (Structure)

- `auctionID: number`
- `itemKey: ItemKey`
- `itemLink: string?`
- `timeLeft: AuctionHouseTimeLeftBand`
- `minBid: BigUInteger?`
- `bidAmount: BigUInteger?`
- `buyoutAmount: BigUInteger?`
- `bidder: WOWGUID?`

### BrowseResultInfo (Structure)

- `itemKey: ItemKey`
- `appearanceLink: string?`
- `totalQuantity: number`
- `minPrice: BigUInteger`
- `containsOwnerItem: bool`

### CommoditySearchResultInfo (Structure)

- `itemID: number`
- `quantity: number`
- `unitPrice: BigUInteger`
- `auctionID: number`
- `owners: table<string>`
- `totalNumberOfOwners: number`
- `timeLeftSeconds: number?`
- `numOwnerItems: number`
- `containsOwnerItem: bool`
- `containsAccountItem: bool`

### ItemKey (Structure)

- `itemID: number`
- `itemLevel: number = 0`
- `itemSuffix: number = 0`
- `battlePetSpeciesID: number = 0`

### ItemKeyInfo (Structure)

- `itemID: number`
- `battlePetSpeciesID: number`
- `itemName: string`
- `battlePetLink: string?`
- `appearanceLink: string?`
- `quality: ItemQuality`
- `iconFileID: number`
- `isPet: bool`
- `isCommodity: bool`
- `isEquipment: bool`

### ItemSearchResultInfo (Structure)

- `itemKey: ItemKey`
- `owners: table<string>`
- `totalNumberOfOwners: number`
- `timeLeft: AuctionHouseTimeLeftBand`
- `auctionID: number`
- `quantity: number`
- `itemLink: string?`
- `containsOwnerItem: bool`
- `containsAccountItem: bool`
- `containsSocketedItem: bool`
- `bidder: WOWGUID?`
- `minBid: BigUInteger?`
- `bidAmount: BigUInteger?`
- `buyoutAmount: BigUInteger?`
- `timeLeftSeconds: number?`

### OwnedAuctionInfo (Structure)

- `auctionID: number`
- `itemKey: ItemKey`
- `itemLink: string?`
- `status: AuctionStatus`
- `quantity: number`
- `timeLeftSeconds: number?`
- `timeLeft: AuctionHouseTimeLeftBand?`
- `bidAmount: BigUInteger?`
- `buyoutAmount: BigUInteger?`
- `bidder: string?`

### ReplicateItemInfo (Structure)

- `name: string?`
- `texture: fileID?`
- `count: number`
- `qualityID: number`
- `usable: bool?`
- `level: number`
- `levelType: string?`
- `minBid: BigUInteger`
- `minIncrement: BigUInteger`
- `buyoutPrice: BigUInteger`
- `bidAmount: BigUInteger`
- `highBidder: string?`
- `bidderFullName: string?`
- `owner: string?`
- `ownerFullName: string?`
- `saleStatus: number`
- `itemID: number`
- `hasAllInfo: bool?`
