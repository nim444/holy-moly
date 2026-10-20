# PlayerChoice

Type: System  
Namespace: `C_PlayerChoice`  
Environment: All

## Functions

### C_PlayerChoice.GetCurrentPlayerChoiceInfo

```lua
C_PlayerChoice.GetCurrentPlayerChoiceInfo() -> choiceInfo: PlayerChoiceInfo
```

Flags: MayReturnNothing  

### C_PlayerChoice.GetNumRerolls

```lua
C_PlayerChoice.GetNumRerolls() -> numRerolls: number
```

### C_PlayerChoice.GetRemainingTime

```lua
C_PlayerChoice.GetRemainingTime() -> remainingTime: number?
```

### C_PlayerChoice.IsWaitingForPlayerChoiceResponse

```lua
C_PlayerChoice.IsWaitingForPlayerChoiceResponse() -> isWaitingForResponse: bool
```

### C_PlayerChoice.OnUIClosed

```lua
C_PlayerChoice.OnUIClosed()
```

### C_PlayerChoice.RequestRerollPlayerChoice

```lua
C_PlayerChoice.RequestRerollPlayerChoice()
```

### C_PlayerChoice.SendPlayerChoiceResponse

```lua
C_PlayerChoice.SendPlayerChoiceResponse(responseID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### PLAYER_CHOICE_CLOSE

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_CHOICE_UPDATE

Payload: `none`  
Flags: UniqueEvent  

## Tables

### PlayerChoiceRarity (Enumeration)

| Name | Value |
|---|---|
| Common | 0 |
| Uncommon | 1 |
| Rare | 2 |
| Epic | 3 |

### PlayerChoiceInfo (Structure)

- `objectGUID: WOWGUID`
- `choiceID: number`
- `questionText: string`
- `pendingChoiceText: string`
- `uiTextureKit: textureKit`
- `hideWarboardHeader: bool`
- `keepOpenAfterChoice: bool`
- `requiresSelection: bool`
- `hideAnswerArt: bool`
- `playerChoiceLayout: PlayerChoiceLayout`
- `options: table<PlayerChoiceOptionInfo>`
- `soundKitID: number?`
- `closeUISoundKitID: number?`

### PlayerChoiceOptionButtonInfo (Structure)

- `id: number`
- `text: string`
- `disabled: bool`
- `showCheckmark: bool`
- `hideButtonShowText: bool`
- `selected: bool`
- `confirmation: string?`
- `tooltip: string?`
- `rewardQuestID: number?`
- `soundKitID: number?`
- `listText: string?`

### PlayerChoiceOptionInfo (Structure)

- `id: number`
- `description: string`
- `header: string`
- `choiceArtID: number`
- `desaturatedArt: bool`
- `disabledOption: bool`
- `hasRewards: bool`
- `rewardInfo: PlayerChoiceOptionRewardInfo`
- `uiTextureKit: textureKit`
- `maxStacks: number`
- `buttons: table<PlayerChoiceOptionButtonInfo>`
- `widgetSetID: number?`
- `spellID: number?`
- `rarity: PlayerChoiceRarity?`
- `typeArtID: number?`
- `headerIconAtlasElement: string?`
- `subHeader: string?`
- `consolidateWidgets: bool`

### PlayerChoiceOptionRewardInfo (Structure)

- `currencyRewards: table<PlayerChoiceRewardCurrencyInfo>`
- `itemRewards: table<PlayerChoiceRewardItemInfo>`
- `repRewards: table<PlayerChoiceRewardReputationInfo>`

### PlayerChoiceRewardCurrencyInfo (Structure)

- `currencyId: number`
- `name: string`
- `currencyTexture: number`
- `quantity: number`
- `isCurrencyContainer: bool`

### PlayerChoiceRewardItemInfo (Structure)

- `itemId: number`
- `name: string`
- `quantity: number`

### PlayerChoiceRewardReputationInfo (Structure)

- `factionId: number`
- `quantity: number`
