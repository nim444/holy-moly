# SecureTransfer

Type: System  
Namespace: `C_SecureTransfer`  
Environment: All

## Functions

### C_SecureTransfer.AcceptTrade

```lua
C_SecureTransfer.AcceptTrade()
```

Flags: HasRestrictions  

### C_SecureTransfer.Cancel

```lua
C_SecureTransfer.Cancel()
```

Flags: HasRestrictions  

### C_SecureTransfer.CompleteHousingPurchase

```lua
C_SecureTransfer.CompleteHousingPurchase()
```

Flags: HasRestrictions  

### C_SecureTransfer.CompleteHousingVCPurchase

```lua
C_SecureTransfer.CompleteHousingVCPurchase()
```

Flags: HasRestrictions  

### C_SecureTransfer.GetHousingPurchaseCost

```lua
C_SecureTransfer.GetHousingPurchaseCost() -> totalCost: number
```

Flags: HasRestrictions  

### C_SecureTransfer.GetHousingPurchaseQuantity

```lua
C_SecureTransfer.GetHousingPurchaseQuantity() -> quantity: number
```

Flags: HasRestrictions  

### C_SecureTransfer.GetHousingVCPurchaseProductID

```lua
C_SecureTransfer.GetHousingVCPurchaseProductID() -> productID: number
```

Flags: HasRestrictions  

### C_SecureTransfer.GetMailReceiveInfo

```lua
C_SecureTransfer.GetMailReceiveInfo() -> mailInfo: MailReceiveInfo
```

Flags: HasRestrictions  

### C_SecureTransfer.GetMailSendInfo

```lua
C_SecureTransfer.GetMailSendInfo() -> mailInfo: MailSendInfo
```

Flags: HasRestrictions  

### C_SecureTransfer.GetTradePartner

```lua
C_SecureTransfer.GetTradePartner() -> name: string?
```

Flags: HasRestrictions  

### C_SecureTransfer.SendMail

```lua
C_SecureTransfer.SendMail()
```

Flags: HasRestrictions  

### C_SecureTransfer.ShouldShowTradeOfferWarning

```lua
C_SecureTransfer.ShouldShowTradeOfferWarning() -> shouldShow: bool
```

Flags: HasRestrictions  

### C_SecureTransfer.ShouldShowTradeRMTWarning

```lua
C_SecureTransfer.ShouldShowTradeRMTWarning() -> shouldShow: bool
```

Flags: HasRestrictions  

### C_SecureTransfer.TakeMailMoney

```lua
C_SecureTransfer.TakeMailMoney()
```

Flags: HasRestrictions  

## Events

### SECURE_TRANSFER_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### SECURE_TRANSFER_CONFIRM_HOUSING_PURCHASE

Payload: `none`  
Flags: SynchronousEvent  

### SECURE_TRANSFER_CONFIRM_SEND_MAIL

Payload: `none`  
Flags: SynchronousEvent  

### SECURE_TRANSFER_CONFIRM_TAKE_MAIL_MONEY

Payload: `none`  
Flags: SynchronousEvent  

### SECURE_TRANSFER_CONFIRM_TRADE_ACCEPT

Payload: `none`  
Flags: SynchronousEvent  

### SECURE_TRANSFER_HOUSING_CURRENCY_PURCHASE_CONFIRMATION

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### MailReceiveInfo (Structure)

- `sender: string`
- `money: number`

### MailSendInfo (Structure)

- `target: string`
- `sendMoney: number`
