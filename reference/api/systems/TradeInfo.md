# TradeInfo

Type: System  
Namespace: `C_TradeInfo`  
Environment: All

## Functions

### C_TradeInfo.AddTradeMoney

```lua
C_TradeInfo.AddTradeMoney()
```

Flags: HasRestrictions  

Adds any cursor-held money to the current trade offer.

### C_TradeInfo.PickupTradeMoney

```lua
C_TradeInfo.PickupTradeMoney(amount: WOWMONEY)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_TradeInfo.SetTradeMoney

```lua
C_TradeInfo.SetTradeMoney(amount: WOWMONEY)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Sets the amount of money in the current trade offer.

### C_TradeInfo.ShouldShowTradeOfferWarning

```lua
C_TradeInfo.ShouldShowTradeOfferWarning() -> shouldShow: bool
```

## Events

### PLAYER_TRADE_CURRENCY

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_TRADE_MONEY

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_ACCEPT_UPDATE

Payload: `playerAccepted: number, targetAccepted: number`  
Flags: SynchronousEvent  

### TRADE_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_CURRENCY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_MONEY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_PLAYER_ITEM_CHANGED

Payload: `tradeSlotIndex: number`  
Flags: SynchronousEvent  

### TRADE_POTENTIAL_BIND_ENCHANT

Payload: `canBecomeBoundForTrade: bool`  
Flags: SynchronousEvent  

### TRADE_POTENTIAL_REMOVE_TRANSMOG

Payload: `itemLink: cstring, tradeSlotIndex: number`  
Flags: SynchronousEvent  

### TRADE_REQUEST

Payload: `name: cstring`  
Flags: SynchronousEvent  

### TRADE_REQUEST_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_TARGET_ITEM_CHANGED

Payload: `tradeSlotIndex: number`  
Flags: SynchronousEvent  

### TRADE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TRADE_UPDATE_WARNINGS

Payload: `none`  
Flags: SynchronousEvent
