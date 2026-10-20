# HouseExteriorUI

Type: System  
Namespace: `C_HouseExterior`  
Environment: All

## Functions

### C_HouseExterior.CancelActiveExteriorEditing

```lua
C_HouseExterior.CancelActiveExteriorEditing()
```

Cancels all in-progress editing of house exterior fixtures, which will deselect any active targets

### C_HouseExterior.GetCoreFixtureOptionsInfo

```lua
C_HouseExterior.GetCoreFixtureOptionsInfo(coreFixtureType: HousingFixtureType) -> coreFixtureOptionsInfo: HousingCoreFixtureInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.GetCurrentHouseExteriorSize

```lua
C_HouseExterior.GetCurrentHouseExteriorSize() -> houseExteriorSize: HousingFixtureSize?
```

### C_HouseExterior.GetCurrentHouseExteriorType

```lua
C_HouseExterior.GetCurrentHouseExteriorType() -> houseExteriorTypeID: number?, houseExteriorTypeName: cstring?
```

### C_HouseExterior.GetHouseExteriorSizeOptions

```lua
C_HouseExterior.GetHouseExteriorSizeOptions() -> options: HouseExteriorSizeOptionsInfo?
```

### C_HouseExterior.GetHouseExteriorTypeOptions

```lua
C_HouseExterior.GetHouseExteriorTypeOptions() -> options: HouseExteriorTypeOptionsInfo?
```

### C_HouseExterior.GetSelectedFixturePointInfo

```lua
C_HouseExterior.GetSelectedFixturePointInfo() -> fixturePointInfo: HousingFixturePointInfo?
```

### C_HouseExterior.HasHoveredFixture

```lua
C_HouseExterior.HasHoveredFixture() -> anyHoveredFixture: bool
```

### C_HouseExterior.HasSelectedFixturePoint

```lua
C_HouseExterior.HasSelectedFixturePoint() -> anySelectedFixturePoint: bool
```

### C_HouseExterior.IsAnyDecorAttachedToCoreFixture

```lua
C_HouseExterior.IsAnyDecorAttachedToCoreFixture(coreFixtureType: HousingFixtureType) -> anyAttachedDecor: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if any decor is attached to the specified core fixture type, OR any child fixtures attached to it; Will also return false if the type provided is not a core fixture type, or if not in Exterior Customization mode on an owned plot

### C_HouseExterior.IsAnyDecorAttachedToDoor

```lua
C_HouseExterior.IsAnyDecorAttachedToDoor() -> anyAttachedDecor: bool
```

Returns true if any decor is attached to the current House Exterior's door; Will also return false if not in Exterior Customization mode on an owned plot

### C_HouseExterior.IsAnyDecorAttachedToHouseExterior

```lua
C_HouseExterior.IsAnyDecorAttachedToHouseExterior() -> anyAttachedDecor: bool
```

Returns true if any decor is attached to any component of the current House Exterior; Will also return false if not in House Exterior Customization mode on an owned Plot

### C_HouseExterior.IsAnyDecorAttachedToSelectedFixturePoint

```lua
C_HouseExterior.IsAnyDecorAttachedToSelectedFixturePoint() -> anyAttachedDecor: bool
```

Returns true if any decor is attached to the Fixture occupying the currently selected fixture point; Will also return false if no point is currently selected, or if there is currently no Fixture there

### C_HouseExterior.IsExteriorDecorHidden

```lua
C_HouseExterior.IsExteriorDecorHidden() -> decorHidden: bool
```

### C_HouseExterior.RemoveFixtureFromSelectedPoint

```lua
C_HouseExterior.RemoveFixtureFromSelectedPoint(attachedDecorAction: HousingFixtureDecorAction = Store)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.SelectCoreFixtureOption

```lua
C_HouseExterior.SelectCoreFixtureOption(fixtureID: number, attachedDecorAction: HousingFixtureDecorAction = Store)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.SelectFixtureOption

```lua
C_HouseExterior.SelectFixtureOption(fixtureID: number, attachedDecorAction: HousingFixtureDecorAction = Store)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.SetExteriorDecorHidden

```lua
C_HouseExterior.SetExteriorDecorHidden(decorHidden: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.SetHouseExteriorSize

```lua
C_HouseExterior.SetHouseExteriorSize(size: HousingFixtureSize, attachedDecorAction: HousingFixtureDecorAction = Store)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HouseExterior.SetHouseExteriorType

```lua
C_HouseExterior.SetHouseExteriorType(houseExteriorTypeID: number, attachedDecorAction: HousingFixtureDecorAction = Store)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### HOUSE_EXTERIOR_DECOR_HIDDEN_CHANGED

Payload: `isDecorHidden: bool`  
Flags: SynchronousEvent  

### HOUSE_EXTERIOR_TYPE_UNLOCKED

Payload: `fixtureID: number`  
Flags: UniqueEvent  

### HOUSING_CORE_FIXTURE_CHANGED

Payload: `coreFixtureType: HousingFixtureType`  
Flags: UniqueEvent  

### HOUSING_FIXTURE_HOVER_CHANGED

Payload: `anyHovered: bool`  
Flags: SynchronousEvent  

### HOUSING_FIXTURE_POINT_FRAME_ADDED

Payload: `pointFrame: HousingFixturePointFrame`  
Flags: SynchronousEvent  

### HOUSING_FIXTURE_POINT_FRAME_RELEASED

Payload: `pointFrame: HousingFixturePointFrame`  
Flags: SynchronousEvent  

### HOUSING_FIXTURE_POINT_FRAMES_RELEASED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_FIXTURE_POINT_SELECTION_CHANGED

Payload: `hasSelection: bool`  
Flags: SynchronousEvent  

### HOUSING_FIXTURE_UNLOCKED

Payload: `fixtureID: number`  
Flags: UniqueEvent  

### HOUSING_SET_EXTERIOR_HOUSE_SIZE_RESPONSE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_SET_EXTERIOR_HOUSE_TYPE_RESPONSE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_SET_FIXTURE_RESPONSE

Payload: `result: HousingResult`  
Flags: SynchronousEvent
