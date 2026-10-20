# HouseExteriorConstants

Type: None

## Tables

### HouseExteriorSizeOption (Structure)

- `size: HousingFixtureSize`
- `name: cstring`
- `isLocked: bool`

### HouseExteriorSizeOptionsInfo (Structure)

- `selectedSize: HousingFixtureSize`
- `options: table<HouseExteriorSizeOption>`

### HouseExteriorTypeOption (Structure)

- `houseExteriorTypeID: number`
- `name: cstring`
- `isLocked: bool`
- `isInvalid: bool`
- `reasonString: cstring`

### HouseExteriorTypeOptionsInfo (Structure)

- `selectedExteriorType: number`
- `options: table<HouseExteriorTypeOption>`

### HousingCoreFixtureInfo (Structure)

- `selectedVariantFixtureID: number` For fixtures that are variants, the id of specific selected variant; If fixture has no variants, will be the same id as selectedStyleFixtureID
- `selectedStyleFixtureID: number` For fixtures that are variants, the id of their specific base style fixture; If fixture has no variants, will be the same id as selectedVariantFixtureID
- `currentStyleVariantOptions: table<HousingFixtureOption>` Fixtures that are variants of the same style as the selected (meaning they all share the same hooks); Includes the currently selected fixture
- `styleOptions: table<HousingFixtureOption>` Fixtures that are different styles for this type and size of fixture (swapping will clear all hooks); Includes the currently selected fixture

### HousingFixtureOption (Structure)

- `fixtureID: number`
- `name: cstring`
- `typeID: number`
- `typeName: cstring`
- `isLocked: bool`
- `isInvalid: bool`
- `reasonString: cstring`
- `colorID: number`

### HousingFixturePointInfo (Structure)

- `ownerHash: number`
- `selectedFixtureID: number?`
- `fixtureOptions: table<HousingFixtureOption>`
- `canSelectionBeRemoved: bool`
