# UIEventToastManagerInfo

Type: System  
Namespace: `C_EventToastManager`  
Environment: All

## Functions

### C_EventToastManager.GetLevelUpDisplayToastsFromLevel

```lua
C_EventToastManager.GetLevelUpDisplayToastsFromLevel(level: number) -> toastInfo: table<EventToastInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_EventToastManager.GetNextToastToDisplay

```lua
C_EventToastManager.GetNextToastToDisplay() -> toastInfo: EventToastInfo
```

Flags: MayReturnNothing  

### C_EventToastManager.RemoveCurrentToast

```lua
C_EventToastManager.RemoveCurrentToast()
```

## Events

### DISPLAY_EVENT_TOAST_LINK

Payload: `link: string`  
Flags: SynchronousEvent  

### DISPLAY_EVENT_TOASTS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### EventToastInfo (Structure)

- `eventToastID: number`
- `title: string`
- `subtitle: string`
- `instructionText: string`
- `iconFileID: fileID`
- `subIcon: textureAtlas?`
- `link: string`
- `qualityString: string?`
- `quality: number?`
- `eventType: EventToastEventType`
- `displayType: EventToastDisplayType`
- `uiTextureKit: textureKit`
- `sortOrder: number`
- `time: number?`
- `uiWidgetSetID: number?`
- `extraUiWidgetSetID: number?`
- `titleTooltip: string?`
- `subtitleTooltip: string?`
- `titleTooltipUiWidgetSetID: number?`
- `subtitleTooltipUiWidgetSetID: number?`
- `showSoundKitID: number?`
- `hideSoundKitID: number?`
- `colorTint: colorRGB?`
- `flags: number`
