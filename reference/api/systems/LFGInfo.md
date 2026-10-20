# LFGInfo

Type: System  
Namespace: `C_LFGInfo`  
Environment: All

## Functions

### C_LFGInfo.AreCrossFactionGroupQueuesAllowed

```lua
C_LFGInfo.AreCrossFactionGroupQueuesAllowed(lfgDungeonID: number) -> areCrossFactionGroupQueuesAllowed: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.CanPlayerUseGroupFinder

```lua
C_LFGInfo.CanPlayerUseGroupFinder() -> canUse: bool, failureReason: string
```

### C_LFGInfo.CanPlayerUseLFD

```lua
C_LFGInfo.CanPlayerUseLFD() -> canUse: bool, failureReason: string
```

### C_LFGInfo.CanPlayerUseLFR

```lua
C_LFGInfo.CanPlayerUseLFR() -> canUse: bool, failureReason: string
```

### C_LFGInfo.CanPlayerUsePVP

```lua
C_LFGInfo.CanPlayerUsePVP() -> canUse: bool, failureReason: string
```

### C_LFGInfo.CanPlayerUsePremadeGroup

```lua
C_LFGInfo.CanPlayerUsePremadeGroup() -> canUse: bool, failureReason: string
```

### C_LFGInfo.CanPlayerUseScenarioFinder

```lua
C_LFGInfo.CanPlayerUseScenarioFinder() -> canUse: bool, failureReason: string
```

### C_LFGInfo.ConfirmLfgExpandSearch

```lua
C_LFGInfo.ConfirmLfgExpandSearch()
```

### C_LFGInfo.DoesActivePartyMeetPremadeLaunchCount

```lua
C_LFGInfo.DoesActivePartyMeetPremadeLaunchCount(lfgDungeonID: number) -> doesActivePartyMeetPremadeLaunchCount: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.DoesCrossFactionQueueRequireFullPremade

```lua
C_LFGInfo.DoesCrossFactionQueueRequireFullPremade(lfgDungeonID: number) -> doesCrossFactionQueueRequireFullPremade: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.GetActiveLFGDungeonName

```lua
C_LFGInfo.GetActiveLFGDungeonName() -> name: string
```

### C_LFGInfo.GetAllEntriesForCategory

```lua
C_LFGInfo.GetAllEntriesForCategory(category: luaIndex) -> lfgDungeonIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.GetDungeonInfo

```lua
C_LFGInfo.GetDungeonInfo(lfgDungeonID: number) -> dungeonInfo: LFGDungeonInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_LFGInfo.GetLFDLockStates

```lua
C_LFGInfo.GetLFDLockStates() -> lockInfo: table<LFGLockInfo>
```

### C_LFGInfo.GetLevelUpInstances

```lua
C_LFGInfo.GetLevelUpInstances(currPlayerLevel: number, isRaid: bool) -> instances: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.GetRoleCheckDifficultyDetails

```lua
C_LFGInfo.GetRoleCheckDifficultyDetails() -> maxLevel: number?, isLevelReduced: bool
```

### C_LFGInfo.HideNameFromUI

```lua
C_LFGInfo.HideNameFromUI(dungeonID: number) -> shouldHide: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.IsGroupFinderEnabled

```lua
C_LFGInfo.IsGroupFinderEnabled() -> enabled: bool
```

### C_LFGInfo.IsInLFGFollowerDungeon

```lua
C_LFGInfo.IsInLFGFollowerDungeon() -> result: bool
```

### C_LFGInfo.IsInMatchmadeRaidWithoutRoleRequirements

```lua
C_LFGInfo.IsInMatchmadeRaidWithoutRoleRequirements() -> result: bool
```

### C_LFGInfo.IsLFDEnabled

```lua
C_LFGInfo.IsLFDEnabled() -> enabled: bool
```

### C_LFGInfo.IsLFGFollowerDungeon

```lua
C_LFGInfo.IsLFGFollowerDungeon(dungeonID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LFGInfo.IsLFREnabled

```lua
C_LFGInfo.IsLFREnabled() -> enabled: bool
```

## Events

### ISLAND_COMPLETED

Payload: `mapID: number, winner: number`  
Flags: SynchronousEvent  

### LFG_BOOT_PROPOSAL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_COMPLETION_REWARD

Payload: `none`  
Flags: SynchronousEvent  

### LFG_COOLDOWNS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_ENABLED_STATE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_INVALID_ERROR_MESSAGE

Payload: `reason: number, subReason1: number, subReason2: number`  
Flags: SynchronousEvent  

### LFG_LOCK_INFO_RECEIVED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_OFFER_CONTINUE

Payload: `name: cstring, lfgDungeonsID: number, typeID: number`  
Flags: SynchronousEvent  

### LFG_OPEN_FROM_GOSSIP

Payload: `dungeonID: number`  
Flags: SynchronousEvent  

### LFG_PROPOSAL_DONE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_PROPOSAL_FAILED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_PROPOSAL_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### LFG_PROPOSAL_SUCCEEDED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_PROPOSAL_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_QUEUE_STATUS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_READY_CHECK_DECLINED

Payload: `name: cstring`  
Flags: SynchronousEvent  

### LFG_READY_CHECK_HIDE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_READY_CHECK_PLAYER_IS_READY

Payload: `name: cstring`  
Flags: SynchronousEvent  

### LFG_READY_CHECK_SHOW

Payload: `isRequeue: bool`  
Flags: SynchronousEvent  

### LFG_READY_CHECK_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_ROLE_CHECK_DECLINED

Payload: `none`  
Flags: SynchronousEvent  

### LFG_ROLE_CHECK_HIDE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_ROLE_CHECK_ROLE_CHOSEN

Payload: `name: cstring, isTank: bool, isHealer: bool, isDamage: bool`  
Flags: SynchronousEvent  

### LFG_ROLE_CHECK_SHOW

Payload: `isRequeue: bool`  
Flags: SynchronousEvent  

### LFG_ROLE_CHECK_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_ROLE_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### LFG_UPDATE_RANDOM_INFO

Payload: `none`  
Flags: SynchronousEvent  

### SHOW_LFG_EXPAND_SEARCH_PROMPT

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_LFG_LIST

Payload: `none`  
Flags: SynchronousEvent  

### WARFRONT_COMPLETED

Payload: `mapID: number, winner: number`  
Flags: SynchronousEvent  

## Tables

### LFGDungeonInfo (Structure)

- `name: string`
- `iconID: fileID`
- `link: string?`

### LFGLockInfo (Structure)

- `lfgID: number`
- `reason: number`
- `hideEntry: bool`
