# HousingLayoutUI

Type: System  
Namespace: `C_HousingLayout`  
Environment: All

## Functions

### C_HousingLayout.AnyRoomsOnFloor

```lua
C_HousingLayout.AnyRoomsOnFloor(floor: number) -> anyRooms: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.CanSetViewedFloor

```lua
C_HousingLayout.CanSetViewedFloor(floor: number) -> canSet: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.CancelActiveLayoutEditing

```lua
C_HousingLayout.CancelActiveLayoutEditing()
```

### C_HousingLayout.ConfirmStairChoice

```lua
C_HousingLayout.ConfirmStairChoice(choice: HousingLayoutStairDirection?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.DeselectFloorplan

```lua
C_HousingLayout.DeselectFloorplan()
```

### C_HousingLayout.DeselectRoomOrDoor

```lua
C_HousingLayout.DeselectRoomOrDoor()
```

### C_HousingLayout.GetBaseRoomFloor

```lua
C_HousingLayout.GetBaseRoomFloor() -> floor: number
```

### C_HousingLayout.GetHighestOccupiedFloorIndex

```lua
C_HousingLayout.GetHighestOccupiedFloorIndex() -> highestFloorIndex: number
```

### C_HousingLayout.GetLowestOccupiedFloorIndex

```lua
C_HousingLayout.GetLowestOccupiedFloorIndex() -> lowestFloorIndex: number
```

### C_HousingLayout.GetNumActiveRooms

```lua
C_HousingLayout.GetNumActiveRooms() -> numRooms: number
```

### C_HousingLayout.GetRoomPlacementBudget

```lua
C_HousingLayout.GetRoomPlacementBudget() -> placementBudget: number?
```

Returns the max room placement budget for the current owned house's interior; Can be increased via house level

### C_HousingLayout.GetRoomPlayerIsIn

```lua
C_HousingLayout.GetRoomPlayerIsIn() -> roomGUID: WOWGUID
```

Flags: MayReturnNothing  

Returns the guid of the interior room the player is standing in, or nil if not currently standing in one

### C_HousingLayout.GetSelectedBlueprintFloorplan

```lua
C_HousingLayout.GetSelectedBlueprintFloorplan() -> roomID: number, shareCode: cstring
```

Flags: MayReturnNothing  

### C_HousingLayout.GetSelectedDoor

```lua
C_HousingLayout.GetSelectedDoor() -> selectedDoorComponentID: number, roomGUID: WOWGUID
```

Flags: MayReturnNothing  

If a door is selected, returns its component id and the guid of the room it belongs to; Otherwise returns nothing

### C_HousingLayout.GetSelectedFloorplan

```lua
C_HousingLayout.GetSelectedFloorplan() -> roomID: number?
```

### C_HousingLayout.GetSelectedRoom

```lua
C_HousingLayout.GetSelectedRoom() -> roomGUID: WOWGUID
```

Flags: MayReturnNothing  

If a Room is selected, returns the room's guid; Otherwise returns nothing

### C_HousingLayout.GetSelectedStairwellRoomCount

```lua
C_HousingLayout.GetSelectedStairwellRoomCount() -> stairwellRoomCount: number
```

### C_HousingLayout.GetSpentPlacementBudget

```lua
C_HousingLayout.GetSpentPlacementBudget() -> spentPlacementBudget: number?
```

Returns how much of the current owned house's room placement budget has been spent; Different kinds of rooms take up different budget amounts, so this value isn't an individual room count, see GetNumActiveRooms for that

### C_HousingLayout.GetViewedFloor

```lua
C_HousingLayout.GetViewedFloor() -> floor: number
```

### C_HousingLayout.HasAnySelections

```lua
C_HousingLayout.HasAnySelections() -> hasAnySelections: bool
```

Returns true if any room, door, or floorplan is currently selected or being dragged

### C_HousingLayout.HasRoomPlacementBudget

```lua
C_HousingLayout.HasRoomPlacementBudget() -> hasBudget: bool
```

Returns whether there's a max room placement budget available and active for the current player, in the current house's interior

### C_HousingLayout.HasSelectedBlueprintFloorplan

```lua
C_HousingLayout.HasSelectedBlueprintFloorplan() -> hasSelectedBlueprintFloorplan: bool
```

### C_HousingLayout.HasSelectedDoor

```lua
C_HousingLayout.HasSelectedDoor() -> hasSelectedDoor: bool
```

Returns true if a door component is currently selected

### C_HousingLayout.HasSelectedFloorplan

```lua
C_HousingLayout.HasSelectedFloorplan() -> hasSelectedFloorplan: bool
```

### C_HousingLayout.HasSelectedRoom

```lua
C_HousingLayout.HasSelectedRoom() -> hasSelectedRoom: bool
```

Returns true if a room is selected, will NOT return true if a door is selected

### C_HousingLayout.HasStairs

```lua
C_HousingLayout.HasStairs(roomRecordID: number) -> hasStairs: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.HasValidConnection

```lua
C_HousingLayout.HasValidConnection(roomGUID: WOWGUID, componentID: number, roomId: number) -> canPlace: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.IsBaseRoom

```lua
C_HousingLayout.IsBaseRoom(roomGUID: WOWGUID) -> isBaseRoom: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.IsDraggingRoom

```lua
C_HousingLayout.IsDraggingRoom() -> isDragging: bool, isAccessibleDrag: bool
```

### C_HousingLayout.MoveDraggedRoom

```lua
C_HousingLayout.MoveDraggedRoom(sourceDoorIndex: number, destRoom: WOWGUID, destDoorIndex: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to move the room currently being dragged to a specific connection point on a specific other room

### C_HousingLayout.MoveLayoutCamera

```lua
C_HousingLayout.MoveLayoutCamera(direction: HousingLayoutCameraDirection, isPressed: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.RemoveRoom

```lua
C_HousingLayout.RemoveRoom(roomGUID: WOWGUID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to return a previously placed room to the House Chest

### C_HousingLayout.RoomHasStairs

```lua
C_HousingLayout.RoomHasStairs(roomGUID: WOWGUID) -> hasStairs: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true of the provided roomGUID is a stairwell. Returns false if roomGUID is invalid

### C_HousingLayout.RotateFocusedRoom

```lua
C_HousingLayout.RotateFocusedRoom(isLeft: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Rotates either the currently dragged or currently selected room, if either exist

### C_HousingLayout.RotateRoom

```lua
C_HousingLayout.RotateRoom(roomGUID: WOWGUID, isLeft: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempt to rotate an already placed room

### C_HousingLayout.SelectFloorplan

```lua
C_HousingLayout.SelectFloorplan(roomID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.SetViewedFloor

```lua
C_HousingLayout.SetViewedFloor(floor: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_HousingLayout.StartDrag

```lua
C_HousingLayout.StartDrag()
```

### C_HousingLayout.StopDrag

```lua
C_HousingLayout.StopDrag()
```

### C_HousingLayout.StopDraggingRoom

```lua
C_HousingLayout.StopDraggingRoom()
```

### C_HousingLayout.ZoomLayoutCamera

```lua
C_HousingLayout.ZoomLayoutCamera(zoomIn: bool) -> zoomChanged: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### HOUSING_LAYOUT_DOOR_SELECTED

Payload: `roomGUID: WOWGUID, componentID: number`  
Flags: SynchronousEvent  
Fired when one of the door nodes of an already placed room has been selected

### HOUSING_LAYOUT_DOOR_SELECTION_CHANGED

Payload: `hasSelection: bool`  
Flags: SynchronousEvent  
Fired when one of the door nodes of an already placed room has been selected or deselected

### HOUSING_LAYOUT_DRAG_TARGET_CHANGED

Payload: `isDraggingRoom: bool`  
Flags: SynchronousEvent  
Fired when an already placed room has either started or stopped being dragged

### HOUSING_LAYOUT_FLOORPLAN_SELECTION_CHANGED

Payload: `hasSelection: bool, roomID: number, blueprintShareCode: cstring?`  
Flags: SynchronousEvent  
Fired when a room option in the House Chest has been selected or deselected

### HOUSING_LAYOUT_OCCUPIED_FLOOR_RANGE_CHANGED

Payload: `lowestFloor: number, highestFloor: number`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_PIN_FRAME_ADDED

Payload: `pinFrame: HousingLayoutPinFrame`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_PIN_FRAME_RELEASED

Payload: `pinFrame: HousingLayoutPinFrame`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_PIN_FRAMES_RELEASED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_ROOM_COMPONENT_THEME_SET_CHANGED

Payload: `roomGUID: WOWGUID, componentID: number, newThemeSet: number, result: HousingResult`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_ROOM_MOVE_INVALID

Payload: `none`  
Flags: SynchronousEvent  

### HOUSING_LAYOUT_ROOM_MOVED

Payload: `none`  
Flags: SynchronousEvent  
Fired when a previously placed room has been moved to a different position or rotation

### HOUSING_LAYOUT_ROOM_RECEIVED

Payload: `playAddedSound: bool`  
Flags: SynchronousEvent  
Fired when info for a newly placed room has been recieved while in Layout Mode

### HOUSING_LAYOUT_ROOM_REMOVED

Payload: `none`  
Flags: SynchronousEvent  
Fired when a previously placed room has been removed while in Layout Mode

### HOUSING_LAYOUT_ROOM_RETURNED

Payload: `none`  
Flags: SynchronousEvent  
Fired when a room that was being dragged is let go of without being placed, and is returned to the House Chest

### HOUSING_LAYOUT_ROOM_SELECTION_CHANGED

Payload: `hasSelection: bool`  
Flags: SynchronousEvent  
Fired when an already placed room has been selected or deselected

### HOUSING_LAYOUT_ROOM_SNAPPED

Payload: `none`  
Flags: SynchronousEvent  
Fired when a room being dragged has been snapped to a particular door connection

### HOUSING_LAYOUT_VIEWED_FLOOR_CHANGED

Payload: `floor: number`  
Flags: SynchronousEvent  

### SHOW_STAIR_DIRECTION_CONFIRMATION

Payload: `none`  
Flags: SynchronousEvent
