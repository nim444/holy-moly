# SocialQueue

Type: System  
Namespace: `C_SocialQueue`  
Environment: All

## Functions

### C_SocialQueue.GetAllGroups

```lua
C_SocialQueue.GetAllGroups(allowNonJoinable: bool = false, allowNonQueuedGroups: bool = false) -> groupGUIDs: table<WOWGUID>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SocialQueue.GetConfig

```lua
C_SocialQueue.GetConfig() -> config: SocialQueueConfig
```

Flags: MayReturnNothing  

### C_SocialQueue.GetGroupForPlayer

```lua
C_SocialQueue.GetGroupForPlayer(playerGUID: WOWGUID) -> groupGUID: WOWGUID, isSoloQueueParty: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SocialQueue.GetGroupInfo

```lua
C_SocialQueue.GetGroupInfo(groupGUID: WOWGUID) -> canJoin: bool, numQueues: number, needTank: bool, needHealer: bool, needDamage: bool, isSoloQueueParty: bool, questSessionActive: bool, leaderGUID: WOWGUID
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SocialQueue.GetGroupMembers

```lua
C_SocialQueue.GetGroupMembers(groupGUID: WOWGUID) -> groupMembers: table<SocialQueuePlayerInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SocialQueue.GetGroupQueues

```lua
C_SocialQueue.GetGroupQueues(groupGUID: WOWGUID) -> queues: table<SocialQueueGroupQueueInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_SocialQueue.RequestToJoin

```lua
C_SocialQueue.RequestToJoin(groupGUID: WOWGUID, applyAsTank: bool = false, applyAsHealer: bool = false, applyAsDamage: bool = false) -> requestSuccessful: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_SocialQueue.SignalToastDisplayed

```lua
C_SocialQueue.SignalToastDisplayed(groupGUID: WOWGUID, priority: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SOCIAL_QUEUE_CONFIG_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### SOCIAL_QUEUE_UPDATE

Payload: `groupGUID: WOWGUID, numAddedItems: number?`  
Flags: SynchronousEvent  

## Tables

### SocialQueueConfig (Structure)

- `TOASTS_DISABLED: bool`
- `TOAST_DURATION: number`
- `DELAY_DURATION: number`
- `QUEUE_MULTIPLIER: number`
- `PLAYER_MULTIPLIER: number`
- `PLAYER_FRIEND_VALUE: number`
- `PLAYER_GUILD_VALUE: number`
- `THROTTLE_INITIAL_THRESHOLD: number`
- `THROTTLE_DECAY_TIME: number`
- `THROTTLE_PRIORITY_SPIKE: number`
- `THROTTLE_MIN_THRESHOLD: number`
- `THROTTLE_PVP_PRIORITY_NORMAL: number`
- `THROTTLE_PVP_PRIORITY_LOW: number`
- `THROTTLE_PVP_HONOR_THRESHOLD: number`
- `THROTTLE_LFGLIST_PRIORITY_DEFAULT: number`
- `THROTTLE_LFGLIST_PRIORITY_ABOVE: number`
- `THROTTLE_LFGLIST_PRIORITY_BELOW: number`
- `THROTTLE_LFGLIST_ILVL_SCALING_ABOVE: number`
- `THROTTLE_LFGLIST_ILVL_SCALING_BELOW: number`
- `THROTTLE_RF_PRIORITY_ABOVE: number`
- `THROTTLE_RF_ILVL_SCALING_ABOVE: number`
- `THROTTLE_DF_MAX_ITEM_LEVEL: number`
- `THROTTLE_DF_BEST_PRIORITY: number`

### SocialQueueGroupInfo (Structure)

- `canJoin: bool`
- `numQueues: number`
- `needTank: bool`
- `needHealer: bool`
- `needDamage: bool`
- `isSoloQueueParty: bool`
- `questSessionActive: bool`
- `leaderGUID: WOWGUID`

### SocialQueueGroupQueueInfo (Structure)

- `clientID: number`
- `eligible: bool`
- `needTank: bool`
- `needHealer: bool`
- `needDamage: bool`
- `isAutoAccept: bool`
- `queueData: QueueSpecificInfo`

### SocialQueuePlayerInfo (Structure)

- `guid: WOWGUID`
- `clubId: ClubId?`
