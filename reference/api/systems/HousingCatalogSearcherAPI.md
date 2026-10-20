# HousingCatalogSearcherAPI

Type: ScriptObject  
Environment: All

## Functions

### HousingCatalogSearcherAPI:GetAllSearchItems

```lua
HousingCatalogSearcherAPI:GetAllSearchItems() -> matchingEntryVariantIDs: table<HousingCatalogEntryVariantID>
```

Returns all catalog entries being searched (note these are NOT search results, this is the source collection of what's being searched)

### HousingCatalogSearcherAPI:GetCatalogSearchResults

```lua
HousingCatalogSearcherAPI:GetCatalogSearchResults() -> matchingEntryVariantIDs: table<HousingCatalogEntryVariantID>
```

Returns the most recent search result entries

### HousingCatalogSearcherAPI:GetEditorModeContext

```lua
HousingCatalogSearcherAPI:GetEditorModeContext() -> editorModeContext: HouseEditorMode?
```

### HousingCatalogSearcherAPI:GetFilterTagStatus

```lua
HousingCatalogSearcherAPI:GetFilterTagStatus(groupID: number, tagID: number) -> active: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### HousingCatalogSearcherAPI:GetFilteredCategoryID

```lua
HousingCatalogSearcherAPI:GetFilteredCategoryID() -> categoryID: number?
```

### HousingCatalogSearcherAPI:GetFilteredSubcategoryID

```lua
HousingCatalogSearcherAPI:GetFilteredSubcategoryID() -> subcategoryID: number?
```

### HousingCatalogSearcherAPI:GetNumSearchItems

```lua
HousingCatalogSearcherAPI:GetNumSearchItems() -> numSearchItems: number
```

Returns the total number of entries being searched through

### HousingCatalogSearcherAPI:GetSearchCount

```lua
HousingCatalogSearcherAPI:GetSearchCount() -> searchCount: number
```

Returns the total number of owned instances across all most recent search result entries

### HousingCatalogSearcherAPI:GetSearchText

```lua
HousingCatalogSearcherAPI:GetSearchText() -> searchText: string?
```

### HousingCatalogSearcherAPI:GetSortType

```lua
HousingCatalogSearcherAPI:GetSortType() -> sortType: HousingCatalogSortType
```

### HousingCatalogSearcherAPI:IsAllowedIndoorsActive

```lua
HousingCatalogSearcherAPI:IsAllowedIndoorsActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsAllowedOutdoorsActive

```lua
HousingCatalogSearcherAPI:IsAllowedOutdoorsActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsBaseVariantOnlyActive

```lua
HousingCatalogSearcherAPI:IsBaseVariantOnlyActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsCollectedActive

```lua
HousingCatalogSearcherAPI:IsCollectedActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsCustomizableOnlyActive

```lua
HousingCatalogSearcherAPI:IsCustomizableOnlyActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsFirstAcquisitionBonusOnlyActive

```lua
HousingCatalogSearcherAPI:IsFirstAcquisitionBonusOnlyActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsSearchInProgress

```lua
HousingCatalogSearcherAPI:IsSearchInProgress() -> isSearchInProgress: bool
```

### HousingCatalogSearcherAPI:IsStoredOnlyActive

```lua
HousingCatalogSearcherAPI:IsStoredOnlyActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:IsUncollectedActive

```lua
HousingCatalogSearcherAPI:IsUncollectedActive() -> isActive: bool
```

### HousingCatalogSearcherAPI:RunSearch

```lua
HousingCatalogSearcherAPI:RunSearch()
```

Run search with all current param values

### HousingCatalogSearcherAPI:SetAllInFilterTagGroup

```lua
HousingCatalogSearcherAPI:SetAllInFilterTagGroup(groupID: number, active: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Set the toggle state of all filter tags within a specific group; If active, only entries that match Any of the tags in the group will be included in search results

### HousingCatalogSearcherAPI:SetAllowedIndoors

```lua
HousingCatalogSearcherAPI:SetAllowedIndoors(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, entries that can be placed in house interiors will be included in the search; Note many decor objects can be placed both indoors and outdoors, so having only this toggled on may still include decor that can also be placed outdoors

### HousingCatalogSearcherAPI:SetAllowedOutdoors

```lua
HousingCatalogSearcherAPI:SetAllowedOutdoors(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, entries that can be placed outside in plots will be included in the search; Note many decor objects can be placed both indoors and outdoors, so having only this toggled on may still include decor that can also be placed indoors

### HousingCatalogSearcherAPI:SetAutoUpdateOnParamChanges

```lua
HousingCatalogSearcherAPI:SetAutoUpdateOnParamChanges(autoUpdateActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

If true, searcher automatically updates results whenever search param values are changed

### HousingCatalogSearcherAPI:SetBaseVariantOnly

```lua
HousingCatalogSearcherAPI:SetBaseVariantOnly(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, only the base variant of each decor entry will be included

### HousingCatalogSearcherAPI:SetCollected

```lua
HousingCatalogSearcherAPI:SetCollected(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, includes all owned entries, including those that are in storage OR placed in an owned house or plot; See IsStoredOnlyActive for a more exclusive toggle

### HousingCatalogSearcherAPI:SetCustomizableOnly

```lua
HousingCatalogSearcherAPI:SetCustomizableOnly(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, catalog entries that cannot be customized (ie dyed) will be excluded from the search

### HousingCatalogSearcherAPI:SetEditorModeContext

```lua
HousingCatalogSearcherAPI:SetEditorModeContext(editorModeContext: HouseEditorMode?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If set, limits search results to only entries that are used/valid in the specified editor mode

### HousingCatalogSearcherAPI:SetFilterTagStatus

```lua
HousingCatalogSearcherAPI:SetFilterTagStatus(groupID: number, tagID: number, active: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Set the toggle state of a single filter tag within a specific group

### HousingCatalogSearcherAPI:SetFilteredCategoryID

```lua
HousingCatalogSearcherAPI:SetFilteredCategoryID(categoryID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If set, limits search results to only those within the specified category

### HousingCatalogSearcherAPI:SetFilteredSubcategoryID

```lua
HousingCatalogSearcherAPI:SetFilteredSubcategoryID(subcategoryID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If set, limits search results to only those within the specified subcategory

### HousingCatalogSearcherAPI:SetFirstAcquisitionBonusOnly

```lua
HousingCatalogSearcherAPI:SetFirstAcquisitionBonusOnly(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, excludes any entries that do not reward house xp when acquired for the first time

### HousingCatalogSearcherAPI:SetResultsUpdatedCallback

```lua
HousingCatalogSearcherAPI:SetResultsUpdatedCallback(callback: HousingCatalogSearchResultsUpdatedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

### HousingCatalogSearcherAPI:SetSearchText

```lua
HousingCatalogSearcherAPI:SetSearchText(searchText: string?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If set, multiple text fields are checked for instances of the text, including name, category, subcategory, and data tags

### HousingCatalogSearcherAPI:SetSortType

```lua
HousingCatalogSearcherAPI:SetSortType(sortType: HousingCatalogSortType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### HousingCatalogSearcherAPI:SetStoredOnly

```lua
HousingCatalogSearcherAPI:SetStoredOnly(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, only entries that you have instances of available in storage will be included; This does not include entries that you own but have all been placed in a house; See IsCollectedActive for param that includes placed entries

### HousingCatalogSearcherAPI:SetUncollected

```lua
HousingCatalogSearcherAPI:SetUncollected(isActive: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Search parameter; If true, includes entries that are not owned, meaning not available in storage nor placed in any owned houses or plots

### HousingCatalogSearcherAPI:ToggleAllowedIndoors

```lua
HousingCatalogSearcherAPI:ToggleAllowedIndoors()
```

### HousingCatalogSearcherAPI:ToggleAllowedOutdoors

```lua
HousingCatalogSearcherAPI:ToggleAllowedOutdoors()
```

### HousingCatalogSearcherAPI:ToggleBaseVariantOnly

```lua
HousingCatalogSearcherAPI:ToggleBaseVariantOnly()
```

### HousingCatalogSearcherAPI:ToggleCollected

```lua
HousingCatalogSearcherAPI:ToggleCollected()
```

### HousingCatalogSearcherAPI:ToggleCustomizableOnly

```lua
HousingCatalogSearcherAPI:ToggleCustomizableOnly()
```

### HousingCatalogSearcherAPI:ToggleFilterTag

```lua
HousingCatalogSearcherAPI:ToggleFilterTag(groupID: number, tagID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### HousingCatalogSearcherAPI:ToggleFirstAcquisitionBonusOnly

```lua
HousingCatalogSearcherAPI:ToggleFirstAcquisitionBonusOnly()
```

### HousingCatalogSearcherAPI:ToggleStoredOnly

```lua
HousingCatalogSearcherAPI:ToggleStoredOnly()
```

### HousingCatalogSearcherAPI:ToggleUncollected

```lua
HousingCatalogSearcherAPI:ToggleUncollected()
```

## Tables

### HousingCatalogSearchResultsUpdatedCallback (CallbackType)
