# WowEntitlementInfo

Type: System  
Namespace: `C_WowEntitlementInfo`  
Environment: All

## Events

### ENTITLEMENT_DELIVERED

Payload: `entitlementType: WoWEntitlementType, textureID: number, name: string, payloadID: number?, showFancyToast: bool`  
Flags: SynchronousEvent  

### RAF_ENTITLEMENT_DELIVERED

Payload: `entitlementType: WoWEntitlementType, textureID: number, name: string, payloadID: number?, showFancyToast: bool, rafVersion: RecruitAFriendRewardsVersion`  
Flags: SynchronousEvent  

## Tables

### WoWEntitlementType (Enumeration)

| Name | Value |
|---|---|
| Item | 0 |
| Mount | 1 |
| Battlepet | 2 |
| Toy | 3 |
| Appearance | 4 |
| AppearanceSet | 5 |
| GameTime | 6 |
| Title | 7 |
| Illusion | 8 |
| Invalid | 9 |
