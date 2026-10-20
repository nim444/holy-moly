# LegendaryCrafting

Type: System  
Namespace: `C_LegendaryCrafting`  
Environment: All

## Functions

### C_LegendaryCrafting.CloseRuneforgeInteraction

```lua
C_LegendaryCrafting.CloseRuneforgeInteraction()
```

### C_LegendaryCrafting.CraftRuneforgeLegendary

```lua
C_LegendaryCrafting.CraftRuneforgeLegendary(description: RuneforgeLegendaryCraftDescription)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeItemPreviewInfo

```lua
C_LegendaryCrafting.GetRuneforgeItemPreviewInfo(baseItem: ItemLocation, runeforgePowerID: number?, modifiers: table<number>?) -> info: RuneforgeItemPreviewInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeLegendaryComponentInfo

```lua
C_LegendaryCrafting.GetRuneforgeLegendaryComponentInfo(runeforgeLegendary: ItemLocation) -> componentInfo: RuneforgeLegendaryComponentInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeLegendaryCost

```lua
C_LegendaryCrafting.GetRuneforgeLegendaryCost(baseItem: ItemLocation) -> cost: table<CurrencyCost>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeLegendaryCraftSpellID

```lua
C_LegendaryCrafting.GetRuneforgeLegendaryCraftSpellID() -> spellID: number
```

### C_LegendaryCrafting.GetRuneforgeLegendaryCurrencies

```lua
C_LegendaryCrafting.GetRuneforgeLegendaryCurrencies() -> currencies: table<number>
```

### C_LegendaryCrafting.GetRuneforgeLegendaryUpgradeCost

```lua
C_LegendaryCrafting.GetRuneforgeLegendaryUpgradeCost(runeforgeLegendary: ItemLocation, upgradeItem: ItemLocation) -> cost: table<CurrencyCost>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeModifierInfo

```lua
C_LegendaryCrafting.GetRuneforgeModifierInfo(baseItem: ItemLocation, powerID: number?, addedModifierIndex: luaIndex, modifiers: table<number>) -> name: string, description: table<string>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgeModifiers

```lua
C_LegendaryCrafting.GetRuneforgeModifiers() -> modifiedReagentItemIDs: table<number>
```

### C_LegendaryCrafting.GetRuneforgePowerInfo

```lua
C_LegendaryCrafting.GetRuneforgePowerInfo(runeforgePowerID: number) -> power: RuneforgePower
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgePowerSlots

```lua
C_LegendaryCrafting.GetRuneforgePowerSlots(runeforgePowerID: number) -> slotNames: table<cstring>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgePowers

```lua
C_LegendaryCrafting.GetRuneforgePowers(baseItem: ItemLocation?, filter: RuneforgePowerFilter?) -> primaryRuneforgePowerIDs: table<number>, otherRuneforgePowerIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.GetRuneforgePowersByClassSpecAndCovenant

```lua
C_LegendaryCrafting.GetRuneforgePowersByClassSpecAndCovenant(classID: number?, specID: number?, covenantID: number?, filter: RuneforgePowerFilter?) -> runeforgePowerIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.IsRuneforgeLegendary

```lua
C_LegendaryCrafting.IsRuneforgeLegendary(item: ItemLocation) -> isRuneforgeLegendary: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.IsRuneforgeLegendaryMaxLevel

```lua
C_LegendaryCrafting.IsRuneforgeLegendaryMaxLevel(runeforgeLegendary: ItemLocation) -> isMaxLevel: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.IsUpgradeItemValidForRuneforgeLegendary

```lua
C_LegendaryCrafting.IsUpgradeItemValidForRuneforgeLegendary(runeforgeLegendary: ItemLocation, upgradeItem: ItemLocation) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.IsValidRuneforgeBaseItem

```lua
C_LegendaryCrafting.IsValidRuneforgeBaseItem(baseItem: ItemLocation) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.MakeRuneforgeCraftDescription

```lua
C_LegendaryCrafting.MakeRuneforgeCraftDescription(baseItem: ItemLocation, runeforgePowerID: number, modifiers: table<number>) -> description: RuneforgeLegendaryCraftDescription
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LegendaryCrafting.UpgradeRuneforgeLegendary

```lua
C_LegendaryCrafting.UpgradeRuneforgeLegendary(runeforgeLegendary: ItemLocation, upgradeItem: ItemLocation)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### NEW_RUNEFORGE_POWER_ADDED

Payload: `powerID: number`  
Flags: SynchronousEvent  

### RUNEFORGE_LEGENDARY_CRAFTING_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### RUNEFORGE_LEGENDARY_CRAFTING_OPENED

Payload: `isUpgrade: bool`  
Flags: SynchronousEvent  

### RUNEFORGE_POWER_INFO_UPDATED

Payload: `powerID: number`  
Flags: SynchronousEvent
