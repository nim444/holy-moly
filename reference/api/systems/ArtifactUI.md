# ArtifactUI

Type: System  
Namespace: `C_ArtifactUI`  
Environment: All

## Functions

### C_ArtifactUI.AddPower

```lua
C_ArtifactUI.AddPower(powerID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.ApplyCursorRelicToSlot

```lua
C_ArtifactUI.ApplyCursorRelicToSlot(relicSlotIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.CanApplyArtifactRelic

```lua
C_ArtifactUI.CanApplyArtifactRelic(relicItemID: number, onlyUnlocked: bool) -> canApply: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.CanApplyCursorRelicToSlot

```lua
C_ArtifactUI.CanApplyCursorRelicToSlot(relicSlotIndex: luaIndex) -> canApply: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.CanApplyRelicItemIDToEquippedArtifactSlot

```lua
C_ArtifactUI.CanApplyRelicItemIDToEquippedArtifactSlot(relicItemID: number, relicSlotIndex: luaIndex) -> canApply: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.CanApplyRelicItemIDToSlot

```lua
C_ArtifactUI.CanApplyRelicItemIDToSlot(relicItemID: number, relicSlotIndex: luaIndex) -> canApply: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.CheckRespecNPC

```lua
C_ArtifactUI.CheckRespecNPC() -> canRespec: bool
```

### C_ArtifactUI.Clear

```lua
C_ArtifactUI.Clear()
```

### C_ArtifactUI.ClearForgeCamera

```lua
C_ArtifactUI.ClearForgeCamera()
```

### C_ArtifactUI.ConfirmRespec

```lua
C_ArtifactUI.ConfirmRespec()
```

### C_ArtifactUI.DoesEquippedArtifactHaveAnyRelicsSlotted

```lua
C_ArtifactUI.DoesEquippedArtifactHaveAnyRelicsSlotted() -> hasAnyRelicsSlotted: bool
```

### C_ArtifactUI.GetAppearanceInfo

```lua
C_ArtifactUI.GetAppearanceInfo(appearanceSetIndex: number, appearanceIndex: number) -> artifactAppearanceID: number, appearanceName: string, displayIndex: number, unlocked: bool, failureDescription: string?, uiCameraID: number, altHandCameraID: number?, swatchColorR: number, swatchColorG: number, swatchColorB: number, modelOpacity: number, modelSaturation: number, obtainable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetAppearanceInfoByID

```lua
C_ArtifactUI.GetAppearanceInfoByID(artifactAppearanceID: number) -> artifactAppearanceSetID: number, artifactAppearanceID: number, appearanceName: string, displayIndex: number, unlocked: bool, failureDescription: string?, uiCameraID: number, altHandCameraID: number?, swatchColorR: number, swatchColorG: number, swatchColorB: number, modelOpacity: number, modelSaturation: number, obtainable: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetAppearanceSetInfo

```lua
C_ArtifactUI.GetAppearanceSetInfo(appearanceSetIndex: number) -> artifactAppearanceSetID: number, appearanceSetName: string, appearanceSetDescription: string, numAppearances: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetArtifactArtInfo

```lua
C_ArtifactUI.GetArtifactArtInfo() -> artifactArtInfo: ArtifactArtInfo
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetArtifactInfo

```lua
C_ArtifactUI.GetArtifactInfo() -> itemID: number, altItemID: number?, name: string, icon: fileID, xp: number, pointsSpent: number, quality: number, artifactAppearanceID: number, appearanceModID: number, itemAppearanceID: number?, altItemAppearanceID: number?, altOnTop: bool, tier: ArtifactTiers
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetArtifactItemID

```lua
C_ArtifactUI.GetArtifactItemID() -> itemID: number
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetArtifactTier

```lua
C_ArtifactUI.GetArtifactTier() -> tier: ArtifactTiers?
```

### C_ArtifactUI.GetArtifactXPRewardTargetInfo

```lua
C_ArtifactUI.GetArtifactXPRewardTargetInfo(artifactCategoryID: number) -> name: string, icon: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetCostForPointAtRank

```lua
C_ArtifactUI.GetCostForPointAtRank(rank: number, tier: ArtifactTiers) -> cost: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetEquippedArtifactArtInfo

```lua
C_ArtifactUI.GetEquippedArtifactArtInfo() -> artifactArtInfo: ArtifactArtInfo
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetEquippedArtifactInfo

```lua
C_ArtifactUI.GetEquippedArtifactInfo() -> itemID: number, altItemID: number?, name: string, icon: fileID, xp: number, pointsSpent: number, quality: number, artifactAppearanceID: number, appearanceModID: number, itemAppearanceID: number?, altItemAppearanceID: number?, altOnTop: bool, tier: ArtifactTiers
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetEquippedArtifactItemID

```lua
C_ArtifactUI.GetEquippedArtifactItemID() -> itemID: number
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetEquippedArtifactNumRelicSlots

```lua
C_ArtifactUI.GetEquippedArtifactNumRelicSlots(onlyUnlocked: bool = false) -> numRelicSlots: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetEquippedArtifactRelicInfo

```lua
C_ArtifactUI.GetEquippedArtifactRelicInfo(relicSlotIndex: luaIndex) -> name: string, icon: fileID, slotTypeName: cstring, link: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetEquippedRelicLockedReason

```lua
C_ArtifactUI.GetEquippedRelicLockedReason(relicSlotIndex: luaIndex) -> lockedReason: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetForgeRotation

```lua
C_ArtifactUI.GetForgeRotation() -> forgeRotationX: number, forgeRotationY: number, forgeRotationZ: number
```

### C_ArtifactUI.GetItemLevelIncreaseProvidedByRelic

```lua
C_ArtifactUI.GetItemLevelIncreaseProvidedByRelic(itemLinkOrID: ItemInfo) -> itemIevelIncrease: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetMetaPowerInfo

```lua
C_ArtifactUI.GetMetaPowerInfo() -> spellID: number, powerCost: number, currentRank: number
```

### C_ArtifactUI.GetNumAppearanceSets

```lua
C_ArtifactUI.GetNumAppearanceSets() -> numAppearanceSets: number
```

### C_ArtifactUI.GetNumObtainedArtifacts

```lua
C_ArtifactUI.GetNumObtainedArtifacts() -> numObtainedArtifacts: number
```

### C_ArtifactUI.GetNumRelicSlots

```lua
C_ArtifactUI.GetNumRelicSlots(onlyUnlocked: bool = false) -> numRelicSlots: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetPointsRemaining

```lua
C_ArtifactUI.GetPointsRemaining() -> pointsRemaining: number
```

### C_ArtifactUI.GetPowerHyperlink

```lua
C_ArtifactUI.GetPowerHyperlink(powerID: number) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetPowerInfo

```lua
C_ArtifactUI.GetPowerInfo(powerID: number) -> powerInfo: ArtifactPowerInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetPowerLinks

```lua
C_ArtifactUI.GetPowerLinks(powerID: number) -> linkingPowerID: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetPowers

```lua
C_ArtifactUI.GetPowers() -> powerID: table<number>
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetPowersAffectedByRelic

```lua
C_ArtifactUI.GetPowersAffectedByRelic(relicSlotIndex: luaIndex) -> powerIDs: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetPowersAffectedByRelicItemLink

```lua
C_ArtifactUI.GetPowersAffectedByRelicItemLink(relicItemInfo: ItemInfo) -> powerIDs: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetPreviewAppearance

```lua
C_ArtifactUI.GetPreviewAppearance() -> artifactAppearanceID: number?
```

### C_ArtifactUI.GetRelicInfo

```lua
C_ArtifactUI.GetRelicInfo(relicSlotIndex: luaIndex) -> name: string, icon: fileID, slotTypeName: cstring, link: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetRelicInfoByItemID

```lua
C_ArtifactUI.GetRelicInfoByItemID(itemID: number) -> name: string, icon: fileID, slotTypeName: cstring, link: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetRelicLockedReason

```lua
C_ArtifactUI.GetRelicLockedReason(relicSlotIndex: luaIndex) -> lockedReason: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.GetRelicSlotType

```lua
C_ArtifactUI.GetRelicSlotType(relicSlotIndex: luaIndex) -> slotTypeName: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetRespecArtifactArtInfo

```lua
C_ArtifactUI.GetRespecArtifactArtInfo() -> artifactArtInfo: ArtifactArtInfo
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetRespecArtifactInfo

```lua
C_ArtifactUI.GetRespecArtifactInfo() -> itemID: number, altItemID: number?, name: string, icon: fileID, xp: number, pointsSpent: number, quality: number, artifactAppearanceID: number, appearanceModID: number, itemAppearanceID: number?, altItemAppearanceID: number?, altOnTop: bool, tier: ArtifactTiers
```

Flags: MayReturnNothing  

### C_ArtifactUI.GetRespecCost

```lua
C_ArtifactUI.GetRespecCost() -> cost: number
```

### C_ArtifactUI.GetTotalPowerCost

```lua
C_ArtifactUI.GetTotalPowerCost(startingTrait: luaIndex, numTraits: number, artifactTier: ArtifactTiers) -> totalArtifactPowerCost: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ArtifactUI.GetTotalPurchasedRanks

```lua
C_ArtifactUI.GetTotalPurchasedRanks() -> totalPurchasedRanks: number
```

### C_ArtifactUI.IsArtifactDisabled

```lua
C_ArtifactUI.IsArtifactDisabled() -> artifactDisabled: bool
```

### C_ArtifactUI.IsArtifactItem

```lua
C_ArtifactUI.IsArtifactItem(itemLocation: ItemLocation) -> isArtifact: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.IsAtForge

```lua
C_ArtifactUI.IsAtForge() -> isAtForge: bool
```

### C_ArtifactUI.IsEquippedArtifactDisabled

```lua
C_ArtifactUI.IsEquippedArtifactDisabled() -> artifactDisabled: bool
```

### C_ArtifactUI.IsEquippedArtifactMaxed

```lua
C_ArtifactUI.IsEquippedArtifactMaxed() -> artifactMaxed: bool
```

### C_ArtifactUI.IsMaxedByRulesOrEffect

```lua
C_ArtifactUI.IsMaxedByRulesOrEffect() -> isEffectivelyMaxed: bool
```

### C_ArtifactUI.IsPowerKnown

```lua
C_ArtifactUI.IsPowerKnown(powerID: number) -> known: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.IsViewedArtifactEquipped

```lua
C_ArtifactUI.IsViewedArtifactEquipped() -> isViewedArtifactEquipped: bool
```

### C_ArtifactUI.SetAppearance

```lua
C_ArtifactUI.SetAppearance(artifactAppearanceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.SetForgeCamera

```lua
C_ArtifactUI.SetForgeCamera()
```

### C_ArtifactUI.SetForgeRotation

```lua
C_ArtifactUI.SetForgeRotation(forgeRotationX: number, forgeRotationY: number, forgeRotationZ: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ArtifactUI.SetPreviewAppearance

```lua
C_ArtifactUI.SetPreviewAppearance(artifactAppearanceID: number = 0)
```

Secret: SecretArguments=AllowedWhenUntainted  

Call without an argument to clear the preview.

### C_ArtifactUI.ShouldSuppressForgeRotation

```lua
C_ArtifactUI.ShouldSuppressForgeRotation() -> shouldSuppressForgeRotation: bool
```

## Events

### ARTIFACT_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_ENDGAME_REFUND

Payload: `numRefundedPowers: number, refundedTier: ArtifactTiers, bagOrSlotIndex: luaIndex, slotIndex: luaIndex?`  
Flags: SynchronousEvent  

### ARTIFACT_RELIC_FORGE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_RELIC_FORGE_PREVIEW_RELIC_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_RELIC_FORGE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_RELIC_INFO_RECEIVED

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_RESPEC_PROMPT

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_TIER_CHANGED

Payload: `newTier: luaIndex, bagOrSlotIndex: luaIndex, slotIndex: luaIndex?`  
Flags: SynchronousEvent  

### ARTIFACT_UPDATE

Payload: `newItem: bool`  
Flags: SynchronousEvent  

### ARTIFACT_XP_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ArtifactAppearanceInfo (Structure)

- `artifactAppearanceID: number`
- `appearanceName: string`
- `displayIndex: number`
- `unlocked: bool`
- `failureDescription: string?`
- `uiCameraID: number`
- `altHandCameraID: number?`
- `swatchColor: colorRGB`
- `modelOpacity: number`
- `modelSaturation: number`
- `obtainable: bool`

### ArtifactAppearanceSetInfo (Structure)

- `artifactAppearanceSetID: number`
- `appearanceSetName: string`
- `appearanceSetDescription: string`
- `numAppearances: number`

### ArtifactArtInfo (Structure)

- `textureKit: textureKit`
- `titleName: string`
- `titleColor: colorRGB`
- `barConnectedColor: colorRGB`
- `barDisconnectedColor: colorRGB`
- `uiModelSceneID: number`
- `spellVisualKitID: number`

### ArtifactInfo (Structure)

- `itemID: number`
- `altItemID: number?`
- `name: string`
- `icon: fileID`
- `xp: number`
- `pointsSpent: number`
- `quality: number`
- `artifactAppearanceID: number`
- `appearanceModID: number`
- `itemAppearanceID: number?`
- `altItemAppearanceID: number?`
- `altOnTop: bool`
- `tier: ArtifactTiers`

### ArtifactMetaPowerInfo (Structure)

- `spellID: number`
- `powerCost: number`
- `currentRank: number`

### ArtifactPowerInfo (Structure)

- `spellID: number`
- `cost: number`
- `currentRank: number`
- `maxRank: number`
- `bonusRanks: number`
- `numMaxRankBonusFromTier: number`
- `prereqsMet: bool`
- `isStart: bool`
- `isGoldMedal: bool`
- `isFinal: bool`
- `tier: luaIndex`
- `position: vector2`
- `offset: vector2?`
- `linearIndex: luaIndex?`

### ArtifactRelicInfo (Structure)

- `name: string`
- `icon: fileID`
- `slotTypeName: cstring` Matches the socket identifiers used in the socketing system.
- `link: string`
