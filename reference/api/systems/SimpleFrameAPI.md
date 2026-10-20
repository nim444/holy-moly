# SimpleFrameAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleFrameAPI:AbortDrag

```lua
SimpleFrameAPI:AbortDrag()
```

### SimpleFrameAPI:AddRoleset

```lua
SimpleFrameAPI:AddRoleset(roleset: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

Adds a roleset tag to this frame without removing existing ones.

### SimpleFrameAPI:CanChangeAttribute

```lua
SimpleFrameAPI:CanChangeAttribute() -> canChangeAttributes: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ObjectSecurity']  

### SimpleFrameAPI:ClearAlphaGradient

```lua
SimpleFrameAPI:ClearAlphaGradient()
```

### SimpleFrameAPI:ClearAttribute

```lua
SimpleFrameAPI:ClearAttribute(attributeName: cstring) -> cleared: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Attributes'], SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:ClearAttributes

```lua
SimpleFrameAPI:ClearAttributes()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:CreateFontString

```lua
SimpleFrameAPI:CreateFontString(name: cstring?, drawLayer: DrawLayer?, templateName: cstring?) -> line: SimpleFontString
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:CreateLine

```lua
SimpleFrameAPI:CreateLine(name: cstring?, drawLayer: DrawLayer?, templateName: cstring?, subLevel: number?) -> line: SimpleLine
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:CreateMaskTexture

```lua
SimpleFrameAPI:CreateMaskTexture(name: cstring?, drawLayer: DrawLayer?, templateName: cstring?, subLevel: number?) -> maskTexture: SimpleMaskTexture
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:CreateTexture

```lua
SimpleFrameAPI:CreateTexture(name: cstring?, drawLayer: DrawLayer?, templateName: cstring?, subLevel: number?) -> texture: SimpleTexture
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:CreateVectorGraphics

```lua
SimpleFrameAPI:CreateVectorGraphics(name: cstring?, drawLayer: DrawLayer?, templateName: cstring?, subLevel: number?) -> vectorGraphics: SimpleVectorGraphics
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:DesaturateHierarchy

```lua
SimpleFrameAPI:DesaturateHierarchy(desaturation: number, excludeRoot: bool = false)
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:DisableDrawLayer

```lua
SimpleFrameAPI:DisableDrawLayer(layer: DrawLayer)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:DoesClipChildren

```lua
SimpleFrameAPI:DoesClipChildren() -> clipsChildren: bool
```

### SimpleFrameAPI:DoesHyperlinkPropagateToParent

```lua
SimpleFrameAPI:DoesHyperlinkPropagateToParent() -> canPropagate: bool
```

Returns whether hyperlink events (ex. OnHyperlinkEnter, OnHyperlinkLeave, OnHyperlinkClick) are propagated to this frame's parent.

### SimpleFrameAPI:EnableDrawLayer

```lua
SimpleFrameAPI:EnableDrawLayer(layer: DrawLayer)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:EnableGamePadButton

```lua
SimpleFrameAPI:EnableGamePadButton(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:EnableGamePadStick

```lua
SimpleFrameAPI:EnableGamePadStick(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:EnableKeyboard

```lua
SimpleFrameAPI:EnableKeyboard(enable: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:ExecuteAttribute

```lua
SimpleFrameAPI:ExecuteAttribute(attributeName: cstring, arguments: cstring?) -> success: bool, returns: cstring?
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Attributes'], SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:GetAlpha

```lua
SimpleFrameAPI:GetAlpha() -> alpha: SingleColorValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Alpha']  

### SimpleFrameAPI:GetAttribute

```lua
SimpleFrameAPI:GetAttribute(attributeName: cstring) -> value: cstring
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Attributes'], ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:GetBoundsRect

```lua
SimpleFrameAPI:GetBoundsRect() -> left: uiUnit, bottom: uiUnit, width: uiUnit, height: uiUnit
```

### SimpleFrameAPI:GetChildren

```lua
SimpleFrameAPI:GetChildren() -> children: SimpleFrame
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleFrameAPI:GetClampRectInsets

```lua
SimpleFrameAPI:GetClampRectInsets() -> left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit
```

### SimpleFrameAPI:GetDontSavePosition

```lua
SimpleFrameAPI:GetDontSavePosition() -> dontSave: bool
```

### SimpleFrameAPI:GetEffectiveAlpha

```lua
SimpleFrameAPI:GetEffectiveAlpha() -> effectiveAlpha: SingleColorValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Alpha']  

Flags: RequiresScriptObjectAlphaAccess  

### SimpleFrameAPI:GetEffectiveScale

```lua
SimpleFrameAPI:GetEffectiveScale() -> effectiveScale: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Scale']  

### SimpleFrameAPI:GetEffectivelyFlattensRenderLayers

```lua
SimpleFrameAPI:GetEffectivelyFlattensRenderLayers() -> flatten: bool
```

### SimpleFrameAPI:GetFlattensRenderLayers

```lua
SimpleFrameAPI:GetFlattensRenderLayers() -> flatten: bool
```

### SimpleFrameAPI:GetFrameLevel

```lua
SimpleFrameAPI:GetFrameLevel() -> frameLevel: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.FrameLevel']  

### SimpleFrameAPI:GetFrameStrata

```lua
SimpleFrameAPI:GetFrameStrata() -> strata: FrameStrata
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.FrameStrata']  

### SimpleFrameAPI:GetHighestFrameLevel

```lua
SimpleFrameAPI:GetHighestFrameLevel(iterateAllChildren: bool = false) -> frameLevel: number
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Returns the highest framelevel of the frame and its first order children, or all children if iterateAllChildren is true.

### SimpleFrameAPI:GetHitRectInsets

```lua
SimpleFrameAPI:GetHitRectInsets() -> left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit
```

### SimpleFrameAPI:GetHyperlinksEnabled

```lua
SimpleFrameAPI:GetHyperlinksEnabled() -> enabled: bool
```

### SimpleFrameAPI:GetID

```lua
SimpleFrameAPI:GetID() -> id: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ID']  

### SimpleFrameAPI:GetNumChildren

```lua
SimpleFrameAPI:GetNumChildren() -> numChildren: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleFrameAPI:GetNumRegions

```lua
SimpleFrameAPI:GetNumRegions() -> numRegions: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleFrameAPI:GetOnUpdateMode

```lua
SimpleFrameAPI:GetOnUpdateMode() -> onUpdateMode: OnUpdateMode
```

Returns the currently configured OnUpdate script execution mode.

### SimpleFrameAPI:GetPropagateKeyboardInput

```lua
SimpleFrameAPI:GetPropagateKeyboardInput() -> propagate: bool
```

### SimpleFrameAPI:GetRaisedFrameLevel

```lua
SimpleFrameAPI:GetRaisedFrameLevel() -> frameLevel: number
```

### SimpleFrameAPI:GetRegions

```lua
SimpleFrameAPI:GetRegions() -> regions: SimpleRegion
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Hierarchy']  

### SimpleFrameAPI:GetResizeBounds

```lua
SimpleFrameAPI:GetResizeBounds() -> minWidth: uiUnit, minHeight: uiUnit, maxWidth: uiUnit, maxHeight: uiUnit
```

### SimpleFrameAPI:GetRolesetNames

```lua
SimpleFrameAPI:GetRolesetNames() -> rolesets: table<string>
```

Returns the roleset tags assigned to this frame. Returns a list containing 'roleless' if none are assigned.

### SimpleFrameAPI:GetScale

```lua
SimpleFrameAPI:GetScale() -> frameScale: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Scale']  

### SimpleFrameAPI:GetWindow

```lua
SimpleFrameAPI:GetWindow() -> window: SimpleWindow
```

### SimpleFrameAPI:HasAlphaGradient

```lua
SimpleFrameAPI:HasAlphaGradient() -> hasAlphaGradient: bool
```

### SimpleFrameAPI:HasFixedFrameLevel

```lua
SimpleFrameAPI:HasFixedFrameLevel() -> isFixed: bool
```

### SimpleFrameAPI:HasFixedFrameStrata

```lua
SimpleFrameAPI:HasFixedFrameStrata() -> isFixed: bool
```

### SimpleFrameAPI:Hide

```lua
SimpleFrameAPI:Hide()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:InterceptStartDrag

```lua
SimpleFrameAPI:InterceptStartDrag(delegate: SimpleFrame) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:IsClampedToScreen

```lua
SimpleFrameAPI:IsClampedToScreen() -> clampedToScreen: bool
```

### SimpleFrameAPI:IsDrawLayerEnabled

```lua
SimpleFrameAPI:IsDrawLayerEnabled(layer: DrawLayer) -> isEnabled: bool
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:IsEventRegistered

```lua
SimpleFrameAPI:IsEventRegistered(eventName: cstring) -> isRegistered: bool, units: UnitTokenType?
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:IsFrameBuffer

```lua
SimpleFrameAPI:IsFrameBuffer() -> isFrameBuffer: bool
```

### SimpleFrameAPI:IsGamePadButtonEnabled

```lua
SimpleFrameAPI:IsGamePadButtonEnabled() -> enabled: bool
```

### SimpleFrameAPI:IsGamePadStickEnabled

```lua
SimpleFrameAPI:IsGamePadStickEnabled() -> enabled: bool
```

### SimpleFrameAPI:IsHighlightLocked

```lua
SimpleFrameAPI:IsHighlightLocked() -> locked: bool
```

### SimpleFrameAPI:IsIgnoringChildrenForBounds

```lua
SimpleFrameAPI:IsIgnoringChildrenForBounds() -> ignore: bool
```

### SimpleFrameAPI:IsIgnoringParentAlpha

```lua
SimpleFrameAPI:IsIgnoringParentAlpha() -> ignore: bool
```

### SimpleFrameAPI:IsIgnoringParentScale

```lua
SimpleFrameAPI:IsIgnoringParentScale() -> ignore: bool
```

### SimpleFrameAPI:IsKeyboardEnabled

```lua
SimpleFrameAPI:IsKeyboardEnabled() -> enabled: bool
```

### SimpleFrameAPI:IsMovable

```lua
SimpleFrameAPI:IsMovable() -> isMovable: bool
```

### SimpleFrameAPI:IsObjectLoaded

```lua
SimpleFrameAPI:IsObjectLoaded() -> isLoaded: bool
```

### SimpleFrameAPI:IsResizable

```lua
SimpleFrameAPI:IsResizable() -> resizable: bool
```

### SimpleFrameAPI:IsRolesetFiltered

```lua
SimpleFrameAPI:IsRolesetFiltered() -> isRolesetFiltered: bool
```

Returns whether this frame is hidden because of its rolesets being filtered.

### SimpleFrameAPI:IsShown

```lua
SimpleFrameAPI:IsShown() -> isShown: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Shown']  

### SimpleFrameAPI:IsToplevel

```lua
SimpleFrameAPI:IsToplevel() -> isTopLevel: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Toplevel']  

### SimpleFrameAPI:IsUserPlaced

```lua
SimpleFrameAPI:IsUserPlaced() -> isUserPlaced: bool
```

### SimpleFrameAPI:IsUsingParentLevel

```lua
SimpleFrameAPI:IsUsingParentLevel() -> usingParentLevel: bool
```

### SimpleFrameAPI:IsVisible

```lua
SimpleFrameAPI:IsVisible() -> isVisible: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Shown']  

### SimpleFrameAPI:LockHighlight

```lua
SimpleFrameAPI:LockHighlight()
```

### SimpleFrameAPI:Lower

```lua
SimpleFrameAPI:Lower()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:Raise

```lua
SimpleFrameAPI:Raise()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:RegisterAllEvents

```lua
SimpleFrameAPI:RegisterAllEvents()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:RegisterEvent

```lua
SimpleFrameAPI:RegisterEvent(eventName: cstring) -> registered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:RegisterEventCallback

```lua
SimpleFrameAPI:RegisterEventCallback(eventName: cstring, cb: FrameEventCallbackType) -> registered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:RegisterForDrag

```lua
SimpleFrameAPI:RegisterForDrag(buttons: MouseButton)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:RegisterUnitEvent

```lua
SimpleFrameAPI:RegisterUnitEvent(eventName: cstring, units: UnitTokenType) -> registered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:RegisterUnitEventCallback

```lua
SimpleFrameAPI:RegisterUnitEventCallback(eventName: cstring, cb: FrameEventCallbackType, units: UnitTokenType) -> registered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:RemoveRoleset

```lua
SimpleFrameAPI:RemoveRoleset(roleset: string)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

Removes a roleset tag from this frame.

### SimpleFrameAPI:ResizeToBoundsRect

```lua
SimpleFrameAPI:ResizeToBoundsRect()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:RotateTextures

```lua
SimpleFrameAPI:RotateTextures(radians: number, x: number = 0.5, y: number = 0.5)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetAlpha

```lua
SimpleFrameAPI:SetAlpha(alpha: SingleColorValue)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleFrameAPI:SetAlphaFromBoolean

```lua
SimpleFrameAPI:SetAlphaFromBoolean(value: bool, alphaIfTrue: SingleColorValue = 255, alphaIfFalse: SingleColorValue = 0)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Alpha'], SecretArguments=AllowedWhenTainted  

### SimpleFrameAPI:SetAlphaGradient

```lua
SimpleFrameAPI:SetAlphaGradient(index: number, gradient: vector2)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetAttribute

```lua
SimpleFrameAPI:SetAttribute(attributeName: cstring, value: cstring)
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Attributes'], SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetAttributeNoHandler

```lua
SimpleFrameAPI:SetAttributeNoHandler(attributeName: cstring, value: cstring)
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Attributes'], SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetClampRectInsets

```lua
SimpleFrameAPI:SetClampRectInsets(left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetClampedToScreen

```lua
SimpleFrameAPI:SetClampedToScreen(clampedToScreen: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetClipsChildren

```lua
SimpleFrameAPI:SetClipsChildren(clipsChildren: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetDontSavePosition

```lua
SimpleFrameAPI:SetDontSavePosition(dontSave: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetDrawLayerEnabled

```lua
SimpleFrameAPI:SetDrawLayerEnabled(layer: DrawLayer, isEnabled: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetFixedFrameLevel

```lua
SimpleFrameAPI:SetFixedFrameLevel(isFixed: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetFixedFrameStrata

```lua
SimpleFrameAPI:SetFixedFrameStrata(isFixed: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetFlattensRenderLayers

```lua
SimpleFrameAPI:SetFlattensRenderLayers(flatten: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetFrameLevel

```lua
SimpleFrameAPI:SetFrameLevel(frameLevel: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.FrameLevel'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetFrameStrata

```lua
SimpleFrameAPI:SetFrameStrata(strata: FrameStrata)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.FrameStrata'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetHighlightLocked

```lua
SimpleFrameAPI:SetHighlightLocked(locked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetHitRectInsets

```lua
SimpleFrameAPI:SetHitRectInsets(left: uiUnit, right: uiUnit, top: uiUnit, bottom: uiUnit)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetHyperlinkPropagateToParent

```lua
SimpleFrameAPI:SetHyperlinkPropagateToParent(canPropagate: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.UntrustedScriptExecution'}]  

Enables or disables propagating hyperlink events (ex. OnHyperlinkEnter, OnHyperlinkLeave, OnHyperlinkClick) to this frame's parent.

### SimpleFrameAPI:SetHyperlinksEnabled

```lua
SimpleFrameAPI:SetHyperlinksEnabled(enabled: bool = false)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetID

```lua
SimpleFrameAPI:SetID(id: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.ID'], SecretArguments=AllowedWhenTainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetIgnoreParentAlpha

```lua
SimpleFrameAPI:SetIgnoreParentAlpha(ignore: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetIgnoreParentScale

```lua
SimpleFrameAPI:SetIgnoreParentScale(ignore: bool)
```

Secret: SecretArguments=NotAllowed  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetIgnoringChildrenForBounds

```lua
SimpleFrameAPI:SetIgnoringChildrenForBounds(ignore: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetIsFrameBuffer

```lua
SimpleFrameAPI:SetIsFrameBuffer(isFrameBuffer: bool)
```

Secret: SecretArguments=NotAllowed  

### SimpleFrameAPI:SetMovable

```lua
SimpleFrameAPI:SetMovable(movable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetOnUpdateMode

```lua
SimpleFrameAPI:SetOnUpdateMode(onUpdateMode: OnUpdateMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

Changes when OnUpdate scripts are executed for this object.

### SimpleFrameAPI:SetPropagateKeyboardInput

```lua
SimpleFrameAPI:SetPropagateKeyboardInput(propagate: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### SimpleFrameAPI:SetResizable

```lua
SimpleFrameAPI:SetResizable(resizable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetResizeBounds

```lua
SimpleFrameAPI:SetResizeBounds(minWidth: uiUnit, minHeight: uiUnit, maxWidth: uiUnit?, maxHeight: uiUnit?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetRolesets

```lua
SimpleFrameAPI:SetRolesets(rolesetsString: cstring?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

Sets the roleset tags for this frame, used by the UI mode system to gate visibility. Supports comma-separated names to assign multiple rolesets. Pass nil to clear.

### SimpleFrameAPI:SetScale

```lua
SimpleFrameAPI:SetScale(scale: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Scale'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetShown

```lua
SimpleFrameAPI:SetShown(shown: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Shown'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetToplevel

```lua
SimpleFrameAPI:SetToplevel(topLevel: bool)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Toplevel'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetUserPlaced

```lua
SimpleFrameAPI:SetUserPlaced(userPlaced: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:SetUsingParentLevel

```lua
SimpleFrameAPI:SetUsingParentLevel(usingParentLevel: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:SetWindow

```lua
SimpleFrameAPI:SetWindow(window: SimpleWindow?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleFrameAPI:Show

```lua
SimpleFrameAPI:Show()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:StartMoving

```lua
SimpleFrameAPI:StartMoving(alwaysStartFromMouse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:StartSizing

```lua
SimpleFrameAPI:StartSizing(resizePoint: FramePoint?, alwaysStartFromMouse: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleFrameAPI:StopMovingOrSizing

```lua
SimpleFrameAPI:StopMovingOrSizing()
```

Flags: IsProtectedFunction  

### SimpleFrameAPI:UnlockHighlight

```lua
SimpleFrameAPI:UnlockHighlight()
```

### SimpleFrameAPI:UnregisterAllEvents

```lua
SimpleFrameAPI:UnregisterAllEvents()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

### SimpleFrameAPI:UnregisterEvent

```lua
SimpleFrameAPI:UnregisterEvent(eventName: cstring) -> registered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}], AddsForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.EventRegistrations'}]  

## Tables

### CreateRegionParams (Structure)

- `name: cstring?`
- `drawLayer: DrawLayer?`
- `templateName: cstring?`
- `subLevel: number?`

### FrameEventCallbackType (CallbackType)
