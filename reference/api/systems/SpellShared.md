# SpellShared

Type: None

## Tables

### SpellChargeInfo (Structure)

- `currentCharges: number` Number of charges currently available
- `maxCharges: number` Max number of charges that can be accumulated
- `cooldownStartTime: number` If charge cooldown is active, time at which the most recent charge cooldown began; 0 if cooldown is not active
- `cooldownDuration: number` Cooldown duration in seconds required to generate a charge
- `chargeModRate: number` Rate at which cooldown UI should update
- `isActive: bool` False if recharging is not active (ex: at maximum available charges, start time or duration are zero); True otherwise

### SpellCooldownInfo (Structure)

- `startTime: number` If cooldown is active, time started; 0 if no cooldown; Current time if isEnabled is false
- `duration: number` Cooldown duration in seconds if active; 0 if cooldown is inactive
- `isEnabled: bool` False if cooldown is on hold (ex: some cooldowns only start after an active spell is cancelled); True otherwise
- `isActive: bool` False if cooldown is not active (ex: not enabled, or startTime or duration are 0); True otherwise
- `modRate: number` Rate at which cooldown UI should update
- `activeCategory: number?` Indicates which category is responsible for determining the duration. A nil value indicates the duration was determined through some other logic, e.g. the spell is on hold.
- `timeUntilEndOfStartRecovery: number?` When this is set it indicates that the spell is in recovery and this is how long it will be until that recovery period is finished
- `isOnGCD: bool?` Whether or not this spell is considered to be on the global cooldown, do not trust this field unless responding to a SPELL_UPDATE_COOLDOWN event

### SpellLossOfControlInfo (Structure)

- `startTime: number` If cooldown is active, time started; 0 if no cooldown
- `duration: number` Cooldown duration in seconds if active; 0 if cooldown is inactive
- `modRate: number` Rate at which cooldown UI should update
- `isActive: bool` False if cooldown is not active (startTime or duration are 0); True otherwise
- `shouldReplaceNormalCooldown: bool` True if this cooldown should be displayed in-place of the normal action cooldown (ex: the LoC cooldown expires later than the normal cooldown); False otherwise

### SpellPowerCostInfo (Structure)

- `type: PowerType`
- `name: string` The name or 'power token' for this power type (ex: MANA, FOCUS, etc)
- `cost: number` Full cost including optional cost; Optional cost is cost the spell will use but isn't required (ex: Rogue spell might cost 1CP but have optional cost of up to 5 more)
- `minCost: number` Cost excluding optional cost; This is min required to cast the spell
- `costPercent: number` Cost as a percentage of base maximum resource; May be 0 if the cost is simply a flat cost
- `costPerSec: number` Cost as a percentage of base maximum resource consumed per second, used by channel spells; May be 0 if cost is simply a flat cost
- `requiredAuraID: number` An aura the caster must have for the cost to apply; Usually based on things like active spec or shapeshift form
- `hasRequiredAura: bool` True if there is a requiredAuraID and the caster currently has that aura; Caster is either the current player or their pet, depending on spell type

## Preconditions

- `RequiresValidSpellIdentifier` (FailureMode=ReturnNothing)
