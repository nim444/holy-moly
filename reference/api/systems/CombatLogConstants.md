# CombatLogConstants

Type: None

## Tables

### CombatLogObject (Enumeration)

| Name | Value |
|---|---|
| Empty | 0 |
| AffiliationMine | 1 |
| AffiliationParty | 2 |
| AffiliationRaid | 4 |
| AffiliationOutsider | 8 |
| ReactionFriendly | 16 |
| ReactionNeutral | 32 |
| ReactionHostile | 64 |
| ControlPlayer | 256 |
| ControlNpc | 512 |
| TypePlayer | 1024 |
| TypeNpc | 2048 |
| TypePet | 4096 |
| TypeGuardian | 8192 |
| TypeObject | 16384 |
| Target | 65536 |
| Focus | 131072 |
| Maintank | 262144 |
| Mainassist | 524288 |
| None | 2147483648 |

### CombatLogObjectTarget (Enumeration)

| Name | Value |
|---|---|
| Raidtarget1 | 1 |
| Raidtarget2 | 2 |
| Raidtarget3 | 4 |
| Raidtarget4 | 8 |
| Raidtarget5 | 16 |
| Raidtarget6 | 32 |
| Raidtarget7 | 64 |
| Raidtarget8 | 128 |
| RaidNone | 2147483648 |

### CombatLogMessageLimits (Constants)

| Name | Type | Value |
|---|---|---|
| CombatLogDefaultMessageLimit | number | 300 |
| CombatLogMaximumMessageLimit | number | 1000 |

### CombatLogObjectMasks (Constants)

| Name | Type | Value |
|---|---|---|
| COMBATLOG_OBJECT_AFFILIATION_MASK | CombatLogObject | 15 |
| COMBATLOG_OBJECT_REACTION_MASK | CombatLogObject | 240 |
| COMBATLOG_OBJECT_CONTROL_MASK | CombatLogObject | 768 |
| COMBATLOG_OBJECT_TYPE_MASK | CombatLogObject | 64512 |
| COMBATLOG_OBJECT_SPECIAL_MASK | CombatLogObject | 4294901760 |

### CombatLogObjectTargetMasks (Constants)

| Name | Type | Value |
|---|---|---|
| COMBATLOG_OBJECT_RAID_TARGET_MASK | CombatLogObjectTarget | 255 |
| COMBATLOG_OBJECT_RAID_MASK | CombatLogObjectTarget | 4294967295 |
