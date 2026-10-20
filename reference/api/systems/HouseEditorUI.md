# HouseEditorUI

Type: System  
Namespace: `C_HouseEditor`  
Environment: All

## Functions

### C_HouseEditor.ActivateHouseEditorMode

```lua
C_HouseEditor.ActivateHouseEditorMode(editMode: HouseEditorMode) -> result: HousingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Attempts switch the House Editor to a specific House Editor mode

### C_HouseEditor.EnterHouseEditor

```lua
C_HouseEditor.EnterHouseEditor() -> result: HousingResult
```

Attempts to open the House Editor to the default House Editor mode

### C_HouseEditor.GetActiveHouseEditorMode

```lua
C_HouseEditor.GetActiveHouseEditorMode() -> editMode: HouseEditorMode
```

### C_HouseEditor.GetHouseEditorAvailability

```lua
C_HouseEditor.GetHouseEditorAvailability() -> result: HousingResult
```

Returns the availability state of the House Editor overall

### C_HouseEditor.GetHouseEditorModeAvailability

```lua
C_HouseEditor.GetHouseEditorModeAvailability(editMode: HouseEditorMode) -> result: HousingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the availability of a specific House Editor mode

### C_HouseEditor.GetHouseEditorPlayerType

```lua
C_HouseEditor.GetHouseEditorPlayerType() -> playerType: HouseEditorPlayerType
```

### C_HouseEditor.IsHouseEditorActive

```lua
C_HouseEditor.IsHouseEditorActive() -> isEditorActive: bool
```

Returns whether the House Editor is active, in any mode

### C_HouseEditor.IsHouseEditorModeActive

```lua
C_HouseEditor.IsHouseEditorModeActive(editMode: HouseEditorMode) -> isModeActive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the specific House Editor mode is active

### C_HouseEditor.IsHouseEditorStatusAvailable

```lua
C_HouseEditor.IsHouseEditorStatusAvailable() -> editorStatusAvailable: bool
```

Returns true if the HouseEditor currently able process mode availability and switching; May be false if not in a house or plot, or while waiting to get house settings back from the server

### C_HouseEditor.LeaveHouseEditor

```lua
C_HouseEditor.LeaveHouseEditor()
```

## Events

### HOUSE_EDITOR_AVAILABILITY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### HOUSE_EDITOR_MODE_CHANGE_FAILURE

Payload: `result: HousingResult`  
Flags: SynchronousEvent  

### HOUSE_EDITOR_MODE_CHANGED

Payload: `currentEditMode: HouseEditorMode`  
Flags: SynchronousEvent  

## Tables

### HouseEditorPlayerType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Owner | 1 |
| Visitor | 2 |
