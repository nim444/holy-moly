# TaxiMap

Type: System  
Namespace: `C_TaxiMap`  
Environment: All

## Functions

### C_TaxiMap.GetAllTaxiNodes

```lua
C_TaxiMap.GetAllTaxiNodes(uiMapID: number) -> taxiNodes: table<TaxiNodeInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns information on taxi nodes at the current flight master.

### C_TaxiMap.GetTaxiNodesForMap

```lua
C_TaxiMap.GetTaxiNodesForMap(uiMapID: number) -> mapTaxiNodes: table<MapTaxiNodeInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns information on taxi nodes for a given map, without considering the current flight master.

### C_TaxiMap.ShouldMapShowTaxiNodes

```lua
C_TaxiMap.ShouldMapShowTaxiNodes(uiMapID: number) -> shouldShowNodes: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### TAXI_NODE_STATUS_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### TAXIMAP_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### TAXIMAP_OPENED

Payload: `system: number`  
Flags: SynchronousEvent  

## Tables

### FlightPathFaction (Enumeration)

| Name | Value |
|---|---|
| Neutral | 0 |
| Horde | 1 |
| Alliance | 2 |

### FlightPathState (Enumeration)

| Name | Value |
|---|---|
| Current | 0 |
| Reachable | 1 |
| Unreachable | 2 |

### MapTaxiNodeInfo (Structure)

- `nodeID: number`
- `position: vector2`
- `name: cstring`
- `atlasName: cstring`
- `faction: FlightPathFaction`
- `textureKit: textureKit`
- `isUndiscovered: bool`

### TaxiNodeInfo (Structure)

- `nodeID: number`
- `position: vector2`
- `name: cstring`
- `state: FlightPathState`
- `slotIndex: luaIndex`
- `textureKit: textureKit`
- `useSpecialIcon: bool`
- `specialIconCostString: string?`
- `isMapLayerTransition: bool`
