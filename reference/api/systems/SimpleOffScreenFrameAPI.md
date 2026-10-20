# SimpleOffScreenFrameAPI

Type: ScriptObject  
Environment: All

## Functions

### SimpleOffScreenFrameAPI:ApplySnapshot

```lua
SimpleOffScreenFrameAPI:ApplySnapshot(texture: SimpleTexture, snapshotID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleOffScreenFrameAPI:Flush

```lua
SimpleOffScreenFrameAPI:Flush()
```

### SimpleOffScreenFrameAPI:GetMaxSnapshots

```lua
SimpleOffScreenFrameAPI:GetMaxSnapshots() -> maxSnapshots: number
```

### SimpleOffScreenFrameAPI:IsSnapshotValid

```lua
SimpleOffScreenFrameAPI:IsSnapshotValid(snapshotID: number) -> isValid: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleOffScreenFrameAPI:SetMaxSnapshots

```lua
SimpleOffScreenFrameAPI:SetMaxSnapshots(maxSnapshots: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### SimpleOffScreenFrameAPI:TakeSnapshot

```lua
SimpleOffScreenFrameAPI:TakeSnapshot() -> snapshotID: number?
```

### SimpleOffScreenFrameAPI:TestPrintToFile

```lua
SimpleOffScreenFrameAPI:TestPrintToFile(snapshotID: number, filename: cstring) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Unavailable in public builds

### SimpleOffScreenFrameAPI:UsesNPOT

```lua
SimpleOffScreenFrameAPI:UsesNPOT() -> usesNPOT: bool?
```
