# SimpleFontAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleFontAPI:CopyFontObject

```lua
SimpleFontAPI:CopyFontObject(sourceFont: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:GetAlpha

```lua
SimpleFontAPI:GetAlpha() -> alpha: SingleColorValue
```

### SimpleFontAPI:GetFont

```lua
SimpleFontAPI:GetFont() -> fontFile: cstring, height: uiFontHeight, flags: TBFFlags
```

### SimpleFontAPI:GetFontHeight

```lua
SimpleFontAPI:GetFontHeight() -> height: number
```

Return is either in uiUnits or internal height due to fixedHeight.

### SimpleFontAPI:GetFontObject

```lua
SimpleFontAPI:GetFontObject() -> font: SimpleFont
```

### SimpleFontAPI:GetFontObjectForAlphabet

```lua
SimpleFontAPI:GetFontObjectForAlphabet(alphabet: FontAlphabet) -> font: SimpleFont
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:GetIndentedWordWrap

```lua
SimpleFontAPI:GetIndentedWordWrap() -> wordWrap: bool
```

### SimpleFontAPI:GetJustifyH

```lua
SimpleFontAPI:GetJustifyH() -> justifyH: JustifyHorizontal
```

### SimpleFontAPI:GetJustifyV

```lua
SimpleFontAPI:GetJustifyV() -> justifyV: JustifyVertical
```

### SimpleFontAPI:GetShadowColor

```lua
SimpleFontAPI:GetShadowColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleFontAPI:GetShadowOffset

```lua
SimpleFontAPI:GetShadowOffset() -> offsetX: number, offsetY: number
```

### SimpleFontAPI:GetSpacing

```lua
SimpleFontAPI:GetSpacing() -> spacing: uiUnit
```

### SimpleFontAPI:GetTextColor

```lua
SimpleFontAPI:GetTextColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleFontAPI:SetAlpha

```lua
SimpleFontAPI:SetAlpha(alpha: SingleColorValue)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetFont

```lua
SimpleFontAPI:SetFont(fontFile: cstring, height: uiFontHeight, flags: TBFFlags)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidFontAsset, RequiresValidFontHeight  

### SimpleFontAPI:SetFontHeight

```lua
SimpleFontAPI:SetFontHeight(height: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Preserves all flags, does correct height conversion due to fixedHeight.

### SimpleFontAPI:SetFontObject

```lua
SimpleFontAPI:SetFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetIndentedWordWrap

```lua
SimpleFontAPI:SetIndentedWordWrap(wordWrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetJustifyH

```lua
SimpleFontAPI:SetJustifyH(justifyH: JustifyHorizontal)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetJustifyV

```lua
SimpleFontAPI:SetJustifyV(justifyV: JustifyVertical)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetShadowColor

```lua
SimpleFontAPI:SetShadowColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetShadowOffset

```lua
SimpleFontAPI:SetShadowOffset(offsetX: number, offsetY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetSpacing

```lua
SimpleFontAPI:SetSpacing(spacing: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontAPI:SetTextColor

```lua
SimpleFontAPI:SetTextColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted
