# SimpleTextureBaseAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleTextureBaseAPI:ClearRadialProgressBar

```lua
SimpleTextureBaseAPI:ClearRadialProgressBar()
```

Disable radial progress bar rendering and restore standard texture display.

### SimpleTextureBaseAPI:ClearSVG

```lua
SimpleTextureBaseAPI:ClearSVG()
```

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.SetTexture'}]  

### SimpleTextureBaseAPI:ClearTextureSlice

```lua
SimpleTextureBaseAPI:ClearTextureSlice()
```

Disable shader based nineslice texture rendering. Since SetAtlas will automatically load slice data for the atlas from the DB, can be useful if you want to disable nineslice after setting an atlas.

### SimpleTextureBaseAPI:ClearVertexOffsets

```lua
SimpleTextureBaseAPI:ClearVertexOffsets()
```

### SimpleTextureBaseAPI:GetAtlas

```lua
SimpleTextureBaseAPI:GetAtlas() -> atlas: textureAtlas
```

### SimpleTextureBaseAPI:GetBlendMode

```lua
SimpleTextureBaseAPI:GetBlendMode() -> blendMode: BlendMode
```

### SimpleTextureBaseAPI:GetDesaturation

```lua
SimpleTextureBaseAPI:GetDesaturation() -> desaturation: normalizedValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Desaturation']  

### SimpleTextureBaseAPI:GetHorizTile

```lua
SimpleTextureBaseAPI:GetHorizTile() -> tiling: bool
```

### SimpleTextureBaseAPI:GetRadialProgressBarEndOffset

```lua
SimpleTextureBaseAPI:GetRadialProgressBarEndOffset() -> offset: normalizedValue
```

Returns the end angle offset of the radial progress bar as a normalized value (0 to 1).

### SimpleTextureBaseAPI:GetRadialProgressBarFeather

```lua
SimpleTextureBaseAPI:GetRadialProgressBarFeather() -> feather: normalizedValue
```

Returns the feather/blur amount applied to the radial progress bar edge.

### SimpleTextureBaseAPI:GetRadialProgressBarPercent

```lua
SimpleTextureBaseAPI:GetRadialProgressBarPercent() -> percent: normalizedValue
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.RadialProgress']  

Returns the fill percentage of the radial progress bar (0 to 1).

### SimpleTextureBaseAPI:GetRadialProgressBarReverse

```lua
SimpleTextureBaseAPI:GetRadialProgressBarReverse() -> reverse: bool
```

Returns whether the radial progress bar fills in reverse (counterclockwise) direction.

### SimpleTextureBaseAPI:GetRadialProgressBarStartOffset

```lua
SimpleTextureBaseAPI:GetRadialProgressBarStartOffset() -> offset: normalizedValue
```

Returns the start angle offset of the radial progress bar as a normalized value (0 to 1).

### SimpleTextureBaseAPI:GetRotation

```lua
SimpleTextureBaseAPI:GetRotation() -> radians: number, normalizedRotationPoint: vector2
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Rotation']  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.QueryRotation'}]  

### SimpleTextureBaseAPI:GetTexCoord

```lua
SimpleTextureBaseAPI:GetTexCoord() -> ulX: number, ulY: number, llX: number, llY: number, urX: number, urY: number, lrX: number, lrY: number
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.TexCoords']  

### SimpleTextureBaseAPI:GetTexelSnappingBias

```lua
SimpleTextureBaseAPI:GetTexelSnappingBias() -> bias: normalizedValue
```

### SimpleTextureBaseAPI:GetTexture

```lua
SimpleTextureBaseAPI:GetTexture() -> textureFile: cstring?
```

### SimpleTextureBaseAPI:GetTextureFileID

```lua
SimpleTextureBaseAPI:GetTextureFileID() -> textureFile: fileID
```

### SimpleTextureBaseAPI:GetTextureFilePath

```lua
SimpleTextureBaseAPI:GetTextureFilePath() -> textureFile: cstring?
```

### SimpleTextureBaseAPI:GetTextureSliceMargins

```lua
SimpleTextureBaseAPI:GetTextureSliceMargins() -> left: number, top: number, right: number, bottom: number
```

Flags: MayReturnNothing  

### SimpleTextureBaseAPI:GetTextureSliceMode

```lua
SimpleTextureBaseAPI:GetTextureSliceMode() -> sliceMode: UITextureSliceMode
```

Flags: MayReturnNothing  

### SimpleTextureBaseAPI:GetVertTile

```lua
SimpleTextureBaseAPI:GetVertTile() -> tiling: bool
```

### SimpleTextureBaseAPI:GetVertexOffset

```lua
SimpleTextureBaseAPI:GetVertexOffset(vertexIndex: luaIndex) -> offsetX: uiUnit, offsetY: uiUnit
```

Secret: ConstSecretAccessor, SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:IsBlockingLoadRequested

```lua
SimpleTextureBaseAPI:IsBlockingLoadRequested() -> blocking: bool
```

### SimpleTextureBaseAPI:IsDesaturated

```lua
SimpleTextureBaseAPI:IsDesaturated() -> desaturated: bool
```

Secret: SecretReturnsForAspect=['Enum.SecretAspect.Desaturation']  

Flags: RequiresScriptObjectDesaturationAccess  

### SimpleTextureBaseAPI:IsSnappingToPixelGrid

```lua
SimpleTextureBaseAPI:IsSnappingToPixelGrid() -> snap: bool
```

### SimpleTextureBaseAPI:ResetTexCoord

```lua
SimpleTextureBaseAPI:ResetTexCoord()
```

### SimpleTextureBaseAPI:SetAtlas

```lua
SimpleTextureBaseAPI:SetAtlas(atlas: textureAtlas, useAtlasSize: bool = false, filterMode: FilterMode?, resetTexCoords: bool?, wrapModeHorizontal: cstring?, wrapModeVertical: cstring?)
```

Secret: SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetBlendMode

```lua
SimpleTextureBaseAPI:SetBlendMode(blendMode: BlendMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetBlockingLoadsRequested

```lua
SimpleTextureBaseAPI:SetBlockingLoadsRequested(blocking: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetColorTexture

```lua
SimpleTextureBaseAPI:SetColorTexture(colorR: number, colorG: number, colorB: number, a: SingleColorValue?)
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.SetTexture'}]  

### SimpleTextureBaseAPI:SetDesaturated

```lua
SimpleTextureBaseAPI:SetDesaturated(desaturated: bool = false)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Desaturation'], SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetDesaturation

```lua
SimpleTextureBaseAPI:SetDesaturation(desaturation: normalizedValue)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Desaturation'], SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetGradient

```lua
SimpleTextureBaseAPI:SetGradient(orientation: Orientation, minColor: colorRGBA, maxColor: colorRGBA)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetHorizTile

```lua
SimpleTextureBaseAPI:SetHorizTile(tiling: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetMask

```lua
SimpleTextureBaseAPI:SetMask(file: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetRadialProgressBarEndOffset

```lua
SimpleTextureBaseAPI:SetRadialProgressBarEndOffset(offset: normalizedValue)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the end angle offset of the radial progress bar as a normalized value (0 to 1).

### SimpleTextureBaseAPI:SetRadialProgressBarFeather

```lua
SimpleTextureBaseAPI:SetRadialProgressBarFeather(feather: normalizedValue)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the feather/blur amount applied to the radial progress bar edge (higher = more gradual falloff).

### SimpleTextureBaseAPI:SetRadialProgressBarPercent

```lua
SimpleTextureBaseAPI:SetRadialProgressBarPercent(percent: normalizedValue)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.RadialProgress'], SecretArguments=AllowedWhenTainted  

Sets the fill percentage of the radial progress bar (0 to 1).

### SimpleTextureBaseAPI:SetRadialProgressBarReverse

```lua
SimpleTextureBaseAPI:SetRadialProgressBarReverse(reverse: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets whether the radial progress bar fills in reverse (counterclockwise) direction.

### SimpleTextureBaseAPI:SetRadialProgressBarStartOffset

```lua
SimpleTextureBaseAPI:SetRadialProgressBarStartOffset(offset: normalizedValue)
```

Secret: SecretArguments=AllowedWhenUntainted  

Sets the start angle offset of the radial progress bar as a normalized value (0 to 1), where 0 is at the bottom.

### SimpleTextureBaseAPI:SetRotation

```lua
SimpleTextureBaseAPI:SetRotation(radians: number, normalizedRotationPoint: vector2?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.Rotation'], SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetSVG

```lua
SimpleTextureBaseAPI:SetSVG(svgAsset: FileAsset) -> success: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: ChecksForbiddenAspects=[{'Argument': 'self', 'Aspect': 'Enum.ForbiddenAspect.SetTexture'}]  

### SimpleTextureBaseAPI:SetSnapToPixelGrid

```lua
SimpleTextureBaseAPI:SetSnapToPixelGrid(snap: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetSpriteSheetCell

```lua
SimpleTextureBaseAPI:SetSpriteSheetCell(cell: luaIndex, numRows: number, numColumns: number, cellWidth: number?, cellHeight: number?)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.TexCoords'], SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetTexCoord

```lua
SimpleTextureBaseAPI:SetTexCoord(left: number, right: number, bottom: number, top: number)
```

Secret: SecretArgumentsAddAspect=['Enum.SecretAspect.TexCoords'], SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetTexelSnappingBias

```lua
SimpleTextureBaseAPI:SetTexelSnappingBias(bias: normalizedValue)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetTexture

```lua
SimpleTextureBaseAPI:SetTexture(textureAsset: cstring?, wrapModeHorizontal: cstring?, wrapModeVertical: cstring?, filterMode: cstring?) -> success: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### SimpleTextureBaseAPI:SetTextureSliceMargins

```lua
SimpleTextureBaseAPI:SetTextureSliceMargins(left: number, top: number, right: number, bottom: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Enables nineslice texture rendering using the specified pixel margins. Preferred over legacy nineslice approach that uses 9 separate textures.

### SimpleTextureBaseAPI:SetTextureSliceMode

```lua
SimpleTextureBaseAPI:SetTextureSliceMode(sliceMode: UITextureSliceMode)
```

Secret: SecretArguments=AllowedWhenUntainted  

Controls whether the center and sides are Stretched or Tiled when using nineslice texture rendering. Defaults to Stretched.

### SimpleTextureBaseAPI:SetVertTile

```lua
SimpleTextureBaseAPI:SetVertTile(tiling: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleTextureBaseAPI:SetVertexOffset

```lua
SimpleTextureBaseAPI:SetVertexOffset(vertexIndex: luaIndex, offsetX: uiUnit, offsetY: uiUnit)
```

Secret: SecretArguments=AllowedWhenUntainted
