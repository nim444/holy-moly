# ActionBar

Type: System  
Namespace: `C_ActionBar`  
Environment: All

## Functions

### C_ActionBar.EnableActionRangeCheck

```lua
C_ActionBar.EnableActionRangeCheck(actionID: luaIndex, enable: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

Used in conjunction with ActionRangeCheckUpdate to inform the UI when an action goes in or out of range with its current target.

### C_ActionBar.FindAssistedCombatActionButtons

```lua
C_ActionBar.FindAssistedCombatActionButtons(setToSearch: ActionBarSet = All) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns the list of action bar slots that contain the Assisted Combat action spell.

### C_ActionBar.FindFlyoutActionButtons

```lua
C_ActionBar.FindFlyoutActionButtons(flyoutID: number, setToSearch: ActionBarSet = All) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ActionBar.FindPetActionButtons

```lua
C_ActionBar.FindPetActionButtons(petActionID: number, setToSearch: ActionBarSet = All) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ActionBar.FindSpellActionButtons

```lua
C_ActionBar.FindSpellActionButtons(spellID: SpellIdentifier, setToSearch: ActionBarSet = All) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

Returns the list of action bar slots that contain a specified spell.

### C_ActionBar.ForceUpdateAction

```lua
C_ActionBar.ForceUpdateAction(slotID: luaIndex, suppressEvents: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

Force updates some internals for an action button slot.

### C_ActionBar.GetActionAutocast

```lua
C_ActionBar.GetActionAutocast(actionID: luaIndex) -> autocastAllowed: bool, autocastEnabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetActionBarPage

```lua
C_ActionBar.GetActionBarPage() -> currentPage: luaIndex
```

### C_ActionBar.GetActionChargeDuration

```lua
C_ActionBar.GetActionChargeDuration(actionID: luaIndex) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Returns a duration object describing the active recharge time for an action.

### C_ActionBar.GetActionCharges

```lua
C_ActionBar.GetActionCharges(actionID: luaIndex) -> chargeInfo: SpellChargeInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetActionCooldown

```lua
C_ActionBar.GetActionCooldown(actionID: luaIndex) -> cooldownInfo: SpellCooldownInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetActionCooldownDuration

```lua
C_ActionBar.GetActionCooldownDuration(actionID: luaIndex, ignoreGCD: bool = false) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Returns a duration object describing the active cooldown duration for an action.

### C_ActionBar.GetActionDisplayCount

```lua
C_ActionBar.GetActionDisplayCount(actionID: luaIndex, maxDisplayCount: number = 9999, replacementString: cstring = *) -> displayCount: string
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Depending on the action type, return a string that is either the use count or number of charges. If value is beyond the display count parameter, returns the replacementString (defaults to '*').

### C_ActionBar.GetActionLossOfControlCooldownDuration

```lua
C_ActionBar.GetActionLossOfControlCooldownDuration(actionID: luaIndex) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Returns a duration object describing the active loss of control cooldown duration for an action.

### C_ActionBar.GetActionLossOfControlCooldownInfo

```lua
C_ActionBar.GetActionLossOfControlCooldownInfo(actionID: luaIndex) -> lossOfControlInfo: SpellLossOfControlInfo
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetActionText

```lua
C_ActionBar.GetActionText(actionID: luaIndex) -> text: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing, RequiresValidActionSlot  

### C_ActionBar.GetActionTexture

```lua
C_ActionBar.GetActionTexture(actionID: luaIndex) -> textureFileID: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetActionUseCount

```lua
C_ActionBar.GetActionUseCount(actionID: luaIndex) -> count: number
```

Secret: SecretWhenCooldownsRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.GetBonusBarIndex

```lua
C_ActionBar.GetBonusBarIndex() -> bonusBarIndex: luaIndex
```

### C_ActionBar.GetBonusBarIndexForSlot

```lua
C_ActionBar.GetBonusBarIndexForSlot(slotID: luaIndex) -> bonusBarIndex: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.GetBonusBarOffset

```lua
C_ActionBar.GetBonusBarOffset() -> bonusBarOffset: number
```

### C_ActionBar.GetExtraBarIndex

```lua
C_ActionBar.GetExtraBarIndex() -> extraBarIndex: luaIndex
```

### C_ActionBar.GetItemActionOnEquipSpellID

```lua
C_ActionBar.GetItemActionOnEquipSpellID(actionID: luaIndex) -> onEquipSpellID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.GetMultiCastBarIndex

```lua
C_ActionBar.GetMultiCastBarIndex() -> multiCastBarIndex: luaIndex
```

### C_ActionBar.GetOverrideBarIndex

```lua
C_ActionBar.GetOverrideBarIndex() -> overrideBarIndex: luaIndex
```

### C_ActionBar.GetOverrideBarSkin

```lua
C_ActionBar.GetOverrideBarSkin() -> textureFileID: fileID?
```

### C_ActionBar.GetPetActionPetBarIndices

```lua
C_ActionBar.GetPetActionPetBarIndices(petActionID: number, setToSearch: ActionBarSet = All) -> slots: table<luaIndex>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ActionBar.GetProfessionQuality

```lua
C_ActionBar.GetProfessionQuality(actionID: luaIndex) -> quality: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.GetProfessionQualityInfo

```lua
C_ActionBar.GetProfessionQualityInfo(actionID: luaIndex) -> info: CraftingQualityInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.GetSpell

```lua
C_ActionBar.GetSpell(actionID: luaIndex) -> spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.GetTempShapeshiftBarIndex

```lua
C_ActionBar.GetTempShapeshiftBarIndex() -> tempShapeshiftBarIndex: luaIndex
```

### C_ActionBar.GetVehicleBarIndex

```lua
C_ActionBar.GetVehicleBarIndex() -> vehicleBarIndex: luaIndex
```

### C_ActionBar.HasAction

```lua
C_ActionBar.HasAction(actionID: luaIndex) -> hasAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Returns true if an actionbar slot is populated with an action.

### C_ActionBar.HasAssistedCombatActionButtons

```lua
C_ActionBar.HasAssistedCombatActionButtons(setToSearch: ActionBarSet = All) -> hasButtons: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.HasBonusActionBar

```lua
C_ActionBar.HasBonusActionBar() -> hasBonusActionBar: bool
```

### C_ActionBar.HasExtraActionBar

```lua
C_ActionBar.HasExtraActionBar() -> hasExtraActionBar: bool
```

### C_ActionBar.HasFlyoutActionButtons

```lua
C_ActionBar.HasFlyoutActionButtons(flyoutID: number, setToSearch: ActionBarSet = All) -> hasFlyoutActionButtons: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.HasOverrideActionBar

```lua
C_ActionBar.HasOverrideActionBar() -> hasOverrideActionBar: bool
```

### C_ActionBar.HasPetActionButtons

```lua
C_ActionBar.HasPetActionButtons(petActionID: number, setToSearch: ActionBarSet = All) -> hasPetActionButtons: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.HasPetActionPetBarIndices

```lua
C_ActionBar.HasPetActionPetBarIndices(petActionID: number, setToSearch: ActionBarSet = All) -> hasPetActionPetBarIndices: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.HasRangeRequirements

```lua
C_ActionBar.HasRangeRequirements(actionID: luaIndex) -> hasRangeRequirements: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.HasSpellActionButtons

```lua
C_ActionBar.HasSpellActionButtons(spellID: SpellIdentifier, setToSearch: ActionBarSet = All) -> hasSpellActionButtons: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_ActionBar.HasTempShapeshiftActionBar

```lua
C_ActionBar.HasTempShapeshiftActionBar() -> hasTempShapeshiftActionBar: bool
```

### C_ActionBar.HasVehicleActionBar

```lua
C_ActionBar.HasVehicleActionBar() -> hasVehicleActionBar: bool
```

### C_ActionBar.IsActionInRange

```lua
C_ActionBar.IsActionInRange(actionID: luaIndex, target: UnitToken?) -> isInRange: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsAssistedCombatAction

```lua
C_ActionBar.IsAssistedCombatAction(slotID: luaIndex) -> isAssistedCombatAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the given action button contains the Assisted Combat action spell.

### C_ActionBar.IsAttackAction

```lua
C_ActionBar.IsAttackAction(actionID: luaIndex) -> isAttackAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsAutoCastPetAction

```lua
C_ActionBar.IsAutoCastPetAction(slotID: luaIndex) -> isAutoCastPetAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.IsAutoRepeatAction

```lua
C_ActionBar.IsAutoRepeatAction(actionID: luaIndex) -> isAutoRepeatAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsConsumableAction

```lua
C_ActionBar.IsConsumableAction(actionID: luaIndex) -> isConsumableAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsCurrentAction

```lua
C_ActionBar.IsCurrentAction(actionID: luaIndex) -> isCurrentAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsEnabledAutoCastPetAction

```lua
C_ActionBar.IsEnabledAutoCastPetAction(slotID: luaIndex) -> isEnabledAutoCastPetAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.IsEquippedAction

```lua
C_ActionBar.IsEquippedAction(actionID: luaIndex) -> isEquippedAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsEquippedGearOutfitAction

```lua
C_ActionBar.IsEquippedGearOutfitAction(slotID: luaIndex) -> isEquippedGearOutfitAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.IsHarmfulAction

```lua
C_ActionBar.IsHarmfulAction(actionID: luaIndex, useNeutral: bool) -> isHarmful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.IsHelpfulAction

```lua
C_ActionBar.IsHelpfulAction(actionID: luaIndex, useNeutral: bool) -> isHelpful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.IsInterruptAction

```lua
C_ActionBar.IsInterruptAction(slotID: luaIndex) -> isInterruptAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the given action button contains a spell that can interrupt spellcasting.

### C_ActionBar.IsItemAction

```lua
C_ActionBar.IsItemAction(actionID: luaIndex) -> isItemAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsMacroActionWithShowTooltip

```lua
C_ActionBar.IsMacroActionWithShowTooltip(actionID: luaIndex) -> isMacroActionWithShowTooltip: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

Returns whether the given action button contains a macro with an explicit #showtooltip directive.

### C_ActionBar.IsOnBarOrSpecialBar

```lua
C_ActionBar.IsOnBarOrSpecialBar(spellID: SpellIdentifier, setToSearch: ActionBarSet = All) -> isOnBarOrSpecialBar: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_ActionBar.IsPossessBarVisible

```lua
C_ActionBar.IsPossessBarVisible() -> isPossessBarVisible: bool
```

### C_ActionBar.IsStackableAction

```lua
C_ActionBar.IsStackableAction(actionID: luaIndex) -> isStackableAction: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.IsUsableAction

```lua
C_ActionBar.IsUsableAction(actionID: luaIndex) -> isUsable: bool, isLackingResources: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.PutActionInSlot

```lua
C_ActionBar.PutActionInSlot(slotID: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.RegisterActionUIButton

```lua
C_ActionBar.RegisterActionUIButton(checkboxFrame: SimpleCheckbox, actionID: luaIndex, cooldownFrame: CooldownFrame)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

### C_ActionBar.SetActionBarPage

```lua
C_ActionBar.SetActionBarPage(pageIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.ShouldOverrideBarShowHealthBar

```lua
C_ActionBar.ShouldOverrideBarShowHealthBar() -> showHealthBar: bool
```

### C_ActionBar.ShouldOverrideBarShowManaBar

```lua
C_ActionBar.ShouldOverrideBarShowManaBar() -> showManaBar: bool
```

### C_ActionBar.ShouldShowKeyring

```lua
C_ActionBar.ShouldShowKeyring() -> isKeyringEnabled: bool
```

### C_ActionBar.ToggleAutoCastPetAction

```lua
C_ActionBar.ToggleAutoCastPetAction(slotID: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.UnregisterActionUIButton

```lua
C_ActionBar.UnregisterActionUIButton(checkboxFrame: SimpleCheckbox)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ActionBar.UsesActionText

```lua
C_ActionBar.UsesActionText(actionID: luaIndex) -> usesActionText: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresValidActionSlot  

## Events

### ACTION_RANGE_CHECK_UPDATE

Payload: `slot: luaIndex, isInRange: bool, checksRange: bool`  
Flags: SynchronousEvent  
Used in conjunction with EnableActionRangeCheck to inform the UI when an action goes in or out of range with its current target.

### ACTION_USABLE_CHANGED

Payload: `changes: table<ActionUsableState>`  
Flags: SynchronousEvent  

### ACTIONBAR_HIDEGRID

Payload: `none`  
Flags: SynchronousEvent  

### ACTIONBAR_PAGE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### ACTIONBAR_SHOW_BOTTOMLEFT

Payload: `none`  
Flags: SynchronousEvent  

### ACTIONBAR_SHOWGRID

Payload: `none`  
Flags: SynchronousEvent  

### ACTIONBAR_SLOT_CHANGED

Payload: `slot: number`  
Flags: SynchronousEvent  

### ACTIONBAR_UPDATE_COOLDOWN

Payload: `none`  
Flags: UniqueEvent  

### ACTIONBAR_UPDATE_STATE

Payload: `none`  
Flags: UniqueEvent  

### ACTIONBAR_UPDATE_USABLE

Payload: `none`  
Flags: UniqueEvent  

### PET_BAR_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_BONUS_ACTIONBAR

Payload: `none`  
Flags: SynchronousEvent, UniqueEvent  

### UPDATE_EXTRA_ACTIONBAR

Payload: `none`  
Flags: UniqueEvent  

### UPDATE_MULTI_CAST_ACTIONBAR

Payload: `none`  
Flags: UniqueEvent  

### UPDATE_OVERRIDE_ACTIONBAR

Payload: `none`  
Flags: UniqueEvent  

## Tables

### ActionBarSet (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Mkb | 1 |
| Gamepad | 2 |
| All | 3 |
