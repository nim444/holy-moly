# HousingDecorShared

Type: None

## Tables

### HousingDecorPlacementRestriction (Enumeration)

| Name | Value |
|---|---|
| TooFarAway | 1 |
| OutsideRoomBounds | 2 |
| OutsidePlotBounds | 4 |
| ChildOutsideBounds | 8 |
| InvalidTarget | 16 |
| InvalidCollision | 32 |
| InvalidLightOverlap | 64 |

### HousingDecorDyeSlot (Structure)

- `ID: number`
- `dyeColorCategoryID: number` What category of dye colors this slot is for; This currently has no functional useage as slots accept colors of any category, but may be used for things like labeling in the future
- `orderIndex: number` Display sort order
- `channel: number` The specific shader channel that this slot affects when a dye color is applied
- `dyeColorID: number?` What dye color (if any) is currently applied to this slot
- `dyeColorName: cstring?` The name of the dye color (if any) that is currently applied to this slot

### HousingDecorInstanceInfo (Structure)

Info for an instance of Housing Decor that has been/is being placed within a House or its exterior Plot

- `decorGUID: WOWGUID`
- `decorID: number`
- `name: cstring`
- `isLocked: bool` True if this decor is already being edited by someone else
- `canBeCustomized: bool` True if this decor can be customized, namely by applying Dyes
- `canBeRemoved: bool` False if this decor must remain placed in the house and cannot be placed back into house chest storage
- `isAllowedOutdoors: bool`
- `isAllowedIndoors: bool`
- `isRefundable: bool`
- `canAttachPet: bool`
- `dyeSlots: table<HousingDecorDyeSlot>` Empty for decor that can't be dyed (see canBeCustomized)
- `dataTagsByID: LuaValueVariant` Simple localized 'tag' strings that are primarily used for things like categorization and filtering
- `size: HousingCatalogEntrySize`
