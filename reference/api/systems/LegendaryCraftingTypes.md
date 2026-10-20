# LegendaryCraftingTypes

Type: None

## Tables

### RuneforgePowerFilter (Enumeration)

| Name | Value |
|---|---|
| All | 0 |
| Relevant | 1 |
| Available | 2 |
| Unavailable | 3 |

### RuneforgePowerState (Enumeration)

| Name | Value |
|---|---|
| Available | 0 |
| Unavailable | 1 |
| Invalid | 2 |

### CurrencyCost (Structure)

- `currencyID: number`
- `amount: number`

### RuneforgeItemPreviewInfo (Structure)

- `itemGUID: WOWGUID`
- `itemLevel: number`
- `itemName: string`

### RuneforgeLegendaryComponentInfo (Structure)

- `powerID: number`
- `modifiers: table<number>`

### RuneforgeLegendaryCraftDescription (Structure)

- `baseItem: ItemLocation`
- `runeforgePowerID: number`
- `modifiers: table<number>`

### RuneforgePower (Structure)

- `runeforgePowerID: number`
- `state: RuneforgePowerState`
- `name: cstring`
- `descriptionSpellID: number`
- `description: string`
- `source: cstring?`
- `iconFileID: fileID`
- `specName: cstring?`
- `matchesSpec: bool`
- `matchesCovenant: bool`
- `covenantID: number?`
- `slots: table<cstring>`
