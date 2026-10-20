# CovenantSanctumUI

Type: System  
Namespace: `C_CovenantSanctumUI`  
Environment: All

## Functions

### C_CovenantSanctumUI.CanAccessReservoir

```lua
C_CovenantSanctumUI.CanAccessReservoir() -> canAccess: bool
```

### C_CovenantSanctumUI.CanDepositAnima

```lua
C_CovenantSanctumUI.CanDepositAnima() -> canDeposit: bool
```

### C_CovenantSanctumUI.DepositAnima

```lua
C_CovenantSanctumUI.DepositAnima()
```

### C_CovenantSanctumUI.EndInteraction

```lua
C_CovenantSanctumUI.EndInteraction()
```

### C_CovenantSanctumUI.GetAnimaInfo

```lua
C_CovenantSanctumUI.GetAnimaInfo() -> currencyID: number, maxDisplayableValue: number
```

### C_CovenantSanctumUI.GetCurrentTalentTreeID

```lua
C_CovenantSanctumUI.GetCurrentTalentTreeID() -> currentTalentTreeID: number?
```

### C_CovenantSanctumUI.GetFeatures

```lua
C_CovenantSanctumUI.GetFeatures() -> features: table<CovenantSanctumFeatureInfo>
```

### C_CovenantSanctumUI.GetRenownLevel

```lua
C_CovenantSanctumUI.GetRenownLevel() -> level: number
```

### C_CovenantSanctumUI.GetRenownLevels

```lua
C_CovenantSanctumUI.GetRenownLevels(covenantID: number) -> levels: table<CovenantSanctumRenownLevelInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CovenantSanctumUI.GetRenownRewardsForLevel

```lua
C_CovenantSanctumUI.GetRenownRewardsForLevel(covenantID: number, renownLevel: number) -> rewards: table<CovenantSanctumRenownRewardInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CovenantSanctumUI.GetSanctumType

```lua
C_CovenantSanctumUI.GetSanctumType() -> sanctumType: GarrTalentFeatureSubtype?
```

### C_CovenantSanctumUI.GetSoulCurrencies

```lua
C_CovenantSanctumUI.GetSoulCurrencies() -> currencyIDs: table<number>
```

### C_CovenantSanctumUI.HasMaximumRenown

```lua
C_CovenantSanctumUI.HasMaximumRenown() -> hasMaxRenown: bool
```

### C_CovenantSanctumUI.IsPlayerInRenownCatchUpMode

```lua
C_CovenantSanctumUI.IsPlayerInRenownCatchUpMode() -> isInCatchUpMode: bool
```

### C_CovenantSanctumUI.IsWeeklyRenownCapped

```lua
C_CovenantSanctumUI.IsWeeklyRenownCapped() -> isWeeklyCapped: bool
```

### C_CovenantSanctumUI.RequestCatchUpState

```lua
C_CovenantSanctumUI.RequestCatchUpState()
```

## Events

### COVENANT_RENOWN_CATCH_UP_STATE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### COVENANT_SANCTUM_RENOWN_LEVEL_CHANGED

Payload: `newRenownLevel: number, oldRenownLevel: number`  
Flags: SynchronousEvent  

## Tables

### CovenantSanctumFeatureInfo (Structure)

- `garrTalentTreeID: number`
- `featureType: number`
- `uiOrder: number`

### CovenantSanctumRenownLevelInfo (Structure)

- `level: number`
- `locked: bool`
- `isMilestone: bool`
- `isCapstone: bool`

### CovenantSanctumRenownRewardInfo (Structure)

- `uiOrder: number`
- `itemID: number?`
- `spellID: number?`
- `mountID: number?`
- `transmogID: number?`
- `transmogSetID: number?`
- `titleMaskID: number?`
- `garrFollowerID: number?`
- `transmogIllusionSourceID: number?`
- `icon: fileID?`
- `name: cstring?`
- `description: cstring?`
- `toastDescription: cstring?`
