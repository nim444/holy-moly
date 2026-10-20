# SimpleFontStringAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleFontStringAPI:CalculateScreenAreaFromCharacterSpan

```lua
SimpleFontStringAPI:CalculateScreenAreaFromCharacterSpan(leftIndex: luaIndex, rightIndex: luaIndex) -> areas: table<uiBoundsRect>?
```

Secret: SecretWhenAnchoringSecret, SecretReturnsForAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

Flags: RequiresFontStringTextAccess  

### SimpleFontStringAPI:CanNonSpaceWrap

```lua
SimpleFontStringAPI:CanNonSpaceWrap() -> wrap: bool
```

### SimpleFontStringAPI:CanWordWrap

```lua
SimpleFontStringAPI:CanWordWrap() -> wrap: bool
```

### SimpleFontStringAPI:ClearAlphaGradient

```lua
SimpleFontStringAPI:ClearAlphaGradient()
```

### SimpleFontStringAPI:ClearText

```lua
SimpleFontStringAPI:ClearText()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.RemoveSecretAspects'}]  

Sets text to an empty string and removes the Text secret aspect.

### SimpleFontStringAPI:FindCharacterIndexAtCoordinate

```lua
SimpleFontStringAPI:FindCharacterIndexAtCoordinate(x: uiUnit, y: uiUnit) -> characterIndex: luaIndex, inside: bool
```

Secret: SecretWhenAnchoringSecret, SecretReturnsForAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresFontStringTextAccess  

### SimpleFontStringAPI:GetAlphaGradient

```lua
SimpleFontStringAPI:GetAlphaGradient() -> start: number, length: number
```

### SimpleFontStringAPI:GetFieldSize

```lua
SimpleFontStringAPI:GetFieldSize() -> fieldSize: number
```

### SimpleFontStringAPI:GetFont

```lua
SimpleFontStringAPI:GetFont() -> fontFile: FontAsset?, fontHeight: uiUnit, flags: TBFFlags
```

### SimpleFontStringAPI:GetFontHeight

```lua
SimpleFontStringAPI:GetFontHeight(calculated: bool = true) -> height: uiUnit
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:GetFontObject

```lua
SimpleFontStringAPI:GetFontObject() -> font: SimpleFont
```

### SimpleFontStringAPI:GetIndentedWordWrap

```lua
SimpleFontStringAPI:GetIndentedWordWrap() -> wrap: bool
```

### SimpleFontStringAPI:GetJustifyH

```lua
SimpleFontStringAPI:GetJustifyH() -> justifyH: JustifyHorizontal
```

### SimpleFontStringAPI:GetJustifyV

```lua
SimpleFontStringAPI:GetJustifyV() -> justifyV: JustifyVertical
```

### SimpleFontStringAPI:GetLineHeight

```lua
SimpleFontStringAPI:GetLineHeight() -> lineHeight: uiUnit
```

### SimpleFontStringAPI:GetMaxLines

```lua
SimpleFontStringAPI:GetMaxLines() -> maxLines: number
```

### SimpleFontStringAPI:GetNumLines

```lua
SimpleFontStringAPI:GetNumLines() -> numLines: number
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:GetRotation

```lua
SimpleFontStringAPI:GetRotation() -> radians: number
```

### SimpleFontStringAPI:GetScaleAnimationMode

```lua
SimpleFontStringAPI:GetScaleAnimationMode() -> scaleAnimationMode: FontStringScaleAnimationMode
```

### SimpleFontStringAPI:GetShadowColor

```lua
SimpleFontStringAPI:GetShadowColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleFontStringAPI:GetShadowOffset

```lua
SimpleFontStringAPI:GetShadowOffset() -> offsetX: number, offsetY: number
```

### SimpleFontStringAPI:GetSmoothScaling

```lua
SimpleFontStringAPI:GetSmoothScaling() -> smoothScaling: bool
```

### SimpleFontStringAPI:GetSpacing

```lua
SimpleFontStringAPI:GetSpacing() -> spacing: uiUnit
```

### SimpleFontStringAPI:GetStringHeight

```lua
SimpleFontStringAPI:GetStringHeight() -> height: uiUnit
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:GetStringWidth

```lua
SimpleFontStringAPI:GetStringWidth() -> width: uiUnit
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:GetText

```lua
SimpleFontStringAPI:GetText() -> text: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

### SimpleFontStringAPI:GetTextColor

```lua
SimpleFontStringAPI:GetTextColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha']  

Flags: MayReturnNothing  

### SimpleFontStringAPI:GetTextScale

```lua
SimpleFontStringAPI:GetTextScale() -> textScale: number
```

### SimpleFontStringAPI:GetUnboundedStringWidth

```lua
SimpleFontStringAPI:GetUnboundedStringWidth() -> width: uiUnit
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:GetUnboundedStringWidthForText

```lua
SimpleFontStringAPI:GetUnboundedStringWidthForText(text: cstring) -> width: uiUnit
```

Secret: SecretWhenAnchoringSecret, SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:GetWrappedWidth

```lua
SimpleFontStringAPI:GetWrappedWidth() -> width: uiUnit
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:IsTruncated

```lua
SimpleFontStringAPI:IsTruncated() -> isTruncated: bool
```

Secret: SecretWhenAnchoringSecret  

### SimpleFontStringAPI:OnColorsUpdated

```lua
SimpleFontStringAPI:OnColorsUpdated()
```

### SimpleFontStringAPI:SetAlphaGradient

```lua
SimpleFontStringAPI:SetAlphaGradient(start: number, length: number) -> isWithinText: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetDesaturateEmbeddedTextures

```lua
SimpleFontStringAPI:SetDesaturateEmbeddedTextures(desaturate: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetFixedColor

```lua
SimpleFontStringAPI:SetFixedColor(fixedColor: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetFont

```lua
SimpleFontStringAPI:SetFont(fontFile: FontAsset, fontHeight: uiFontHeight, flags: TBFFlags?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidFontAsset, RequiresValidFontHeight  

### SimpleFontStringAPI:SetFontHeight

```lua
SimpleFontStringAPI:SetFontHeight(height: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetFontObject

```lua
SimpleFontStringAPI:SetFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetFormattedText

```lua
SimpleFontStringAPI:SetFormattedText(text: cstring)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenTainted  

### SimpleFontStringAPI:SetIndentedWordWrap

```lua
SimpleFontStringAPI:SetIndentedWordWrap(wrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetJustifyH

```lua
SimpleFontStringAPI:SetJustifyH(justifyH: JustifyHorizontal)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetJustifyV

```lua
SimpleFontStringAPI:SetJustifyV(justifyV: JustifyVertical)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetMaxLines

```lua
SimpleFontStringAPI:SetMaxLines(maxLines: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetNonSpaceWrap

```lua
SimpleFontStringAPI:SetNonSpaceWrap(wrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetRotation

```lua
SimpleFontStringAPI:SetRotation(radians: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetScaleAnimationMode

```lua
SimpleFontStringAPI:SetScaleAnimationMode(scaleAnimationMode: FontStringScaleAnimationMode)
```

Secret: SecretArguments=NotAllowed  

### SimpleFontStringAPI:SetShadowColor

```lua
SimpleFontStringAPI:SetShadowColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetShadowOffset

```lua
SimpleFontStringAPI:SetShadowOffset(offsetX: number, offsetY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetSmoothScaling

```lua
SimpleFontStringAPI:SetSmoothScaling(smoothScaling: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetSpacing

```lua
SimpleFontStringAPI:SetSpacing(spacing: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetText

```lua
SimpleFontStringAPI:SetText(text: cstring = )
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenTainted  

### SimpleFontStringAPI:SetTextColor

```lua
SimpleFontStringAPI:SetTextColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.VertexColor', 'Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleFontStringAPI:SetTextHeight

```lua
SimpleFontStringAPI:SetTextHeight(height: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetTextScale

```lua
SimpleFontStringAPI:SetTextScale(textScale: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFontStringAPI:SetTextToFit

```lua
SimpleFontStringAPI:SetTextToFit(text: cstring = )
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenTainted  

### SimpleFontStringAPI:SetWordWrap

```lua
SimpleFontStringAPI:SetWordWrap(wrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted
