# Bank

Type: System  
Namespace: `C_Bank`  
Environment: All

## Functions

### C_Bank.AreAnyBankTypesViewable

```lua
C_Bank.AreAnyBankTypesViewable() -> areAnyBankTypesViewable: bool
```

### C_Bank.AutoDepositItemsIntoBank

```lua
C_Bank.AutoDepositItemsIntoBank(bankType: BankType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.BankBagTypeAndIDToInvSlot

```lua
C_Bank.BankBagTypeAndIDToInvSlot(bankType: BankType, slotIndex: luaIndex) -> slot: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CanDepositMoney

```lua
C_Bank.CanDepositMoney(bankType: BankType) -> canDepositMoney: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CanPurchaseBankTab

```lua
C_Bank.CanPurchaseBankTab(bankType: BankType) -> canPurchaseBankTab: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CanUseBank

```lua
C_Bank.CanUseBank(bankType: BankType) -> canUseBank: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CanViewBank

```lua
C_Bank.CanViewBank(bankType: BankType) -> canViewBank: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CanWithdrawMoney

```lua
C_Bank.CanWithdrawMoney(bankType: BankType) -> canWithdrawMoney: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.CloseBankFrame

```lua
C_Bank.CloseBankFrame()
```

### C_Bank.DepositMoney

```lua
C_Bank.DepositMoney(bankType: BankType, amount: WOWMONEY)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.DoesBankTypeSupportAutoDeposit

```lua
C_Bank.DoesBankTypeSupportAutoDeposit(bankType: BankType) -> doesBankTypeSupportAutoDeposit: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.DoesBankTypeSupportMoneyTransfer

```lua
C_Bank.DoesBankTypeSupportMoneyTransfer(bankType: BankType) -> doesBankTypeSupportMoneyTransfer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchBankLockedReason

```lua
C_Bank.FetchBankLockedReason(bankType: BankType) -> reason: BankLockedReason?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchDepositedMoney

```lua
C_Bank.FetchDepositedMoney(bankType: BankType) -> amount: WOWMONEY
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchMaxNumBankTabs

```lua
C_Bank.FetchMaxNumBankTabs(bankType: BankType) -> numPurchasedBankTabs: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchNextPurchasableBankTabData

```lua
C_Bank.FetchNextPurchasableBankTabData(bankType: BankType) -> nextPurchasableTabData: PurchasableBankTabData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchNumPurchasedBankTabs

```lua
C_Bank.FetchNumPurchasedBankTabs(bankType: BankType) -> numPurchasedBankTabs: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchPurchasedBankTabData

```lua
C_Bank.FetchPurchasedBankTabData(bankType: BankType) -> purchasedBankTabData: table<BankTabData>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchPurchasedBankTabIDs

```lua
C_Bank.FetchPurchasedBankTabIDs(bankType: BankType) -> purchasedBankTabIDs: table<BagIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.FetchViewableBankTypes

```lua
C_Bank.FetchViewableBankTypes() -> viewableBankTypes: table<BankType>
```

### C_Bank.HasMaxBankTabs

```lua
C_Bank.HasMaxBankTabs(bankType: BankType) -> hasMaxBankTabs: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.IsItemAllowedInBankType

```lua
C_Bank.IsItemAllowedInBankType(bankType: BankType, itemLocation: ItemLocation) -> isItemAllowedInBankType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.PurchaseBankTab

```lua
C_Bank.PurchaseBankTab(bankType: BankType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Bank.ShouldUsePlayerBagsInBank

```lua
C_Bank.ShouldUsePlayerBagsInBank() -> shouldUsePlayerBagsInBank: bool
```

### C_Bank.UpdateBankTabSettings

```lua
C_Bank.UpdateBankTabSettings(bankType: BankType, tabID: BagIndex, tabName: cstring, tabIcon: cstring, depositFlags: BagSlotFlags)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Bank.WithdrawMoney

```lua
C_Bank.WithdrawMoney(bankType: BankType, amount: WOWMONEY)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### BANK_BAG_SLOT_FLAGS_UPDATED

Payload: `slot: number`  
Flags: SynchronousEvent  

### BANK_TAB_SETTINGS_UPDATED

Payload: `bankType: BankType`  
Flags: SynchronousEvent  

### BANK_TABS_CHANGED

Payload: `bankType: BankType`  
Flags: SynchronousEvent  

### BANKFRAME_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### BANKFRAME_OPENED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_ACCOUNT_BANK_TAB_SLOTS_CHANGED

Payload: `slot: number`  
Flags: SynchronousEvent  

### PLAYERBANKSLOTS_CHANGED

Payload: `slot: number`  
Flags: SynchronousEvent  

## Tables

### BankLockedReason (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| NoAccountInventoryLock | 1 |
| BankDisabled | 2 |
| BankConversionFailed | 3 |

### BankTabData (Structure)

- `ID: number`
- `bankType: BankType`
- `name: cstring`
- `icon: fileID`
- `depositFlags: BagSlotFlags`
- `tabCleanupConfirmation: cstring`
- `tabNameEditBoxHeader: cstring`

### PurchasableBankTabData (Structure)

- `tabCost: BigUInteger`
- `canAfford: bool`
- `purchasePromptTitle: cstring`
- `purchasePromptBody: cstring`
- `purchasePromptConfirmation: cstring`
