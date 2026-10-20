# LobbyMatchmakerInfo

Type: System  
Namespace: `C_LobbyMatchmakerInfo`  
Environment: All

## Functions

### C_LobbyMatchmakerInfo.AbandonQueue

```lua
C_LobbyMatchmakerInfo.AbandonQueue()
```

### C_LobbyMatchmakerInfo.EnterQueue

```lua
C_LobbyMatchmakerInfo.EnterQueue(playlistEntry: PartyPlaylistEntry)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_LobbyMatchmakerInfo.GetCurrQueuePlaylistEntry

```lua
C_LobbyMatchmakerInfo.GetCurrQueuePlaylistEntry() -> playlistEntry: PartyPlaylistEntry
```

### C_LobbyMatchmakerInfo.GetCurrQueueState

```lua
C_LobbyMatchmakerInfo.GetCurrQueueState() -> queueState: PlunderstormQueueState
```

### C_LobbyMatchmakerInfo.GetQueueFromMainlineEnabled

```lua
C_LobbyMatchmakerInfo.GetQueueFromMainlineEnabled() -> queueFromMainlineEnabled: bool
```

### C_LobbyMatchmakerInfo.GetQueueStartTime

```lua
C_LobbyMatchmakerInfo.GetQueueStartTime() -> queueStartTime: number
```

### C_LobbyMatchmakerInfo.IsInQueue

```lua
C_LobbyMatchmakerInfo.IsInQueue() -> isInQueue: bool
```

### C_LobbyMatchmakerInfo.RespondToQueuePop

```lua
C_LobbyMatchmakerInfo.RespondToQueuePop(acceptQueue: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LOBBY_MATCHMAKER_QUEUE_ABANDONED

Payload: `none`  
Flags: SynchronousEvent  

### LOBBY_MATCHMAKER_QUEUE_ERROR

Payload: `none`  
Flags: SynchronousEvent  

### LOBBY_MATCHMAKER_QUEUE_EXPIRED

Payload: `none`  
Flags: SynchronousEvent  

### LOBBY_MATCHMAKER_QUEUE_POPPED

Payload: `none`  
Flags: SynchronousEvent  

### LOBBY_MATCHMAKER_QUEUE_STATUS_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### PlunderstormQueueState (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Queued | 1 |
| Proposed | 2 |
| Suspended | 3 |

### LobbyMatchmakerQueueInfo (Structure)

- `isQueueActive: bool = false`
- `playlistEntryID: PartyPlaylistEntry`
- `queueState: PlunderstormQueueState`
- `queueStartTime: number`
