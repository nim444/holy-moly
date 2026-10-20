# Transmogrify

Type: System  
Namespace: `C_Transmog`  
Environment: All

## Functions

### C_Transmog.CanHaveSecondaryAppearanceForSlotID

```lua
C_Transmog.CanHaveSecondaryAppearanceForSlotID(slotID: luaIndex) -> canHaveSecondaryAppearance: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Transmog.ExtractTransmogIDList

```lua
C_Transmog.ExtractTransmogIDList(input: cstring) -> transmogIDList: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Transmog.GetAllSetAppearancesByID

```lua
C_Transmog.GetAllSetAppearancesByID(setID: number) -> setItems: table<TransmogSetItemInfo>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Transmog.GetItemIDForSource

```lua
C_Transmog.GetItemIDForSource(itemModifiedAppearanceID: number) -> itemID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Transmog.GetSlotForInventoryType

```lua
C_Transmog.GetSlotForInventoryType(inventoryType: luaIndex) -> slot: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Transmog.GetSlotVisualInfo

```lua
C_Transmog.GetSlotVisualInfo(transmogLocation: TransmogLocation) -> slotVisualInfo: TransmogSlotVisualInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Transmog.IsAtTransmogNPC

```lua
C_Transmog.IsAtTransmogNPC() -> isAtNPC: bool
```

## Events

### TRANSMOG_COLLECTION_CAMERA_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOG_COLLECTION_ITEM_FAVORITE_UPDATE

Payload: `itemAppearanceID: number, isFavorite: bool`  
Flags: SynchronousEvent  

### TRANSMOG_COLLECTION_ITEM_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### TRANSMOG_COLLECTION_SOURCE_ADDED

Payload: `itemModifiedAppearanceID: number`  
Flags: SynchronousEvent  

### TRANSMOG_COLLECTION_SOURCE_REMOVED

Payload: `itemModifiedAppearanceID: number`  
Flags: SynchronousEvent  

### TRANSMOG_COLLECTION_UPDATED

Payload: `collectionIndex: luaIndex?, modID: number?, itemAppearanceID: number?, reason: cstring?`  
Flags: SynchronousEvent, UniqueEvent  

### TRANSMOG_COSMETIC_COLLECTION_SOURCE_ADDED

Payload: `itemModifiedAppearanceID: number`  
Flags: SynchronousEvent  

### TRANSMOG_SEARCH_UPDATED

Payload: `searchType: TransmogSearchType, collectionType: TransmogCollectionType?`  
Flags: SynchronousEvent  

### TRANSMOG_SETS_UPDATE_FAVORITE

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOG_SOURCE_COLLECTABILITY_UPDATE

Payload: `itemModifiedAppearanceID: number, collectable: bool`  
Flags: SynchronousEvent  

### TRANSMOGRIFY_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOGRIFY_ITEM_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### TRANSMOGRIFY_OPEN

Payload: `none`  
Flags: SynchronousEvent  

### TRANSMOGRIFY_SUCCESS

Payload: `transmogLocation: TransmogLocation`  
Flags: SynchronousEvent  

### TRANSMOGRIFY_UPDATE

Payload: `transmogLocation: TransmogLocation?, action: cstring?`  
Flags: SynchronousEvent  

## Tables

### TransmogPendingType (Enumeration)

| Name | Value |
|---|---|
| Apply | 0 |
| Revert | 1 |
| ToggleOn | 2 |
| ToggleOff | 3 |

### TransmogApplyWarningInfo (Structure)

- `itemLink: string`
- `text: string`

### TransmogSetItemInfo (Structure)

- `itemID: number`
- `itemModifiedAppearanceID: number`
- `invSlot: number`
- `invType: string`

### TransmogSlotInfo (Structure)

- `isTransmogrified: bool`
- `hasPending: bool`
- `isPendingCollected: bool`
- `canTransmogrify: bool`
- `cannotTransmogrifyReason: number`
- `hasUndo: bool`
- `isHideVisual: bool`
- `texture: fileID?`

### TransmogSlotVisualInfo (Structure)

- `baseSourceID: number`
- `baseVisualID: number`
- `appliedSourceID: number`
- `appliedVisualID: number`
- `pendingSourceID: number`
- `pendingVisualID: number`
- `hasUndo: bool`
- `isHideVisual: bool`
- `itemSubclass: number`
