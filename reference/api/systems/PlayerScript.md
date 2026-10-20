# PlayerScript

Type: System  
Environment: All

## Functions

### AcceptAreaSpiritHeal

```lua
AcceptAreaSpiritHeal()
```

### AcceptGuild

```lua
AcceptGuild()
```

### AcceptResurrect

```lua
AcceptResurrect()
```

### Ambiguate

```lua
Ambiguate(fullName: cstring, context: cstring) -> result: string
```

Secret: SecretArguments=AllowedWhenTainted  

### AutoEquipCursorItem

```lua
AutoEquipCursorItem()
```

### BeginTrade

```lua
BeginTrade()
```

### CanDualWield

```lua
CanDualWield() -> result: bool
```

### CanInspect

```lua
CanInspect(targetGUID: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### CanLootUnit

```lua
CanLootUnit(targetUnit: WOWGUID) -> hasLoot: bool, canLoot: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### CanPortGraveyard

```lua
CanPortGraveyard() -> canPortGraveyard: bool
```

### CancelAreaSpiritHeal

```lua
CancelAreaSpiritHeal()
```

### CancelPendingEquip

```lua
CancelPendingEquip(index: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### CancelTrade

```lua
CancelTrade()
```

### CheckInteractDistance

```lua
CheckInteractDistance(unitGUID: UnitToken, distIndex: luaIndex) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### CheckTalentMasterDist

```lua
CheckTalentMasterDist() -> result: bool
```

### ClearPendingBindConversionItem

```lua
ClearPendingBindConversionItem()
```

### ConfirmTalentWipe

```lua
ConfirmTalentWipe()
```

### ConvertItemToBindToAccount

```lua
ConvertItemToBindToAccount()
```

### DeclineGuild

```lua
DeclineGuild()
```

### DeclineResurrect

```lua
DeclineResurrect()
```

### Dismount

```lua
Dismount()
```

### EquipPendingItem

```lua
EquipPendingItem(index: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### FollowUnit

```lua
FollowUnit(name: cstring = 0, exactMatch: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetAllowLowLevelRaid

```lua
GetAllowLowLevelRaid() -> result: bool
```

### GetAllowRecentAlliesSeeLocation

```lua
GetAllowRecentAlliesSeeLocation() -> allowRecentAlliesSeeLocation: bool
```

### GetAreaSpiritHealerTime

```lua
GetAreaSpiritHealerTime() -> result: number
```

### GetArmorPenetration

```lua
GetArmorPenetration() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetAttackPowerForStat

```lua
GetAttackPowerForStat(stat: luaIndex, value: number) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetAutoDeclineGuildInvites

```lua
GetAutoDeclineGuildInvites() -> result: bool
```

### GetAutoDeclineNeighborhoodInvites

```lua
GetAutoDeclineNeighborhoodInvites() -> result: bool
```

### GetAvoidance

```lua
GetAvoidance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetBindLocation

```lua
GetBindLocation() -> result: cstring
```

### GetBlockChance

```lua
GetBlockChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetCemeteryPreference

```lua
GetCemeteryPreference() -> result: number
```

### GetCollapsingStarCost

```lua
GetCollapsingStarCost() -> cost: number
```

### GetCombatRating

```lua
GetCombatRating(ratingIndex: luaIndex) -> result: number?
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetCombatRatingBonus

```lua
GetCombatRatingBonus(ratingIndex: luaIndex) -> result: number?
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetCombatRatingBonusForCombatRatingValue

```lua
GetCombatRatingBonusForCombatRatingValue(ratingIndex: luaIndex, value: number) -> result: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetCorpseRecoveryDelay

```lua
GetCorpseRecoveryDelay() -> result: number
```

### GetCorruption

```lua
GetCorruption() -> result: number
```

### GetCorruptionResistance

```lua
GetCorruptionResistance() -> result: number
```

### GetCritChance

```lua
GetCritChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetCritChanceFromStat

```lua
GetCritChanceFromStat(stat: luaIndex, value: number) -> critChance: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetCritChanceProvidesParryEffect

```lua
GetCritChanceProvidesParryEffect() -> result: bool
```

### GetDodgeChance

```lua
GetDodgeChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetDodgeChanceFromAttribute

```lua
GetDodgeChanceFromAttribute() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetEvictionTimeRemaining

```lua
GetEvictionTimeRemaining() -> result: number
```

### GetExpertise

```lua
GetExpertise() -> mainhandExpertise: number, offhandExpertise: number, rangedExpertise: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetExpertisePercent

```lua
GetExpertisePercent() -> mainhandExpertisePercent: number, offhandExpertisePercent: number, rangedExpertisePercent: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetGlancingBlowChance

```lua
GetGlancingBlowChance(playerWeaponSkill: number?, targetDefenseSkill: number) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

If no playerWeaponSkill value is provided, uses the skill value for the player's main hand weapon/shapeshift form.

### GetGlancingBlowPenalty

```lua
GetGlancingBlowPenalty(playerWeaponSkill: number?, targetDefenseSkill: number) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

If no playerWeaponSkill value is provided, uses the skill value for the player's main hand weapon/shapeshift form.

### GetHaste

```lua
GetHaste() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetHealthRegen

```lua
GetHealthRegen() -> healthRegen: number, combatHealthRegen: number
```

### GetHealthRegenFromSpirit

```lua
GetHealthRegenFromSpirit() -> healthRegen: number, combatHealthRegen: number
```

### GetHitModifier

```lua
GetHitModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetJailersTowerLevel

```lua
GetJailersTowerLevel() -> result: number
```

### GetLifesteal

```lua
GetLifesteal() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetLootSpecialization

```lua
GetLootSpecialization() -> specializationID: number
```

### GetManaRegen

```lua
GetManaRegen() -> baseManaRegen: number, castingManaRegen: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetManaRegenFromSpirit

```lua
GetManaRegenFromSpirit() -> powerRegen: number, combatPowerRegen: number
```

### GetMastery

```lua
GetMastery() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetMasteryEffect

```lua
GetMasteryEffect() -> masteryEffect: number, bonusCoefficient: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetMaxPlayerLevel

```lua
GetMaxPlayerLevel() -> maxPlayerLevel: number
```

### GetMeleeHaste

```lua
GetMeleeHaste() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetModResilienceDamageReduction

```lua
GetModResilienceDamageReduction() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetMoney

```lua
GetMoney() -> result: number
```

### GetNormalizedRealmName

```lua
GetNormalizedRealmName() -> result: cstring
```

### GetOffhandHitModifier

```lua
GetOffhandHitModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetOverrideAPBySpellPower

```lua
GetOverrideAPBySpellPower() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetOverrideSpellPowerByAP

```lua
GetOverrideSpellPowerByAP() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPVPDesired

```lua
GetPVPDesired() -> result: bool
```

### GetPVPGearStatRules

```lua
GetPVPGearStatRules() -> result: bool
```

### GetPVPLifetimeStats

```lua
GetPVPLifetimeStats() -> lifetimeHonorableKills: number, lifetimeMaxPVPRank: PvPRanks
```

### GetPVPSessionStats

```lua
GetPVPSessionStats() -> honorableKills: number, dishonorableKills: number
```

### GetPVPTimer

```lua
GetPVPTimer() -> result: number
```

### GetPVPYesterdayStats

```lua
GetPVPYesterdayStats() -> honorableKills: number, dishonorableKills: number
```

### GetParryChance

```lua
GetParryChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetParryChanceFromAttribute

```lua
GetParryChanceFromAttribute() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetCritChance

```lua
GetPetCritChance() -> meleeCrit: number, spellCrit: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetDodgeChance

```lua
GetPetDodgeChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetHitChanceModifier

```lua
GetPetHitChanceModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetMeleeHaste

```lua
GetPetMeleeHaste() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetSpellBonusDamage

```lua
GetPetSpellBonusDamage() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPetSpellHitChanceModifier

```lua
GetPetSpellHitChanceModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPlayerFacing

```lua
GetPlayerFacing() -> result: number?
```

### GetPlayerInfoByGUID

```lua
GetPlayerInfoByGUID(guid: WOWGUID) -> localizedClass: cstring, englishClass: cstring, localizedRace: cstring, englishRace: cstring, sex: number, name: string, realmName: cstring, level: number?
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### GetPowerRegen

```lua
GetPowerRegen() -> basePowerRegen: number, castingPowerRegen: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPowerRegenForPowerType

```lua
GetPowerRegenForPowerType(powerType: number) -> basePowerRegen: number, castingPowerRegen: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetPvpPowerDamage

```lua
GetPvpPowerDamage() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetPvpPowerHealing

```lua
GetPvpPowerHealing() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetRangedAttackPowerForStat

```lua
GetRangedAttackPowerForStat(stat: luaIndex, value: number) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetRangedCritChance

```lua
GetRangedCritChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetRangedHaste

```lua
GetRangedHaste() -> result: number, quiverHaste: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetRangedHitModifier

```lua
GetRangedHitModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetReleaseTimeRemaining

```lua
GetReleaseTimeRemaining() -> result: number
```

### GetResSicknessDuration

```lua
GetResSicknessDuration() -> result: string?
```

### GetRestState

```lua
GetRestState() -> exhaustionID: number, name: cstring, factor: number
```

Flags: MayReturnNothing  

### GetRestrictedAccountData

```lua
GetRestrictedAccountData() -> maxLevel: number, maxMoney: WOWMONEY, professionCap: number
```

### GetRuneCooldown

```lua
GetRuneCooldown(runeIndex: luaIndex) -> startTime: number, duration: number, isRuneReady: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetRuneCount

```lua
GetRuneCount(runeIndex: luaIndex) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetSheathState

```lua
GetSheathState() -> result: number?
```

### GetShieldBlock

```lua
GetShieldBlock() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSpeed

```lua
GetSpeed() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSpellBonusDamage

```lua
GetSpellBonusDamage(school: luaIndex) -> result: number?
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetSpellBonusHealing

```lua
GetSpellBonusHealing() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSpellCritChance

```lua
GetSpellCritChance() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSpellCritChanceFromStat

```lua
GetSpellCritChanceFromStat(stat: luaIndex, value: number) -> spellCritChance: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetSpellHitModifier

```lua
GetSpellHitModifier() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSpellPenetration

```lua
GetSpellPenetration() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetSturdiness

```lua
GetSturdiness() -> result: number
```

Secret: SecretWhenUnitStatsRestricted  

### GetTaxiBenchmarkMode

```lua
GetTaxiBenchmarkMode() -> result: bool
```

### GetVersatilityBonus

```lua
GetVersatilityBonus(combatRating: luaIndex) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetXPExhaustion

```lua
GetXPExhaustion() -> result: number?
```

### HasAPEffectsSpellPower

```lua
HasAPEffectsSpellPower() -> result: bool
```

### HasDualWieldPenalty

```lua
HasDualWieldPenalty() -> result: bool
```

### HasFullControl

```lua
HasFullControl() -> result: bool
```

### HasIgnoreDualWieldWeapon

```lua
HasIgnoreDualWieldWeapon() -> result: bool
```

### HasKey

```lua
HasKey() -> hasKey: bool
```

### HasNoReleaseAura

```lua
HasNoReleaseAura() -> hasCannotReleaseEffect: bool, longestDuration: number, hasUntilCancelledDuration: bool
```

### HasSPEffectsAttackPower

```lua
HasSPEffectsAttackPower() -> result: bool
```

### InitiateTrade

```lua
InitiateTrade(guid: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsAccountSecured

```lua
IsAccountSecured() -> result: bool
```

### IsAdvancedFlyableArea

```lua
IsAdvancedFlyableArea() -> result: bool
```

### IsCemeterySelectionAvailable

```lua
IsCemeterySelectionAvailable() -> result: bool
```

### IsCharacterNewlyBoosted

```lua
IsCharacterNewlyBoosted() -> newlyBoosted: bool
```

### IsDrivableArea

```lua
IsDrivableArea() -> result: bool
```

### IsDualWielding

```lua
IsDualWielding() -> result: bool
```

### IsFlyableArea

```lua
IsFlyableArea() -> result: bool
```

### IsGuildLeader

```lua
IsGuildLeader() -> result: bool
```

### IsInGuild

```lua
IsInGuild() -> result: bool
```

### IsInJailersTower

```lua
IsInJailersTower() -> result: bool
```

### IsIndoors

```lua
IsIndoors() -> result: bool
```

### IsInsane

```lua
IsInsane() -> result: bool
```

### IsItemPreferredArmorType

```lua
IsItemPreferredArmorType(itemLocation: ItemLocation) -> isItemPreferredArmorType: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsJailersTowerLayerTimeLocked

```lua
IsJailersTowerLayerTimeLocked(layerLevel: number) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsLoggedIn

```lua
IsLoggedIn() -> result: bool
```

### IsMounted

```lua
IsMounted() -> result: bool
```

### IsOnGroundFloorInJailersTower

```lua
IsOnGroundFloorInJailersTower() -> result: bool
```

### IsOutOfBounds

```lua
IsOutOfBounds() -> result: bool
```

### IsOutdoors

```lua
IsOutdoors() -> result: bool
```

### IsPVPTimerRunning

```lua
IsPVPTimerRunning() -> result: bool
```

### IsPlayerInWorld

```lua
IsPlayerInWorld() -> result: bool
```

### IsPlayerMoving

```lua
IsPlayerMoving() -> result: bool
```

### IsRangedWeapon

```lua
IsRangedWeapon() -> result: bool
```

### IsResting

```lua
IsResting() -> result: bool
```

### IsRestrictedAccount

```lua
IsRestrictedAccount() -> result: bool
```

### IsStealthed

```lua
IsStealthed() -> result: bool
```

### IsXPUserDisabled

```lua
IsXPUserDisabled() -> result: bool
```

### NoPlayTime

```lua
NoPlayTime() -> result: bool?
```

### NotifyInspect

```lua
NotifyInspect(targetGUID: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

### PartialPlayTime

```lua
PartialPlayTime() -> result: bool?
```

### PlayerCanTeleport

```lua
PlayerCanTeleport() -> result: bool
```

### PlayerEffectiveAttackPower

```lua
PlayerEffectiveAttackPower() -> mainHandAttackPower: number, offHandAttackPower: number, rangedAttackPower: number, baseAttackPower: number, baseRangedAttackPower: number
```

Secret: SecretWhenUnitStatsRestricted  

Flags: MayReturnNothing  

### PlayerGetTimerunningSeasonID

```lua
PlayerGetTimerunningSeasonID() -> timerunningSeasonID: number?
```

### PlayerIsInCombat

```lua
PlayerIsInCombat() -> playerIsInCombat: bool
```

### PlayerIsTimerunning

```lua
PlayerIsTimerunning() -> playerIsTimerunning: bool
```

### PortGraveyard

```lua
PortGraveyard()
```

### RandomRoll

```lua
RandomRoll(min: number, max: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ReagentsFromBankAllowed

```lua
ReagentsFromBankAllowed() -> allowed: bool
```

### RepopMe

```lua
RepopMe()
```

### RequestTimePlayed

```lua
RequestTimePlayed()
```

### RespondInstanceLock

```lua
RespondInstanceLock(acceptLock: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ResurrectGetOfferer

```lua
ResurrectGetOfferer() -> name: cstring
```

### ResurrectHasSickness

```lua
ResurrectHasSickness() -> result: bool
```

### ResurrectHasTimer

```lua
ResurrectHasTimer() -> result: bool
```

### RetrieveCorpse

```lua
RetrieveCorpse()
```

### SetAllowLowLevelRaid

```lua
SetAllowLowLevelRaid(allow: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetAllowRecentAlliesSeeLocation

```lua
SetAllowRecentAlliesSeeLocation(allowRecentAlliesSeeLocation: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetAutoDeclineGuildInvites

```lua
SetAutoDeclineGuildInvites(allow: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetAutoDeclineNeighborhoodInvites

```lua
SetAutoDeclineNeighborhoodInvites(allow: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetCemeteryPreference

```lua
SetCemeteryPreference(cemetaryID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetLootSpecialization

```lua
SetLootSpecialization(specializationID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetTaxiBenchmarkMode

```lua
SetTaxiBenchmarkMode(enable: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ShouldDisplayRaidRolesInSocialFrame

```lua
ShouldDisplayRaidRolesInSocialFrame() -> result: bool
```

### ShouldDisplayStoryModeTooltipInSocialFrame

```lua
ShouldDisplayStoryModeTooltipInSocialFrame() -> result: bool
```

### ShouldShowIslandsWeeklyPOI

```lua
ShouldShowIslandsWeeklyPOI() -> result: bool
```

### ShouldShowSpecialSplashScreen

```lua
ShouldShowSpecialSplashScreen() -> result: bool
```

### ShowCloak

```lua
ShowCloak(show: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ShowHelm

```lua
ShowHelm(show: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### ShowingCloak

```lua
ShowingCloak() -> result: bool
```

### ShowingHelm

```lua
ShowingHelm() -> result: bool
```

### SitStandOrDescendStart

```lua
SitStandOrDescendStart()
```

Flags: HasRestrictions  

### SplashFrameCanBeShown

```lua
SplashFrameCanBeShown() -> result: bool
```

### StartAttack

```lua
StartAttack(name: cstring = 0, exactMatch: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### StopAttack

```lua
StopAttack()
```

### Stuck

```lua
Stuck()
```

### TimeoutResurrect

```lua
TimeoutResurrect()
```

### ToggleSelfHighlight

```lua
ToggleSelfHighlight() -> enabled: bool
```

### ToggleSheath

```lua
ToggleSheath()
```

### ToggleSit

```lua
ToggleSit()
```

Flags: HasRestrictions  

## Events

### PLAYER_IN_COMBAT_CHANGED

Payload: `inCombat: bool`  
Flags: SynchronousEvent  

### PLAYER_TARGET_DIED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### PlayerAttackPowerInfo (Structure)

- `mainHandAttackPower: number`
- `offHandAttackPower: number`
- `rangedAttackPower: number`
- `baseAttackPower: number`
- `baseRangedAttackPower: number`
