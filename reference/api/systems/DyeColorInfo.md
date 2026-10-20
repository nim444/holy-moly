# DyeColorInfo

Type: System  
Namespace: `C_DyeColor`  
Environment: All

## Functions

### C_DyeColor.GetAllDyeColorCategories

```lua
C_DyeColor.GetAllDyeColorCategories() -> dyeColorCategoryIDs: table<number>
```

### C_DyeColor.GetAllDyeColors

```lua
C_DyeColor.GetAllDyeColors(ownedColorsOnly: bool = false) -> dyeColorIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.GetDyeColorCategoryInfo

```lua
C_DyeColor.GetDyeColorCategoryInfo(dyeColorCategoryID: number) -> dyeColorCategoryInfo: DyeColorCategoryDisplayInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.GetDyeColorInfo

```lua
C_DyeColor.GetDyeColorInfo(dyeColorID: number) -> dyeColorInfo: DyeColorDisplayInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.GetDyeColorsForItem

```lua
C_DyeColor.GetDyeColorsForItem(itemLinkOrID: ItemInfo) -> dyeColorIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.GetDyeColorsForItemLocation

```lua
C_DyeColor.GetDyeColorsForItemLocation(itemLocation: ItemLocation) -> dyeColorIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.GetDyeColorsInCategory

```lua
C_DyeColor.GetDyeColorsInCategory(dyeColorCategory: number, ownedColorsOnly: bool = false) -> dyeColorIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DyeColor.IsDyeColorOwned

```lua
C_DyeColor.IsDyeColorOwned(dyeColorID: number) -> isOwned: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

True if the player owns any of the consumable item used to apply the specified dye

## Events

### DYE_COLOR_CATEGORY_UPDATED

Payload: `dyeColorCategoryID: number`  
Flags: SynchronousEvent  

### DYE_COLOR_UPDATED

Payload: `dyeColorID: number`  
Flags: SynchronousEvent
