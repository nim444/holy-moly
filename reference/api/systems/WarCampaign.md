# WarCampaign

Type: System  
Namespace: `C_CampaignInfo`  
Environment: All

## Functions

### C_CampaignInfo.GetAvailableCampaigns

```lua
C_CampaignInfo.GetAvailableCampaigns() -> campaignIDs: table<number>
```

### C_CampaignInfo.GetCampaignChapterInfo

```lua
C_CampaignInfo.GetCampaignChapterInfo(campaignChapterID: number) -> campaignChapterInfo: CampaignChapterInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetCampaignID

```lua
C_CampaignInfo.GetCampaignID(questID: number) -> campaignID: number
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetCampaignInfo

```lua
C_CampaignInfo.GetCampaignInfo(campaignID: number) -> campaignInfo: CampaignInfo?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetChapterIDs

```lua
C_CampaignInfo.GetChapterIDs(campaignID: number) -> chapterIDs: table<number>?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetCurrentChapterID

```lua
C_CampaignInfo.GetCurrentChapterID(campaignID: number) -> currentChapterID: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetFailureReason

```lua
C_CampaignInfo.GetFailureReason(campaignID: number) -> failureReason: CampaignFailureReason?
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.GetState

```lua
C_CampaignInfo.GetState(campaignID: number) -> state: CampaignState
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.IsCampaignQuest

```lua
C_CampaignInfo.IsCampaignQuest(questID: number) -> isCampaignQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

### C_CampaignInfo.SortAsNormalQuest

```lua
C_CampaignInfo.SortAsNormalQuest(campaignID: number) -> sortAsNormalQuest: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

## Tables

### CampaignState (Enumeration)

| Name | Value |
|---|---|
| Invalid | 0 |
| Complete | 1 |
| InProgress | 2 |
| Stalled | 3 |

### CampaignChapterInfo (Structure)

- `name: cstring`
- `description: cstring`
- `rewardQuestID: number`

### CampaignFailureReason (Structure)

- `text: string`
- `questID: number?`
- `mapID: number?`

### CampaignInfo (Structure)

- `name: cstring`
- `description: cstring`
- `uiTextureKit: textureKit`
- `isWarCampaign: bool`
- `usesNormalQuestIcons: bool`
- `isContainerCampaign: bool`
- `sortAsNormalQuest: bool`
- `hideFutureChapters: bool`
