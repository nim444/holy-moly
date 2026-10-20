# DyeColorInfoShared

Type: None

## Tables

### DyeColorCategoryDisplayInfo (Structure)

- `ID: number`
- `name: cstring`

### DyeColorDisplayInfo (Structure)

- `ID: number`
- `dyeColorCategoryID: number`
- `name: cstring`
- `sortOrder: number`
- `swatchColorStart: colorRGB`
- `swatchColorEnd: colorRGB`
- `itemID: number?` The consumable item used to apply this Dye Color; May be nil if dye color does not have an associated item
- `numOwned: number` The number of this dye's consumable item owned by the player; Includes both held and banked items; Will be 0 if dye has no associated item
