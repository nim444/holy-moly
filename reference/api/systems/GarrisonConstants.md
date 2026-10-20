# GarrisonConstants

Type: None

## Tables

### ContributionAppearanceFlags (Enumeration)

| Name | Value |
|---|---|
| TooltipUseTimeRemaining | 0 |

### ContributionState (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Building | 1 |
| Active | 2 |
| UnderAttack | 3 |
| Destroyed | 4 |

### CovenantSkill (Enumeration)

| Name | Value |
|---|---|
| Kyrian | 2730 |
| Venthyr | 2731 |
| NightFae | 2732 |
| Necrolord | 2733 |

### CovenantType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Kyrian | 1 |
| Venthyr | 2 |
| NightFae | 3 |
| Necrolord | 4 |

### FollowerAbilityCastResult (Enumeration)

| Name | Value |
|---|---|
| Success | 0 |
| Failure | 1 |
| NoPendingCast | 2 |
| InvalidTarget | 3 |
| InvalidFollowerSpell | 4 |
| RerollNotAllowed | 5 |
| SingleMissionDuration | 6 |
| MustTargetFollower | 7 |
| MustTargetTrait | 8 |
| InvalidFollowerType | 9 |
| MustBeUnique | 10 |
| CannotTargetLimitedUseFollower | 11 |
| MustTargetLimitedUseFollower | 12 |
| AlreadyAtMaxDurability | 13 |
| CannotTargetNonAutoMissionFollower | 14 |

### GarrAutoBoardIndex (Enumeration)

| Name | Value |
|---|---|
| None | -1 |
| AllyLeftBack | 0 |
| AllyRightBack | 1 |
| AllyLeftFront | 2 |
| AllyCenterFront | 3 |
| AllyRightFront | 4 |
| EnemyLeftFront | 5 |
| EnemyCenterLeftFront | 6 |
| EnemyCenterRightFront | 7 |
| EnemyRightFront | 8 |
| EnemyLeftBack | 9 |
| EnemyCenterLeftBack | 10 |
| EnemyCenterRightBack | 11 |
| EnemyRightBack | 12 |

### GarrAutoCombatSpellTutorialFlag (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Single | 1 |
| Column | 2 |
| Row | 3 |
| All | 4 |

### GarrAutoCombatTutorial (Enumeration)

| Name | Value |
|---|---|
| SelectMission | 1 |
| PlaceCompanion | 2 |
| HealCompanion | 4 |
| LevelHeal | 8 |
| BeneficialEffect | 16 |
| AttackSingle | 32 |
| AttackColumn | 64 |
| AttackRow | 128 |
| AttackAll | 256 |
| TroopTutorial | 512 |
| EnvironmentalEffect | 1024 |

### GarrAutoCombatantRole (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Melee | 1 |
| RangedPhysical | 2 |
| RangedMagic | 3 |
| HealSupport | 4 |
| Tank | 5 |

### GarrAutoEventFlags (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| AutoAttack | 1 |
| Passive | 2 |
| Environment | 4 |

### GarrAutoMissionEventType (Enumeration)

| Name | Value |
|---|---|
| MeleeDamage | 0 |
| RangeDamage | 1 |
| SpellMeleeDamage | 2 |
| SpellRangeDamage | 3 |
| Heal | 4 |
| PeriodicDamage | 5 |
| PeriodicHeal | 6 |
| ApplyAura | 7 |
| RemoveAura | 8 |
| Died | 9 |

### GarrAutoPreviewTargetType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Damage | 1 |
| Heal | 2 |
| Buff | 4 |
| Debuff | 8 |

### GarrFollowerMissionCompleteState (Enumeration)

| Name | Value |
|---|---|
| Alive | 0 |
| KilledByMissionFailure | 1 |
| SavedByPreventDeath | 2 |
| OutOfDurability | 3 |

### GarrFollowerQuality (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Common | 1 |
| Uncommon | 2 |
| Rare | 3 |
| Epic | 4 |
| Legendary | 5 |
| Title | 6 |

### GarrTalentCostType (Enumeration)

| Name | Value |
|---|---|
| Initial | 0 |
| Respec | 1 |
| MakePermanent | 2 |
| TreeReset | 3 |

### GarrTalentFeatureSubtype (Enumeration)

| Name | Value |
|---|---|
| Generic | 0 |
| Bastion | 1 |
| Revendreth | 2 |
| Ardenweald | 3 |
| Maldraxxus | 4 |

### GarrTalentFeatureType (Enumeration)

| Name | Value |
|---|---|
| Generic | 0 |
| AnimaDiversion | 1 |
| TravelPortals | 2 |
| Adventures | 3 |
| ReservoirUpgrades | 4 |
| SanctumUnique | 5 |
| SoulBinds | 6 |
| AnimaDiversionMap | 7 |
| Cyphers | 8 |

### GarrTalentResearchCostSource (Enumeration)

| Name | Value |
|---|---|
| Talent | 0 |
| Tree | 1 |

### GarrTalentSocketType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Spell | 1 |
| Conduit | 2 |

### GarrTalentTreeType (Enumeration)

| Name | Value |
|---|---|
| Tiers | 0 |
| Classic | 1 |

### GarrTalentType (Enumeration)

| Name | Value |
|---|---|
| Standard | 0 |
| Minor | 1 |
| Major | 2 |
| Socket | 3 |

### GarrTalentUI (Enumeration)

| Name | Value |
|---|---|
| Generic | 0 |
| CovenantSanctum | 1 |
| SoulBinds | 2 |
| AnimaDiversionMap | 3 |

### GarrisonTalentAvailability (Enumeration)

| Name | Value |
|---|---|
| Available | 0 |
| Unavailable | 1 |
| UnavailableAnotherIsResearching | 2 |
| UnavailableNotEnoughResources | 3 |
| UnavailableNotEnoughGold | 4 |
| UnavailableTierUnavailable | 5 |
| UnavailablePlayerCondition | 6 |
| UnavailableAlreadyHave | 7 |
| UnavailableRequiresPrerequisiteTalent | 8 |
