# GenericWidgetDisplay

Type: System  
Namespace: `C_GenericWidgetDisplay`  
Environment: All

## Functions

### C_GenericWidgetDisplay.Acknowledge

```lua
C_GenericWidgetDisplay.Acknowledge()
```

### C_GenericWidgetDisplay.Close

```lua
C_GenericWidgetDisplay.Close()
```

## Events

### GENERIC_WIDGET_DISPLAY_SHOW

Payload: `info: GenericWidgetDisplayFrameInfo`  
Flags: SynchronousEvent  

## Tables

### GenericWidgetDisplayFrameInfo (Structure)

- `uiWidgetSetID: number?`
- `uiTextureKit: textureKit?`
- `title: string?`
- `frameWidth: number`
- `frameHeight: number`
- `extraButtonText: string?`
- `closeButtonText: string?`
