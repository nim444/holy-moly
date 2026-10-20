# AzeriteEssence

Type: System  
Namespace: `C_AzeriteEssence`  
Environment: All

## Functions

### C_AzeriteEssence.ActivateEssence

```lua
C_AzeriteEssence.ActivateEssence(essenceID: number, milestoneID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AzeriteEssence.CanActivateEssence

```lua
C_AzeriteEssence.CanActivateEssence(essenceID: number, milestoneID: number) -> canActivate: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEssence.CanDeactivateEssence

```lua
C_AzeriteEssence.CanDeactivateEssence(milestoneID: number) -> canDeactivate: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEssence.CanOpenUI

```lua
C_AzeriteEssence.CanOpenUI() -> canOpen: bool
```

### C_AzeriteEssence.ClearPendingActivationEssence

```lua
C_AzeriteEssence.ClearPendingActivationEssence()
```

### C_AzeriteEssence.CloseForge

```lua
C_AzeriteEssence.CloseForge()
```

### C_AzeriteEssence.GetEssenceHyperlink

```lua
C_AzeriteEssence.GetEssenceHyperlink(essenceID: number, rank: number) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AzeriteEssence.GetEssenceInfo

```lua
C_AzeriteEssence.GetEssenceInfo(essenceID: number) -> info: AzeriteEssenceInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEssence.GetEssences

```lua
C_AzeriteEssence.GetEssences() -> essences: table<AzeriteEssenceInfo>
```

Flags: MayReturnNothing  

### C_AzeriteEssence.GetMilestoneEssence

```lua
C_AzeriteEssence.GetMilestoneEssence(milestoneID: number) -> essenceID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEssence.GetMilestoneInfo

```lua
C_AzeriteEssence.GetMilestoneInfo(milestoneID: number) -> info: AzeriteMilestoneInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEssence.GetMilestoneSpell

```lua
C_AzeriteEssence.GetMilestoneSpell(milestoneID: number) -> spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_AzeriteEssence.GetMilestones

```lua
C_AzeriteEssence.GetMilestones() -> milestones: table<AzeriteMilestoneInfo>
```

Flags: MayReturnNothing  

### C_AzeriteEssence.GetNumUnlockedEssences

```lua
C_AzeriteEssence.GetNumUnlockedEssences() -> numUnlockedEssences: number
```

### C_AzeriteEssence.GetNumUsableEssences

```lua
C_AzeriteEssence.GetNumUsableEssences() -> numUsableEssences: number
```

### C_AzeriteEssence.GetPendingActivationEssence

```lua
C_AzeriteEssence.GetPendingActivationEssence() -> essenceID: number
```

### C_AzeriteEssence.HasNeverActivatedAnyEssences

```lua
C_AzeriteEssence.HasNeverActivatedAnyEssences() -> hasNeverActivatedAnyEssences: bool
```

### C_AzeriteEssence.HasPendingActivationEssence

```lua
C_AzeriteEssence.HasPendingActivationEssence() -> hasEssence: bool
```

### C_AzeriteEssence.IsAtForge

```lua
C_AzeriteEssence.IsAtForge() -> isAtForge: bool
```

### C_AzeriteEssence.SetPendingActivationEssence

```lua
C_AzeriteEssence.SetPendingActivationEssence(essenceID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_AzeriteEssence.UnlockMilestone

```lua
C_AzeriteEssence.UnlockMilestone(milestoneID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### AZERITE_ESSENCE_ACTIVATED

Payload: `slot: AzeriteEssenceSlot, essenceID: number`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_ACTIVATION_FAILED

Payload: `slot: AzeriteEssenceSlot, essenceID: number`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_CHANGED

Payload: `essenceID: number, newRank: number`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_FORGE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_FORGE_OPEN

Payload: `none`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_MILESTONE_UNLOCKED

Payload: `milestoneID: number`  
Flags: SynchronousEvent  

### AZERITE_ESSENCE_UPDATE

Payload: `none`  
Flags: UniqueEvent  

### PENDING_AZERITE_ESSENCE_CHANGED

Payload: `essenceID: number?`  
Flags: SynchronousEvent  

## Tables

### AzeriteEssenceInfo (Structure)

- `ID: number`
- `name: cstring`
- `rank: number`
- `unlocked: bool`
- `valid: bool`
- `icon: fileID`

### AzeriteMilestoneInfo (Structure)

- `ID: number`
- `requiredLevel: number`
- `canUnlock: bool`
- `unlocked: bool`
- `rank: number?`
- `slot: AzeriteEssenceSlot?`
