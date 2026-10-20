# SpecializationInfo

Type: System  
Namespace: `C_SpecializationInfo`  
Environment: All

## Functions

### C_SpecializationInfo.CanPlayerUsePVPTalentUI

```lua
C_SpecializationInfo.CanPlayerUsePVPTalentUI() -> canUse: bool, failureReason: string
```

### C_SpecializationInfo.CanPlayerUseTalentSpecUI

```lua
C_SpecializationInfo.CanPlayerUseTalentSpecUI() -> canUse: bool, failureReason: string
```

### C_SpecializationInfo.CanPlayerUseTalentUI

```lua
C_SpecializationInfo.CanPlayerUseTalentUI() -> canUse: bool, failureReason: string
```

### C_SpecializationInfo.GetActiveSpecGroup

```lua
C_SpecializationInfo.GetActiveSpecGroup(isInspect: bool?, isPet: bool?) -> groupIndex: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetAllClassIDs

```lua
C_SpecializationInfo.GetAllClassIDs() -> allClassIDs: table<number>
```

### C_SpecializationInfo.GetAllSelectedPvpTalentIDs

```lua
C_SpecializationInfo.GetAllSelectedPvpTalentIDs() -> selectedPvpTalentIDs: table<number>
```

### C_SpecializationInfo.GetClassIDFromSpecID

```lua
C_SpecializationInfo.GetClassIDFromSpecID(specID: number) -> classID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetCombatConfigIDForSpecGroup

```lua
C_SpecializationInfo.GetCombatConfigIDForSpecGroup(groupIndex: luaIndex) -> configID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetInspectSelectedPvpTalent

```lua
C_SpecializationInfo.GetInspectSelectedPvpTalent(inspectedUnit: UnitToken, talentIndex: number) -> selectedTalentID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetInspectSpecialization

```lua
C_SpecializationInfo.GetInspectSpecialization(unit: UnitToken) -> specializationID: number
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetNumSpecializationsForClassID

```lua
C_SpecializationInfo.GetNumSpecializationsForClassID(classID: number) -> specCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetPvpTalentAlertStatus

```lua
C_SpecializationInfo.GetPvpTalentAlertStatus() -> hasUnspentSlot: bool, hasNewTalent: bool
```

### C_SpecializationInfo.GetPvpTalentInfo

```lua
C_SpecializationInfo.GetPvpTalentInfo(talentID: number) -> talentInfo: PvpTalentInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetPvpTalentSlotInfo

```lua
C_SpecializationInfo.GetPvpTalentSlotInfo(talentIndex: number) -> slotInfo: PvpTalentSlotInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetPvpTalentSlotUnlockLevel

```lua
C_SpecializationInfo.GetPvpTalentSlotUnlockLevel(talentIndex: number) -> requiredLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetPvpTalentUnlockLevel

```lua
C_SpecializationInfo.GetPvpTalentUnlockLevel(talentID: number) -> requiredLevel: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetSpecIDs

```lua
C_SpecializationInfo.GetSpecIDs(specSetID: number) -> specIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetSpecialization

```lua
C_SpecializationInfo.GetSpecialization(isInspect: bool?, isPet: bool?, specGroupIndex: luaIndex?) -> specializationIndex: luaIndex
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetSpecializationInfo

```lua
C_SpecializationInfo.GetSpecializationInfo(specializationIndex: luaIndex, isInspect: bool = false, isPet: bool = false, inspectTarget: string?, sex: number?, groupIndex: luaIndex?, classID: number?) -> specId: number = 0, name: string?, description: string?, icon: fileID?, role: string?, primaryStat: luaIndex?, pointsSpent: number = 0, background: string?, previewPointsSpent: number = 0, isUnlocked: bool = true
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetSpecializationMasterySpells

```lua
C_SpecializationInfo.GetSpecializationMasterySpells(specializationIndex: luaIndex, isInspect: bool?, isPet: bool?) -> spellIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetSpellsDisplay

```lua
C_SpecializationInfo.GetSpellsDisplay(specializationID: number) -> spellID: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.GetTalentInfo

```lua
C_SpecializationInfo.GetTalentInfo(query: TalentInfoQuery) -> result: TalentInfoResult?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.HasPlayerEarnedATalentPoint

```lua
C_SpecializationInfo.HasPlayerEarnedATalentPoint() -> hasEarned: bool
```

### C_SpecializationInfo.IsInitialized

```lua
C_SpecializationInfo.IsInitialized() -> isSpecializationDataInitialized: bool
```

### C_SpecializationInfo.IsPvpTalentLocked

```lua
C_SpecializationInfo.IsPvpTalentLocked(talentID: number) -> locked: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.IsSpecSelectionEnabled

```lua
C_SpecializationInfo.IsSpecSelectionEnabled(classID: number) -> enabled: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.MatchesCurrentSpecSet

```lua
C_SpecializationInfo.MatchesCurrentSpecSet(specSetID: number) -> matches: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.SetActiveSpecGroup

```lua
C_SpecializationInfo.SetActiveSpecGroup(groupIndex: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.SetPetSpecialization

```lua
C_SpecializationInfo.SetPetSpecialization(specIndex: luaIndex, petNumber: number?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.SetPvpTalentLocked

```lua
C_SpecializationInfo.SetPvpTalentLocked(talentID: number, locked: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SpecializationInfo.SetSpecialization

```lua
C_SpecializationInfo.SetSpecialization(specIndex: luaIndex) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACTIVE_TALENT_GROUP_CHANGED

Payload: `curr: number, prev: number`  
Flags: SynchronousEvent  

### CONFIRM_PET_UNLEARN

Payload: `cost: number`  
Flags: SynchronousEvent  

### CONFIRM_TALENT_WIPE

Payload: `cost: number, respecType: number`  
Flags: SynchronousEvent  

### PET_SPECIALIZATION_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_LEARN_PVP_TALENT_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_LEARN_TALENT_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_PVP_TALENT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_TALENT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SPEC_INVOLUNTARILY_CHANGED

Payload: `isPet: bool`  
Flags: SynchronousEvent  

### TALENTS_INVOLUNTARILY_RESET

Payload: `isPetTalents: bool`  
Flags: SynchronousEvent  

## Tables

### PvpTalentInfo (Structure)

- `talentID: number`
- `name: string`
- `icon: number`
- `selected: bool`
- `available: bool`
- `spellID: number`
- `unlocked: bool`
- `known: bool`
- `grantedByAura: bool`
- `dependenciesUnmet: bool`
- `dependenciesUnmetReason: string?`

### PvpTalentSlotInfo (Structure)

- `enabled: bool`
- `level: number`
- `selectedTalentID: number?`
- `availableTalentIDs: table<number>`

### SpecializationInfoOutput (Structure)

- `specId: number = 0`
- `name: string?`
- `description: string?`
- `icon: fileID?`
- `role: string?`
- `primaryStat: luaIndex?`
- `pointsSpent: number = 0`
- `background: string?`
- `previewPointsSpent: number = 0`
- `isUnlocked: bool = true`

### SpecializationInfoQuery (Structure)

- `specializationIndex: luaIndex`
- `isInspect: bool = false`
- `isPet: bool = false`
- `inspectTarget: string?`
- `sex: number?`
- `groupIndex: luaIndex?`
- `classID: number?`

### TalentInfoQuery (Structure)

- `groupIndex: luaIndex?`
- `isInspect: bool = false`
- `tier: luaIndex?`
- `column: luaIndex?`
- `target: UnitToken?`
- `specializationIndex: luaIndex?`
- `talentIndex: luaIndex?`
- `isPet: bool = false`

### TalentInfoResult (Structure)

- `talentID: number = 0`
- `name: string`
- `icon: fileID`
- `tier: luaIndex`
- `column: luaIndex`
- `selected: bool = false`
- `available: bool = false`
- `spellID: number = 0`
- `isPVPTalentUnlocked: bool = false`
- `known: bool = false`
- `grantedByAura: bool = false`
- `rank: luaIndex`
- `maxRank: luaIndex`
- `meetsPrereq: bool = false`
- `previewRank: luaIndex`
- `meetsPreviewPrereq: bool = false`
- `isExceptional: bool = false`
- `hasGoldBorder: bool = false`
