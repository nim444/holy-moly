# GameCursor

Type: System  
Environment: All

## Functions

### ClearCursor

```lua
ClearCursor()
```

### ClearCursorHoveredItem

```lua
ClearCursorHoveredItem()
```

### CursorHasItem

```lua
CursorHasItem() -> result: bool
```

### CursorHasMacro

```lua
CursorHasMacro() -> result: bool
```

### CursorHasMoney

```lua
CursorHasMoney() -> result: bool
```

### CursorHasSpell

```lua
CursorHasSpell() -> result: bool
```

### DeleteCursorItem

```lua
DeleteCursorItem()
```

Flags: HasRestrictions  

### DropCursorMoney

```lua
DropCursorMoney()
```

Flags: HasRestrictions  

### EquipCursorItem

```lua
EquipCursorItem(slot: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetCursorInfo

```lua
GetCursorInfo()
```

### GetCursorMoney

```lua
GetCursorMoney() -> amount: number
```

### PickupPlayerMoney

```lua
PickupPlayerMoney(amount: WOWMONEY)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### ResetCursor

```lua
ResetCursor()
```

### SellCursorItem

```lua
SellCursorItem()
```

### SetCursor

```lua
SetCursor(name: cstring?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetCursorByMode

```lua
SetCursorByMode(mode: Cursormode) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetCursorHoveredItem

```lua
SetCursorHoveredItem(item: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetCursorHoveredItemTradeItem

```lua
SetCursorHoveredItemTradeItem(enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetCursorVirtualItem

```lua
SetCursorVirtualItem(itemInfo: ItemInfo, cursorType: UICursorType)
```

Secret: SecretArguments=AllowedWhenUntainted
