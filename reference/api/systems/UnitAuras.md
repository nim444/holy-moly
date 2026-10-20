# UnitAuras

Type: System  
Namespace: `C_UnitAuras`  
Environment: All

## Functions

### C_UnitAuras.AddAuraSound

```lua
C_UnitAuras.AddAuraSound(trigger: UnitAuraSoundTrigger, sound: UnitAuraSoundInfo) -> auraSoundID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

Registers a sound for an aura event. The sound is stopped after five seconds of playback. The throttleSeconds value must be between 0 and 5 seconds, inclusive.

### C_UnitAuras.AddBlockedAura

```lua
C_UnitAuras.AddBlockedAura(unit: UnitTokenRestrictedForAddOns, auraInstanceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.AddPrivateAuraAnchor

```lua
C_UnitAuras.AddPrivateAuraAnchor(args: AddPrivateAuraAnchorArgs) -> anchorID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.AuraIsBigDefensive

```lua
C_UnitAuras.AuraIsBigDefensive(spellID: SpellIdentifier) -> isBigDefensive: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_UnitAuras.AuraIsPrivate

```lua
C_UnitAuras.AuraIsPrivate(spellID: SpellIdentifier) -> isPrivate: bool
```

Secret: SecretArguments=AllowedWhenTainted  

### C_UnitAuras.CancelAuraByInstanceID

```lua
C_UnitAuras.CancelAuraByInstanceID(unit: UnitTokenRestrictedForAddOns, auraInstanceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess, HasRestrictions  

### C_UnitAuras.ClearBlockedAuras

```lua
C_UnitAuras.ClearBlockedAuras(unit: UnitTokenRestrictedForAddOns)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.DoesAuraHaveExpirationTime

```lua
C_UnitAuras.DoesAuraHaveExpirationTime(auraInstanceUnit: UnitToken, auraInstanceID: number) -> hasExpirationTime: bool
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Returns true if an aura instance will expire after a certain amount of time.

### C_UnitAuras.GetAuraApplicationDisplayCount

```lua
C_UnitAuras.GetAuraApplicationDisplayCount(auraInstanceUnit: UnitToken, auraInstanceID: number, minDisplayCount: number = 2, maxDisplayCount: number?) -> count: string
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Formats a string for displaying the number of applications an aura has present.

### C_UnitAuras.GetAuraBaseDuration

```lua
C_UnitAuras.GetAuraBaseDuration(auraInstanceUnit: UnitToken, auraInstanceID: number, spellID: SpellIdentifier?) -> newDuration: number?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Returns the base duration of the given spell (or aura). Takes an optional spellID to use as the new duration if that cannot be derived from the aura, if that value isn't supplied the aura's spellID will be used

### C_UnitAuras.GetAuraCasterGUID

```lua
C_UnitAuras.GetAuraCasterGUID(auraInstanceUnit: UnitToken, auraInstanceID: number) -> casterGUID: WOWGUID?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

### C_UnitAuras.GetAuraDataByAuraInstanceID

```lua
C_UnitAuras.GetAuraDataByAuraInstanceID(unit: UnitTokenRestrictedForAddOns, auraInstanceID: number) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetAuraDataByIndex

```lua
C_UnitAuras.GetAuraDataByIndex(unit: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetAuraDataBySlot

```lua
C_UnitAuras.GetAuraDataBySlot(unit: UnitTokenRestrictedForAddOns, slot: number) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetAuraDataBySpellName

```lua
C_UnitAuras.GetAuraDataBySpellName(unit: UnitTokenRestrictedForAddOns, spellName: cstring, filter: AuraFilters?) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresNonSecretAura  

### C_UnitAuras.GetAuraDispelTypeColor

```lua
C_UnitAuras.GetAuraDispelTypeColor(auraInstanceUnit: UnitToken, auraInstanceID: number, curve: LuaColorCurveObject) -> dispelTypeColor: colorRGBA
```

Secret: SecretWhenUnitAuraRestricted, SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Queries the dispel type associated with an aura instance and remaps it to a color via a curve, with the dispel type ID used as the 'x' value.

### C_UnitAuras.GetAuraDuration

```lua
C_UnitAuras.GetAuraDuration(auraInstanceUnit: UnitToken, auraInstanceID: number) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

### C_UnitAuras.GetAuraSlots

```lua
C_UnitAuras.GetAuraSlots(unit: UnitTokenRestrictedForAddOns, filter: AuraFilters?, maxSlots: number?, continuationToken: number?) -> outContinuationToken: number?, slots: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetBuffDataByIndex

```lua
C_UnitAuras.GetBuffDataByIndex(unit: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetCooldownAuraBySpellID

```lua
C_UnitAuras.GetCooldownAuraBySpellID(spellID: SpellIdentifier) -> cooldownSpellID: number?
```

Secret: SecretArguments=AllowedWhenTainted  

### C_UnitAuras.GetDebuffDataByIndex

```lua
C_UnitAuras.GetDebuffDataByIndex(unit: UnitTokenRestrictedForAddOns, index: luaIndex, filter: AuraFilters?) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetGroupBuffVisualAlerts

```lua
C_UnitAuras.GetGroupBuffVisualAlerts() -> visualAlerts: table<GroupBuffVisualAlertInfo>
```

Returns the alerts passed to SetGroupBuffVisualAlerts plus an entry for every linked rank spell of those group buffs.

### C_UnitAuras.GetHiddenGroupBuffs

```lua
C_UnitAuras.GetHiddenGroupBuffs() -> spellIDs: table<number>
```

Returns the spell IDs passed to SetHiddenGroupBuffs plus every linked rank spell of those group buffs.

### C_UnitAuras.GetPlayerAuraBySpellID

```lua
C_UnitAuras.GetPlayerAuraBySpellID(spellID: SpellIdentifier) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresNonSecretAura  

### C_UnitAuras.GetRefreshCarryOverDuration

```lua
C_UnitAuras.GetRefreshCarryOverDuration(auraInstanceUnit: UnitToken, auraInstanceID: number, spellID: SpellIdentifier?) -> newDuration: number?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Returns the client-predicted amount of time that a new spellcast of the same spell would carry over to the new application of that aura. Takes an optional spellID to use as the new duration if that cannot be derived from the aura, if that value isn't supplied the aura's spellID will be used

### C_UnitAuras.GetRefreshExtendedDuration

```lua
C_UnitAuras.GetRefreshExtendedDuration(auraInstanceUnit: UnitToken, auraInstanceID: number, spellID: SpellIdentifier?) -> newDuration: number?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresUnitAuraAccess, RequiresValidUnitAuraInstance  

Returns the client-predicted new duration of this aura if it were cast again right now. Takes an optional spellID to use as the new duration if that cannot be derived from the aura, if that value isn't supplied the aura's spellID will be used

### C_UnitAuras.GetUnitAuraBySpellID

```lua
C_UnitAuras.GetUnitAuraBySpellID(unit: UnitTokenRestrictedForAddOns, spellID: SpellIdentifier) -> aura: AuraData?
```

Secret: SecretWhenUnitAuraRestricted, SecretArguments=AllowedWhenTainted  

Flags: RequiresNonSecretAura  

Returns the first instance of an aura on a unit matching a given spell ID. Returns nil if no such aura is found. Additionally can return nil if querying a unit that is not visible (eg. party members on other maps).

### C_UnitAuras.GetUnitAuraInstanceIDs

```lua
C_UnitAuras.GetUnitAuraInstanceIDs(unit: UnitTokenRestrictedForAddOns, filter: AuraFilters, maxCount: number?, sortRule: UnitAuraSortRule = Unsorted, sortDirection: UnitAuraSortDirection = Normal) -> auraInstanceIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.GetUnitAuras

```lua
C_UnitAuras.GetUnitAuras(unit: UnitTokenRestrictedForAddOns, filter: AuraFilters, maxCount: number?, sortRule: UnitAuraSortRule = Unsorted, sortDirection: UnitAuraSortDirection = Normal) -> auras: table<AuraData>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.IsAuraFilteredOutByInstanceID

```lua
C_UnitAuras.IsAuraFilteredOutByInstanceID(unit: UnitTokenRestrictedForAddOns, auraInstanceID: number, filter: AuraFilters) -> isFiltered: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitAuraAccess  

### C_UnitAuras.RemoveAuraSound

```lua
C_UnitAuras.RemoveAuraSound(auraSoundID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.RemovePrivateAuraAnchor

```lua
C_UnitAuras.RemovePrivateAuraAnchor(anchorID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.ResetAuraDataProvider

```lua
C_UnitAuras.ResetAuraDataProvider()
```

### C_UnitAuras.SetGroupBuffVisualAlerts

```lua
C_UnitAuras.SetGroupBuffVisualAlerts(visualAlerts: table<GroupBuffVisualAlertInfo>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_UnitAuras.SetHiddenGroupBuffs

```lua
C_UnitAuras.SetHiddenGroupBuffs(spellIDs: table<number>)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_UnitAuras.SetPrivateWarningTextAnchor

```lua
C_UnitAuras.SetPrivateWarningTextAnchor(parent: SimpleFrame, anchor: AnchorBinding?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UnitAuras.SwitchAuraDataProvider

```lua
C_UnitAuras.SwitchAuraDataProvider()
```

### C_UnitAuras.WantsAlteredForm

```lua
C_UnitAuras.WantsAlteredForm(unit: UnitToken) -> wantsAlteredForm: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### AURA_DATA_PROVIDER_SWITCH

Payload: `useRealDataProvider: bool`  
Flags: SynchronousEvent  

### GROUP_BUFF_VISUAL_ALERTS_CHANGED

Payload: `visualAlerts: table<GroupBuffVisualAlertInfo>`  
Flags: SynchronousEvent  
The payload matches GetGroupBuffVisualAlerts, including linked rank spells.

### HIDDEN_GROUP_BUFFS_CHANGED

Payload: `spellIDs: table<number>`  
Flags: SynchronousEvent  
The payload matches GetHiddenGroupBuffs, including linked rank spells.

### UNIT_AURA

Payload: `unitTarget: UnitTokenVariant, updateInfo: UnitAuraUpdateInfo`  
Flags: SecretWhenAurasRestricted, SynchronousEvent  

### UNIT_AURA_BLOCK_LIST_CLEARED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_AURA_BLOCKED

Payload: `unitTarget: UnitTokenVariant, auraInstanceID: number`  
Flags: SynchronousEvent
