# MailInfo

Type: System  
Namespace: `C_Mail`  
Environment: All

## Functions

### C_Mail.CanCheckInbox

```lua
C_Mail.CanCheckInbox() -> canCheckInbox: bool, secondsUntilAllowed: number
```

### C_Mail.GetCraftingOrderMailInfo

```lua
C_Mail.GetCraftingOrderMailInfo(inboxIndex: luaIndex) -> info: CraftingOrderMailInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Mail.HasInboxMoney

```lua
C_Mail.HasInboxMoney(inboxIndex: luaIndex) -> inboxItemHasMoneyAttached: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Mail.IsCommandPending

```lua
C_Mail.IsCommandPending() -> isCommandPending: bool
```

### C_Mail.SetOpeningAll

```lua
C_Mail.SetOpeningAll(openingAll: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CLOSE_INBOX_ITEM

Payload: `mailIndex: luaIndex`  
Flags: SynchronousEvent  

### MAIL_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### MAIL_FAILED

Payload: `itemID: number?`  
Flags: SynchronousEvent  

### MAIL_INBOX_UPDATE

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### MAIL_LOCK_SEND_ITEMS

Payload: `attachSlot: luaIndex, itemLink: cstring`  
Flags: SynchronousEvent  

### MAIL_OPEN_ALL_CANCELED

Payload: `none`  
Flags: SynchronousEvent  

### MAIL_SEND_INFO_UPDATE

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### MAIL_SEND_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### MAIL_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### MAIL_SUCCESS

Payload: `itemID: number?`  
Flags: SynchronousEvent  

### MAIL_UNLOCK_SEND_ITEMS

Payload: `none`  
Flags: SynchronousEvent  

### SEND_MAIL_COD_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### SEND_MAIL_MONEY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_PENDING_MAIL

Payload: `none`  
Flags: SynchronousEvent
