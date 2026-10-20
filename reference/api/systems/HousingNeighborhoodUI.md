# HousingNeighborhoodUI

Type: System  
Namespace: `C_HousingNeighborhood`  
Environment: All

## Functions

### C_HousingNeighborhood.CanReturnAfterVisitingHouse

```lua
C_HousingNeighborhood.CanReturnAfterVisitingHouse() -> canReturn: bool
```

### C_HousingNeighborhood.CancelInviteToNeighborhood

```lua
C_HousingNeighborhood.CancelInviteToNeighborhood(playerName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.DemoteToResident

```lua
C_HousingNeighborhood.DemoteToResident(playerGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.GetCornerstoneHouseInfo

```lua
C_HousingNeighborhood.GetCornerstoneHouseInfo() -> houseInfo: HouseInfo
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.GetCornerstoneNeighborhoodInfo

```lua
C_HousingNeighborhood.GetCornerstoneNeighborhoodInfo() -> neighborhoodInfo: NeighborhoodInfo
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.GetCornerstonePurchaseMode

```lua
C_HousingNeighborhood.GetCornerstonePurchaseMode() -> purchaseMode: CornerstonePurchaseMode
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.GetCurrentNeighborhoodTextureSuffix

```lua
C_HousingNeighborhood.GetCurrentNeighborhoodTextureSuffix() -> neighborhoodTextureSuffix: cstring
```

### C_HousingNeighborhood.GetDiscountedMovePrice

```lua
C_HousingNeighborhood.GetDiscountedMovePrice() -> movePrice: number
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.GetMoveCooldownTime

```lua
C_HousingNeighborhood.GetMoveCooldownTime() -> movecooldownTime: number
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.GetNeighborhoodMapData

```lua
C_HousingNeighborhood.GetNeighborhoodMapData() -> neighborhoodPlots: table<NeighborhoodPlotMapInfo>
```

### C_HousingNeighborhood.GetNeighborhoodName

```lua
C_HousingNeighborhood.GetNeighborhoodName() -> neighborhoodName: string
```

### C_HousingNeighborhood.GetNeighborhoodPlotName

```lua
C_HousingNeighborhood.GetNeighborhoodPlotName(plotIndex: number) -> neighborhoodName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingNeighborhood.GetPreviousHouseIdentifier

```lua
C_HousingNeighborhood.GetPreviousHouseIdentifier() -> previousHouseIdentifier: string
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.HasPermissionToPurchase

```lua
C_HousingNeighborhood.HasPermissionToPurchase() -> cantPurchaseReason: PurchaseHouseDisabledReason
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.InvitePlayerToNeighborhood

```lua
C_HousingNeighborhood.InvitePlayerToNeighborhood(playerName: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.IsNeighborhoodManager

```lua
C_HousingNeighborhood.IsNeighborhoodManager() -> isManager: bool
```

### C_HousingNeighborhood.IsNeighborhoodOwner

```lua
C_HousingNeighborhood.IsNeighborhoodOwner() -> isOwner: bool
```

### C_HousingNeighborhood.IsPlayerInOtherPlayersPlot

```lua
C_HousingNeighborhood.IsPlayerInOtherPlayersPlot() -> isInUnownedPlot: bool
```

This returns true if the player is in a plot that is owned by another player

### C_HousingNeighborhood.IsPlotAvailableForPurchase

```lua
C_HousingNeighborhood.IsPlotAvailableForPurchase() -> isAvailable: bool
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.IsPlotOwnedByPlayer

```lua
C_HousingNeighborhood.IsPlotOwnedByPlayer() -> isPlayerOwned: bool
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.OnBulletinBoardClosed

```lua
C_HousingNeighborhood.OnBulletinBoardClosed()
```

### C_HousingNeighborhood.OnCornerstoneClosed

```lua
C_HousingNeighborhood.OnCornerstoneClosed()
```

### C_HousingNeighborhood.PromoteToManager

```lua
C_HousingNeighborhood.PromoteToManager(playerGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.RequestNeighborhoodInfo

```lua
C_HousingNeighborhood.RequestNeighborhoodInfo()
```

### C_HousingNeighborhood.RequestNeighborhoodRoster

```lua
C_HousingNeighborhood.RequestNeighborhoodRoster()
```

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.RequestPendingNeighborhoodInvites

```lua
C_HousingNeighborhood.RequestPendingNeighborhoodInvites()
```

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.TransferNeighborhoodOwnership

```lua
C_HousingNeighborhood.TransferNeighborhoodOwnership(playerGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.TryEvictPlayer

```lua
C_HousingNeighborhood.TryEvictPlayer(plotID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Only available when interacting with a bulletin board game object

### C_HousingNeighborhood.TryMoveHouse

```lua
C_HousingNeighborhood.TryMoveHouse()
```

Only available when interacting with a cornerstone game object

### C_HousingNeighborhood.TryPurchasePlot

```lua
C_HousingNeighborhood.TryPurchasePlot()
```

Only available when interacting with a cornerstone game object

## Events

### CANCEL_NEIGHBORHOOD_INVITE_RESPONSE

Payload: `result: NeighborhoodInviteResult, playerName: cstring?`  
Flags: SynchronousEvent  

### CLOSE_PLOT_CORNERSTONE

Payload: `none`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_INFO_UPDATED

Payload: `neighborhoodInfo: NeighborhoodInfo`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_INVITE_RESPONSE

Payload: `result: NeighborhoodInviteResult`  
Flags: SynchronousEvent  

### NEIGHBORHOOD_MAP_DATA_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### NEIGHBORHOOD_NAME_UPDATED

Payload: `neighborhoodGuid: WOWGUID, neighborhoodName: cstring`  
Flags: UniqueEvent  

### OPEN_PLOT_CORNERSTONE

Payload: `none`  
Flags: SynchronousEvent  

### PENDING_NEIGHBORHOOD_INVITES_RECIEVED

Payload: `result: NeighborhoodInviteResult, pendingInviteList: table<string>?`  
Flags: SynchronousEvent  

### PURCHASE_PLOT_RESULT

Payload: `result: number`  
Flags: SynchronousEvent  

### SHOW_PLAYER_EVICTED_DIALOG

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_BULLETIN_BOARD_MEMBER_TYPE

Payload: `player: WOWGUID, residentType: ResidentType`  
Flags: SynchronousEvent  

### UPDATE_BULLETIN_BOARD_ROSTER

Payload: `neighborhoodInfo: NeighborhoodInfo, rosterMemberList: table<NeighborhoodRosterMemberInfo>`  
Flags: SynchronousEvent  

### UPDATE_BULLETIN_BOARD_ROSTER_STATUSES

Payload: `rosterMemberList: table<NeighborhoodRosterMemberUpdateInfo>`  
Flags: SynchronousEvent  

## Tables

### CornerstonePurchaseMode (Enumeration)

| Name | Value |
|---|---|
| Basic | 0 |
| Import | 1 |
| Move | 2 |
