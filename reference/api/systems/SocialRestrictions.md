# SocialRestrictions

Type: System  
Namespace: `C_SocialRestrictions`  
Environment: All

## Functions

### C_SocialRestrictions.AcknowledgeAgeVerificationRestriction

```lua
C_SocialRestrictions.AcknowledgeAgeVerificationRestriction()
```

### C_SocialRestrictions.AcknowledgeRegionalChatDisabled

```lua
C_SocialRestrictions.AcknowledgeRegionalChatDisabled()
```

### C_SocialRestrictions.CanReceiveChat

```lua
C_SocialRestrictions.CanReceiveChat() -> canReceiveChat: bool
```

Returns true if the player meets all conditions that allow them to receive chat messages.

### C_SocialRestrictions.CanSendChat

```lua
C_SocialRestrictions.CanSendChat() -> canSendChat: bool
```

Returns true if the player meets all conditions that allow them to send chat messages.

### C_SocialRestrictions.IsAgeVerificationRestricted

```lua
C_SocialRestrictions.IsAgeVerificationRestricted() -> restricted: bool
```

Returns true if the account is restricted by the Age Verification feature.

### C_SocialRestrictions.IsAgeVerificationRestrictedMinor

```lua
C_SocialRestrictions.IsAgeVerificationRestrictedMinor() -> isMinor: bool
```

Flags: HasRestrictions  

Returns true if the Age Verification restriction is because the account belongs to a minor, as opposed to an adult who has not yet verified their age.

### C_SocialRestrictions.IsChatDisabled

```lua
C_SocialRestrictions.IsChatDisabled() -> disabled: bool
```

### C_SocialRestrictions.IsFriendsDisabled

```lua
C_SocialRestrictions.IsFriendsDisabled() -> disabled: bool
```

### C_SocialRestrictions.IsMuted

```lua
C_SocialRestrictions.IsMuted() -> isMuted: bool
```

### C_SocialRestrictions.IsSilenced

```lua
C_SocialRestrictions.IsSilenced() -> isSilenced: bool
```

### C_SocialRestrictions.IsSquelched

```lua
C_SocialRestrictions.IsSquelched() -> isSquelched: bool
```

### C_SocialRestrictions.SetChatDisabled

```lua
C_SocialRestrictions.SetChatDisabled(disabled: bool)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ALERT_AGE_VERIFICATION_RESTRICTED

Payload: `none`  
Flags: SynchronousEvent  

### ALERT_REGIONAL_CHAT_DISABLED

Payload: `none`  
Flags: SynchronousEvent  

### CHAT_DISABLED_CHANGE_FAILED

Payload: `disabled: bool`  
Flags: SynchronousEvent  

### CHAT_DISABLED_CHANGED

Payload: `disabled: bool`  
Flags: SynchronousEvent
