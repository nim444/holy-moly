# PlayerMentorship

Type: System  
Namespace: `C_PlayerMentorship`  
Environment: All

## Functions

### C_PlayerMentorship.GetMentorLevelRequirement

```lua
C_PlayerMentorship.GetMentorLevelRequirement() -> level: number?
```

### C_PlayerMentorship.GetMentorRequirements

```lua
C_PlayerMentorship.GetMentorRequirements() -> achievementIDs: table<number>, optionalAchievementIDs: table<number>, optionalCompleteAtLeastCount: number
```

### C_PlayerMentorship.GetMentorshipStatus

```lua
C_PlayerMentorship.GetMentorshipStatus(playerLocation: PlayerLocation) -> status: PlayerMentorshipStatus
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_PlayerMentorship.IsActivePlayerConsideredNewcomer

```lua
C_PlayerMentorship.IsActivePlayerConsideredNewcomer() -> isConsideredNewcomer: bool
```

### C_PlayerMentorship.IsMentorRestricted

```lua
C_PlayerMentorship.IsMentorRestricted() -> isRestricted: bool
```

## Events

### MENTORSHIP_STATUS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### NEWCOMER_GRADUATION

Payload: `none`  
Flags: SynchronousEvent
