# SecretUtil

Type: System  
Namespace: `C_Secrets`  
Environment: All

'How is it a secret if we can C it?'

## Functions

### C_Secrets.CanCompareUnitTokens

```lua
C_Secrets.CanCompareUnitTokens(unit1: UnitToken, unit2: UnitToken) -> isUnitComparisonPermitted: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries to compare two input unit tokens are permitted. If this returns false, APIs guarded by the RequiresComparableUnitTokens predicate will fail.

### C_Secrets.GetPowerTypeSecrecy

```lua
C_Secrets.GetPowerTypeSecrecy(powerType: PowerType) -> secrecy: SecrecyLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

Queries the base secrecy for a power type.

### C_Secrets.GetSpellAuraSecrecy

```lua
C_Secrets.GetSpellAuraSecrecy(spellIdentifier: SpellIdentifier) -> secrecy: SecrecyLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

Queries the base secrecy for a spell if queried as an aura.

### C_Secrets.GetSpellCastSecrecy

```lua
C_Secrets.GetSpellCastSecrecy(spellIdentifier: SpellIdentifier) -> secrecy: SecrecyLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

Queries the base secrecy for a spell if queried as a cast.

### C_Secrets.GetSpellCooldownSecrecy

```lua
C_Secrets.GetSpellCooldownSecrecy(spellIdentifier: SpellIdentifier) -> secrecy: SecrecyLevel
```

Secret: SecretArguments=AllowedWhenUntainted  

Queries the base secrecy for a spell if queried as a cooldown.

### C_Secrets.HasSecretRestrictions

```lua
C_Secrets.HasSecretRestrictions() -> hasSecretRestrictions: bool
```

Returns true if this client build has secret value restrictions enabled. If false, all APIs that are tagged as potentially returning secrets will never do so.

### C_Secrets.ShouldActionCooldownBeSecret

```lua
C_Secrets.ShouldActionCooldownBeSecret(actionID: luaIndex) -> isCooldownSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given action bar slot ID will produce secret values for cooldowns if queried.

### C_Secrets.ShouldAurasBeSecret

```lua
C_Secrets.ShouldAurasBeSecret() -> hasSecretAuras: bool
```

Returns true if queries for aura data will generally produce secret values.

### C_Secrets.ShouldCooldownsBeSecret

```lua
C_Secrets.ShouldCooldownsBeSecret() -> hasSecretCooldowns: bool
```

Returns true if queries for cooldown data will generally produce secret values.

### C_Secrets.ShouldSpellAuraBeSecret

```lua
C_Secrets.ShouldSpellAuraBeSecret(spellIdentifier: SpellIdentifier) -> isAuraSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given spell identifier would, if applied as an aura, produce secret values when queried.

### C_Secrets.ShouldSpellBookItemCooldownBeSecret

```lua
C_Secrets.ShouldSpellBookItemCooldownBeSecret(spellBookItemSlotIndex: luaIndex, spellBookItemSpellBank: SpellBookSpellBank) -> isCooldownSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given spellbook item will produce secret values for cooldowns if queried.

### C_Secrets.ShouldSpellCooldownBeSecret

```lua
C_Secrets.ShouldSpellCooldownBeSecret(spellIdentifier: SpellIdentifier) -> isCooldownSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given spell identifier will produce secret values for cooldowns if queried.

### C_Secrets.ShouldTotemSlotBeSecret

```lua
C_Secrets.ShouldTotemSlotBeSecret(slot: luaIndex) -> isTotemSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if information about a totem slot will produce secret values if queried.

### C_Secrets.ShouldTotemSpellBeSecret

```lua
C_Secrets.ShouldTotemSpellBeSecret(spellID: number) -> isTotemSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if information about a spell when associated with a totem slot will produce secret values if queried.

### C_Secrets.ShouldUnitAuraIndexBeSecret

```lua
C_Secrets.ShouldUnitAuraIndexBeSecret(unit: UnitToken, index: luaIndex, filter: AuraFilters?) -> isAuraSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given aura index will produce secret values if queried.

### C_Secrets.ShouldUnitAuraInstanceBeSecret

```lua
C_Secrets.ShouldUnitAuraInstanceBeSecret(unit: UnitToken, auraInstanceID: number) -> isAuraSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given aura instance ID will produce secret values if queried.

### C_Secrets.ShouldUnitAuraSlotBeSecret

```lua
C_Secrets.ShouldUnitAuraSlotBeSecret(unit: UnitToken, slot: number) -> isAuraSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a given aura slot ID will produce secret values if queried.

### C_Secrets.ShouldUnitComparisonBeSecret

```lua
C_Secrets.ShouldUnitComparisonBeSecret(unit1: UnitToken, unit2: UnitToken) -> isUnitComparisonSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries that compare units will produce secret values.

### C_Secrets.ShouldUnitHealthMaxBeSecret

```lua
C_Secrets.ShouldUnitHealthMaxBeSecret(unit: UnitToken) -> isUnitHealthMaxSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for maximum unit health will produce secret values.

### C_Secrets.ShouldUnitIdentityBeSecret

```lua
C_Secrets.ShouldUnitIdentityBeSecret(unit: UnitToken) -> isUnitIdentitySecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for unit identity (such as name or GUID) will produce secret values.

### C_Secrets.ShouldUnitPowerBeSecret

```lua
C_Secrets.ShouldUnitPowerBeSecret(unit: UnitToken, powerType: PowerType?) -> isUnitPowerSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for unit power will produce secret values.

### C_Secrets.ShouldUnitPowerMaxBeSecret

```lua
C_Secrets.ShouldUnitPowerMaxBeSecret(unit: UnitToken, powerType: PowerType?) -> isUnitPowerMaxSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for maximum unit power will produce secret values.

### C_Secrets.ShouldUnitSpellCastBeSecret

```lua
C_Secrets.ShouldUnitSpellCastBeSecret(unit: UnitToken, spellIdentifier: SpellIdentifier) -> isSpellCastSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for spell casting information for a unit would produce secret values when queried.

### C_Secrets.ShouldUnitSpellCastingBeSecret

```lua
C_Secrets.ShouldUnitSpellCastingBeSecret(unit: UnitToken) -> isSpellCastingSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for spell casting information for a specific unit will generally produce secret values.

### C_Secrets.ShouldUnitStatsBeSecret

```lua
C_Secrets.ShouldUnitStatsBeSecret() -> hasSecretStats: bool
```

Returns true if queries for unit statistics will produce secret values.

### C_Secrets.ShouldUnitThreatStateBeSecret

```lua
C_Secrets.ShouldUnitThreatStateBeSecret(unit: UnitToken, mobUnit: UnitToken?) -> isUnitThreatSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for unit threat status will produce secret values.

### C_Secrets.ShouldUnitThreatValuesBeSecret

```lua
C_Secrets.ShouldUnitThreatValuesBeSecret(unit: UnitToken, mobUnit: UnitToken) -> isUnitThreatSecret: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if queries for unit threat values will produce secret values.
