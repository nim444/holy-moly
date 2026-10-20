# GarrisonShared

Type: None

## Tables

### GarrisonAbilityEffect (Structure)

- `name: cstring`
- `description: cstring`
- `icon: number`
- `factor: number`

### GarrisonFollowerAbilityInfo (Structure)

- `id: number`
- `name: cstring`
- `description: string`
- `icon: number`
- `isTrait: bool`
- `isSpecialization: bool`
- `temporary: bool`
- `category: cstring?`
- `counters: table<GarrisonAbilityEffect>`
- `isEmptySlot: bool`

### GarrisonTalentCurrencyCostInfo (Structure)

- `currencyType: number`
- `currencyQuantity: number`

### GarrisonTalentInfo (Structure)

- `id: number`
- `ability: GarrisonFollowerAbilityInfo`
- `name: string`
- `icon: number`
- `tier: number`
- `uiOrder: number`
- `type: number`
- `prerequisiteTalentID: number?`
- `selected: bool`
- `researched: bool`
- `ignoreTalent: bool`
- `researchDuration: time_t`
- `startTime: time_t`
- `timeRemaining: time_t`
- `researchGoldCost: number`
- `researchCurrencyCosts: table<GarrisonTalentCurrencyCostInfo>`
- `talentAvailability: GarrisonTalentAvailability`
- `talentRank: number`
- `talentMaxRank: number`
- `isBeingResearched: bool`
- `description: string`
- `perkSpellID: number`
- `researchDescription: string?`
- `playerConditionReason: string?`
- `socketInfo: GarrisonTalentSocketInfo`
- `treeID: number`

### GarrisonTalentSocketInfo (Structure)

- `socketType: number`
- `socketSubtype: number`
- `misc0: number`
- `misc1: number`

### GarrisonTalentTreeInfo (Structure)

- `treeID: number`
- `title: cstring`
- `textureKit: textureKit`
- `talents: table<GarrisonTalentInfo>`
- `isClassAgnostic: bool`
- `isThemed: bool`
- `featureType: number`
- `featureSubtype: number`
