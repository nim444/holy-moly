# Soulbinds

Type: System  
Namespace: `C_Soulbinds`  
Environment: All

## Functions

### C_Soulbinds.ActivateSoulbind

```lua
C_Soulbinds.ActivateSoulbind(soulbindID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.CanActivateSoulbind

```lua
C_Soulbinds.CanActivateSoulbind(soulbindID: number) -> result: bool, errorDescription: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.CanModifySoulbind

```lua
C_Soulbinds.CanModifySoulbind() -> result: bool
```

### C_Soulbinds.CanResetConduitsInSoulbind

```lua
C_Soulbinds.CanResetConduitsInSoulbind(soulbindID: number) -> result: bool, errorDescription: cstring?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.CanSwitchActiveSoulbindTreeBranch

```lua
C_Soulbinds.CanSwitchActiveSoulbindTreeBranch() -> result: bool
```

### C_Soulbinds.CloseUI

```lua
C_Soulbinds.CloseUI()
```

### C_Soulbinds.CommitPendingConduitsInSoulbind

```lua
C_Soulbinds.CommitPendingConduitsInSoulbind(soulbindID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.FindNodeIDActuallyInstalled

```lua
C_Soulbinds.FindNodeIDActuallyInstalled(soulbindID: number, conduitID: number) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.FindNodeIDAppearingInstalled

```lua
C_Soulbinds.FindNodeIDAppearingInstalled(soulbindID: number, conduitID: number) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.FindNodeIDPendingInstall

```lua
C_Soulbinds.FindNodeIDPendingInstall(soulbindID: number, conduitID: number) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.FindNodeIDPendingUninstall

```lua
C_Soulbinds.FindNodeIDPendingUninstall(soulbindID: number, conduitID: number) -> nodeID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetActiveSoulbindID

```lua
C_Soulbinds.GetActiveSoulbindID() -> soulbindID: number
```

### C_Soulbinds.GetConduitCollection

```lua
C_Soulbinds.GetConduitCollection(conduitType: SoulbindConduitType) -> collectionData: table<ConduitCollectionData>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitCollectionCount

```lua
C_Soulbinds.GetConduitCollectionCount() -> count: number
```

### C_Soulbinds.GetConduitCollectionData

```lua
C_Soulbinds.GetConduitCollectionData(conduitID: number) -> collectionData: ConduitCollectionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitCollectionDataAtCursor

```lua
C_Soulbinds.GetConduitCollectionDataAtCursor() -> collectionData: ConduitCollectionData?
```

### C_Soulbinds.GetConduitCollectionDataByVirtualID

```lua
C_Soulbinds.GetConduitCollectionDataByVirtualID(virtualID: number) -> collectionData: ConduitCollectionData?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitDisplayed

```lua
C_Soulbinds.GetConduitDisplayed(nodeID: number) -> conduitID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitHyperlink

```lua
C_Soulbinds.GetConduitHyperlink(conduitID: number, rank: number) -> link: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitIDPendingInstall

```lua
C_Soulbinds.GetConduitIDPendingInstall(nodeID: number) -> conduitID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitQuality

```lua
C_Soulbinds.GetConduitQuality(conduitID: number, rank: number) -> quality: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitRank

```lua
C_Soulbinds.GetConduitRank(conduitID: number) -> conduitRank: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetConduitSpellID

```lua
C_Soulbinds.GetConduitSpellID(conduitID: number, conduitRank: number) -> spellID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetInstalledConduitID

```lua
C_Soulbinds.GetInstalledConduitID(nodeID: number) -> conduitID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetNode

```lua
C_Soulbinds.GetNode(nodeID: number) -> node: SoulbindNode
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetSoulbindData

```lua
C_Soulbinds.GetSoulbindData(soulbindID: number) -> data: SoulbindData
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetSpecsAssignedToSoulbind

```lua
C_Soulbinds.GetSpecsAssignedToSoulbind(soulbindID: number) -> specIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.GetTree

```lua
C_Soulbinds.GetTree(treeID: number) -> tree: SoulbindTree
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.HasAnyInstalledConduitInSoulbind

```lua
C_Soulbinds.HasAnyInstalledConduitInSoulbind(soulbindID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.HasAnyPendingConduits

```lua
C_Soulbinds.HasAnyPendingConduits() -> result: bool
```

### C_Soulbinds.HasPendingConduitsInSoulbind

```lua
C_Soulbinds.HasPendingConduitsInSoulbind(soulbindID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.IsConduitInstalled

```lua
C_Soulbinds.IsConduitInstalled(nodeID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.IsConduitInstalledInSoulbind

```lua
C_Soulbinds.IsConduitInstalledInSoulbind(soulbindID: number, conduitID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.IsItemConduitByItemInfo

```lua
C_Soulbinds.IsItemConduitByItemInfo(itemInfo: ItemInfo) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.IsNodePendingModify

```lua
C_Soulbinds.IsNodePendingModify(nodeID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.IsUnselectedConduitPendingInSoulbind

```lua
C_Soulbinds.IsUnselectedConduitPendingInSoulbind(soulbindID: number) -> result: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.ModifyNode

```lua
C_Soulbinds.ModifyNode(nodeID: number, conduitID: number, type: SoulbindConduitTransactionType)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.SelectNode

```lua
C_Soulbinds.SelectNode(nodeID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Soulbinds.UnmodifyNode

```lua
C_Soulbinds.UnmodifyNode(nodeID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### SOULBIND_ACTIVATED

Payload: `soulbindID: number`  
Flags: SynchronousEvent  

### SOULBIND_CONDUIT_COLLECTION_CLEARED

Payload: `none`  
Flags: SynchronousEvent  

### SOULBIND_CONDUIT_COLLECTION_REMOVED

Payload: `conduitID: number`  
Flags: SynchronousEvent  

### SOULBIND_CONDUIT_COLLECTION_UPDATED

Payload: `collectionData: ConduitCollectionData`  
Flags: SynchronousEvent  

### SOULBIND_CONDUIT_INSTALLED

Payload: `nodeID: number, data: SoulbindConduitData`  
Flags: SynchronousEvent  

### SOULBIND_CONDUIT_UNINSTALLED

Payload: `nodeID: number, data: SoulbindConduitData`  
Flags: SynchronousEvent  

### SOULBIND_FORGE_INTERACTION_ENDED

Payload: `none`  
Flags: SynchronousEvent  

### SOULBIND_FORGE_INTERACTION_STARTED

Payload: `none`  
Flags: SynchronousEvent  

### SOULBIND_NODE_LEARNED

Payload: `nodeID: number`  
Flags: SynchronousEvent  

### SOULBIND_NODE_UNLEARNED

Payload: `nodeID: number`  
Flags: SynchronousEvent  

### SOULBIND_NODE_UPDATED

Payload: `nodeID: number`  
Flags: SynchronousEvent  

### SOULBIND_PATH_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### SOULBIND_PENDING_CONDUIT_CHANGED

Payload: `nodeID: number, conduitID: number`  
Flags: SynchronousEvent  

## Tables

### ConduitCollectionData (Structure)

- `conduitID: number`
- `conduitRank: number`
- `conduitItemLevel: number`
- `conduitType: SoulbindConduitType`
- `conduitSpecSetID: number`
- `conduitSpecIDs: table<number>`
- `conduitSpecName: cstring?`
- `covenantID: number?`
- `conduitItemID: number`

### SoulbindConduitData (Structure)

- `conduitID: number`
- `conduitRank: number`

### SoulbindData (Structure)

- `ID: number`
- `covenantID: number`
- `name: cstring`
- `description: cstring`
- `textureKit: textureKit`
- `unlocked: bool`
- `cvarIndex: luaIndex`
- `tree: SoulbindTree`
- `modelSceneData: SoulbindModelSceneData`
- `activationSoundKitID: number`
- `playerConditionReason: cstring?`

### SoulbindModelSceneData (Structure)

- `creatureDisplayInfoID: number`
- `modelSceneActorID: number`

### SoulbindNode (Structure)

- `ID: number`
- `row: number`
- `column: number`
- `icon: fileID`
- `spellID: number`
- `playerConditionReason: cstring?`
- `conduitID: number`
- `conduitRank: number`
- `state: SoulbindNodeState`
- `conduitType: SoulbindConduitType?`
- `parentNodeIDs: table<number>`
- `failureRenownRequirement: number?`
- `socketEnhanced: bool?`

### SoulbindTree (Structure)

- `editable: bool`
- `nodes: table<SoulbindNode>`
