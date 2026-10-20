# ItemSocketInfo

Type: System  
Namespace: `C_ItemSocketInfo`  
Environment: All

## Functions

### C_ItemSocketInfo.AcceptSockets

```lua
C_ItemSocketInfo.AcceptSockets()
```

### C_ItemSocketInfo.ClickSocketButton

```lua
C_ItemSocketInfo.ClickSocketButton(index: luaIndex)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.CloseSocketInfo

```lua
C_ItemSocketInfo.CloseSocketInfo()
```

### C_ItemSocketInfo.CompleteSocketing

```lua
C_ItemSocketInfo.CompleteSocketing()
```

### C_ItemSocketInfo.GetCurrUIType

```lua
C_ItemSocketInfo.GetCurrUIType() -> uiType: ItemSocketInfoUIType
```

### C_ItemSocketInfo.GetExistingSocketInfo

```lua
C_ItemSocketInfo.GetExistingSocketInfo(index: luaIndex) -> name: string?, icon: fileID?, gemMatchesSocket: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.GetExistingSocketLink

```lua
C_ItemSocketInfo.GetExistingSocketLink(index: luaIndex) -> existingSocketLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.GetNewSocketInfo

```lua
C_ItemSocketInfo.GetNewSocketInfo(index: luaIndex) -> name: string?, icon: fileID?, gemMatchesSocket: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.GetNewSocketLink

```lua
C_ItemSocketInfo.GetNewSocketLink(index: luaIndex) -> newSocketLink: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.GetNumSockets

```lua
C_ItemSocketInfo.GetNumSockets() -> numSockets: number
```

### C_ItemSocketInfo.GetSocketItemBoundTradeable

```lua
C_ItemSocketInfo.GetSocketItemBoundTradeable() -> socketItemTradeable: bool
```

### C_ItemSocketInfo.GetSocketItemInfo

```lua
C_ItemSocketInfo.GetSocketItemInfo() -> name: string?, icon: fileID?, quality: ItemQuality
```

### C_ItemSocketInfo.GetSocketItemRefundable

```lua
C_ItemSocketInfo.GetSocketItemRefundable() -> socketItemRefundable: bool
```

### C_ItemSocketInfo.GetSocketTypes

```lua
C_ItemSocketInfo.GetSocketTypes(index: luaIndex) -> socketType: string?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_ItemSocketInfo.HasBoundGemProposed

```lua
C_ItemSocketInfo.HasBoundGemProposed() -> hasBoundGemProposed: bool
```

### C_ItemSocketInfo.IsArtifactRelicItem

```lua
C_ItemSocketInfo.IsArtifactRelicItem(info: ItemInfo) -> isArtifactRelicItem: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SOCKET_INFO_ACCEPT

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_BIND_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_FAILURE

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_REFUNDABLE_CONFIRM

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_SUCCESS

Payload: `none`  
Flags: SynchronousEvent  

### SOCKET_INFO_UI_EVENT_REGISTRATION_UPDATE

Payload: `uiType: ItemSocketInfoUIType`  
Flags: SynchronousEvent  

### SOCKET_INFO_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### ItemSocketInfoUIType (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |

### SocketInfo (Structure)

- `name: string?`
- `icon: fileID?`
- `gemMatchesSocket: bool`

### SocketItemInfo (Structure)

- `name: string?`
- `icon: fileID?`
- `quality: ItemQuality`
