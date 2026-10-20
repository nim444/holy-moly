# SimpleScrollFrameAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleScrollFrameAPI:GetHorizontalScroll

```lua
SimpleScrollFrameAPI:GetHorizontalScroll() -> offset: uiUnit
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ScrollOffset']  

### SimpleScrollFrameAPI:GetHorizontalScrollRange

```lua
SimpleScrollFrameAPI:GetHorizontalScrollRange() -> range: uiUnit
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ScrollRange']  

### SimpleScrollFrameAPI:GetScrollChild

```lua
SimpleScrollFrameAPI:GetScrollChild() -> scrollChild: SimpleFrame
```

### SimpleScrollFrameAPI:GetVerticalScroll

```lua
SimpleScrollFrameAPI:GetVerticalScroll() -> offset: uiUnit
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ScrollOffset']  

### SimpleScrollFrameAPI:GetVerticalScrollRange

```lua
SimpleScrollFrameAPI:GetVerticalScrollRange() -> range: uiUnit
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.ScrollRange']  

### SimpleScrollFrameAPI:SetHorizontalScroll

```lua
SimpleScrollFrameAPI:SetHorizontalScroll(offset: uiUnit)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.ScrollOffset'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScrollFrameAPI:SetScrollChild

```lua
SimpleScrollFrameAPI:SetScrollChild(scrollChild: SimpleFrame)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction, CheckAllowChangeParent  

### SimpleScrollFrameAPI:SetVerticalScroll

```lua
SimpleScrollFrameAPI:SetVerticalScroll(offset: uiUnit)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.ScrollOffset'], SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### SimpleScrollFrameAPI:UpdateScrollChildRect

```lua
SimpleScrollFrameAPI:UpdateScrollChildRect()
```
