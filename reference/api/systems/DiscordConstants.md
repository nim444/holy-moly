# DiscordConstants

Type: None

## Tables

### DiscordAccountType (Enumeration)

| Name | Value |
|---|---|
| Normal | 0 |
| Provisional | 1 |

### DiscordChannelID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordDisplayNameType (Enumeration)

| Name | Value |
|---|---|
| Default | 0 |
| LastOnline | 1 |
| GlobalName | 2 |

### DiscordGuildID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordGuildSettings (Enumeration)

| Name | Value |
|---|---|
| SeparateStream | 1 |

### DiscordID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordLobbyID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordMemberID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordMessageID (Enumeration)

| Name | Value |
|---|---|
| InvalidDiscordID | 0 |

### DiscordChatInfo (Structure)

- `userID: DiscordMemberOpaqueID`
- `globalName: string`
- `type: DiscordDisplayNameType = Default`
- `lastOnlineGUID: WOWGUID`
- `lastOnlineName: string`
- `hasAttachment: bool`
- `hasPoll: bool`
- `hasEmbed: bool`
- `hasSticker: bool`
- `hasEmoji: bool`
- `hasError: bool`
- `hasForwardedMessage: bool`
- `forwardedMessage: string`
- `fromDiscord: bool`
