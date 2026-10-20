# InGameNavigation

Type: System  
Namespace: `C_Navigation`  
Environment: All

## Functions

### C_Navigation.GetDistance

```lua
C_Navigation.GetDistance() -> distance: number
```

### C_Navigation.GetFrame

```lua
C_Navigation.GetFrame() -> frame: ScriptRegion?
```

### C_Navigation.GetNearestPartyMemberToken

```lua
C_Navigation.GetNearestPartyMemberToken() -> unitToken: cstring
```

Flags: HasRestrictions  

### C_Navigation.GetNextWaypointForMap

```lua
C_Navigation.GetNextWaypointForMap(uiMapID: number) -> x: number, y: number, waypointDescription: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Navigation.GetTargetState

```lua
C_Navigation.GetTargetState() -> state: NavigationState
```

### C_Navigation.HasValidScreenPosition

```lua
C_Navigation.HasValidScreenPosition() -> hasValidScreenPosition: bool
```

### C_Navigation.WasClampedToScreen

```lua
C_Navigation.WasClampedToScreen() -> wasClamped: bool
```

## Events

### NAVIGATION_DESTINATION_REACHED

Payload: `isWaypoint: bool`  
Flags: SynchronousEvent  

### NAVIGATION_FRAME_CREATED

Payload: `region: ScriptRegion`  
Flags: SynchronousEvent  

### NAVIGATION_FRAME_DESTROYED

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### NavigationState (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Occluded | 1 |
| InRange | 2 |
| Disabled | 3 |
