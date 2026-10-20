# FrameAPINamePlate

Type: ScriptObject  
Environment: All

## Functions

### FrameAPINamePlate:CanChangeHitTestPoints

```lua
FrameAPINamePlate:CanChangeHitTestPoints() -> canChangeHitTestPoints: bool
```

Returns true if this nameplate permits changes to its hit-test points. Updates are normally blocked for tainted code during combat, except on the tick a unit is first assigned or when untainted code updates hit-test points on the same tick.

### FrameAPINamePlate:ClearAllHitTestPoints

```lua
FrameAPINamePlate:ClearAllHitTestPoints()
```

Flags: RequiresCanChangeHitTestPoints  

Clears the anchor points that determine where the mouse interacts with the nameplate.

### FrameAPINamePlate:GetHitTestPoints

```lua
FrameAPINamePlate:GetHitTestPoints() -> anchors: table<AnchorBinding>
```

Returns the anchor points that determine where the mouse interacts with the nameplate.

### FrameAPINamePlate:SetAllHitTestPoints

```lua
FrameAPINamePlate:SetAllHitTestPoints(relativeTo: ScriptRegion)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresCanChangeHitTestPoints  

Sets the anchor points that determine where the mouse interacts with the nameplate to fully encompass the target region.

### FrameAPINamePlate:SetHitTestPoints

```lua
FrameAPINamePlate:SetHitTestPoints(anchors: table<AnchorBinding>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresCanChangeHitTestPoints  

Sets the anchor points that determine where the mouse interacts with the nameplate.

### FrameAPINamePlate:SetStackingBoundsFrame

```lua
FrameAPINamePlate:SetStackingBoundsFrame(frame: SimpleFrame)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Preconditions

- `RequiresCanChangeHitTestPoints` (FailureMode=Error)
