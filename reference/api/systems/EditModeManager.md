# EditModeManager

Type: System  
Namespace: `C_EditMode`  
Environment: All

## Functions

### C_EditMode.ConvertLayoutInfoToString

```lua
C_EditMode.ConvertLayoutInfoToString(layoutInfo: EditModeLayoutInfo) -> layoutInfoAsString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.ConvertStringToLayoutInfo

```lua
C_EditMode.ConvertStringToLayoutInfo(layoutInfoAsString: string) -> layoutInfo: EditModeLayoutInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EditMode.GetAccountSettings

```lua
C_EditMode.GetAccountSettings() -> accountSettings: table<EditModeSettingInfo>
```

### C_EditMode.GetEditModeDefaultLayout

```lua
C_EditMode.GetEditModeDefaultLayout() -> defaultLayout: number
```

### C_EditMode.GetLayouts

```lua
C_EditMode.GetLayouts() -> layoutInfo: EditModeLayouts
```

### C_EditMode.IsValidLayoutName

```lua
C_EditMode.IsValidLayoutName(name: cstring) -> isApproved: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.OnEditModeExit

```lua
C_EditMode.OnEditModeExit()
```

### C_EditMode.OnLayoutAdded

```lua
C_EditMode.OnLayoutAdded(addedLayoutIndex: luaIndex, activateNewLayout: bool, isLayoutImported: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.OnLayoutDeleted

```lua
C_EditMode.OnLayoutDeleted(deletedLayoutIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.SaveLayouts

```lua
C_EditMode.SaveLayouts(saveInfo: EditModeLayouts)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.SetAccountSetting

```lua
C_EditMode.SetAccountSetting(setting: EditModeAccountSetting, value: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_EditMode.SetActiveLayout

```lua
C_EditMode.SetActiveLayout(activeLayout: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### EDIT_MODE_LAYOUTS_UPDATED

Payload: `layoutInfo: EditModeLayouts, reconcileLayouts: bool`  
Flags: SynchronousEvent  

## Tables

### EditModeAnchorInfo (Structure)

- `point: FramePoint`
- `relativeTo: string`
- `relativePoint: FramePoint`
- `offsetX: number`
- `offsetY: number`

### EditModeLayoutInfo (Structure)

- `layoutName: string`
- `layoutType: EditModeLayoutType`
- `interfaceStyle: InputDeviceInterfaceType?`
- `systems: table<EditModeSystemInfo>`

### EditModeLayouts (Structure)

- `layouts: table<EditModeLayoutInfo>`
- `activeLayout: luaIndex`

### EditModeSettingInfo (Structure)

- `setting: number`
- `value: number`

### EditModeSystemInfo (Structure)

- `system: EditModeSystem`
- `systemIndex: luaIndex?`
- `anchorInfo: EditModeAnchorInfo`
- `anchorInfo2: EditModeAnchorInfo?`
- `settings: table<EditModeSettingInfo>`
- `isInDefaultPosition: bool`
