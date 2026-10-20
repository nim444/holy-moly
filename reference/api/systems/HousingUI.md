# HousingUI

Type: System  
Namespace: `C_Housing`  
Environment: All

## Functions

### C_Housing.AcceptNeighborhoodOwnership

```lua
C_Housing.AcceptNeighborhoodOwnership()
```

### C_Housing.CanEditCharter

```lua
C_Housing.CanEditCharter() -> canEditCharter: bool
```

### C_Housing.CanTakeReportScreenshot

```lua
C_Housing.CanTakeReportScreenshot(plotIndex: number) -> reason: InvalidPlotScreenshotReason
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.CreateGuildNeighborhood

```lua
C_Housing.CreateGuildNeighborhood(neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.CreateNeighborhoodCharter

```lua
C_Housing.CreateNeighborhoodCharter(neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.DeclineNeighborhoodOwnership

```lua
C_Housing.DeclineNeighborhoodOwnership()
```

### C_Housing.DoesFactionMatchNeighborhood

```lua
C_Housing.DoesFactionMatchNeighborhood(neighborhoodGUID: WOWGUID) -> factionMatches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.EditNeighborhoodCharter

```lua
C_Housing.EditNeighborhoodCharter(neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetCurrentHouseInfo

```lua
C_Housing.GetCurrentHouseInfo() -> houseInfo: HouseInfo?
```

### C_Housing.GetCurrentHouseLevelFavor

```lua
C_Housing.GetCurrentHouseLevelFavor(houseGuid: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetCurrentHouseRefundAmount

```lua
C_Housing.GetCurrentHouseRefundAmount() -> refundAmount: number
```

### C_Housing.GetCurrentNeighborhoodGUID

```lua
C_Housing.GetCurrentNeighborhoodGUID() -> neighborhoodGUID: WOWGUID?
```

### C_Housing.GetHouseLevelFavorForLevel

```lua
C_Housing.GetHouseLevelFavorForLevel(level: number) -> houseFavor: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetHouseLevelRewardsForLevel

```lua
C_Housing.GetHouseLevelRewardsForLevel(level: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetHousingAccessFlags

```lua
C_Housing.GetHousingAccessFlags() -> accessFlags: HouseSettingFlags
```

### C_Housing.GetMaxHouseLevel

```lua
C_Housing.GetMaxHouseLevel() -> level: number
```

### C_Housing.GetNeighborhoodTextureSuffix

```lua
C_Housing.GetNeighborhoodTextureSuffix(neighborhoodGUID: WOWGUID) -> neighborhoodTextureSuffix: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetOthersOwnedHouses

```lua
C_Housing.GetOthersOwnedHouses(playerGUID: WOWGUID?, bnetID: number?, isInPlayersGuild: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetPlayerOwnedHouses

```lua
C_Housing.GetPlayerOwnedHouses()
```

### C_Housing.GetTrackedHouseGuid

```lua
C_Housing.GetTrackedHouseGuid() -> trackedHouse: WOWGUID?
```

### C_Housing.GetUIMapIDForNeighborhood

```lua
C_Housing.GetUIMapIDForNeighborhood(neighborhoodGuid: WOWGUID) -> uiMapID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.GetVisitCooldownInfo

```lua
C_Housing.GetVisitCooldownInfo() -> spellCooldownInfo: SpellCooldownInfo
```

Flags: MayReturnNothing  

### C_Housing.HasHousingExpansionAccess

```lua
C_Housing.HasHousingExpansionAccess() -> hasAccess: bool
```

### C_Housing.HouseFinderDeclineNeighborhoodInvitation

```lua
C_Housing.HouseFinderDeclineNeighborhoodInvitation()
```

### C_Housing.HouseFinderIgnoreNeighborhood

```lua
C_Housing.HouseFinderIgnoreNeighborhood(neighborhoodGuid: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.HouseFinderRequestNeighborhoods

```lua
C_Housing.HouseFinderRequestNeighborhoods()
```

### C_Housing.HouseFinderRequestReservationAndPort

```lua
C_Housing.HouseFinderRequestReservationAndPort(neighborhoodGuid: WOWGUID, plotID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.IsHousingMarketCartFullRemoveEnabled

```lua
C_Housing.IsHousingMarketCartFullRemoveEnabled() -> isHousingMarketCartFullRemoveEnabled: bool
```

### C_Housing.IsHousingMarketEnabled

```lua
C_Housing.IsHousingMarketEnabled() -> isHousingMarketEnabled: bool
```

### C_Housing.IsHousingMarketShopEnabled

```lua
C_Housing.IsHousingMarketShopEnabled() -> isHousingMarketShopEnabled: bool
```

### C_Housing.IsHousingServiceEnabled

```lua
C_Housing.IsHousingServiceEnabled() -> isAvailable: bool
```

### C_Housing.IsInsideHouse

```lua
C_Housing.IsInsideHouse() -> isInside: bool
```

### C_Housing.IsInsideHouseOrPlot

```lua
C_Housing.IsInsideHouseOrPlot() -> isInside: bool
```

### C_Housing.IsInsideOwnedHouse

```lua
C_Housing.IsInsideOwnedHouse() -> isInsideOwnedHouse: bool
```

### C_Housing.IsInsideOwnedHouseOrPlot

```lua
C_Housing.IsInsideOwnedHouseOrPlot() -> isInsideOwnedHouseOrPlot: bool
```

### C_Housing.IsInsideOwnedPlot

```lua
C_Housing.IsInsideOwnedPlot() -> isInside: bool
```

### C_Housing.IsInsidePlot

```lua
C_Housing.IsInsidePlot() -> isInside: bool
```

### C_Housing.IsOnNeighborhoodMap

```lua
C_Housing.IsOnNeighborhoodMap() -> isOnNeighborhoodMap: bool
```

### C_Housing.LeaveHouse

```lua
C_Housing.LeaveHouse()
```

### C_Housing.OnCharterConfirmationAccepted

```lua
C_Housing.OnCharterConfirmationAccepted()
```

### C_Housing.OnCharterConfirmationClosed

```lua
C_Housing.OnCharterConfirmationClosed()
```

### C_Housing.OnCreateCharterNeighborhoodClosed

```lua
C_Housing.OnCreateCharterNeighborhoodClosed()
```

### C_Housing.OnCreateGuildNeighborhoodClosed

```lua
C_Housing.OnCreateGuildNeighborhoodClosed()
```

### C_Housing.OnHouseFinderClickPlot

```lua
C_Housing.OnHouseFinderClickPlot(plotID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.OnRequestSignatureClicked

```lua
C_Housing.OnRequestSignatureClicked()
```

### C_Housing.OnSignCharterClicked

```lua
C_Housing.OnSignCharterClicked(charterOwnerGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.RelinquishHouse

```lua
C_Housing.RelinquishHouse(houseGuid: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.RequestCurrentHouseInfo

```lua
C_Housing.RequestCurrentHouseInfo()
```

### C_Housing.RequestHouseFinderNeighborhoodData

```lua
C_Housing.RequestHouseFinderNeighborhoodData(neighborhoodGuid: WOWGUID, neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.RequestPlayerCharacterList

```lua
C_Housing.RequestPlayerCharacterList()
```

### C_Housing.ResetHouse

```lua
C_Housing.ResetHouse(resetScope: HousingHouseScope)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Resets all contents of the house, based on the provided scope; API restricted to ensure this can't be triggered without the player getting ample notice and confirmation

### C_Housing.ReturnAfterVisitingHouse

```lua
C_Housing.ReturnAfterVisitingHouse()
```

Flags: HasRestrictions  

### C_Housing.SaveHouseSettings

```lua
C_Housing.SaveHouseSettings(playerGUID: WOWGUID, accessFlags: HouseSettingFlags)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.SearchBNetFriendNeighborhoods

```lua
C_Housing.SearchBNetFriendNeighborhoods(bnetName: cstring) -> isValidBnetFriend: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.SearchBNetFriendNeighborhoodsByID

```lua
C_Housing.SearchBNetFriendNeighborhoodsByID(bnetID: number) -> isValidBnetFriend: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.SetTrackedHouseGuid

```lua
C_Housing.SetTrackedHouseGuid(trackedHouse: WOWGUID?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.StartTutorial

```lua
C_Housing.StartTutorial()
```

### C_Housing.TeleportHome

```lua
C_Housing.TeleportHome(neighborhoodGUID: WOWGUID, houseGUID: WOWGUID, plotID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Housing.TryRenameNeighborhood

```lua
C_Housing.TryRenameNeighborhood(neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.ValidateCreateGuildNeighborhoodSize

```lua
C_Housing.ValidateCreateGuildNeighborhoodSize()
```

### C_Housing.ValidateNeighborhoodName

```lua
C_Housing.ValidateNeighborhoodName(neighborhoodName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Housing.VisitHouse

```lua
C_Housing.VisitHouse(neighborhoodGUID: WOWGUID, houseGUID: WOWGUID, plotID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### ADD_NEIGHBORHOOD_CHARTER_SIGNATURE

Payload: `signature: cstring`  
Flags: SynchronousEvent  

### B_NET_NEIGHBORHOOD_LIST_UPDATED

Payload: `result: HousingResult, neighborhoodInfos: table<NeighborhoodInfo>?`  
Flags: SynchronousEvent  

### CLOSE_CHARTER_CONFIRMATION_UI

Payload: `none`  
Flags: SynchronousEvent  

### CLOSE_CREATE_CHARTER_NEIGHBORHOOD_UI

Payload: `none`  
Flags: SynchronousEvent  

### CLOSE_CREATE_GUILD_NEIGHBORHOOD_UI

Payload: `none`  
Flags: SynchronousEvent  

### CREATE_NEIGHBORHOOD_RESULT

Payload: `result: HousingResult, neighborhoodName: cstring?`  
Flags: SynchronousEvent  

### CURRENT_HOUSE_INFO_RECIEVED

Payload: `houseInfo: HouseInfo`  
Flags: SynchronousEvent  

### CURRENT_HOUSE_INFO_UPDATED

Payload: `houseInfo: HouseInfo`  
Flags: SynchronousEvent  

### DECLINE_NEIGHBORHOOD_INVITATION_RESPONSE

Payload: `success: bool`  
Flags: SynchronousEvent  

### FORCE_REFRESH_HOUSE_FINDER

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_FINDER_NEIGHBORHOOD_DATA_RECIEVED

Payload: `neighborhoodPlots: table<NeighborhoodPlotMapInfo>`  
Flags: SynchronousEvent  

### HOUSE_INFO_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_LEVEL_CHANGED

Payload: `newHouseLevelInfo: HouseLevelInfo?`  
Flags: SynchronousEvent  

### HOUSE_LEVEL_FAVOR_UPDATED

Payload: `houseLevelFavor: HouseLevelFavor`  
Flags: SynchronousEvent  

### HOUSE_PLOT_ENTERED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_PLOT_EXITED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_RESERVATION_RESPONSE_RECIEVED

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSE_RESET_COMPLETED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_RESET_FAILED

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_MARKET_AVAILABILITY_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_SERVICES_AVAILABILITY_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### IGNORE_NEIGHBORHOOD_RESPONSE

Payload: `success: bool, neighborhoodGuid: WOWGUID`  
Flags: SynchronousEvent  

### MOVE_OUT_RESERVATION_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_GUILD_SIZE_VALIDATED

Payload: `approved: bool`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_LIST_UPDATED

Payload: `result: HousingResult, neighborhoodInfos: table<NeighborhoodInfo>?`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_NAME_VALIDATED

Payload: `approved: bool`  
Flags: SynchronousEvent  

### NEW_HOUSING_ITEM_ACQUIRED

Payload: `itemType: HousingItemToastType, itemName: cstring, icon: fileID?`  
Flags: SynchronousEvent  

### OPEN_CHARTER_CONFIRMATION_UI

Payload: `neighborhoodName: string, locationName: string`  
Flags: SynchronousEvent  

### OPEN_CREATE_CHARTER_NEIGHBORHOOD_UI

Payload: `locationName: cstring`  
Flags: SynchronousEvent  

### OPEN_CREATE_GUILD_NEIGHBORHOOD_UI

Payload: `locationName: cstring`  
Flags: SynchronousEvent  

### OPEN_NEIGHBORHOOD_CHARTER

Payload: `neighborhoodInfo: NeighborhoodInfo, signatures: table<string>, requiredSignatures: number`  
Flags: SynchronousEvent  

### OPEN_NEIGHBORHOOD_CHARTER_SIGNATURE_REQUEST

Payload: `neighborhoodInfo: NeighborhoodInfo`  
Flags: SynchronousEvent  

### PLAYER_CHARACTER_LIST_UPDATED

Payload: `characterInfos: table<HouseOwnerCharacterInfo>, ownerListIndex: number`  
Flags: SynchronousEvent  

### PLAYER_HOUSE_LIST_UPDATED

Payload: `houseInfos: table<HouseInfo>`  
Flags: SynchronousEvent  

### RECEIVED_HOUSE_LEVEL_REWARDS

Payload: `level: number, rewards: table<HouseLevelReward>`  
Flags: SynchronousEvent  

### REMOVE_NEIGHBORHOOD_CHARTER_SIGNATURE

Payload: `signature: cstring`  
Flags: SynchronousEvent  

### SHOW_NEIGHBORHOOD_OWNERSHIP_TRANSFER_DIALOG

Payload: `neighborhoodName: cstring, cosmeticOwnerName: cstring`  
Flags: SynchronousEvent  

### TRACKED_HOUSE_CHANGED

Payload: `trackedHouse: WOWGUID?`  
Flags: SynchronousEvent  

### VIEW_HOUSES_LIST_RECIEVED

Payload: `houseInfos: table<HouseInfo>`  
Flags: SynchronousEvent  

## Tables

### CreateNeighborhoodErrorType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Profanity | 1 |
| UndersizedGuild | 2 |
| OversizedGuild | 3 |

### HousingItemToastType (Enumeration)

| Name | Value |
|---|---|
| Room | 0 |
| Fixture | 1 |
| Customization | 2 |
| Decor | 3 |
| HouseType | 4 |
