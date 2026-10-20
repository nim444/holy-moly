# HousingLayoutPinFrameAPI

Type: ScriptObject  
Environment: All

## Functions

### HousingLayoutPinFrameAPI:CanMove

```lua
HousingLayoutPinFrameAPI:CanMove() -> moveRestriction: HousingLayoutRestriction
```

### HousingLayoutPinFrameAPI:CanRemove

```lua
HousingLayoutPinFrameAPI:CanRemove() -> removalRestriction: HousingLayoutRestriction
```

### HousingLayoutPinFrameAPI:CanRotate

```lua
HousingLayoutPinFrameAPI:CanRotate() -> rotateRestriction: HousingLayoutRestriction
```

### HousingLayoutPinFrameAPI:Drag

```lua
HousingLayoutPinFrameAPI:Drag(isAccessible: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### HousingLayoutPinFrameAPI:GetDoorConnectionInfo

```lua
HousingLayoutPinFrameAPI:GetDoorConnectionInfo() -> connectionInfo: DoorConnectionInfo?
```

### HousingLayoutPinFrameAPI:GetPinType

```lua
HousingLayoutPinFrameAPI:GetPinType() -> type: HousingLayoutPinType
```

### HousingLayoutPinFrameAPI:GetRoomGUID

```lua
HousingLayoutPinFrameAPI:GetRoomGUID() -> roomGUID: WOWGUID
```

### HousingLayoutPinFrameAPI:GetRoomName

```lua
HousingLayoutPinFrameAPI:GetRoomName() -> name: cstring?
```

### HousingLayoutPinFrameAPI:IsAnyPartOfRoomSelected

```lua
HousingLayoutPinFrameAPI:IsAnyPartOfRoomSelected() -> isSelected: bool
```

Returns true if this pin's associated room, or anything attached to it, is selected. Ex: If pin is for a door, returns true if its room, or any other doors on that room, are selected

### HousingLayoutPinFrameAPI:IsConnectedToDraggingRoom

```lua
HousingLayoutPinFrameAPI:IsConnectedToDraggingRoom() -> isConnectedToDraggingRoom: bool
```

### HousingLayoutPinFrameAPI:IsOccupiedDoor

```lua
HousingLayoutPinFrameAPI:IsOccupiedDoor() -> isOccupied: bool?
```

Will be nil if pin is not a Door

### HousingLayoutPinFrameAPI:IsPartOfDraggingRoom

```lua
HousingLayoutPinFrameAPI:IsPartOfDraggingRoom() -> isPartOfDraggingRoom: bool
```

### HousingLayoutPinFrameAPI:IsSelected

```lua
HousingLayoutPinFrameAPI:IsSelected() -> isSelected: bool
```

Returns true if this pin's object is itself selected; See IsAnyPartOfRoomSelected for a broader Selected check

### HousingLayoutPinFrameAPI:IsValid

```lua
HousingLayoutPinFrameAPI:IsValid() -> isValid: bool
```

### HousingLayoutPinFrameAPI:IsValidForSelectedFloorplan

```lua
HousingLayoutPinFrameAPI:IsValidForSelectedFloorplan() -> isValid: bool
```

### HousingLayoutPinFrameAPI:Select

```lua
HousingLayoutPinFrameAPI:Select()
```

### HousingLayoutPinFrameAPI:SetUpdateCallback

```lua
HousingLayoutPinFrameAPI:SetUpdateCallback(cb: PinUpdatedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted
