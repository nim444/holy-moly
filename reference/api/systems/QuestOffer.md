# QuestOffer

Type: System  
Namespace: `C_QuestOffer`  
Environment: All

## Functions

### C_QuestOffer.GetHideRequiredItems

```lua
C_QuestOffer.GetHideRequiredItems() -> hideRequiredItems: bool
```

### C_QuestOffer.GetQuestOfferMajorFactionReputationRewards

```lua
C_QuestOffer.GetQuestOfferMajorFactionReputationRewards() -> reputationRewards: table<QuestRewardReputationInfo>
```

Flags: MayReturnNothing  

### C_QuestOffer.GetQuestRequiredCurrencyInfo

```lua
C_QuestOffer.GetQuestRequiredCurrencyInfo(questRewardIndex: luaIndex) -> questRequiredCurrencyInfo: QuestRequiredCurrencyInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestOffer.GetQuestRewardCurrencyInfo

```lua
C_QuestOffer.GetQuestRewardCurrencyInfo(questInfoType: cstring, questRewardIndex: luaIndex) -> questRewardCurrencyInfo: QuestRewardCurrencyInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### QUEST_ACCEPT_CONFIRM

Payload: `name: cstring, questTitle: cstring, questID: number`  
Flags: SynchronousEvent  

### QUEST_FINISHED

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_GREETING

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_ITEM_UPDATE

Payload: `none`  
Flags: SynchronousEvent  

### QUEST_PROGRESS

Payload: `none`  
Flags: SynchronousEvent  

## Tables

### QuestRequiredCurrencyInfo (Structure)

- `texture: fileID`
- `name: cstring`
- `currencyID: number`
- `quality: number`
- `requiredAmount: number`
