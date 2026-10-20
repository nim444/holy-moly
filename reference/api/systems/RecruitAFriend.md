# RecruitAFriend

Type: System  
Namespace: `C_RecruitAFriend`  
Environment: All

## Functions

### C_RecruitAFriend.CanSummonFriend

```lua
C_RecruitAFriend.CanSummonFriend(guid: WOWGUID) -> canSummon: bool, reason: RecruitAFriendFailure
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_RecruitAFriend.ClaimActivityReward

```lua
C_RecruitAFriend.ClaimActivityReward(activityID: number, acceptanceID: RecruitAcceptanceID) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_RecruitAFriend.ClaimNextReward

```lua
C_RecruitAFriend.ClaimNextReward(rafVersion: RecruitAFriendRewardsVersion?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_RecruitAFriend.GenerateRecruitmentLink

```lua
C_RecruitAFriend.GenerateRecruitmentLink() -> success: bool
```

Flags: HasRestrictions  

### C_RecruitAFriend.GetRAFInfo

```lua
C_RecruitAFriend.GetRAFInfo() -> info: RafInfo
```

### C_RecruitAFriend.GetRAFSystemInfo

```lua
C_RecruitAFriend.GetRAFSystemInfo() -> systemInfo: RafSystemInfo
```

### C_RecruitAFriend.GetRecruitActivityRequirementsText

```lua
C_RecruitAFriend.GetRecruitActivityRequirementsText(activityID: number, acceptanceID: RecruitAcceptanceID) -> requirementsText: table<string>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_RecruitAFriend.GetRecruitInfo

```lua
C_RecruitAFriend.GetRecruitInfo() -> active: bool, faction: number
```

### C_RecruitAFriend.GetSummonFriendCooldown

```lua
C_RecruitAFriend.GetSummonFriendCooldown() -> startTimeSeconds: number, durationSeconds: number, enableCooldownTimer: bool
```

### C_RecruitAFriend.IsRecruitAFriendLinked

```lua
C_RecruitAFriend.IsRecruitAFriendLinked(guid: WOWGUID) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_RecruitAFriend.IsRecruitingEnabled

```lua
C_RecruitAFriend.IsRecruitingEnabled() -> enabled: bool
```

### C_RecruitAFriend.IsSystemEnabled

```lua
C_RecruitAFriend.IsSystemEnabled() -> isSystemEnabled: bool
```

### C_RecruitAFriend.IsSystemSupported

```lua
C_RecruitAFriend.IsSystemSupported() -> isSystemSupported: bool
```

### C_RecruitAFriend.RemoveRAFRecruit

```lua
C_RecruitAFriend.RemoveRAFRecruit(wowAccountGUID: WOWGUID) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: HasRestrictions  

### C_RecruitAFriend.RequestUpdatedRecruitmentInfo

```lua
C_RecruitAFriend.RequestUpdatedRecruitmentInfo() -> success: bool
```

Flags: HasRestrictions  

### C_RecruitAFriend.SummonFriend

```lua
C_RecruitAFriend.SummonFriend(target: WOWGUID, name: cstring)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### RAF_INFO_UPDATED

Payload: `info: RafInfo`  
Flags: SynchronousEvent  

### RAF_RECRUITING_ENABLED_STATUS

Payload: `enabled: bool`  
Flags: SynchronousEvent  

### RAF_REWARD_CLAIM_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### RAF_SYSTEM_ENABLED_STATUS

Payload: `enabled: bool`  
Flags: SynchronousEvent  

### RAF_SYSTEM_INFO_UPDATED

Payload: `systemInfo: RafSystemInfo`  
Flags: SynchronousEvent  

## Tables

### RafRecruitActivityState (Enumeration)

| Name | Value |
|---|---|
| Incomplete | 0 |
| Complete | 1 |
| RewardClaimed | 2 |

### RafRecruitSubStatus (Enumeration)

| Name | Value |
|---|---|
| Trial | 0 |
| Active | 1 |
| Inactive | 2 |

### RafRewardType (Enumeration)

| Name | Value |
|---|---|
| Pet | 0 |
| Mount | 1 |
| Appearance | 2 |
| Title | 3 |
| GameTime | 4 |
| AppearanceSet | 5 |
| Illusion | 6 |
| Invalid | 7 |

### RafAppearanceInfo (Structure)

- `appearanceID: number`

### RafAppearanceSetInfo (Structure)

- `setID: number`
- `setName: string`
- `appearanceIDs: table<number>`

### RafIllusionInfo (Structure)

- `spellItemEnchantmentID: number`

### RafInfo (Structure)

- `versions: table<RafVersionInfo>`
- `recruitmentInfo: RafRecruitmentinfo?`
- `recruits: table<RafRecruit>`
- `claimInProgress: bool`

### RafMonthCount (Structure)

- `lifetimeMonths: number`
- `spentMonths: number`
- `availableMonths: number`

### RafMountInfo (Structure)

- `spellID: number`
- `mountID: number`

### RafPetInfo (Structure)

- `creatureID: number`
- `speciesID: number`
- `displayID: number`
- `speciesName: string`
- `description: string`

### RafRecruit (Structure)

- `bnetAccountID: number`
- `wowAccountGUID: WOWGUID`
- `battleTag: string`
- `monthsRemaining: number`
- `subStatus: RafRecruitSubStatus`
- `acceptanceID: RecruitAcceptanceID`
- `versionRecruited: RecruitAFriendRewardsVersion`
- `activities: table<RafRecruitActivity>`

### RafRecruitActivity (Structure)

- `activityID: number`
- `rewardQuestID: number`
- `state: RafRecruitActivityState`

### RafRecruitmentinfo (Structure)

- `recruitmentCode: string`
- `recruitmentURL: string`
- `expireTime: number`
- `remainingTimeSeconds: number`
- `totalUses: number`
- `remainingUses: number`
- `sourceRealm: string`
- `sourceFaction: string`

### RafReward (Structure)

- `rewardID: number`
- `rafVersion: RecruitAFriendRewardsVersion`
- `itemID: number`
- `rewardType: RafRewardType`
- `petInfo: RafPetInfo?`
- `mountInfo: RafMountInfo?`
- `appearanceInfo: RafAppearanceInfo?`
- `titleInfo: RafTitleInfo?`
- `appearanceSetInfo: RafAppearanceSetInfo?`
- `illusionInfo: RafIllusionInfo?`
- `canClaim: bool`
- `claimed: bool`
- `canAfford: bool`
- `repeatable: bool`
- `repeatableClaimCount: number`
- `monthsRequired: number`
- `monthCost: number`
- `availableInMonths: number`
- `iconID: fileID`

### RafSystemInfo (Structure)

- `maxRecruits: number`
- `maxRecruitMonths: number`
- `maxRecruitmentUses: number`
- `daysInCycle: number`

### RafTitleInfo (Structure)

- `titleMaskID: number`

### RafVersionInfo (Structure)

- `rafVersion: RecruitAFriendRewardsVersion`
- `monthCount: RafMonthCount`
- `rewards: table<RafReward>`
- `nextReward: RafReward?`
- `numAffordableRewards: number`
- `numRecruits: number`
