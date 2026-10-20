# WowTokenUI

Type: System  
Namespace: `C_WowTokenUI`  
Environment: All

## Functions

### C_WowTokenUI.ShouldDisplayInAuctionHouse

```lua
C_WowTokenUI.ShouldDisplayInAuctionHouse() -> displayInAH: bool
```

### C_WowTokenUI.StartTokenSell

```lua
C_WowTokenUI.StartTokenSell(tokenGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### TOKEN_AUCTION_SOLD

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_BUY_CONFIRM_REQUIRED

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_BUY_RESULT

Payload: `result: number`  
Flags: SynchronousEvent  

### TOKEN_CAN_VETERAN_BUY_UPDATE

Payload: `result: number`  
Flags: SynchronousEvent  

### TOKEN_DISTRIBUTIONS_UPDATED

Payload: `result: number`  
Flags: SynchronousEvent  

### TOKEN_MARKET_PRICE_UPDATED

Payload: `result: number`  
Flags: SynchronousEvent  

### TOKEN_REDEEM_BALANCE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_REDEEM_CONFIRM_REQUIRED

Payload: `choiceType: luaIndex`  
Flags: SynchronousEvent  

### TOKEN_REDEEM_FRAME_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_REDEEM_GAME_TIME_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_REDEEM_RESULT

Payload: `result: luaIndex, choiceType: luaIndex`  
Flags: SynchronousEvent  

### TOKEN_SELL_CONFIRM_REQUIRED

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_SELL_CONFIRMED

Payload: `none`  
Flags: SynchronousEvent  

### TOKEN_SELL_RESULT

Payload: `result: number`  
Flags: SynchronousEvent  

### TOKEN_STATUS_CHANGED

Payload: `none`  
Flags: SynchronousEvent
