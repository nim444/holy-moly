# ScrappingMachineUI

Type: System  
Namespace: `C_ScrappingMachineUI`  
Environment: All

## Functions

### C_ScrappingMachineUI.CloseScrappingMachine

```lua
C_ScrappingMachineUI.CloseScrappingMachine()
```

### C_ScrappingMachineUI.DropPendingScrapItemFromCursor

```lua
C_ScrappingMachineUI.DropPendingScrapItemFromCursor(index: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ScrappingMachineUI.GetCurrentPendingScrapItemLocationByIndex

```lua
C_ScrappingMachineUI.GetCurrentPendingScrapItemLocationByIndex(index: number) -> itemLoc: ItemLocation
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScrappingMachineUI.GetScrapSpellID

```lua
C_ScrappingMachineUI.GetScrapSpellID() -> spellID: number
```

### C_ScrappingMachineUI.GetScrappingMachineName

```lua
C_ScrappingMachineUI.GetScrappingMachineName() -> name: string
```

Flags: MayReturnNothing  

### C_ScrappingMachineUI.HasScrappableItems

```lua
C_ScrappingMachineUI.HasScrappableItems() -> hasScrappableItems: bool
```

### C_ScrappingMachineUI.RemoveAllScrapItems

```lua
C_ScrappingMachineUI.RemoveAllScrapItems()
```

### C_ScrappingMachineUI.RemoveCurrentScrappingItem

```lua
C_ScrappingMachineUI.RemoveCurrentScrappingItem()
```

### C_ScrappingMachineUI.RemoveItemToScrap

```lua
C_ScrappingMachineUI.RemoveItemToScrap(index: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ScrappingMachineUI.ScrapItems

```lua
C_ScrappingMachineUI.ScrapItems()
```

### C_ScrappingMachineUI.ValidateScrappingList

```lua
C_ScrappingMachineUI.ValidateScrappingList()
```

## Events

### SCRAPPING_MACHINE_ITEM_ADDED

Payload: `index: number`  
Flags: SynchronousEvent  

### SCRAPPING_MACHINE_ITEM_REMOVED

Payload: `index: number`  
Flags: SynchronousEvent  

### SCRAPPING_MACHINE_PENDING_ITEM_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### SCRAPPING_MACHINE_SCRAPPING_FINISHED

Payload: `none`  
Flags: SynchronousEvent
