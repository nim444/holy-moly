# DeathInfo

Type: System  
Namespace: `C_DeathInfo`  
Environment: All

## Functions

### C_DeathInfo.GetCorpseMapPosition

```lua
C_DeathInfo.GetCorpseMapPosition(uiMapID: number) -> position: vector2?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DeathInfo.GetDeathReleasePosition

```lua
C_DeathInfo.GetDeathReleasePosition(uiMapID: number) -> position: vector2?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DeathInfo.GetGraveyardsForMap

```lua
C_DeathInfo.GetGraveyardsForMap(uiMapID: number) -> graveyards: table<GraveyardMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_DeathInfo.GetSelfResurrectOptions

```lua
C_DeathInfo.GetSelfResurrectOptions() -> options: table<SelfResurrectOption>
```

Flags: MayReturnNothing  

### C_DeathInfo.UseSelfResurrectOption

```lua
C_DeathInfo.UseSelfResurrectOption(optionType: SelfResurrectOptionType, id: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### AREA_SPIRIT_HEALER_IN_RANGE

Payload: `none`  
Flags: SynchronousEvent  

### AREA_SPIRIT_HEALER_OUT_OF_RANGE

Payload: `none`  
Flags: SynchronousEvent  

### CEMETERY_PREFERENCE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### CONFIRM_XP_LOSS

Payload: `none`  
Flags: SynchronousEvent  

### CORPSE_IN_INSTANCE

Payload: `none`  
Flags: SynchronousEvent  

### CORPSE_IN_RANGE

Payload: `none`  
Flags: SynchronousEvent  

### CORPSE_OUT_OF_RANGE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_ALIVE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_DEAD

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_SKINNED

Payload: `hasFreeRepop: number`  
Flags: SynchronousEvent  

### PLAYER_UNGHOST

Payload: `none`  
Flags: SynchronousEvent  

### REQUEST_CEMETERY_LIST_RESPONSE

Payload: `isGossipTriggered: bool`  
Flags: SynchronousEvent  

### RESURRECT_REQUEST

Payload: `inviter: cstring`  
Flags: SynchronousEvent  

### SELF_RES_SPELL_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### SelfResurrectOptionType (Enumeration)

| Name | Value |
|---|---|
| Spell | 0 |
| Item | 1 |

### GraveyardMapInfo (Structure)

- `areaPoiID: number`
- `position: vector2`
- `name: cstring`
- `textureIndex: number`
- `graveyardID: number`
- `isGraveyardSelectable: bool`

### SelfResurrectOption (Structure)

- `name: string`
- `optionType: SelfResurrectOptionType`
- `id: number`
- `canUse: bool`
- `isLimited: bool`
- `priority: number`
