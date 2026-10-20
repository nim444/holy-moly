# LoreText

Type: System  
Namespace: `C_LoreText`  
Environment: All

## Functions

### C_LoreText.RequestLoreTextForCampaignID

```lua
C_LoreText.RequestLoreTextForCampaignID(campaignID: number)
```

Secret: SecretArguments=AllowedWhenUntainted  

## Events

### LORE_TEXT_UPDATED_CAMPAIGN

Payload: `campaignID: number, textEntries: table<LoreTextEntry>`  
Flags: SynchronousEvent  

## Tables

### LoreTextEntry (Structure)

- `text: string`
- `isHeader: bool`
