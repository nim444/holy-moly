# SpellDiminishUI

Type: System  
Namespace: `C_SpellDiminish`  
Environment: All

## Functions

### C_SpellDiminish.GetAllSpellDiminishCategories

```lua
C_SpellDiminish.GetAllSpellDiminishCategories(ruleset: SpellDiminishRuleset?) -> categories: table<SpellDiminishCategoryInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresSpellDiminishUI  

### C_SpellDiminish.GetSpellDiminishCategoryInfo

```lua
C_SpellDiminish.GetSpellDiminishCategoryInfo(category: SpellDiminishCategory) -> categoryInfo: SpellDiminishCategoryInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresSpellDiminishUI  

### C_SpellDiminish.IsSystemSupported

```lua
C_SpellDiminish.IsSystemSupported() -> isSystemSupported: bool
```

### C_SpellDiminish.ShouldTrackSpellDiminishCategory

```lua
C_SpellDiminish.ShouldTrackSpellDiminishCategory(category: SpellDiminishCategory, ruleset: SpellDiminishRuleset) -> isTracked: bool
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: RequiresSpellDiminishUI  

## Events

### UNIT_SPELL_DIMINISH_CATEGORY_STATE_UPDATED

Payload: `unitTarget: UnitTokenVariant, trackerInfo: SpellDiminishTrackerInfo`  
Flags: SecretPayloads, SynchronousEvent  

## Tables

### SpellDiminishCategoryInfo (Structure)

- `category: SpellDiminishCategory`
- `name: cstring`
- `icon: fileID?`

### SpellDiminishTrackerInfo (Structure)

- `category: SpellDiminishCategory`
- `startTime: number`
- `duration: number`
- `showCountdown: bool`
- `isImmune: bool`

## Preconditions

- `RequiresSpellDiminishUI` (FailureMode=ReturnNothing)
