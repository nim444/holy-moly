# SpellBook

Type: System  
Namespace: `C_SpellBook`  
Environment: All

## Functions

### C_SpellBook.AbortSpellIntro

```lua
C_SpellBook.AbortSpellIntro(spellID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.CastSpellBookItem

```lua
C_SpellBook.CastSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank, targetSelf: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.ContainsAnyDisenchantSpell

```lua
C_SpellBook.ContainsAnyDisenchantSpell() -> contains: bool
```

Returns true if player knows any Disenchant spells

### C_SpellBook.FindBaseSpellByID

```lua
C_SpellBook.FindBaseSpellByID(spellID: number) -> baseSpellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.FindFlyoutSlotBySpellID

```lua
C_SpellBook.FindFlyoutSlotBySpellID(spellID: number) -> flyoutSlot: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.FindSpellBookSlotForSpell

```lua
C_SpellBook.FindSpellBookSlotForSpell(spellIdentifier: SpellIdentifier, includeHidden: bool = false, includeFlyouts: bool = true, includeFutureSpells: bool = false, includeOffSpec: bool = false) -> spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

If found, returns the first slot position of a SpellBookItem matching the specified spell and criteria

### C_SpellBook.FindSpellOverrideByID

```lua
C_SpellBook.FindSpellOverrideByID(spellID: number) -> overrideSpellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.GetClassSkillLineInfo

```lua
C_SpellBook.GetClassSkillLineInfo() -> skillLineInfo: SpellBookSkillLineInfo
```

Flags: MayReturnNothing  

### C_SpellBook.GetCurrentLevelSpells

```lua
C_SpellBook.GetCurrentLevelSpells(level: number) -> spellIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns general, class, and active spec spells that are learned at the specified level

### C_SpellBook.GetNumSpellBookSkillLines

```lua
C_SpellBook.GetNumSpellBookSkillLines() -> numSpellBookSkillLines: number
```

### C_SpellBook.GetSkillLineIndexByID

```lua
C_SpellBook.GetSkillLineIndexByID(skillLineID: number) -> skillIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.GetSpellBookItemAutoCast

```lua
C_SpellBook.GetSpellBookItemAutoCast(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> autoCastAllowed: bool, autoCastEnabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns nothing if item doesn't exist or isn't a spell

### C_SpellBook.GetSpellBookItemCastCount

```lua
C_SpellBook.GetSpellBookItemCastCount(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> castCount: number
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Returns number of times a SpellBookItem can be cast, typically based on availability of things like required reagent items; Always returns 0 if item is not found or is not a spell

### C_SpellBook.GetSpellBookItemChargeDuration

```lua
C_SpellBook.GetSpellBookItemChargeDuration(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a duration object describing the active recharge time for a spellbook item.

### C_SpellBook.GetSpellBookItemCharges

```lua
C_SpellBook.GetSpellBookItemCharges(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> chargeInfo: SpellChargeInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a table of info about the charges of a charge-accumulating SpellBookItem; May return nil if item is not found or is not charge-based

### C_SpellBook.GetSpellBookItemCooldown

```lua
C_SpellBook.GetSpellBookItemCooldown(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> spellCooldownInfo: SpellCooldownInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns nil if item doesn't exist or if this kind of item doesn't display cooldowns (ex: future or offspec spells)

### C_SpellBook.GetSpellBookItemCooldownDuration

```lua
C_SpellBook.GetSpellBookItemCooldownDuration(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank, ignoreGCD: bool = false) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a duration object describing the active cooldown duration for a spellbook item.

### C_SpellBook.GetSpellBookItemDescription

```lua
C_SpellBook.GetSpellBookItemDescription(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> description: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookItemInfo

```lua
C_SpellBook.GetSpellBookItemInfo(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> spellBookItemInfo: SpellBookItemInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookItemLevelLearned

```lua
C_SpellBook.GetSpellBookItemLevelLearned(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> levelLearned: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the level the spell is learned at; May return a different value if the player is currently Level Linked with another player; Returns 0 if item is not a Spell

### C_SpellBook.GetSpellBookItemLink

```lua
C_SpellBook.GetSpellBookItemLink(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank, glyphID: number?) -> spellLink: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookItemLossOfControlCooldownDuration

```lua
C_SpellBook.GetSpellBookItemLossOfControlCooldownDuration(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a duration object describing the active loss of control cooldown duration for a spellbook item.

### C_SpellBook.GetSpellBookItemLossOfControlCooldownInfo

```lua
C_SpellBook.GetSpellBookItemLossOfControlCooldownInfo(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> lossOfControlInfo: SpellLossOfControlInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns nil if item doesn't exist or if this kind of item doesn't display cooldowns (ex: future or offspec spells)

### C_SpellBook.GetSpellBookItemName

```lua
C_SpellBook.GetSpellBookItemName(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> name: string, subName: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookItemPowerCost

```lua
C_SpellBook.GetSpellBookItemPowerCost(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> powerCosts: table<SpellPowerCostInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a table containing one or more SpellPowerCostInfos, one for each power type a SpellBookItem costs; May return nil if item is not found or has no resource costs

### C_SpellBook.GetSpellBookItemSkillLineIndex

```lua
C_SpellBook.GetSpellBookItemSkillLineIndex(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> skillLineIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

Get the index of the SkillLine this SpellBookItem is part of

### C_SpellBook.GetSpellBookItemTexture

```lua
C_SpellBook.GetSpellBookItemTexture(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> iconID: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookItemTradeSkillLink

```lua
C_SpellBook.GetSpellBookItemTradeSkillLink(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> spellLink: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns nil if SpellBookItem is not associated with a trade skill

### C_SpellBook.GetSpellBookItemType

```lua
C_SpellBook.GetSpellBookItemType(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> itemType: SpellBookItemType, actionID: number, spellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.GetSpellBookSkillLineInfo

```lua
C_SpellBook.GetSpellBookSkillLineInfo(skillLineIndex: luaIndex) -> skillLineInfo: SpellBookSkillLineInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SpellBook.HasPetSpells

```lua
C_SpellBook.HasPetSpells() -> numPetSpells: number, petNameToken: string
```

Flags: MayReturnNothing  

Returns nothing if player has no pet spells

### C_SpellBook.IsAutoAttackSpellBookItem

```lua
C_SpellBook.IsAutoAttackSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isAutoAttack: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem is the player's melee Auto Attack spell

### C_SpellBook.IsClassTalentSpellBookItem

```lua
C_SpellBook.IsClassTalentSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isClassTalent: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem comes from a Class Talent

### C_SpellBook.IsPvPTalentSpellBookItem

```lua
C_SpellBook.IsPvPTalentSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isPvPTalent: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem comes from a PvP Talent

### C_SpellBook.IsRangedAutoAttackSpellBookItem

```lua
C_SpellBook.IsRangedAutoAttackSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isRangedAutoAttack: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem is the player's ranged Auto Attack spell (ex: Shoot, Auto Shot, etc)

### C_SpellBook.IsSpellBookItemHarmful

```lua
C_SpellBook.IsSpellBookItemHarmful(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isHarmful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookIem can be cast on hostile targets

### C_SpellBook.IsSpellBookItemHelpful

```lua
C_SpellBook.IsSpellBookItemHelpful(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isHelpful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookIem can be cast on the player or other friendly targets

### C_SpellBook.IsSpellBookItemInRange

```lua
C_SpellBook.IsSpellBookItemInRange(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank, targetUnit: UnitToken?) -> inRange: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the current target is within range of the SpellBookIem; False if out of range; Nil if range check was invalid

### C_SpellBook.IsSpellBookItemLooseFlyoutMember

```lua
C_SpellBook.IsSpellBookItemLooseFlyoutMember(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isFlyoutMember: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem is represented in a Flyout.

### C_SpellBook.IsSpellBookItemLowRank

```lua
C_SpellBook.IsSpellBookItemLowRank(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isLowRank: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem is a lower rank of a known higher rank spell.  Returns false if there is only a single rank or it is the highest rank known.

### C_SpellBook.IsSpellBookItemOffSpec

```lua
C_SpellBook.IsSpellBookItemOffSpec(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isOffSpec: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem belongs to a non-active class specialization

### C_SpellBook.IsSpellBookItemPassive

```lua
C_SpellBook.IsSpellBookItemPassive(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isPassive: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookItem is a passive spell; Will always return false if it is not a spell

### C_SpellBook.IsSpellBookItemUsable

```lua
C_SpellBook.IsSpellBookItemUsable(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isUsable: bool, insufficientPower: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the SpellBookIem is currently castable; Typically based on things like learned status, required resources, etc

### C_SpellBook.IsSpellInSpellBook

```lua
C_SpellBook.IsSpellInSpellBook(spellID: number, spellBank: SpellBookSpellBank = Player, includeOverrides: bool = true) -> isInSpellBook: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a spell should be found in the spellbook. This function can also return true for spells that aren't known, such as override spells granted by an aura linked to class talents

### C_SpellBook.IsSpellKnown

```lua
C_SpellBook.IsSpellKnown(spellID: number, spellBank: SpellBookSpellBank = Player) -> isKnown: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a player knows a spell. This function can also return true for spells that aren't in the spellbook, such as temporarily-granted abilities

### C_SpellBook.IsSpellKnownOrInSpellBook

```lua
C_SpellBook.IsSpellKnownOrInSpellBook(spellID: number, spellBank: SpellBookSpellBank = Player, includeOverrides: bool = true) -> isKnownOrInSpellBook: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a spell is considered to be known or present in the spellbook

### C_SpellBook.PickupSpellBookItem

```lua
C_SpellBook.PickupSpellBookItem(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.SetBarSlotFromIntro

```lua
C_SpellBook.SetBarSlotFromIntro(spellID: number, slotIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.SetSpellBookItemAutoCastEnabled

```lua
C_SpellBook.SetSpellBookItemAutoCastEnabled(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank, enabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpellBook.SpellBookItemHasRange

```lua
C_SpellBook.SpellBookItemHasRange(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> hasRange: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if the SpellBookIem has a min and/or max range greater than 0; Will always return false if it is not a spell

### C_SpellBook.ToggleSpellBookItemAutoCast

```lua
C_SpellBook.ToggleSpellBookItemAutoCast(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CURRENT_SPELL_CAST_CHANGED

Payload: `cancelledCast: bool`  
Flags: SynchronousEvent  

### LEARNED_SPELL_IN_SKILL_LINE

Payload: `spellID: number, skillLineIndex: luaIndex, isGuildPerkSpell: bool`  
Flags: SynchronousEvent  

### MAX_SPELL_START_RECOVERY_OFFSET_CHANGED

Payload: `clampedNewQueueWindowMs: number`  
Flags: SynchronousEvent  

### PLAYER_TOTEM_UPDATE

Payload: `totemSlot: luaIndex`  
Flags: SynchronousEvent  

### SPELL_FLYOUT_UPDATE

Payload: `flyoutID: number?, spellID: number?, isLearned: bool?`  
Flags: SynchronousEvent, UniqueEvent  

### SPELL_PUSHED_TO_ACTIONBAR

Payload: `spellID: number, slot: luaIndex, page: luaIndex`  
Flags: SynchronousEvent  

### SPELL_PUSHED_TO_FLYOUT_ON_ACTIONBAR

Payload: `spellID: number, flyoutSlot: luaIndex, flyoutPage: luaIndex`  
Flags: SynchronousEvent  

### SPELL_UPDATE_CHARGES

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### SPELL_UPDATE_COOLDOWN

Payload: `spellID: number?, baseSpellID: number?, category: number?, startRecoveryCategory: number?, itemID: number?`  
Flags: UniqueEvent  

### SPELL_UPDATE_ICON

Payload: `spellID: number?`  
Flags: UniqueEvent  

### SPELL_UPDATE_USABLE

Payload: `none`  
Flags: UniqueEvent  

### SPELL_UPDATE_USES

Payload: `spellID: number, baseSpellID: number?`  
Flags: UniqueEvent  

### SPELLS_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### START_AUTOREPEAT_SPELL

Payload: `none`  
Flags: SynchronousEvent  

### STOP_AUTOREPEAT_SPELL

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_SHAPESHIFT_COOLDOWN

Payload: `none`  
Flags: UniqueEvent  

### UPDATE_SHAPESHIFT_FORM

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_SHAPESHIFT_FORMS

Payload: `none`  
Flags: UniqueEvent  

### UPDATE_SHAPESHIFT_USABLE

Payload: `none`  
Flags: UniqueEvent  

## Tables

### SpellBookItemInfo (Structure)

- `actionID: number` Represents a base spellID for spells, flyoutID for flyouts, or petActionID for pet actions
- `spellID: number?` May be nil if item is not a spell; Will be the overriding spellID if spell is overriden, otherwise will match actionID
- `itemType: SpellBookItemType`
- `name: string`
- `subName: string` May be empty if flyout, or if spell's data isn't loaded yet; Listen for SPELL_TEXT_UPDATE event, or use SpellMixin to load asynchronously
- `iconID: fileID`
- `isPassive: bool` True if the item is a passive spell; Will always be false if it is not a spell
- `isOffSpec: bool` True if the item belongs to a non-active specialization
- `skillLineIndex: luaIndex?` Index of the SkillLine this SpellBookItem is part of; Nil this SpellBookItem isn't part of a SkillLine

### SpellBookSkillLineInfo (Structure)

- `name: string`
- `iconID: fileID`
- `itemIndexOffset: number` This value + 1 is the first Spell Book Item slotIndex within this skill line
- `numSpellBookItems: number`
- `isGuild: bool`
- `shouldHide: bool`
- `specID: number?` Will be nil if this skill line is not associated with a specialization
- `offSpecID: number?` Will be nil if this skill line is not associated with a non-active specialization
