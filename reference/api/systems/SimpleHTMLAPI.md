# SimpleHTMLAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleHTMLAPI:GetContentHeight

```lua
SimpleHTMLAPI:GetContentHeight() -> height: uiUnit
```

### SimpleHTMLAPI:GetFont

```lua
SimpleHTMLAPI:GetFont(textType: HTMLTextType) -> fontFile: cstring, height: uiFontHeight, flags: TBFFlags
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetFontObject

```lua
SimpleHTMLAPI:GetFontObject(textType: HTMLTextType) -> font: SimpleFont
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetHyperlinkFormat

```lua
SimpleHTMLAPI:GetHyperlinkFormat() -> format: cstring
```

### SimpleHTMLAPI:GetIndentedWordWrap

```lua
SimpleHTMLAPI:GetIndentedWordWrap(textType: HTMLTextType) -> wordWrap: bool
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetJustifyH

```lua
SimpleHTMLAPI:GetJustifyH(textType: HTMLTextType) -> justifyH: JustifyHorizontal
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetJustifyV

```lua
SimpleHTMLAPI:GetJustifyV(textType: HTMLTextType) -> justifyV: JustifyVertical
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetShadowColor

```lua
SimpleHTMLAPI:GetShadowColor(textType: HTMLTextType) -> colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetShadowOffset

```lua
SimpleHTMLAPI:GetShadowOffset(textType: HTMLTextType) -> offsetX: number, offsetY: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetSpacing

```lua
SimpleHTMLAPI:GetSpacing(textType: HTMLTextType) -> spacing: uiUnit
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetTextColor

```lua
SimpleHTMLAPI:GetTextColor(textType: HTMLTextType) -> colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:GetTextData

```lua
SimpleHTMLAPI:GetTextData() -> content: table<HTMLContentNode>
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

### SimpleHTMLAPI:SetFont

```lua
SimpleHTMLAPI:SetFont(textType: HTMLTextType, fontFile: cstring, height: uiFontHeight, flags: TBFFlags)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidFontAsset, RequiresValidFontHeight  

### SimpleHTMLAPI:SetFontObject

```lua
SimpleHTMLAPI:SetFontObject(textType: HTMLTextType, font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetHyperlinkFormat

```lua
SimpleHTMLAPI:SetHyperlinkFormat(format: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetIndentedWordWrap

```lua
SimpleHTMLAPI:SetIndentedWordWrap(textType: HTMLTextType, wordWrap: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetJustifyH

```lua
SimpleHTMLAPI:SetJustifyH(textType: HTMLTextType, justifyH: JustifyHorizontal)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetJustifyV

```lua
SimpleHTMLAPI:SetJustifyV(textType: HTMLTextType, justifyV: JustifyVertical)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetShadowColor

```lua
SimpleHTMLAPI:SetShadowColor(textType: HTMLTextType, colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetShadowOffset

```lua
SimpleHTMLAPI:SetShadowOffset(textType: HTMLTextType, offsetX: number, offsetY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetSpacing

```lua
SimpleHTMLAPI:SetSpacing(textType: HTMLTextType, spacing: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetText

```lua
SimpleHTMLAPI:SetText(text: cstring, ignoreMarkup: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

### SimpleHTMLAPI:SetTextColor

```lua
SimpleHTMLAPI:SetTextColor(textType: HTMLTextType, colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted
