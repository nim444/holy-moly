# WorldLootObject

Type: System  
Namespace: `C_WorldLootObject`  
Environment: All

## Functions

### C_WorldLootObject.DoesSlotMatchInventoryType

```lua
C_WorldLootObject.DoesSlotMatchInventoryType(slot: number, inventoryType: InventoryType) -> matches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WorldLootObject.GetWorldLootObjectDistanceSquared

```lua
C_WorldLootObject.GetWorldLootObjectDistanceSquared(unitToken: UnitToken) -> distanceSquared: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WorldLootObject.GetWorldLootObjectInfo

```lua
C_WorldLootObject.GetWorldLootObjectInfo(unitToken: UnitToken) -> info: WorldLootObjectInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WorldLootObject.GetWorldLootObjectInfoByGUID

```lua
C_WorldLootObject.GetWorldLootObjectInfoByGUID(objectGUID: WOWGUID) -> info: WorldLootObjectInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_WorldLootObject.IsWorldLootObject

```lua
C_WorldLootObject.IsWorldLootObject(unitToken: UnitToken) -> isWorldLootObject: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WorldLootObject.IsWorldLootObjectByGUID

```lua
C_WorldLootObject.IsWorldLootObjectByGUID(guid: WOWGUID) -> isWorldLootObject: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WorldLootObject.IsWorldLootObjectInRange

```lua
C_WorldLootObject.IsWorldLootObjectInRange(unitToken: UnitToken) -> isWorldLootObjectInRange: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_WorldLootObject.OnWorldLootObjectClick

```lua
C_WorldLootObject.OnWorldLootObjectClick(unitToken: UnitToken, isLeftClick: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### WORLD_LOOT_OBJECT_INFO_UPDATED

Payload: `guid: WOWGUID`  
Flags: SynchronousEvent  

## Tables

### WorldLootObjectInfo (Structure)

- `inventoryType: InventoryType`
- `atMaxQuality: bool`
- `isUpgrade: bool`
