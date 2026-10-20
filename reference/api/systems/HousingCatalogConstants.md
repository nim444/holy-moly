# HousingCatalogConstants

Type: None

## Tables

### HousingCatalogEntryModelScenePresets (Enumeration)

| Name | Value |
|---|---|
| DecorDefault | 1317 |
| DecorTiny | 1333 |
| DecorSmall | 1334 |
| DecorMedium | 1335 |
| DecorLarge | 1336 |
| DecorHuge | 1337 |
| DecorCeiling | 1338 |
| DecorWall | 1339 |
| DecorFlat | 1318 |
| DecorHorizontalSurface | 1452 |

### HousingCatalogEntrySize (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Tiny | 65 |
| Small | 66 |
| Medium | 67 |
| Large | 68 |
| Huge | 69 |

### HousingCatalogEntryType (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Decor | 1 |
| Room | 2 |

### HousingCatalogSortType (Enumeration)

| Name | Value |
|---|---|
| DateAdded | 0 |
| Alphabetical | 1 |

### HousingCatalogConsts (Constants)

| Name | Type | Value |
|---|---|---|
| HOUSING_CATALOG_FEATURED_CATEGORY_ID | number | 17 |
| HOUSING_CATALOG_ALL_CATEGORY_ID | number | 18 |
| HOUSING_CATALOG_DECOR_MODELSCENEID_DEFAULT | number | 1317 |

### HousingCatalogEntryID (Structure)

Identifier for base entries in the catalog

- `recordID: number`
- `entryType: HousingCatalogEntryType`

### HousingCatalogEntryVariantID (Structure)

Compound Identifier for entry variant stacks in the catalog

- `recordID: number`
- `entryType: HousingCatalogEntryType`
- `variantIdentifier: number` Hashed value used to identify and differentiate stacks that are the same type and record, but have some variant-specific difference (e.g. dye colors)

### HousingCatalogFilterTagGroupInfo (Structure)

- `groupID: number`
- `groupName: cstring`
- `tags: table<HousingCatalogFilterTagInfo>`

### HousingCatalogFilterTagInfo (Structure)

- `tagID: number`
- `tagName: string`
- `orderIndex: number`
- `anyAssociatedEntries: bool`
