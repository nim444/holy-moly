# AchievementInfo

Type: System  
Namespace: `C_AchievementInfo`  
Environment: All

## Functions

### C_AchievementInfo.AreGuildAchievementsEnabled

```lua
C_AchievementInfo.AreGuildAchievementsEnabled() -> enabled: bool
```

### C_AchievementInfo.GetRewardItemID

```lua
C_AchievementInfo.GetRewardItemID(achievementID: number) -> rewardItemID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AchievementInfo.GetSupercedingAchievements

```lua
C_AchievementInfo.GetSupercedingAchievements(achievementID: number) -> supercedingAchievements: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AchievementInfo.IsGuildAchievement

```lua
C_AchievementInfo.IsGuildAchievement(achievementId: number) -> isGuild: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AchievementInfo.IsValidAchievement

```lua
C_AchievementInfo.IsValidAchievement(achievementId: number) -> isValidAchievement: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_AchievementInfo.SetPortraitTexture

```lua
C_AchievementInfo.SetPortraitTexture(textureObject: SimpleTexture)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ACHIEVEMENT_EARNED

Payload: `achievementID: number, alreadyEarned: bool?`  
Flags: SynchronousEvent  

### ACHIEVEMENT_PLAYER_NAME

Payload: `achievementID: number`  
Flags: SynchronousEvent  

### ACHIEVEMENT_SEARCH_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### CRITERIA_COMPLETE

Payload: `criteriaID: number`  
Flags: SynchronousEvent  

### CRITERIA_EARNED

Payload: `achievementID: number, description: cstring, achievementAlreadyEarnedOnAccount: bool`  
Flags: SynchronousEvent  

### CRITERIA_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### INSPECT_ACHIEVEMENT_READY

Payload: `guid: WOWGUID`  
Flags: SynchronousEvent  

### RECEIVED_ACHIEVEMENT_LIST

Payload: `none`  
Flags: UniqueEvent  

### RECEIVED_ACHIEVEMENT_MEMBER_LIST

Payload: `achievementID: number`  
Flags: SynchronousEvent  

### TRACKED_ACHIEVEMENT_LIST_CHANGED

Payload: `achievementID: number?, added: bool?`  
Flags: SynchronousEvent  

### TRACKED_ACHIEVEMENT_UPDATE

Payload: `achievementID: number, criteriaID: number?, elapsed: time_t?, duration: number?`  
Flags: SynchronousEvent
