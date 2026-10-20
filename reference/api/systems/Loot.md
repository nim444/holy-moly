# Loot

Type: System  
Namespace: `C_Loot`  
Environment: All

## Functions

### C_Loot.GetLootRollDuration

```lua
C_Loot.GetLootRollDuration(rollID: number) -> duration: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Loot.IsLegacyLootModeEnabled

```lua
C_Loot.IsLegacyLootModeEnabled() -> isLegacyLootModeEnabled: bool
```

## Events

### AZERITE_EMPOWERED_ITEM_LOOTED

Payload: `itemLink: cstring`  
Flags: SynchronousEvent  

### BONUS_ROLL_ACTIVATE

Payload: `none`  
Flags: SynchronousEvent  

### BONUS_ROLL_DEACTIVATE

Payload: `none`  
Flags: SynchronousEvent  

### BONUS_ROLL_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### BONUS_ROLL_RESULT

Payload: `typeIdentifier: cstring, itemLink: cstring, quantity: number, specID: number, sex: number, personalLootToast: bool, currencyID: number?, isSecondaryResult: bool, corrupted: bool`  
Flags: SynchronousEvent  

### BONUS_ROLL_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### CANCEL_ALL_LOOT_ROLLS

Payload: `none`  
Flags: SynchronousEvent  

### CANCEL_LOOT_ROLL

Payload: `rollID: number`  
Flags: SynchronousEvent  

### CONFIRM_DISENCHANT_ROLL

Payload: `rollID: number, rollType: number`  
Flags: SynchronousEvent  

### CONFIRM_LOOT_ROLL

Payload: `rollID: number, rollType: number, confirmReason: cstring`  
Flags: SynchronousEvent  

### ENCOUNTER_LOOT_RECEIVED

Payload: `encounterID: number, itemID: number, itemLink: cstring, quantity: number, itemName: cstring, fileName: cstring`  
Flags: SynchronousEvent  

### GARRISON_MISSION_BONUS_ROLL_LOOT

Payload: `itemID: number, quantity: number`  
Flags: SynchronousEvent  

### ITEM_PUSH

Payload: `bagSlot: luaIndex, iconFileID: number`  
Flags: SynchronousEvent  

### LEGACY_LOOT_RULES_CHANGED

Payload: `isLegacyLootModeEnabled: bool`  
Flags: SynchronousEvent  

### LOOT_BIND_CONFIRM

Payload: `lootSlot: luaIndex`  
Flags: SynchronousEvent  

### LOOT_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### LOOT_ITEM_AVAILABLE

Payload: `itemTooltip: cstring, lootHandle: number`  
Flags: SynchronousEvent  

### LOOT_ITEM_ROLL_WON

Payload: `itemLink: cstring, rollQuantity: number, rollType: number, roll: number, upgraded: bool`  
Flags: SynchronousEvent  

### LOOT_OPENED

Payload: `autoLoot: bool, isFromItem: bool`  
Flags: SynchronousEvent  

### LOOT_READY

Payload: `autoloot: bool`  
Flags: SynchronousEvent  

### LOOT_ROLLS_COMPLETE

Payload: `lootHandle: number`  
Flags: SynchronousEvent  

### LOOT_SLOT_CHANGED

Payload: `lootSlot: luaIndex`  
Flags: SynchronousEvent  

### LOOT_SLOT_CLEARED

Payload: `lootSlot: luaIndex`  
Flags: SynchronousEvent  

### MAIN_SPEC_NEED_ROLL

Payload: `rollID: number, roll: number, isWinning: bool`  
Flags: SynchronousEvent  

### OPEN_MASTER_LOOT_LIST

Payload: `none`  
Flags: SynchronousEvent  

### PET_BATTLE_LOOT_RECEIVED

Payload: `typeIdentifier: cstring, itemLink: cstring, quantity: number`  
Flags: SynchronousEvent  

### PLAYER_LOOT_SPEC_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_CURRENCY_LOOT_RECEIVED

Payload: `questID: number, currencyId: number, quantity: number`  
Flags: SynchronousEvent  

### QUEST_LOOT_RECEIVED

Payload: `questID: number, itemLink: cstring, quantity: number`  
Flags: SynchronousEvent  

### SHOW_LOOT_TOAST

Payload: `typeIdentifier: cstring, itemLink: cstring, quantity: number, specID: number, sex: number, personalLootToast: bool, toastMethod: number, lessAwesome: bool, upgraded: bool, corrupted: bool`  
Flags: SynchronousEvent  

### SHOW_LOOT_TOAST_LEGENDARY_LOOTED

Payload: `itemLink: cstring`  
Flags: SynchronousEvent  

### SHOW_LOOT_TOAST_UPGRADE

Payload: `itemLink: cstring, quantity: number, specID: number, sex: number, baseQuality: number, personalLootToast: bool, lessAwesome: bool`  
Flags: SynchronousEvent  

### SHOW_PVP_FACTION_LOOT_TOAST

Payload: `typeIdentifier: cstring, itemLink: cstring, quantity: number, specID: number, sex: number, personalLootToast: bool, lessAwesome: bool`  
Flags: SynchronousEvent  

### SHOW_RATED_PVP_REWARD_TOAST

Payload: `typeIdentifier: cstring, itemLink: cstring, quantity: number, specID: number, sex: number, personalLootToast: bool, lessAwesome: bool`  
Flags: SynchronousEvent  

### START_LOOT_ROLL

Payload: `rollID: number, rollTime: number, lootHandle: number?`  
Flags: SynchronousEvent  

### TRIAL_CAP_REACHED_MONEY

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_MASTER_LOOT_LIST

Payload: `none`  
Flags: SynchronousEvent
