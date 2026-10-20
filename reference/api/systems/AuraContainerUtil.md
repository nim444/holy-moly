# AuraContainerUtil

Type: System  
Namespace: `C_AuraContainerUtil`  
Environment: All

## Functions

### C_AuraContainerUtil.ProcessAuraTooltipBackdropOptions

```lua
C_AuraContainerUtil.ProcessAuraTooltipBackdropOptions(options: AuraContainerTooltipBackdropOptions) -> result: AuraContainerTooltipBackdropOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessAuraTooltipNineSliceOptions

```lua
C_AuraContainerUtil.ProcessAuraTooltipNineSliceOptions(options: AuraContainerTooltipNineSliceOptions) -> result: AuraContainerTooltipNineSliceOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessAuraTooltipTextureSliceOptions

```lua
C_AuraContainerUtil.ProcessAuraTooltipTextureSliceOptions(options: AuraContainerTooltipTextureSliceOptions) -> result: AuraContainerTooltipTextureSliceOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonApplicationBarOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonApplicationBarOptions(options: CustomAuraButtonApplicationBarOptions) -> result: CustomAuraButtonApplicationBarOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonApplicationCountOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonApplicationCountOptions(options: CustomAuraButtonApplicationCountOptions?) -> result: CustomAuraButtonApplicationCountOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonCasterNameOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonCasterNameOptions(options: CustomAuraButtonCasterNameOptions?) -> result: CustomAuraButtonCasterNameOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonDispelTypeTextOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonDispelTypeTextOptions(options: CustomAuraButtonDispelTypeTextOptions?) -> result: CustomAuraButtonDispelTypeTextOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonDispelTypeTextureOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonDispelTypeTextureOptions(options: CustomAuraButtonDispelTypeTextureOptions?) -> result: CustomAuraButtonDispelTypeTextureOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonDurationBarOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonDurationBarOptions(options: CustomAuraButtonDurationBarOptions?) -> result: CustomAuraButtonDurationBarOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AuraContainerUtil.ProcessCustomAuraButtonDurationTextOptions

```lua
C_AuraContainerUtil.ProcessCustomAuraButtonDurationTextOptions(options: CustomAuraButtonDurationTextOptions?) -> result: CustomAuraButtonDurationTextOptions
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### AuraContainerTooltipAnchorOffsets (Structure)

- `left: number = 0`
- `right: number = 0`
- `top: number = 0`
- `bottom: number = 0`

### AuraContainerTooltipBackdropInfo (Structure)

- `bgFile: TextureAssetDisk?` Optional background texture asset.
- `edgeFile: TextureAssetDisk?` Optional edge texture asset.
- `edgeSize: number?` Optional edge size.
- `insets: AuraContainerTooltipBackdropInsets?` Optional backdrop insets.
- `tile: bool?` If true, tiles the background texture.
- `tileEdge: bool?` If true, tiles the edge texture.
- `tileSize: number?` Optional tile size used when tiling the background texture.

### AuraContainerTooltipBackdropInsets (Structure)

- `left: number = 0`
- `right: number = 0`
- `top: number = 0`
- `bottom: number = 0`

### AuraContainerTooltipBackdropOptions (Structure)

- `backdropInfo: AuraContainerTooltipBackdropInfo` Backdrop information used to construct the tooltip backdrop.
- `borderColor: colorRGBA?` Optional color applied to the backdrop border.
- `centerColor: colorRGBA?` Optional color applied to the backdrop background.
- `anchorOffsets: AuraContainerTooltipAnchorOffsets?` Optional offsets applied to the backdrop's TOPLEFT and BOTTOMRIGHT anchor points.

### AuraContainerTooltipNineSliceOptions (Structure)

- `layoutName: cstring` Name of the NineSlice layout template to apply, such as 'TooltipDefaultLayout'.
- `borderColor: colorRGBA?` Optional color applied to the NineSlice border.
- `centerColor: colorRGBA?` Optional color applied to the NineSlice center region.
- `anchorOffsets: AuraContainerTooltipAnchorOffsets?` Optional offsets applied to the NineSlice's TOPLEFT and BOTTOMRIGHT anchor points.

### AuraContainerTooltipTextureSliceOptions (Structure)

- `asset: TextureAssetDisk` Texture asset (file path or atlas name) displayed by the slice.
- `sliceMargins: UITextureSliceMargins?` Optional texture slice margins. See Texture:SetTextureSliceMargins.
- `sliceMode: UITextureSliceMode?` Optional texture slice mode. See Texture:SetTextureSliceMode.
- `color: colorRGBA?` Optional vertex color applied to the texture.
- `anchorOffsets: AuraContainerTooltipAnchorOffsets?` Optional offsets applied to the slice's TOPLEFT and BOTTOMRIGHT anchor points.
- `drawLayer: DrawLayer?` Draw layer used when displaying the texture.
- `drawLayerSublevel: number = 0` Draw layer sublevel used when displaying the texture.

### CustomAuraButtonApplicationBarOptions (Structure)

- `maxApplications: number` The maximum number of aura applications represented by the bar.
- `minApplications: number = 0` The minimum number of aura applications represented by the bar.
- `interpolation: StatusBarInterpolation?` Optional interpolation method used when updating the bar value.

### CustomAuraButtonApplicationCountOptions (Structure)

- `formatter: NumericFormatter?` Optional formatter used to display aura application counts.

### CustomAuraButtonCasterNameOptions (Structure)

- `showRealmName: bool = false` If true, append realm names to the displayed string.
- `useClassColors: bool = false` If true, apply class coloring to the text.

### CustomAuraButtonDispelTypeTextOptions (Structure)

- `showWhenHarmful: bool = true` Shows the dispel type text for harmful auras.
- `showWhenHelpful: bool = false` Shows the dispel type text for helpful auras.
- `showWithoutDispelType: bool = false` Shows the dispel type text for auras that do not have a dispel type.
- `customDispelTextMap: table<stringView>?` Optional map of dispel type names to custom texts. An empty key can be used for auras without a dispel type.

### CustomAuraButtonDispelTypeTextureAsset (Structure)

- `asset: TextureAssetDisk` The texture file or atlas to use.
- `useAtlasSize: bool = false` Resizes the texture to the atlas dimensions. Ignored when asset does not name an atlas.
- `texCoords: CustomAuraButtonDispelTypeTextureTexCoords?` Optional texture coordinates used when asset does not name an atlas.

### CustomAuraButtonDispelTypeTextureOptions (Structure)

- `showAlways: bool = false` Shows the dispel type texture always, ignoring all other criteria.
- `showWhenHarmful: bool = true` Shows the dispel type texture for harmful auras.
- `showWhenHelpful: bool = false` Shows the dispel type texture for helpful auras.
- `showWithoutDispelType: bool = false` Shows the dispel type texture for auras that do not have a dispel type.
- `stealableFilter: CustomAuraButtonDispelTypeStealableFilter?` Restricts display of the dispel type texture to either stealable or non-stealable auras. If omitted, the dispel type texture may be shown for both.
- `style: CustomAuraButtonDispelTypeTextureStyle = BorderWithIcon` The texture style to use.
- `customDispelAssetMap: table<CustomAuraButtonDispelTypeTextureAsset>?` Optional map of dispel type names to custom texture assets. The "None" key represents auras without a dispel type. Only applies when using the CustomAsset style.
- `customDispelColorMap: table<colorRGB>?` Optional map of dispel type names to custom vertex colors. The "None" key represents auras without a dispel type.
- `customDispelColorCurve: LuaColorCurveObject?` Optional curve used to determine vertex colors from the aura's dispel type.

### CustomAuraButtonDispelTypeTextureTexCoords (Structure)

- `left: number = 0`
- `right: number = 1`
- `top: number = 0`
- `bottom: number = 1`

### CustomAuraButtonDurationBarOptions (Structure)

- `interpolation: StatusBarInterpolation?` The interpolation method used when updating the duration bar.
- `direction: StatusBarTimerDirection?` The direction in which the duration bar progresses.

### CustomAuraButtonDurationTextOptions (Structure)

- `binding: DurationTextBinding?` Optional duration text binding to use. The binding is copied before being associated with the aura button.
- `textFormatter: NumericFormatter?` Optional formatter used to display remaining duration values. Ignored if textFormat is specified.
- `textFormat: DurationTextBindingFormatOptions?` Optional text format configuration applied to the duration text binding. Overrides textFormatter when specified.
- `textColor: DurationTextBindingColorOptions?` Optional text color configuration applied to the duration text binding.
