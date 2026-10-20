# QuestSession

Type: System  
Namespace: `C_QuestSession`  
Environment: All

## Functions

### C_QuestSession.CanStart

```lua
C_QuestSession.CanStart() -> allowed: bool
```

### C_QuestSession.CanStop

```lua
C_QuestSession.CanStop() -> allowed: bool
```

### C_QuestSession.Exists

```lua
C_QuestSession.Exists() -> exists: bool
```

### C_QuestSession.GetAvailableSessionCommand

```lua
C_QuestSession.GetAvailableSessionCommand() -> command: QuestSessionCommand
```

### C_QuestSession.GetPendingCommand

```lua
C_QuestSession.GetPendingCommand() -> command: QuestSessionCommand
```

### C_QuestSession.GetProposedMaxLevelForSession

```lua
C_QuestSession.GetProposedMaxLevelForSession() -> proposedMaxLevel: number
```

### C_QuestSession.GetSessionBeginDetails

```lua
C_QuestSession.GetSessionBeginDetails() -> details: QuestSessionPlayerDetails?
```

### C_QuestSession.GetSuperTrackedQuest

```lua
C_QuestSession.GetSuperTrackedQuest() -> questID: number?
```

### C_QuestSession.HasJoined

```lua
C_QuestSession.HasJoined() -> hasJoined: bool
```

### C_QuestSession.HasPendingCommand

```lua
C_QuestSession.HasPendingCommand() -> hasPendingCommand: bool
```

### C_QuestSession.RequestSessionStart

```lua
C_QuestSession.RequestSessionStart()
```

### C_QuestSession.RequestSessionStop

```lua
C_QuestSession.RequestSessionStop()
```

### C_QuestSession.SendSessionBeginResponse

```lua
C_QuestSession.SendSessionBeginResponse(beginSession: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestSession.SetQuestIsSuperTracked

```lua
C_QuestSession.SetQuestIsSuperTracked(questID: number, superTrack: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### QUEST_SESSION_CREATED

Payload: `none`  
Flags: UniqueEvent  

### QUEST_SESSION_DESTROYED

Payload: `none`  
Flags: UniqueEvent  

### QUEST_SESSION_ENABLED_STATE_CHANGED

Payload: `enabled: bool`  
Flags: SynchronousEvent  

### QUEST_SESSION_JOINED

Payload: `none`  
Flags: UniqueEvent  

### QUEST_SESSION_LEFT

Payload: `none`  
Flags: UniqueEvent  

### QUEST_SESSION_MEMBER_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_SESSION_MEMBER_START_RESPONSE

Payload: `guid: WOWGUID, response: bool`  
Flags: SynchronousEvent  

### QUEST_SESSION_NOTIFICATION

Payload: `result: QuestSessionResult, guid: WOWGUID`  
Flags: SynchronousEvent  

## Tables

### QuestSessionPlayerDetails (Structure)

- `name: string`
- `guid: WOWGUID`
