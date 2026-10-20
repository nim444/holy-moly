# Unit

Type: System  
Environment: All

## Functions

### CanEjectPassengerFromSeat

```lua
CanEjectPassengerFromSeat(virtualSeatIndex: luaIndex) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### CanSwitchVehicleSeat

```lua
CanSwitchVehicleSeat() -> result: bool
```

### ClosestGameObjectPosition

```lua
ClosestGameObjectPosition(gameObjectID: number) -> xPos: number, yPos: number, distance: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### ClosestUnitPosition

```lua
ClosestUnitPosition(creatureID: number) -> xPos: number, yPos: number, distance: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### CreateUnitHealPredictionCalculator

```lua
CreateUnitHealPredictionCalculator() -> healPredictionCalculator: UnitHealPredictionCalculator
```

### EjectPassengerFromSeat

```lua
EjectPassengerFromSeat(virtualSeatIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetComboPoints

```lua
GetComboPoints(unit: UnitTokenPvPRestrictedForAddOns, target: UnitTokenPvPRestrictedForAddOns) -> result: number
```

Secret: SecretWhenUnitPowerRestricted, SecretArguments=AllowedWhenUntainted  

### GetNegativeCorruptionEffectInfo

```lua
GetNegativeCorruptionEffectInfo() -> corruptionEffects: table<CorruptionEffectInfo>
```

### GetUnitChargedPowerPoints

```lua
GetUnitChargedPowerPoints(unit: UnitToken) -> pointIndices: table<number>
```

Secret: SecretWhenUnitPowerRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetUnitEmpowerHoldAtMaxTime

```lua
GetUnitEmpowerHoldAtMaxTime(unit: UnitToken) -> holdAtMaxTime: number
```

Secret: SecretWhenUnitSpellCastRestricted, SecretArguments=AllowedWhenUntainted  

### GetUnitEmpowerMinHoldTime

```lua
GetUnitEmpowerMinHoldTime(unit: UnitToken) -> minHoldTime: number
```

Secret: SecretWhenUnitSpellCastRestricted, SecretArguments=AllowedWhenUntainted  

### GetUnitEmpowerStageDuration

```lua
GetUnitEmpowerStageDuration(unit: UnitToken, index: number) -> duration: number
```

Secret: SecretWhenUnitSpellCastRestricted, SecretArguments=AllowedWhenUntainted  

### GetUnitHealthModifier

```lua
GetUnitHealthModifier(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitMaxHealthModifier

```lua
GetUnitMaxHealthModifier(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitPowerBarInfo

```lua
GetUnitPowerBarInfo(unitToken: UnitToken) -> info: UnitPowerBarInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetUnitPowerBarInfoByID

```lua
GetUnitPowerBarInfoByID(barID: number) -> info: UnitPowerBarInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetUnitPowerBarStrings

```lua
GetUnitPowerBarStrings(unitToken: UnitToken) -> name: cstring?, tooltip: cstring?, cost: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitPowerBarStringsByID

```lua
GetUnitPowerBarStringsByID(barID: number) -> name: cstring?, tooltip: cstring?, cost: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitPowerBarTextureInfo

```lua
GetUnitPowerBarTextureInfo(unitToken: UnitToken, textureIndex: luaIndex, timerIndex: luaIndex?) -> texture: fileID, colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitPowerBarTextureInfoByID

```lua
GetUnitPowerBarTextureInfoByID(barID: number, textureIndex: luaIndex) -> texture: fileID, colorR: number, colorG: number, colorB: number, colorA: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitPowerModifier

```lua
GetUnitPowerModifier(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetUnitSpeed

```lua
GetUnitSpeed(unit: UnitToken) -> currentSpeed: number, runSpeed: number, flightSpeed: number, swimSpeed: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### GetUnitTotalModifiedMaxHealthPercent

```lua
GetUnitTotalModifiedMaxHealthPercent(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### GetVehicleUIIndicator

```lua
GetVehicleUIIndicator(vehicleIndicatorID: number) -> backgroundTextureID: fileID, numSeatIndicators: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### GetVehicleUIIndicatorSeat

```lua
GetVehicleUIIndicatorSeat(vehicleIndicatorID: number, indicatorSeatIndex: luaIndex) -> virtualSeatIndex: number, xPos: number, yPos: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### IsFalling

```lua
IsFalling(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsFlying

```lua
IsFlying(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsPlayerInGuildFromGUID

```lua
IsPlayerInGuildFromGUID(playerGUID: WOWGUID) -> IsInGuild: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsSubmerged

```lua
IsSubmerged(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsSwimming

```lua
IsSwimming(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### IsUnitModelReadyForUI

```lua
IsUnitModelReadyForUI(unitToken: UnitToken) -> isReady: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### PlayerIsPVPInactive

```lua
PlayerIsPVPInactive(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### PlayerIsSpellTarget

```lua
PlayerIsSpellTarget(unit: UnitToken) -> result: bool
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

If the unit is currently casting a spell, returns whether spell's target unit is the player. Returns false if the unit is not casting a spell or the spell has no target.

### PlayerVehicleHasComboPoints

```lua
PlayerVehicleHasComboPoints() -> vehicleHasComboPoints: bool
```

### RegionalUniqueNamesEnabled

```lua
RegionalUniqueNamesEnabled() -> result: bool
```

### ReportPlayerIsPVPAFK

```lua
ReportPlayerIsPVPAFK(unit: UnitToken)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### ResistancePercent

```lua
ResistancePercent(resistance: number, casterLevel: number) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetPortraitTexture

```lua
SetPortraitTexture(textureObject: SimpleTexture, unitToken: UnitToken, disableMasking: bool = false)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetPortraitTextureFromCreatureDisplayID

```lua
SetPortraitTextureFromCreatureDisplayID(textureObject: SimpleTexture, creatureDisplayID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SetUnitCursorTexture

```lua
SetUnitCursorTexture(textureObject: SimpleTexture, unit: UnitToken, style: CursorStyle?, includeLowPriority: bool?, preferGamepadIcon: bool?) -> hasCursor: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitAffectingCombat

```lua
UnitAffectingCombat(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitAlliedRaceInfo

```lua
UnitAlliedRaceInfo(unit: UnitToken) -> isAlliedRace: bool, hasHeritageArmorUnlocked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitArmor

```lua
UnitArmor(unit: UnitToken) -> base: number, effective: number, real: number, bonus: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitAttackPower

```lua
UnitAttackPower(unit: UnitToken) -> attackPower: number, posBuff: number, negBuff: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitAttackSpeed

```lua
UnitAttackSpeed(unit: UnitToken) -> attackSpeed: number, offhandAttackSpeed: number?, rangedAttackSpeed: number?
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitBattlePetLevel

```lua
UnitBattlePetLevel(unit: UnitToken) -> result: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitBattlePetSpeciesID

```lua
UnitBattlePetSpeciesID(unit: UnitToken) -> result: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitBattlePetType

```lua
UnitBattlePetType(unit: UnitToken) -> result: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCanAssist

```lua
UnitCanAssist(unit: UnitToken, target: UnitToken, canAssistImmunePC: bool = false, canAssistUninteractable: bool = false) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCanAttack

```lua
UnitCanAttack(unit: UnitToken, target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCanCooperate

```lua
UnitCanCooperate(unit: UnitToken, target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCanPetBattle

```lua
UnitCanPetBattle(unit: UnitToken, target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCastingDuration

```lua
UnitCastingDuration(unit: UnitTokenPvPRestrictedForAddOns) -> duration: LuaDurationObject
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitCastingInfo

```lua
UnitCastingInfo(unit: UnitTokenPvPRestrictedForAddOns) -> name: cstring, displayName: string, textureID: fileID, startTimeMs: number, endTimeMs: number, isTradeskill: bool, castID: WOWGUID, notInterruptible: bool?, castingSpellID: number, castBarID: UnitCastBarID?, delayTimeMs: number
```

Secret: SecretWhenUnitSpellCastRestricted, SecretArguments=AllowedWhenUntainted  

### UnitChannelDuration

```lua
UnitChannelDuration(unit: UnitTokenPvPRestrictedForAddOns) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitChannelInfo

```lua
UnitChannelInfo(unit: UnitTokenPvPRestrictedForAddOns) -> name: cstring, displayName: cstring, textureID: fileID, startTimeMs: number, endTimeMs: number, isTradeskill: bool, notInterruptible: bool?, spellID: number, isEmpowered: bool, numEmpowerStages: number, castBarID: UnitCastBarID?
```

Secret: SecretWhenUnitSpellCastRestricted, SecretArguments=AllowedWhenUntainted  

### UnitChromieTimeID

```lua
UnitChromieTimeID(unit: UnitToken) -> ID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitClass

```lua
UnitClass(unit: UnitToken) -> className: cstring, classFilename: cstring, classID: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitClassBase

```lua
UnitClassBase(unit: UnitToken) -> classFilename: cstring, classID: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitClassFromGUID

```lua
UnitClassFromGUID(unitGUID: WOWGUID) -> className: cstring, classFilename: cstring, classID: number
```

Secret: SecretArguments=AllowedWhenTainted  

Flags: MayReturnNothing  

### UnitClassification

```lua
UnitClassification(unit: UnitToken) -> result: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitControllingVehicle

```lua
UnitControllingVehicle(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitCreatureFamily

```lua
UnitCreatureFamily(unit: UnitToken) -> name: cstring, id: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitCreatureID

```lua
UnitCreatureID(unit: UnitToken) -> creatureID: number?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresUnitIdentityAccess  

### UnitCreatureType

```lua
UnitCreatureType(unit: UnitToken) -> name: cstring, id: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitDamage

```lua
UnitDamage(unit: UnitToken) -> minDamage: number, maxDamage: number, offhandMinDamage: number, offhandMaxDamage: number, posBuff: number, negBuff: number, percent: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitDefenseSkill

```lua
UnitDefenseSkill(unit: UnitToken) -> base: number, modifier: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitDetailedThreatSituation

```lua
UnitDetailedThreatSituation(unit: UnitToken, mobGUID: UnitToken) -> isTanking: bool, status: number, scaledPercentage: number, rawPercentage: number, rawThreat: number
```

Secret: SecretWhenUnitThreatValuesRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitDistanceSquared

```lua
UnitDistanceSquared(unit: UnitToken) -> distance: number, checkedDistance: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitEffectiveLevel

```lua
UnitEffectiveLevel(name: cstring) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitEmpoweredChannelDuration

```lua
UnitEmpoweredChannelDuration(unit: UnitToken, includeHoldAtMaxTime: bool = true) -> duration: LuaDurationObject
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a duration object that includes the duration of an empowered cast channel.

### UnitEmpoweredStageDurations

```lua
UnitEmpoweredStageDurations(unit: UnitToken) -> duration: table<LuaDurationObject>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a vector of duration objects that measure the time spans for each individual stage in an empowered channel, with hold-at-max time included as the last element.

### UnitEmpoweredStagePercentages

```lua
UnitEmpoweredStagePercentages(unit: UnitToken, includeHoldAtMaxTime: bool = true) -> percentages: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a vector of percentages that describe how much of the total duration of an empowered channel is occupied by a stage.

### UnitExists

```lua
UnitExists(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitFactionGroup

```lua
UnitFactionGroup(unitName: cstring, checkDisplayRace: bool = false) -> factionGroupTag: cstring, localized: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitFullName

```lua
UnitFullName(unit: UnitToken) -> unitName: cstring, unitServer: cstring
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitGUID

```lua
UnitGUID(unit: UnitTokenPvPRestrictedForAddOns) -> result: WOWGUID?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitGetDetailedHealPrediction

```lua
UnitGetDetailedHealPrediction(unit: UnitTokenPvPRestrictedForAddOns, healerUnit: UnitTokenPvPRestrictedForAddOns?, healPredictionCalculator: UnitHealPredictionCalculator)
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitGetIncomingHeals

```lua
UnitGetIncomingHeals(unit: UnitTokenPvPRestrictedForAddOns, healerGUID: UnitTokenPvPRestrictedForAddOns?) -> result: number?
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### UnitGetTotalAbsorbs

```lua
UnitGetTotalAbsorbs(unit: UnitTokenPvPRestrictedForAddOns) -> result: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### UnitGetTotalHealAbsorbs

```lua
UnitGetTotalHealAbsorbs(unit: UnitTokenPvPRestrictedForAddOns) -> result: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### UnitGroupRolesAssigned

```lua
UnitGroupRolesAssigned(unit: UnitToken?) -> result: cstring
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitGroupRolesAssignedEnum

```lua
UnitGroupRolesAssignedEnum(unit: UnitToken?) -> result: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitHPPerStamina

```lua
UnitHPPerStamina(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasEffectivelyTankAura

```lua
UnitHasEffectivelyTankAura(unit: UnitToken?) -> result: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitHasLootInteraction

```lua
UnitHasLootInteraction(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasMouseoverHighlight

```lua
UnitHasMouseoverHighlight(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasPowerType

```lua
UnitHasPowerType(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType) -> hasPower: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasRelicSlot

```lua
UnitHasRelicSlot(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasVehiclePlayerFrameUI

```lua
UnitHasVehiclePlayerFrameUI(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHasVehicleUI

```lua
UnitHasVehicleUI(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHealthMax

```lua
UnitHealthMax(unit: UnitTokenPvPRestrictedForAddOns) -> result: number
```

Secret: SecretWhenUnitHealthMaxRestricted, SecretArguments=AllowedWhenUntainted  

### UnitHealthMissing

```lua
UnitHealthMissing(unit: UnitTokenPvPRestrictedForAddOns, usePredicted: bool = true) -> result: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Result of UnitHealthMax() - UnitHealth()

### UnitHealthPercent

```lua
UnitHealthPercent(unit: UnitTokenPvPRestrictedForAddOns, usePredicted: bool = true, curve: LuaCurveObjectBase?) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenCurveSecret, SecretReturns, SecretArguments=AllowedWhenUntainted  

Returns percent of health remaining - can be scaled via a curve for display purposes

### UnitHealth

```lua
UnitHealth(unit: UnitTokenPvPRestrictedForAddOns, usePredicted: bool = true) -> result: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### UnitHonor

```lua
UnitHonor(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitHonorLevel

```lua
UnitHonorLevel(unit: UnitToken) -> result: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitHonorMax

```lua
UnitHonorMax(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInAnyGroup

```lua
UnitInAnyGroup(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInBattleground

```lua
UnitInBattleground(unit: UnitToken?, partyIndex: luaIndex?) -> result: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInOtherParty

```lua
UnitInOtherParty(unit: UnitToken) -> inOtherParty: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Checks whether this unit cannot see your party chat because it is in an instance group

### UnitInParty

```lua
UnitInParty(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInPartyIsAI

```lua
UnitInPartyIsAI(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInPartyShard

```lua
UnitInPartyShard(unit: UnitToken) -> inPartyShard: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInRaid

```lua
UnitInRaid(unit: UnitToken?, partyIndex: luaIndex?) -> result: luaIndex?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitInRange

```lua
UnitInRange(unit: UnitToken) -> inRange: bool, checkedRange: bool
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

### UnitInSubgroup

```lua
UnitInSubgroup(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInVehicle

```lua
UnitInVehicle(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInVehicleControlSeat

```lua
UnitInVehicleControlSeat(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitInVehicleHidesPetFrame

```lua
UnitInVehicleHidesPetFrame(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsAFK

```lua
UnitIsAFK(unit: UnitToken) -> result: bool
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### UnitIsBattlePet

```lua
UnitIsBattlePet(unit: UnitToken) -> result: bool?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsBattlePetCompanion

```lua
UnitIsBattlePetCompanion(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsBossMob

```lua
UnitIsBossMob(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsCharmed

```lua
UnitIsCharmed(unit: UnitToken?) -> result: bool
```

Secret: SecretWhenUnitPossessionRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsConnected

```lua
UnitIsConnected(unit: UnitToken) -> isConnected: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsControlling

```lua
UnitIsControlling(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsCorpse

```lua
UnitIsCorpse(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsDND

```lua
UnitIsDND(unit: UnitToken) -> result: bool
```

Secret: SecretInChatMessagingLockdown, SecretArguments=AllowedWhenUntainted  

### UnitIsDead

```lua
UnitIsDead(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsDeadOrGhost

```lua
UnitIsDeadOrGhost(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsEnemy

```lua
UnitIsEnemy(unit: UnitToken, target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsFeignDeath

```lua
UnitIsFeignDeath(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsFriend

```lua
UnitIsFriend(unit: UnitToken, target: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsGameObject

```lua
UnitIsGameObject(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsGhost

```lua
UnitIsGhost(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsGroupAssistant

```lua
UnitIsGroupAssistant(unit: UnitToken) -> isAssistant: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsGroupLeader

```lua
UnitIsGroupLeader(unit: UnitToken, partyCategory: luaIndex?) -> isLeader: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsHumanPlayer

```lua
UnitIsHumanPlayer(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsInInteractRange

```lua
UnitIsInInteractRange(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsInMyGuild

```lua
UnitIsInMyGuild(unit: cstring) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsInteractable

```lua
UnitIsInteractable(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsLieutenant

```lua
UnitIsLieutenant(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsMercenary

```lua
UnitIsMercenary(name: cstring) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsMinion

```lua
UnitIsMinion(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the unit is considered a minion of a player, such as a pet, totem, or guardian.

### UnitIsNPCAsPlayer

```lua
UnitIsNPCAsPlayer(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsOtherPlayersBattlePet

```lua
UnitIsOtherPlayersBattlePet(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsOtherPlayersPet

```lua
UnitIsOtherPlayersPet(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsOwnerOrControllerOfUnit

```lua
UnitIsOwnerOrControllerOfUnit(controllingUnit: UnitToken, controlledUnit: UnitToken) -> unitIsOwnerOrControllerOfUnit: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsPVP

```lua
UnitIsPVP(unit: UnitToken) -> result: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsPVPFreeForAll

```lua
UnitIsPVPFreeForAll(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsPVPSanctuary

```lua
UnitIsPVPSanctuary(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsPlayer

```lua
UnitIsPlayer(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsPlayerControlledOrGroupMember

```lua
UnitIsPlayerControlledOrGroupMember(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true for 'player', 'pet', 'vehicle', or any of 'partyn', 'partypetn', 'raidn', 'raidpetn'

### UnitIsPossessed

```lua
UnitIsPossessed(unit: UnitToken?) -> result: bool
```

Secret: SecretWhenUnitPossessionRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsQuestBoss

```lua
UnitIsQuestBoss(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsRaidOfficer

```lua
UnitIsRaidOfficer(unit: UnitToken?) -> result: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitIsSameServer

```lua
UnitIsSameServer(unitName: cstring) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsTapDenied

```lua
UnitIsTapDenied(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsTrivial

```lua
UnitIsTrivial(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsUnconscious

```lua
UnitIsUnconscious(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsUnit

```lua
UnitIsUnit(unit1: UnitToken, unit2: UnitToken) -> result: bool
```

Secret: SecretWhenUnitComparisonRestricted, SecretArguments=AllowedWhenUntainted  

Flags: RequiresComparableUnitTokens  

### UnitIsVisible

```lua
UnitIsVisible(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitIsWildBattlePet

```lua
UnitIsWildBattlePet(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitLeadsAnyGroup

```lua
UnitLeadsAnyGroup(unit: UnitToken) -> isLeader: bool
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitLevel

```lua
UnitLevel(name: cstring) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitName

```lua
UnitName(unit: UnitToken) -> unitName: cstring, unitServer: cstring
```

Secret: SecretWhenUnitNameIdentityRestricted, SecretArguments=AllowedWhenTainted  

### UnitNameFromGUID

```lua
UnitNameFromGUID(unitGUID: WOWGUID) -> unitName: cstring, unitServer: cstring
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenTainted  

### UnitNameUnmodified

```lua
UnitNameUnmodified(unit: UnitToken) -> unitName: cstring, unitServer: cstring
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitNameplateShowsWidgetsOnly

```lua
UnitNameplateShowsWidgetsOnly(unit: UnitToken) -> nameplateShowsWidgetsOnly: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitNumPowerBarTimers

```lua
UnitNumPowerBarTimers(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitOnTaxi

```lua
UnitOnTaxi(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitOwnerGUID

```lua
UnitOwnerGUID(unit: UnitTokenPvPRestrictedForAddOns) -> ownerGUID: WOWGUID
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPVPName

```lua
UnitPVPName(unit: UnitToken) -> result: string
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPartialPower

```lua
UnitPartialPower(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType?, unmodified: bool = false) -> partialPower: number
```

Secret: SecretWhenUnitPowerRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPercentHealthFromGUID

```lua
UnitPercentHealthFromGUID(unitGUID: WOWGUID) -> percentHealth: number?
```

Secret: SecretReturns, SecretArguments=AllowedWhenTainted  

### UnitPhaseReason

```lua
UnitPhaseReason(unit: UnitToken) -> reason: PhaseReason?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPlayerControlled

```lua
UnitPlayerControlled(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPlayerOrPetInParty

```lua
UnitPlayerOrPetInParty(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPlayerOrPetInRaid

```lua
UnitPlayerOrPetInRaid(unit: UnitToken?, partyIndex: luaIndex?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPosition

```lua
UnitPosition(unit: UnitToken) -> positionX: number, positionY: number, positionZ: number, mapID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPower

```lua
UnitPower(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType?, unmodified: bool = false) -> power: number
```

Secret: SecretWhenUnitPowerRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPowerBarID

```lua
UnitPowerBarID(unitToken: UnitToken) -> barID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPowerBarTimerInfo

```lua
UnitPowerBarTimerInfo(unit: UnitToken, index: luaIndex = 0) -> duration: number, expiration: number, barID: number, auraID: number
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitPowerDisplayMod

```lua
UnitPowerDisplayMod(powerType: PowerType) -> displayMod: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitPowerMax

```lua
UnitPowerMax(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType?, unmodified: bool = false) -> maxPower: number
```

Secret: SecretWhenUnitPowerMaxRestricted, SecretArguments=AllowedWhenUntainted  

### UnitPowerMissing

```lua
UnitPowerMissing(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType?, unmodified: bool = false) -> result: number
```

Secret: SecretWhenUnitPowerRestricted, SecretArguments=AllowedWhenUntainted  

Result of UnitPowerMax() - UnitPower()

### UnitPowerPercent

```lua
UnitPowerPercent(unitToken: UnitTokenPvPRestrictedForAddOns, powerType: PowerType?, unmodified: bool = false, curve: LuaCurveObjectBase?) -> result: LuaCurveEvaluatedResult
```

Secret: SecretWhenUnitPowerRestricted, SecretWhenCurveSecret, SecretArguments=AllowedWhenUntainted  

Queries the percent of power remaining, optionally evaluating it against a supplied curve.

### UnitPowerType

```lua
UnitPowerType(unit: UnitTokenPvPRestrictedForAddOns, index: number = 0) -> powerType: PowerType, powerTypeToken: string, rgbX: number, rgbY: number, rgbZ: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitPvpClassification

```lua
UnitPvpClassification(unit: UnitTokenPvPRestrictedForAddOns) -> classification: PvPUnitClassification?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitQuestTrivialLevelRange

```lua
UnitQuestTrivialLevelRange(unit: UnitToken) -> levelRange: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitQuestTrivialLevelRangeScaling

```lua
UnitQuestTrivialLevelRangeScaling(unit: UnitToken) -> levelRange: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitRace

```lua
UnitRace(unit: UnitToken) -> localizedRaceName: cstring, englishRaceName: cstring, raceID: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitRangedAttackPower

```lua
UnitRangedAttackPower(unit: UnitToken) -> attackPower: number, posBuff: number, negBuff: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitRangedDamage

```lua
UnitRangedDamage(unit: UnitToken) -> speed: number, minDamage: number, maxDamage: number, posBuff: number, negBuff: number, percent: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitReaction

```lua
UnitReaction(unit: UnitToken, target: UnitToken) -> result: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitRealmRelationship

```lua
UnitRealmRelationship(unit: UnitToken) -> realmRelationship: luaIndex?
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitResistance

```lua
UnitResistance(unit: UnitToken, damageClass: Damageclass) -> baseResistance: number, realResistance: number, effectiveResistance: number, bonusResistance: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitSelectionColor

```lua
UnitSelectionColor(unit: UnitToken, useExtendedColors: bool = false) -> resultR: number, resultG: number, resultB: number, resultA: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitSelectionType

```lua
UnitSelectionType(unit: UnitToken, useExtendedColors: bool = false) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitSex

```lua
UnitSex(unit: UnitToken) -> sex: number?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitSexBase

```lua
UnitSexBase(unit: UnitToken) -> sex: UnitSex?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### UnitShouldDisplayName

```lua
UnitShouldDisplayName(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitShouldDisplaySpellTargetName

```lua
UnitShouldDisplaySpellTargetName(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

If the unit is currently casting a spell, returns whether the target's name should be displayed. Returns false if the unit is not casting a spell or the spell has no target.

### UnitSpellHaste

```lua
UnitSpellHaste(unit: UnitToken) -> result: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitSpellTargetClass

```lua
UnitSpellTargetClass(unit: UnitToken) -> classFilename: cstring
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

If the unit is currently casting a spell, returns the class of the spell's target unit. Returns nil if the unit is not casting a spell or the spell has no target.

### UnitSpellTargetName

```lua
UnitSpellTargetName(unit: UnitToken) -> targetName: string
```

Secret: SecretReturns, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

If the unit is currently casting a spell, returns the name of the spell's target unit. Returns nil if the unit is not casting a spell or the spell has no target.

### UnitStagger

```lua
UnitStagger(unit: UnitTokenPvPRestrictedForAddOns) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitStat

```lua
UnitStat(unit: UnitToken, index: luaIndex) -> currentStat: number, effectiveStat: number, statPositiveBuff: number, statNegativeBuff: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitSwitchToVehicleSeat

```lua
UnitSwitchToVehicleSeat(unit: UnitToken, virtualSeatIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitTargetsVehicleInRaidUI

```lua
UnitTargetsVehicleInRaidUI(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitThreatLeadSituation

```lua
UnitThreatLeadSituation(unit: UnitToken, mobGUID: UnitToken) -> result: number?
```

Secret: SecretWhenUnitThreatStateRestricted, SecretArguments=AllowedWhenUntainted  

Returns a threat state (0-3; representing none, yellow, orange, red) that indicates how far the provided unit is above the secondmost threat on the provided mob. If the unit is not first on threat, will always return red. Can return nil if the provided mob does not exist.

### UnitThreatPercentageOfLead

```lua
UnitThreatPercentageOfLead(unit: UnitToken, mobGUID: UnitToken) -> result: number?
```

Secret: SecretWhenUnitThreatValuesRestricted, SecretArguments=AllowedWhenUntainted  

### UnitThreatSituation

```lua
UnitThreatSituation(unit: UnitToken, mobGUID: UnitToken?) -> result: number?
```

Secret: SecretWhenUnitThreatStateRestricted, SecretArguments=AllowedWhenUntainted  

### UnitTokenFromGUID

```lua
UnitTokenFromGUID(unitGUID: WOWGUID) -> unitToken: string?
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenTainted  

### UnitTreatAsPlayerForDisplay

```lua
UnitTreatAsPlayerForDisplay(unit: UnitToken) -> treatAsPlayer: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitTrialBankedLevels

```lua
UnitTrialBankedLevels(unit: UnitToken) -> bankedLevels: number, xpIntoCurrentLevel: number, xpForNextLevel: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitTrialXP

```lua
UnitTrialXP(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitUsesAmmo

```lua
UnitUsesAmmo(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitUsingVehicle

```lua
UnitUsingVehicle(unit: UnitToken) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitVehicleSeatCount

```lua
UnitVehicleSeatCount(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitVehicleSeatInfo

```lua
UnitVehicleSeatInfo(unit: UnitToken, virtualSeatIndex: luaIndex) -> controlType: cstring, occupantName: cstring, serverName: cstring, ejectable: bool, canSwitchSeats: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitVehicleSkin

```lua
UnitVehicleSkin(unit: UnitToken?) -> result: fileID
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitWeaponAttackPower

```lua
UnitWeaponAttackPower(unit: UnitToken) -> mainHandWeaponAttackPower: number, offHandWeaponAttackPower: number, rangedWeaponAttackPower: number
```

Secret: SecretWhenUnitStatsRestricted, SecretArguments=AllowedWhenUntainted  

### UnitWidgetSet

```lua
UnitWidgetSet(unit: UnitToken) -> uiWidgetSet: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### UnitXP

```lua
UnitXP(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### UnitXPMax

```lua
UnitXPMax(unit: UnitToken) -> result: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### WorldLootObjectExists

```lua
WorldLootObjectExists(unit: UnitToken?) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTIVE_PLAYER_SPECIALIZATION_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### ARENA_COOLDOWNS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### ARENA_CROWD_CONTROL_SPELL_UPDATE

Payload: `unitTarget: UnitTokenVariant, spellID: number`  
Flags: SecretWhenLossOfControlInfoRestricted, SynchronousEvent  

### AUTOFOLLOW_BEGIN

Payload: `name: cstring`  
Flags: SynchronousEvent  

### AUTOFOLLOW_END

Payload: `none`  
Flags: SynchronousEvent  

### CANCEL_SUMMON

Payload: `none`  
Flags: SynchronousEvent  

### COMBO_TARGET_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### CONFIRM_BINDER

Payload: `areaName: cstring`  
Flags: SynchronousEvent  

### CONFIRM_SUMMON

Payload: `summonReason: number, skippingStartExperience: bool`  
Flags: SynchronousEvent  

### ECLIPSE_DIRECTION_CHANGE

Payload: `direction: cstring`  
Flags: SynchronousEvent  

### HEARTHSTONE_BOUND

Payload: `none`  
Flags: SynchronousEvent  

### HONOR_XP_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### INCOMING_RESURRECT_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### INCOMING_SUMMON_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### KNOWN_TITLES_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### LOCALPLAYER_PET_RENAMED

Payload: `none`  
Flags: SynchronousEvent  

### MIRROR_TIMER_PAUSE

Payload: `timerName: cstring, paused: number`  
Flags: SynchronousEvent  

### MIRROR_TIMER_START

Payload: `timerName: cstring, value: number, maxValue: number, scale: number, paused: number, timerLabel: cstring`  
Flags: SynchronousEvent  

### MIRROR_TIMER_STOP

Payload: `timerName: cstring`  
Flags: SynchronousEvent  

### NEUTRAL_FACTION_SELECT_RESULT

Payload: `success: bool`  
Flags: SynchronousEvent  

### OBJECT_ENTERED_AOI

Payload: `guid: WOWGUID`  
Flags: SynchronousEvent  

### OBJECT_LEFT_AOI

Payload: `guid: WOWGUID`  
Flags: SynchronousEvent  

### PARTY_KILL

Payload: `attackerGUID: WOWGUID, targetGUID: WOWGUID`  
Flags: SecretWhenUnitIdentityRestricted, SynchronousEvent  

### PET_BAR_UPDATE_USABLE

Payload: `none`  
Flags: SynchronousEvent  

### PET_UI_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_CAN_GLIDE_CHANGED

Payload: `canGlide: bool`  
Flags: SynchronousEvent  

### PLAYER_DAMAGE_DONE_MODS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_ENTER_COMBAT

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_FARSIGHT_FOCUS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_FLAGS_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_FOCUS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_IMPULSE_APPLIED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_IS_GLIDING_CHANGED

Payload: `isGliding: bool`  
Flags: SynchronousEvent  

### PLAYER_LEAVE_COMBAT

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_LEVEL_CHANGED

Payload: `oldLevel: number, newLevel: number, real: bool`  
Flags: SynchronousEvent  

### PLAYER_LEVEL_UP

Payload: `level: number, healthDelta: number, powerDelta: number, numNewTalents: number, numNewPvpTalentSlots: number, strengthDelta: number, agilityDelta: number, staminaDelta: number, intellectDelta: number, spiritDelta: number`  
Flags: SynchronousEvent  

### PLAYER_MAX_LEVEL_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_MOUNT_DISPLAY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_PVP_KILLS_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_PVP_RANK_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_REGEN_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_REGEN_ENABLED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_SOFT_ENEMY_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_SOFT_FRIEND_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_SOFT_INTERACT_CHANGED

Payload: `oldTarget: WOWGUID, newTarget: WOWGUID`  
Flags: SecretWhenUnitIdentityRestricted, SynchronousEvent  

### PLAYER_SOFT_TARGET_INTERACTION

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_SPECIALIZATION_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### PLAYER_STARTED_LOOKING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_STARTED_MOVING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_STARTED_TURNING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_STOPPED_LOOKING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_STOPPED_MOVING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_STOPPED_TURNING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_TARGET_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_TRIAL_XP_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PLAYER_UPDATE_RESTING

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_XP_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### PORTRAITS_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### PROVING_GROUNDS_SCORE_UPDATE

Payload: `points: number`  
Flags: SynchronousEvent  

### PVP_TIMER_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### RUNE_POWER_UPDATE

Payload: `runeIndex: number, added: bool?`  
Flags: SecretPayloads, SynchronousEvent  

### RUNE_TYPE_UPDATE

Payload: `runeIndex: number`  
Flags: SecretPayloads, SynchronousEvent  

### SHOW_FACTION_SELECT_UI

Payload: `none`  
Flags: SynchronousEvent  

### SPELL_CONFIRMATION_PROMPT

Payload: `spellID: number, effectValue: number, message: cstring, duration: number, currencyTypesID: number, currencyCost: number, currentDifficulty: number, displayItemID: number, itemContext: number, treasureContextLevel: number`  
Flags: SynchronousEvent  

### SPELL_CONFIRMATION_TIMEOUT

Payload: `spellID: number, effectValue: number`  
Flags: SynchronousEvent  

### UNIT_ABSORB_AMOUNT_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_AREA_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_ARENA_COOLDOWNS_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  
Only signaled when the active player is a commentator or spectator.

### UNIT_ATTACK

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_ATTACK_POWER

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_ATTACK_SPEED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_CHEAT_TOGGLE_EVENT

Payload: `none`  
Flags: SynchronousEvent  

### UNIT_CLASSIFICATION_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_COMBAT

Payload: `unitTarget: UnitTokenVariant, event: cstring, flagText: cstring, amount: number, schoolMask: number`  
Flags: SynchronousEvent  

### UNIT_CONNECTION

Payload: `unitTarget: UnitTokenVariant, isConnected: bool`  
Flags: SynchronousEvent  

### UNIT_CTR_OPTIONS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_DAMAGE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_DEFENSE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_DIED

Payload: `unitGUID: WOWGUID`  
Flags: SecretWhenUnitIdentityRestricted, SynchronousEvent  

### UNIT_DISPLAYPOWER

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_DISTANCE_CHECK_UPDATE

Payload: `unitTarget: UnitTokenVariant, isInDistance: bool`  
Flags: SecretPayloads, SynchronousEvent  

### UNIT_FACTION

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_FLAGS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_FORM_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_HAPPINESS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_HEAL_ABSORB_AMOUNT_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_HEAL_PREDICTION

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_HEALTH

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_IN_RANGE_UPDATE

Payload: `unitTarget: UnitTokenVariant, isInRange: bool`  
Flags: SecretPayloads, SynchronousEvent  

### UNIT_INVENTORY_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_LEVEL

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_LOOT

Payload: `unitGUID: WOWGUID, hasLoot: bool`  
Flags: SynchronousEvent  

### UNIT_MANA

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_MAX_HEALTH_MODIFIERS_CHANGED

Payload: `unitTarget: UnitTokenVariant, percentMaxHealthAdjusted: number`  
Flags: SecretPayloads, SynchronousEvent, UniqueEvent  

### UNIT_MAXHEALTH

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_MAXPOWER

Payload: `unitTarget: UnitTokenVariant, powerType: cstring`  
Flags: SynchronousEvent  

### UNIT_MODEL_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_NAME_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_OTHER_PARTY_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_PET

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_PET_EXPERIENCE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_PET_TRAINING_POINTS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_PHASE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_PORTRAIT_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_POWER_BAR_HIDE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_POWER_BAR_SHOW

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_POWER_BAR_TIMER_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: UniqueEvent  

### UNIT_POWER_FREQUENT

Payload: `unitTarget: UnitTokenVariant, powerType: cstring`  
Flags: SynchronousEvent  

### UNIT_POWER_POINT_CHARGE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SecretWhenUnitPowerRestricted, UniqueEvent  

### UNIT_POWER_UPDATE

Payload: `unitTarget: UnitTokenVariant, powerType: cstring`  
Flags: SynchronousEvent  

### UNIT_QUEST_LOG_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_RANGED_ATTACK_POWER

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_RANGEDDAMAGE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_RESISTANCES

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_SPELL_HASTE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_SPELLCAST_CHANNEL_START

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_CHANNEL_STOP

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, interruptedBy: WOWGUID, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_CHANNEL_UPDATE

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_DELAYED

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_EMPOWER_START

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_EMPOWER_STOP

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, complete: bool, interruptedBy: WOWGUID, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_EMPOWER_UPDATE

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_FAILED

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_FAILED_QUIET

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_INTERRUPTED

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, interruptedBy: WOWGUID, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_INTERRUPTIBLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_SPELLCAST_NOT_INTERRUPTIBLE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_SPELLCAST_RETICLE_CLEAR

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_RETICLE_TARGET

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_SENT

Payload: `unitTarget: UnitTokenVariant, target: cstring, castGUID: WOWGUID, spellID: number`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_START

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_STOP

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_SPELLCAST_SUCCEEDED

Payload: `unitTarget: UnitTokenVariant, castGUID: WOWGUID, spellID: number, castBarID: UnitCastBarID?`  
Flags: SecretWhenUnitSpellCastRestricted, SynchronousEvent  

### UNIT_STATS

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_TARGET

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent  

### UNIT_TARGETABLE_CHANGED

Payload: `unitTarget: UnitTokenVariant`  
Flags: UniqueEvent  

### UNIT_THREAT_LIST_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UNIT_THREAT_SITUATION_UPDATE

Payload: `unitTarget: UnitTokenVariant`  
Flags: SynchronousEvent, UniqueEvent  

### UPDATE_EXHAUSTION

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_MOUSEOVER_UNIT

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_STEALTH

Payload: `none`  
Flags: SynchronousEvent  

### VEHICLE_ANGLE_UPDATE

Payload: `normalizedPitch: number, radians: number`  
Flags: SynchronousEvent  

## Tables

### PhaseReason (Enumeration)

| Name | Value |
|---|---|
| Phasing | 0 |
| Sharding | 1 |
| WarMode | 2 |
| ChromieTime | 3 |
| TimerunningHwt | 4 |
| RuleSet | 5 |

### PvPUnitClassification (Enumeration)

| Name | Value |
|---|---|
| FlagCarrierHorde | 0 |
| FlagCarrierAlliance | 1 |
| FlagCarrierNeutral | 2 |
| CartRunnerHorde | 3 |
| CartRunnerAlliance | 4 |
| AssassinHorde | 5 |
| AssassinAlliance | 6 |
| OrbCarrierBlue | 7 |
| OrbCarrierGreen | 8 |
| OrbCarrierOrange | 9 |
| OrbCarrierPurple | 10 |

### CorruptionEffectInfo (Structure)

- `name: string`
- `description: string`
- `minCorruption: number`

### UnitCastingInfoResult (Structure)

- `name: cstring`
- `displayName: string`
- `textureID: fileID`
- `startTimeMs: number`
- `endTimeMs: number`
- `isTradeskill: bool`
- `castID: WOWGUID`
- `notInterruptible: bool?`
- `castingSpellID: number`
- `castBarID: UnitCastBarID?`
- `delayTimeMs: number`

### UnitChannelInfoResult (Structure)

- `name: cstring`
- `displayName: cstring`
- `textureID: fileID`
- `startTimeMs: number`
- `endTimeMs: number`
- `isTradeskill: bool`
- `notInterruptible: bool?`
- `spellID: number`
- `isEmpowered: bool`
- `numEmpowerStages: number`
- `castBarID: UnitCastBarID?`

### UnitCreatureFamilyResult (Structure)

- `name: cstring`
- `id: number`

### UnitCreatureTypeResult (Structure)

- `name: cstring`
- `id: number`

### UnitPowerBarInfo (Structure)

- `ID: number`
- `barType: number`
- `minPower: number`
- `startInset: number`
- `endInset: number`
- `smooth: bool`
- `hideFromOthers: bool`
- `showOnRaid: bool`
- `opaqueSpark: bool`
- `opaqueFlash: bool`
- `anchorTop: bool`
- `forcePercentage: bool`
- `sparkUnderFrame: bool`
- `flashAtMinPower: bool`
- `fractionalCounter: bool`
- `animateNumbers: bool`
- `attachTooltipToBar: bool`
