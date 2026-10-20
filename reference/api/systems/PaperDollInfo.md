# PaperDollInfo

Type: System  
Namespace: `C_PaperDollInfo`  
Environment: All

## Functions

### C_PaperDollInfo.AmmoNeeded

```lua
C_PaperDollInfo.AmmoNeeded() -> ammoNeeded: bool
```

### C_PaperDollInfo.CanAutoEquipCursorItem

```lua
C_PaperDollInfo.CanAutoEquipCursorItem() -> canAutoEquip: bool
```

### C_PaperDollInfo.CancelTemporaryEnchantment

```lua
C_PaperDollInfo.CancelTemporaryEnchantment(slot: LuaInventorySlot)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Cancels active temporary enchantments on inventory slot items.

### C_PaperDollInfo.CursorCanGoInSlot

```lua
C_PaperDollInfo.CursorCanGoInSlot(slotIndex: luaIndex) -> canOccupySlot: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetArmorEffectiveness

```lua
C_PaperDollInfo.GetArmorEffectiveness(armor: number, attackerLevel: number) -> effectiveness: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetArmorEffectivenessAgainstTarget

```lua
C_PaperDollInfo.GetArmorEffectivenessAgainstTarget(armor: number) -> effectiveness: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetInspectAzeriteItemEmpoweredChoices

```lua
C_PaperDollInfo.GetInspectAzeriteItemEmpoweredChoices(unit: UnitToken, equipmentSlotIndex: luaIndex) -> azeritePowerIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PaperDollInfo.GetInspectGuildInfo

```lua
C_PaperDollInfo.GetInspectGuildInfo(unitString: string) -> achievementPoints: number, numMembers: number, guildName: string, realmName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetInspectItemLevel

```lua
C_PaperDollInfo.GetInspectItemLevel(unit: UnitToken) -> equippedItemLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetInspectRatedBGBlitzData

```lua
C_PaperDollInfo.GetInspectRatedBGBlitzData() -> ratedBGBlitzData: InspectPVPData
```

### C_PaperDollInfo.GetInspectRatedBGData

```lua
C_PaperDollInfo.GetInspectRatedBGData() -> ratedBGData: InspectRatedBGData
```

### C_PaperDollInfo.GetInspectRatedSoloShuffleData

```lua
C_PaperDollInfo.GetInspectRatedSoloShuffleData() -> ratedSoloShuffleData: InspectPVPData
```

### C_PaperDollInfo.GetInventorySlotInfo

```lua
C_PaperDollInfo.GetInventorySlotInfo(slotName: cstring) -> invSlot: number, slotTexture: fileID, checkRelic: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PaperDollInfo.GetInventorySlotInfoForInvSlot

```lua
C_PaperDollInfo.GetInventorySlotInfoForInvSlot(invSlotValue: number) -> invSlot: number, slotTexture: fileID, checkRelic: bool, slotName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_PaperDollInfo.GetMinItemLevel

```lua
C_PaperDollInfo.GetMinItemLevel() -> minItemLevel: number?
```

### C_PaperDollInfo.GetStaggerPercentage

```lua
C_PaperDollInfo.GetStaggerPercentage(unit: UnitToken) -> stagger: number, staggerAgainstTarget: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.GetTemporaryEnchantmentInfo

```lua
C_PaperDollInfo.GetTemporaryEnchantmentInfo(slot: LuaInventorySlot) -> enchantInfo: TemporaryItemEnchantInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Queries information about active temporary enchants on inventory slot items.

### C_PaperDollInfo.IsInventorySlotEnabled

```lua
C_PaperDollInfo.IsInventorySlotEnabled(slotName: stringView) -> isEnabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PaperDollInfo.IsRangedSlotShown

```lua
C_PaperDollInfo.IsRangedSlotShown() -> isShown: bool
```

### C_PaperDollInfo.OffhandHasShield

```lua
C_PaperDollInfo.OffhandHasShield() -> offhandHasShield: bool
```

### C_PaperDollInfo.OffhandHasWeapon

```lua
C_PaperDollInfo.OffhandHasWeapon() -> offhandHasWeapon: bool
```

## Events

### AVOIDANCE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### CHARACTER_POINTS_CHANGED

Payload: `change: number`  
Flags: SynchronousEvent  

### CHARACTER_UPGRADE_SPELL_TIER_SET

Payload: `tierIndex: number`  
Flags: SynchronousEvent  

### COMBAT_RATING_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### DISABLE_XP_GAIN

Payload: `none`  
Flags: SynchronousEvent  

### ENABLE_XP_GAIN

Payload: `none`  
Flags: SynchronousEvent  

### EQUIP_BIND_CONFIRM

Payload: `slot: number, itemLocation: ItemLocation`  
Flags: SynchronousEvent  

### INSPECT_HONOR_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### INSPECT_READY

Payload: `inspecteeGUID: WOWGUID`  
Flags: SynchronousEvent  

### LIFESTEAL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### MASTERY_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PET_STATS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_AVG_ITEM_LEVEL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_EQUIPMENT_CHANGED

Payload: `equipmentSlot: number, hasCurrent: bool`  
Flags: SynchronousEvent  

### PROFESSION_EQUIPMENT_CHANGED

Payload: `skillLineID: number, isTool: bool`  
Flags: SynchronousEvent  

### PVP_POWER_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SPEED_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SPELL_POWER_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### STURDINESS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_FACTION

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_INVENTORY_ALERTS

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_INVENTORY_DURABILITY

Payload: `none`  
Flags: SynchronousEvent  

### WEAPON_SLOT_CHANGED

Payload: `none`  
Flags: UniqueEvent  

## Tables

### InspectGuildInfo (Structure)

- `achievementPoints: number`
- `numMembers: number`
- `guildName: string`
- `realmName: string`

### InspectPVPData (Structure)

- `rating: number`
- `gamesWon: number`
- `gamesPlayed: number`
- `roundsWon: number`
- `roundsPlayed: number`

### InspectRatedBGData (Structure)

- `rating: number`
- `played: number`
- `won: number`

### TemporaryItemEnchantInfo (Structure)

- `enchantID: number`
- `remainingTimeMs: number`
- `chargesRemaining: number`
- `hasExpirationTime: bool`
