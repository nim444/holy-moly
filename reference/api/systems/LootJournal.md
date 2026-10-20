# LootJournal

Type: System  
Namespace: `C_LootJournal`  
Environment: All

## Functions

### C_LootJournal.GetItemSetItems

```lua
C_LootJournal.GetItemSetItems(setID: number) -> items: table<LootJournalItemInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LootJournal.GetItemSets

```lua
C_LootJournal.GetItemSets(classID: number?, specID: number?) -> itemSets: table<LootJournalItemSetInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### LOOT_JOURNAL_ITEM_UPDATE

Payload: `none`  
Flags: UniqueEvent  

## Tables

### LootJournalItemInfo (Structure)

- `itemID: number`
- `icon: fileID`
- `invType: luaIndex`

### LootJournalItemSetInfo (Structure)

- `setID: number`
- `itemLevel: number`
- `name: cstring`
