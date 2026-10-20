# Cursor

Type: System  
Namespace: `C_Cursor`  
Environment: All

## Functions

### C_Cursor.GetCursorItem

```lua
C_Cursor.GetCursorItem() -> item: ItemLocation
```

Flags: MayReturnNothing  

## Events

### BATTLE_PET_CURSOR_CLEAR

Payload: `none`  
Flags: SynchronousEvent  

### CURSOR_CHANGED

Payload: `isDefault: bool, newCursorType: UICursorType, oldCursorType: UICursorType, oldCursorVirtualID: number`  
Flags: SynchronousEvent  

### MOUNT_CURSOR_CLEAR

Payload: `none`  
Flags: SynchronousEvent  

### WORLD_CURSOR_TOOLTIP_UPDATE

Payload: `anchorType: WorldCursorAnchorType`  
Flags: SynchronousEvent  
Sends an update when the mouse enters or leaves something in-world (object, unit, etc) that should display a tooltip
