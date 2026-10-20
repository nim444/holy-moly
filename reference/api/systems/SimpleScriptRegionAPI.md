# SimpleScriptRegionAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleScriptRegionAPI:CanChangeProtectedState

```lua
SimpleScriptRegionAPI:CanChangeProtectedState() -> canChange: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

### SimpleScriptRegionAPI:CanPropagateMouseClicks

```lua
SimpleScriptRegionAPI:CanPropagateMouseClicks() -> canPropagate: bool
```

### SimpleScriptRegionAPI:CanPropagateMouseMotion

```lua
SimpleScriptRegionAPI:CanPropagateMouseMotion() -> canPropagate: bool
```

### SimpleScriptRegionAPI:ClearScripts

```lua
SimpleScriptRegionAPI:ClearScripts()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

Remove all script handlers set through Scripts in XML or SetScript in Lua

### SimpleScriptRegionAPI:CollapsesLayout

```lua
SimpleScriptRegionAPI:CollapsesLayout() -> collapsesLayout: bool
```

### SimpleScriptRegionAPI:EnableMouse

```lua
SimpleScriptRegionAPI:EnableMouse(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:EnableMouseMotion

```lua
SimpleScriptRegionAPI:EnableMouseMotion(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:EnableMouseWheel

```lua
SimpleScriptRegionAPI:EnableMouseWheel(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:FocusEnter

```lua
SimpleScriptRegionAPI:FocusEnter(fromMouseMotion: bool = true)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleScriptRegionAPI:FocusExit

```lua
SimpleScriptRegionAPI:FocusExit(fromMouseMotion: bool = true)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleScriptRegionAPI:GetBottom

```lua
SimpleScriptRegionAPI:GetBottom() -> bottom: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetCenter

```lua
SimpleScriptRegionAPI:GetCenter() -> x: uiUnit, y: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetHeight

```lua
SimpleScriptRegionAPI:GetHeight(ignoreRect: bool = false) -> height: uiUnit
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:GetLeft

```lua
SimpleScriptRegionAPI:GetLeft() -> left: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetRect

```lua
SimpleScriptRegionAPI:GetRect() -> left: uiUnit, bottom: uiUnit, width: uiUnit, height: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetRight

```lua
SimpleScriptRegionAPI:GetRight() -> right: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetRoundLayoutToNearestPixel

```lua
SimpleScriptRegionAPI:GetRoundLayoutToNearestPixel() -> enabled: bool
```

### SimpleScriptRegionAPI:GetScaledRect

```lua
SimpleScriptRegionAPI:GetScaledRect() -> left: uiUnit, bottom: uiUnit, width: uiUnit, height: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetScript

```lua
SimpleScriptRegionAPI:GetScript(scriptTypeName: ScriptTypeName, bindingType: ScriptBindingType = Extrinsic) -> script: LuaFunctionReference
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: RequiresSupportedScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleScriptRegionAPI:GetSize

```lua
SimpleScriptRegionAPI:GetSize(ignoreRect: bool = false) -> width: uiUnit, height: uiUnit
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:GetSourceLocation

```lua
SimpleScriptRegionAPI:GetSourceLocation() -> location: string
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectDebug']  

### SimpleScriptRegionAPI:GetTop

```lua
SimpleScriptRegionAPI:GetTop() -> top: uiUnit
```

Secret: SecretWhenAnchoringSecret  

Flags: MayReturnNothing  

### SimpleScriptRegionAPI:GetWidth

```lua
SimpleScriptRegionAPI:GetWidth(ignoreRect: bool = false) -> width: uiUnit
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:HasScript

```lua
SimpleScriptRegionAPI:HasScript(scriptName: cstring) -> hasScript: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectType'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:Hide

```lua
SimpleScriptRegionAPI:Hide()
```

### SimpleScriptRegionAPI:HookScript

```lua
SimpleScriptRegionAPI:HookScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference, bindingType: ScriptBindingType = Extrinsic) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleScriptRegionAPI:Intersects

```lua
SimpleScriptRegionAPI:Intersects(region: ScriptRegion) -> intersects: bool
```

Secret: SecretWhenAnchoringSecret, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:IsAnchoringRestricted

```lua
SimpleScriptRegionAPI:IsAnchoringRestricted() -> isRestricted: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

### SimpleScriptRegionAPI:IsAnchoringSecret

```lua
SimpleScriptRegionAPI:IsAnchoringSecret() -> isSecret: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecrets']  

### SimpleScriptRegionAPI:IsCollapsed

```lua
SimpleScriptRegionAPI:IsCollapsed() -> isCollapsed: bool
```

### SimpleScriptRegionAPI:IsDragging

```lua
SimpleScriptRegionAPI:IsDragging() -> isDragging: bool
```

### SimpleScriptRegionAPI:IsMouseClickEnabled

```lua
SimpleScriptRegionAPI:IsMouseClickEnabled() -> enabled: bool
```

### SimpleScriptRegionAPI:IsMouseEnabled

```lua
SimpleScriptRegionAPI:IsMouseEnabled() -> enabled: bool
```

### SimpleScriptRegionAPI:IsMouseMotionEnabled

```lua
SimpleScriptRegionAPI:IsMouseMotionEnabled() -> enabled: bool
```

### SimpleScriptRegionAPI:IsMouseMotionFocus

```lua
SimpleScriptRegionAPI:IsMouseMotionFocus() -> isMouseMotionFocus: bool
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryFocus'}]  

### SimpleScriptRegionAPI:IsMouseOver

```lua
SimpleScriptRegionAPI:IsMouseOver(offsetTop: uiUnit = 0, offsetBottom: uiUnit = 0, offsetLeft: uiUnit = 0, offsetRight: uiUnit = 0) -> isMouseOver: bool
```

Secret: SecretWhenAnchoringSecret, ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:IsMouseWheelEnabled

```lua
SimpleScriptRegionAPI:IsMouseWheelEnabled() -> enabled: bool
```

### SimpleScriptRegionAPI:IsProtected

```lua
SimpleScriptRegionAPI:IsProtected() -> isProtected: bool, isProtectedExplicitly: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

### SimpleScriptRegionAPI:IsRectValid

```lua
SimpleScriptRegionAPI:IsRectValid() -> isValid: bool
```

### SimpleScriptRegionAPI:IsShown

```lua
SimpleScriptRegionAPI:IsShown() -> isShown: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Shown']  

### SimpleScriptRegionAPI:IsVisible

```lua
SimpleScriptRegionAPI:IsVisible() -> isVisible: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Shown']  

### SimpleScriptRegionAPI:MouseDown

```lua
SimpleScriptRegionAPI:MouseDown(button: cstring = LeftButton)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleScriptRegionAPI:MouseUp

```lua
SimpleScriptRegionAPI:MouseUp(button: cstring = LeftButton)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptedInput'}]  

### SimpleScriptRegionAPI:SetCollapsesLayout

```lua
SimpleScriptRegionAPI:SetCollapsesLayout(collapsesLayout: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:SetMouseClickEnabled

```lua
SimpleScriptRegionAPI:SetMouseClickEnabled(enabled: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:SetMouseMotionEnabled

```lua
SimpleScriptRegionAPI:SetMouseMotionEnabled(enabled: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:SetParent

```lua
SimpleScriptRegionAPI:SetParent(parent: SimpleFrame?)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, CheckAllowChangeParent  

### SimpleScriptRegionAPI:SetPassThroughButtons

```lua
SimpleScriptRegionAPI:SetPassThroughButtons(buttons: MouseButton)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, HasRestrictions  

### SimpleScriptRegionAPI:SetPropagateMouseClicks

```lua
SimpleScriptRegionAPI:SetPropagateMouseClicks(propagate: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, HasRestrictions  

### SimpleScriptRegionAPI:SetPropagateMouseMotion

```lua
SimpleScriptRegionAPI:SetPropagateMouseMotion(propagate: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction, HasRestrictions  

### SimpleScriptRegionAPI:SetRoundLayoutToNearestPixel

```lua
SimpleScriptRegionAPI:SetRoundLayoutToNearestPixel(enabled: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleScriptRegionAPI:SetScript

```lua
SimpleScriptRegionAPI:SetScript(scriptTypeName: ScriptTypeName, script: LuaFunctionReference?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresAssignableScript, ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.ScriptBindings'}]  

### SimpleScriptRegionAPI:SetShown

```lua
SimpleScriptRegionAPI:SetShown(show: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Shown'], SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:ShouldButtonPassThrough

```lua
SimpleScriptRegionAPI:ShouldButtonPassThrough(button: MouseButton) -> shouldPassThrough: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleScriptRegionAPI:Show

```lua
SimpleScriptRegionAPI:Show()
```
