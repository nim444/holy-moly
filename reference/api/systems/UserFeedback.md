# UserFeedback

Type: System  
Namespace: `C_UserFeedback`  
Environment: All

## Functions

### C_UserFeedback.SubmitBug

```lua
C_UserFeedback.SubmitBug(bugInfo: cstring, suppressNotification: bool = false) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_UserFeedback.SubmitSuggestion

```lua
C_UserFeedback.SubmitSuggestion(suggestion: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted
