# FrameAPITooltip

Type: ScriptObject  
Environment: All

## Functions

### FrameAPITooltip:AddFontStrings

```lua
FrameAPITooltip:AddFontStrings(leftFontString: SimpleFontString, rightFontString: SimpleFontString)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: CheckAllowChangeParent, ChecksForbiddenAspects=[{'Argument': 'leftFontString', 'Aspect': 'Enum.ForbiddenAspect.RemoveSecretAspects'}, {'Argument': 'rightFontString', 'Aspect': 'Enum.ForbiddenAspect.RemoveSecretAspects'}]  

### FrameAPITooltip:ClearPadding

```lua
FrameAPITooltip:ClearPadding()
```

Set all padding values to 0.0 and remove the Padding SecretAspect.

### FrameAPITooltip:GetLeftLine

```lua
FrameAPITooltip:GetLeftLine(line: luaIndex) -> leftFontString: SimpleFontString
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPITooltip:GetMinimumWidth

```lua
FrameAPITooltip:GetMinimumWidth() -> width: number, forced: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.MinimumWidth']  

### FrameAPITooltip:GetPadding

```lua
FrameAPITooltip:GetPadding() -> right: number, bottom: number, left: number, top: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Padding']  

### FrameAPITooltip:GetRightLine

```lua
FrameAPITooltip:GetRightLine(line: luaIndex) -> rightFontString: SimpleFontString
```

Secret: SecretArguments=AllowedWhenUntainted  

### FrameAPITooltip:SetMinimumWidth

```lua
FrameAPITooltip:SetMinimumWidth(width: number, force: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.MinimumWidth'], SecretArguments=AllowedWhenUntainted  

### FrameAPITooltip:SetPadding

```lua
FrameAPITooltip:SetPadding(right: number, bottom: number, left: number?, top: number?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Padding'], SecretArguments=AllowedWhenUntainted  

### FrameAPITooltip:SetText

```lua
FrameAPITooltip:SetText(text: cstring, colorR: number, colorG: number, colorB: number, alpha: number = 1, wrap: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenTainted
