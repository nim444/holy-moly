# QuestRewards

Type: None

## Tables

### QuestRewardCurrencyInfo (Structure)

- `texture: fileID`
- `name: cstring`
- `currencyID: number`
- `quality: number`
- `baseRewardAmount: number`
- `bonusRewardAmount: number`
- `totalRewardAmount: number`
- `questRewardContextFlags: QuestRewardContextFlags?`

### QuestRewardReputationInfo (Structure)

- `factionID: number`
- `rewardAmount: number`

### QuestRewardSpellInfo (Structure)

- `texture: fileID`
- `name: cstring`
- `garrFollowerID: number?`
- `isTradeskill: bool`
- `isSpellLearned: bool`
- `hideSpellLearnText: bool`
- `isBoostSpell: bool`
- `genericUnlock: bool`
- `type: QuestCompleteSpellType`
