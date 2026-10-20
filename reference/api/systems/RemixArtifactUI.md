# RemixArtifactUI

Type: System  
Namespace: `C_RemixArtifactUI`  
Environment: All

## Functions

### C_RemixArtifactUI.ClearRemixArtifactItem

```lua
C_RemixArtifactUI.ClearRemixArtifactItem()
```

### C_RemixArtifactUI.GetAppearanceInfoByID

```lua
C_RemixArtifactUI.GetAppearanceInfoByID(artifactAppearanceID: number) -> uiCameraID: number, altHandUICameraID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_RemixArtifactUI.GetArtifactArtInfo

```lua
C_RemixArtifactUI.GetArtifactArtInfo() -> artifactArtInfo: RemixArtifactArtInfo
```

Flags: MayReturnNothing  

### C_RemixArtifactUI.GetArtifactItemInfo

```lua
C_RemixArtifactUI.GetArtifactItemInfo() -> itemID: number, altItemID: number?, artifactAppearanceID: number, appearanceModID: number, itemAppearanceID: number?, altItemAppearanceID: number?, altOnTop: bool
```

Flags: MayReturnNothing  

### C_RemixArtifactUI.GetCurrArtifactItemID

```lua
C_RemixArtifactUI.GetCurrArtifactItemID() -> reqitemID: number?
```

### C_RemixArtifactUI.GetCurrItemSpecIndex

```lua
C_RemixArtifactUI.GetCurrItemSpecIndex() -> specIndex: luaIndex?
```

### C_RemixArtifactUI.GetCurrTraitTreeID

```lua
C_RemixArtifactUI.GetCurrTraitTreeID() -> traitTreeID: number?
```

### C_RemixArtifactUI.ItemInSlotIsRemixArtifact

```lua
C_RemixArtifactUI.ItemInSlotIsRemixArtifact(invSlot: luaIndex) -> isRemixArtifact: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### REMIX_ARTIFACT_ITEM_SPECS_LOADED

Payload: `success: bool`  
Flags: SynchronousEvent  

### REMIX_ARTIFACT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### RemixArtifactAppearanceInfo (Structure)

- `uiCameraID: number`
- `altHandUICameraID: number?`

### RemixArtifactArtInfo (Structure)

- `textureKit: textureKit`
- `titleName: string`
- `uiModelSceneID: number`
- `spellVisualKitID: number`

### RemixArtifactInfo (Structure)

- `itemID: number`
- `altItemID: number?`
- `artifactAppearanceID: number`
- `appearanceModID: number`
- `itemAppearanceID: number?`
- `altItemAppearanceID: number?`
- `altOnTop: bool`
