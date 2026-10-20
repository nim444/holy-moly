# MajorFactionsUI

Type: System  
Namespace: `C_MajorFactions`  
Environment: All

## Functions

### C_MajorFactions.GetCurrentRenownLevel

```lua
C_MajorFactions.GetCurrentRenownLevel(majorFactionID: number) -> level: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetMajorFactionData

```lua
C_MajorFactions.GetMajorFactionData(majorFactionID: number) -> data: MajorFactionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetMajorFactionIDs

```lua
C_MajorFactions.GetMajorFactionIDs(expansionID: number?) -> majorFactionIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetMajorFactionProgressionInfo

```lua
C_MajorFactions.GetMajorFactionProgressionInfo(majorFactionID: number) -> data: MajorFactionProgressionInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetMajorFactionRenownInfo

```lua
C_MajorFactions.GetMajorFactionRenownInfo(majorFactionID: number) -> data: MajorFactionRenownInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetRenownLevels

```lua
C_MajorFactions.GetRenownLevels(majorFactionID: number) -> levels: table<MajorFactionRenownLevelInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetRenownNPCFactionID

```lua
C_MajorFactions.GetRenownNPCFactionID() -> renownNPCFactionID: number
```

### C_MajorFactions.GetRenownRewardsForLevel

```lua
C_MajorFactions.GetRenownRewardsForLevel(majorFactionID: number, renownLevel: number) -> rewards: table<MajorFactionRenownRewardInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.GetTotalReputationForRenownLevel

```lua
C_MajorFactions.GetTotalReputationForRenownLevel(majorFactionID: number, renownLevel: number) -> totalReputation: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.HasMaximumRenown

```lua
C_MajorFactions.HasMaximumRenown(majorFactionID: number) -> hasMaxRenown: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.IsMajorFactionHiddenFromExpansionPage

```lua
C_MajorFactions.IsMajorFactionHiddenFromExpansionPage(majorFactionID: number) -> isHidden: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.IsWeeklyRenownCapped

```lua
C_MajorFactions.IsWeeklyRenownCapped(majorFactionID: number) -> isWeeklyCapped: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.ShouldDisplayMajorFactionAsJourney

```lua
C_MajorFactions.ShouldDisplayMajorFactionAsJourney(majorFactionID: number) -> shouldDisplayMajorFactionAsJourney: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_MajorFactions.ShouldUseJourneyRewardTrack

```lua
C_MajorFactions.ShouldUseJourneyRewardTrack(majorFactionID: number) -> shouldUseJourneyRewardTrack: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### MAJOR_FACTION_INTERACTION_ENDED

Payload: `none`  
Flags: SynchronousEvent  

### MAJOR_FACTION_INTERACTION_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### MAJOR_FACTION_RENOWN_LEVEL_CHANGED

Payload: `majorFactionID: number, newRenownLevel: number, oldRenownLevel: number`  
Flags: SynchronousEvent  

### MAJOR_FACTION_UNLOCKED

Payload: `majorFactionID: number`  
Flags: SynchronousEvent  

## Tables

### MajorFactionData (Structure)

- `name: cstring`
- `description: cstring`
- `highlights: table<RenownHighlightInfo>`
- `factionID: number`
- `expansionID: number`
- `bountySetID: number`
- `isUnlocked: bool`
- `useJourneyUnlockToast: bool`
- `hideRenownLevelUpToast: bool`
- `unlockDescription: cstring?`
- `uiPriority: number`
- `renownLevel: number`
- `maxLevel: number`
- `renownReputationEarned: number`
- `renownLevelThreshold: number`
- `textureKit: textureKit`
- `celebrationSoundKit: number`
- `renownFanfareSoundKitID: number`
- `factionFontColor: DBColorExport?`
- `renownTrackLevelEffectID: number?`
- `playerCompanionID: number?`

### MajorFactionProgressionInfo (Structure)

- `renownLevel: number`
- `previousWeekProgressiveMaxLevel: number`
- `currentWeekProgressiveMaxLevel: number`
- `maxLevel: number`
- `renownReputationEarned: number`
- `renownLevelThreshold: number`
- `weekNumber: number`

### MajorFactionRenownInfo (Structure)

- `renownLevel: number`
- `renownReputationEarned: number`
- `renownLevelThreshold: number`

### MajorFactionRenownLevelInfo (Structure)

- `factionID: number`
- `level: number`
- `locked: bool`
- `isMilestone: bool`
- `isCapstone: bool`

### MajorFactionRenownRewardInfo (Structure)

- `renownRewardID: number`
- `uiOrder: number`
- `isAccountUnlock: bool`
- `itemID: number?`
- `spellID: number?`
- `mountID: number?`
- `transmogID: number?`
- `transmogSetID: number?`
- `titleMaskID: number?`
- `transmogIllusionSourceID: number?`
- `icon: fileID?`
- `name: cstring?`
- `description: cstring?`
- `toastDescription: cstring?`
- `rewardType: number?`
- `isCollected: bool?`

### RenownHighlightInfo (Structure)

- `title: cstring`
- `description: cstring`
- `level: number`
