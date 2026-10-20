# CharacterCustomizationShared

Type: None

## Tables

### CharCustomizationType (Enumeration)

| Name | Value |
|---|---|
| Skin | 0 |
| Face | 1 |
| Hair | 2 |
| HairColor | 3 |
| FacialHair | 4 |
| CustomOptionTattoo | 5 |
| CustomOptionHorn | 6 |
| CustomOptionFacewear | 7 |
| CustomOptionTattooColor | 8 |

### ChrCustomizationCategoryFlag (Enumeration)

| Name | Value |
|---|---|
| UndressModel | 1 |
| Subcategory | 2 |

### ChrCustomizationOptionType (Enumeration)

| Name | Value |
|---|---|
| Dropdown | 0 |
| Checkbox | 1 |
| Slider | 2 |

### ChrModelFeatureFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Summons | 1 |
| Forms | 2 |
| Identity | 4 |
| Deprecated0 | 8 |
| Mounts | 16 |
| HunterPets | 32 |
| Players | 64 |

### NewCharGear (Enumeration)

| Name | Value |
|---|---|
| Start | 0 |
| Preview | 1 |

### CharCustomizationCategory (Structure)

- `id: number`
- `orderIndex: number`
- `name: cstring`
- `icon: textureAtlas`
- `selectedIcon: textureAtlas`
- `undressModel: bool`
- `subcategory: bool`
- `cameraZoomLevel: number`
- `cameraDistanceOffset: number`
- `spellShapeshiftFormID: number?`
- `chrModelID: number?`
- `options: table<CharCustomizationOption>`
- `hasNewChoices: bool`
- `needsNativeFormCategory: bool`

### CharCustomizationChoice (Structure)

- `id: number`
- `name: cstring`
- `ineligibleChoice: bool`
- `isNew: bool`
- `swatchColor1: colorRGB?`
- `swatchColor2: colorRGB?`
- `soundKit: number?`
- `isLocked: bool`
- `lockedText: string?`

### CharCustomizationConstants (Constants)

| Name | Type | Value |
|---|---|---|
| CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_FIRST | CharCustomizationType | CustomOptionTattoo |
| CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_LAST | CharCustomizationType | CustomOptionTattooColor |
| NUM_CUSTOM_DISPLAY | number | Constants.CharCustomizationConstants.CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_LAST - Constants.CharCustomizationConstants.CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_FIRST + 1 |
| NAME_RESERVATION_DAYS | number | 30 |

### CharCustomizationOption (Structure)

- `id: number`
- `name: cstring`
- `orderIndex: number`
- `optionType: ChrCustomizationOptionType`
- `choices: table<CharCustomizationChoice>`
- `currentChoiceIndex: luaIndex?`
- `hasNewChoices: bool`
- `isSound: bool`
