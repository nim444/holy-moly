# BehavioralMessaging

Type: System  
Namespace: `C_BehavioralMessaging`  
Environment: All

## Functions

### C_BehavioralMessaging.SendNotificationReceipt

```lua
C_BehavioralMessaging.SendNotificationReceipt(dbId: NotificationDbId, openTimeSeconds: number, readTimeSeconds: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### BEHAVIORAL_NOTIFICATION

Payload: `notificationType: string, dbId: NotificationDbId`  
Flags: SynchronousEvent
