# SocialUI

Type: System  
Namespace: `C_SocialUI`  
Environment: All

## Functions

### C_SocialUI.IsSystemEnabled

```lua
C_SocialUI.IsSystemEnabled() -> isSocialUISystemEnabled: bool
```

## Events

### SOCIAL_UI_SYSTEM_STATUS_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### SocialSystemType (Enumeration)

| Name | Value |
|---|---|
| Friends | 0 |
| QuickJoin | 1 |
| RaidList | 2 |
| RecruitAFriend | 3 |
| RecentAllies | 4 |

### SocialUIBlockType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Ignore | 1 |
| BattleNetInviteBlock | 2 |

### SocialUIPresenceType (Enumeration)

| Name | Value |
|---|---|
| Unknown | 0 |
| Online | 1 |
| Offline | 2 |
| Away | 3 |
| Busy | 4 |
| AppearOffline | 5 |
