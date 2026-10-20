# PingManagerSecure

Type: System  
Namespace: `C_PingSecure`  
Environment: SecureOnly

## Functions

### C_PingSecure.ClearHitTestPingInfo

```lua
C_PingSecure.ClearHitTestPingInfo()
```

Flags: HasRestrictions  

### C_PingSecure.CreateFrame

```lua
C_PingSecure.CreateFrame()
```

Flags: HasRestrictions  

### C_PingSecure.DisplayError

```lua
C_PingSecure.DisplayError(error: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.GetTargetPingReceiver

```lua
C_PingSecure.GetTargetPingReceiver(mousePosX: number, mousePosY: number) -> frame: ScriptRegion
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SendHitTestPing

```lua
C_PingSecure.SendHitTestPing(type: PingSubjectType?) -> result: SendPingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SendPlayerItemPing

```lua
C_PingSecure.SendPlayerItemPing(itemID: number) -> result: SendPingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SendPlayerSpellCategoryPing

```lua
C_PingSecure.SendPlayerSpellCategoryPing(spellCategoryID: number) -> result: SendPingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SendPlayerSpellPing

```lua
C_PingSecure.SendPlayerSpellPing(spellID: number) -> result: SendPingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SendUnitPing

```lua
C_PingSecure.SendUnitPing(target: WOWGUID, type: PingSubjectType?, isPlayerResource: bool?) -> result: SendPingResult
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetHitTestPingTarget

```lua
C_PingSecure.SetHitTestPingTarget(mousePosX: number, mousePosY: number, forcePointPing: bool?) -> state: PingSetTargetState
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetHitTestTargetAndSendPing

```lua
C_PingSecure.SetHitTestTargetAndSendPing() -> result: SendPingResult
```

Flags: HasRestrictions  

### C_PingSecure.SetPendingPingOffScreenCallback

```lua
C_PingSecure.SetPendingPingOffScreenCallback(cb: PendingPingOffScreenCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetPingCooldownStartedCallback

```lua
C_PingSecure.SetPingCooldownStartedCallback(cb: PingCooldownStartedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetPingPinFrameAddedCallback

```lua
C_PingSecure.SetPingPinFrameAddedCallback(cb: PingPinFrameAddedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetPingPinFrameRemovedCallback

```lua
C_PingSecure.SetPingPinFrameRemovedCallback(cb: PingPinFrameRemovedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetPingPinFrameScreenClampStateUpdatedCallback

```lua
C_PingSecure.SetPingPinFrameScreenClampStateUpdatedCallback(cb: PingPinFrameScreenClampStateUpdatedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetPingRadialWheelCreatedCallback

```lua
C_PingSecure.SetPingRadialWheelCreatedCallback(cb: PingRadialWheelCreatedCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetSendMacroPingCallback

```lua
C_PingSecure.SetSendMacroPingCallback(cb: SendMacroPingCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_PingSecure.SetTogglePingListenerCallback

```lua
C_PingSecure.SetTogglePingListenerCallback(cb: TogglePingListenerCallback)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

## Events

### UNIT_PING_PIN_ADDED

Payload: `guid: WOWGUID, uiTextureKit: textureKit`  
Flags: HasRestrictions, SynchronousEvent  

### UNIT_PING_PIN_REMOVED

Payload: `guid: WOWGUID`  
Flags: HasRestrictions, SynchronousEvent  

## Tables

### PingActionCooldownUIInfo (Structure)

- `durationMs: number = 0`
- `remainingMs: number = 0`

### PingActionUIInfo (Structure)

- `spellID: number = 0`
- `itemID: number = 0`
- `textureFileDataID: number = 0`
- `cooldownInfo: PingActionCooldownUIInfo?`
- `spellCategoryID: number = 0`

### SendPingResult (Structure)

- `type: PingSubjectType?`
- `result: PingResult`

### PendingPingOffScreenCallback (CallbackType)


### PingCooldownStartedCallback (CallbackType)

- `info: PingCooldownInfo`

### PingPinFrameAddedCallback (CallbackType)

- `region: ScriptRegion`
- `uiTextureKit: textureKit`
- `isWorldPoint: bool`
- `actionInfo: PingActionUIInfo?`

### PingPinFrameRemovedCallback (CallbackType)

- `region: ScriptRegion`

### PingPinFrameScreenClampStateUpdatedCallback (CallbackType)

- `region: ScriptRegion`
- `state: bool`

### PingRadialWheelCreatedCallback (CallbackType)

- `region: ScriptRegion`

### SendMacroPingCallback (CallbackType)

- `macroInfo: PingMacroInfo`

### TogglePingListenerCallback (CallbackType)

- `down: bool`
