# ResearchInfo

Type: System  
Namespace: `C_ResearchInfo`  
Environment: All

## Functions

### C_ResearchInfo.GetDigSitesForMap

```lua
C_ResearchInfo.GetDigSitesForMap(uiMapID: number) -> digSites: table<DigSiteMapInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### ARCHAEOLOGY_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### ARCHAEOLOGY_FIND_COMPLETE

Payload: `numFindsCompleted: number, totalFinds: number, researchBranchID: number`  
Flags: SynchronousEvent  

### ARCHAEOLOGY_SURVEY_CAST

Payload: `numFindsCompleted: number, totalFinds: number, researchBranchID: number, successfulFind: number`  
Flags: SynchronousEvent  

### ARCHAEOLOGY_TOGGLE

Payload: `none`  
Flags: SynchronousEvent  

### ARTIFACT_DIGSITE_COMPLETE

Payload: `researchBranchID: number`  
Flags: SynchronousEvent  

### RESEARCH_ARTIFACT_COMPLETE

Payload: `name: cstring`  
Flags: SynchronousEvent  

### RESEARCH_ARTIFACT_DIG_SITE_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### RESEARCH_ARTIFACT_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### DigSiteMapInfo (Structure)

- `researchSiteID: number`
- `position: vector2`
- `name: cstring`
- `poiBlobID: number`
- `textureIndex: number`
