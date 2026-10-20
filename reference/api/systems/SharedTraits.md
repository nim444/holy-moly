# SharedTraits

Type: System  
Namespace: `C_Traits`  
Environment: All

## Functions

### C_Traits.CanEditConfig

```lua
C_Traits.CanEditConfig(configID: number) -> canEdit: bool, errorMessage: cstring
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns whether the player can make changes to the specified talent config.

### C_Traits.CanPurchaseRank

```lua
C_Traits.CanPurchaseRank(configID: number, nodeID: number, nodeEntryID: number) -> canPurchase: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.CanRefundRank

```lua
C_Traits.CanRefundRank(configID: number, nodeID: number) -> canRefund: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.CascadeRepurchaseRanks

```lua
C_Traits.CascadeRepurchaseRanks(configID: number, nodeID: number, entryID: number?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.ClearCascadeRepurchaseHistory

```lua
C_Traits.ClearCascadeRepurchaseHistory(configID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.CloseTraitSystemInteraction

```lua
C_Traits.CloseTraitSystemInteraction()
```

### C_Traits.CommitConfig

```lua
C_Traits.CommitConfig(configID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.ConfigHasStagedChanges

```lua
C_Traits.ConfigHasStagedChanges(configID: number) -> hasChanges: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GenerateImportString

```lua
C_Traits.GenerateImportString(configID: number) -> importString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GenerateInspectImportString

```lua
C_Traits.GenerateInspectImportString(target: cstring) -> importString: string
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetConditionInfo

```lua
C_Traits.GetConditionInfo(configID: number, condID: number) -> condInfo: TraitCondInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetConfigIDBySystemID

```lua
C_Traits.GetConfigIDBySystemID(systemID: number) -> configID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetConfigIDByTreeID

```lua
C_Traits.GetConfigIDByTreeID(treeID: number) -> configID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetConfigInfo

```lua
C_Traits.GetConfigInfo(configID: number) -> configInfo: TraitConfigInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetConfigVariationID

```lua
C_Traits.GetConfigVariationID(systemID: number) -> variationID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetConfigsByType

```lua
C_Traits.GetConfigsByType(configType: TraitConfigType) -> configIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetDefinitionInfo

```lua
C_Traits.GetDefinitionInfo(definitionID: number) -> definitionInfo: TraitDefinitionInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetEntryInfo

```lua
C_Traits.GetEntryInfo(configID: number, entryID: number) -> entryInfo: TraitEntryInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetGroupCurrencyInfo

```lua
C_Traits.GetGroupCurrencyInfo(configID: number, groupIDs: table<number>) -> groupCurrencyInfos: table<GroupCurrencyInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetGroupDisplayInfoByTreeID

```lua
C_Traits.GetGroupDisplayInfoByTreeID(treeID: number) -> displayInfos: table<TraitGroupDisplayInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetIncreasedTraitData

```lua
C_Traits.GetIncreasedTraitData(nodeID: number, entryID: number) -> itemName: table<IncreasedTraitData>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetLoadoutSerializationVersion

```lua
C_Traits.GetLoadoutSerializationVersion() -> serializationVersion: number
```

### C_Traits.GetMaxAvailableTraitCurrency

```lua
C_Traits.GetMaxAvailableTraitCurrency(traitCurrencyID: number, limitBySourcedMax: bool) -> maxAvailable: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetNodeCost

```lua
C_Traits.GetNodeCost(configID: number, nodeID: number) -> costs: table<TraitCurrencyCost>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetNodeInfo

```lua
C_Traits.GetNodeInfo(configID: number, nodeID: number) -> nodeInfo: TraitNodeInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetStagedChanges

```lua
C_Traits.GetStagedChanges(configID: number) -> nodeIDsWithPurchases: table<number>, nodeIDsWithRefunds: table<number>, nodeIDsWithSelectionSwaps: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns IDs of Trait Nodes with pending changes, grouped by the type of change; Returns nothing if there are no pending changes

### C_Traits.GetStagedChangesCost

```lua
C_Traits.GetStagedChangesCost(configID: number) -> costs: table<TraitCurrencyCost>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetSubTreeInfo

```lua
C_Traits.GetSubTreeInfo(configID: number, subTreeID: number) -> subTreeInfo: TraitSubTreeInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetSystemIDByTreeID

```lua
C_Traits.GetSystemIDByTreeID(treeID: number) -> systemID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetTraitCurrencyForAchievement

```lua
C_Traits.GetTraitCurrencyForAchievement(traitCurrencyID: number, achievementID: number) -> amount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetTraitCurrencyInfo

```lua
C_Traits.GetTraitCurrencyInfo(traitCurrencyID: number) -> flags: number, type: number, currencyTypesID: number?, icon: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetTraitDescription

```lua
C_Traits.GetTraitDescription(entryID: number, rank: number) -> description: string
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetTraitSystemFlags

```lua
C_Traits.GetTraitSystemFlags(configID: number) -> flags: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetTraitSystemWidgetSetID

```lua
C_Traits.GetTraitSystemWidgetSetID(configID: number) -> uiWidgetSetID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetTreeCurrencyInfo

```lua
C_Traits.GetTreeCurrencyInfo(configID: number, treeID: number, excludeStagedChanges: bool) -> treeCurrencyInfo: table<TreeCurrencyInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetTreeHash

```lua
C_Traits.GetTreeHash(treeID: number) -> result: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.GetTreeInfo

```lua
C_Traits.GetTreeInfo(configID: number, treeID: number) -> treeInfo: TraitTreeInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_Traits.GetTreeNodes

```lua
C_Traits.GetTreeNodes(treeID: number) -> nodeIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

Returns a list of nodeIDs, sorted ascending, for a given treeID. Contains nodes for all class specializations.

### C_Traits.HasValidInspectData

```lua
C_Traits.HasValidInspectData() -> hasValidInspectData: bool
```

### C_Traits.IsReadyForCommit

```lua
C_Traits.IsReadyForCommit() -> isReadyForCommit: bool
```

### C_Traits.PurchaseAllRanks

```lua
C_Traits.PurchaseAllRanks(configID: number, nodeID: number, ignoreCost: bool) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.PurchaseRank

```lua
C_Traits.PurchaseRank(configID: number, nodeID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.RefundAllRanks

```lua
C_Traits.RefundAllRanks(configID: number, nodeID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.RefundRank

```lua
C_Traits.RefundRank(configID: number, nodeID: number, clearEdges: bool?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.ResetTree

```lua
C_Traits.ResetTree(configID: number, treeID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.ResetTreeByCurrency

```lua
C_Traits.ResetTreeByCurrency(configID: number, treeID: number, traitCurrencyID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.RollbackConfig

```lua
C_Traits.RollbackConfig(configID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.SetSelection

```lua
C_Traits.SetSelection(configID: number, nodeID: number, nodeEntryID: number?, clearEdges: bool?) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.StageConfig

```lua
C_Traits.StageConfig(configID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.TalentTestUnlearnSpells

```lua
C_Traits.TalentTestUnlearnSpells()
```

### C_Traits.TryPurchaseAllRanks

```lua
C_Traits.TryPurchaseAllRanks(configID: number, nodeID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.TryPurchaseToNode

```lua
C_Traits.TryPurchaseToNode(configID: number, nodeID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_Traits.TryRefundToNode

```lua
C_Traits.TryRefundToNode(configID: number, nodeID: number, entryID: number) -> success: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### CONFIG_COMMIT_FAILED

Payload: `configID: number`  
Flags: SynchronousEvent  

### TRAIT_COND_INFO_CHANGED

Payload: `condID: number`  
Flags: SynchronousEvent  

### TRAIT_CONFIG_CREATED

Payload: `configInfo: TraitConfigInfo`  
Flags: SynchronousEvent  

### TRAIT_CONFIG_DELETED

Payload: `configID: number`  
Flags: SynchronousEvent  

### TRAIT_CONFIG_LIST_UPDATED

Payload: `none`  
Flags: SynchronousEvent  

### TRAIT_CONFIG_UPDATED

Payload: `configID: number`  
Flags: SynchronousEvent  

### TRAIT_NODE_CHANGED

Payload: `nodeID: number`  
Flags: SynchronousEvent  

### TRAIT_NODE_CHANGED_PARTIAL

Payload: `ID: number, info: TraitNodeInfoPartial`  
Flags: SynchronousEvent  

### TRAIT_NODE_ENTRY_UPDATED

Payload: `nodeEntryID: number`  
Flags: SynchronousEvent  

### TRAIT_SUB_TREE_CHANGED

Payload: `subTreeID: number`  
Flags: SynchronousEvent  

### TRAIT_SYSTEM_INTERACTION_STARTED

Payload: `treeID: number`  
Flags: SynchronousEvent  

### TRAIT_SYSTEM_NPC_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### TRAIT_TREE_CHANGED

Payload: `treeID: number`  
Flags: SynchronousEvent  

### TRAIT_TREE_CURRENCY_INFO_UPDATED

Payload: `treeID: number`  
Flags: SynchronousEvent  

### TRY_PURCHASE_TO_NODE_PARTIAL_SUCCESS

Payload: `nodeFinishedOn: number`  
Flags: SynchronousEvent  

## Tables

### GroupCurrencyInfo (Structure)

- `traitNodeGroupID: number`
- `currencyInfos: table<TreeCurrencyInfo>`

### IncreasedTraitData (Structure)

- `itemNameIncreasing: string`
- `itemQualityIncreasing: ItemQuality`
- `numPointsIncreased: number`

### TraitCondInfo (Structure)

- `condID: number`
- `ranksGranted: number?`
- `isAlwaysMet: bool`
- `isMet: bool` True if the source for the condition has been fulfilled.
- `isGate: bool`
- `isSufficient: bool` True if meeting the requirements for the condition means any nodes using this condition are considered fulfilled if the condition is met.
- `type: number` The value from the TraitConditionType enum the condition uses.
- `questID: number?`
- `achievementID: number?`
- `specSetID: number?`
- `playerLevel: number?`
- `traitCurrencyID: number?`
- `spentAmountRequired: number?`
- `tooltipFormat: string?`
- `traitCondAccountElementID: number?`

### TraitConfigInfo (Structure)

- `ID: number`
- `type: TraitConfigType`
- `name: string`
- `treeIDs: table<number>`
- `usesSharedActionBars: bool`

### TraitCurrencyCost (Structure)

- `ID: number`
- `amount: number`

### TraitDefinitionInfo (Structure)

- `spellID: number?`
- `overrideName: string?`
- `overrideSubtext: string?`
- `overrideDescription: string?`
- `overrideIcon: number?`
- `overriddenSpellID: number?`
- `subType: TraitDefinitionSubType?`

### TraitEntryInfo (Structure)

- `definitionID: number?` Nil on SubTreeSelection Node Entries
- `subTreeID: number?` Populated only on SubTreeSelection Node Entries; This is the SubTree that is activated if this Entry is chosen
- `type: TraitNodeEntryType`
- `maxRanks: number`
- `isAvailable: bool`
- `isDisplayError: bool` True if this entry fails the TRAIT_CONDITION_TYPE_DISPLAY_ERROR condition check. Used to communicate a problem with the node to the player (e.g. A prerequisite node has not been purchased.) but will not prevent the player from spending points on the node.
- `conditionIDs: table<number>`

### TraitEntryRankInfo (Structure)

- `entryID: number`
- `rank: number`

### TraitGateInfo (Structure)

- `topLeftNodeID: number`
- `conditionID: number`

### TraitGroupDisplayInfo (Structure)

- `groupID: number`
- `treeID: number`
- `skillLineID: number`
- `orderIndex: number`
- `displayName: cstring`
- `icon: number`

### TraitNodeInfo (Structure)

- `ID: number`
- `posX: number`
- `posY: number`
- `flags: number`
- `entryIDs: table<number>`
- `entryIDsWithCommittedRanks: table<number>`
- `canPurchaseRank: bool`
- `canRefundRank: bool`
- `isAvailable: bool`
- `isVisible: bool`
- `isDisplayError: bool` True if this node fails the TRAIT_CONDITION_TYPE_DISPLAY_ERROR condition check. Used to communicate a problem with the node to the player (e.g. A prerequisite node has not been purchased.) but will not prevent the player from spending points on the node.
- `ranksPurchased: number`
- `ranksIncreased: number`
- `entryIDToRanksIncreased: LuaValueVariant` A map of the entry IDs on this node to the number of ranks increased. This covers all entries on the node, which is important in the case of selection nodes where we have more than one option that could be increased.
- `activeRank: number`
- `currentRank: number`
- `activeEntry: TraitEntryRankInfo?`
- `nextEntry: TraitEntryRankInfo?`
- `maxRanks: number`
- `totalMaxRanks: number`
- `type: TraitNodeType`
- `visibleEdges: table<TraitOutEdgeInfo>`
- `meetsEdgeRequirements: bool`
- `groupIDs: table<number>`
- `conditionIDs: table<number>`
- `isCascadeRepurchasable: bool`
- `cascadeRepurchaseEntryID: number?`
- `subTreeID: number?` The SubTree this Node belongs to; Nil if it is not part of a SubTree
- `subTreeActive: bool?` True if this node has a SubTreeID, and the SubTree is chosen or staged; May be nil if not part of a SubTree at all

### TraitNodeInfoPartial (Structure)

- `canPurchaseRank: bool?`
- `canRefundRank: bool?`
- `isAvailable: bool?`
- `isVisible: bool?`
- `ranksPurchased: number?`
- `activeRank: number?`
- `currentRank: number?`
- `meetsEdgeRequirements: bool?`
- `isCascadeRepurchasable: bool?`
- `activeEntryID: number?`
- `subTreeActive: bool?`

### TraitOutEdgeInfo (Structure)

- `targetNode: number`
- `type: number`
- `visualStyle: number`
- `isActive: bool`

### TraitSubTreeInfo (Structure)

- `ID: number`
- `name: string?`
- `description: string?`
- `iconElementID: textureAtlas?`
- `traitCurrencyID: number?`
- `isActive: bool`
- `subTreeSelectionNodeIDs: table<number>` SubTreeSelectionNodes whose choice entries include this SubTree
- `posX: number` Center X node position calculated from the posX values of all of this subTree's nodes
- `posY: number` Topmost Y node position taken from the posY values of all of this subTree's nodes

### TraitTreeInfo (Structure)

- `ID: number`
- `gates: table<TraitGateInfo>`
- `hideSingleRankNumbers: bool`
- `cannotRefund: bool`
- `rootNodeID: number?`
- `uiTextureKit: textureKit`
- `titleText: string?`

### TreeCurrencyInfo (Structure)

- `traitCurrencyID: number`
- `quantity: number`
- `maxQuantity: number?`
- `spent: number`
- `spentInTree: number?`
