# HousingLayoutUITypes

Type: None

## Tables

### HousingLayoutCameraDirection (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Up | 1 |
| Down | 2 |
| Left | 4 |
| Right | 8 |

### HousingLayoutPinType (Enumeration)

| Name | Value |
|---|---|
| Door | 0 |
| Room | 1 |

### HousingLayoutStairDirection (Enumeration)

| Name | Value |
|---|---|
| Up | 0 |
| Down | 1 |

### DoorConnectionInfo (Structure)

- `doorID: number`
- `connectionType: HousingRoomComponentType`
- `doorFacing: number`

### RoomOptionInfo (Structure)

- `roomName: cstring`
- `roomID: number`
- `learned: bool`
- `numOwned: number`

### PinUpdatedCallback (CallbackType)
