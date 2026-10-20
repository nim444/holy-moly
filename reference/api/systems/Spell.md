# Spell

Type: System  
Namespace: `C_Spell`  
Environment: All

## Functions

### C_Spell.CancelAutoRepeatSpell

```lua
C_Spell.CancelAutoRepeatSpell() -> wasCancelled: bool
```

Flags: HasRestrictions  

Cancels the player's active auto repeat spell, if any

### C_Spell.CancelItemTempEnchantment

```lua
C_Spell.CancelItemTempEnchantment(weaponSlot: WeaponSlot, enchantmentType: ItemEnchantType)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Cancel a temporary enchantment on an item

### C_Spell.CancelSpellByID

```lua
C_Spell.CancelSpellByID(spellID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_Spell.DoesSpellExist

```lua
C_Spell.DoesSpellExist(spellIdentifier: SpellIdentifier) -> spellExists: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the spell exists, regardless of whether the player has learned it

### C_Spell.EnableSpellRangeCheck

```lua
C_Spell.EnableSpellRangeCheck(spellIdentifier: SpellIdentifier, enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Used in conjunction with SpellRangeCheckUpdate to inform the UI when a spell goes in or out of range with the current target.

### C_Spell.GetAuraStatChanges

```lua
C_Spell.GetAuraStatChanges(spellID: number) -> healthChange: number, powerTypeChanges: table<PowerTypeChange>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Spell.GetBaseSpell

```lua
C_Spell.GetBaseSpell(spellIdentifier: SpellIdentifier, spec: number = 0) -> baseSpellID: number
```

Secret: SecretArguments=AllowedWhenTainted  

### C_Spell.GetDeadlyDebuffInfo

```lua
C_Spell.GetDeadlyDebuffInfo(spellIdentifier: SpellIdentifier) -> deadlyDebuffInfo: DeadlyDebuffInfo
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Spell.GetItemCooldown

```lua
C_Spell.GetItemCooldown(itemID: number) -> spellCooldownInfo: SpellCooldownInfo
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if the item is not found or on cooldown

### C_Spell.GetItemModifiedAppearancesApplied

```lua
C_Spell.GetItemModifiedAppearancesApplied(spellID: number) -> itemModifiedAppearanceIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Spell.GetLastCategoryCooldownSource

```lua
C_Spell.GetLastCategoryCooldownSource(spellCategory: number) -> spellID: number?, itemID: number?
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Searches for the most recent spellID and itemID that started a cooldown in this category

### C_Spell.GetMawPowerLinkBySpellID

```lua
C_Spell.GetMawPowerLinkBySpellID(spellID: SpellIdentifier) -> link: cstring
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Spell.GetMawPowerRarityInfoBySpellID

```lua
C_Spell.GetMawPowerRarityInfoBySpellID(spellID: SpellIdentifier) -> rarityID: number, rarityBorderAtlas: textureAtlas
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### C_Spell.GetOverrideSpell

```lua
C_Spell.GetOverrideSpell(spellIdentifier: SpellIdentifier, spec: number = 0, onlyKnown: bool = true, ignoreOverrideSpellID: number = 0) -> overrideSpellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Spell.GetSchoolString

```lua
C_Spell.GetSchoolString(schoolMask: number) -> result: cstring
```

Secret: SecretArguments=AllowedWhenTainted  

### C_Spell.GetSpellAutoCast

```lua
C_Spell.GetSpellAutoCast(spellIdentifier: SpellIdentifier) -> autoCastAllowed: bool, autoCastEnabled: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellCastCount

```lua
C_Spell.GetSpellCastCount(spellIdentifier: SpellIdentifier) -> castCount: number
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenTainted  

Returns number of times a spell can be cast, typically based on availability of things like required reagent items; Returns 0 if spell is not found

### C_Spell.GetSpellChargeDuration

```lua
C_Spell.GetSpellChargeDuration(spellIdentifier: SpellIdentifier) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns a duration object describing the active recharge time for a spell.

### C_Spell.GetSpellCharges

```lua
C_Spell.GetSpellCharges(spellIdentifier: SpellIdentifier) -> chargeInfo: SpellChargeInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns a table of info about the charges of a charge-accumulating spell; May return nil if spell is not found or is not charge-based

### C_Spell.GetSpellCooldown

```lua
C_Spell.GetSpellCooldown(spellIdentifier: SpellIdentifier) -> spellCooldownInfo: SpellCooldownInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellCooldownDuration

```lua
C_Spell.GetSpellCooldownDuration(spellIdentifier: SpellIdentifier, ignoreGCD: bool = false) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns a duration object describing the active cooldown duration for a spell.

### C_Spell.GetSpellDescription

```lua
C_Spell.GetSpellDescription(spellIdentifier: SpellIdentifier) -> description: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellDescriptionForItemLocation

```lua
C_Spell.GetSpellDescriptionForItemLocation(spellIdentifier: SpellIdentifier, itemLocation: ItemLocation) -> description: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellDisplayCount

```lua
C_Spell.GetSpellDisplayCount(spellIdentifier: SpellIdentifier, maxDisplayCount: number = 9999, replacementString: cstring = *) -> displayCount: string
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Depending on the spell, return a string that is either the use count or number of charges. If value is beyond the display count parameter, returns the replacementString (defaults to '*').

### C_Spell.GetSpellIDForSpellIdentifier

```lua
C_Spell.GetSpellIDForSpellIdentifier(spellIdentifier: SpellIdentifier) -> spellID: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Meant primarily for getting a spell id from a spell name or link; Returns nothing if spell does not exist

### C_Spell.GetSpellInfo

```lua
C_Spell.GetSpellInfo(spellIdentifier: SpellIdentifier) -> spellInfo: SpellInfo
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellLevelLearned

```lua
C_Spell.GetSpellLevelLearned(spellIdentifier: SpellIdentifier) -> levelLearned: number
```

Secret: SecretArguments=AllowedWhenTainted  

Returns the level the spell is learned at; May return a different value if the player is currently Level Linked with another player

### C_Spell.GetSpellLink

```lua
C_Spell.GetSpellLink(spellIdentifier: SpellIdentifier, glyphID: number?) -> spellLink: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellLossOfControlCooldownDuration

```lua
C_Spell.GetSpellLossOfControlCooldownDuration(spellIdentifier: SpellIdentifier) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns a duration object describing the active loss of control cooldown duration for a spell.

### C_Spell.GetSpellLossOfControlCooldownInfo

```lua
C_Spell.GetSpellLossOfControlCooldownInfo(spellIdentifier: SpellIdentifier) -> lossOfControlInfo: SpellLossOfControlInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellMaxCumulativeAuraApplications

```lua
C_Spell.GetSpellMaxCumulativeAuraApplications(spellID: SpellIdentifier) -> cumulativeAura: number
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

### C_Spell.GetSpellName

```lua
C_Spell.GetSpellName(spellIdentifier: SpellIdentifier) -> name: cstring
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellPowerCost

```lua
C_Spell.GetSpellPowerCost(spellIdentifier: SpellIdentifier) -> powerCosts: table<SpellPowerCostInfo>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns a table containing one or more SpellPowerCostInfos, one for each power type this spell costs; May return nil if spell is not found or has no resource costs

### C_Spell.GetSpellQueueWindow

```lua
C_Spell.GetSpellQueueWindow() -> result: number
```

### C_Spell.GetSpellSkillLineAbilityRank

```lua
C_Spell.GetSpellSkillLineAbilityRank(spellIdentifier: SpellIdentifier) -> rank: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the rank of a spell that corresponds to an ability within a ranked SkillLine (ex: a crafting Recipe); Returns nil if spell is not found, or isn't part of a ranked SkillLine

### C_Spell.GetSpellSubtext

```lua
C_Spell.GetSpellSubtext(spellIdentifier: SpellIdentifier) -> subtext: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not found

### C_Spell.GetSpellTexture

```lua
C_Spell.GetSpellTexture(spellIdentifier: SpellIdentifier) -> iconID: fileID, originalIconID: fileID, conditionalIconID: fileID?
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nothing if spell is not found

### C_Spell.GetSpellTradeSkillLink

```lua
C_Spell.GetSpellTradeSkillLink(spellIdentifier: SpellIdentifier) -> spellLink: string
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns nil if spell is not associated with a trade skill

### C_Spell.GetTargetSpellID

```lua
C_Spell.GetTargetSpellID() -> spellID: number
```

### C_Spell.GetVisibilityInfo

```lua
C_Spell.GetVisibilityInfo(spellID: number, visibilityType: SpellAuraVisibilityType) -> hasCustom: bool, alwaysShowMine: bool, showForMySpec: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Spell.IsActiveSpell

```lua
C_Spell.IsActiveSpell(spellIdentifier: SpellIdentifier, targetUnit: UnitToken?) -> isActiveSpell: bool
```

Secret: SecretWhenUnitAuraRestricted, SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenTainted  

Returns true if the spell is a currently active toggled spell

### C_Spell.IsAutoAttackSpell

```lua
C_Spell.IsAutoAttackSpell(spellIdentifier: SpellIdentifier) -> isAutoAttack: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is the player's melee Auto Attack spell

### C_Spell.IsAutoRepeatSpell

```lua
C_Spell.IsAutoRepeatSpell(spellIdentifier: SpellIdentifier) -> isAutoRepeat: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is an auto repeat player spell

### C_Spell.IsClassTalentSpell

```lua
C_Spell.IsClassTalentSpell(spellIdentifier: SpellIdentifier) -> isAutoRepeat: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell comes from a Class Talent

### C_Spell.IsConsumableSpell

```lua
C_Spell.IsConsumableSpell(spellIdentifier: SpellIdentifier) -> consumable: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_Spell.IsCurrentSpell

```lua
C_Spell.IsCurrentSpell(spellIdentifier: SpellIdentifier) -> isCurrentSpell: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is currently being cast or is queued to be cast

### C_Spell.IsExternalDefensive

```lua
C_Spell.IsExternalDefensive(spellID: number) -> isExternalDefensive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if an aura is considered an external defensive.

### C_Spell.IsPressHoldReleaseSpell

```lua
C_Spell.IsPressHoldReleaseSpell(spellIdentifier: SpellIdentifier) -> isPressHoldRelease: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is an 'empower' type spell that is cast by pressing and holding, with the on-release cast typically being affected by time held

### C_Spell.IsPriorityAura

```lua
C_Spell.IsPriorityAura(spellID: number) -> isHighPriority: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if an aura is considered high priority and should be ordered ahead of other auras in the UI.

### C_Spell.IsPvPTalentSpell

```lua
C_Spell.IsPvPTalentSpell(spellIdentifier: SpellIdentifier) -> isAutoRepeat: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell comes from a PvP Talent

### C_Spell.IsRangedAutoAttackSpell

```lua
C_Spell.IsRangedAutoAttackSpell(spellIdentifier: SpellIdentifier) -> isRangedAutoAttack: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is the player's ranged Auto Attack spell (ex: Shoot, Auto Shot, etc)

### C_Spell.IsSelfBuff

```lua
C_Spell.IsSelfBuff(spellID: number) -> hasSelfEffectsOnly: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if an aura only applies effects to the player, and no other units.

### C_Spell.IsSpellCrowdControl

```lua
C_Spell.IsSpellCrowdControl(spellIdentifier: SpellIdentifier) -> isCrowdControl: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell causes a crowd control effect when cast on a valid target.

### C_Spell.IsSpellDataCached

```lua
C_Spell.IsSpellDataCached(spellIdentifier: SpellIdentifier) -> isCached: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if data for the spell has already been loaded and cached this session

### C_Spell.IsSpellDisabled

```lua
C_Spell.IsSpellDisabled(spellIdentifier: SpellIdentifier) -> disabled: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_Spell.IsSpellHarmful

```lua
C_Spell.IsSpellHarmful(spellIdentifier: SpellIdentifier) -> isHarmful: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell can be cast on hostile targets

### C_Spell.IsSpellHelpful

```lua
C_Spell.IsSpellHelpful(spellIdentifier: SpellIdentifier) -> isHelpful: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell can be cast on the player or other friendly targets

### C_Spell.IsSpellImportant

```lua
C_Spell.IsSpellImportant(spellIdentifier: SpellIdentifier) -> isImportant: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell is considered important. For example a spell that's lethal if not interrupted would be considered important.

### C_Spell.IsSpellInRange

```lua
C_Spell.IsSpellInRange(spellIdentifier: SpellIdentifier, targetUnit: UnitToken?) -> inRange: bool?
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the current target is within range of the spell; False if out of range; Nil if range check was invalid

### C_Spell.IsSpellPassive

```lua
C_Spell.IsSpellPassive(spellIdentifier: SpellIdentifier) -> isPassive: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_Spell.IsSpellUsable

```lua
C_Spell.IsSpellUsable(spellIdentifier: SpellIdentifier) -> isUsable: bool, insufficientPower: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns whether the spell is currently castable; Typically based on things like learned status, required resources, etc

### C_Spell.PickupSpell

```lua
C_Spell.PickupSpell(spellIdentifier: SpellIdentifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Spell.PlaceTargetingSpellAtCursor

```lua
C_Spell.PlaceTargetingSpellAtCursor()
```

Flags: HasRestrictions  

### C_Spell.RequestLoadSpellData

```lua
C_Spell.RequestLoadSpellData(spellIdentifier: SpellIdentifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

Requests data for the spell be loaded; Listen for SPELL_DATA_LOAD_RESULT to be notified when load is finished

### C_Spell.SetSpellAutoCastEnabled

```lua
C_Spell.SetSpellAutoCastEnabled(spellIdentifier: SpellIdentifier, enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Spell.SpellHasRange

```lua
C_Spell.SpellHasRange(spellIdentifier: SpellIdentifier) -> hasRange: bool
```

Secret: SecretArguments=AllowedWhenTainted  

Returns true if the spell has a min and/or max range greater than 0

### C_Spell.TargetSpellChecksItemCondition

```lua
C_Spell.TargetSpellChecksItemCondition() -> result: bool
```

### C_Spell.TargetSpellIsEnchanting

```lua
C_Spell.TargetSpellIsEnchanting() -> isEnchanting: bool
```

### C_Spell.TargetSpellJumpsUpgradeTrack

```lua
C_Spell.TargetSpellJumpsUpgradeTrack() -> jumpsUpgradeTrack: bool
```

### C_Spell.TargetSpellReplacesBonusTree

```lua
C_Spell.TargetSpellReplacesBonusTree() -> result: bool
```

### C_Spell.ToggleSpellAutoCast

```lua
C_Spell.ToggleSpellAutoCast(spellIdentifier: SpellIdentifier)
```

Secret: SecretArguments=AllowedWhenUntainted  

Toggles whether spell's autoCast is enabled

## Events

### ENCHANT_SPELL_COMPLETED

Payload: `successful: bool, enchantedItem: ItemLocation?`  
Flags: SynchronousEvent  

### ENCHANT_SPELL_SELECTED

Payload: `none`  
Flags: SynchronousEvent  

### SPELL_DATA_LOAD_RESULT

Payload: `spellID: number, success: bool`  
Flags: SynchronousEvent  

### SPELL_RANGE_CHECK_UPDATE

Payload: `spellIdentifier: SpellIdentifier, isInRange: bool, checksRange: bool`  
Flags: SynchronousEvent  
Used in conjunction with EnableSpellRangeCheck to inform the UI when a spell goes in or out of range with the current target.

### SPELL_TEXT_UPDATE

Payload: `spellID: number`  
Flags: SynchronousEvent  

### UPDATE_SPELL_TARGET_ITEM_CONTEXT

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### DeadlyDebuffInfo (Structure)

- `criticalTimeRemainingMs: number?`
- `criticalStacks: number?`
- `priority: number`
- `warningText: string`
- `soundKitID: number?`

### PowerTypeChange (Structure)

- `powerType: PowerType`
- `amount: number`

### SpellInfo (Structure)

- `name: string`
- `iconID: fileID` Icon for this spell; If spell has been overriden, this may be the icon for the overriding spell; See originalIconID for spell's non-overriden icon
- `originalIconID: fileID`
- `castTime: number`
- `minRange: number`
- `maxRange: number`
- `spellID: number`
