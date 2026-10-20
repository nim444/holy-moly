# CovenantPreview

Type: System  
Namespace: `C_CovenantPreview`  
Environment: All

## Functions

### C_CovenantPreview.CloseFromUI

```lua
C_CovenantPreview.CloseFromUI()
```

### C_CovenantPreview.GetCovenantInfoForPlayerChoiceResponseID

```lua
C_CovenantPreview.GetCovenantInfoForPlayerChoiceResponseID(playerChoiceResponseID: number) -> previewInfo: CovenantPreviewInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### COVENANT_PREVIEW_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### COVENANT_PREVIEW_OPEN

Payload: `previewInfo: CovenantPreviewInfo`  
Flags: SynchronousEvent  

## Tables

### CovenantAbilityInfo (Structure)

- `spellID: number`
- `type: CovenantAbilityType`

### CovenantFeatureInfo (Structure)

- `name: cstring`
- `description: cstring`
- `texture: number`

### CovenantPreviewInfo (Structure)

- `textureKit: textureKit`
- `transmogSetID: number`
- `mountID: number`
- `covenantName: string`
- `covenantZone: string`
- `description: string`
- `covenantCrest: textureAtlas`
- `covenantAbilities: table<CovenantAbilityInfo>`
- `fromPlayerChoice: bool`
- `covenantSoulbinds: table<CovenantSoulbindInfo>`
- `featureInfo: CovenantFeatureInfo`

### CovenantSoulbindInfo (Structure)

- `spellID: number`
- `uiTextureKit: textureKit`
- `name: cstring`
- `description: cstring`
- `sortOrder: number`
