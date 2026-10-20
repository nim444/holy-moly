# QuestInfoSystem

Type: System  
Namespace: `C_QuestInfoSystem`  
Environment: All

## Functions

### C_QuestInfoSystem.GetQuestClassification

```lua
C_QuestInfoSystem.GetQuestClassification(questID: number?, questInfoID: number?) -> classification: QuestClassification
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.GetQuestHasShortExpirationWarning

```lua
C_QuestInfoSystem.GetQuestHasShortExpirationWarning(questID: number?) -> hasShortExpirationWarning: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.GetQuestLogRewardFavor

```lua
C_QuestInfoSystem.GetQuestLogRewardFavor(questID: number?, clampFavorToCycleCap: bool?) -> amount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.GetQuestRewardCurrencies

```lua
C_QuestInfoSystem.GetQuestRewardCurrencies(questID: number?) -> questRewardCurrencyInfo: table<QuestRewardCurrencyInfo>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestInfoSystem.GetQuestRewardSpellInfo

```lua
C_QuestInfoSystem.GetQuestRewardSpellInfo(questID: number?, spellID: number) -> info: QuestRewardSpellInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.GetQuestRewardSpells

```lua
C_QuestInfoSystem.GetQuestRewardSpells(questID: number?) -> spellIDs: table<number>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_QuestInfoSystem.GetQuestShouldToastCompletion

```lua
C_QuestInfoSystem.GetQuestShouldToastCompletion(questID: number?) -> shouldToast: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.HasQuestRewardCurrencies

```lua
C_QuestInfoSystem.HasQuestRewardCurrencies(questID: number?) -> hasQuestRewardCurrencies: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_QuestInfoSystem.HasQuestRewardSpells

```lua
C_QuestInfoSystem.HasQuestRewardSpells(questID: number?) -> hasRewardSpells: bool
```

Secret: SecretArguments=AllowedWhenUntainted
