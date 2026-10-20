# ColorOverrides

Type: System  
Namespace: `C_ColorOverrides`  
Environment: All

## Functions

### C_ColorOverrides.ClearColorOverrides

```lua
C_ColorOverrides.ClearColorOverrides()
```

### C_ColorOverrides.GetColorForQuality

```lua
C_ColorOverrides.GetColorForQuality(quality: ItemQuality) -> color: colorRGBA
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ColorOverrides.GetColorOverrideInfo

```lua
C_ColorOverrides.GetColorOverrideInfo(overrideType: ColorOverride) -> overrideInfo: ColorOverrideInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ColorOverrides.GetDefaultColorForQuality

```lua
C_ColorOverrides.GetDefaultColorForQuality(quality: ItemQuality) -> color: colorRGBA
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ColorOverrides.RemoveColorOverride

```lua
C_ColorOverrides.RemoveColorOverride(overrideType: ColorOverride)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ColorOverrides.SetColorOverride

```lua
C_ColorOverrides.SetColorOverride(overrideType: ColorOverride, color: colorRGBA)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### COLOR_OVERRIDE_UPDATED

Payload: `overrideType: ColorOverride`  
Flags: SynchronousEvent  

### COLOR_OVERRIDES_RESET

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ColorOverrideInfo (Structure)

- `overrideType: ColorOverride`
- `overrideColor: colorRGB`
- `overrideColorString: string`
