# ProfessionSpecUI

Type: System  
Namespace: `C_ProfSpecs`  
Environment: All

## Functions

### C_ProfSpecs.CanRefundPath

```lua
C_ProfSpecs.CanRefundPath(pathID: number, configID: number) -> canRefund: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.CanUnlockTab

```lua
C_ProfSpecs.CanUnlockTab(tabTreeID: number, configID: number) -> canUnlock: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetChildrenForPath

```lua
C_ProfSpecs.GetChildrenForPath(pathID: number) -> childIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetConfigIDForSkillLine

```lua
C_ProfSpecs.GetConfigIDForSkillLine(skillLineID: number) -> configID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetCurrencyInfoForSkillLine

```lua
C_ProfSpecs.GetCurrencyInfoForSkillLine(skillLineID: number) -> info: SpecializationCurrencyInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetDefaultSpecSkillLine

```lua
C_ProfSpecs.GetDefaultSpecSkillLine() -> defaultSpecSkillLine: number?
```

### C_ProfSpecs.GetDescriptionForPath

```lua
C_ProfSpecs.GetDescriptionForPath(pathID: number) -> description: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetDescriptionForPerk

```lua
C_ProfSpecs.GetDescriptionForPerk(perkID: number) -> description: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetEntryIDForPerk

```lua
C_ProfSpecs.GetEntryIDForPerk(perkID: number) -> entryID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetNewSpecReminderProfName

```lua
C_ProfSpecs.GetNewSpecReminderProfName() -> profName: cstring?
```

### C_ProfSpecs.GetPerksForPath

```lua
C_ProfSpecs.GetPerksForPath(pathID: number) -> perkInfos: table<SpecPerkInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetRootPathForTab

```lua
C_ProfSpecs.GetRootPathForTab(tabTreeID: number) -> rootPathID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetSourceTextForPath

```lua
C_ProfSpecs.GetSourceTextForPath(pathID: number, configID: number) -> sourceText: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetSpecTabIDsForSkillLine

```lua
C_ProfSpecs.GetSpecTabIDsForSkillLine(skillLineID: number) -> specTabIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetSpecTabInfo

```lua
C_ProfSpecs.GetSpecTabInfo() -> specTabInfo: SpecializationTabInfo
```

### C_ProfSpecs.GetSpendCurrencyForPath

```lua
C_ProfSpecs.GetSpendCurrencyForPath(pathID: number) -> currencyID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetSpendEntryForPath

```lua
C_ProfSpecs.GetSpendEntryForPath(pathID: number) -> entryID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetStateForPath

```lua
C_ProfSpecs.GetStateForPath(pathID: number, configID: number) -> state: ProfessionsSpecPathState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetStateForPerk

```lua
C_ProfSpecs.GetStateForPerk(perkID: number, configID: number) -> state: ProfessionsSpecPerkState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetStateForTab

```lua
C_ProfSpecs.GetStateForTab(tabTreeID: number, configID: number) -> tabInfo: ProfessionsSpecTabState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetTabInfo

```lua
C_ProfSpecs.GetTabInfo(tabTreeID: number) -> tabInfo: ProfTabInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetUnlockEntryForPath

```lua
C_ProfSpecs.GetUnlockEntryForPath(pathID: number) -> entryID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.GetUnlockRankForPerk

```lua
C_ProfSpecs.GetUnlockRankForPerk(perkID: number) -> unlockRank: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.ShouldShowPointsReminder

```lua
C_ProfSpecs.ShouldShowPointsReminder() -> showReminder: bool
```

### C_ProfSpecs.ShouldShowPointsReminderForSkillLine

```lua
C_ProfSpecs.ShouldShowPointsReminderForSkillLine(skillLineID: number) -> showReminder: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ProfSpecs.ShouldShowSpecTab

```lua
C_ProfSpecs.ShouldShowSpecTab() -> showSpecTab: bool
```

### C_ProfSpecs.SkillLineHasSpecialization

```lua
C_ProfSpecs.SkillLineHasSpecialization(skillLineID: number) -> hasSpecialization: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SKILL_LINE_SPECS_RANKS_CHANGED

Payload: `none`  
Flags: UniqueEvent  

### SKILL_LINE_SPECS_UNLOCKED

Payload: `skillLineID: number, tradeSkillID: number`  
Flags: UniqueEvent
