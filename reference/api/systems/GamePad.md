# GamePad

Type: System  
Namespace: `C_GamePad`  
Environment: All

## Functions

### C_GamePad.AddSDLMapping

```lua
C_GamePad.AddSDLMapping(platform: ClientPlatformType, mapping: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GamePad.ApplyConfigs

```lua
C_GamePad.ApplyConfigs()
```

Flags: HasRestrictions  

### C_GamePad.AxisIndexToConfigName

```lua
C_GamePad.AxisIndexToConfigName(axisIndex: number) -> configName: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.ButtonBindingToIndex

```lua
C_GamePad.ButtonBindingToIndex(bindingName: cstring) -> buttonIndex: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.ButtonIndexToBinding

```lua
C_GamePad.ButtonIndexToBinding(buttonIndex: number) -> bindingName: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.ButtonIndexToConfigName

```lua
C_GamePad.ButtonIndexToConfigName(buttonIndex: number) -> configName: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.ClearLedColor

```lua
C_GamePad.ClearLedColor()
```

### C_GamePad.DeleteConfig

```lua
C_GamePad.DeleteConfig(configID: GamePadConfigID)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GamePad.GetActiveDeviceID

```lua
C_GamePad.GetActiveDeviceID() -> deviceID: number
```

### C_GamePad.GetAllConfigIDs

```lua
C_GamePad.GetAllConfigIDs() -> configIDs: table<GamePadConfigID>
```

### C_GamePad.GetAllDeviceIDs

```lua
C_GamePad.GetAllDeviceIDs() -> deviceIDs: table<number>
```

### C_GamePad.GetAllowHoverEventsWithFreeLook

```lua
C_GamePad.GetAllowHoverEventsWithFreeLook() -> enabled: bool
```

### C_GamePad.GetCombinedDeviceID

```lua
C_GamePad.GetCombinedDeviceID() -> deviceID: number
```

### C_GamePad.GetConfig

```lua
C_GamePad.GetConfig(configID: GamePadConfigID) -> config: GamePadConfig?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.GetDeviceMappedState

```lua
C_GamePad.GetDeviceMappedState(deviceID: number?) -> state: GamePadMappedState?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.GetDeviceRawState

```lua
C_GamePad.GetDeviceRawState(deviceID: number) -> rawState: GamePadRawState?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.GetLedColor

```lua
C_GamePad.GetLedColor() -> color: colorRGB
```

### C_GamePad.GetPowerLevel

```lua
C_GamePad.GetPowerLevel(deviceID: number?) -> powerLevel: GamePadPowerLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.IsEnabled

```lua
C_GamePad.IsEnabled() -> enabled: bool
```

### C_GamePad.SetAllowHoverEventsWithFreeLook

```lua
C_GamePad.SetAllowHoverEventsWithFreeLook(enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.SetConfig

```lua
C_GamePad.SetConfig(config: GamePadConfig)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_GamePad.SetLedColor

```lua
C_GamePad.SetLedColor(color: colorRGB)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.SetVibration

```lua
C_GamePad.SetVibration(vibrationType: cstring, intensity: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.StickIndexToConfigName

```lua
C_GamePad.StickIndexToConfigName(stickIndex: number) -> configName: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GamePad.StopVibration

```lua
C_GamePad.StopVibration()
```

## Events

### GAME_PAD_ACTIVE_CHANGED

Payload: `isActive: bool`  
Flags: SynchronousEvent  

### GAME_PAD_ALLOW_HOVER_EVENTS_WITH_FREE_LOOK_CHANGED

Payload: `enabled: bool`  
Flags: SynchronousEvent  

### GAME_PAD_CONFIGS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### GAME_PAD_CONNECTED

Payload: `none`  
Flags: SynchronousEvent  

### GAME_PAD_DISCONNECTED

Payload: `none`  
Flags: SynchronousEvent  

### GAME_PAD_POWER_CHANGED

Payload: `powerLevel: GamePadPowerLevel`  
Flags: SynchronousEvent  

## Tables

### GamePadAxisConfig (Structure)

- `axis: string`
- `shift: number?`
- `scale: number?`
- `deadzone: number?`
- `buttonThreshold: number?`
- `buttonPos: string?`
- `buttonNeg: string?`
- `comment: string?`

### GamePadConfig (Structure)

- `comment: string?`
- `name: string?`
- `configID: GamePadConfigID`
- `labelStyle: string?`
- `rawButtonMappings: table<GamePadRawButtonMapping>`
- `rawAxisMappings: table<GamePadRawAxisMapping>`
- `axisConfigs: table<GamePadAxisConfig>`
- `stickConfigs: table<GamePadStickConfig>`

### GamePadConfigID (Structure)

- `vendorID: number?`
- `productID: number?`

### GamePadMappedState (Structure)

- `name: string`
- `labelStyle: string`
- `buttonCount: number`
- `axisCount: number`
- `stickCount: number`
- `buttons: table<bool>`
- `axes: table<number>`
- `sticks: table<GamePadStick>`

### GamePadRawAxisMapping (Structure)

- `rawIndex: number`
- `axis: string?`
- `comment: string?`

### GamePadRawButtonMapping (Structure)

- `rawIndex: number`
- `button: string?`
- `axis: string?`
- `axisValue: number?`
- `comment: string?`

### GamePadRawState (Structure)

- `name: string`
- `vendorID: number`
- `productID: number`
- `rawButtonCount: number`
- `rawAxisCount: number`
- `rawButtons: table<bool>`
- `rawAxes: table<number>`

### GamePadStick (Structure)

- `x: number`
- `y: number`
- `len: number`

### GamePadStickConfig (Structure)

- `stick: string`
- `axisX: string?`
- `axisY: string?`
- `deadzone: number?`
- `deadzoneX: number?`
- `deadzoneY: number?`
- `comment: string?`
