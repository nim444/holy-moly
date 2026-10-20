# ScenarioInfo

Type: System  
Namespace: `C_ScenarioInfo`  
Environment: All

## Functions

### C_ScenarioInfo.GetCriteriaInfo

```lua
C_ScenarioInfo.GetCriteriaInfo(criteriaIndex: number) -> scenarioCriteriaInfo: ScenarioCriteriaInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScenarioInfo.GetCriteriaInfoByStep

```lua
C_ScenarioInfo.GetCriteriaInfoByStep(stepID: number, criteriaIndex: number) -> scenarioCriteriaInfo: ScenarioCriteriaInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScenarioInfo.GetDisplayInfo

```lua
C_ScenarioInfo.GetDisplayInfo() -> info: ScenarioDisplayInfo
```

Flags: MayReturnNothing  

### C_ScenarioInfo.GetJailersTowerTypeString

```lua
C_ScenarioInfo.GetJailersTowerTypeString(runType: JailersTowerType) -> typeString: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ScenarioInfo.GetScenarioIconInfo

```lua
C_ScenarioInfo.GetScenarioIconInfo(uiMapID: number) -> scenarioInfos: table<ScenarioIconInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScenarioInfo.GetScenarioInfo

```lua
C_ScenarioInfo.GetScenarioInfo() -> scenarioInfo: ScenarioInformation
```

Flags: MayReturnNothing  

### C_ScenarioInfo.GetScenarioStepInfo

```lua
C_ScenarioInfo.GetScenarioStepInfo(scenarioStepID: number?) -> scenarioStepInfo: ScenarioStepInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScenarioInfo.GetTieredEntranceActiveSpells

```lua
C_ScenarioInfo.GetTieredEntranceActiveSpells() -> spellIDs: table<number>?
```

Returns list of active challenge spells if inside a tiered entrance scenario

### C_ScenarioInfo.GetUnitCriteriaProgressValues

```lua
C_ScenarioInfo.GetUnitCriteriaProgressValues(unit: UnitToken) -> actualValue: number, percentValue: number, percentValueString: string
```

Secret: SecretWhenUnitIdentityRestricted, SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_ScenarioInfo.IsTieredEntranceScenario

```lua
C_ScenarioInfo.IsTieredEntranceScenario() -> isTieredEntrance: bool
```

## Events

### JAILERS_TOWER_LEVEL_UPDATE

Payload: `level: number, type: JailersTowerType`  
Flags: SynchronousEvent  

### SCENARIO_BONUS_OBJECTIVE_COMPLETE

Payload: `bonusObjectiveID: number`  
Flags: SynchronousEvent  

### SCENARIO_BONUS_VISIBILITY_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SCENARIO_COMPLETED

Payload: `questID: number?, xp: number?, money: number?`  
Flags: SynchronousEvent  

### SCENARIO_CRITERIA_SHOW_STATE_UPDATE

Payload: `show: bool`  
Flags: SynchronousEvent  

### SCENARIO_CRITERIA_UPDATE

Payload: `criteriaID: number`  
Flags: SynchronousEvent  

### SCENARIO_POI_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SCENARIO_SPELL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### SCENARIO_UPDATE

Payload: `newStep: bool?`  
Flags: SynchronousEvent  

## Tables

### JailersTowerType (Enumeration)

| Name | Value |
|---|---|
| TwistingCorridors | 0 |
| SkoldusHalls | 1 |
| FractureChambers | 2 |
| Soulforges | 3 |
| Coldheart | 4 |
| Mortregar | 5 |
| UpperReaches | 6 |
| ArkobanHall | 7 |
| TormentChamberJaina | 8 |
| TormentChamberThrall | 9 |
| TormentChamberAnduin | 10 |
| AdamantVaults | 11 |
| ForgottenCatacombs | 12 |
| Ossuary | 13 |
| BossRush | 14 |

### ScenarioCriteriaInfo (Structure)

- `description: string`
- `criteriaType: number = 0`
- `completed: bool = false`
- `quantity: number = 0`
- `totalQuantity: number = 0`
- `flags: number = 0`
- `assetID: number = 0`
- `criteriaID: number`
- `duration: number = 0`
- `elapsed: number = 0`
- `failed: bool = false`
- `isWeightedProgress: bool = false`
- `isFormatted: bool = false`
- `quantityString: string`

### ScenarioDisplayInfo (Structure)

- `themeColor: colorRGB?`
- `startSoundKitID: number?`

### ScenarioIconInfo (Structure)

- `x: number`
- `y: number`
- `atlas: textureAtlas`
- `description: cstring`

### ScenarioInformation (Structure)

- `name: string`
- `currentStage: number`
- `numStages: number`
- `flags: number`
- `isComplete: bool`
- `xp: number`
- `money: number`
- `type: number`
- `area: string`
- `uiTextureKit: textureKit`
- `scenarioID: number`

### ScenarioStepInfo (Structure)

- `title: string`
- `description: string`
- `numCriteria: number`
- `stepFailed: bool`
- `isBonusStep: bool`
- `isForCurrentStepOnly: bool`
- `shouldShowBonusObjective: bool`
- `spells: table<ScenarioStepSpellInfo>`
- `weightedProgress: number?`
- `rewardQuestID: number`
- `widgetSetID: number?`
- `stepID: number`

### ScenarioStepSpellInfo (Structure)

- `spellID: number`
- `name: string`
- `icon: number`
