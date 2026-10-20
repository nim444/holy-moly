# GossipInfo

Type: System  
Namespace: `C_GossipInfo`  
Environment: All

## Functions

### C_GossipInfo.CloseGossip

```lua
C_GossipInfo.CloseGossip()
```

### C_GossipInfo.ForceGossip

```lua
C_GossipInfo.ForceGossip() -> forceGossip: bool
```

### C_GossipInfo.GetActiveQuests

```lua
C_GossipInfo.GetActiveQuests() -> info: table<GossipQuestUIInfo>
```

### C_GossipInfo.GetAvailableQuests

```lua
C_GossipInfo.GetAvailableQuests() -> info: table<GossipQuestUIInfo>
```

### C_GossipInfo.GetCompletedOptionDescriptionString

```lua
C_GossipInfo.GetCompletedOptionDescriptionString() -> description: string?
```

### C_GossipInfo.GetCustomGossipDescriptionString

```lua
C_GossipInfo.GetCustomGossipDescriptionString() -> description: string?
```

### C_GossipInfo.GetFriendshipReputation

```lua
C_GossipInfo.GetFriendshipReputation(friendshipFactionID: number) -> reputationInfo: FriendshipReputationInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_GossipInfo.GetFriendshipReputationRanks

```lua
C_GossipInfo.GetFriendshipReputationRanks(friendshipFactionID: number) -> rankInfo: FriendshipReputationRankInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.GetNumActiveQuests

```lua
C_GossipInfo.GetNumActiveQuests() -> numQuests: number
```

### C_GossipInfo.GetNumAvailableQuests

```lua
C_GossipInfo.GetNumAvailableQuests() -> numQuests: number
```

### C_GossipInfo.GetOptionUIWidgetSetsAndTypesByOptionID

```lua
C_GossipInfo.GetOptionUIWidgetSetsAndTypesByOptionID(gossipOptionID: number) -> gossipOptionUIWidgetSetsAndTypes: table<GossipOptionUIWidgetSetAndType>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.GetOptions

```lua
C_GossipInfo.GetOptions() -> info: table<GossipOptionUIInfo>
```

### C_GossipInfo.GetPoiForUiMapID

```lua
C_GossipInfo.GetPoiForUiMapID(uiMapID: number) -> gossipPoiID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.GetPoiInfo

```lua
C_GossipInfo.GetPoiInfo(uiMapID: number, gossipPoiID: number) -> gossipPoiInfo: GossipPoiInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.GetText

```lua
C_GossipInfo.GetText() -> gossipText: cstring
```

### C_GossipInfo.RefreshOptions

```lua
C_GossipInfo.RefreshOptions()
```

### C_GossipInfo.SelectActiveQuest

```lua
C_GossipInfo.SelectActiveQuest(optionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.SelectAvailableQuest

```lua
C_GossipInfo.SelectAvailableQuest(optionID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.SelectOption

```lua
C_GossipInfo.SelectOption(optionID: number, text: cstring?, confirmed: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_GossipInfo.SelectOptionByIndex

```lua
C_GossipInfo.SelectOptionByIndex(optionID: number, text: cstring?, confirmed: bool?)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### DYNAMIC_GOSSIP_POI_UPDATED

Payload: `none`  
Flags: UniqueEvent  

### GOSSIP_CLOSED

Payload: `interactionIsContinuing: bool`  
Flags: SynchronousEvent  

### GOSSIP_CONFIRM

Payload: `gossipID: number, text: string, cost: WOWMONEY`  
Flags: SynchronousEvent  

### GOSSIP_CONFIRM_CANCEL

Payload: `none`  
Flags: SynchronousEvent  

### GOSSIP_ENTER_CODE

Payload: `gossipID: number`  
Flags: SynchronousEvent  

### GOSSIP_OPTIONS_REFRESHED

Payload: `none`  
Flags: SynchronousEvent  

### GOSSIP_SHOW

Payload: `uiTextureKit: textureKit?`  
Flags: SynchronousEvent  

## Tables

### GossipOptionRewardType (Enumeration)

| Name | Value |
|---|---|
| Item | 0 |
| Currency | 1 |

### GossipOptionStatus (Enumeration)

| Name | Value |
|---|---|
| Available | 0 |
| Unavailable | 1 |
| Locked | 2 |
| AlreadyComplete | 3 |

### GossipOptionUIWidgetSetTypes (Enumeration)

| Name | Value |
|---|---|
| Modifiers | 0 |
| Background | 1 |

### FriendshipReputationInfo (Structure)

- `friendshipFactionID: number`
- `standing: number`
- `maxRep: number`
- `name: string?`
- `text: string`
- `texture: number`
- `reaction: string`
- `reactionThreshold: number`
- `nextThreshold: number?`
- `reversedColor: bool`
- `overrideColor: number?`

### FriendshipReputationRankInfo (Structure)

- `currentLevel: number`
- `maxLevel: number`

### GossipOptionRewardInfo (Structure)

- `id: number`
- `quantity: number`
- `rewardType: GossipOptionRewardType`
- `context: ItemCreationContext`

### GossipOptionUIInfo (Structure)

- `gossipOptionID: number?`
- `name: string`
- `icon: fileID`
- `rewards: table<GossipOptionRewardInfo>`
- `status: GossipOptionStatus`
- `spellID: number?`
- `flags: number`
- `overrideIconID: fileID?`
- `selectOptionWhenOnlyOption: bool`
- `orderIndex: number`
- `failureDescription: string?`

### GossipOptionUIWidgetSetAndType (Structure)

- `widgetType: number`
- `uiWidgetSetID: number`

### GossipPoiInfo (Structure)

- `name: string`
- `textureIndex: number`
- `position: vector2`
- `inBattleMap: bool`

### GossipQuestUIInfo (Structure)

- `title: string`
- `questLevel: number`
- `isTrivial: bool`
- `frequency: number?`
- `repeatable: bool?`
- `isComplete: bool?`
- `isLegendary: bool`
- `isIgnored: bool`
- `questID: number`
- `isImportant: bool`
- `isMeta: bool`
- `questInfoID: number`
