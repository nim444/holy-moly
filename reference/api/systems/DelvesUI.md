# DelvesUI

Type: System  
Namespace: `C_DelvesUI`  
Environment: All

## Functions

### C_DelvesUI.GetActiveDelveTier

```lua
C_DelvesUI.GetActiveDelveTier() -> tierInfo: TieredEntranceTierInfo
```

Returns the entrance tier information for the active Delve (via party data). Assumes only Delves use this type for now.

### C_DelvesUI.GetCompanionInfoForActivePlayer

```lua
C_DelvesUI.GetCompanionInfoForActivePlayer() -> playerCompanionInfoID: number
```

### C_DelvesUI.GetCreatureDisplayInfoForCompanion

```lua
C_DelvesUI.GetCreatureDisplayInfoForCompanion(companionID: number?) -> creatureDisplayInfoID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetCurioLink

```lua
C_DelvesUI.GetCurioLink(spellID: SpellIdentifier, rarity: CurioRarity) -> curioLink: cstring
```

Secret: SecretArguments=AllowedWhenTainted  

Given the spell ID for an owned curio and its rarity, return a spell link style hyperlink for the curio spell, since they aren't items when learned

### C_DelvesUI.GetCurioNodeForCompanion

```lua
C_DelvesUI.GetCurioNodeForCompanion(curioType: CurioType, companionID: number?) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetCurioRarityByTraitCondAccountElementID

```lua
C_DelvesUI.GetCurioRarityByTraitCondAccountElementID(traitCondAccountElementID: number) -> rarity: CurioRarity
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetCurrentDelvesSeasonNumber

```lua
C_DelvesUI.GetCurrentDelvesSeasonNumber() -> seasonNumber: number
```

### C_DelvesUI.GetDelveEntranceBackgroundWidgetSetID

```lua
C_DelvesUI.GetDelveEntranceBackgroundWidgetSetID() -> backgroundWidgetSetID: number
```

### C_DelvesUI.GetDelveEntranceDescriptionString

```lua
C_DelvesUI.GetDelveEntranceDescriptionString() -> description: string?
```

### C_DelvesUI.GetDelveEntranceHeaderString

```lua
C_DelvesUI.GetDelveEntranceHeaderString() -> header: string?
```

### C_DelvesUI.GetDelveEntranceMapID

```lua
C_DelvesUI.GetDelveEntranceMapID() -> mapID: number
```

### C_DelvesUI.GetDelveEntranceTiers

```lua
C_DelvesUI.GetDelveEntranceTiers() -> levelInfo: table<TieredEntranceTierInfo>
```

### C_DelvesUI.GetDelveEntranceTitleString

```lua
C_DelvesUI.GetDelveEntranceTitleString() -> title: cstring?
```

### C_DelvesUI.GetDelvesAffixSpellsForSeason

```lua
C_DelvesUI.GetDelvesAffixSpellsForSeason() -> affixSpellIDs: table<number>
```

### C_DelvesUI.GetDelvesFactionForSeason

```lua
C_DelvesUI.GetDelvesFactionForSeason() -> factionID: number
```

### C_DelvesUI.GetDelvesMinRequiredLevel

```lua
C_DelvesUI.GetDelvesMinRequiredLevel() -> minRequiredLevel: number?
```

Players must be at or above the min level + offset to enter Delves. This function returns that min level.

### C_DelvesUI.GetFactionForCompanion

```lua
C_DelvesUI.GetFactionForCompanion(companionID: number?) -> factionID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetFlavorNodeForCompanion

```lua
C_DelvesUI.GetFlavorNodeForCompanion(companionID: number?) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetFlavorNodeNameForCompanion

```lua
C_DelvesUI.GetFlavorNodeNameForCompanion(companionID: number?) -> name: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetLockedTextForCompanion

```lua
C_DelvesUI.GetLockedTextForCompanion(companionID: number?) -> text: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetModelSceneForCompanion

```lua
C_DelvesUI.GetModelSceneForCompanion(companionID: number?) -> modelSceneID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetPlayerCompanionPDEID

```lua
C_DelvesUI.GetPlayerCompanionPDEID(companionID: number?) -> pdeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_DelvesUI.GetRoleNodeForCompanion

```lua
C_DelvesUI.GetRoleNodeForCompanion(companionID: number?) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetRoleSubtreeForCompanion

```lua
C_DelvesUI.GetRoleSubtreeForCompanion(roleType: CompanionRoleType, companionID: number?) -> subTreeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetTieredEntranceOptionalAffixTraitTreeID

```lua
C_DelvesUI.GetTieredEntranceOptionalAffixTraitTreeID() -> treeID: number?
```

### C_DelvesUI.GetTieredEntrancePDEID

```lua
C_DelvesUI.GetTieredEntrancePDEID() -> pdeID: number
```

### C_DelvesUI.GetTieredEntranceType

```lua
C_DelvesUI.GetTieredEntranceType() -> entranceType: TieredEntranceType
```

### C_DelvesUI.GetTraitTreeForCompanion

```lua
C_DelvesUI.GetTraitTreeForCompanion(companionID: number?) -> treeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetUnseenCuriosBySlotType

```lua
C_DelvesUI.GetUnseenCuriosBySlotType(slotType: CompanionConfigSlotTypes, ownedCurioNodeIDs: table<number>) -> unseenCurioNodeIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.GetWorldTierDifficultyForActivePlayer

```lua
C_DelvesUI.GetWorldTierDifficultyForActivePlayer() -> difficulty: WorldTierDifficulty
```

### C_DelvesUI.HasActiveDelve

```lua
C_DelvesUI.HasActiveDelve() -> result: bool
```

### C_DelvesUI.HasActiveLFGLair

```lua
C_DelvesUI.HasActiveLFGLair() -> result: bool
```

### C_DelvesUI.HasActiveLair

```lua
C_DelvesUI.HasActiveLair() -> result: bool
```

### C_DelvesUI.IsDelveEntranceTierEnabled

```lua
C_DelvesUI.IsDelveEntranceTierEnabled(tier: number) -> isEnabled: bool, failureReason: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.IsEligibleForActiveDelveRewards

```lua
C_DelvesUI.IsEligibleForActiveDelveRewards(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.IsInLair

```lua
C_DelvesUI.IsInLair() -> result: bool
```

### C_DelvesUI.IsTraitTreeForCompanion

```lua
C_DelvesUI.IsTraitTreeForCompanion(traitTreeID: number) -> isForCompanion: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.RequestPartyEligibilityForDelveTiers

```lua
C_DelvesUI.RequestPartyEligibilityForDelveTiers(mapID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Queries private party members to see what level they have unlocked for the Delve. Ineligible members are added to the tooltip of dropdown entries.

### C_DelvesUI.SaveSeenCuriosBySlotType

```lua
C_DelvesUI.SaveSeenCuriosBySlotType(slotType: CompanionConfigSlotTypes, ownedCurioNodeIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DelvesUI.SelectDelveEntranceTier

```lua
C_DelvesUI.SelectDelveEntranceTier(tier: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTIVE_DELVE_DATA_UPDATE

Payload: `none`  
Flags: SynchronousEvent  
Signaled when SpellScript calls change the data for players/parties owning a delve or when the delve is shut down.

### DELVE_ASSIST_ACTION

Payload: `data: DelveAssistActionData`  
Flags: SynchronousEvent  
Signaled when an assist action occurs in a delve.

### DELVES_ACCOUNT_DATA_ELEMENT_CHANGED

Payload: `none`  
Flags: SynchronousEvent  
Signaled when player account data element(s) have changed. This drives curio ranks, and the UI should update when this is sent.

### PARTY_ELIGIBILITY_FOR_DELVE_TIERS_CHANGED

Payload: `playerName: string, maxEligibleLevel: number`  
Flags: SynchronousEvent  
Signaled when responses come in from RequestPartyEligibilityForDelveTiers.

### SHOW_DELVES_COMPANION_CONFIGURATION_UI

Payload: `none`  
Flags: SynchronousEvent  
Signaled when SpellScript indicates that a curio has been learned or upgraded. Will show the companion config UI.

### WALK_IN_DATA_UPDATE

Payload: `none`  
Flags: SynchronousEvent  
Signaled when the player or a private party member join a new walk-in instance or when the instance is shut down.

## Tables

### CompanionRoleType (Enumeration)

| Name | Value |
|---|---|
| Dps | 0 |
| Heal | 1 |
| Tank | 2 |

### CurioType (Enumeration)

| Name | Value |
|---|---|
| Combat | 0 |
| Utility | 1 |

### TieredEntranceRewardType (Enumeration)

| Name | Value |
|---|---|
| Item | 0 |
| Currency | 1 |

### TieredEntranceRewardInfo (Structure)

- `id: number`
- `quantity: number`
- `rewardType: TieredEntranceRewardType`
- `context: ItemCreationContext`

### TieredEntranceTierInfo (Structure)

- `tier: number`
- `suggestedILvl: number`
- `overrideTooltipSpellID: number`
- `unlocked: bool`
- `tierDescription: string`
- `rewards: table<TieredEntranceRewardInfo>`
- `modifierUIWidgetSetID: number`
- `lockedReason: string?`
- `queueAsLFG: bool`
- `difficultyID: number`
