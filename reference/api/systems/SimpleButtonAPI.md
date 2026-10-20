# SimpleButtonAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleButtonAPI:ClearDisabledTexture

```lua
SimpleButtonAPI:ClearDisabledTexture()
```

### SimpleButtonAPI:ClearHighlightTexture

```lua
SimpleButtonAPI:ClearHighlightTexture()
```

### SimpleButtonAPI:ClearNormalTexture

```lua
SimpleButtonAPI:ClearNormalTexture()
```

### SimpleButtonAPI:ClearPushedTexture

```lua
SimpleButtonAPI:ClearPushedTexture()
```

### SimpleButtonAPI:Click

```lua
SimpleButtonAPI:Click(button: cstring = LeftButton, isDown: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleButtonAPI:Disable

```lua
SimpleButtonAPI:Disable()
```

Flags: IsProtectedFunction  

### SimpleButtonAPI:Enable

```lua
SimpleButtonAPI:Enable()
```

Flags: IsProtectedFunction  

### SimpleButtonAPI:GetButtonState

```lua
SimpleButtonAPI:GetButtonState() -> buttonState: SimpleButtonStateToken
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ButtonState']  

### SimpleButtonAPI:GetDisabledFontObject

```lua
SimpleButtonAPI:GetDisabledFontObject() -> font: SimpleFont
```

### SimpleButtonAPI:GetDisabledTexture

```lua
SimpleButtonAPI:GetDisabledTexture() -> texture: SimpleTexture
```

### SimpleButtonAPI:GetFontString

```lua
SimpleButtonAPI:GetFontString() -> fontString: SimpleFontString
```

### SimpleButtonAPI:GetHighlightFontObject

```lua
SimpleButtonAPI:GetHighlightFontObject() -> font: SimpleFont
```

### SimpleButtonAPI:GetHighlightTexture

```lua
SimpleButtonAPI:GetHighlightTexture() -> texture: SimpleTexture
```

### SimpleButtonAPI:GetMotionScriptsWhileDisabled

```lua
SimpleButtonAPI:GetMotionScriptsWhileDisabled() -> motionScriptsWhileDisabled: bool
```

### SimpleButtonAPI:GetNormalFontObject

```lua
SimpleButtonAPI:GetNormalFontObject() -> font: SimpleFont
```

### SimpleButtonAPI:GetNormalTexture

```lua
SimpleButtonAPI:GetNormalTexture() -> texture: SimpleTexture
```

### SimpleButtonAPI:GetPushedTextOffset

```lua
SimpleButtonAPI:GetPushedTextOffset() -> offsetX: uiUnit, offsetY: uiUnit
```

### SimpleButtonAPI:GetPushedTexture

```lua
SimpleButtonAPI:GetPushedTexture() -> texture: SimpleTexture
```

### SimpleButtonAPI:GetText

```lua
SimpleButtonAPI:GetText() -> text: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

### SimpleButtonAPI:GetTextHeight

```lua
SimpleButtonAPI:GetTextHeight() -> height: uiUnit
```

### SimpleButtonAPI:GetTextWidth

```lua
SimpleButtonAPI:GetTextWidth() -> width: uiUnit
```

### SimpleButtonAPI:IsEnabled

```lua
SimpleButtonAPI:IsEnabled() -> isEnabled: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ButtonState']  

### SimpleButtonAPI:RegisterForClicks

```lua
SimpleButtonAPI:RegisterForClicks(buttons: ClickButton)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleButtonAPI:RegisterForMouse

```lua
SimpleButtonAPI:RegisterForMouse(buttons: ClickButton)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleButtonAPI:SetButtonState

```lua
SimpleButtonAPI:SetButtonState(buttonState: SimpleButtonStateToken, lock: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.ButtonState'], SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetDisabledAtlas

```lua
SimpleButtonAPI:SetDisabledAtlas(atlas: textureAtlas)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetDisabledFontObject

```lua
SimpleButtonAPI:SetDisabledFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetDisabledTexture

```lua
SimpleButtonAPI:SetDisabledTexture(asset: TextureAsset)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleButtonAPI:SetEnabled

```lua
SimpleButtonAPI:SetEnabled(enabled: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.ButtonState'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleButtonAPI:SetFontString

```lua
SimpleButtonAPI:SetFontString(fontString: SimpleFontString)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleButtonAPI:SetFormattedText

```lua
SimpleButtonAPI:SetFormattedText(text: cstring)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetHighlightAtlas

```lua
SimpleButtonAPI:SetHighlightAtlas(atlas: textureAtlas, blendMode: BlendMode?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetHighlightFontObject

```lua
SimpleButtonAPI:SetHighlightFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetHighlightTexture

```lua
SimpleButtonAPI:SetHighlightTexture(asset: TextureAsset, blendMode: BlendMode?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleButtonAPI:SetMotionScriptsWhileDisabled

```lua
SimpleButtonAPI:SetMotionScriptsWhileDisabled(motionScriptsWhileDisabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetNormalAtlas

```lua
SimpleButtonAPI:SetNormalAtlas(atlas: textureAtlas)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetNormalFontObject

```lua
SimpleButtonAPI:SetNormalFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetNormalTexture

```lua
SimpleButtonAPI:SetNormalTexture(asset: TextureAsset)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleButtonAPI:SetPushedAtlas

```lua
SimpleButtonAPI:SetPushedAtlas(atlas: textureAtlas)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetPushedTextOffset

```lua
SimpleButtonAPI:SetPushedTextOffset(offsetX: uiUnit, offsetY: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleButtonAPI:SetPushedTexture

```lua
SimpleButtonAPI:SetPushedTexture(asset: TextureAsset)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent  

### SimpleButtonAPI:SetText

```lua
SimpleButtonAPI:SetText(text: cstring = )
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted
