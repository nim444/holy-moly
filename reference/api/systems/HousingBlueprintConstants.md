# HousingBlueprintConstants

Type: None

## Tables

### HousingBlueprintContentType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| HouseType | 1 |
| Room | 2 |
| Decor | 3 |
| Dye | 4 |
| Fixture | 5 |
| Other | 6 |

### HousingBlueprintUnmetRequirementFlags (Enumeration)

| Name | Value |
|---|---|
| InsufficientBudget | 1 |
| MissingRoom | 2 |
| MissingFixture | 4 |
| MissingDecor | 8 |
| MissingDye | 16 |
| MismatchedExteriorFaction | 32 |
| HouseTypeLocked | 64 |
| HouseSizeLocked | 128 |

### HousingBlueprintBudgetEntry (Structure)

- `budgetType: HousingBudgetType`
- `cost: number`
- `max: number?` Will be nil if there is no target house or information for it is unavailable
- `current: number?` Will be nil if there is no target house or information for it is unavailable

### HousingBlueprintBudgetInfo (Structure)

- `exteriorBudgets: table<HousingBlueprintBudgetEntry>` Map of budget type to budget entry
- `interiorBudgets: table<HousingBlueprintBudgetEntry>` Map of budget type to budget entry

### HousingBlueprintCollection (Structure)

List of Blueprints, separated into like groups

- `groups: table<HousingBlueprintGroup>`

### HousingBlueprintContentEntry (Structure)

A single specific object that makes up a Blueprint's contents

- `contentType: HousingBlueprintContentType`
- `recordID: number`
- `name: string`
- `total: number = 0` Total instances of the object contained within or required by the Blueprint
- `numMissing: number = 0` The number of instances of this item that the player doesn't own, or have unlocked, or have available for use (depending on the type of content)
- `invalid: bool = false` True for content that isn't valid for use whether it's owned or not, for example exterior types of the opposite faction than the house's neighborhood
- `tooltip: string?`

### HousingBlueprintContentGroup (Structure)

Group of entries of one specific type of object within a Blueprint

- `contentType: HousingBlueprintContentType`
- `entries: table<HousingBlueprintContentEntry>`

### HousingBlueprintContentInfo (Structure)

- `shareCode: string`
- `targetHouseGUID: WOWGUID?`
- `budgetInfo: HousingBlueprintBudgetInfo`
- `contentGroups: table<HousingBlueprintContentGroup>`
- `unmetRequirementFlags: HousingBlueprintUnmetRequirementFlags`
- `blockingRequirementFlags: HousingBlueprintUnmetRequirementFlags`

### HousingBlueprintGroup (Structure)

Group of Blueprints of the same or similar types

- `name: cstring`
- `entries: table<HousingBlueprintInfo>`

### HousingBlueprintInfo (Structure)

List of entries of one specific type of object within a Blueprint

- `blueprintID: BigUInteger`
- `shareCode: string`
- `name: string`
- `blueprintType: HousingBlueprintType`
- `creationTime: time_t`
- `isAutoSave: bool` True if this blueprint is an automatically saved backup, rather than a manually player-saved blueprint
