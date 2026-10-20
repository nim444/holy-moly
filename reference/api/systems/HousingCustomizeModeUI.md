# HousingCustomizeModeUI

Type: System  
Namespace: `C_HousingCustomizeMode`  
Environment: All

## Functions

### C_HousingCustomizeMode.ApplyDyeToSelectedDecor

```lua
C_HousingCustomizeMode.ApplyDyeToSelectedDecor(dyeSlotID: number, dyeColorID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

If a dyeable decor is selected, applies a specific dye color in a specific slot as a preview; See CommitDyesForSelectedDecor to actually save applied dye changes

### C_HousingCustomizeMode.ApplyPetToSelectedDecor

```lua
C_HousingCustomizeMode.ApplyPetToSelectedDecor(petID: WOWGUID?, petBehavior: HousingPetBehaviorType)
```

Secret: SecretArguments=AllowedWhenUntainted  

If a decor is selected that supports pets, applies a specific petID to be shown on that decor

### C_HousingCustomizeMode.ApplyThemeToRoom

```lua
C_HousingCustomizeMode.ApplyThemeToRoom(themeSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to apply a specific theme set (aka style) to all applicable room components in the current room

### C_HousingCustomizeMode.ApplyThemeToSelectedRoomComponent

```lua
C_HousingCustomizeMode.ApplyThemeToSelectedRoomComponent(themeSetID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to apply a specific theme set (aka style) to the currently selected room component only

### C_HousingCustomizeMode.ApplyWallpaperToAllWalls

```lua
C_HousingCustomizeMode.ApplyWallpaperToAllWalls(roomComponentTextureRecID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to apply a specific wallpaper (aka material/texture) to all applicable room components in the current room

### C_HousingCustomizeMode.ApplyWallpaperToSelectedRoomComponent

```lua
C_HousingCustomizeMode.ApplyWallpaperToSelectedRoomComponent(roomComponentTextureRecID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to apply a specific wallpaper (aka material/texture) to the currently selected room component only

### C_HousingCustomizeMode.CancelActiveEditing

```lua
C_HousingCustomizeMode.CancelActiveEditing()
```

Cancels all in-progress editing of the selected target, which will reset any unapplied customization changes and deselect the active target

### C_HousingCustomizeMode.ClearDyesForSelectedDecor

```lua
C_HousingCustomizeMode.ClearDyesForSelectedDecor()
```

Clears all previewed dye changes on the selected decor; Does not clear any already saved dyes that were previously applied

### C_HousingCustomizeMode.ClearTargetRoomComponent

```lua
C_HousingCustomizeMode.ClearTargetRoomComponent()
```

Deselect the currently selected room component, if there is one

### C_HousingCustomizeMode.CommitDyesForSelectedDecor

```lua
C_HousingCustomizeMode.CommitDyesForSelectedDecor() -> hasChanges: bool
```

Attempt to save all previewed dye changes made to the selected decor

### C_HousingCustomizeMode.GetHoveredDecorInfo

```lua
C_HousingCustomizeMode.GetHoveredDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the placed decor instance currently being hovered, if there is one

### C_HousingCustomizeMode.GetHoveredRoomComponentInfo

```lua
C_HousingCustomizeMode.GetHoveredRoomComponentInfo() -> info: HousingRoomComponentInstanceInfo?
```

Returns info for the room component currently being hovered, if there is one

### C_HousingCustomizeMode.GetNumDyesToRemoveOnSelectedDecor

```lua
C_HousingCustomizeMode.GetNumDyesToRemoveOnSelectedDecor() -> numDyesToRemove: number
```

If a dyeable decor instance is selected, returns how many dye slots would be cleared on applying all currently previewed dye changes

### C_HousingCustomizeMode.GetNumDyesToSpendOnSelectedDecor

```lua
C_HousingCustomizeMode.GetNumDyesToSpendOnSelectedDecor() -> numDyesToSpend: number
```

If a dyeable decor instance is selected, returns how many dye items would be spent on applying all currently previewed dye changes

### C_HousingCustomizeMode.GetPreviewDyesOnSelectedDecor

```lua
C_HousingCustomizeMode.GetPreviewDyesOnSelectedDecor() -> previewDyes: table<PreviewDyeSlotInfo>
```

If a dyeable decor instance is selected, returns info structs for each new/changed dye currently being previewed

### C_HousingCustomizeMode.GetRecentlyUsedDyes

```lua
C_HousingCustomizeMode.GetRecentlyUsedDyes() -> recentDyes: table<number>
```

Returns a list of ids for the dyes most recently applied by the player, if any

### C_HousingCustomizeMode.GetRecentlyUsedThemeSets

```lua
C_HousingCustomizeMode.GetRecentlyUsedThemeSets() -> recentThemeSets: table<number>
```

Returns a list of ids for the theme sets (aka styles) most recently applied by the player, if any

### C_HousingCustomizeMode.GetRecentlyUsedWallpapers

```lua
C_HousingCustomizeMode.GetRecentlyUsedWallpapers() -> recentWallpapers: table<number>
```

Returns a list of ids for the wallpapers most recently applied by the player, if any

### C_HousingCustomizeMode.GetSelectedDecorInfo

```lua
C_HousingCustomizeMode.GetSelectedDecorInfo() -> info: HousingDecorInstanceInfo?
```

Returns info for the decor instance that's currently selected, if there is one

### C_HousingCustomizeMode.GetSelectedDecorPetInfo

```lua
C_HousingCustomizeMode.GetSelectedDecorPetInfo() -> petID: WOWGUID?, petBehavior: HousingPetBehaviorType
```

If a decor is selected that supports pets, gets petID and behavior type from decor

### C_HousingCustomizeMode.GetSelectedRoomComponentInfo

```lua
C_HousingCustomizeMode.GetSelectedRoomComponentInfo() -> info: HousingRoomComponentInstanceInfo?
```

Returns info for the currently selected room component, if there is one

### C_HousingCustomizeMode.GetThemeSetInfo

```lua
C_HousingCustomizeMode.GetThemeSetInfo(themeSetID: number) -> name: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the name of the specified theme set (aka style) if it exists

### C_HousingCustomizeMode.GetWallpapersForRoomComponentType

```lua
C_HousingCustomizeMode.GetWallpapersForRoomComponentType(type: HousingRoomComponentType) -> availableWallpapers: table<RoomComponentWallpaper>
```

Secret: SecretArguments=AllowedWhenUntainted  

Get all wallpapers (aka materials/textures) available for the selected room component type, if any

### C_HousingCustomizeMode.IsDecorSelected

```lua
C_HousingCustomizeMode.IsDecorSelected() -> hasSelectedDecor: bool
```

Returns true if a decor instance is currently selected for customization

### C_HousingCustomizeMode.IsHouseExteriorDoorHovered

```lua
C_HousingCustomizeMode.IsHouseExteriorDoorHovered() -> isHouseExteriorDoorHovered: bool
```

Returns true if the entry door of the house's exterior is currently being hovered

### C_HousingCustomizeMode.IsHoveringDecor

```lua
C_HousingCustomizeMode.IsHoveringDecor() -> isHoveringDecor: bool
```

Returns true if a placed decor instance is currently being hovered

### C_HousingCustomizeMode.IsHoveringRoomComponent

```lua
C_HousingCustomizeMode.IsHoveringRoomComponent() -> isHovering: bool
```

Returns true if a room component is currently being hovered

### C_HousingCustomizeMode.IsRoomComponentSelected

```lua
C_HousingCustomizeMode.IsRoomComponentSelected() -> hasSelectedComponent: bool
```

Returns true if a room component is currently selected for customization

### C_HousingCustomizeMode.RoomComponentSupportsVariant

```lua
C_HousingCustomizeMode.RoomComponentSupportsVariant(componentID: number, variant: number) -> variantSupported: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Check whether a specific room component supports a particular variant; What kind of id or enum 'variant' equates to is complicated, as it depends on the component type

### C_HousingCustomizeMode.RoomConnectionSupportsDoorType

```lua
C_HousingCustomizeMode.RoomConnectionSupportsDoorType(roomGUID: WOWGUID, componentID: number, newDoortype: HousingRoomComponentDoorType) -> doorTypeSupported: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Check whether a specific room component, within a specific room, supports a particular doorType

### C_HousingCustomizeMode.SetRoomComponentCeilingType

```lua
C_HousingCustomizeMode.SetRoomComponentCeilingType(roomGUID: WOWGUID, componentID: number, ceilingType: HousingRoomComponentCeilingType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to set a specific ceiling component, within a specific room, to a specific new ceiling type

### C_HousingCustomizeMode.SetRoomComponentDoorType

```lua
C_HousingCustomizeMode.SetRoomComponentDoorType(roomGUID: WOWGUID, componentID: number, newDoortype: HousingRoomComponentDoorType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to set a specific door component, within a specific room, to a specific new door type

## Events

### HOUSING_CUSTOMIZE_MODE_HOVERED_TARGET_CHANGED

Payload: `hasHoveredTarget: bool, targetType: HousingCustomizeModeTargetType`  
Flags: SynchronousEvent  

### HOUSING_CUSTOMIZE_MODE_SELECTED_TARGET_CHANGED

Payload: `hasSelectedTarget: bool, targetType: HousingCustomizeModeTargetType`  
Flags: SynchronousEvent  

### HOUSING_DECOR_CUSTOMIZATION_CHANGED

Payload: `decorGUID: WOWGUID`  
Flags: SynchronousEvent  

### HOUSING_DECOR_DYE_FAILURE

Payload: `decorGUID: WOWGUID, housingResult: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGE_FAILED

Payload: `roomGUID: WOWGUID, componentID: number, housingResult: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_ROOM_COMPONENT_CUSTOMIZATION_CHANGED

Payload: `roomGUID: WOWGUID, componentID: number`  
Flags: SynchronousEvent  

## Tables

### HousingCustomizeModeTargetType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Decor | 1 |
| RoomComponent | 2 |
| ExteriorHouse | 3 |

### HousingRoomComponentInstanceInfo (Structure)

- `roomGUID: WOWGUID`
- `type: HousingRoomComponentType`
- `componentID: number`
- `canBeCustomized: bool`
- `currentThemeSet: number?`
- `availableThemeSets: table<number>`
- `currentWallpaper: number?`
- `currentRoomComponentTextureRecID: number?`
- `ceilingType: HousingRoomComponentCeilingType`
- `doorType: HousingRoomComponentDoorType`

### PreviewDyeSlotInfo (Structure)

- `dyeColorID: number`
- `dyeSlotID: number`

### RoomComponentWallpaper (Structure)

- `name: cstring`
- `roomComponentTextureRecID: number`
