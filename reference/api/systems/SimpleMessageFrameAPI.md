# SimpleMessageFrameAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleMessageFrameAPI:AddMessage

```lua
SimpleMessageFrameAPI:AddMessage(text: cstring, colorR: number, colorG: number, colorB: number, a: SingleColorValue?, messageID: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:Clear

```lua
SimpleMessageFrameAPI:Clear()
```

### SimpleMessageFrameAPI:GetFadeDuration

```lua
SimpleMessageFrameAPI:GetFadeDuration() -> fadeDurationSeconds: number
```

### SimpleMessageFrameAPI:GetFadePower

```lua
SimpleMessageFrameAPI:GetFadePower() -> fadePower: number
```

### SimpleMessageFrameAPI:GetFading

```lua
SimpleMessageFrameAPI:GetFading() -> isFading: bool
```

### SimpleMessageFrameAPI:GetFont

```lua
SimpleMessageFrameAPI:GetFont() -> fontFile: cstring, height: uiFontHeight, flags: TBFFlags
```

### SimpleMessageFrameAPI:GetFontObject

```lua
SimpleMessageFrameAPI:GetFontObject() -> font: SimpleFont
```

### SimpleMessageFrameAPI:GetFontStringByID

```lua
SimpleMessageFrameAPI:GetFontStringByID(messageID: number) -> fontString: SimpleFontString
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:GetIndentedWordWrap

```lua
SimpleMessageFrameAPI:GetIndentedWordWrap() -> wordWrap: bool
```

### SimpleMessageFrameAPI:GetInsertMode

```lua
SimpleMessageFrameAPI:GetInsertMode() -> mode: InsertMode
```

### SimpleMessageFrameAPI:GetJustifyH

```lua
SimpleMessageFrameAPI:GetJustifyH() -> justifyH: JustifyHorizontal
```

### SimpleMessageFrameAPI:GetJustifyV

```lua
SimpleMessageFrameAPI:GetJustifyV() -> justifyV: JustifyVertical
```

### SimpleMessageFrameAPI:GetShadowColor

```lua
SimpleMessageFrameAPI:GetShadowColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleMessageFrameAPI:GetShadowOffset

```lua
SimpleMessageFrameAPI:GetShadowOffset() -> offsetX: number, offsetY: number
```

### SimpleMessageFrameAPI:GetSpacing

```lua
SimpleMessageFrameAPI:GetSpacing() -> spacing: uiUnit
```

### SimpleMessageFrameAPI:GetTextColor

```lua
SimpleMessageFrameAPI:GetTextColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleMessageFrameAPI:GetTimeVisible

```lua
SimpleMessageFrameAPI:GetTimeVisible() -> timeVisibleSeconds: number
```

### SimpleMessageFrameAPI:HasMessageByID

```lua
SimpleMessageFrameAPI:HasMessageByID(messageID: number) -> hasMessage: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:ResetMessageFadeByID

```lua
SimpleMessageFrameAPI:ResetMessageFadeByID(messageID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetFadeDuration

```lua
SimpleMessageFrameAPI:SetFadeDuration(fadeDurationSeconds: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetFadePower

```lua
SimpleMessageFrameAPI:SetFadePower(fadePower: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetFading

```lua
SimpleMessageFrameAPI:SetFading(fading: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetFont

```lua
SimpleMessageFrameAPI:SetFont(fontFile: cstring, height: uiFontHeight, flags: TBFFlags)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidFontAsset, RequiresValidFontHeight  

### SimpleMessageFrameAPI:SetFontObject

```lua
SimpleMessageFrameAPI:SetFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetIndentedWordWrap

```lua
SimpleMessageFrameAPI:SetIndentedWordWrap(wordWrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetInsertMode

```lua
SimpleMessageFrameAPI:SetInsertMode(mode: InsertMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetJustifyH

```lua
SimpleMessageFrameAPI:SetJustifyH(justifyH: JustifyHorizontal)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetJustifyV

```lua
SimpleMessageFrameAPI:SetJustifyV(justifyV: JustifyVertical)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetShadowColor

```lua
SimpleMessageFrameAPI:SetShadowColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetShadowOffset

```lua
SimpleMessageFrameAPI:SetShadowOffset(offsetX: number, offsetY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetSpacing

```lua
SimpleMessageFrameAPI:SetSpacing(spacing: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetTextColor

```lua
SimpleMessageFrameAPI:SetTextColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleMessageFrameAPI:SetTimeVisible

```lua
SimpleMessageFrameAPI:SetTimeVisible(timeVisibleSeconds: number)
```

Secret: SecretArguments=AllowedWhenUntainted
