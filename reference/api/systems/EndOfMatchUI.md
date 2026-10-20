# EndOfMatchUI

Type: System  
Namespace: `C_EndOfMatchUI`  
Environment: All

## Functions

### C_EndOfMatchUI.GetEndOfMatchDetails

```lua
C_EndOfMatchUI.GetEndOfMatchDetails() -> matchDetails: MatchDetails?
```

## Events

### SHOW_END_OF_MATCH_UI

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### EndOfMatchType (Enumeration)

| Name | Value |
|---|---|
| None | 0 |
| Plunderstorm | 1 |

### MatchDetailType (Enumeration)

| Name | Value |
|---|---|
| Placement | 0 |
| Kills | 1 |
| PlunderAcquired | 2 |

### MatchDetail (Structure)

- `type: MatchDetailType`
- `value: number`

### MatchDetails (Structure)

- `matchType: EndOfMatchType`
- `matchEnded: bool`
- `detailsList: table<MatchDetail>`
