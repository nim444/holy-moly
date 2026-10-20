# SimpleEditBoxAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleEditBoxAPI:AddHistoryLine

```lua
SimpleEditBoxAPI:AddHistoryLine(text: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:ClearFocus

```lua
SimpleEditBoxAPI:ClearFocus()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleEditBoxAPI:ClearHighlightText

```lua
SimpleEditBoxAPI:ClearHighlightText()
```

### SimpleEditBoxAPI:ClearHistory

```lua
SimpleEditBoxAPI:ClearHistory()
```

### SimpleEditBoxAPI:Disable

```lua
SimpleEditBoxAPI:Disable()
```

### SimpleEditBoxAPI:Enable

```lua
SimpleEditBoxAPI:Enable()
```

### SimpleEditBoxAPI:GetAltArrowKeyMode

```lua
SimpleEditBoxAPI:GetAltArrowKeyMode() -> altMode: bool
```

### SimpleEditBoxAPI:GetBlinkSpeed

```lua
SimpleEditBoxAPI:GetBlinkSpeed() -> cursorBlinkSpeedSec: number
```

### SimpleEditBoxAPI:GetCursorPosition

```lua
SimpleEditBoxAPI:GetCursorPosition() -> cursorPosition: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Cursor', 'Enum.SecretAspect.Text']  

### SimpleEditBoxAPI:GetDisplayText

```lua
SimpleEditBoxAPI:GetDisplayText() -> displayText: string
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

Flags: MayReturnNothing  

### SimpleEditBoxAPI:GetFont

```lua
SimpleEditBoxAPI:GetFont() -> name: cstring, fontHeight: uiUnit, flags: TBFFlags
```

### SimpleEditBoxAPI:GetFontObject

```lua
SimpleEditBoxAPI:GetFontObject() -> font: SimpleFont
```

### SimpleEditBoxAPI:GetHighlightColor

```lua
SimpleEditBoxAPI:GetHighlightColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleEditBoxAPI:GetHistoryLines

```lua
SimpleEditBoxAPI:GetHistoryLines() -> numHistoryLines: number
```

### SimpleEditBoxAPI:GetIndentedWordWrap

```lua
SimpleEditBoxAPI:GetIndentedWordWrap() -> isIndented: bool
```

### SimpleEditBoxAPI:GetInputLanguage

```lua
SimpleEditBoxAPI:GetInputLanguage() -> language: cstring
```

### SimpleEditBoxAPI:GetJustifyH

```lua
SimpleEditBoxAPI:GetJustifyH() -> justifyH: JustifyHorizontal
```

### SimpleEditBoxAPI:GetJustifyV

```lua
SimpleEditBoxAPI:GetJustifyV() -> justifyV: JustifyVertical
```

### SimpleEditBoxAPI:GetMaxBytes

```lua
SimpleEditBoxAPI:GetMaxBytes() -> maxBytes: number
```

### SimpleEditBoxAPI:GetMaxLetters

```lua
SimpleEditBoxAPI:GetMaxLetters() -> maxLetters: number
```

### SimpleEditBoxAPI:GetNumLetters

```lua
SimpleEditBoxAPI:GetNumLetters() -> numLetters: number
```

Flags: MayReturnNothing  

### SimpleEditBoxAPI:GetNumLines

```lua
SimpleEditBoxAPI:GetNumLines() -> lines: number
```

### SimpleEditBoxAPI:GetNumber

```lua
SimpleEditBoxAPI:GetNumber() -> number: number?
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

### SimpleEditBoxAPI:GetShadowColor

```lua
SimpleEditBoxAPI:GetShadowColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleEditBoxAPI:GetShadowOffset

```lua
SimpleEditBoxAPI:GetShadowOffset() -> offsetX: number, offsetY: number
```

### SimpleEditBoxAPI:GetSpacing

```lua
SimpleEditBoxAPI:GetSpacing() -> fontHeight: uiUnit
```

### SimpleEditBoxAPI:GetText

```lua
SimpleEditBoxAPI:GetText() -> text: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Text']  

### SimpleEditBoxAPI:GetTextColor

```lua
SimpleEditBoxAPI:GetTextColor() -> colorR: number, colorG: number, colorB: number, colorA: number
```

### SimpleEditBoxAPI:GetTextInsets

```lua
SimpleEditBoxAPI:GetTextInsets() -> left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit
```

### SimpleEditBoxAPI:GetUTF8CursorPosition

```lua
SimpleEditBoxAPI:GetUTF8CursorPosition() -> cursorPosition: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Cursor', 'Enum.SecretAspect.Text']  

### SimpleEditBoxAPI:GetVisibleTextByteLimit

```lua
SimpleEditBoxAPI:GetVisibleTextByteLimit() -> maxVisibleBytes: number
```

### SimpleEditBoxAPI:HasFocus

```lua
SimpleEditBoxAPI:HasFocus() -> hasFocus: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryFocus'}]  

### SimpleEditBoxAPI:HasText

```lua
SimpleEditBoxAPI:HasText() -> hasText: bool
```

### SimpleEditBoxAPI:HighlightText

```lua
SimpleEditBoxAPI:HighlightText(start: number = 0, stop: number = -1)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:Insert

```lua
SimpleEditBoxAPI:Insert(text: cstring)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:IsAlphabeticOnly

```lua
SimpleEditBoxAPI:IsAlphabeticOnly() -> enabled: bool
```

### SimpleEditBoxAPI:IsAutoFocus

```lua
SimpleEditBoxAPI:IsAutoFocus() -> autoFocus: bool
```

### SimpleEditBoxAPI:IsCountInvisibleLetters

```lua
SimpleEditBoxAPI:IsCountInvisibleLetters() -> countInvisibleLetters: bool
```

### SimpleEditBoxAPI:IsEnabled

```lua
SimpleEditBoxAPI:IsEnabled() -> isEnabled: bool
```

### SimpleEditBoxAPI:IsInIMECompositionMode

```lua
SimpleEditBoxAPI:IsInIMECompositionMode() -> isInIMECompositionMode: bool
```

### SimpleEditBoxAPI:IsMultiLine

```lua
SimpleEditBoxAPI:IsMultiLine() -> multiline: bool
```

### SimpleEditBoxAPI:IsNumeric

```lua
SimpleEditBoxAPI:IsNumeric() -> isNumeric: bool
```

### SimpleEditBoxAPI:IsNumericFullRange

```lua
SimpleEditBoxAPI:IsNumericFullRange() -> isNumeric: bool
```

### SimpleEditBoxAPI:IsPassword

```lua
SimpleEditBoxAPI:IsPassword() -> isPassword: bool
```

### SimpleEditBoxAPI:IsSecureText

```lua
SimpleEditBoxAPI:IsSecureText() -> isSecure: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.SecureText']  

### SimpleEditBoxAPI:ResetInputMode

```lua
SimpleEditBoxAPI:ResetInputMode()
```

### SimpleEditBoxAPI:SetAlphabeticOnly

```lua
SimpleEditBoxAPI:SetAlphabeticOnly(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetAltArrowKeyMode

```lua
SimpleEditBoxAPI:SetAltArrowKeyMode(altMode: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetAutoFocus

```lua
SimpleEditBoxAPI:SetAutoFocus(autoFocus: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetBlinkSpeed

```lua
SimpleEditBoxAPI:SetBlinkSpeed(cursorBlinkSpeedSec: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetCountInvisibleLetters

```lua
SimpleEditBoxAPI:SetCountInvisibleLetters(countInvisibleLetters: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetCursorPosition

```lua
SimpleEditBoxAPI:SetCursorPosition(cursorPosition: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Cursor'], SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleEditBoxAPI:SetEnabled

```lua
SimpleEditBoxAPI:SetEnabled(enabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetFocus

```lua
SimpleEditBoxAPI:SetFocus()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleEditBoxAPI:SetFont

```lua
SimpleEditBoxAPI:SetFont(fontFile: cstring, height: uiFontHeight, flags: TBFFlags) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidFontAsset, RequiresValidFontHeight  

### SimpleEditBoxAPI:SetFontObject

```lua
SimpleEditBoxAPI:SetFontObject(font: SimpleFont)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetHighlightColor

```lua
SimpleEditBoxAPI:SetHighlightColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetHistoryLines

```lua
SimpleEditBoxAPI:SetHistoryLines(numHistoryLines: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetIndentedWordWrap

```lua
SimpleEditBoxAPI:SetIndentedWordWrap(isIndented: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetJustifyH

```lua
SimpleEditBoxAPI:SetJustifyH(justifyH: JustifyHorizontal)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetJustifyV

```lua
SimpleEditBoxAPI:SetJustifyV(justifyV: JustifyVertical)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetMaxBytes

```lua
SimpleEditBoxAPI:SetMaxBytes(maxBytes: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetMaxLetters

```lua
SimpleEditBoxAPI:SetMaxLetters(maxLetters: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetMultiLine

```lua
SimpleEditBoxAPI:SetMultiLine(multiline: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetNumber

```lua
SimpleEditBoxAPI:SetNumber(number: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetNumeric

```lua
SimpleEditBoxAPI:SetNumeric(isNumeric: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetNumericFullRange

```lua
SimpleEditBoxAPI:SetNumericFullRange(isNumeric: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetPassword

```lua
SimpleEditBoxAPI:SetPassword(isPassword: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetSecureText

```lua
SimpleEditBoxAPI:SetSecureText(isSecure: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.SecureText'], SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetSecurityDisablePaste

```lua
SimpleEditBoxAPI:SetSecurityDisablePaste()
```

### SimpleEditBoxAPI:SetSecurityDisableSetText

```lua
SimpleEditBoxAPI:SetSecurityDisableSetText()
```

### SimpleEditBoxAPI:SetShadowColor

```lua
SimpleEditBoxAPI:SetShadowColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetShadowOffset

```lua
SimpleEditBoxAPI:SetShadowOffset(offsetX: number, offsetY: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetSpacing

```lua
SimpleEditBoxAPI:SetSpacing(fontHeight: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetText

```lua
SimpleEditBoxAPI:SetText(text: cstring)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Text'], SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetTextColor

```lua
SimpleEditBoxAPI:SetTextColor(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetTextInsets

```lua
SimpleEditBoxAPI:SetTextInsets(left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:SetVisibleTextByteLimit

```lua
SimpleEditBoxAPI:SetVisibleTextByteLimit(maxVisibleBytes: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleEditBoxAPI:ToggleInputLanguage

```lua
SimpleEditBoxAPI:ToggleInputLanguage()
```
